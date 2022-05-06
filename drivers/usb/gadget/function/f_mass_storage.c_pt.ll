; ModuleID = '/llk/IR/drivers/usb/gadget/function/f_mass_storage.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_mass_storage.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_common_set_sysfs:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_common_set_sysfs\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_common_set_sysfs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_common_set_num_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_common_set_num_buffers\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_common_set_num_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_common_remove_lun:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_common_remove_lun\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_common_remove_lun:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_common_remove_luns:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_common_remove_luns\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_common_remove_luns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_common_free_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_common_free_buffers\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_common_free_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_common_set_cdev:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_common_set_cdev\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_common_set_cdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_common_create_lun:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_common_create_lun\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_common_create_lun:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_common_create_luns:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_common_create_luns\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_common_create_luns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_common_set_inquiry_string:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_common_set_inquiry_string\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_common_set_inquiry_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_config_from_params:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_config_from_params\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_config_from_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.usb_function_driver = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_group_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.fsg_common = type { ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.rw_semaphore, %struct.spinlock, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, [16 x i8], i32, [16 x ptr], ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i8, %struct.completion, ptr, ptr, [29 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.fsg_buffhd = type { ptr, i32, ptr, i32, ptr, ptr }
%struct.fsg_lun = type { ptr, i64, i64, i8, i32, i32, i32, i32, i32, %struct.device, ptr, ptr, [29 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.fsg_lun_config = type { ptr, i8, i8, i8, i8, [29 x i8] }
%struct.fsg_config = type { i32, [16 x %struct.fsg_lun_config], ptr, ptr, ptr, ptr, i8, i32 }
%struct.fsg_module_parameters = type { [16 x ptr], [16 x i8], [16 x i8], [16 x i8], [16 x i8], i32, i32, i32, i32, i32, i32, i8 }
%struct.fsg_opts = type { ptr, %struct.usb_function_instance, %struct.fsg_lun_opts, [2 x ptr], i8, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.fsg_lun_opts = type { %struct.config_group, ptr, i32 }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.fsg_dev = type { %struct.usb_function, ptr, ptr, i16, i8, i32, ptr, ptr }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.kernel_siginfo = type { %struct.anon.35 }
%struct.anon.35 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.39 }
%struct.anon.39 = type { i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.49 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.bulk_cb_wrap = type { i32, i32, i32, i8, i8, i8, [16 x i8] }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.68 = type { ptr }
%struct.bulk_cs_wrap = type { i32, i32, i32, i8 }

@__kstrtab_fsg_common_set_sysfs = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_common_set_sysfs = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_common_set_sysfs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_common_set_sysfs to i32), ptr @__kstrtab_fsg_common_set_sysfs, ptr @__kstrtabns_fsg_common_set_sysfs }, section "___ksymtab_gpl+fsg_common_set_sysfs", align 4
@__kstrtab_fsg_common_set_num_buffers = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_common_set_num_buffers = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_common_set_num_buffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_common_set_num_buffers to i32), ptr @__kstrtab_fsg_common_set_num_buffers, ptr @__kstrtabns_fsg_common_set_num_buffers }, section "___ksymtab_gpl+fsg_common_set_num_buffers", align 4
@__kstrtab_fsg_common_remove_lun = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_common_remove_lun = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_common_remove_lun = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_common_remove_lun to i32), ptr @__kstrtab_fsg_common_remove_lun, ptr @__kstrtabns_fsg_common_remove_lun }, section "___ksymtab_gpl+fsg_common_remove_lun", align 4
@__kstrtab_fsg_common_remove_luns = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_common_remove_luns = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_common_remove_luns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_common_remove_luns to i32), ptr @__kstrtab_fsg_common_remove_luns, ptr @__kstrtabns_fsg_common_remove_luns }, section "___ksymtab_gpl+fsg_common_remove_luns", align 4
@__kstrtab_fsg_common_free_buffers = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_common_free_buffers = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_common_free_buffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_common_free_buffers to i32), ptr @__kstrtab_fsg_common_free_buffers, ptr @__kstrtabns_fsg_common_free_buffers }, section "___ksymtab_gpl+fsg_common_free_buffers", align 4
@fsg_strings_array = internal global [2 x ptr] [ptr @fsg_stringtab, ptr null], align 4
@fsg_intf_desc = external dso_local local_unnamed_addr global %struct.usb_interface_descriptor, align 1
@__kstrtab_fsg_common_set_cdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_common_set_cdev = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_common_set_cdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_common_set_cdev to i32), ptr @__kstrtab_fsg_common_set_cdev, ptr @__kstrtabns_fsg_common_set_cdev }, section "___ksymtab_gpl+fsg_common_set_cdev", align 4
@.str = private unnamed_addr constant [27 x i8] c"\013no file given for LUN%d\0A\00", align 1
@fsg_lun_dev_groups = internal global [2 x ptr] [ptr @fsg_lun_dev_group, ptr null], align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\016failed to register LUN%d: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"(no medium)\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"(error)\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"\016LUN: %s%s%sfile: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"removable \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"read only \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"CD-ROM \00", align 1
@__kstrtab_fsg_common_create_lun = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_common_create_lun = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_common_create_lun = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_common_create_lun to i32), ptr @__kstrtab_fsg_common_create_lun, ptr @__kstrtabns_fsg_common_create_lun }, section "___ksymtab_gpl+fsg_common_create_lun", align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"lun%d\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"\016Number of LUNs=%d\0A\00", align 1
@__kstrtab_fsg_common_create_luns = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_common_create_luns = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_common_create_luns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_common_create_luns to i32), ptr @__kstrtab_fsg_common_create_luns, ptr @__kstrtabns_fsg_common_create_luns }, section "___ksymtab_gpl+fsg_common_create_luns", align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"%-8s%-16s%04x\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Linux\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"File-CD Gadget\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"File-Stor Gadget\00", align 1
@__kstrtab_fsg_common_set_inquiry_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_common_set_inquiry_string = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_common_set_inquiry_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_common_set_inquiry_string to i32), ptr @__kstrtab_fsg_common_set_inquiry_string, ptr @__kstrtabns_fsg_common_set_inquiry_string }, section "___ksymtab_gpl+fsg_common_set_inquiry_string", align 4
@__UNIQUE_ID_alias289 = internal constant [27 x i8] c"alias=usbfunc:mass_storage\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [25 x i8] c"author=Michal Nazarewicz\00", section ".modinfo", align 1
@__kstrtab_fsg_config_from_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_config_from_params = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_config_from_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_config_from_params to i32), ptr @__kstrtab_fsg_config_from_params, ptr @__kstrtabns_fsg_config_from_params }, section "___ksymtab_gpl+fsg_config_from_params", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@fsg_stringtab = internal global %struct.usb_gadget_strings { i16 1033, ptr @fsg_strings }, align 4
@fsg_strings = internal global [2 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @fsg_string_interface }, %struct.usb_string zeroinitializer], align 4
@fsg_string_interface = internal constant [13 x i8] c"Mass Storage\00", align 1
@fsg_lun_dev_group = internal constant %struct.attribute_group { ptr null, ptr @fsg_lun_dev_is_visible, ptr null, ptr @fsg_lun_dev_attrs, ptr null }, align 4
@fsg_lun_dev_attrs = internal global [4 x ptr] [ptr @dev_attr_ro, ptr @dev_attr_file, ptr @dev_attr_nofua, ptr null], align 4
@dev_attr_ro = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 0 }, ptr @ro_show, ptr @ro_store }, align 4
@dev_attr_file = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 0 }, ptr @file_show, ptr @file_store }, align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@dev_attr_nofua = internal global %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420 }, ptr @nofua_show, ptr @nofua_store }, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"nofua\00", align 1
@mass_storageusb_func = internal global %struct.usb_function_driver { ptr @.str.19, ptr @__this_module, %struct.list_head zeroinitializer, ptr @fsg_alloc_inst, ptr @fsg_alloc }, align 4
@.str.19 = private unnamed_addr constant [13 x i8] c"mass_storage\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@fsg_alloc_inst.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"&opts->lock\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"\016Mass Storage Function, version: 2009/09/11\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"lun.0\00", align 1
@fsg_func_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @fsg_item_ops, ptr @fsg_group_ops, ptr @fsg_attrs, ptr null }, align 4
@fsg_lun_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @fsg_lun_item_ops, ptr null, ptr @fsg_lun_attrs, ptr null }, align 4
@fsg_common_setup.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"&common->filesem\00", align 1
@fsg_common_setup.__key.24 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"&common->io_wait\00", align 1
@fsg_common_setup.__key.26 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"&common->fsg_wait\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@fsg_item_ops = internal global %struct.configfs_item_operations { ptr @fsg_attr_release, ptr null, ptr null }, align 4
@fsg_group_ops = internal global %struct.configfs_group_operations { ptr null, ptr @fsg_lun_make, ptr null, ptr null, ptr @fsg_lun_drop }, align 4
@fsg_attrs = internal global [2 x ptr] [ptr @fsg_opts_attr_stall, ptr null], align 4
@.str.29 = private unnamed_addr constant [36 x i8] c"\013Unable to locate . in LUN.NUMBER\0A\00", align 1
@fsg_opts_attr_stall = internal global %struct.configfs_attribute { ptr @.str.30, ptr @__this_module, i16 420, ptr @fsg_opts_stall_show, ptr @fsg_opts_stall_store }, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"stall\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@fsg_lun_item_ops = internal global %struct.configfs_item_operations { ptr @fsg_lun_attr_release, ptr null, ptr null }, align 4
@fsg_lun_attrs = internal global [7 x ptr] [ptr @fsg_lun_opts_attr_file, ptr @fsg_lun_opts_attr_ro, ptr @fsg_lun_opts_attr_removable, ptr @fsg_lun_opts_attr_cdrom, ptr @fsg_lun_opts_attr_nofua, ptr @fsg_lun_opts_attr_inquiry_string, ptr null], align 4
@fsg_lun_opts_attr_file = internal global %struct.configfs_attribute { ptr @.str.17, ptr @__this_module, i16 420, ptr @fsg_lun_opts_file_show, ptr @fsg_lun_opts_file_store }, align 4
@fsg_lun_opts_attr_ro = internal global %struct.configfs_attribute { ptr @.str.16, ptr @__this_module, i16 420, ptr @fsg_lun_opts_ro_show, ptr @fsg_lun_opts_ro_store }, align 4
@fsg_lun_opts_attr_removable = internal global %struct.configfs_attribute { ptr @.str.32, ptr @__this_module, i16 420, ptr @fsg_lun_opts_removable_show, ptr @fsg_lun_opts_removable_store }, align 4
@fsg_lun_opts_attr_cdrom = internal global %struct.configfs_attribute { ptr @.str.33, ptr @__this_module, i16 420, ptr @fsg_lun_opts_cdrom_show, ptr @fsg_lun_opts_cdrom_store }, align 4
@fsg_lun_opts_attr_nofua = internal global %struct.configfs_attribute { ptr @.str.18, ptr @__this_module, i16 420, ptr @fsg_lun_opts_nofua_show, ptr @fsg_lun_opts_nofua_store }, align 4
@fsg_lun_opts_attr_inquiry_string = internal global %struct.configfs_attribute { ptr @.str.34, ptr @__this_module, i16 420, ptr @fsg_lun_opts_inquiry_string_show, ptr @fsg_lun_opts_inquiry_string_store }, align 4
@.str.32 = private unnamed_addr constant [10 x i8] c"removable\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"cdrom\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"inquiry_string\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"Mass Storage Function\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"\013There should be at least one LUN.\0A\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"file-storage\00", align 1
@fsg_fs_bulk_in_desc = external dso_local global %struct.usb_endpoint_descriptor, align 1
@fsg_fs_bulk_out_desc = external dso_local global %struct.usb_endpoint_descriptor, align 1
@fsg_hs_bulk_in_desc = external dso_local local_unnamed_addr global %struct.usb_endpoint_descriptor, align 1
@fsg_hs_bulk_out_desc = external dso_local local_unnamed_addr global %struct.usb_endpoint_descriptor, align 1
@fsg_ss_bulk_in_desc = external dso_local local_unnamed_addr global %struct.usb_endpoint_descriptor, align 1
@fsg_ss_bulk_in_comp_desc = external dso_local local_unnamed_addr global %struct.usb_ss_ep_comp_descriptor, align 1
@fsg_ss_bulk_out_desc = external dso_local local_unnamed_addr global %struct.usb_endpoint_descriptor, align 1
@fsg_ss_bulk_out_comp_desc = external dso_local local_unnamed_addr global %struct.usb_ss_ep_comp_descriptor, align 1
@fsg_fs_function = external dso_local global [0 x ptr], align 4
@fsg_hs_function = external dso_local global [0 x ptr], align 4
@fsg_ss_function = external dso_local global [0 x ptr], align 4
@.str.38 = private unnamed_addr constant [39 x i8] c"unable to autoconfigure all endpoints\0A\00", align 1
@__func__.handle_exception = private unnamed_addr constant [17 x i8] c"handle_exception\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"common->fsg is NULL in %s at %u\0A\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"drivers/usb/gadget/function/f_mass_storage.c\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"error in submission: %s --> %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"can't allocate request for %s\0A\00", align 1
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@__func__.get_next_command = private unnamed_addr constant [17 x i8] c"get_next_command\00", align 1
@__func__.start_out_transfer = private unnamed_addr constant [19 x i8] c"start_out_transfer\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"usb_ep_set_wedge -> %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"usb_ep_set_halt -> %d\0A\00", align 1
@do_scsi_command.unknown = internal global [16 x i8] zeroinitializer, align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"Unknown x%02x\00", align 1
@check_command.dirletter = internal unnamed_addr constant [4 x i8] c"uoin", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c", H%c=%u\00", align 1
@__func__.start_in_transfer = private unnamed_addr constant [18 x i8] c"start_in_transfer\00", align 1
@.str.73 = private unnamed_addr constant [42 x i8] c"\013%s/%s: write %u @ %llu beyond end %llu\0A\00", align 1
@.str.74 = private unnamed_addr constant [39 x i8] c"\013%s: write %u @ %llu beyond end %llu\0A\00", align 1
@__func__.finish_reply = private unnamed_addr constant [13 x i8] c"finish_reply\00", align 1
@__func__.fsg_setup = private unnamed_addr constant [10 x i8] c"fsg_setup\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias289, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_license290, ptr @__ksymtab_fsg_common_create_lun, ptr @__ksymtab_fsg_common_create_luns, ptr @__ksymtab_fsg_common_free_buffers, ptr @__ksymtab_fsg_common_remove_lun, ptr @__ksymtab_fsg_common_remove_luns, ptr @__ksymtab_fsg_common_set_cdev, ptr @__ksymtab_fsg_common_set_inquiry_string, ptr @__ksymtab_fsg_common_set_num_buffers, ptr @__ksymtab_fsg_common_set_sysfs, ptr @__ksymtab_fsg_config_from_params], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @fsg_common_set_sysfs(ptr nocapture noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 29
  %4 = load i8, ptr %3, align 4
  %5 = select i1 %1, i8 64, i8 0
  %6 = and i8 %4, -65
  %7 = or i8 %6, %5
  store i8 %7, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsg_common_set_num_buffers(ptr nocapture noundef %0, i32 noundef %1) #1 {
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 24) #20
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %41, label %5, !prof !8

5:                                                ; preds = %2
  %6 = extractvalue { i32, i1 } %3, 0
  %7 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %5
  %10 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3264, i32 noundef 2) #21
  store ptr %10, ptr %7, align 64
  %11 = icmp eq ptr %10, null
  br i1 %11, label %40, label %17, !prof !8

12:                                               ; preds = %17
  %13 = getelementptr %struct.fsg_buffhd, ptr %19, i32 1
  %14 = getelementptr inbounds %struct.fsg_buffhd, ptr %19, i32 0, i32 2
  store ptr %13, ptr %14, align 4
  %15 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3264, i32 noundef 2) #21
  store ptr %15, ptr %13, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %40, label %17, !prof !8

17:                                               ; preds = %12, %9
  %18 = phi i32 [ %20, %12 ], [ %1, %9 ]
  %19 = phi ptr [ %13, %12 ], [ %7, %9 ]
  %20 = add i32 %18, -1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %12

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.fsg_buffhd, ptr %19, i32 0, i32 2
  store ptr %7, ptr %23, align 4
  %24 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 12
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 13
  %27 = icmp eq ptr %25, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %22
  %29 = load i32, ptr %26, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %31, %28
  %32 = phi ptr [ %36, %31 ], [ %25, %28 ]
  %33 = phi i32 [ %34, %31 ], [ %29, %28 ]
  %34 = add i32 %33, -1
  %35 = load ptr, ptr %32, align 4
  tail call void @kfree(ptr noundef %35) #20
  %36 = getelementptr %struct.fsg_buffhd, ptr %32, i32 1
  %37 = icmp eq i32 %34, 0
  br i1 %37, label %38, label %31

38:                                               ; preds = %31, %28
  tail call void @kfree(ptr noundef nonnull %25) #20
  br label %39

39:                                               ; preds = %38, %22
  store i32 %1, ptr %26, align 4
  store ptr %7, ptr %24, align 4
  br label %41

40:                                               ; preds = %12, %9
  tail call fastcc void @_fsg_common_free_buffers(ptr noundef nonnull %7, i32 noundef %1)
  br label %41

41:                                               ; preds = %40, %39, %5, %2
  %42 = phi i32 [ -12, %40 ], [ 0, %39 ], [ -12, %5 ], [ -12, %2 ]
  ret i32 %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_fsg_common_free_buffers(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %6, %4
  %7 = phi ptr [ %11, %6 ], [ %0, %4 ]
  %8 = phi i32 [ %9, %6 ], [ %1, %4 ]
  %9 = add i32 %8, -1
  %10 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %10) #20
  %11 = getelementptr %struct.fsg_buffhd, ptr %7, i32 1
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %13, label %6

13:                                               ; preds = %6, %4
  tail call void @kfree(ptr noundef nonnull %0) #20
  br label %14

14:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsg_common_remove_lun(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 9, i32 0, i32 7
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 9
  tail call void @device_unregister(ptr noundef %7) #20
  br label %8

8:                                                ; preds = %6, %1
  tail call void @fsg_lun_close(ptr noundef %0) #20
  tail call void @kfree(ptr noundef %0) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsg_lun_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsg_common_remove_luns(ptr nocapture noundef %0) #1 {
  br label %2

2:                                                ; preds = %15, %1
  %3 = phi i32 [ %16, %15 ], [ 0, %1 ]
  %4 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 17, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 9, i32 0, i32 7
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 9
  tail call void @device_unregister(ptr noundef %13) #20
  br label %14

14:                                               ; preds = %12, %7
  tail call void @fsg_lun_close(ptr noundef nonnull %5) #20
  tail call void @kfree(ptr noundef nonnull %5) #20
  store ptr null, ptr %4, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = add nuw nsw i32 %3, 1
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %18, label %2

18:                                               ; preds = %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsg_common_free_buffers(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 13
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %9, %5
  %10 = phi ptr [ %14, %9 ], [ %3, %5 ]
  %11 = phi i32 [ %12, %9 ], [ %7, %5 ]
  %12 = add i32 %11, -1
  %13 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %13) #20
  %14 = getelementptr %struct.fsg_buffhd, ptr %10, i32 1
  %15 = icmp eq i32 %12, 0
  br i1 %15, label %16, label %9

16:                                               ; preds = %9, %5
  tail call void @kfree(ptr noundef nonnull %3) #20
  br label %17

17:                                               ; preds = %16, %1
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsg_common_set_cdev(ptr nocapture noundef %0, ptr noundef %1, i1 noundef zeroext %2) #1 {
  %4 = load ptr, ptr %1, align 4
  store ptr %4, ptr %0, align 4
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 7
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.usb_composite_dev, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 8
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 1
  store ptr %1, ptr %12, align 4
  %13 = tail call ptr @usb_gstrings_attach(ptr noundef %1, ptr noundef nonnull @fsg_strings_array, i32 noundef 2) #20
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = ptrtoint ptr %13 to i32
  br label %32

17:                                               ; preds = %3
  %18 = load i8, ptr %13, align 4
  store i8 %18, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @fsg_intf_desc, i32 0, i32 8), align 1
  br i1 %2, label %19, label %25

19:                                               ; preds = %17
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.usb_gadget, ptr %20, i32 0, i32 17
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1024
  %24 = icmp eq i32 %23, 0
  br label %25

25:                                               ; preds = %19, %17
  %26 = phi i1 [ false, %17 ], [ %24, %19 ]
  %27 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 29
  %28 = zext i1 %26 to i8
  %29 = load i8, ptr %27, align 4
  %30 = and i8 %29, -2
  %31 = or i8 %30, %28
  store i8 %31, ptr %27, align 4
  br label %32

32:                                               ; preds = %25, %15
  %33 = phi i32 [ %16, %15 ], [ 0, %25 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsg_common_create_lun(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  %6 = icmp ugt i32 %2, 15
  br i1 %6, label %118, label %7

7:                                                ; preds = %5
  %8 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 17, i32 %2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %118

11:                                               ; preds = %7
  %12 = load ptr, ptr %1, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.fsg_lun_config, ptr %1, i32 0, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %2) #22
  br label %118

20:                                               ; preds = %14, %11
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 560) #23
  %23 = icmp eq ptr %22, null
  br i1 %23, label %118, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.fsg_lun, ptr %22, i32 0, i32 11
  store ptr %4, ptr %25, align 4
  %26 = getelementptr inbounds %struct.fsg_lun_config, ptr %1, i32 0, i32 3
  %27 = load i8, ptr %26, align 2
  %28 = icmp eq i8 %27, 0
  %29 = getelementptr inbounds %struct.fsg_lun, ptr %22, i32 0, i32 3
  %30 = load i8, ptr %29, align 8
  %31 = select i1 %28, i8 0, i8 8
  %32 = and i8 %30, -9
  %33 = or i8 %32, %31
  store i8 %33, ptr %29, align 8
  br i1 %28, label %34, label %39

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.fsg_lun_config, ptr %1, i32 0, i32 1
  %36 = load i8, ptr %35, align 4
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %37, i8 0, i8 2
  br label %39

39:                                               ; preds = %34, %24
  %40 = phi i8 [ 2, %24 ], [ %38, %34 ]
  %41 = and i8 %33, -8
  %42 = or i8 %40, %41
  %43 = lshr exact i8 %40, 1
  %44 = or i8 %42, %43
  %45 = getelementptr inbounds %struct.fsg_lun_config, ptr %1, i32 0, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 0
  %48 = select i1 %47, i8 0, i8 4
  %49 = or i8 %48, %44
  store i8 %49, ptr %29, align 8
  %50 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 29
  %51 = load i8, ptr %50, align 4
  %52 = and i8 %51, 64
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = getelementptr inbounds %struct.fsg_lun, ptr %22, i32 0, i32 10
  store ptr %3, ptr %55, align 8
  br label %78

56:                                               ; preds = %39
  %57 = getelementptr inbounds %struct.fsg_lun, ptr %22, i32 0, i32 9
  %58 = getelementptr inbounds %struct.fsg_lun, ptr %22, i32 0, i32 9, i32 33
  store ptr @fsg_lun_release, ptr %58, align 4
  %59 = load ptr, ptr %0, align 4
  %60 = getelementptr inbounds %struct.usb_gadget, ptr %59, i32 0, i32 11
  %61 = getelementptr inbounds %struct.fsg_lun, ptr %22, i32 0, i32 9, i32 1
  store ptr %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.fsg_lun, ptr %22, i32 0, i32 9, i32 32
  store ptr @fsg_lun_dev_groups, ptr %62, align 8
  %63 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 5
  %64 = getelementptr inbounds %struct.fsg_lun, ptr %22, i32 0, i32 9, i32 8
  store ptr %63, ptr %64, align 8
  %65 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %57, ptr noundef nonnull @.str.1, ptr noundef %3) #20
  %66 = getelementptr inbounds %struct.fsg_lun, ptr %22, i32 0, i32 9, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = load ptr, ptr %57, align 8
  br label %71

71:                                               ; preds = %69, %56
  %72 = phi ptr [ %70, %69 ], [ %67, %56 ]
  %73 = getelementptr inbounds %struct.fsg_lun, ptr %22, i32 0, i32 10
  store ptr %72, ptr %73, align 8
  %74 = tail call i32 @device_register(ptr noundef %57) #20
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %2, i32 noundef %74) #22
  tail call void @put_device(ptr noundef %57) #20
  br label %116

78:                                               ; preds = %71, %54
  store ptr %22, ptr %8, align 4
  %79 = load ptr, ptr %1, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = tail call i32 @fsg_lun_open(ptr noundef nonnull %22, ptr noundef nonnull %79) #20
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %81, %78
  %85 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %86 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %85, i32 noundef 3264, i32 noundef 4096) #23
  %87 = load ptr, ptr %22, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %84
  %90 = icmp eq ptr %86, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %89
  %92 = tail call ptr @file_path(ptr noundef nonnull %87, ptr noundef nonnull %86, i32 noundef 4096) #20
  %93 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  %94 = select i1 %93, ptr @.str.4, ptr %92
  br label %95

95:                                               ; preds = %91, %89, %84
  %96 = phi ptr [ @.str.4, %89 ], [ @.str.3, %84 ], [ %94, %91 ]
  %97 = load i8, ptr %29, align 8
  %98 = and i8 %97, 4
  %99 = icmp eq i8 %98, 0
  %100 = select i1 %99, ptr @.str.7, ptr @.str.6
  %101 = and i8 %97, 2
  %102 = icmp eq i8 %101, 0
  %103 = select i1 %102, ptr @.str.7, ptr @.str.8
  %104 = and i8 %97, 8
  %105 = icmp eq i8 %104, 0
  %106 = select i1 %105, ptr @.str.7, ptr @.str.9
  %107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %100, ptr noundef nonnull %103, ptr noundef nonnull %106, ptr noundef %96) #22
  tail call void @kfree(ptr noundef %86) #20
  br label %118

108:                                              ; preds = %81
  %109 = getelementptr inbounds %struct.fsg_lun, ptr %22, i32 0, i32 9, i32 0, i32 7
  %110 = load i8, ptr %109, align 8
  %111 = and i8 %110, 2
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.fsg_lun, ptr %22, i32 0, i32 9
  tail call void @device_unregister(ptr noundef %114) #20
  br label %115

115:                                              ; preds = %113, %108
  tail call void @fsg_lun_close(ptr noundef nonnull %22) #20
  store ptr null, ptr %8, align 4
  br label %116

116:                                              ; preds = %115, %76
  %117 = phi i32 [ %74, %76 ], [ %82, %115 ]
  tail call void @kfree(ptr noundef nonnull %22) #20
  br label %118

118:                                              ; preds = %116, %95, %20, %18, %7, %5
  %119 = phi i32 [ %117, %116 ], [ 0, %95 ], [ -22, %18 ], [ -19, %5 ], [ -16, %7 ], [ -12, %20 ]
  ret i32 %119
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @fsg_lun_release(ptr nocapture noundef %0) #5 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsg_lun_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsg_common_create_luns(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store i64 0, ptr %3, align 8, !annotation !9
  br label %4

4:                                                ; preds = %17, %2
  %5 = phi i32 [ %18, %17 ], [ 0, %2 ]
  %6 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 17, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.fsg_lun, ptr %7, i32 0, i32 9, i32 0, i32 7
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.fsg_lun, ptr %7, i32 0, i32 9
  tail call void @device_unregister(ptr noundef %15) #20
  br label %16

16:                                               ; preds = %14, %9
  tail call void @fsg_lun_close(ptr noundef nonnull %7) #20
  tail call void @kfree(ptr noundef nonnull %7) #20
  store ptr null, ptr %6, align 4
  br label %17

17:                                               ; preds = %16, %4
  %18 = add nuw nsw i32 %5, 1
  %19 = icmp eq i32 %18, 16
  br i1 %19, label %20, label %4

20:                                               ; preds = %17
  %21 = load i32, ptr %1, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %29, %20
  %24 = phi i32 [ %30, %29 ], [ 0, %20 ]
  %25 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 8, ptr noundef nonnull @.str.10, i32 noundef %24)
  %26 = getelementptr %struct.fsg_config, ptr %1, i32 0, i32 1, i32 %24
  %27 = call i32 @fsg_common_create_lun(ptr noundef %0, ptr noundef %26, i32 noundef %24, ptr noundef nonnull %3, ptr noundef null)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = add nuw i32 %24, 1
  %31 = load i32, ptr %1, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %23, label %33

33:                                               ; preds = %29, %20
  %34 = phi i32 [ 0, %20 ], [ %31, %29 ]
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %34) #22
  br label %54

36:                                               ; preds = %23
  %37 = icmp sgt i32 %24, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %51, %36
  %39 = phi i32 [ %52, %51 ], [ 0, %36 ]
  %40 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 17, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.fsg_lun, ptr %41, i32 0, i32 9, i32 0, i32 7
  %45 = load i8, ptr %44, align 8
  %46 = and i8 %45, 2
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.fsg_lun, ptr %41, i32 0, i32 9
  call void @device_unregister(ptr noundef %49) #20
  br label %50

50:                                               ; preds = %48, %43
  call void @fsg_lun_close(ptr noundef nonnull %41) #20
  call void @kfree(ptr noundef nonnull %41) #20
  store ptr null, ptr %40, align 4
  br label %51

51:                                               ; preds = %50, %38
  %52 = add nuw nsw i32 %39, 1
  %53 = icmp eq i32 %52, %24
  br i1 %53, label %54, label %38

54:                                               ; preds = %51, %36, %33
  %55 = phi i32 [ 0, %33 ], [ %27, %36 ], [ %27, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret i32 %55
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsg_common_set_inquiry_string(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) #8 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fsg_lun, ptr %7, i32 0, i32 3
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 8
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, ptr @.str.15, ptr @.str.14
  br label %13

13:                                               ; preds = %5, %3
  %14 = phi ptr [ %12, %5 ], [ %2, %3 ]
  %15 = icmp eq ptr %1, null
  %16 = select i1 %15, ptr @.str.13, ptr %1
  %17 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 33
  %18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %17, i32 noundef 29, ptr noundef nonnull @.str.12, ptr noundef %16, ptr noundef %14, i32 noundef 1303)
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #9 section ".init.text" {
  %1 = tail call i32 @usb_function_register(ptr noundef nonnull @mass_storageusb_func) #20
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #9 section ".exit.text" {
  tail call void @usb_function_unregister(ptr noundef nonnull @mass_storageusb_func) #20
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsg_config_from_params(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #10 {
  %4 = getelementptr inbounds %struct.fsg_module_parameters, ptr %1, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fsg_module_parameters, ptr %1, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 1, i32 %9
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %11, %7 ], [ %5, %3 ]
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 16)
  store i32 %14, ptr %0, align 4
  %15 = getelementptr inbounds %struct.fsg_config, ptr %0, i32 0, i32 1
  %16 = getelementptr inbounds %struct.fsg_module_parameters, ptr %1, i32 0, i32 5
  br label %17

17:                                               ; preds = %37, %12
  %18 = phi ptr [ %15, %12 ], [ %40, %37 ]
  %19 = phi i32 [ 0, %12 ], [ %39, %37 ]
  %20 = getelementptr %struct.fsg_module_parameters, ptr %1, i32 0, i32 1, i32 %19
  %21 = load i8, ptr %20, align 1, !range !10
  %22 = getelementptr inbounds %struct.fsg_lun_config, ptr %18, i32 0, i32 1
  store i8 %21, ptr %22, align 4
  %23 = getelementptr %struct.fsg_module_parameters, ptr %1, i32 0, i32 3, i32 %19
  %24 = load i8, ptr %23, align 1, !range !10
  %25 = getelementptr inbounds %struct.fsg_lun_config, ptr %18, i32 0, i32 3
  store i8 %24, ptr %25, align 2
  %26 = getelementptr %struct.fsg_module_parameters, ptr %1, i32 0, i32 2, i32 %19
  %27 = load i8, ptr %26, align 1, !range !10
  %28 = getelementptr inbounds %struct.fsg_lun_config, ptr %18, i32 0, i32 2
  store i8 %27, ptr %28, align 1
  %29 = load i32, ptr %16, align 4
  %30 = icmp ugt i32 %29, %19
  br i1 %30, label %31, label %37

31:                                               ; preds = %17
  %32 = getelementptr [16 x ptr], ptr %1, i32 0, i32 %19
  %33 = load ptr, ptr %32, align 4
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, ptr null, ptr %33
  br label %37

37:                                               ; preds = %31, %17
  %38 = phi ptr [ null, %17 ], [ %36, %31 ]
  store ptr %38, ptr %18, align 4
  %39 = add nuw i32 %19, 1
  %40 = getelementptr %struct.fsg_lun_config, ptr %18, i32 1
  %41 = load i32, ptr %0, align 4
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %17, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.fsg_config, ptr %0, i32 0, i32 2
  %45 = getelementptr inbounds %struct.fsg_module_parameters, ptr %1, i32 0, i32 11
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %44, i8 0, i64 16, i1 false)
  %46 = load i8, ptr %45, align 4, !range !10
  %47 = getelementptr inbounds %struct.fsg_config, ptr %0, i32 0, i32 6
  store i8 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.fsg_config, ptr %0, i32 0, i32 7
  store i32 %2, ptr %48, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @fsg_lun_dev_is_visible(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #14 {
  %4 = icmp eq ptr %1, @dev_attr_ro
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 -24
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 8
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i16 420, i16 292
  br label %22

11:                                               ; preds = %3
  %12 = icmp eq ptr %1, @dev_attr_file
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = getelementptr i8, ptr %0, i32 -24
  %15 = load i8, ptr %14, align 8
  %16 = and i8 %15, 4
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i16 292, i16 420
  br label %22

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %21 = load i16, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %13, %5
  %23 = phi i16 [ %10, %5 ], [ %18, %13 ], [ %21, %19 ]
  ret i16 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ro_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -48
  %5 = tail call i32 @fsg_show_ro(ptr noundef %4, ptr noundef %2) #20
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ro_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr i8, ptr %0, i32 -48
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @fsg_store_ro(ptr noundef %5, ptr noundef %7, ptr noundef %2, i32 noundef %3) #20
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsg_show_ro(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsg_store_ro(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @file_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -48
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @fsg_show_file(ptr noundef %4, ptr noundef %6, ptr noundef %2) #20
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @file_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr i8, ptr %0, i32 -48
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @fsg_store_file(ptr noundef %5, ptr noundef %7, ptr noundef %2, i32 noundef %3) #20
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsg_show_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsg_store_file(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nofua_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -48
  %5 = tail call i32 @fsg_show_nofua(ptr noundef %4, ptr noundef %2) #20
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nofua_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr i8, ptr %0, i32 -48
  %6 = tail call i32 @fsg_store_nofua(ptr noundef %5, ptr noundef %2, i32 noundef %3) #20
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsg_show_nofua(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsg_store_nofua(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @fsg_alloc_inst() #1 {
  %1 = alloca %struct.fsg_lun_config, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %1) #20
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 228) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %66, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.fsg_opts, ptr %3, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %6, ptr noundef nonnull @.str.20, ptr noundef nonnull @fsg_alloc_inst.__key) #20
  %7 = getelementptr inbounds %struct.fsg_opts, ptr %3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.fsg_opts, ptr %3, i32 0, i32 1, i32 4
  store ptr @fsg_free_inst, ptr %8, align 4
  %9 = load ptr, ptr %3, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %5
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 284) #23
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store ptr inttoptr (i32 -12 to ptr), ptr %3, align 8
  br label %35

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.fsg_common, ptr %13, i32 0, i32 29
  %18 = load i8, ptr %17, align 8
  %19 = or i8 %18, 2
  store i8 %19, ptr %17, align 8
  br label %24

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.fsg_common, ptr %9, i32 0, i32 29
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, -3
  store i8 %23, ptr %21, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi ptr [ %9, %20 ], [ %13, %16 ]
  %26 = getelementptr inbounds %struct.fsg_common, ptr %25, i32 0, i32 5
  tail call void @__init_rwsem(ptr noundef %26, ptr noundef nonnull @.str.23, ptr noundef nonnull @fsg_common_setup.__key) #20
  %27 = getelementptr inbounds %struct.fsg_common, ptr %25, i32 0, i32 6
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.fsg_common, ptr %25, i32 0, i32 30
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.fsg_common, ptr %25, i32 0, i32 30, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %29, ptr noundef nonnull @.str.28, ptr noundef nonnull @init_completion.__key) #20
  %30 = getelementptr inbounds %struct.fsg_common, ptr %25, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %30, ptr noundef nonnull @.str.25, ptr noundef nonnull @fsg_common_setup.__key.24) #20
  %31 = getelementptr inbounds %struct.fsg_common, ptr %25, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %31, ptr noundef nonnull @.str.27, ptr noundef nonnull @fsg_common_setup.__key.26) #20
  %32 = getelementptr inbounds %struct.fsg_common, ptr %25, i32 0, i32 20
  store i32 5, ptr %32, align 4
  %33 = getelementptr inbounds %struct.fsg_common, ptr %25, i32 0, i32 17
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %33, i8 0, i32 64, i1 false) #20
  store ptr %25, ptr %3, align 8
  %34 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %38

35:                                               ; preds = %24, %15
  %36 = phi ptr [ inttoptr (i32 -12 to ptr), %15 ], [ %25, %24 ]
  %37 = ptrtoint ptr %36 to i32
  br label %63

38:                                               ; preds = %24
  %39 = tail call i32 @fsg_common_set_num_buffers(ptr noundef nonnull %25, i32 noundef 2)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %1, i8 0, i32 40, i1 false)
  %43 = getelementptr inbounds %struct.fsg_lun_config, ptr %1, i32 0, i32 2
  store i8 1, ptr %43, align 1
  %44 = load ptr, ptr %3, align 8
  %45 = call i32 @fsg_common_create_lun(ptr noundef %44, ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef %7)
  %46 = icmp eq i32 %45, 0
  %47 = load ptr, ptr %3, align 8
  br i1 %46, label %48, label %59

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.fsg_common, ptr %47, i32 0, i32 17
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.fsg_opts, ptr %3, i32 0, i32 2
  %52 = getelementptr inbounds %struct.fsg_opts, ptr %3, i32 0, i32 2, i32 1
  store ptr %50, ptr %52, align 8
  %53 = getelementptr inbounds %struct.fsg_opts, ptr %3, i32 0, i32 2, i32 2
  store i32 0, ptr %53, align 4
  tail call void @config_group_init_type_name(ptr noundef %7, ptr noundef nonnull @.str.7, ptr noundef nonnull @fsg_func_type) #20
  tail call void @config_group_init_type_name(ptr noundef %51, ptr noundef nonnull @.str.22, ptr noundef nonnull @fsg_lun_type) #20
  %54 = getelementptr inbounds %struct.fsg_opts, ptr %3, i32 0, i32 2, i32 0, i32 4
  %55 = getelementptr inbounds %struct.fsg_opts, ptr %3, i32 0, i32 1, i32 0, i32 3
  %56 = getelementptr inbounds %struct.fsg_opts, ptr %3, i32 0, i32 1, i32 0, i32 3, i32 1
  %57 = load ptr, ptr %56, align 8
  store ptr %54, ptr %56, align 8
  store ptr %55, ptr %54, align 8
  %58 = getelementptr inbounds %struct.fsg_opts, ptr %3, i32 0, i32 2, i32 0, i32 4, i32 1
  store ptr %57, ptr %58, align 4
  store volatile ptr %54, ptr %57, align 4
  br label %66

59:                                               ; preds = %41
  tail call void @fsg_common_free_buffers(ptr noundef %47)
  br label %60

60:                                               ; preds = %59, %38
  %61 = phi i32 [ %39, %38 ], [ %45, %59 ]
  %62 = load ptr, ptr %3, align 8
  tail call void @kfree(ptr noundef %62) #20
  br label %63

63:                                               ; preds = %60, %35
  %64 = phi i32 [ %37, %35 ], [ %61, %60 ]
  tail call void @kfree(ptr noundef nonnull %3) #20
  %65 = inttoptr i32 %64 to ptr
  br label %66

66:                                               ; preds = %63, %48, %0
  %67 = phi ptr [ %65, %63 ], [ %7, %48 ], [ inttoptr (i32 -12 to ptr), %0 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %1) #20
  ret ptr %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @fsg_alloc(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 132) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7, !prof !8

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 200
  tail call void @mutex_lock(ptr noundef %8) #20
  %9 = getelementptr i8, ptr %0, i32 220
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 4
  tail call void @mutex_unlock(ptr noundef %8) #20
  store ptr @.str.35, ptr %5, align 8
  %12 = getelementptr inbounds %struct.usb_function, ptr %5, i32 0, i32 9
  store ptr @fsg_bind, ptr %12, align 4
  %13 = getelementptr inbounds %struct.usb_function, ptr %5, i32 0, i32 10
  store ptr @fsg_unbind, ptr %13, align 8
  %14 = getelementptr inbounds %struct.usb_function, ptr %5, i32 0, i32 16
  store ptr @fsg_setup, ptr %14, align 8
  %15 = getelementptr inbounds %struct.usb_function, ptr %5, i32 0, i32 13
  store ptr @fsg_set_alt, ptr %15, align 4
  %16 = getelementptr inbounds %struct.usb_function, ptr %5, i32 0, i32 15
  store ptr @fsg_disable, ptr %16, align 4
  %17 = getelementptr inbounds %struct.usb_function, ptr %5, i32 0, i32 11
  store ptr @fsg_free, ptr %17, align 4
  %18 = getelementptr inbounds %struct.fsg_dev, ptr %5, i32 0, i32 2
  store ptr %3, ptr %18, align 8
  br label %19

19:                                               ; preds = %7, %1
  %20 = phi ptr [ %5, %7 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsg_free_inst(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fsg_common, ptr %3, i32 0, i32 20
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 5
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.fsg_common, ptr %3, i32 0, i32 6
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #20
  %10 = load i32, ptr %4, align 4
  %11 = icmp ugt i32 %10, 4
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.fsg_common, ptr %3, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.fsg_common, ptr %3, i32 0, i32 21
  store i32 %14, ptr %15, align 4
  store i32 4, ptr %4, align 4
  %16 = getelementptr inbounds %struct.fsg_common, ptr %3, i32 0, i32 22
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.fsg_common, ptr %3, i32 0, i32 31
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  %21 = tail call i32 @send_sig_info(i32 noundef 10, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %18) #20
  br label %22

22:                                               ; preds = %20, %12, %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #20
  %23 = getelementptr inbounds %struct.fsg_common, ptr %3, i32 0, i32 30
  tail call void @wait_for_completion(ptr noundef %23) #20
  br label %24

24:                                               ; preds = %22, %1
  br label %25

25:                                               ; preds = %38, %24
  %26 = phi i32 [ %39, %38 ], [ 0, %24 ]
  %27 = getelementptr %struct.fsg_common, ptr %3, i32 0, i32 17, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  tail call void @fsg_lun_close(ptr noundef nonnull %28) #20
  %31 = getelementptr inbounds %struct.fsg_lun, ptr %28, i32 0, i32 9, i32 0, i32 7
  %32 = load i8, ptr %31, align 8
  %33 = and i8 %32, 2
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.fsg_lun, ptr %28, i32 0, i32 9
  tail call void @device_unregister(ptr noundef %36) #20
  br label %37

37:                                               ; preds = %35, %30
  tail call void @kfree(ptr noundef nonnull %28) #20
  br label %38

38:                                               ; preds = %37, %25
  %39 = add nuw nsw i32 %26, 1
  %40 = icmp eq i32 %39, 16
  br i1 %40, label %41, label %25

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.fsg_common, ptr %3, i32 0, i32 12
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.fsg_common, ptr %3, i32 0, i32 13
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %49, %45
  %50 = phi ptr [ %54, %49 ], [ %43, %45 ]
  %51 = phi i32 [ %52, %49 ], [ %47, %45 ]
  %52 = add i32 %51, -1
  %53 = load ptr, ptr %50, align 4
  tail call void @kfree(ptr noundef %53) #20
  %54 = getelementptr %struct.fsg_buffhd, ptr %50, i32 1
  %55 = icmp eq i32 %52, 0
  br i1 %55, label %56, label %49

56:                                               ; preds = %49, %45
  tail call void @kfree(ptr noundef nonnull %43) #20
  br label %57

57:                                               ; preds = %56, %41
  %58 = getelementptr inbounds %struct.fsg_common, ptr %3, i32 0, i32 29
  %59 = load i8, ptr %58, align 4
  %60 = and i8 %59, 2
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  tail call void @kfree(ptr noundef %3) #20
  br label %63

63:                                               ; preds = %62, %57
  tail call void @kfree(ptr noundef %2) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig_info(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsg_attr_release(ptr noundef %0) #1 {
  tail call void @usb_put_function_instance(ptr noundef %0) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @fsg_lun_make(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %struct.fsg_lun_config, align 4
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #20
  store i8 0, ptr %4, align 1, !annotation !9
  %5 = tail call ptr @strchr(ptr noundef %1, i32 noundef 46)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #22
  br label %58

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %5, i32 1
  %11 = call i32 @kstrtou8(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %4) #20
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = inttoptr i32 %11 to ptr
  br label %58

15:                                               ; preds = %9
  %16 = getelementptr i8, ptr %0, i32 -4
  %17 = load i8, ptr %4, align 1
  %18 = icmp ugt i8 %17, 15
  br i1 %18, label %58, label %19

19:                                               ; preds = %15
  %20 = zext i8 %17 to i32
  %21 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %20, i32 16) #20, !srcloc !11
  %22 = trunc i32 %21 to i8
  %23 = and i8 %17, %22
  store i8 %23, ptr %4, align 1
  %24 = getelementptr i8, ptr %0, i32 200
  call void @mutex_lock(ptr noundef %24) #20
  %25 = getelementptr i8, ptr %0, i32 220
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %19
  %29 = load ptr, ptr %16, align 4
  %30 = load i8, ptr %4, align 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr %struct.fsg_common, ptr %29, i32 0, i32 17, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %56

35:                                               ; preds = %28
  %36 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %37 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 88) #23
  %38 = icmp eq ptr %37, null
  br i1 %38, label %56, label %39

39:                                               ; preds = %35
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false)
  %40 = getelementptr inbounds %struct.fsg_lun_config, ptr %3, i32 0, i32 2
  store i8 1, ptr %40, align 1
  %41 = load ptr, ptr %16, align 4
  %42 = load i8, ptr %4, align 1
  %43 = zext i8 %42 to i32
  %44 = call i32 @fsg_common_create_lun(ptr noundef %41, ptr noundef nonnull %3, i32 noundef %43, ptr noundef %1, ptr noundef %0)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  call void @kfree(ptr noundef nonnull %37) #20
  %47 = inttoptr i32 %44 to ptr
  br label %56

48:                                               ; preds = %39
  %49 = load ptr, ptr %16, align 4
  %50 = load i8, ptr %4, align 1
  %51 = zext i8 %50 to i32
  %52 = getelementptr %struct.fsg_common, ptr %49, i32 0, i32 17, i32 %51
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.fsg_lun_opts, ptr %37, i32 0, i32 1
  store ptr %53, ptr %54, align 8
  %55 = getelementptr inbounds %struct.fsg_lun_opts, ptr %37, i32 0, i32 2
  store i32 %51, ptr %55, align 4
  call void @mutex_unlock(ptr noundef %24) #20
  call void @config_group_init_type_name(ptr noundef nonnull %37, ptr noundef %1, ptr noundef nonnull @fsg_lun_type) #20
  br label %58

56:                                               ; preds = %46, %35, %28, %19
  %57 = phi ptr [ %47, %46 ], [ inttoptr (i32 -16 to ptr), %28 ], [ inttoptr (i32 -16 to ptr), %19 ], [ inttoptr (i32 -12 to ptr), %35 ]
  call void @mutex_unlock(ptr noundef %24) #20
  br label %58

58:                                               ; preds = %56, %48, %15, %13, %7
  %59 = phi ptr [ %14, %13 ], [ %57, %56 ], [ %37, %48 ], [ inttoptr (i32 -22 to ptr), %7 ], [ inttoptr (i32 -34 to ptr), %15 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #20
  ret ptr %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsg_lun_drop(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 200
  tail call void @mutex_lock(ptr noundef %3) #20
  %4 = getelementptr i8, ptr %0, i32 220
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  tail call void @unregister_gadget_item(ptr noundef %11) #20
  br label %12

12:                                               ; preds = %7, %2
  %13 = getelementptr inbounds %struct.fsg_lun_opts, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.fsg_lun, ptr %14, i32 0, i32 9, i32 0, i32 7
  %16 = load i8, ptr %15, align 8
  %17 = and i8 %16, 2
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.fsg_lun, ptr %14, i32 0, i32 9
  tail call void @device_unregister(ptr noundef %20) #20
  br label %21

21:                                               ; preds = %19, %12
  %22 = getelementptr i8, ptr %0, i32 -4
  tail call void @fsg_lun_close(ptr noundef %14) #20
  tail call void @kfree(ptr noundef %14) #20
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.fsg_lun_opts, ptr %1, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.fsg_common, ptr %23, i32 0, i32 17, i32 %25
  store ptr null, ptr %26, align 4
  store i32 0, ptr %24, align 4
  tail call void @mutex_unlock(ptr noundef %3) #20
  tail call void @config_item_put(ptr noundef %1) #20
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_gadget_item(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsg_opts_stall_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = getelementptr i8, ptr %0, i32 200
  tail call void @mutex_lock(ptr noundef %4) #20
  %5 = load ptr, ptr %3, align 4
  %6 = getelementptr inbounds %struct.fsg_common, ptr %5, i32 0, i32 29
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 1
  %9 = zext i8 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %9)
  tail call void @mutex_unlock(ptr noundef %4) #20
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsg_opts_stall_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca i8, align 1
  %5 = getelementptr i8, ptr %0, i32 -4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #20
  store i8 0, ptr %4, align 1, !annotation !9
  %6 = getelementptr i8, ptr %0, i32 200
  tail call void @mutex_lock(ptr noundef %6) #20
  %7 = getelementptr i8, ptr %0, i32 220
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @mutex_unlock(ptr noundef %6) #20
  br label %23

11:                                               ; preds = %3
  %12 = call i32 @kstrtobool(ptr noundef %1, ptr noundef nonnull %4) #20
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load i8, ptr %4, align 1, !range !10
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.fsg_common, ptr %16, i32 0, i32 29
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, -2
  %20 = or i8 %19, %15
  store i8 %20, ptr %17, align 4
  br label %21

21:                                               ; preds = %14, %11
  %22 = phi i32 [ %12, %11 ], [ %2, %14 ]
  call void @mutex_unlock(ptr noundef %6) #20
  br label %23

23:                                               ; preds = %21, %10
  %24 = phi i32 [ -16, %10 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  ret i32 %24
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsg_lun_attr_release(ptr noundef %0) #1 {
  tail call void @kfree(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsg_lun_opts_file_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -4
  %6 = getelementptr inbounds %struct.fsg_lun_opts, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.fsg_common, ptr %8, i32 0, i32 5
  %10 = tail call i32 @fsg_show_file(ptr noundef %7, ptr noundef %9, ptr noundef %1) #20
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsg_lun_opts_file_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -4
  %7 = getelementptr inbounds %struct.fsg_lun_opts, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.fsg_common, ptr %9, i32 0, i32 5
  %11 = tail call i32 @fsg_store_file(ptr noundef %8, ptr noundef %10, ptr noundef %1, i32 noundef %2) #20
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsg_lun_opts_ro_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.fsg_lun_opts, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @fsg_show_ro(ptr noundef %4, ptr noundef %1) #20
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsg_lun_opts_ro_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -4
  %7 = getelementptr inbounds %struct.fsg_lun_opts, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.fsg_common, ptr %9, i32 0, i32 5
  %11 = tail call i32 @fsg_store_ro(ptr noundef %8, ptr noundef %10, ptr noundef %1, i32 noundef %2) #20
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsg_lun_opts_removable_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.fsg_lun_opts, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @fsg_show_removable(ptr noundef %4, ptr noundef %1) #20
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsg_lun_opts_removable_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.fsg_lun_opts, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @fsg_store_removable(ptr noundef %5, ptr noundef %1, i32 noundef %2) #20
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsg_show_removable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsg_store_removable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsg_lun_opts_cdrom_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.fsg_lun_opts, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @fsg_show_cdrom(ptr noundef %4, ptr noundef %1) #20
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsg_lun_opts_cdrom_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -4
  %7 = getelementptr inbounds %struct.fsg_lun_opts, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.fsg_common, ptr %9, i32 0, i32 5
  %11 = tail call i32 @fsg_store_cdrom(ptr noundef %8, ptr noundef %10, ptr noundef %1, i32 noundef %2) #20
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsg_show_cdrom(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsg_store_cdrom(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsg_lun_opts_nofua_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.fsg_lun_opts, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @fsg_show_nofua(ptr noundef %4, ptr noundef %1) #20
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsg_lun_opts_nofua_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.fsg_lun_opts, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @fsg_store_nofua(ptr noundef %5, ptr noundef %1, i32 noundef %2) #20
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsg_lun_opts_inquiry_string_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.fsg_lun_opts, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @fsg_show_inquiry_string(ptr noundef %4, ptr noundef %1) #20
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsg_lun_opts_inquiry_string_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.fsg_lun_opts, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @fsg_store_inquiry_string(ptr noundef %5, ptr noundef %1, i32 noundef %2) #20
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsg_show_inquiry_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsg_store_inquiry_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsg_bind(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.fsg_dev, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.fsg_common, ptr %4, i32 0, i32 17, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %73

11:                                               ; preds = %2
  %12 = getelementptr %struct.fsg_common, ptr %4, i32 0, i32 17, i32 14
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %73

15:                                               ; preds = %11
  %16 = getelementptr %struct.fsg_common, ptr %4, i32 0, i32 17, i32 13
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %73

19:                                               ; preds = %15
  %20 = getelementptr %struct.fsg_common, ptr %4, i32 0, i32 17, i32 12
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %73

23:                                               ; preds = %19
  %24 = getelementptr %struct.fsg_common, ptr %4, i32 0, i32 17, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %73

27:                                               ; preds = %23
  %28 = getelementptr %struct.fsg_common, ptr %4, i32 0, i32 17, i32 10
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %73

31:                                               ; preds = %27
  %32 = getelementptr %struct.fsg_common, ptr %4, i32 0, i32 17, i32 9
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %73

35:                                               ; preds = %31
  %36 = getelementptr %struct.fsg_common, ptr %4, i32 0, i32 17, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %73

39:                                               ; preds = %35
  %40 = getelementptr %struct.fsg_common, ptr %4, i32 0, i32 17, i32 7
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %73

43:                                               ; preds = %39
  %44 = getelementptr %struct.fsg_common, ptr %4, i32 0, i32 17, i32 6
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %73

47:                                               ; preds = %43
  %48 = getelementptr %struct.fsg_common, ptr %4, i32 0, i32 17, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = getelementptr %struct.fsg_common, ptr %4, i32 0, i32 17, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = getelementptr %struct.fsg_common, ptr %4, i32 0, i32 17, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = getelementptr %struct.fsg_common, ptr %4, i32 0, i32 17, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = getelementptr %struct.fsg_common, ptr %4, i32 0, i32 17, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = getelementptr %struct.fsg_common, ptr %4, i32 0, i32 17, i32 0
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #22
  br label %179

73:                                               ; preds = %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19, %15, %11, %2
  %74 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 24
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 196
  %77 = load i8, ptr %76, align 4, !range !10
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %120

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.fsg_common, ptr %4, i32 0, i32 29
  %81 = load i8, ptr %80, align 4
  store ptr %7, ptr %4, align 4
  %82 = load ptr, ptr %6, align 4
  %83 = getelementptr inbounds %struct.usb_gadget, ptr %82, i32 0, i32 3
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.fsg_common, ptr %4, i32 0, i32 7
  store ptr %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.usb_composite_dev, ptr %6, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.fsg_common, ptr %4, i32 0, i32 8
  store ptr %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.fsg_common, ptr %4, i32 0, i32 1
  store ptr %6, ptr %89, align 4
  %90 = tail call ptr @usb_gstrings_attach(ptr noundef %6, ptr noundef nonnull @fsg_strings_array, i32 noundef 2) #20
  %91 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %118, label %92

92:                                               ; preds = %79
  %93 = and i8 %81, 1
  %94 = icmp eq i8 %93, 0
  %95 = load i8, ptr %90, align 4
  store i8 %95, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @fsg_intf_desc, i32 0, i32 8), align 1
  br i1 %94, label %102, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %4, align 4
  %98 = getelementptr inbounds %struct.usb_gadget, ptr %97, i32 0, i32 17
  %99 = load i32, ptr %98, align 4
  %100 = and i32 %99, 1024
  %101 = icmp eq i32 %100, 0
  br label %102

102:                                              ; preds = %96, %92
  %103 = phi i1 [ false, %92 ], [ %101, %96 ]
  %104 = zext i1 %103 to i8
  %105 = load i8, ptr %80, align 4
  %106 = and i8 %105, -2
  %107 = or i8 %106, %104
  store i8 %107, ptr %80, align 4
  %108 = load ptr, ptr %3, align 4
  %109 = getelementptr inbounds %struct.fsg_common, ptr %108, i32 0, i32 17
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.fsg_lun, ptr %110, i32 0, i32 3
  %112 = load i8, ptr %111, align 8
  %113 = and i8 %112, 8
  %114 = icmp eq i8 %113, 0
  %115 = select i1 %114, ptr @.str.15, ptr @.str.14
  %116 = getelementptr inbounds %struct.fsg_common, ptr %108, i32 0, i32 33
  %117 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %116, i32 noundef 29, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull %115, i32 noundef 1303) #20
  br label %120

118:                                              ; preds = %79
  %119 = ptrtoint ptr %90 to i32
  br label %179

120:                                              ; preds = %102, %73
  %121 = getelementptr inbounds %struct.fsg_common, ptr %4, i32 0, i32 31
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.fsg_common, ptr %4, i32 0, i32 20
  store i32 0, ptr %125, align 4
  %126 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @fsg_main_thread, ptr noundef %4, i32 noundef -1, ptr noundef nonnull @.str.37) #20
  store ptr %126, ptr %121, align 4
  %127 = icmp ugt ptr %126, inttoptr (i32 -4096 to ptr)
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = ptrtoint ptr %126 to i32
  store ptr null, ptr %121, align 4
  store i32 5, ptr %125, align 4
  br label %179

130:                                              ; preds = %124
  %131 = tail call i32 @wake_up_process(ptr noundef %126) #20
  br label %132

132:                                              ; preds = %130, %120
  %133 = getelementptr inbounds %struct.fsg_dev, ptr %1, i32 0, i32 1
  store ptr %7, ptr %133, align 4
  %134 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #20
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %155, label %136

136:                                              ; preds = %132
  %137 = trunc i32 %134 to i8
  store i8 %137, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @fsg_intf_desc, i32 0, i32 2), align 1
  %138 = trunc i32 %134 to i16
  %139 = getelementptr inbounds %struct.fsg_dev, ptr %1, i32 0, i32 3
  store i16 %138, ptr %139, align 4
  %140 = tail call ptr @usb_ep_autoconfig(ptr noundef %7, ptr noundef nonnull @fsg_fs_bulk_in_desc) #20
  %141 = icmp eq ptr %140, null
  br i1 %141, label %152, label %142

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.fsg_dev, ptr %1, i32 0, i32 6
  store ptr %140, ptr %143, align 4
  %144 = tail call ptr @usb_ep_autoconfig(ptr noundef %7, ptr noundef nonnull @fsg_fs_bulk_out_desc) #20
  %145 = icmp eq ptr %144, null
  br i1 %145, label %152, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.fsg_dev, ptr %1, i32 0, i32 7
  store ptr %144, ptr %147, align 4
  %148 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fsg_fs_bulk_in_desc, i32 0, i32 2), align 1
  store i8 %148, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fsg_hs_bulk_in_desc, i32 0, i32 2), align 1
  %149 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fsg_fs_bulk_out_desc, i32 0, i32 2), align 1
  store i8 %149, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fsg_hs_bulk_out_desc, i32 0, i32 2), align 1
  store i8 %148, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fsg_ss_bulk_in_desc, i32 0, i32 2), align 1
  store i8 15, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @fsg_ss_bulk_in_comp_desc, i32 0, i32 2), align 1
  store i8 %149, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fsg_ss_bulk_out_desc, i32 0, i32 2), align 1
  store i8 15, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @fsg_ss_bulk_out_comp_desc, i32 0, i32 2), align 1
  %150 = tail call i32 @usb_assign_descriptors(ptr noundef %1, ptr noundef nonnull @fsg_fs_function, ptr noundef nonnull @fsg_hs_function, ptr noundef nonnull @fsg_ss_function, ptr noundef nonnull @fsg_ss_function) #20
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %179, label %152

152:                                              ; preds = %146, %142, %136
  %153 = load ptr, ptr %133, align 4
  %154 = getelementptr inbounds %struct.usb_gadget, ptr %153, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %154, ptr noundef nonnull @.str.38) #22
  br label %155

155:                                              ; preds = %152, %132
  %156 = phi i32 [ %134, %132 ], [ -524, %152 ]
  %157 = load ptr, ptr %3, align 4
  %158 = getelementptr inbounds %struct.fsg_common, ptr %157, i32 0, i32 20
  %159 = load i32, ptr %158, align 4
  %160 = icmp eq i32 %159, 5
  br i1 %160, label %179, label %161

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.fsg_common, ptr %157, i32 0, i32 6
  %163 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %162) #20
  %164 = load i32, ptr %158, align 4
  %165 = icmp ugt i32 %164, 4
  br i1 %165, label %176, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.fsg_common, ptr %157, i32 0, i32 9
  %168 = load i32, ptr %167, align 4
  %169 = getelementptr inbounds %struct.fsg_common, ptr %157, i32 0, i32 21
  store i32 %168, ptr %169, align 4
  store i32 4, ptr %158, align 4
  %170 = getelementptr inbounds %struct.fsg_common, ptr %157, i32 0, i32 22
  store ptr null, ptr %170, align 4
  %171 = getelementptr inbounds %struct.fsg_common, ptr %157, i32 0, i32 31
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %176, label %174

174:                                              ; preds = %166
  %175 = tail call i32 @send_sig_info(i32 noundef 10, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %172) #20
  br label %176

176:                                              ; preds = %174, %166, %161
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %162, i32 noundef %163) #20
  %177 = load ptr, ptr %3, align 4
  %178 = getelementptr inbounds %struct.fsg_common, ptr %177, i32 0, i32 30
  tail call void @wait_for_completion(ptr noundef %178) #20
  br label %179

179:                                              ; preds = %176, %155, %146, %128, %118, %71
  %180 = phi i32 [ -22, %71 ], [ %129, %128 ], [ %119, %118 ], [ 0, %146 ], [ %156, %176 ], [ %156, %155 ]
  ret i32 %180
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsg_unbind(ptr nocapture noundef readnone %0, ptr noundef %1) #1 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.fsg_dev, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fsg_common, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %9, label %38

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.fsg_common, ptr %5, i32 0, i32 6
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #20
  %12 = getelementptr inbounds %struct.fsg_common, ptr %5, i32 0, i32 20
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 3
  br i1 %14, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.fsg_common, ptr %5, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.fsg_common, ptr %5, i32 0, i32 21
  store i32 %17, ptr %18, align 4
  store i32 3, ptr %12, align 4
  %19 = getelementptr inbounds %struct.fsg_common, ptr %5, i32 0, i32 22
  store ptr null, ptr %19, align 4
  %20 = getelementptr inbounds %struct.fsg_common, ptr %5, i32 0, i32 31
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %15
  %24 = tail call i32 @send_sig_info(i32 noundef 10, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %21) #20
  br label %25

25:                                               ; preds = %23, %15, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #20
  %26 = load ptr, ptr %6, align 4
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #20
  %29 = getelementptr inbounds %struct.fsg_common, ptr %5, i32 0, i32 4
  %30 = call i32 @prepare_to_wait_event(ptr noundef %29, ptr noundef nonnull %3, i32 noundef 2) #20
  %31 = load ptr, ptr %6, align 4
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %33, label %37

33:                                               ; preds = %33, %28
  call void @schedule() #20
  %34 = call i32 @prepare_to_wait_event(ptr noundef %29, ptr noundef nonnull %3, i32 noundef 2) #20
  %35 = load ptr, ptr %6, align 4
  %36 = icmp eq ptr %35, %1
  br i1 %36, label %33, label %37

37:                                               ; preds = %33, %28
  call void @finish_wait(ptr noundef %29, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #20
  br label %38

38:                                               ; preds = %37, %25, %2
  call void @usb_free_all_descriptors(ptr noundef %1) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsg_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.fsg_dev, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fsg_common, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %8 = load i16, ptr %7, align 1
  %9 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %10 = load i16, ptr %9, align 1
  %11 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %12 = load i16, ptr %11, align 1
  %13 = getelementptr inbounds %struct.fsg_common, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.usb_gadget, ptr %17, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.fsg_setup, i32 noundef 464) #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 313, i32 noundef 9, ptr noundef null) #20
  br label %149

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.fsg_common, ptr %4, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.usb_request, ptr %6, i32 0, i32 8
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.usb_request, ptr %6, i32 0, i32 1
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %26 = load i8, ptr %25, align 1
  switch i8 %26, label %149 [
    i8 -1, label %27
    i8 -2, label %56
  ]

27:                                               ; preds = %19
  %28 = load i8, ptr %1, align 1
  %29 = icmp eq i8 %28, 33
  br i1 %29, label %30, label %149

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.fsg_dev, ptr %0, i32 0, i32 3
  %32 = load i16, ptr %31, align 4
  %33 = icmp ne i16 %8, %32
  %34 = icmp ne i16 %10, 0
  %35 = select i1 %33, i1 true, i1 %34
  %36 = icmp ne i16 %12, 0
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %149, label %38

38:                                               ; preds = %30
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr inbounds %struct.fsg_common, ptr %39, i32 0, i32 6
  %41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %40) #20
  %42 = getelementptr inbounds %struct.fsg_common, ptr %39, i32 0, i32 20
  %43 = load i32, ptr %42, align 4
  %44 = icmp ugt i32 %43, 2
  br i1 %44, label %55, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.fsg_common, ptr %39, i32 0, i32 9
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.fsg_common, ptr %39, i32 0, i32 21
  store i32 %47, ptr %48, align 4
  store i32 2, ptr %42, align 4
  %49 = getelementptr inbounds %struct.fsg_common, ptr %39, i32 0, i32 22
  store ptr null, ptr %49, align 4
  %50 = getelementptr inbounds %struct.fsg_common, ptr %39, i32 0, i32 31
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %45
  %54 = tail call i32 @send_sig_info(i32 noundef 10, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %51) #20
  br label %55

55:                                               ; preds = %53, %45, %38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %41) #20
  br label %149

56:                                               ; preds = %19
  %57 = load i8, ptr %1, align 1
  %58 = icmp eq i8 %57, -95
  br i1 %58, label %59, label %149

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.fsg_dev, ptr %0, i32 0, i32 3
  %61 = load i16, ptr %60, align 4
  %62 = icmp ne i16 %8, %61
  %63 = icmp ne i16 %10, 0
  %64 = select i1 %62, i1 true, i1 %63
  %65 = icmp ne i16 %12, 1
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %149, label %67

67:                                               ; preds = %59
  %68 = load ptr, ptr %3, align 4
  %69 = getelementptr %struct.fsg_common, ptr %68, i32 0, i32 17, i32 15
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %133

72:                                               ; preds = %67
  %73 = getelementptr %struct.fsg_common, ptr %68, i32 0, i32 17, i32 14
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %133

76:                                               ; preds = %72
  %77 = getelementptr %struct.fsg_common, ptr %68, i32 0, i32 17, i32 13
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %133

80:                                               ; preds = %76
  %81 = getelementptr %struct.fsg_common, ptr %68, i32 0, i32 17, i32 12
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %133

84:                                               ; preds = %80
  %85 = getelementptr %struct.fsg_common, ptr %68, i32 0, i32 17, i32 11
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %133

88:                                               ; preds = %84
  %89 = getelementptr %struct.fsg_common, ptr %68, i32 0, i32 17, i32 10
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %133

92:                                               ; preds = %88
  %93 = getelementptr %struct.fsg_common, ptr %68, i32 0, i32 17, i32 9
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %133

96:                                               ; preds = %92
  %97 = getelementptr %struct.fsg_common, ptr %68, i32 0, i32 17, i32 8
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %133

100:                                              ; preds = %96
  %101 = getelementptr %struct.fsg_common, ptr %68, i32 0, i32 17, i32 7
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %133

104:                                              ; preds = %100
  %105 = getelementptr %struct.fsg_common, ptr %68, i32 0, i32 17, i32 6
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %133

108:                                              ; preds = %104
  %109 = getelementptr %struct.fsg_common, ptr %68, i32 0, i32 17, i32 5
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %133

112:                                              ; preds = %108
  %113 = getelementptr %struct.fsg_common, ptr %68, i32 0, i32 17, i32 4
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %133

116:                                              ; preds = %112
  %117 = getelementptr %struct.fsg_common, ptr %68, i32 0, i32 17, i32 3
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %133

120:                                              ; preds = %116
  %121 = getelementptr %struct.fsg_common, ptr %68, i32 0, i32 17, i32 2
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = getelementptr %struct.fsg_common, ptr %68, i32 0, i32 17, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = getelementptr %struct.fsg_common, ptr %68, i32 0, i32 17, i32 0
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  %132 = sext i1 %131 to i8
  br label %133

133:                                              ; preds = %128, %124, %120, %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %67
  %134 = phi i8 [ 15, %67 ], [ 14, %72 ], [ 13, %76 ], [ 12, %80 ], [ 11, %84 ], [ 10, %88 ], [ 9, %92 ], [ 8, %96 ], [ 7, %100 ], [ 6, %104 ], [ 5, %108 ], [ 4, %112 ], [ 3, %116 ], [ 2, %120 ], [ 1, %124 ], [ %132, %128 ]
  %135 = load ptr, ptr %6, align 4
  store i8 %134, ptr %135, align 1
  store i32 1, ptr %24, align 4
  %136 = load ptr, ptr %3, align 4
  %137 = getelementptr inbounds %struct.fsg_common, ptr %136, i32 0, i32 7
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.fsg_common, ptr %136, i32 0, i32 8
  %140 = load ptr, ptr %139, align 4
  %141 = tail call i32 @usb_ep_queue(ptr noundef %138, ptr noundef %140, i32 noundef 2592) #20
  %142 = load ptr, ptr %137, align 4
  store ptr %136, ptr %142, align 4
  switch i32 %141, label %143 [
    i32 -108, label %149
    i32 0, label %149
  ]

143:                                              ; preds = %133
  %144 = load ptr, ptr %136, align 4
  %145 = getelementptr inbounds %struct.usb_gadget, ptr %144, i32 0, i32 11
  %146 = load ptr, ptr %137, align 4
  %147 = getelementptr inbounds %struct.usb_ep, ptr %146, i32 0, i32 1
  %148 = load ptr, ptr %147, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %145, ptr noundef nonnull @.str.41, ptr noundef %148, i32 noundef %141) #22
  br label %149

149:                                              ; preds = %143, %133, %133, %59, %56, %55, %30, %27, %19, %16
  %150 = phi i32 [ 32767, %55 ], [ -33, %30 ], [ -33, %59 ], [ -95, %56 ], [ -95, %27 ], [ -95, %19 ], [ -95, %16 ], [ %141, %133 ], [ %141, %133 ], [ %141, %143 ]
  ret i32 %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsg_set_alt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.fsg_dev, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fsg_common, ptr %5, i32 0, i32 6
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #20
  %8 = getelementptr inbounds %struct.fsg_common, ptr %5, i32 0, i32 20
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 3
  br i1 %10, label %21, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.fsg_common, ptr %5, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.fsg_common, ptr %5, i32 0, i32 21
  store i32 %13, ptr %14, align 4
  store i32 3, ptr %8, align 4
  %15 = getelementptr inbounds %struct.fsg_common, ptr %5, i32 0, i32 22
  store ptr %0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.fsg_common, ptr %5, i32 0, i32 31
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %11
  %20 = tail call i32 @send_sig_info(i32 noundef 10, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %17) #20
  br label %21

21:                                               ; preds = %19, %11, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #20
  ret i32 32767
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsg_disable(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.fsg_dev, ptr %0, i32 0, i32 4
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.fsg_dev, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @usb_ep_disable(ptr noundef %8) #20
  %10 = load i8, ptr %2, align 2
  %11 = and i8 %10, -2
  store i8 %11, ptr %2, align 2
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i8 [ %11, %6 ], [ %3, %1 ]
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.fsg_dev, ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @usb_ep_disable(ptr noundef %18) #20
  %20 = load i8, ptr %2, align 2
  %21 = and i8 %20, -3
  store i8 %21, ptr %2, align 2
  br label %22

22:                                               ; preds = %16, %12
  %23 = getelementptr inbounds %struct.fsg_dev, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.fsg_common, ptr %24, i32 0, i32 6
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #20
  %27 = getelementptr inbounds %struct.fsg_common, ptr %24, i32 0, i32 20
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, 3
  br i1 %29, label %40, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.fsg_common, ptr %24, i32 0, i32 9
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.fsg_common, ptr %24, i32 0, i32 21
  store i32 %32, ptr %33, align 4
  store i32 3, ptr %27, align 4
  %34 = getelementptr inbounds %struct.fsg_common, ptr %24, i32 0, i32 22
  store ptr null, ptr %34, align 4
  %35 = getelementptr inbounds %struct.fsg_common, ptr %24, i32 0, i32 31
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %30
  %39 = tail call i32 @send_sig_info(i32 noundef 10, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %36) #20
  br label %40

40:                                               ; preds = %38, %30, %22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsg_free(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 200
  tail call void @mutex_lock(ptr noundef %4) #20
  %5 = getelementptr i8, ptr %3, i32 220
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %4) #20
  tail call void @kfree(ptr noundef %0) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsg_main_thread(ptr noundef %0) #17 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = alloca %struct.kernel_siginfo, align 4
  %7 = alloca i32, align 4
  tail call void @kernel_sigaction(i32 noundef 2, ptr noundef nonnull inttoptr (i32 2 to ptr)) #20
  tail call void @kernel_sigaction(i32 noundef 15, ptr noundef nonnull inttoptr (i32 2 to ptr)) #20
  tail call void @kernel_sigaction(i32 noundef 9, ptr noundef nonnull inttoptr (i32 2 to ptr)) #20
  tail call void @kernel_sigaction(i32 noundef 10, ptr noundef nonnull inttoptr (i32 2 to ptr)) #20
  %8 = tail call zeroext i1 @set_freezable() #20
  %9 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 20
  %10 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 29
  %11 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 10
  %12 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 19
  %13 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 2
  %14 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 11
  %15 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 3
  %16 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 5
  %17 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 15
  %18 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 15, i32 10
  %19 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 25
  %20 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 18
  %21 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 15, i32 6
  %22 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 15, i32 7
  %23 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 15, i32 4
  %24 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 15, i32 2
  %25 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 15, i32 1
  %26 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 15, i32 14
  %27 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 15, i32 8
  %28 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 33
  %29 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 14
  %30 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 23
  %31 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 27
  %32 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 24
  %33 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 6
  %34 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 9
  %35 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 21
  %36 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 22
  %37 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 31
  %38 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 28
  %39 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 13
  %40 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 12
  %41 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 1
  %42 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 7
  %43 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 8
  br label %44

44:                                               ; preds = %1276, %1
  %45 = load i32, ptr %9, align 4
  switch i32 %45, label %46 [
    i32 5, label %1281
    i32 0, label %48
  ]

46:                                               ; preds = %44
  %47 = tail call ptr @llvm.thread.pointer() #20
  br label %57

48:                                               ; preds = %44
  %49 = tail call ptr @llvm.thread.pointer() #20
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 256
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57, !prof !12

53:                                               ; preds = %48
  %54 = load volatile i32, ptr %49, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %215, label %57

57:                                               ; preds = %53, %48, %46
  %58 = phi ptr [ %47, %46 ], [ %49, %48 ], [ %49, %53 ]
  %59 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 94
  %60 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 95
  br label %61

61:                                               ; preds = %70, %57
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false) #20, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  store i32 0, ptr %7, align 4, !annotation !9
  %62 = load ptr, ptr %59, align 4
  call void @_raw_spin_lock_irq(ptr noundef %62) #20
  %63 = call i32 @dequeue_signal(ptr noundef %58, ptr noundef %60, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %64 = load ptr, ptr %59, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  %65 = load i16, ptr %64, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %64, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #20, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #20
  switch i32 %63, label %67 [
    i32 0, label %71
    i32 10, label %70
  ]

67:                                               ; preds = %61
  call void @_raw_spin_lock_irq(ptr noundef %33) #20
  store i32 4, ptr %9, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  %68 = load i16, ptr %33, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %33, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #20, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !17
  br label %70

70:                                               ; preds = %67, %61
  br label %61

71:                                               ; preds = %61
  %72 = load ptr, ptr %13, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %144, label %74, !prof !8

74:                                               ; preds = %71
  %75 = load i32, ptr %39, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %124, label %77

77:                                               ; preds = %118, %74
  %78 = phi i32 [ %119, %118 ], [ 0, %74 ]
  %79 = load ptr, ptr %40, align 4
  %80 = getelementptr %struct.fsg_buffhd, ptr %79, i32 %78
  %81 = getelementptr %struct.fsg_buffhd, ptr %79, i32 %78, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, -2
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = load ptr, ptr %13, align 4
  %86 = getelementptr inbounds %struct.fsg_dev, ptr %85, i32 0, i32 6
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr %struct.fsg_buffhd, ptr %79, i32 %78, i32 4
  %89 = load ptr, ptr %88, align 4
  %90 = call i32 @usb_ep_dequeue(ptr noundef %87, ptr noundef %89) #20
  %91 = load i32, ptr %81, align 4
  br label %92

92:                                               ; preds = %84, %77
  %93 = phi i32 [ %91, %84 ], [ %82, %77 ]
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load ptr, ptr %13, align 4
  %97 = getelementptr inbounds %struct.fsg_dev, ptr %96, i32 0, i32 7
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr %struct.fsg_buffhd, ptr %79, i32 %78, i32 5
  %100 = load ptr, ptr %99, align 4
  %101 = call i32 @usb_ep_dequeue(ptr noundef %98, ptr noundef %100) #20
  br label %102

102:                                              ; preds = %95, %92
  %103 = icmp eq ptr %80, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %102
  %105 = load volatile i32, ptr %81, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !18
  %106 = icmp sgt i32 %105, -1
  br i1 %106, label %118, label %107

107:                                              ; preds = %104, %102
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #20, !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #20
  br label %108

108:                                              ; preds = %115, %107
  %109 = call i32 @prepare_to_wait_event(ptr noundef %15, ptr noundef nonnull %5, i32 noundef 1) #20
  br i1 %103, label %113, label %110

110:                                              ; preds = %108
  %111 = load volatile i32, ptr %81, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !19
  %112 = icmp sgt i32 %111, -1
  br i1 %112, label %116, label %113

113:                                              ; preds = %110, %108
  %114 = icmp eq i32 %109, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %113
  call void @schedule() #20
  br label %108

116:                                              ; preds = %110
  call void @finish_wait(ptr noundef %15, ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #20
  br label %118

117:                                              ; preds = %113
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #20
  br label %1276

118:                                              ; preds = %116, %104
  %119 = add nuw i32 %78, 1
  %120 = load i32, ptr %39, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %77, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %13, align 4
  br label %124

124:                                              ; preds = %122, %74
  %125 = phi ptr [ %123, %122 ], [ %72, %74 ]
  %126 = getelementptr inbounds %struct.fsg_dev, ptr %125, i32 0, i32 4
  %127 = load i8, ptr %126, align 2
  %128 = and i8 %127, 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.fsg_dev, ptr %125, i32 0, i32 6
  %132 = load ptr, ptr %131, align 4
  call void @usb_ep_fifo_flush(ptr noundef %132) #20
  %133 = load ptr, ptr %13, align 4
  %134 = getelementptr inbounds %struct.fsg_dev, ptr %133, i32 0, i32 4
  %135 = load i8, ptr %134, align 2
  br label %136

136:                                              ; preds = %130, %124
  %137 = phi i8 [ %135, %130 ], [ %127, %124 ]
  %138 = phi ptr [ %133, %130 ], [ %125, %124 ]
  %139 = and i8 %137, 2
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.fsg_dev, ptr %138, i32 0, i32 7
  %143 = load ptr, ptr %142, align 4
  call void @usb_ep_fifo_flush(ptr noundef %143) #20
  br label %144

144:                                              ; preds = %141, %136, %71
  call void @_raw_spin_lock_irq(ptr noundef %33) #20
  %145 = load i32, ptr %39, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %154, label %147

147:                                              ; preds = %147, %144
  %148 = phi i32 [ %151, %147 ], [ 0, %144 ]
  %149 = load ptr, ptr %40, align 4
  %150 = getelementptr %struct.fsg_buffhd, ptr %149, i32 %148, i32 1
  store i32 0, ptr %150, align 4
  %151 = add nuw i32 %148, 1
  %152 = load i32, ptr %39, align 4
  %153 = icmp ult i32 %151, %152
  br i1 %153, label %147, label %154

154:                                              ; preds = %147, %144
  %155 = load ptr, ptr %40, align 4
  store ptr %155, ptr %11, align 4
  store ptr %155, ptr %14, align 4
  %156 = load i32, ptr %35, align 4
  %157 = load ptr, ptr %36, align 4
  %158 = load i32, ptr %9, align 4
  store i32 0, ptr %9, align 4
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %175, label %160

160:                                              ; preds = %172, %154
  %161 = phi i32 [ %173, %172 ], [ 0, %154 ]
  %162 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 17, i32 %161
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %172, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.fsg_lun, ptr %163, i32 0, i32 3
  %167 = load i8, ptr %166, align 8
  %168 = getelementptr inbounds %struct.fsg_lun, ptr %163, i32 0, i32 4
  store i32 0, ptr %168, align 4
  %169 = getelementptr inbounds %struct.fsg_lun, ptr %163, i32 0, i32 6
  store i32 0, ptr %169, align 4
  %170 = getelementptr inbounds %struct.fsg_lun, ptr %163, i32 0, i32 5
  store i32 0, ptr %170, align 8
  %171 = and i8 %167, -81
  store i8 %171, ptr %166, align 8
  br label %172

172:                                              ; preds = %165, %160
  %173 = add nuw nsw i32 %161, 1
  %174 = icmp eq i32 %173, 16
  br i1 %174, label %175, label %160

175:                                              ; preds = %172, %154
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  %176 = load i16, ptr %33, align 4
  %177 = add i16 %176, 1
  store i16 %177, ptr %33, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #20, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !17
  switch i32 %158, label %1276 [
    i32 4, label %212
    i32 1, label %178
    i32 2, label %179
    i32 3, label %208
  ]

178:                                              ; preds = %175
  call fastcc void @send_status(ptr noundef %0) #20
  br label %1276

179:                                              ; preds = %175
  %180 = load ptr, ptr %13, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load ptr, ptr %0, align 4
  %184 = getelementptr inbounds %struct.usb_gadget, ptr %183, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %184, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.handle_exception, i32 noundef 2455) #22
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 313, i32 noundef 9, ptr noundef null) #20
  br label %1276

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.fsg_dev, ptr %180, i32 0, i32 5
  %187 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %186) #20
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %185
  %190 = load ptr, ptr %13, align 4
  %191 = getelementptr inbounds %struct.fsg_dev, ptr %190, i32 0, i32 6
  %192 = load ptr, ptr %191, align 4
  %193 = call i32 @usb_ep_clear_halt(ptr noundef %192) #20
  br label %194

194:                                              ; preds = %189, %185
  %195 = load i32, ptr %34, align 4
  %196 = icmp eq i32 %195, %156
  br i1 %196, label %197, label %1276

197:                                              ; preds = %194
  %198 = load ptr, ptr %42, align 4
  %199 = load ptr, ptr %43, align 4
  %200 = call i32 @usb_ep_queue(ptr noundef %198, ptr noundef %199, i32 noundef 2592) #20
  %201 = load ptr, ptr %42, align 4
  store ptr %0, ptr %201, align 4
  switch i32 %200, label %202 [
    i32 -108, label %1276
    i32 0, label %1276
  ]

202:                                              ; preds = %197
  %203 = load ptr, ptr %0, align 4
  %204 = getelementptr inbounds %struct.usb_gadget, ptr %203, i32 0, i32 11
  %205 = load ptr, ptr %42, align 4
  %206 = getelementptr inbounds %struct.usb_ep, ptr %205, i32 0, i32 1
  %207 = load ptr, ptr %206, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %204, ptr noundef nonnull @.str.41, ptr noundef %207, i32 noundef %200) #22
  br label %1276

208:                                              ; preds = %175
  call fastcc void @do_set_interface(ptr noundef %0, ptr noundef %157) #20
  %209 = icmp eq ptr %157, null
  br i1 %209, label %1276, label %210

210:                                              ; preds = %208
  %211 = load ptr, ptr %41, align 4
  call void @usb_composite_setup_continue(ptr noundef %211) #20
  br label %1276

212:                                              ; preds = %175
  call fastcc void @do_set_interface(ptr noundef %0, ptr noundef null) #20
  call void @_raw_spin_lock_irq(ptr noundef %33) #20
  store i32 5, ptr %9, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  %213 = load i16, ptr %33, align 4
  %214 = add i16 %213, 1
  store i16 %214, ptr %33, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #20, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !17
  br label %1276

215:                                              ; preds = %53
  %216 = load i8, ptr %10, align 4
  %217 = and i8 %216, 32
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = call fastcc i32 @sleep_thread(ptr noundef %0, i1 noundef zeroext true, ptr noundef null)
  br label %1276

221:                                              ; preds = %215
  %222 = load ptr, ptr %11, align 4
  %223 = call fastcc i32 @sleep_thread(ptr noundef %0, i1 noundef zeroext true, ptr noundef %222) #20
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %1276

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.fsg_buffhd, ptr %222, i32 0, i32 3
  store i32 31, ptr %226, align 4
  %227 = load i32, ptr %12, align 4
  %228 = urem i32 31, %227
  %229 = icmp eq i32 %228, 0
  %230 = add i32 %227, 31
  %231 = sub i32 %230, %228
  %232 = select i1 %229, i32 31, i32 %231
  %233 = getelementptr inbounds %struct.fsg_buffhd, ptr %222, i32 0, i32 5
  %234 = load ptr, ptr %233, align 4
  %235 = getelementptr inbounds %struct.usb_request, ptr %234, i32 0, i32 1
  store i32 %232, ptr %235, align 4
  %236 = call fastcc zeroext i1 @start_out_transfer(ptr noundef %0, ptr noundef %222) #20
  br i1 %236, label %237, label %1276

237:                                              ; preds = %225
  %238 = call fastcc i32 @sleep_thread(ptr noundef %0, i1 noundef zeroext true, ptr noundef %222) #20
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %1276

240:                                              ; preds = %237
  %241 = load ptr, ptr %13, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load ptr, ptr %0, align 4
  %245 = getelementptr inbounds %struct.usb_gadget, ptr %244, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %245, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.get_next_command, i32 noundef 2217) #22
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 313, i32 noundef 9, ptr noundef null) #20
  br label %335

246:                                              ; preds = %240
  %247 = load ptr, ptr %233, align 4
  %248 = load ptr, ptr %247, align 4
  %249 = getelementptr inbounds %struct.fsg_dev, ptr %241, i32 0, i32 2
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr inbounds %struct.usb_request, ptr %247, i32 0, i32 11
  %252 = load i32, ptr %251, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %335

254:                                              ; preds = %246
  %255 = getelementptr inbounds %struct.fsg_dev, ptr %241, i32 0, i32 5
  %256 = load volatile i32, ptr %255, align 4
  %257 = and i32 %256, 1
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %335

259:                                              ; preds = %254
  %260 = getelementptr inbounds %struct.usb_request, ptr %247, i32 0, i32 12
  %261 = load i32, ptr %260, align 4
  %262 = icmp eq i32 %261, 31
  br i1 %262, label %263, label %266

263:                                              ; preds = %259
  %264 = load i32, ptr %248, align 4
  %265 = icmp eq i32 %264, 1128420181
  br i1 %265, label %279, label %266

266:                                              ; preds = %263, %259
  %267 = getelementptr inbounds %struct.fsg_dev, ptr %241, i32 0, i32 6
  br label %268

268:                                              ; preds = %275, %266
  %269 = load ptr, ptr %267, align 4
  %270 = call i32 @usb_ep_set_wedge(ptr noundef %269) #20
  switch i32 %270, label %271 [
    i32 0, label %278
    i32 -11, label %275
  ]

271:                                              ; preds = %268
  %272 = getelementptr inbounds %struct.fsg_dev, ptr %241, i32 0, i32 1
  %273 = load ptr, ptr %272, align 4
  %274 = getelementptr inbounds %struct.usb_gadget, ptr %273, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %274, ptr noundef nonnull @.str.43, i32 noundef %270) #22
  br label %278

275:                                              ; preds = %268
  %276 = call i32 @msleep_interruptible(i32 noundef 100) #20
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %268, label %278

278:                                              ; preds = %275, %271, %268
  call void @_set_bit(i32 noundef 0, ptr noundef %255) #20
  br label %335

279:                                              ; preds = %263
  %280 = getelementptr inbounds %struct.bulk_cb_wrap, ptr %248, i32 0, i32 4
  %281 = load i8, ptr %280, align 1
  %282 = icmp ugt i8 %281, 15
  br i1 %282, label %293, label %283

283:                                              ; preds = %279
  %284 = getelementptr inbounds %struct.bulk_cb_wrap, ptr %248, i32 0, i32 3
  %285 = load i8, ptr %284, align 4
  %286 = and i8 %285, 127
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct.bulk_cb_wrap, ptr %248, i32 0, i32 5
  %290 = load i8, ptr %289, align 2
  %291 = add i8 %290, -17
  %292 = icmp ult i8 %291, -16
  br i1 %292, label %293, label %313

293:                                              ; preds = %288, %283, %279
  %294 = getelementptr inbounds %struct.fsg_common, ptr %250, i32 0, i32 29
  %295 = load i8, ptr %294, align 4
  %296 = and i8 %295, 1
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %335, label %298

298:                                              ; preds = %293
  %299 = getelementptr inbounds %struct.fsg_dev, ptr %241, i32 0, i32 7
  %300 = load ptr, ptr %299, align 4
  %301 = call i32 @usb_ep_set_halt(ptr noundef %300) #20
  %302 = getelementptr inbounds %struct.fsg_dev, ptr %241, i32 0, i32 6
  br label %303

303:                                              ; preds = %310, %298
  %304 = load ptr, ptr %302, align 4
  %305 = call i32 @usb_ep_set_halt(ptr noundef %304) #20
  switch i32 %305, label %306 [
    i32 0, label %335
    i32 -11, label %310
  ]

306:                                              ; preds = %303
  %307 = getelementptr inbounds %struct.fsg_dev, ptr %241, i32 0, i32 1
  %308 = load ptr, ptr %307, align 4
  %309 = getelementptr inbounds %struct.usb_gadget, ptr %308, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %309, ptr noundef nonnull @.str.46, i32 noundef %305) #22
  br label %335

310:                                              ; preds = %303
  %311 = call i32 @msleep_interruptible(i32 noundef 100) #20
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %303, label %335

313:                                              ; preds = %288
  %314 = zext i8 %290 to i32
  %315 = getelementptr inbounds %struct.fsg_common, ptr %250, i32 0, i32 14
  store i32 %314, ptr %315, align 4
  %316 = getelementptr inbounds %struct.fsg_common, ptr %250, i32 0, i32 15
  %317 = getelementptr inbounds %struct.bulk_cb_wrap, ptr %248, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %316, ptr align 1 %317, i32 %314, i1 false) #20
  %318 = load i8, ptr %284, align 4
  %319 = icmp sgt i8 %318, -1
  %320 = select i1 %319, i32 1, i32 2
  %321 = getelementptr inbounds %struct.fsg_common, ptr %250, i32 0, i32 23
  store i32 %320, ptr %321, align 4
  %322 = getelementptr inbounds %struct.bulk_cb_wrap, ptr %248, i32 0, i32 2
  %323 = load i32, ptr %322, align 4
  %324 = getelementptr inbounds %struct.fsg_common, ptr %250, i32 0, i32 24
  store i32 %323, ptr %324, align 4
  %325 = icmp eq i32 %323, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %313
  store i32 3, ptr %321, align 4
  br label %327

327:                                              ; preds = %326, %313
  %328 = load i8, ptr %280, align 1
  %329 = zext i8 %328 to i32
  %330 = getelementptr inbounds %struct.fsg_common, ptr %250, i32 0, i32 16
  store i32 %329, ptr %330, align 4
  %331 = icmp ult i8 %328, 16
  br i1 %331, label %332, label %337

332:                                              ; preds = %327
  %333 = getelementptr %struct.fsg_common, ptr %250, i32 0, i32 17, i32 %329
  %334 = load ptr, ptr %333, align 4
  br label %337

335:                                              ; preds = %310, %306, %303, %293, %278, %254, %246, %243
  %336 = getelementptr inbounds %struct.fsg_buffhd, ptr %222, i32 0, i32 1
  store i32 0, ptr %336, align 4
  br label %1276

337:                                              ; preds = %332, %327
  %338 = phi ptr [ %334, %332 ], [ null, %327 ]
  %339 = getelementptr inbounds %struct.fsg_common, ptr %250, i32 0, i32 18
  store ptr %338, ptr %339, align 4
  %340 = getelementptr inbounds %struct.bulk_cb_wrap, ptr %248, i32 0, i32 1
  %341 = load i32, ptr %340, align 4
  %342 = getelementptr inbounds %struct.fsg_common, ptr %250, i32 0, i32 26
  store i32 %341, ptr %342, align 4
  %343 = getelementptr inbounds %struct.fsg_buffhd, ptr %222, i32 0, i32 1
  store i32 0, ptr %343, align 4
  %344 = load i32, ptr %9, align 4
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %1276

346:                                              ; preds = %337
  %347 = load ptr, ptr %11, align 4
  store ptr %347, ptr %14, align 4
  %348 = icmp eq ptr %347, null
  br i1 %348, label %353, label %349

349:                                              ; preds = %346
  %350 = getelementptr inbounds %struct.fsg_buffhd, ptr %347, i32 0, i32 1
  %351 = load volatile i32, ptr %350, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !18
  %352 = icmp sgt i32 %351, -1
  br i1 %352, label %365, label %353

353:                                              ; preds = %349, %346
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #20, !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #20
  %354 = getelementptr inbounds %struct.fsg_buffhd, ptr %347, i32 0, i32 1
  br label %355

355:                                              ; preds = %362, %353
  %356 = call i32 @prepare_to_wait_event(ptr noundef %15, ptr noundef nonnull %4, i32 noundef 1) #20
  br i1 %348, label %360, label %357

357:                                              ; preds = %355
  %358 = load volatile i32, ptr %354, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !19
  %359 = icmp sgt i32 %358, -1
  br i1 %359, label %363, label %360

360:                                              ; preds = %357, %355
  %361 = icmp eq i32 %356, 0
  br i1 %361, label %362, label %364

362:                                              ; preds = %360
  call void @schedule() #20
  br label %355

363:                                              ; preds = %357
  call void @finish_wait(ptr noundef %15, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #20
  br label %365

364:                                              ; preds = %360
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #20
  br label %1276

365:                                              ; preds = %363, %349
  %366 = load i8, ptr %10, align 4
  %367 = and i8 %366, -13
  store i8 %367, ptr %10, align 4
  call void @down_read(ptr noundef %16) #20
  %368 = load i8, ptr %17, align 4
  switch i8 %368, label %1067 [
    i8 18, label %369
    i8 21, label %405
    i8 85, label %415
    i8 26, label %426
    i8 90, label %489
    i8 30, label %553
    i8 8, label %588
    i8 40, label %604
    i8 -88, label %619
    i8 -120, label %633
    i8 37, label %647
    i8 68, label %674
    i8 67, label %709
    i8 35, label %749
    i8 3, label %770
    i8 -98, label %809
    i8 27, label %840
    i8 53, label %880
    i8 0, label %889
    i8 47, label %891
    i8 10, label %1008
    i8 42, label %1024
    i8 -86, label %1039
    i8 -118, label %1053
  ]

369:                                              ; preds = %365
  %370 = load i8, ptr %23, align 4
  %371 = zext i8 %370 to i32
  store i32 %371, ptr %19, align 4
  %372 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 16, i32 noundef 0) #20
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %1076

374:                                              ; preds = %369
  %375 = load ptr, ptr %20, align 4
  %376 = load ptr, ptr %347, align 4
  %377 = icmp eq ptr %375, null
  br i1 %377, label %378, label %383

378:                                              ; preds = %374
  %379 = load i8, ptr %10, align 4
  %380 = or i8 %379, 16
  store i8 %380, ptr %10, align 4
  %381 = getelementptr inbounds i8, ptr %376, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(36) %381, i8 0, i32 35, i1 false) #20
  store i8 127, ptr %376, align 1
  %382 = getelementptr i8, ptr %376, i32 4
  store i8 31, ptr %382, align 1
  br label %1079

383:                                              ; preds = %374
  %384 = getelementptr inbounds %struct.fsg_lun, ptr %375, i32 0, i32 3
  %385 = load i8, ptr %384, align 8
  %386 = and i8 %385, 8
  %387 = icmp eq i8 %386, 0
  %388 = select i1 %387, i8 0, i8 5
  store i8 %388, ptr %376, align 1
  %389 = load i8, ptr %384, align 8
  %390 = shl i8 %389, 5
  %391 = and i8 %390, -128
  %392 = getelementptr i8, ptr %376, i32 1
  store i8 %391, ptr %392, align 1
  %393 = getelementptr i8, ptr %376, i32 2
  store i8 2, ptr %393, align 1
  %394 = getelementptr i8, ptr %376, i32 3
  store i8 2, ptr %394, align 1
  %395 = getelementptr i8, ptr %376, i32 4
  store i8 31, ptr %395, align 1
  %396 = getelementptr i8, ptr %376, i32 5
  store i8 0, ptr %396, align 1
  %397 = getelementptr i8, ptr %376, i32 6
  store i8 0, ptr %397, align 1
  %398 = getelementptr i8, ptr %376, i32 7
  store i8 0, ptr %398, align 1
  %399 = getelementptr inbounds %struct.fsg_lun, ptr %375, i32 0, i32 12
  %400 = load i8, ptr %399, align 8
  %401 = icmp eq i8 %400, 0
  %402 = getelementptr i8, ptr %376, i32 8
  br i1 %401, label %404, label %403

403:                                              ; preds = %383
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(29) %402, ptr noundef align 8 dereferenceable(29) %399, i32 29, i1 false) #20
  br label %1079

404:                                              ; preds = %383
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(29) %402, ptr noundef align 4 dereferenceable(29) %28, i32 29, i1 false) #20
  br label %1079

405:                                              ; preds = %365
  %406 = load i8, ptr %23, align 4
  %407 = zext i8 %406 to i32
  store i32 %407, ptr %19, align 4
  %408 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef 18, i32 noundef 0) #20
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %1076

410:                                              ; preds = %405
  %411 = load ptr, ptr %20, align 4
  %412 = icmp eq ptr %411, null
  br i1 %412, label %1079, label %413

413:                                              ; preds = %410
  %414 = getelementptr inbounds %struct.fsg_lun, ptr %411, i32 0, i32 4
  store i32 335872, ptr %414, align 4
  br label %1079

415:                                              ; preds = %365
  %416 = load i16, ptr %22, align 1
  %417 = call i16 @llvm.bswap.i16(i16 %416) #20
  %418 = zext i16 %417 to i32
  store i32 %418, ptr %19, align 4
  %419 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 10, i32 noundef 1, i32 noundef 386, i32 noundef 0) #20
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %1076

421:                                              ; preds = %415
  %422 = load ptr, ptr %20, align 4
  %423 = icmp eq ptr %422, null
  br i1 %423, label %1079, label %424

424:                                              ; preds = %421
  %425 = getelementptr inbounds %struct.fsg_lun, ptr %422, i32 0, i32 4
  store i32 335872, ptr %425, align 4
  br label %1079

426:                                              ; preds = %365
  %427 = load i8, ptr %23, align 4
  %428 = zext i8 %427 to i32
  store i32 %428, ptr %19, align 4
  %429 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 22, i32 noundef 0) #20
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %1076

431:                                              ; preds = %426
  %432 = load ptr, ptr %20, align 4
  %433 = load i8, ptr %17, align 4
  %434 = load ptr, ptr %347, align 4
  %435 = load i8, ptr %25, align 1
  %436 = and i8 %435, -9
  %437 = icmp eq i8 %436, 0
  br i1 %437, label %440, label %438

438:                                              ; preds = %431
  %439 = getelementptr inbounds %struct.fsg_lun, ptr %432, i32 0, i32 4
  store i32 336896, ptr %439, align 4
  br label %1079

440:                                              ; preds = %431
  %441 = load i8, ptr %24, align 2
  %442 = zext i8 %441 to i32
  %443 = lshr i32 %442, 6
  %444 = icmp eq i32 %443, 3
  br i1 %444, label %445, label %447

445:                                              ; preds = %440
  %446 = getelementptr inbounds %struct.fsg_lun, ptr %432, i32 0, i32 4
  store i32 342272, ptr %446, align 4
  br label %1079

447:                                              ; preds = %440
  %448 = and i32 %442, 63
  %449 = icmp ne i32 %448, 63
  store i64 0, ptr %434, align 1
  %450 = icmp eq i8 %433, 26
  %451 = getelementptr inbounds %struct.fsg_lun, ptr %432, i32 0, i32 3
  %452 = load i8, ptr %451, align 8
  %453 = shl i8 %452, 6
  %454 = and i8 %453, -128
  %455 = select i1 %450, i32 2, i32 3
  %456 = select i1 %450, i32 4, i32 8
  %457 = select i1 %450, i32 255, i32 65535
  %458 = getelementptr i8, ptr %434, i32 %455
  store i8 %454, ptr %458, align 1
  %459 = getelementptr i8, ptr %434, i32 %456
  %460 = icmp ne i32 %448, 8
  switch i32 %448, label %471 [
    i32 63, label %461
    i32 8, label %461
  ]

461:                                              ; preds = %447, %447
  %462 = icmp eq i32 %443, 1
  store i8 8, ptr %459, align 1
  %463 = getelementptr i8, ptr %459, i32 1
  store i8 10, ptr %463, align 1
  %464 = getelementptr i8, ptr %459, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(10) %464, i8 0, i32 10, i1 false) #20
  br i1 %462, label %469, label %465

465:                                              ; preds = %461
  store i8 4, ptr %464, align 1
  %466 = getelementptr i8, ptr %459, i32 4
  store i16 -1, ptr %466, align 1
  %467 = getelementptr i8, ptr %459, i32 8
  store i16 -1, ptr %467, align 1
  %468 = getelementptr i8, ptr %459, i32 10
  store i16 -1, ptr %468, align 1
  br label %469

469:                                              ; preds = %465, %461
  %470 = getelementptr i8, ptr %459, i32 12
  br label %471

471:                                              ; preds = %469, %447
  %472 = phi ptr [ %470, %469 ], [ %459, %447 ]
  %473 = ptrtoint ptr %472 to i32
  %474 = ptrtoint ptr %434 to i32
  %475 = sub i32 %473, %474
  %476 = and i1 %449, %460
  %477 = icmp sgt i32 %475, %457
  %478 = select i1 %476, i1 true, i1 %477
  br i1 %478, label %479, label %481

479:                                              ; preds = %471
  %480 = getelementptr inbounds %struct.fsg_lun, ptr %432, i32 0, i32 4
  store i32 336896, ptr %480, align 4
  br label %1079

481:                                              ; preds = %471
  br i1 %450, label %482, label %485

482:                                              ; preds = %481
  %483 = trunc i32 %475 to i8
  %484 = add i8 %483, -1
  store i8 %484, ptr %434, align 1
  br label %1076

485:                                              ; preds = %481
  %486 = trunc i32 %475 to i16
  %487 = add i16 %486, -2
  %488 = call i16 @llvm.bswap.i16(i16 %487) #20
  store i16 %488, ptr %434, align 1
  br label %1076

489:                                              ; preds = %365
  %490 = load i16, ptr %22, align 1
  %491 = call i16 @llvm.bswap.i16(i16 %490) #20
  %492 = zext i16 %491 to i32
  store i32 %492, ptr %19, align 4
  %493 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 10, i32 noundef 2, i32 noundef 390, i32 noundef 0) #20
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %495, label %1076

495:                                              ; preds = %489
  %496 = load ptr, ptr %20, align 4
  %497 = load i8, ptr %17, align 4
  %498 = load ptr, ptr %347, align 4
  %499 = load i8, ptr %25, align 1
  %500 = and i8 %499, -9
  %501 = icmp eq i8 %500, 0
  br i1 %501, label %504, label %502

502:                                              ; preds = %495
  %503 = getelementptr inbounds %struct.fsg_lun, ptr %496, i32 0, i32 4
  store i32 336896, ptr %503, align 4
  br label %1079

504:                                              ; preds = %495
  %505 = load i8, ptr %24, align 2
  %506 = zext i8 %505 to i32
  %507 = lshr i32 %506, 6
  %508 = icmp eq i32 %507, 3
  br i1 %508, label %509, label %511

509:                                              ; preds = %504
  %510 = getelementptr inbounds %struct.fsg_lun, ptr %496, i32 0, i32 4
  store i32 342272, ptr %510, align 4
  br label %1079

511:                                              ; preds = %504
  %512 = and i32 %506, 63
  %513 = icmp ne i32 %512, 63
  store i64 0, ptr %498, align 1
  %514 = icmp eq i8 %497, 26
  %515 = getelementptr inbounds %struct.fsg_lun, ptr %496, i32 0, i32 3
  %516 = load i8, ptr %515, align 8
  %517 = shl i8 %516, 6
  %518 = and i8 %517, -128
  %519 = select i1 %514, i32 2, i32 3
  %520 = select i1 %514, i32 4, i32 8
  %521 = select i1 %514, i32 255, i32 65535
  %522 = getelementptr i8, ptr %498, i32 %519
  store i8 %518, ptr %522, align 1
  %523 = getelementptr i8, ptr %498, i32 %520
  %524 = icmp ne i32 %512, 8
  switch i32 %512, label %535 [
    i32 63, label %525
    i32 8, label %525
  ]

525:                                              ; preds = %511, %511
  %526 = icmp eq i32 %507, 1
  store i8 8, ptr %523, align 1
  %527 = getelementptr i8, ptr %523, i32 1
  store i8 10, ptr %527, align 1
  %528 = getelementptr i8, ptr %523, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(10) %528, i8 0, i32 10, i1 false) #20
  br i1 %526, label %533, label %529

529:                                              ; preds = %525
  store i8 4, ptr %528, align 1
  %530 = getelementptr i8, ptr %523, i32 4
  store i16 -1, ptr %530, align 1
  %531 = getelementptr i8, ptr %523, i32 8
  store i16 -1, ptr %531, align 1
  %532 = getelementptr i8, ptr %523, i32 10
  store i16 -1, ptr %532, align 1
  br label %533

533:                                              ; preds = %529, %525
  %534 = getelementptr i8, ptr %523, i32 12
  br label %535

535:                                              ; preds = %533, %511
  %536 = phi ptr [ %534, %533 ], [ %523, %511 ]
  %537 = ptrtoint ptr %536 to i32
  %538 = ptrtoint ptr %498 to i32
  %539 = sub i32 %537, %538
  %540 = and i1 %513, %524
  %541 = icmp sgt i32 %539, %521
  %542 = select i1 %540, i1 true, i1 %541
  br i1 %542, label %543, label %545

543:                                              ; preds = %535
  %544 = getelementptr inbounds %struct.fsg_lun, ptr %496, i32 0, i32 4
  store i32 336896, ptr %544, align 4
  br label %1079

545:                                              ; preds = %535
  br i1 %514, label %546, label %549

546:                                              ; preds = %545
  %547 = trunc i32 %539 to i8
  %548 = add i8 %547, -1
  store i8 %548, ptr %498, align 1
  br label %1076

549:                                              ; preds = %545
  %550 = trunc i32 %539 to i16
  %551 = add i16 %550, -2
  %552 = call i16 @llvm.bswap.i16(i16 %551) #20
  store i16 %552, ptr %498, align 1
  br label %1076

553:                                              ; preds = %365
  store i32 0, ptr %19, align 4
  %554 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 6, i32 noundef 3, i32 noundef 16, i32 noundef 0) #20
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %1076

556:                                              ; preds = %553
  %557 = load ptr, ptr %20, align 4
  %558 = icmp eq ptr %557, null
  br i1 %558, label %1079, label %559

559:                                              ; preds = %556
  %560 = getelementptr inbounds %struct.fsg_lun, ptr %557, i32 0, i32 3
  %561 = load i8, ptr %560, align 8
  %562 = and i8 %561, 4
  %563 = icmp eq i8 %562, 0
  br i1 %563, label %564, label %566

564:                                              ; preds = %559
  %565 = getelementptr inbounds %struct.fsg_lun, ptr %557, i32 0, i32 4
  store i32 335872, ptr %565, align 4
  br label %1079

566:                                              ; preds = %559
  %567 = load i8, ptr %23, align 4
  %568 = zext i8 %567 to i32
  %569 = and i32 %568, 254
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %573, label %571

571:                                              ; preds = %566
  %572 = getelementptr inbounds %struct.fsg_lun, ptr %557, i32 0, i32 4
  store i32 336896, ptr %572, align 4
  br label %1079

573:                                              ; preds = %566
  %574 = and i32 %568, 1
  %575 = and i8 %561, 16
  %576 = icmp eq i8 %575, 0
  %577 = icmp ne i32 %574, 0
  %578 = select i1 %576, i1 true, i1 %577
  br i1 %578, label %582, label %579

579:                                              ; preds = %573
  %580 = call i32 @fsg_lun_fsync_sub(ptr noundef nonnull %557) #20
  %581 = load i8, ptr %560, align 8
  br label %582

582:                                              ; preds = %579, %573
  %583 = phi i8 [ %581, %579 ], [ %561, %573 ]
  %584 = shl i8 %567, 4
  %585 = and i8 %584, 16
  %586 = and i8 %583, -17
  %587 = or i8 %586, %585
  store i8 %587, ptr %560, align 8
  br label %1079

588:                                              ; preds = %365
  %589 = load i8, ptr %23, align 4
  %590 = zext i8 %589 to i32
  %591 = icmp eq i8 %589, 0
  %592 = select i1 %591, i32 256, i32 %590
  store i32 %592, ptr %19, align 4
  %593 = load ptr, ptr %20, align 4
  %594 = icmp eq ptr %593, null
  br i1 %594, label %599, label %595

595:                                              ; preds = %588
  %596 = getelementptr inbounds %struct.fsg_lun, ptr %593, i32 0, i32 7
  %597 = load i32, ptr %596, align 8
  %598 = shl i32 %592, %597
  store i32 %598, ptr %19, align 4
  br label %599

599:                                              ; preds = %595, %588
  %600 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 30, i32 noundef 1) #20
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %602, label %1076

602:                                              ; preds = %599
  %603 = call fastcc i32 @do_read(ptr noundef %0) #20
  br label %1076

604:                                              ; preds = %365
  %605 = load i16, ptr %22, align 1
  %606 = call i16 @llvm.bswap.i16(i16 %605) #20
  %607 = zext i16 %606 to i32
  store i32 %607, ptr %19, align 4
  %608 = load ptr, ptr %20, align 4
  %609 = icmp eq ptr %608, null
  br i1 %609, label %614, label %610

610:                                              ; preds = %604
  %611 = getelementptr inbounds %struct.fsg_lun, ptr %608, i32 0, i32 7
  %612 = load i32, ptr %611, align 8
  %613 = shl i32 %607, %612
  store i32 %613, ptr %19, align 4
  br label %614

614:                                              ; preds = %610, %604
  %615 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 10, i32 noundef 2, i32 noundef 446, i32 noundef 1) #20
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %617, label %1076

617:                                              ; preds = %614
  %618 = call fastcc i32 @do_read(ptr noundef %0) #20
  br label %1076

619:                                              ; preds = %365
  %620 = load i32, ptr %21, align 1
  %621 = call i32 @llvm.bswap.i32(i32 %620) #20
  store i32 %621, ptr %19, align 4
  %622 = load ptr, ptr %20, align 4
  %623 = icmp eq ptr %622, null
  br i1 %623, label %628, label %624

624:                                              ; preds = %619
  %625 = getelementptr inbounds %struct.fsg_lun, ptr %622, i32 0, i32 7
  %626 = load i32, ptr %625, align 8
  %627 = shl i32 %621, %626
  store i32 %627, ptr %19, align 4
  br label %628

628:                                              ; preds = %624, %619
  %629 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 12, i32 noundef 2, i32 noundef 1022, i32 noundef 1) #20
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %631, label %1076

631:                                              ; preds = %628
  %632 = call fastcc i32 @do_read(ptr noundef %0) #20
  br label %1076

633:                                              ; preds = %365
  %634 = load i32, ptr %18, align 1
  %635 = call i32 @llvm.bswap.i32(i32 %634) #20
  store i32 %635, ptr %19, align 4
  %636 = load ptr, ptr %20, align 4
  %637 = icmp eq ptr %636, null
  br i1 %637, label %642, label %638

638:                                              ; preds = %633
  %639 = getelementptr inbounds %struct.fsg_lun, ptr %636, i32 0, i32 7
  %640 = load i32, ptr %639, align 8
  %641 = shl i32 %635, %640
  store i32 %641, ptr %19, align 4
  br label %642

642:                                              ; preds = %638, %633
  %643 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 16, i32 noundef 2, i32 noundef 16382, i32 noundef 1) #20
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %645, label %1076

645:                                              ; preds = %642
  %646 = call fastcc i32 @do_read(ptr noundef %0) #20
  br label %1076

647:                                              ; preds = %365
  store i32 8, ptr %19, align 4
  %648 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 10, i32 noundef 2, i32 noundef 316, i32 noundef 1) #20
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %650, label %1076

650:                                              ; preds = %647
  %651 = load ptr, ptr %20, align 4
  %652 = load i8, ptr %27, align 4
  %653 = load ptr, ptr %347, align 4
  %654 = icmp ugt i8 %652, 1
  br i1 %654, label %660, label %655

655:                                              ; preds = %650
  %656 = load i32, ptr %24, align 1
  %657 = icmp eq i8 %652, 0
  %658 = icmp ne i32 %656, 0
  %659 = select i1 %657, i1 %658, i1 false
  br i1 %659, label %660, label %662

660:                                              ; preds = %655, %650
  %661 = getelementptr inbounds %struct.fsg_lun, ptr %651, i32 0, i32 4
  store i32 336896, ptr %661, align 4
  br label %1079

662:                                              ; preds = %655
  %663 = getelementptr inbounds %struct.fsg_lun, ptr %651, i32 0, i32 2
  %664 = load i64, ptr %663, align 8
  %665 = icmp ult i64 %664, 4294967296
  %666 = trunc i64 %664 to i32
  %667 = add i32 %666, -1
  %668 = select i1 %665, i32 %667, i32 -1
  %669 = call i32 @llvm.bswap.i32(i32 %668) #20
  store i32 %669, ptr %653, align 1
  %670 = getelementptr inbounds %struct.fsg_lun, ptr %651, i32 0, i32 8
  %671 = load i32, ptr %670, align 4
  %672 = getelementptr i8, ptr %653, i32 4
  %673 = call i32 @llvm.bswap.i32(i32 %671) #20
  store i32 %673, ptr %672, align 1
  br label %1079

674:                                              ; preds = %365
  %675 = load ptr, ptr %20, align 4
  %676 = icmp eq ptr %675, null
  br i1 %676, label %1067, label %677

677:                                              ; preds = %674
  %678 = getelementptr inbounds %struct.fsg_lun, ptr %675, i32 0, i32 3
  %679 = load i8, ptr %678, align 8
  %680 = and i8 %679, 8
  %681 = icmp eq i8 %680, 0
  br i1 %681, label %1067, label %682

682:                                              ; preds = %677
  %683 = load i16, ptr %22, align 1
  %684 = call i16 @llvm.bswap.i16(i16 %683) #20
  %685 = zext i16 %684 to i32
  store i32 %685, ptr %19, align 4
  %686 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 10, i32 noundef 2, i32 noundef 446, i32 noundef 1) #20
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %688, label %1076

688:                                              ; preds = %682
  %689 = load ptr, ptr %20, align 4
  %690 = load i8, ptr %25, align 1
  %691 = and i8 %690, 2
  %692 = zext i8 %691 to i32
  %693 = load i32, ptr %24, align 1
  %694 = call i32 @llvm.bswap.i32(i32 %693) #20
  %695 = load ptr, ptr %347, align 4
  %696 = and i8 %690, -3
  %697 = icmp eq i8 %696, 0
  br i1 %697, label %700, label %698

698:                                              ; preds = %688
  %699 = getelementptr inbounds %struct.fsg_lun, ptr %689, i32 0, i32 4
  store i32 336896, ptr %699, align 4
  br label %1079

700:                                              ; preds = %688
  %701 = zext i32 %694 to i64
  %702 = getelementptr inbounds %struct.fsg_lun, ptr %689, i32 0, i32 2
  %703 = load i64, ptr %702, align 8
  %704 = icmp sgt i64 %703, %701
  br i1 %704, label %707, label %705

705:                                              ; preds = %700
  %706 = getelementptr inbounds %struct.fsg_lun, ptr %689, i32 0, i32 4
  store i32 336128, ptr %706, align 4
  br label %1079

707:                                              ; preds = %700
  store i64 1, ptr %695, align 1
  %708 = getelementptr i8, ptr %695, i32 4
  call void @store_cdrom_address(ptr noundef %708, i32 noundef %692, i32 noundef %694) #20
  br label %1079

709:                                              ; preds = %365
  %710 = load ptr, ptr %20, align 4
  %711 = icmp eq ptr %710, null
  br i1 %711, label %1067, label %712

712:                                              ; preds = %709
  %713 = getelementptr inbounds %struct.fsg_lun, ptr %710, i32 0, i32 3
  %714 = load i8, ptr %713, align 8
  %715 = and i8 %714, 8
  %716 = icmp eq i8 %715, 0
  br i1 %716, label %1067, label %717

717:                                              ; preds = %712
  %718 = load i16, ptr %22, align 1
  %719 = call i16 @llvm.bswap.i16(i16 %718) #20
  %720 = zext i16 %719 to i32
  store i32 %720, ptr %19, align 4
  %721 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 10, i32 noundef 2, i32 noundef 450, i32 noundef 1) #20
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %723, label %1076

723:                                              ; preds = %717
  %724 = load ptr, ptr %20, align 4
  %725 = load i8, ptr %25, align 1
  %726 = zext i8 %725 to i32
  %727 = load i8, ptr %21, align 2
  %728 = and i32 %726, 253
  %729 = icmp ne i32 %728, 0
  %730 = icmp ugt i8 %727, 1
  %731 = select i1 %729, i1 true, i1 %730
  br i1 %731, label %732, label %734

732:                                              ; preds = %723
  %733 = getelementptr inbounds %struct.fsg_lun, ptr %724, i32 0, i32 4
  store i32 336896, ptr %733, align 4
  br label %1079

734:                                              ; preds = %723
  %735 = load ptr, ptr %347, align 4
  %736 = and i32 %726, 2
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(20) %735, i8 0, i32 20, i1 false) #20
  %737 = getelementptr i8, ptr %735, i32 1
  store i8 18, ptr %737, align 1
  %738 = getelementptr i8, ptr %735, i32 2
  store i8 1, ptr %738, align 1
  %739 = getelementptr i8, ptr %735, i32 3
  store i8 1, ptr %739, align 1
  %740 = getelementptr i8, ptr %735, i32 5
  store i8 22, ptr %740, align 1
  %741 = getelementptr i8, ptr %735, i32 6
  store i8 1, ptr %741, align 1
  %742 = getelementptr i8, ptr %735, i32 8
  call void @store_cdrom_address(ptr noundef %742, i32 noundef %736, i32 noundef 0) #20
  %743 = getelementptr i8, ptr %735, i32 13
  store i8 22, ptr %743, align 1
  %744 = getelementptr i8, ptr %735, i32 14
  store i8 -86, ptr %744, align 1
  %745 = getelementptr i8, ptr %735, i32 16
  %746 = getelementptr inbounds %struct.fsg_lun, ptr %724, i32 0, i32 2
  %747 = load i64, ptr %746, align 8
  %748 = trunc i64 %747 to i32
  call void @store_cdrom_address(ptr noundef %745, i32 noundef %736, i32 noundef %748) #20
  br label %1079

749:                                              ; preds = %365
  %750 = load i16, ptr %22, align 1
  %751 = call i16 @llvm.bswap.i16(i16 %750) #20
  %752 = zext i16 %751 to i32
  store i32 %752, ptr %19, align 4
  %753 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 10, i32 noundef 2, i32 noundef 384, i32 noundef 1) #20
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %755, label %1076

755:                                              ; preds = %749
  %756 = load ptr, ptr %20, align 4
  %757 = load ptr, ptr %347, align 4
  %758 = getelementptr i8, ptr %757, i32 2
  store i8 0, ptr %758, align 1
  %759 = getelementptr i8, ptr %757, i32 1
  store i8 0, ptr %759, align 1
  store i8 0, ptr %757, align 1
  %760 = getelementptr i8, ptr %757, i32 3
  store i8 8, ptr %760, align 1
  %761 = getelementptr i8, ptr %757, i32 4
  %762 = getelementptr inbounds %struct.fsg_lun, ptr %756, i32 0, i32 2
  %763 = load i64, ptr %762, align 8
  %764 = trunc i64 %763 to i32
  %765 = call i32 @llvm.bswap.i32(i32 %764) #20
  store i32 %765, ptr %761, align 1
  %766 = getelementptr inbounds %struct.fsg_lun, ptr %756, i32 0, i32 8
  %767 = load i32, ptr %766, align 4
  %768 = getelementptr i8, ptr %757, i32 8
  %769 = call i32 @llvm.bswap.i32(i32 %767) #20
  store i32 %769, ptr %768, align 1
  store i8 2, ptr %768, align 1
  br label %1079

770:                                              ; preds = %365
  %771 = load i8, ptr %23, align 4
  %772 = zext i8 %771 to i32
  store i32 %772, ptr %19, align 4
  %773 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 16, i32 noundef 0) #20
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %775, label %1076

775:                                              ; preds = %770
  %776 = load ptr, ptr %20, align 4
  %777 = load ptr, ptr %347, align 4
  %778 = icmp eq ptr %776, null
  br i1 %778, label %779, label %782

779:                                              ; preds = %775
  %780 = load i8, ptr %10, align 4
  %781 = or i8 %780, 16
  store i8 %781, ptr %10, align 4
  br label %793

782:                                              ; preds = %775
  %783 = getelementptr inbounds %struct.fsg_lun, ptr %776, i32 0, i32 4
  %784 = load i32, ptr %783, align 4
  %785 = getelementptr inbounds %struct.fsg_lun, ptr %776, i32 0, i32 5
  %786 = load i32, ptr %785, align 8
  %787 = getelementptr inbounds %struct.fsg_lun, ptr %776, i32 0, i32 3
  %788 = load i8, ptr %787, align 8
  %789 = shl i8 %788, 1
  %790 = and i8 %789, -128
  store i32 0, ptr %783, align 4
  store i32 0, ptr %785, align 8
  %791 = and i8 %788, -65
  store i8 %791, ptr %787, align 8
  %792 = or i8 %790, 112
  br label %793

793:                                              ; preds = %782, %779
  %794 = phi i32 [ %784, %782 ], [ 337152, %779 ]
  %795 = phi i32 [ %786, %782 ], [ 0, %779 ]
  %796 = phi i8 [ %792, %782 ], [ 112, %779 ]
  %797 = getelementptr inbounds i8, ptr %777, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(18) %797, i8 0, i32 17, i1 false) #20
  store i8 %796, ptr %777, align 1
  %798 = lshr i32 %794, 16
  %799 = trunc i32 %798 to i8
  %800 = getelementptr i8, ptr %777, i32 2
  store i8 %799, ptr %800, align 1
  %801 = getelementptr i8, ptr %777, i32 3
  %802 = call i32 @llvm.bswap.i32(i32 %795) #20
  store i32 %802, ptr %801, align 1
  %803 = getelementptr i8, ptr %777, i32 7
  store i8 10, ptr %803, align 1
  %804 = lshr i32 %794, 8
  %805 = trunc i32 %804 to i8
  %806 = getelementptr i8, ptr %777, i32 12
  store i8 %805, ptr %806, align 1
  %807 = trunc i32 %794 to i8
  %808 = getelementptr i8, ptr %777, i32 13
  store i8 %807, ptr %808, align 1
  br label %1079

809:                                              ; preds = %365
  %810 = load i8, ptr %25, align 1
  %811 = and i8 %810, 31
  %812 = icmp eq i8 %811, 16
  br i1 %812, label %813, label %1067

813:                                              ; preds = %809
  %814 = load i32, ptr %18, align 1
  %815 = call i32 @llvm.bswap.i32(i32 %814) #20
  store i32 %815, ptr %19, align 4
  %816 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 16, i32 noundef 2, i32 noundef 32766, i32 noundef 1) #20
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %818, label %1076

818:                                              ; preds = %813
  %819 = load ptr, ptr %20, align 4
  %820 = load i8, ptr %26, align 2
  %821 = load ptr, ptr %347, align 4
  %822 = icmp ugt i8 %820, 1
  br i1 %822, label %828, label %823

823:                                              ; preds = %818
  %824 = load i64, ptr %24, align 1
  %825 = icmp eq i8 %820, 0
  %826 = icmp ne i64 %824, 0
  %827 = select i1 %825, i1 %826, i1 false
  br i1 %827, label %828, label %830

828:                                              ; preds = %823, %818
  %829 = getelementptr inbounds %struct.fsg_lun, ptr %819, i32 0, i32 4
  store i32 336896, ptr %829, align 4
  br label %1079

830:                                              ; preds = %823
  %831 = getelementptr inbounds %struct.fsg_lun, ptr %819, i32 0, i32 2
  %832 = load i64, ptr %831, align 8
  %833 = add i64 %832, -1
  %834 = call i64 @llvm.bswap.i64(i64 %833) #20
  store i64 %834, ptr %821, align 1
  %835 = getelementptr inbounds %struct.fsg_lun, ptr %819, i32 0, i32 8
  %836 = load i32, ptr %835, align 4
  %837 = getelementptr i8, ptr %821, i32 8
  %838 = call i32 @llvm.bswap.i32(i32 %836) #20
  store i32 %838, ptr %837, align 1
  %839 = getelementptr i8, ptr %821, i32 12
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(20) %839, i8 0, i32 20, i1 false) #20
  br label %1079

840:                                              ; preds = %365
  store i32 0, ptr %19, align 4
  %841 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 6, i32 noundef 3, i32 noundef 18, i32 noundef 0) #20
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %843, label %1076

843:                                              ; preds = %840
  %844 = load ptr, ptr %20, align 4
  %845 = icmp eq ptr %844, null
  br i1 %845, label %1079, label %846

846:                                              ; preds = %843
  %847 = getelementptr inbounds %struct.fsg_lun, ptr %844, i32 0, i32 3
  %848 = load i8, ptr %847, align 8
  %849 = and i8 %848, 4
  %850 = icmp eq i8 %849, 0
  br i1 %850, label %851, label %853

851:                                              ; preds = %846
  %852 = getelementptr inbounds %struct.fsg_lun, ptr %844, i32 0, i32 4
  store i32 335872, ptr %852, align 4
  br label %1079

853:                                              ; preds = %846
  %854 = load i8, ptr %25, align 1
  %855 = icmp ult i8 %854, 2
  br i1 %855, label %856, label %861

856:                                              ; preds = %853
  %857 = load i8, ptr %23, align 4
  %858 = zext i8 %857 to i32
  %859 = and i32 %858, 252
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %863, label %861

861:                                              ; preds = %856, %853
  %862 = getelementptr inbounds %struct.fsg_lun, ptr %844, i32 0, i32 4
  store i32 336896, ptr %862, align 4
  br label %1079

863:                                              ; preds = %856
  %864 = and i32 %858, 2
  %865 = and i32 %858, 1
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %872, label %867

867:                                              ; preds = %863
  %868 = load ptr, ptr %844, align 8
  %869 = icmp eq ptr %868, null
  br i1 %869, label %870, label %1079

870:                                              ; preds = %867
  %871 = getelementptr inbounds %struct.fsg_lun, ptr %844, i32 0, i32 4
  store i32 145920, ptr %871, align 4
  br label %1079

872:                                              ; preds = %863
  %873 = and i8 %848, 16
  %874 = icmp eq i8 %873, 0
  br i1 %874, label %877, label %875

875:                                              ; preds = %872
  %876 = getelementptr inbounds %struct.fsg_lun, ptr %844, i32 0, i32 4
  store i32 348930, ptr %876, align 4
  br label %1079

877:                                              ; preds = %872
  %878 = icmp eq i32 %864, 0
  br i1 %878, label %1079, label %879

879:                                              ; preds = %877
  call void @up_read(ptr noundef %16) #20
  call void @down_write(ptr noundef %16) #20
  call void @fsg_lun_close(ptr noundef nonnull %844) #20
  call void @up_write(ptr noundef %16) #20
  call void @down_read(ptr noundef %16) #20
  br label %1079

880:                                              ; preds = %365
  store i32 0, ptr %19, align 4
  %881 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 10, i32 noundef 3, i32 noundef 444, i32 noundef 1) #20
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %883, label %1076

883:                                              ; preds = %880
  %884 = load ptr, ptr %20, align 4
  %885 = call i32 @fsg_lun_fsync_sub(ptr noundef %884) #20
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %1079, label %887

887:                                              ; preds = %883
  %888 = getelementptr inbounds %struct.fsg_lun, ptr %884, i32 0, i32 4
  store i32 199682, ptr %888, align 4
  br label %1079

889:                                              ; preds = %365
  store i32 0, ptr %19, align 4
  %890 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 6, i32 noundef 3, i32 noundef 0, i32 noundef 1) #20
  br label %1076

891:                                              ; preds = %365
  store i32 0, ptr %19, align 4
  %892 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 10, i32 noundef 3, i32 noundef 446, i32 noundef 1) #20
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %894, label %1076

894:                                              ; preds = %891
  %895 = load ptr, ptr %20, align 4
  %896 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %897 = load i32, ptr %24, align 1
  %898 = call i32 @llvm.bswap.i32(i32 %897) #20
  %899 = zext i32 %898 to i64
  %900 = getelementptr inbounds %struct.fsg_lun, ptr %895, i32 0, i32 2
  %901 = load i64, ptr %900, align 8
  %902 = icmp sgt i64 %901, %899
  br i1 %902, label %905, label %903

903:                                              ; preds = %894
  %904 = getelementptr inbounds %struct.fsg_lun, ptr %895, i32 0, i32 4
  store i32 336128, ptr %904, align 4
  br label %1006

905:                                              ; preds = %894
  %906 = load i8, ptr %25, align 1
  %907 = and i8 %906, -17
  %908 = icmp eq i8 %907, 0
  br i1 %908, label %911, label %909

909:                                              ; preds = %905
  %910 = getelementptr inbounds %struct.fsg_lun, ptr %895, i32 0, i32 4
  store i32 336896, ptr %910, align 4
  br label %1006

911:                                              ; preds = %905
  %912 = load i16, ptr %22, align 1
  %913 = call i16 @llvm.bswap.i16(i16 %912) #20
  %914 = icmp eq i16 %912, 0
  br i1 %914, label %1006, label %915, !prof !8

915:                                              ; preds = %911
  %916 = getelementptr inbounds %struct.fsg_lun, ptr %895, i32 0, i32 7
  %917 = load i32, ptr %916, align 8
  %918 = call i32 @fsg_lun_fsync_sub(ptr noundef %895) #20
  %919 = load volatile i32, ptr %49, align 4
  %920 = and i32 %919, 256
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %922, label %1006, !prof !12

922:                                              ; preds = %915
  %923 = load volatile i32, ptr %49, align 4
  %924 = and i32 %923, 1
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %926, label %1006

926:                                              ; preds = %922
  %927 = load ptr, ptr %895, align 8
  %928 = getelementptr inbounds %struct.file, ptr %927, i32 0, i32 2
  %929 = load ptr, ptr %928, align 8
  %930 = getelementptr inbounds %struct.inode, ptr %929, i32 0, i32 9
  %931 = load ptr, ptr %930, align 8
  %932 = call i32 @invalidate_mapping_pages(ptr noundef %931, i32 noundef 0, i32 noundef -1) #20
  %933 = load volatile i32, ptr %49, align 4
  %934 = and i32 %933, 256
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %936, label %1006, !prof !12

936:                                              ; preds = %926
  %937 = zext i16 %913 to i32
  %938 = shl i32 %937, %917
  %939 = zext i32 %917 to i64
  %940 = shl i64 %899, %939
  %941 = load volatile i32, ptr %49, align 4
  %942 = and i32 %941, 1
  %943 = icmp eq i32 %942, 0
  br i1 %943, label %944, label %1006

944:                                              ; preds = %936
  %945 = icmp eq i32 %938, 0
  br i1 %945, label %1006, label %946

946:                                              ; preds = %944
  %947 = getelementptr inbounds %struct.fsg_lun, ptr %895, i32 0, i32 1
  %948 = getelementptr inbounds %struct.fsg_lun, ptr %895, i32 0, i32 8
  br label %949

949:                                              ; preds = %1001, %946
  %950 = phi i64 [ %940, %946 ], [ %1003, %1001 ]
  %951 = phi i32 [ %938, %946 ], [ %1004, %1001 ]
  %952 = call i32 @llvm.umin.i32(i32 %951, i32 16384) #20
  %953 = zext i32 %952 to i64
  %954 = load i64, ptr %947, align 8
  %955 = sub i64 %954, %950
  %956 = call i64 @llvm.smin.i64(i64 %955, i64 %953) #20
  %957 = trunc i64 %956 to i32
  %958 = icmp eq i32 %957, 0
  br i1 %958, label %959, label %969

959:                                              ; preds = %949
  %960 = getelementptr inbounds %struct.fsg_lun, ptr %895, i32 0, i32 4
  store i32 336128, ptr %960, align 4
  %961 = load i32, ptr %916, align 8
  %962 = zext i32 %961 to i64
  %963 = ashr i64 %950, %962
  %964 = trunc i64 %963 to i32
  %965 = getelementptr inbounds %struct.fsg_lun, ptr %895, i32 0, i32 5
  store i32 %964, ptr %965, align 8
  %966 = getelementptr inbounds %struct.fsg_lun, ptr %895, i32 0, i32 3
  %967 = load i8, ptr %966, align 8
  %968 = or i8 %967, 64
  store i8 %968, ptr %966, align 8
  br label %1006

969:                                              ; preds = %949
  store i64 %950, ptr %2, align 8
  %970 = load ptr, ptr %895, align 8
  %971 = load ptr, ptr %896, align 4
  %972 = call i32 @kernel_read(ptr noundef %970, ptr noundef %971, i32 noundef %957, ptr noundef nonnull %2) #20
  %973 = load volatile i32, ptr %49, align 4
  %974 = and i32 %973, 256
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %976, label %1006, !prof !12

976:                                              ; preds = %969
  %977 = load volatile i32, ptr %49, align 4
  %978 = and i32 %977, 1
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %980, label %1006

980:                                              ; preds = %976
  %981 = icmp slt i32 %972, 0
  br i1 %981, label %991, label %982

982:                                              ; preds = %980
  %983 = icmp ult i32 %972, %957
  br i1 %983, label %984, label %988

984:                                              ; preds = %982
  %985 = load i32, ptr %948, align 4
  %986 = sub i32 0, %985
  %987 = and i32 %972, %986
  br label %988

988:                                              ; preds = %984, %982
  %989 = phi i32 [ %987, %984 ], [ %972, %982 ]
  %990 = icmp eq i32 %989, 0
  br i1 %990, label %991, label %1001

991:                                              ; preds = %988, %980
  %992 = getelementptr inbounds %struct.fsg_lun, ptr %895, i32 0, i32 4
  store i32 200960, ptr %992, align 4
  %993 = load i32, ptr %916, align 8
  %994 = zext i32 %993 to i64
  %995 = ashr i64 %950, %994
  %996 = trunc i64 %995 to i32
  %997 = getelementptr inbounds %struct.fsg_lun, ptr %895, i32 0, i32 5
  store i32 %996, ptr %997, align 8
  %998 = getelementptr inbounds %struct.fsg_lun, ptr %895, i32 0, i32 3
  %999 = load i8, ptr %998, align 8
  %1000 = or i8 %999, 64
  store i8 %1000, ptr %998, align 8
  br label %1006

1001:                                             ; preds = %988
  %1002 = zext i32 %989 to i64
  %1003 = add i64 %950, %1002
  %1004 = sub i32 %951, %989
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1006, label %949

1006:                                             ; preds = %1001, %991, %976, %969, %959, %944, %936, %926, %922, %915, %911, %909, %903
  %1007 = phi i32 [ -22, %903 ], [ -22, %909 ], [ -5, %911 ], [ -4, %922 ], [ -4, %936 ], [ 0, %991 ], [ 0, %959 ], [ -4, %915 ], [ -4, %926 ], [ 0, %944 ], [ -4, %969 ], [ 0, %1001 ], [ -4, %976 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  br label %1076

1008:                                             ; preds = %365
  %1009 = load i8, ptr %23, align 4
  %1010 = zext i8 %1009 to i32
  %1011 = icmp eq i8 %1009, 0
  %1012 = select i1 %1011, i32 256, i32 %1010
  store i32 %1012, ptr %19, align 4
  %1013 = load ptr, ptr %20, align 4
  %1014 = icmp eq ptr %1013, null
  br i1 %1014, label %1019, label %1015

1015:                                             ; preds = %1008
  %1016 = getelementptr inbounds %struct.fsg_lun, ptr %1013, i32 0, i32 7
  %1017 = load i32, ptr %1016, align 8
  %1018 = shl i32 %1012, %1017
  store i32 %1018, ptr %19, align 4
  br label %1019

1019:                                             ; preds = %1015, %1008
  %1020 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef 30, i32 noundef 1) #20
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1022, label %1076

1022:                                             ; preds = %1019
  %1023 = call fastcc i32 @do_write(ptr noundef %0) #20
  br label %1076

1024:                                             ; preds = %365
  %1025 = load i16, ptr %22, align 1
  %1026 = call i16 @llvm.bswap.i16(i16 %1025) #20
  %1027 = zext i16 %1026 to i32
  store i32 %1027, ptr %19, align 4
  %1028 = load ptr, ptr %20, align 4
  %1029 = icmp eq ptr %1028, null
  br i1 %1029, label %1034, label %1030

1030:                                             ; preds = %1024
  %1031 = getelementptr inbounds %struct.fsg_lun, ptr %1028, i32 0, i32 7
  %1032 = load i32, ptr %1031, align 8
  %1033 = shl i32 %1027, %1032
  store i32 %1033, ptr %19, align 4
  br label %1034

1034:                                             ; preds = %1030, %1024
  %1035 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 10, i32 noundef 1, i32 noundef 446, i32 noundef 1) #20
  %1036 = icmp eq i32 %1035, 0
  br i1 %1036, label %1037, label %1076

1037:                                             ; preds = %1034
  %1038 = call fastcc i32 @do_write(ptr noundef %0) #20
  br label %1076

1039:                                             ; preds = %365
  %1040 = load i32, ptr %21, align 1
  %1041 = call i32 @llvm.bswap.i32(i32 %1040) #20
  store i32 %1041, ptr %19, align 4
  %1042 = load ptr, ptr %20, align 4
  %1043 = icmp eq ptr %1042, null
  br i1 %1043, label %1048, label %1044

1044:                                             ; preds = %1039
  %1045 = getelementptr inbounds %struct.fsg_lun, ptr %1042, i32 0, i32 7
  %1046 = load i32, ptr %1045, align 8
  %1047 = shl i32 %1041, %1046
  store i32 %1047, ptr %19, align 4
  br label %1048

1048:                                             ; preds = %1044, %1039
  %1049 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 12, i32 noundef 1, i32 noundef 1022, i32 noundef 1) #20
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1051, label %1076

1051:                                             ; preds = %1048
  %1052 = call fastcc i32 @do_write(ptr noundef %0) #20
  br label %1076

1053:                                             ; preds = %365
  %1054 = load i32, ptr %18, align 1
  %1055 = call i32 @llvm.bswap.i32(i32 %1054) #20
  store i32 %1055, ptr %19, align 4
  %1056 = load ptr, ptr %20, align 4
  %1057 = icmp eq ptr %1056, null
  br i1 %1057, label %1062, label %1058

1058:                                             ; preds = %1053
  %1059 = getelementptr inbounds %struct.fsg_lun, ptr %1056, i32 0, i32 7
  %1060 = load i32, ptr %1059, align 8
  %1061 = shl i32 %1055, %1060
  store i32 %1061, ptr %19, align 4
  br label %1062

1062:                                             ; preds = %1058, %1053
  %1063 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef 16, i32 noundef 1, i32 noundef 16382, i32 noundef 1) #20
  %1064 = icmp eq i32 %1063, 0
  br i1 %1064, label %1065, label %1076

1065:                                             ; preds = %1062
  %1066 = call fastcc i32 @do_write(ptr noundef %0) #20
  br label %1076

1067:                                             ; preds = %809, %712, %709, %677, %674, %365
  store i32 0, ptr %19, align 4
  %1068 = zext i8 %368 to i32
  %1069 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @do_scsi_command.unknown, ptr noundef nonnull @.str.71, i32 noundef %1068) #20
  %1070 = load i32, ptr %29, align 4
  %1071 = call fastcc i32 @check_command(ptr noundef %0, i32 noundef %1070, i32 noundef 0, i32 noundef -1, i32 noundef 0) #20
  %1072 = icmp eq i32 %1071, 0
  br i1 %1072, label %1073, label %1076

1073:                                             ; preds = %1067
  %1074 = load ptr, ptr %20, align 4
  %1075 = getelementptr inbounds %struct.fsg_lun, ptr %1074, i32 0, i32 4
  store i32 335872, ptr %1075, align 4
  br label %1079

1076:                                             ; preds = %1067, %1065, %1062, %1051, %1048, %1037, %1034, %1022, %1019, %1006, %891, %889, %880, %840, %813, %770, %749, %717, %682, %647, %645, %642, %631, %628, %617, %614, %602, %599, %553, %549, %546, %489, %485, %482, %426, %415, %405, %369
  %1077 = phi i32 [ %1071, %1067 ], [ %1066, %1065 ], [ %1063, %1062 ], [ %1052, %1051 ], [ %1049, %1048 ], [ %1038, %1037 ], [ %1035, %1034 ], [ %1023, %1022 ], [ %1020, %1019 ], [ %1007, %1006 ], [ %892, %891 ], [ %890, %889 ], [ %881, %880 ], [ %841, %840 ], [ %816, %813 ], [ %773, %770 ], [ %753, %749 ], [ %721, %717 ], [ %686, %682 ], [ %648, %647 ], [ %646, %645 ], [ %643, %642 ], [ %632, %631 ], [ %629, %628 ], [ %618, %617 ], [ %615, %614 ], [ %603, %602 ], [ %600, %599 ], [ %554, %553 ], [ %493, %489 ], [ %429, %426 ], [ %419, %415 ], [ %408, %405 ], [ %372, %369 ], [ %475, %485 ], [ %475, %482 ], [ %539, %549 ], [ %539, %546 ]
  call void @up_read(ptr noundef %16) #20
  %1078 = icmp eq i32 %1077, -4
  br i1 %1078, label %1276, label %1081

1079:                                             ; preds = %1073, %887, %883, %879, %877, %875, %870, %867, %861, %851, %843, %830, %828, %793, %755, %734, %732, %707, %705, %698, %662, %660, %582, %571, %564, %556, %543, %509, %502, %479, %445, %438, %424, %421, %413, %410, %404, %403, %378
  %1080 = phi i32 [ 0, %887 ], [ 0, %883 ], [ -22, %424 ], [ -22, %421 ], [ -22, %413 ], [ -22, %410 ], [ 12, %755 ], [ 18, %793 ], [ -22, %1073 ], [ 36, %378 ], [ 36, %403 ], [ 36, %404 ], [ 0, %877 ], [ 0, %867 ], [ -22, %843 ], [ -22, %851 ], [ 0, %879 ], [ -22, %875 ], [ -22, %870 ], [ -22, %861 ], [ 32, %830 ], [ -22, %828 ], [ 20, %734 ], [ -22, %732 ], [ 8, %707 ], [ -22, %705 ], [ -22, %698 ], [ 8, %662 ], [ -22, %660 ], [ -22, %556 ], [ -22, %564 ], [ 0, %582 ], [ -22, %571 ], [ -22, %543 ], [ -22, %509 ], [ -22, %502 ], [ -22, %479 ], [ -22, %445 ], [ -22, %438 ]
  call void @up_read(ptr noundef %16) #20
  br label %1081

1081:                                             ; preds = %1079, %1076
  %1082 = phi i32 [ %1077, %1076 ], [ %1080, %1079 ]
  %1083 = load volatile i32, ptr %49, align 4
  %1084 = and i32 %1083, 256
  %1085 = icmp eq i32 %1084, 0
  br i1 %1085, label %1086, label %1276, !prof !12

1086:                                             ; preds = %1081
  %1087 = load volatile i32, ptr %49, align 4
  %1088 = and i32 %1087, 1
  %1089 = icmp eq i32 %1088, 0
  br i1 %1089, label %1090, label %1276

1090:                                             ; preds = %1086
  %1091 = icmp eq i32 %1082, -22
  %1092 = select i1 %1091, i32 0, i32 %1082
  %1093 = icmp sgt i32 %1092, -1
  br i1 %1093, label %1094, label %1106

1094:                                             ; preds = %1090
  %1095 = load i32, ptr %30, align 4
  %1096 = icmp eq i32 %1095, 2
  br i1 %1096, label %1097, label %1106

1097:                                             ; preds = %1094
  %1098 = load i32, ptr %19, align 4
  %1099 = call i32 @llvm.umin.i32(i32 %1092, i32 %1098) #20
  %1100 = getelementptr inbounds %struct.fsg_buffhd, ptr %347, i32 0, i32 4
  %1101 = load ptr, ptr %1100, align 4
  %1102 = getelementptr inbounds %struct.usb_request, ptr %1101, i32 0, i32 1
  store i32 %1099, ptr %1102, align 4
  %1103 = getelementptr inbounds %struct.fsg_buffhd, ptr %347, i32 0, i32 1
  store i32 1, ptr %1103, align 4
  %1104 = load i32, ptr %31, align 4
  %1105 = sub i32 %1104, %1099
  store i32 %1105, ptr %31, align 4
  br label %1106

1106:                                             ; preds = %1097, %1094, %1090
  %1107 = load i32, ptr %9, align 4
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1109, label %1276

1109:                                             ; preds = %1106
  %1110 = load ptr, ptr %11, align 4
  %1111 = load i32, ptr %30, align 4
  switch i32 %1111, label %1280 [
    i32 1, label %1181
    i32 0, label %1112
    i32 2, label %1138
  ]

1112:                                             ; preds = %1109
  %1113 = load i8, ptr %10, align 4
  %1114 = and i8 %1113, 1
  %1115 = icmp eq i8 %1114, 0
  br i1 %1115, label %1277, label %1116

1116:                                             ; preds = %1112
  %1117 = load ptr, ptr %13, align 4
  %1118 = icmp eq ptr %1117, null
  br i1 %1118, label %1119, label %1122

1119:                                             ; preds = %1116
  %1120 = load ptr, ptr %0, align 4
  %1121 = getelementptr inbounds %struct.usb_gadget, ptr %1120, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1121, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.finish_reply, i32 noundef 1514) #22
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 313, i32 noundef 9, ptr noundef null) #20
  br label %1276

1122:                                             ; preds = %1116
  %1123 = getelementptr inbounds %struct.fsg_dev, ptr %1117, i32 0, i32 7
  %1124 = load ptr, ptr %1123, align 4
  %1125 = call i32 @usb_ep_set_halt(ptr noundef %1124) #20
  %1126 = load ptr, ptr %13, align 4
  %1127 = getelementptr inbounds %struct.fsg_dev, ptr %1126, i32 0, i32 6
  br label %1128

1128:                                             ; preds = %1135, %1122
  %1129 = load ptr, ptr %1127, align 4
  %1130 = call i32 @usb_ep_set_halt(ptr noundef %1129) #20
  switch i32 %1130, label %1131 [
    i32 0, label %1277
    i32 -11, label %1135
  ]

1131:                                             ; preds = %1128
  %1132 = getelementptr inbounds %struct.fsg_dev, ptr %1126, i32 0, i32 1
  %1133 = load ptr, ptr %1132, align 4
  %1134 = getelementptr inbounds %struct.usb_gadget, ptr %1133, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1134, ptr noundef nonnull @.str.46, i32 noundef %1130) #22
  br label %1277

1135:                                             ; preds = %1128
  %1136 = call i32 @msleep_interruptible(i32 noundef 100) #20
  %1137 = icmp eq i32 %1136, 0
  br i1 %1137, label %1128, label %1276

1138:                                             ; preds = %1109
  %1139 = load i32, ptr %32, align 4
  %1140 = icmp eq i32 %1139, 0
  br i1 %1140, label %1277, label %1141

1141:                                             ; preds = %1138
  %1142 = load ptr, ptr %13, align 4
  %1143 = icmp eq ptr %1142, null
  br i1 %1143, label %1144, label %1147

1144:                                             ; preds = %1141
  %1145 = load ptr, ptr %0, align 4
  %1146 = getelementptr inbounds %struct.usb_gadget, ptr %1145, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1146, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.finish_reply, i32 noundef 1529) #22
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 313, i32 noundef 9, ptr noundef null) #20
  br label %1276

1147:                                             ; preds = %1141
  %1148 = load i32, ptr %31, align 4
  %1149 = icmp eq i32 %1148, 0
  %1150 = getelementptr inbounds %struct.fsg_buffhd, ptr %1110, i32 0, i32 4
  %1151 = load ptr, ptr %1150, align 4
  %1152 = getelementptr inbounds %struct.usb_request, ptr %1151, i32 0, i32 6
  %1153 = load i32, ptr %1152, align 4
  br i1 %1149, label %1154, label %1160

1154:                                             ; preds = %1147
  %1155 = and i32 %1153, -262145
  store i32 %1155, ptr %1152, align 4
  %1156 = call fastcc zeroext i1 @start_in_transfer(ptr noundef %0, ptr noundef %1110) #20
  br i1 %1156, label %1157, label %1276

1157:                                             ; preds = %1154
  %1158 = getelementptr inbounds %struct.fsg_buffhd, ptr %1110, i32 0, i32 2
  %1159 = load ptr, ptr %1158, align 4
  store ptr %1159, ptr %11, align 4
  br label %1277

1160:                                             ; preds = %1147
  %1161 = or i32 %1153, 262144
  store i32 %1161, ptr %1152, align 4
  %1162 = call fastcc zeroext i1 @start_in_transfer(ptr noundef %0, ptr noundef %1110) #20
  %1163 = getelementptr inbounds %struct.fsg_buffhd, ptr %1110, i32 0, i32 2
  %1164 = load ptr, ptr %1163, align 4
  store ptr %1164, ptr %11, align 4
  %1165 = load i8, ptr %10, align 4
  %1166 = and i8 %1165, 1
  %1167 = icmp eq i8 %1166, 0
  br i1 %1167, label %1275, label %1168

1168:                                             ; preds = %1160
  %1169 = load ptr, ptr %13, align 4
  %1170 = getelementptr inbounds %struct.fsg_dev, ptr %1169, i32 0, i32 6
  br label %1171

1171:                                             ; preds = %1178, %1168
  %1172 = load ptr, ptr %1170, align 4
  %1173 = call i32 @usb_ep_set_halt(ptr noundef %1172) #20
  switch i32 %1173, label %1174 [
    i32 0, label %1277
    i32 -11, label %1178
  ]

1174:                                             ; preds = %1171
  %1175 = getelementptr inbounds %struct.fsg_dev, ptr %1169, i32 0, i32 1
  %1176 = load ptr, ptr %1175, align 4
  %1177 = getelementptr inbounds %struct.usb_gadget, ptr %1176, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1177, ptr noundef nonnull @.str.46, i32 noundef %1173) #22
  br label %1277

1178:                                             ; preds = %1171
  %1179 = call i32 @msleep_interruptible(i32 noundef 100) #20
  %1180 = icmp eq i32 %1179, 0
  br i1 %1180, label %1171, label %1276

1181:                                             ; preds = %1109
  %1182 = load i32, ptr %31, align 4
  %1183 = icmp eq i32 %1182, 0
  br i1 %1183, label %1277, label %1184

1184:                                             ; preds = %1181
  %1185 = load i8, ptr %10, align 4
  %1186 = and i8 %1185, 8
  %1187 = icmp eq i8 %1186, 0
  br i1 %1187, label %1199, label %1188

1188:                                             ; preds = %1184
  %1189 = call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #20
  %1190 = load i32, ptr %9, align 4
  %1191 = icmp ugt i32 %1190, 1
  br i1 %1191, label %1198, label %1192

1192:                                             ; preds = %1188
  %1193 = load i32, ptr %34, align 4
  store i32 %1193, ptr %35, align 4
  store i32 1, ptr %9, align 4
  store ptr null, ptr %36, align 4
  %1194 = load ptr, ptr %37, align 4
  %1195 = icmp eq ptr %1194, null
  br i1 %1195, label %1198, label %1196

1196:                                             ; preds = %1192
  %1197 = call i32 @send_sig_info(i32 noundef 10, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %1194) #20
  br label %1198

1198:                                             ; preds = %1196, %1192, %1188
  call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %1189) #20
  br label %1276

1199:                                             ; preds = %1263, %1184
  %1200 = load ptr, ptr %14, align 4
  %1201 = getelementptr inbounds %struct.fsg_buffhd, ptr %1200, i32 0, i32 1
  %1202 = load i32, ptr %1201, align 4
  %1203 = icmp eq i32 %1202, 0
  br i1 %1203, label %1204, label %1207

1204:                                             ; preds = %1199
  %1205 = load i32, ptr %38, align 4
  %1206 = icmp eq i32 %1205, 0
  br i1 %1206, label %1277, label %1207

1207:                                             ; preds = %1204, %1199
  %1208 = load ptr, ptr %11, align 4
  %1209 = getelementptr inbounds %struct.fsg_buffhd, ptr %1208, i32 0, i32 1
  %1210 = load i32, ptr %1209, align 4
  %1211 = icmp eq i32 %1210, 0
  br i1 %1211, label %1212, label %1233

1212:                                             ; preds = %1207
  %1213 = load i32, ptr %38, align 4
  %1214 = icmp eq i32 %1213, 0
  br i1 %1214, label %1233, label %1215

1215:                                             ; preds = %1212
  %1216 = call i32 @llvm.umin.i32(i32 %1213, i32 16384) #20
  %1217 = getelementptr inbounds %struct.fsg_buffhd, ptr %1208, i32 0, i32 3
  store i32 %1216, ptr %1217, align 4
  %1218 = load i32, ptr %12, align 4
  %1219 = urem i32 %1216, %1218
  %1220 = icmp eq i32 %1219, 0
  %1221 = sub i32 %1218, %1219
  %1222 = select i1 %1220, i32 0, i32 %1221
  %1223 = add i32 %1222, %1216
  %1224 = getelementptr inbounds %struct.fsg_buffhd, ptr %1208, i32 0, i32 5
  %1225 = load ptr, ptr %1224, align 4
  %1226 = getelementptr inbounds %struct.usb_request, ptr %1225, i32 0, i32 1
  store i32 %1223, ptr %1226, align 4
  %1227 = call fastcc zeroext i1 @start_out_transfer(ptr noundef %0, ptr noundef %1208) #20
  br i1 %1227, label %1228, label %1276

1228:                                             ; preds = %1215
  %1229 = getelementptr inbounds %struct.fsg_buffhd, ptr %1208, i32 0, i32 2
  %1230 = load ptr, ptr %1229, align 4
  store ptr %1230, ptr %11, align 4
  %1231 = load i32, ptr %38, align 4
  %1232 = sub i32 %1231, %1216
  store i32 %1232, ptr %38, align 4
  br label %1263

1233:                                             ; preds = %1212, %1207
  %1234 = icmp eq ptr %1200, null
  br i1 %1234, label %1238, label %1235

1235:                                             ; preds = %1233
  %1236 = load volatile i32, ptr %1201, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !18
  %1237 = icmp sgt i32 %1236, -1
  br i1 %1237, label %1249, label %1238

1238:                                             ; preds = %1235, %1233
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #20, !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #20
  br label %1239

1239:                                             ; preds = %1246, %1238
  %1240 = call i32 @prepare_to_wait_event(ptr noundef %15, ptr noundef nonnull %3, i32 noundef 1) #20
  br i1 %1234, label %1244, label %1241

1241:                                             ; preds = %1239
  %1242 = load volatile i32, ptr %1201, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !19
  %1243 = icmp sgt i32 %1242, -1
  br i1 %1243, label %1247, label %1244

1244:                                             ; preds = %1241, %1239
  %1245 = icmp eq i32 %1240, 0
  br i1 %1245, label %1246, label %1248

1246:                                             ; preds = %1244
  call void @schedule() #20
  br label %1239

1247:                                             ; preds = %1241
  call void @finish_wait(ptr noundef %15, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #20
  br label %1249

1248:                                             ; preds = %1244
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #20
  br label %1276

1249:                                             ; preds = %1247, %1235
  store i32 0, ptr %1201, align 4
  %1250 = getelementptr inbounds %struct.fsg_buffhd, ptr %1200, i32 0, i32 2
  %1251 = load ptr, ptr %1250, align 4
  store ptr %1251, ptr %14, align 4
  %1252 = getelementptr inbounds %struct.fsg_buffhd, ptr %1200, i32 0, i32 5
  %1253 = load ptr, ptr %1252, align 4
  %1254 = getelementptr inbounds %struct.usb_request, ptr %1253, i32 0, i32 12
  %1255 = load i32, ptr %1254, align 4
  %1256 = getelementptr inbounds %struct.fsg_buffhd, ptr %1200, i32 0, i32 3
  %1257 = load i32, ptr %1256, align 4
  %1258 = icmp ult i32 %1255, %1257
  br i1 %1258, label %1264, label %1259

1259:                                             ; preds = %1249
  %1260 = getelementptr inbounds %struct.usb_request, ptr %1253, i32 0, i32 11
  %1261 = load i32, ptr %1260, align 4
  %1262 = icmp eq i32 %1261, 0
  br i1 %1262, label %1263, label %1264

1263:                                             ; preds = %1259, %1228
  br label %1199

1264:                                             ; preds = %1259, %1249
  %1265 = call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #20
  %1266 = load i32, ptr %9, align 4
  %1267 = icmp ugt i32 %1266, 1
  br i1 %1267, label %1274, label %1268

1268:                                             ; preds = %1264
  %1269 = load i32, ptr %34, align 4
  store i32 %1269, ptr %35, align 4
  store i32 1, ptr %9, align 4
  store ptr null, ptr %36, align 4
  %1270 = load ptr, ptr %37, align 4
  %1271 = icmp eq ptr %1270, null
  br i1 %1271, label %1274, label %1272

1272:                                             ; preds = %1268
  %1273 = call i32 @send_sig_info(i32 noundef 10, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %1270) #20
  br label %1274

1274:                                             ; preds = %1272, %1268, %1264
  call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %1265) #20
  br label %1276

1275:                                             ; preds = %1160
  br i1 %1162, label %1277, label %1276

1276:                                             ; preds = %1280, %1277, %1275, %1274, %1248, %1215, %1198, %1178, %1154, %1144, %1135, %1119, %1106, %1086, %1081, %1076, %364, %337, %335, %237, %225, %221, %219, %212, %210, %208, %202, %197, %197, %194, %182, %178, %175, %117
  br label %44

1277:                                             ; preds = %1275, %1204, %1181, %1174, %1171, %1157, %1138, %1131, %1128, %1112
  %1278 = load i32, ptr %9, align 4
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %1280, label %1276

1280:                                             ; preds = %1277, %1109
  call fastcc void @send_status(ptr noundef %0)
  br label %1276

1281:                                             ; preds = %44
  call void @_raw_spin_lock_irq(ptr noundef %33) #20
  store ptr null, ptr %37, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  %1282 = load i16, ptr %33, align 4
  %1283 = add i16 %1282, 1
  store i16 %1283, ptr %33, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #20, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !17
  call void @down_write(ptr noundef %16) #20
  br label %1284

1284:                                             ; preds = %1293, %1281
  %1285 = phi i32 [ 0, %1281 ], [ %1294, %1293 ]
  %1286 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 17, i32 %1285
  %1287 = load ptr, ptr %1286, align 4
  %1288 = icmp eq ptr %1287, null
  br i1 %1288, label %1293, label %1289

1289:                                             ; preds = %1284
  %1290 = load ptr, ptr %1287, align 8
  %1291 = icmp eq ptr %1290, null
  br i1 %1291, label %1293, label %1292

1292:                                             ; preds = %1289
  call void @fsg_lun_close(ptr noundef nonnull %1287) #20
  br label %1293

1293:                                             ; preds = %1292, %1289, %1284
  %1294 = add nuw nsw i32 %1285, 1
  %1295 = icmp eq i32 %1294, 16
  br i1 %1295, label %1296, label %1284

1296:                                             ; preds = %1293
  call void @up_write(ptr noundef %16) #20
  %1297 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 30
  call void @kthread_complete_and_exit(ptr noundef %1297, i32 noundef 0) #24
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sleep_thread(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = icmp eq ptr %2, null
  br i1 %1, label %7, label %39

7:                                                ; preds = %3
  br i1 %6, label %12, label %8

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.fsg_buffhd, ptr %2, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !20
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %61, label %12

12:                                               ; preds = %8, %7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #20
  %13 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.fsg_buffhd, ptr %2, i32 0, i32 1
  br label %15

15:                                               ; preds = %35, %12
  %16 = call i32 @prepare_to_wait_event(ptr noundef %13, ptr noundef nonnull %4, i32 noundef 1) #20
  br i1 %6, label %20, label %17

17:                                               ; preds = %15
  %18 = load volatile i32, ptr %14, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !21
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %36, label %20

20:                                               ; preds = %17, %15
  %21 = icmp eq i32 %16, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %20
  %23 = tail call ptr @llvm.thread.pointer() #20
  %24 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, 1073741824
  store i32 %26, ptr %24, align 4
  call void @schedule() #20
  %27 = load i32, ptr %24, align 4
  %28 = and i32 %27, -1073741825
  store i32 %28, ptr %24, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !22
  %29 = load volatile i32, ptr @system_freezing_cnt, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !12

31:                                               ; preds = %22
  %32 = call zeroext i1 @freezing_slow_path(ptr noundef %23) #20
  br i1 %32, label %33, label %35, !prof !8

33:                                               ; preds = %31
  %34 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #20
  br label %35

35:                                               ; preds = %33, %31, %22
  br label %15

36:                                               ; preds = %17
  call void @finish_wait(ptr noundef %13, ptr noundef nonnull %4) #20
  br label %37

37:                                               ; preds = %36, %20
  %38 = phi i32 [ 0, %36 ], [ %16, %20 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #20
  br label %58

39:                                               ; preds = %3
  br i1 %6, label %44, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.fsg_buffhd, ptr %2, i32 0, i32 1
  %42 = load volatile i32, ptr %41, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !18
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %61, label %44

44:                                               ; preds = %40, %39
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #20
  %45 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 3
  %46 = getelementptr inbounds %struct.fsg_buffhd, ptr %2, i32 0, i32 1
  br label %47

47:                                               ; preds = %54, %44
  %48 = call i32 @prepare_to_wait_event(ptr noundef %45, ptr noundef nonnull %5, i32 noundef 1) #20
  br i1 %6, label %52, label %49

49:                                               ; preds = %47
  %50 = load volatile i32, ptr %46, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !19
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %55, label %52

52:                                               ; preds = %49, %47
  %53 = icmp eq i32 %48, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %52
  call void @schedule() #20
  br label %47

55:                                               ; preds = %49
  call void @finish_wait(ptr noundef %45, ptr noundef nonnull %5) #20
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i32 [ 0, %55 ], [ %48, %52 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #20
  br label %58

58:                                               ; preds = %56, %37
  %59 = phi i32 [ %38, %37 ], [ %57, %56 ]
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58, %40, %8
  br label %62

62:                                               ; preds = %61, %58
  %63 = phi i32 [ 0, %61 ], [ -4, %58 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @send_status(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 18
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.fsg_buffhd, ptr %6, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !18
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %25, label %12

12:                                               ; preds = %8, %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #20, !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #20
  %13 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.fsg_buffhd, ptr %6, i32 0, i32 1
  br label %15

15:                                               ; preds = %22, %12
  %16 = call i32 @prepare_to_wait_event(ptr noundef %13, ptr noundef nonnull %2, i32 noundef 1) #20
  br i1 %7, label %20, label %17

17:                                               ; preds = %15
  %18 = load volatile i32, ptr %14, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !19
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %15
  %21 = icmp eq i32 %16, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  call void @schedule() #20
  br label %15

23:                                               ; preds = %17
  call void @finish_wait(ptr noundef %13, ptr noundef nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #20
  br label %25

24:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #20
  br label %65

25:                                               ; preds = %23, %8
  %26 = icmp eq ptr %4, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.fsg_lun, ptr %4, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 29
  %31 = load i8, ptr %30, align 4
  br label %38

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 29
  %34 = load i8, ptr %33, align 4
  %35 = and i8 %34, 16
  %36 = icmp eq i8 %35, 0
  %37 = select i1 %36, i32 337152, i32 0
  br label %38

38:                                               ; preds = %32, %27
  %39 = phi i8 [ %31, %27 ], [ %34, %32 ]
  %40 = phi i32 [ %29, %27 ], [ %37, %32 ]
  %41 = and i8 %39, 4
  %42 = icmp eq i8 %41, 0
  %43 = icmp ne i32 %40, 0
  %44 = zext i1 %43 to i8
  %45 = select i1 %42, i8 %44, i8 2
  %46 = load ptr, ptr %6, align 4
  store i32 1396855637, ptr %46, align 4
  %47 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 26
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.bulk_cs_wrap, ptr %46, i32 0, i32 1
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 27
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.bulk_cs_wrap, ptr %46, i32 0, i32 2
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.bulk_cs_wrap, ptr %46, i32 0, i32 3
  store i8 %45, ptr %53, align 4
  %54 = getelementptr inbounds %struct.fsg_buffhd, ptr %6, i32 0, i32 4
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.usb_request, ptr %55, i32 0, i32 1
  store i32 13, ptr %56, align 4
  %57 = load ptr, ptr %54, align 4
  %58 = getelementptr inbounds %struct.usb_request, ptr %57, i32 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, -262145
  store i32 %60, ptr %58, align 4
  %61 = call fastcc zeroext i1 @start_in_transfer(ptr noundef %0, ptr noundef nonnull %6)
  br i1 %61, label %62, label %65

62:                                               ; preds = %38
  %63 = getelementptr inbounds %struct.fsg_buffhd, ptr %6, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  store ptr %64, ptr %5, align 4
  br label %65

65:                                               ; preds = %62, %38, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @kthread_complete_and_exit(ptr noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_sigaction(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #19

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_fifo_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_clear_halt(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @do_set_interface(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 29
  %4 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 13
  %6 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 12
  %7 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 4
  %8 = icmp eq ptr %1, null
  %9 = getelementptr inbounds %struct.fsg_dev, ptr %1, i32 0, i32 6
  %10 = getelementptr inbounds %struct.fsg_dev, ptr %1, i32 0, i32 4
  %11 = getelementptr inbounds %struct.fsg_dev, ptr %1, i32 0, i32 7
  %12 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 19
  %13 = getelementptr inbounds %struct.fsg_dev, ptr %1, i32 0, i32 5
  br label %14

14:                                               ; preds = %80, %2
  %15 = phi i32 [ 0, %2 ], [ %81, %80 ]
  %16 = load ptr, ptr %4, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %64, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.fsg_dev, ptr %16, i32 0, i32 6
  %23 = getelementptr inbounds %struct.fsg_dev, ptr %16, i32 0, i32 7
  br label %24

24:                                               ; preds = %38, %21
  %25 = phi i32 [ 0, %21 ], [ %39, %38 ]
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr %struct.fsg_buffhd, ptr %26, i32 %25, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %22, align 4
  tail call void @usb_ep_free_request(ptr noundef %31, ptr noundef nonnull %28) #20
  store ptr null, ptr %27, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = getelementptr %struct.fsg_buffhd, ptr %26, i32 %25, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %23, align 4
  tail call void @usb_ep_free_request(ptr noundef %37, ptr noundef nonnull %34) #20
  store ptr null, ptr %33, align 4
  br label %38

38:                                               ; preds = %36, %32
  %39 = add nuw i32 %25, 1
  %40 = load i32, ptr %5, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %24, label %42

42:                                               ; preds = %38, %18
  %43 = getelementptr inbounds %struct.fsg_dev, ptr %16, i32 0, i32 4
  %44 = load i8, ptr %43, align 2
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.fsg_dev, ptr %16, i32 0, i32 6
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 @usb_ep_disable(ptr noundef %49) #20
  %51 = load i8, ptr %43, align 2
  %52 = and i8 %51, -2
  store i8 %52, ptr %43, align 2
  br label %53

53:                                               ; preds = %47, %42
  %54 = phi i8 [ %52, %47 ], [ %44, %42 ]
  %55 = and i8 %54, 2
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.fsg_dev, ptr %16, i32 0, i32 7
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 @usb_ep_disable(ptr noundef %59) #20
  %61 = load i8, ptr %43, align 2
  %62 = and i8 %61, -3
  store i8 %62, ptr %43, align 2
  br label %63

63:                                               ; preds = %57, %53
  store ptr null, ptr %4, align 4
  tail call void @__wake_up(ptr noundef %7, i32 noundef 3, i32 noundef 1, ptr noundef null) #20
  br label %64

64:                                               ; preds = %63, %14
  %65 = load i8, ptr %3, align 4
  %66 = and i8 %65, -33
  store i8 %66, ptr %3, align 4
  %67 = icmp ne i32 %15, 0
  %68 = select i1 %8, i1 true, i1 %67
  br i1 %68, label %236, label %69

69:                                               ; preds = %64
  store ptr %1, ptr %4, align 4
  %70 = load ptr, ptr %0, align 4
  %71 = load ptr, ptr %9, align 4
  %72 = tail call i32 @config_ep_by_speed(ptr noundef %70, ptr noundef nonnull %1, ptr noundef %71) #20
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %82, label %80

74:                                               ; preds = %119, %111
  %75 = phi ptr [ %115, %111 ], [ %120, %119 ]
  %76 = load ptr, ptr %0, align 4
  %77 = getelementptr inbounds %struct.usb_gadget, ptr %76, i32 0, i32 11
  %78 = getelementptr inbounds %struct.usb_ep, ptr %75, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.42, ptr noundef %79) #22
  br label %80

80:                                               ; preds = %94, %86, %82, %74, %69
  %81 = phi i32 [ %72, %69 ], [ %84, %82 ], [ %92, %86 ], [ %96, %94 ], [ -12, %74 ]
  br label %14

82:                                               ; preds = %69
  %83 = load ptr, ptr %9, align 4
  %84 = tail call i32 @usb_ep_enable(ptr noundef %83) #20
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %80

86:                                               ; preds = %82
  %87 = load ptr, ptr %9, align 4
  store ptr %0, ptr %87, align 4
  %88 = load i8, ptr %10, align 2
  %89 = or i8 %88, 1
  store i8 %89, ptr %10, align 2
  %90 = load ptr, ptr %0, align 4
  %91 = load ptr, ptr %11, align 4
  %92 = tail call i32 @config_ep_by_speed(ptr noundef %90, ptr noundef nonnull %1, ptr noundef %91) #20
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %80

94:                                               ; preds = %86
  %95 = load ptr, ptr %11, align 4
  %96 = tail call i32 @usb_ep_enable(ptr noundef %95) #20
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %80

98:                                               ; preds = %94
  %99 = load ptr, ptr %11, align 4
  store ptr %0, ptr %99, align 4
  %100 = load i8, ptr %10, align 2
  %101 = or i8 %100, 2
  store i8 %101, ptr %10, align 2
  %102 = load ptr, ptr %11, align 4
  %103 = getelementptr inbounds %struct.usb_ep, ptr %102, i32 0, i32 9
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %104, i32 0, i32 4
  %106 = load i16, ptr %105, align 1
  %107 = and i16 %106, 2047
  %108 = zext i16 %107 to i32
  store i32 %108, ptr %12, align 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %13) #20
  %109 = load i32, ptr %5, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %138, label %111

111:                                              ; preds = %124, %98
  %112 = phi i32 [ %135, %124 ], [ 0, %98 ]
  %113 = load ptr, ptr %6, align 4
  %114 = getelementptr %struct.fsg_buffhd, ptr %113, i32 %112
  %115 = load ptr, ptr %9, align 4
  %116 = getelementptr %struct.fsg_buffhd, ptr %113, i32 %112, i32 4
  %117 = tail call ptr @usb_ep_alloc_request(ptr noundef %115, i32 noundef 2592) #20
  store ptr %117, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %74, label %119

119:                                              ; preds = %111
  %120 = load ptr, ptr %11, align 4
  %121 = getelementptr %struct.fsg_buffhd, ptr %113, i32 %112, i32 5
  %122 = tail call ptr @usb_ep_alloc_request(ptr noundef %120, i32 noundef 2592) #20
  store ptr %122, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %74, label %124

124:                                              ; preds = %119
  %125 = load ptr, ptr %114, align 4
  store ptr %125, ptr %122, align 4
  %126 = load ptr, ptr %116, align 4
  store ptr %125, ptr %126, align 4
  %127 = load ptr, ptr %121, align 4
  %128 = getelementptr inbounds %struct.usb_request, ptr %127, i32 0, i32 8
  store ptr %114, ptr %128, align 4
  %129 = load ptr, ptr %116, align 4
  %130 = getelementptr inbounds %struct.usb_request, ptr %129, i32 0, i32 8
  store ptr %114, ptr %130, align 4
  %131 = load ptr, ptr %116, align 4
  %132 = getelementptr inbounds %struct.usb_request, ptr %131, i32 0, i32 7
  store ptr @bulk_in_complete, ptr %132, align 4
  %133 = load ptr, ptr %121, align 4
  %134 = getelementptr inbounds %struct.usb_request, ptr %133, i32 0, i32 7
  store ptr @bulk_out_complete, ptr %134, align 4
  %135 = add nuw i32 %112, 1
  %136 = load i32, ptr %5, align 4
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %111, label %138

138:                                              ; preds = %124, %98
  %139 = load i8, ptr %3, align 4
  %140 = or i8 %139, 32
  store i8 %140, ptr %3, align 4
  %141 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 17, i32 0
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.fsg_lun, ptr %142, i32 0, i32 6
  store i32 403712, ptr %145, align 4
  br label %146

146:                                              ; preds = %144, %138
  %147 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 17, i32 1
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.fsg_lun, ptr %148, i32 0, i32 6
  store i32 403712, ptr %151, align 4
  br label %152

152:                                              ; preds = %150, %146
  %153 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 17, i32 2
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %158, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.fsg_lun, ptr %154, i32 0, i32 6
  store i32 403712, ptr %157, align 4
  br label %158

158:                                              ; preds = %156, %152
  %159 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 17, i32 3
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.fsg_lun, ptr %160, i32 0, i32 6
  store i32 403712, ptr %163, align 4
  br label %164

164:                                              ; preds = %162, %158
  %165 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 17, i32 4
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %170, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.fsg_lun, ptr %166, i32 0, i32 6
  store i32 403712, ptr %169, align 4
  br label %170

170:                                              ; preds = %168, %164
  %171 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 17, i32 5
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %176, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.fsg_lun, ptr %172, i32 0, i32 6
  store i32 403712, ptr %175, align 4
  br label %176

176:                                              ; preds = %174, %170
  %177 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 17, i32 6
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.fsg_lun, ptr %178, i32 0, i32 6
  store i32 403712, ptr %181, align 4
  br label %182

182:                                              ; preds = %180, %176
  %183 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 17, i32 7
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %188, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.fsg_lun, ptr %184, i32 0, i32 6
  store i32 403712, ptr %187, align 4
  br label %188

188:                                              ; preds = %186, %182
  %189 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 17, i32 8
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %194, label %192

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.fsg_lun, ptr %190, i32 0, i32 6
  store i32 403712, ptr %193, align 4
  br label %194

194:                                              ; preds = %192, %188
  %195 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 17, i32 9
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %200, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.fsg_lun, ptr %196, i32 0, i32 6
  store i32 403712, ptr %199, align 4
  br label %200

200:                                              ; preds = %198, %194
  %201 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 17, i32 10
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %206, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.fsg_lun, ptr %202, i32 0, i32 6
  store i32 403712, ptr %205, align 4
  br label %206

206:                                              ; preds = %204, %200
  %207 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 17, i32 11
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %212, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.fsg_lun, ptr %208, i32 0, i32 6
  store i32 403712, ptr %211, align 4
  br label %212

212:                                              ; preds = %210, %206
  %213 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 17, i32 12
  %214 = load ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %218, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.fsg_lun, ptr %214, i32 0, i32 6
  store i32 403712, ptr %217, align 4
  br label %218

218:                                              ; preds = %216, %212
  %219 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 17, i32 13
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %224, label %222

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.fsg_lun, ptr %220, i32 0, i32 6
  store i32 403712, ptr %223, align 4
  br label %224

224:                                              ; preds = %222, %218
  %225 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 17, i32 14
  %226 = load ptr, ptr %225, align 4
  %227 = icmp eq ptr %226, null
  br i1 %227, label %230, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.fsg_lun, ptr %226, i32 0, i32 6
  store i32 403712, ptr %229, align 4
  br label %230

230:                                              ; preds = %228, %224
  %231 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 17, i32 15
  %232 = load ptr, ptr %231, align 4
  %233 = icmp eq ptr %232, null
  br i1 %233, label %236, label %234

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.fsg_lun, ptr %232, i32 0, i32 6
  store i32 403712, ptr %235, align 4
  br label %236

236:                                              ; preds = %234, %230, %64
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_setup_continue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dequeue_signal(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bulk_in_complete(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, -104
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @usb_ep_fifo_flush(ptr noundef %0) #20
  br label %10

10:                                               ; preds = %9, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !23
  %11 = getelementptr inbounds %struct.fsg_buffhd, ptr %5, i32 0, i32 1
  store volatile i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.fsg_common, ptr %3, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %12, i32 noundef 3, i32 noundef 1, ptr noundef null) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bulk_out_complete(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, -104
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @usb_ep_fifo_flush(ptr noundef %0) #20
  br label %10

10:                                               ; preds = %9, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !24
  %11 = getelementptr inbounds %struct.fsg_buffhd, ptr %5, i32 0, i32 1
  store volatile i32 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.fsg_common, ptr %3, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %12, i32 noundef 3, i32 noundef 1, ptr noundef null) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @start_out_transfer(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.start_out_transfer, i32 noundef 556) #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 313, i32 noundef 9, ptr noundef null) #20
  br label %31

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.fsg_buffhd, ptr %1, i32 0, i32 1
  store i32 -1, ptr %10, align 4
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.fsg_dev, ptr %11, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.fsg_buffhd, ptr %1, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @usb_ep_queue(ptr noundef %13, ptr noundef %15, i32 noundef 3264) #20
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.usb_request, ptr %15, i32 0, i32 11
  store i32 %16, ptr %19, align 4
  switch i32 %16, label %24 [
    i32 -108, label %30
    i32 -95, label %20
  ]

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.usb_request, ptr %15, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20, %18
  %25 = getelementptr inbounds %struct.fsg_dev, ptr %11, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.usb_gadget, ptr %26, i32 0, i32 11
  %28 = getelementptr inbounds %struct.usb_ep, ptr %13, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.41, ptr noundef %29, i32 noundef %16) #22
  br label %30

30:                                               ; preds = %24, %20, %18
  store i32 1, ptr %10, align 4
  br label %31

31:                                               ; preds = %30, %9, %6
  %32 = xor i1 %5, true
  ret i1 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_wedge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @check_command(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #8 {
  %6 = alloca [20 x i8], align 1
  %7 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 15
  %8 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 15, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #20
  %9 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %6, i8 0, i64 20, i1 false)
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %5
  %13 = getelementptr [4 x i8], ptr @check_command.dirletter, i32 0, i32 %10
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 24
  %17 = load i32, ptr %16, align 4
  %18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.72, i32 noundef %15, i32 noundef %17)
  br label %19

19:                                               ; preds = %12, %5
  %20 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 25
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 3, i32 %2
  %24 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 24
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %25, %21
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  store i32 %25, ptr %20, align 4
  %28 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 29
  %29 = load i8, ptr %28, align 4
  %30 = or i8 %29, 4
  store i8 %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %27, %19
  %32 = phi i32 [ %25, %27 ], [ %21, %19 ]
  %33 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 27
  store i32 %25, ptr %33, align 4
  %34 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 28
  store i32 %25, ptr %34, align 4
  %35 = load i32, ptr %9, align 4
  %36 = icmp eq i32 %35, %23
  %37 = icmp eq i32 %32, 0
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 29
  %41 = load i8, ptr %40, align 4
  %42 = or i8 %41, 4
  store i8 %42, ptr %40, align 4
  br label %109

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 14
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, %1
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = icmp slt i32 %45, %1
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 29
  %51 = load i8, ptr %50, align 4
  %52 = or i8 %51, 4
  store i8 %52, ptr %50, align 4
  br label %109

53:                                               ; preds = %47, %43
  %54 = phi i32 [ %1, %43 ], [ %45, %47 ]
  %55 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 18
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %53
  %59 = load i8, ptr %7, align 4
  %60 = icmp eq i8 %59, 3
  br i1 %60, label %72, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.fsg_lun, ptr %56, i32 0, i32 4
  store i32 0, ptr %62, align 4
  %63 = getelementptr inbounds %struct.fsg_lun, ptr %56, i32 0, i32 5
  store i32 0, ptr %63, align 8
  %64 = getelementptr inbounds %struct.fsg_lun, ptr %56, i32 0, i32 3
  %65 = load i8, ptr %64, align 8
  %66 = and i8 %65, -65
  store i8 %66, ptr %64, align 8
  br label %72

67:                                               ; preds = %53
  %68 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 29
  %69 = load i8, ptr %68, align 4
  %70 = and i8 %69, -17
  store i8 %70, ptr %68, align 4
  %71 = load i8, ptr %7, align 4
  switch i8 %71, label %109 [
    i8 18, label %80
    i8 3, label %80
  ]

72:                                               ; preds = %61, %58
  %73 = getelementptr inbounds %struct.fsg_lun, ptr %56, i32 0, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i8, ptr %7, align 4
  switch i8 %77, label %78 [
    i8 18, label %80
    i8 3, label %80
  ]

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.fsg_lun, ptr %56, i32 0, i32 4
  store i32 %74, ptr %79, align 4
  store i32 0, ptr %73, align 4
  br label %109

80:                                               ; preds = %76, %76, %72, %67, %67
  %81 = load i8, ptr %8, align 1
  %82 = and i8 %81, 31
  store i8 %82, ptr %8, align 1
  %83 = icmp sgt i32 %54, 1
  br i1 %83, label %84, label %101

84:                                               ; preds = %98, %80
  %85 = phi i8 [ %100, %98 ], [ %82, %80 ]
  %86 = phi i32 [ %96, %98 ], [ 1, %80 ]
  %87 = icmp eq i8 %85, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %84
  %89 = shl nuw i32 1, %86
  %90 = and i32 %89, %3
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  br i1 %57, label %109, label %93

93:                                               ; preds = %92
  %94 = getelementptr inbounds %struct.fsg_lun, ptr %56, i32 0, i32 4
  store i32 336896, ptr %94, align 4
  br label %109

95:                                               ; preds = %88, %84
  %96 = add nuw nsw i32 %86, 1
  %97 = icmp eq i32 %96, %54
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 15, i32 %96
  %100 = load i8, ptr %99, align 1
  br label %84

101:                                              ; preds = %95, %80
  br i1 %57, label %109, label %102

102:                                              ; preds = %101
  %103 = load ptr, ptr %56, align 8
  %104 = icmp ne ptr %103, null
  %105 = icmp eq i32 %4, 0
  %106 = or i1 %105, %104
  br i1 %106, label %109, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.fsg_lun, ptr %56, i32 0, i32 4
  store i32 145920, ptr %108, align 4
  br label %109

109:                                              ; preds = %107, %102, %101, %93, %92, %78, %67, %49, %39
  %110 = phi i32 [ -22, %39 ], [ -22, %78 ], [ -22, %107 ], [ -22, %49 ], [ -22, %67 ], [ -22, %93 ], [ -22, %92 ], [ 0, %102 ], [ 0, %101 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #20
  ret i32 %110
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_read(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store i64 0, ptr %3, align 8, !annotation !9
  %6 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 15
  %7 = load i8, ptr %6, align 4
  switch i8 %7, label %27 [
    i8 8, label %8
    i8 -120, label %23
  ]

8:                                                ; preds = %1
  %9 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 15, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 16
  %13 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 15, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = or i32 %16, %12
  %18 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 15, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %17, %20
  %22 = zext i32 %21 to i64
  br label %40

23:                                               ; preds = %1
  %24 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 15, i32 2
  %25 = load i64, ptr %24, align 1
  %26 = tail call i64 @llvm.bswap.i64(i64 %25) #20
  br label %32

27:                                               ; preds = %1
  %28 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 15, i32 2
  %29 = load i32, ptr %28, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #20
  %31 = zext i32 %30 to i64
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi i64 [ %26, %23 ], [ %31, %27 ]
  %34 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 15, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, -25
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 4
  store i32 336896, ptr %39, align 4
  br label %158

40:                                               ; preds = %32, %8
  %41 = phi i64 [ %22, %8 ], [ %33, %32 ]
  %42 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 4
  store i32 336128, ptr %46, align 4
  br label %158

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 7
  %49 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 25
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %158, label %52, !prof !8

52:                                               ; preds = %47
  %53 = load i32, ptr %48, align 8
  %54 = zext i32 %53 to i64
  %55 = shl i64 %41, %54
  %56 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 1
  %57 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 10
  %58 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 3
  %59 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 8
  %60 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 27
  %61 = load ptr, ptr %57, align 4
  br label %62

62:                                               ; preds = %155, %52
  %63 = phi ptr [ %157, %155 ], [ %61, %52 ]
  %64 = phi i64 [ %128, %155 ], [ %55, %52 ]
  %65 = phi i32 [ %129, %155 ], [ %50, %52 ]
  %66 = call i32 @llvm.umin.i32(i32 %65, i32 16384)
  %67 = zext i32 %66 to i64
  %68 = load i64, ptr %56, align 8
  %69 = sub i64 %68, %64
  %70 = call i64 @llvm.smin.i64(i64 %69, i64 %67)
  %71 = trunc i64 %70 to i32
  %72 = icmp eq ptr %63, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.fsg_buffhd, ptr %63, i32 0, i32 1
  %75 = load volatile i32, ptr %74, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !18
  %76 = icmp sgt i32 %75, -1
  br i1 %76, label %89, label %77

77:                                               ; preds = %73, %62
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #20, !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #20
  %78 = getelementptr inbounds %struct.fsg_buffhd, ptr %63, i32 0, i32 1
  br label %79

79:                                               ; preds = %86, %77
  %80 = call i32 @prepare_to_wait_event(ptr noundef %58, ptr noundef nonnull %2, i32 noundef 1) #20
  br i1 %72, label %84, label %81

81:                                               ; preds = %79
  %82 = load volatile i32, ptr %78, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !19
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %87, label %84

84:                                               ; preds = %81, %79
  %85 = icmp eq i32 %80, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %84
  call void @schedule() #20
  br label %79

87:                                               ; preds = %81
  call void @finish_wait(ptr noundef %58, ptr noundef nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #20
  br label %89

88:                                               ; preds = %84
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #20
  br label %158

89:                                               ; preds = %87, %73
  %90 = icmp eq i32 %71, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 4
  store i32 336128, ptr %92, align 4
  %93 = load i32, ptr %48, align 8
  %94 = zext i32 %93 to i64
  %95 = ashr i64 %64, %94
  %96 = trunc i64 %95 to i32
  %97 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 5
  store i32 %96, ptr %97, align 8
  %98 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 3
  %99 = load i8, ptr %98, align 8
  %100 = or i8 %99, 64
  store i8 %100, ptr %98, align 8
  %101 = getelementptr inbounds %struct.fsg_buffhd, ptr %63, i32 0, i32 4
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.usb_request, ptr %102, i32 0, i32 1
  store i32 0, ptr %103, align 4
  %104 = getelementptr inbounds %struct.fsg_buffhd, ptr %63, i32 0, i32 1
  store i32 1, ptr %104, align 4
  br label %158

105:                                              ; preds = %89
  store i64 %64, ptr %3, align 8
  %106 = load ptr, ptr %5, align 8
  %107 = load ptr, ptr %63, align 4
  %108 = call i32 @kernel_read(ptr noundef %106, ptr noundef %107, i32 noundef %71, ptr noundef nonnull %3) #20
  %109 = tail call ptr @llvm.thread.pointer() #20
  %110 = load volatile i32, ptr %109, align 4
  %111 = and i32 %110, 256
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %158, !prof !12

113:                                              ; preds = %105
  %114 = load volatile i32, ptr %109, align 4
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %158

117:                                              ; preds = %113
  %118 = icmp slt i32 %108, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %117
  %120 = icmp ult i32 %108, %71
  br i1 %120, label %121, label %125

121:                                              ; preds = %119
  %122 = load i32, ptr %59, align 4
  %123 = sub i32 0, %122
  %124 = and i32 %108, %123
  br label %125

125:                                              ; preds = %121, %119, %117
  %126 = phi i32 [ %124, %121 ], [ %108, %119 ], [ 0, %117 ]
  %127 = zext i32 %126 to i64
  %128 = add i64 %64, %127
  %129 = sub i32 %65, %126
  %130 = load i32, ptr %60, align 4
  %131 = sub i32 %130, %126
  store i32 %131, ptr %60, align 4
  %132 = getelementptr inbounds %struct.fsg_buffhd, ptr %63, i32 0, i32 4
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.usb_request, ptr %133, i32 0, i32 1
  store i32 %126, ptr %134, align 4
  %135 = getelementptr inbounds %struct.fsg_buffhd, ptr %63, i32 0, i32 1
  store i32 1, ptr %135, align 4
  %136 = icmp ult i32 %126, %71
  br i1 %136, label %137, label %147

137:                                              ; preds = %125
  %138 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 4
  store i32 200960, ptr %138, align 4
  %139 = load i32, ptr %48, align 8
  %140 = zext i32 %139 to i64
  %141 = ashr i64 %128, %140
  %142 = trunc i64 %141 to i32
  %143 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 5
  store i32 %142, ptr %143, align 8
  %144 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 3
  %145 = load i8, ptr %144, align 8
  %146 = or i8 %145, 64
  store i8 %146, ptr %144, align 8
  br label %158

147:                                              ; preds = %125
  %148 = icmp eq i32 %129, 0
  br i1 %148, label %158, label %149

149:                                              ; preds = %147
  %150 = load ptr, ptr %132, align 4
  %151 = getelementptr inbounds %struct.usb_request, ptr %150, i32 0, i32 6
  %152 = load i32, ptr %151, align 4
  %153 = and i32 %152, -262145
  store i32 %153, ptr %151, align 4
  %154 = call fastcc zeroext i1 @start_in_transfer(ptr noundef %0, ptr noundef nonnull %63)
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.fsg_buffhd, ptr %63, i32 0, i32 2
  %157 = load ptr, ptr %156, align 4
  store ptr %157, ptr %57, align 4
  br label %62

158:                                              ; preds = %149, %147, %137, %113, %105, %91, %88, %47, %45, %38
  %159 = phi i32 [ -22, %45 ], [ -22, %38 ], [ -5, %47 ], [ -4, %88 ], [ -5, %137 ], [ -5, %91 ], [ -4, %105 ], [ -5, %147 ], [ -5, %149 ], [ -4, %113 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret i32 %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_write(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store i64 0, ptr %3, align 8, !annotation !9
  %6 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 4
  store i32 468736, ptr %11, align 4
  br label %278

12:                                               ; preds = %1
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %14) #20
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, -1052673
  store i32 %18, ptr %16, align 4
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  %21 = load i16, ptr %20, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !25
  %23 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 15
  %24 = load i8, ptr %23, align 4
  switch i8 %24, label %44 [
    i8 10, label %25
    i8 -118, label %40
  ]

25:                                               ; preds = %12
  %26 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 15, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 16
  %30 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 15, i32 2
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 8
  %34 = or i32 %33, %29
  %35 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 15, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %34, %37
  %39 = zext i32 %38 to i64
  br label %75

40:                                               ; preds = %12
  %41 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 15, i32 2
  %42 = load i64, ptr %41, align 1
  %43 = tail call i64 @llvm.bswap.i64(i64 %42) #20
  br label %49

44:                                               ; preds = %12
  %45 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 15, i32 2
  %46 = load i32, ptr %45, align 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #20
  %48 = zext i32 %47 to i64
  br label %49

49:                                               ; preds = %44, %40
  %50 = phi i64 [ %43, %40 ], [ %48, %44 ]
  %51 = getelementptr %struct.fsg_common, ptr %0, i32 0, i32 15, i32 1
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 231
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 4
  store i32 336896, ptr %57, align 4
  br label %278

58:                                               ; preds = %49
  %59 = load i8, ptr %6, align 8
  %60 = icmp slt i8 %59, 0
  %61 = and i32 %53, 8
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %60, i1 true, i1 %62
  br i1 %63, label %75, label %64

64:                                               ; preds = %58
  %65 = load ptr, ptr %5, align 8
  %66 = getelementptr inbounds %struct.file, ptr %65, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %66) #20
  %67 = load ptr, ptr %5, align 8
  %68 = getelementptr inbounds %struct.file, ptr %67, i32 0, i32 7
  %69 = load i32, ptr %68, align 4
  %70 = or i32 %69, 1052672
  store i32 %70, ptr %68, align 4
  %71 = load ptr, ptr %5, align 8
  %72 = getelementptr inbounds %struct.file, ptr %71, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  %73 = load i16, ptr %72, align 4
  %74 = add i16 %73, 1
  store i16 %74, ptr %72, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !25
  br label %75

75:                                               ; preds = %64, %58, %25
  %76 = phi i64 [ %39, %25 ], [ %50, %58 ], [ %50, %64 ]
  %77 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 2
  %78 = load i64, ptr %77, align 8
  %79 = icmp ult i64 %76, %78
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 4
  store i32 336128, ptr %81, align 4
  br label %278

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 7
  %84 = load i32, ptr %83, align 8
  %85 = zext i32 %84 to i64
  %86 = shl i64 %76, %85
  %87 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 25
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 10
  %90 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 1
  %91 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 4
  %92 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 5
  %93 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 28
  %94 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 19
  %95 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 11
  %96 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 3
  %97 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 11
  %98 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 10
  %99 = getelementptr inbounds %struct.fsg_lun, ptr %5, i32 0, i32 8
  %100 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 27
  br label %101

101:                                              ; preds = %266, %82
  %102 = phi i64 [ %268, %266 ], [ %86, %82 ]
  %103 = phi i64 [ %158, %266 ], [ %86, %82 ]
  %104 = phi i32 [ %269, %266 ], [ %88, %82 ]
  %105 = phi i32 [ %157, %266 ], [ %88, %82 ]
  %106 = phi i32 [ %159, %266 ], [ 1, %82 ]
  %107 = icmp eq i32 %104, 0
  br i1 %107, label %278, label %108

108:                                              ; preds = %101
  %109 = load ptr, ptr %89, align 4
  %110 = getelementptr inbounds %struct.fsg_buffhd, ptr %109, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  %113 = icmp ne i32 %106, 0
  %114 = select i1 %112, i1 %113, i1 false
  br i1 %114, label %122, label %156

115:                                              ; preds = %122
  store i32 336128, ptr %91, align 4
  %116 = load i32, ptr %83, align 8
  %117 = zext i32 %116 to i64
  %118 = ashr i64 %124, %117
  %119 = trunc i64 %118 to i32
  store i32 %119, ptr %92, align 8
  %120 = load i8, ptr %6, align 8
  %121 = or i8 %120, 64
  store i8 %121, ptr %6, align 8
  br label %156

122:                                              ; preds = %143, %108
  %123 = phi ptr [ %149, %143 ], [ %109, %108 ]
  %124 = phi i64 [ %147, %143 ], [ %103, %108 ]
  %125 = phi i32 [ %144, %143 ], [ %105, %108 ]
  %126 = load i64, ptr %90, align 8
  %127 = icmp slt i64 %124, %126
  br i1 %127, label %128, label %115

128:                                              ; preds = %122
  %129 = call i32 @llvm.umin.i32(i32 %125, i32 16384)
  %130 = load i32, ptr %93, align 4
  %131 = sub i32 %130, %129
  store i32 %131, ptr %93, align 4
  %132 = getelementptr inbounds %struct.fsg_buffhd, ptr %123, i32 0, i32 3
  store i32 %129, ptr %132, align 4
  %133 = load i32, ptr %94, align 4
  %134 = urem i32 %129, %133
  %135 = icmp eq i32 %134, 0
  %136 = sub i32 %133, %134
  %137 = select i1 %135, i32 0, i32 %136
  %138 = add i32 %137, %129
  %139 = getelementptr inbounds %struct.fsg_buffhd, ptr %123, i32 0, i32 5
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.usb_request, ptr %140, i32 0, i32 1
  store i32 %138, ptr %141, align 4
  %142 = call fastcc zeroext i1 @start_out_transfer(ptr noundef %0, ptr noundef %123)
  br i1 %142, label %143, label %278

143:                                              ; preds = %128
  %144 = sub i32 %125, %129
  %145 = icmp ne i32 %144, 0
  %146 = zext i32 %129 to i64
  %147 = add i64 %124, %146
  %148 = getelementptr inbounds %struct.fsg_buffhd, ptr %123, i32 0, i32 2
  %149 = load ptr, ptr %148, align 4
  store ptr %149, ptr %89, align 4
  %150 = getelementptr inbounds %struct.fsg_buffhd, ptr %149, i32 0, i32 1
  %151 = load i32, ptr %150, align 4
  %152 = icmp eq i32 %151, 0
  %153 = select i1 %152, i1 %145, i1 false
  br i1 %153, label %122, label %154

154:                                              ; preds = %143
  %155 = zext i1 %145 to i32
  br label %156

156:                                              ; preds = %154, %115, %108
  %157 = phi i32 [ %125, %115 ], [ %144, %154 ], [ %105, %108 ]
  %158 = phi i64 [ %124, %115 ], [ %147, %154 ], [ %103, %108 ]
  %159 = phi i32 [ 0, %115 ], [ %155, %154 ], [ %106, %108 ]
  %160 = phi i1 [ false, %115 ], [ %145, %154 ], [ %113, %108 ]
  %161 = load ptr, ptr %95, align 4
  %162 = getelementptr inbounds %struct.fsg_buffhd, ptr %161, i32 0, i32 1
  %163 = load i32, ptr %162, align 4
  %164 = icmp ne i32 %163, 0
  %165 = select i1 %164, i1 true, i1 %160
  br i1 %165, label %166, label %278

166:                                              ; preds = %156
  %167 = icmp eq ptr %161, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %166
  %169 = load volatile i32, ptr %162, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !18
  %170 = icmp sgt i32 %169, -1
  br i1 %170, label %182, label %171

171:                                              ; preds = %168, %166
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #20, !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #20
  br label %172

172:                                              ; preds = %179, %171
  %173 = call i32 @prepare_to_wait_event(ptr noundef %96, ptr noundef nonnull %2, i32 noundef 1) #20
  br i1 %167, label %177, label %174

174:                                              ; preds = %172
  %175 = load volatile i32, ptr %162, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !19
  %176 = icmp sgt i32 %175, -1
  br i1 %176, label %180, label %177

177:                                              ; preds = %174, %172
  %178 = icmp eq i32 %173, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %177
  call void @schedule() #20
  br label %172

180:                                              ; preds = %174
  call void @finish_wait(ptr noundef %96, ptr noundef nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #20
  br label %182

181:                                              ; preds = %177
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #20
  br label %278

182:                                              ; preds = %180, %168
  %183 = getelementptr inbounds %struct.fsg_buffhd, ptr %161, i32 0, i32 2
  %184 = load ptr, ptr %183, align 4
  store ptr %184, ptr %95, align 4
  store i32 0, ptr %162, align 4
  %185 = getelementptr inbounds %struct.fsg_buffhd, ptr %161, i32 0, i32 5
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.usb_request, ptr %186, i32 0, i32 11
  %188 = load i32, ptr %187, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %197, label %190

190:                                              ; preds = %182
  store i32 264192, ptr %91, align 4
  %191 = load i32, ptr %83, align 8
  %192 = zext i32 %191 to i64
  %193 = ashr i64 %102, %192
  %194 = trunc i64 %193 to i32
  store i32 %194, ptr %92, align 8
  %195 = load i8, ptr %6, align 8
  %196 = or i8 %195, 64
  store i8 %196, ptr %6, align 8
  br label %278

197:                                              ; preds = %182
  %198 = getelementptr inbounds %struct.usb_request, ptr %186, i32 0, i32 12
  %199 = load i32, ptr %198, align 4
  %200 = load i64, ptr %90, align 8
  %201 = sub i64 %200, %102
  %202 = zext i32 %199 to i64
  %203 = icmp slt i64 %201, %202
  br i1 %203, label %204, label %220

204:                                              ; preds = %197
  %205 = load ptr, ptr %97, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %213, label %207

207:                                              ; preds = %204
  %208 = load ptr, ptr %205, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %213, label %210

210:                                              ; preds = %207
  %211 = load ptr, ptr %98, align 8
  %212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull %208, ptr noundef %211, i32 noundef %199, i64 noundef %102, i64 noundef %200) #22
  br label %216

213:                                              ; preds = %207, %204
  %214 = load ptr, ptr %98, align 8
  %215 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %214, i32 noundef %199, i64 noundef %102, i64 noundef %200) #22
  br label %216

216:                                              ; preds = %213, %210
  %217 = load i64, ptr %90, align 8
  %218 = sub i64 %217, %102
  %219 = trunc i64 %218 to i32
  br label %220

220:                                              ; preds = %216, %197
  %221 = phi i32 [ %219, %216 ], [ %199, %197 ]
  %222 = getelementptr inbounds %struct.fsg_buffhd, ptr %161, i32 0, i32 3
  %223 = load i32, ptr %222, align 4
  %224 = call i32 @llvm.umin.i32(i32 %221, i32 %223)
  %225 = load i32, ptr %99, align 4
  %226 = sub i32 0, %225
  %227 = and i32 %224, %226
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %266, label %229

229:                                              ; preds = %220
  store i64 %102, ptr %3, align 8
  %230 = load ptr, ptr %5, align 8
  %231 = load ptr, ptr %161, align 4
  %232 = call i32 @kernel_write(ptr noundef %230, ptr noundef %231, i32 noundef %227, ptr noundef nonnull %3) #20
  %233 = tail call ptr @llvm.thread.pointer() #20
  %234 = load volatile i32, ptr %233, align 4
  %235 = and i32 %234, 256
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %278, !prof !12

237:                                              ; preds = %229
  %238 = load volatile i32, ptr %233, align 4
  %239 = and i32 %238, 1
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %278

241:                                              ; preds = %237
  %242 = icmp slt i32 %232, 0
  br i1 %242, label %249, label %243

243:                                              ; preds = %241
  %244 = icmp ult i32 %232, %227
  br i1 %244, label %245, label %249

245:                                              ; preds = %243
  %246 = load i32, ptr %99, align 4
  %247 = sub i32 0, %246
  %248 = and i32 %232, %247
  br label %249

249:                                              ; preds = %245, %243, %241
  %250 = phi i32 [ %248, %245 ], [ %232, %243 ], [ 0, %241 ]
  %251 = zext i32 %250 to i64
  %252 = add i64 %102, %251
  %253 = load i32, ptr %100, align 4
  %254 = sub i32 %253, %250
  store i32 %254, ptr %100, align 4
  %255 = icmp ult i32 %250, %227
  br i1 %255, label %259, label %256

256:                                              ; preds = %249
  %257 = sub i32 %104, %250
  %258 = load i32, ptr %222, align 4
  br label %266

259:                                              ; preds = %249
  store i32 199682, ptr %91, align 4
  %260 = load i32, ptr %83, align 8
  %261 = zext i32 %260 to i64
  %262 = ashr i64 %252, %261
  %263 = trunc i64 %262 to i32
  store i32 %263, ptr %92, align 8
  %264 = load i8, ptr %6, align 8
  %265 = or i8 %264, 64
  store i8 %265, ptr %6, align 8
  br label %278

266:                                              ; preds = %256, %220
  %267 = phi i32 [ %223, %220 ], [ %258, %256 ]
  %268 = phi i64 [ %102, %220 ], [ %252, %256 ]
  %269 = phi i32 [ %104, %220 ], [ %257, %256 ]
  %270 = load ptr, ptr %185, align 4
  %271 = getelementptr inbounds %struct.usb_request, ptr %270, i32 0, i32 12
  %272 = load i32, ptr %271, align 4
  %273 = icmp ult i32 %272, %267
  br i1 %273, label %274, label %101

274:                                              ; preds = %266
  %275 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 29
  %276 = load i8, ptr %275, align 4
  %277 = or i8 %276, 8
  store i8 %277, ptr %275, align 4
  br label %278

278:                                              ; preds = %274, %259, %237, %229, %190, %181, %156, %128, %101, %80, %56, %10
  %279 = phi i32 [ -22, %10 ], [ -22, %80 ], [ -22, %56 ], [ -4, %181 ], [ -5, %274 ], [ -5, %259 ], [ -5, %190 ], [ -5, %128 ], [ -5, %101 ], [ -4, %237 ], [ -5, %156 ], [ -4, %229 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret i32 %279
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsg_lun_fsync_sub(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @start_in_transfer(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.fsg_common, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.start_in_transfer, i32 noundef 546) #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 313, i32 noundef 9, ptr noundef null) #20
  br label %31

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.fsg_buffhd, ptr %1, i32 0, i32 1
  store i32 -2, ptr %10, align 4
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.fsg_dev, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.fsg_buffhd, ptr %1, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @usb_ep_queue(ptr noundef %13, ptr noundef %15, i32 noundef 3264) #20
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.usb_request, ptr %15, i32 0, i32 11
  store i32 %16, ptr %19, align 4
  switch i32 %16, label %24 [
    i32 -108, label %30
    i32 -95, label %20
  ]

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.usb_request, ptr %15, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20, %18
  %25 = getelementptr inbounds %struct.fsg_dev, ptr %11, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.usb_gadget, ptr %26, i32 0, i32 11
  %28 = getelementptr inbounds %struct.usb_ep, ptr %13, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.41, ptr noundef %29, i32 noundef %16) #22
  br label %30

30:                                               ; preds = %24, %20, %18
  store i32 0, ptr %10, align 4
  br label %31

31:                                               ; preds = %30, %9, %6
  %32 = xor i1 %5, true
  ret i1 %32
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @store_cdrom_address(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly nofree nounwind willreturn }
attributes #16 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind allocsize(2) }
attributes #24 = { noreturn nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
!11 = !{i64 524264, i64 524281, i64 2148008351}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149297978}
!14 = !{i64 2149293802}
!15 = !{i64 2149293877, i64 2149293904, i64 2149293951, i64 2149293973, i64 2149294001, i64 2149294021}
!16 = !{i64 679141}
!17 = !{i64 2149322122}
!18 = !{i64 2153339279}
!19 = !{i64 2153346141}
!20 = !{i64 2153324396}
!21 = !{i64 2153331267}
!22 = !{i64 2153099235}
!23 = !{i64 2153303454}
!24 = !{i64 2153308583}
!25 = !{i64 2149320981}
