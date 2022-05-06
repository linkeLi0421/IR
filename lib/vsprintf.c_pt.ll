; ModuleID = '/llk/IR/lib/vsprintf.c_pt.bc'
source_filename = "../lib/vsprintf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_strtoull:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_strtoull\22\09\09\09\09\09"
module asm "__kstrtabns_simple_strtoull:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_strtoul:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_strtoul\22\09\09\09\09\09"
module asm "__kstrtabns_simple_strtoul:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_strtol:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_strtol\22\09\09\09\09\09"
module asm "__kstrtabns_simple_strtol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_strtoll:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_strtoll\22\09\09\09\09\09"
module asm "__kstrtabns_simple_strtoll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_no_hash_pointers:\09\09\09\09\09"
module asm "\09.asciz \09\22no_hash_pointers\22\09\09\09\09\09"
module asm "__kstrtabns_no_hash_pointers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsnprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22vsnprintf\22\09\09\09\09\09"
module asm "__kstrtabns_vsnprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vscnprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22vscnprintf\22\09\09\09\09\09"
module asm "__kstrtabns_vscnprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22snprintf\22\09\09\09\09\09"
module asm "__kstrtabns_snprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scnprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22scnprintf\22\09\09\09\09\09"
module asm "__kstrtabns_scnprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22vsprintf\22\09\09\09\09\09"
module asm "__kstrtabns_vsprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22sprintf\22\09\09\09\09\09"
module asm "__kstrtabns_sprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vbin_printf:\09\09\09\09\09"
module asm "\09.asciz \09\22vbin_printf\22\09\09\09\09\09"
module asm "__kstrtabns_vbin_printf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bstr_printf:\09\09\09\09\09"
module asm "\09.asciz \09\22bstr_printf\22\09\09\09\09\09"
module asm "__kstrtabns_bstr_printf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22bprintf\22\09\09\09\09\09"
module asm "__kstrtabns_bprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsscanf:\09\09\09\09\09"
module asm "\09.asciz \09\22vsscanf\22\09\09\09\09\09"
module asm "__kstrtabns_vsscanf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sscanf:\09\09\09\09\09"
module asm "\09.asciz \09\22sscanf\22\09\09\09\09\09"
module asm "__kstrtabns_sscanf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.random_ready_callback = type { %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.page_flags_fields = type { i32, i32, i32, ptr, ptr }
%struct.printf_spec = type { i64 }
%struct.__va_list = type { ptr }
%struct.va_format = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.106, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.21 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.106 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.38 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.38 = type { %struct.callback_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.110, %struct.list_head, %struct.list_head, %union.anon.111 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.15, ptr }
%union.anon.15 = type { i64 }
%struct.lockref = type { %union.anon.17 }
%union.anon.17 = type { i64 }
%union.anon.110 = type { %struct.list_head }
%union.anon.111 = type { %struct.hlist_node }
%struct.file = type { %union.anon.14, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.lockdep_map = type {}
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.70 }
%union.anon.70 = type { [4 x i32] }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@__kstrtab_simple_strtoull = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_strtoull = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_strtoull = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_strtoull to i32), ptr @__kstrtab_simple_strtoull, ptr @__kstrtabns_simple_strtoull }, section "___ksymtab+simple_strtoull", align 4
@__kstrtab_simple_strtoul = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_strtoul = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_strtoul = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_strtoul to i32), ptr @__kstrtab_simple_strtoul, ptr @__kstrtabns_simple_strtoul }, section "___ksymtab+simple_strtoul", align 4
@__kstrtab_simple_strtol = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_strtol = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_strtol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_strtol to i32), ptr @__kstrtab_simple_strtol, ptr @__kstrtabns_simple_strtol }, section "___ksymtab+simple_strtol", align 4
@__kstrtab_simple_strtoll = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_strtoll = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_strtoll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_strtoll to i32), ptr @__kstrtab_simple_strtoll, ptr @__kstrtabns_simple_strtoll }, section "___ksymtab+simple_strtoll", align 4
@__setup_str_debug_boot_weak_hash_enable = internal constant [21 x i8] c"debug_boot_weak_hash\00", section ".init.rodata", align 1
@__setup_debug_boot_weak_hash_enable = internal global %struct.obs_kernel_param { ptr @__setup_str_debug_boot_weak_hash_enable, ptr @debug_boot_weak_hash_enable, i32 1 }, section ".init.setup", align 4
@__initcall__kmod_vsprintf__468_792_initialize_ptr_randomearly = internal global ptr @initialize_ptr_random, section ".initcallearly.init", align 4
@no_hash_pointers = dso_local global i8 0, section ".data..ro_after_init", align 1
@__kstrtab_no_hash_pointers = external dso_local constant [0 x i8], align 1
@__kstrtabns_no_hash_pointers = external dso_local constant [0 x i8], align 1
@__ksymtab_no_hash_pointers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @no_hash_pointers to i32), ptr @__kstrtab_no_hash_pointers, ptr @__kstrtabns_no_hash_pointers }, section "___ksymtab_gpl+no_hash_pointers", align 4
@.str = private unnamed_addr constant [62 x i8] c"\014**********************************************************\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"\014**   NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE   **\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"\014**                                                      **\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"\014** This system shows unhashed kernel memory addresses   **\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"\014** via the console, logs, and other interfaces. This    **\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"\014** might reduce the security of your system.            **\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"\014** If you see this message and you are not debugging    **\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"\014** the kernel, report this immediately to your system   **\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"\014** administrator!                                       **\0A\00", align 1
@__setup_str_no_hash_pointers_enable = internal constant [17 x i8] c"no_hash_pointers\00", section ".init.rodata", align 1
@__setup_no_hash_pointers_enable = internal global %struct.obs_kernel_param { ptr @__setup_str_no_hash_pointers_enable, ptr @no_hash_pointers_enable, i32 1 }, section ".init.setup", align 4
@vsnprintf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"lib/vsprintf.c\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__kstrtab_vsnprintf = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsnprintf = external dso_local constant [0 x i8], align 1
@__ksymtab_vsnprintf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsnprintf to i32), ptr @__kstrtab_vsnprintf, ptr @__kstrtabns_vsnprintf }, section "___ksymtab+vsnprintf", align 4
@__kstrtab_vscnprintf = external dso_local constant [0 x i8], align 1
@__kstrtabns_vscnprintf = external dso_local constant [0 x i8], align 1
@__ksymtab_vscnprintf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vscnprintf to i32), ptr @__kstrtab_vscnprintf, ptr @__kstrtabns_vscnprintf }, section "___ksymtab+vscnprintf", align 4
@__kstrtab_snprintf = external dso_local constant [0 x i8], align 1
@__kstrtabns_snprintf = external dso_local constant [0 x i8], align 1
@__ksymtab_snprintf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snprintf to i32), ptr @__kstrtab_snprintf, ptr @__kstrtabns_snprintf }, section "___ksymtab+snprintf", align 4
@__kstrtab_scnprintf = external dso_local constant [0 x i8], align 1
@__kstrtabns_scnprintf = external dso_local constant [0 x i8], align 1
@__ksymtab_scnprintf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scnprintf to i32), ptr @__kstrtab_scnprintf, ptr @__kstrtabns_scnprintf }, section "___ksymtab+scnprintf", align 4
@__kstrtab_vsprintf = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsprintf = external dso_local constant [0 x i8], align 1
@__ksymtab_vsprintf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsprintf to i32), ptr @__kstrtab_vsprintf, ptr @__kstrtabns_vsprintf }, section "___ksymtab+vsprintf", align 4
@__kstrtab_sprintf = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprintf = external dso_local constant [0 x i8], align 1
@__ksymtab_sprintf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprintf to i32), ptr @__kstrtab_sprintf, ptr @__kstrtabns_sprintf }, section "___ksymtab+sprintf", align 4
@__kstrtab_vbin_printf = external dso_local constant [0 x i8], align 1
@__kstrtabns_vbin_printf = external dso_local constant [0 x i8], align 1
@__ksymtab_vbin_printf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vbin_printf to i32), ptr @__kstrtab_vbin_printf, ptr @__kstrtabns_vbin_printf }, section "___ksymtab_gpl+vbin_printf", align 4
@bstr_printf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_bstr_printf = external dso_local constant [0 x i8], align 1
@__kstrtabns_bstr_printf = external dso_local constant [0 x i8], align 1
@__ksymtab_bstr_printf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bstr_printf to i32), ptr @__kstrtab_bstr_printf, ptr @__kstrtabns_bstr_printf }, section "___ksymtab_gpl+bstr_printf", align 4
@__kstrtab_bprintf = external dso_local constant [0 x i8], align 1
@__kstrtabns_bprintf = external dso_local constant [0 x i8], align 1
@__ksymtab_bprintf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bprintf to i32), ptr @__kstrtab_bprintf, ptr @__kstrtabns_bprintf }, section "___ksymtab_gpl+bprintf", align 4
@__kstrtab_vsscanf = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsscanf = external dso_local constant [0 x i8], align 1
@__ksymtab_vsscanf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsscanf to i32), ptr @__kstrtab_vsscanf, ptr @__kstrtabns_vsscanf }, section "___ksymtab+vsscanf", align 4
@__kstrtab_sscanf = external dso_local constant [0 x i8], align 1
@__kstrtabns_sscanf = external dso_local constant [0 x i8], align 1
@__ksymtab_sscanf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sscanf to i32), ptr @__kstrtab_sscanf, ptr @__kstrtabns_sscanf }, section "___ksymtab+sscanf", align 4
@kptr_restrict = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@decpair = internal unnamed_addr constant [100 x i16] [i16 12336, i16 12337, i16 12338, i16 12339, i16 12340, i16 12341, i16 12342, i16 12343, i16 12344, i16 12345, i16 12592, i16 12593, i16 12594, i16 12595, i16 12596, i16 12597, i16 12598, i16 12599, i16 12600, i16 12601, i16 12848, i16 12849, i16 12850, i16 12851, i16 12852, i16 12853, i16 12854, i16 12855, i16 12856, i16 12857, i16 13104, i16 13105, i16 13106, i16 13107, i16 13108, i16 13109, i16 13110, i16 13111, i16 13112, i16 13113, i16 13360, i16 13361, i16 13362, i16 13363, i16 13364, i16 13365, i16 13366, i16 13367, i16 13368, i16 13369, i16 13616, i16 13617, i16 13618, i16 13619, i16 13620, i16 13621, i16 13622, i16 13623, i16 13624, i16 13625, i16 13872, i16 13873, i16 13874, i16 13875, i16 13876, i16 13877, i16 13878, i16 13879, i16 13880, i16 13881, i16 14128, i16 14129, i16 14130, i16 14131, i16 14132, i16 14133, i16 14134, i16 14135, i16 14136, i16 14137, i16 14384, i16 14385, i16 14386, i16 14387, i16 14388, i16 14389, i16 14390, i16 14391, i16 14392, i16 14393, i16 14640, i16 14641, i16 14642, i16 14643, i16 14644, i16 14645, i16 14646, i16 14647, i16 14648, i16 14649], align 2
@debug_boot_weak_hash = internal unnamed_addr global i1 false, section ".data..ro_after_init", align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"\016debug_boot_weak_hash enabled\0A\00", align 1
@ptr_key = internal global %struct.siphash_key_t zeroinitializer, section ".data..read_mostly", align 8
@not_filled_random_ptr_key = internal global %struct.static_key_true { %struct.static_key { %struct.atomic_t { i32 1 } } }, align 4
@random_ready = internal global %struct.random_ready_callback { %struct.list_head zeroinitializer, ptr @fill_random_ptr_key, ptr null }, align 4
@enable_ptr_key_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @enable_ptr_key_work, i64 4), ptr getelementptr (i8, ptr @enable_ptr_key_work, i64 4) }, ptr @enable_ptr_key_workfn }, align 4
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_disable = private unnamed_addr constant [19 x i8] c"static_key_disable\00", align 1
@static_key_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@format_decode.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"Please remove unsupported %%%c in format string\0A\00", align 1
@set_field_width.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"field width %d too large\00", align 1
@set_precision.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"precision %d too large\00", align 1
@resource_string.io_spec = internal unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 6, i8 0, i8 0, i8 112, i8 16, i8 -1, i8 -1 }, align 1
@resource_string.mem_spec = internal unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 10, i8 0, i8 0, i8 112, i8 16, i8 -1, i8 -1 }, align 1
@resource_string.bus_spec = internal unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 2, i8 0, i8 0, i8 48, i8 16, i8 -1, i8 -1 }, align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"bus \00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"??? \00", align 1
@default_dec_spec = internal constant { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 0, i8 0, i8 10, i8 -1, i8 -1 }, align 4
@default_flag_spec = internal constant { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 0, i8 96, i8 16, i8 -1, i8 -1 }, align 4
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"(%pi?)\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"(%pI?)\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"I4\00", align 1
@uuid_index = external dso_local local_unnamed_addr constant [16 x i8], align 1
@guid_index = external dso_local local_unnamed_addr constant [16 x i8], align 1
@hex_asc_upper = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.37 = private unnamed_addr constant [12 x i8] c" big-endian\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c" little-endian\00", align 1
@.str.39 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@vmaflag_names = external dso_local local_unnamed_addr constant [0 x %struct.trace_print_flags], align 4
@gfpflag_names = external dso_local local_unnamed_addr constant [0 x %struct.trace_print_flags], align 4
@pageflag_names = external dso_local local_unnamed_addr constant [0 x %struct.trace_print_flags], align 4
@pff = internal unnamed_addr constant [5 x %struct.page_flags_fields] [%struct.page_flags_fields { i32 0, i32 0, i32 0, ptr @default_dec_spec, ptr @.str.44 }, %struct.page_flags_fields { i32 0, i32 0, i32 0, ptr @default_dec_spec, ptr @.str.45 }, %struct.page_flags_fields { i32 2, i32 30, i32 3, ptr @default_dec_spec, ptr @.str.46 }, %struct.page_flags_fields { i32 0, i32 0, i32 0, ptr @default_flag_spec, ptr @.str.47 }, %struct.page_flags_fields { i32 0, i32 0, i32 0, ptr @default_flag_spec, ptr @.str.48 }], align 4
@.str.44 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"zone\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"lastcpupid\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"kasantag\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"fnpPFcC\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"(efault)\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @__initcall__kmod_vsprintf__468_792_initialize_ptr_randomearly, ptr @__ksymtab_bprintf, ptr @__ksymtab_bstr_printf, ptr @__ksymtab_no_hash_pointers, ptr @__ksymtab_scnprintf, ptr @__ksymtab_simple_strtol, ptr @__ksymtab_simple_strtoll, ptr @__ksymtab_simple_strtoul, ptr @__ksymtab_simple_strtoull, ptr @__ksymtab_snprintf, ptr @__ksymtab_sprintf, ptr @__ksymtab_sscanf, ptr @__ksymtab_vbin_printf, ptr @__ksymtab_vscnprintf, ptr @__ksymtab_vsnprintf, ptr @__ksymtab_vsprintf, ptr @__ksymtab_vsscanf, ptr @__setup_debug_boot_weak_hash_enable, ptr @__setup_no_hash_pointers_enable], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @simple_strtoull(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call fastcc i64 @simple_strntoull(ptr noundef %0, i32 noundef 2147483647, ptr noundef %1, i32 noundef %2)
  ret i64 %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @simple_strntoull(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %3, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  store i64 0, ptr %6, align 8
  %7 = call ptr @_parse_integer_fixup_radix(ptr noundef %0, ptr noundef nonnull %5) #20
  %8 = ptrtoint ptr %7 to i32
  %9 = ptrtoint ptr %0 to i32
  %10 = sub i32 %8, %9
  %11 = icmp ult i32 %10, %1
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i32, ptr %5, align 4
  %14 = sub i32 %1, %10
  %15 = call i32 @_parse_integer_limit(ptr noundef %7, i32 noundef %13, ptr noundef nonnull %6, i32 noundef %14) #20
  %16 = and i32 %15, 2147483647
  %17 = getelementptr i8, ptr %7, i32 %16
  br label %20

18:                                               ; preds = %4
  %19 = getelementptr i8, ptr %0, i32 %1
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi ptr [ %17, %12 ], [ %19, %18 ]
  %22 = icmp eq ptr %2, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store ptr %21, ptr %2, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  ret i64 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_strtoul(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = tail call i64 @simple_strtoull(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_strtol(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 45
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 1
  %8 = tail call i64 @simple_strtoull(ptr noundef %7, ptr noundef %1, i32 noundef %2) #20
  %9 = trunc i64 %8 to i32
  %10 = sub i32 0, %9
  br label %14

11:                                               ; preds = %3
  %12 = tail call i64 @simple_strtoull(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  %13 = trunc i64 %12 to i32
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi i32 [ %10, %6 ], [ %13, %11 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @simple_strtoll(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 45
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 1
  %8 = tail call fastcc i64 @simple_strntoull(ptr noundef %7, i32 noundef 2147483646, ptr noundef %1, i32 noundef %2) #20
  %9 = sub i64 0, %8
  br label %12

10:                                               ; preds = %3
  %11 = tail call fastcc i64 @simple_strntoull(ptr noundef %0, i32 noundef 2147483647, ptr noundef %1, i32 noundef %2) #20
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i64 [ %9, %6 ], [ %11, %10 ]
  ret i64 %13
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @num_to_str(ptr nocapture noundef writeonly %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = alloca [24 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !8
  %6 = icmp ult i64 %2, 10
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = trunc i64 %2 to i8
  %9 = add nuw nsw i8 %8, 48
  store i8 %9, ptr %5, align 2
  br label %15

10:                                               ; preds = %4
  %11 = call fastcc ptr @put_dec(ptr noundef nonnull %5, i64 noundef %2)
  %12 = ptrtoint ptr %11 to i32
  %13 = ptrtoint ptr %5 to i32
  %14 = sub i32 %12, %13
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi i32 [ 1, %7 ], [ %14, %10 ]
  %17 = icmp sgt i32 %16, %1
  %18 = icmp ugt i32 %3, %1
  %19 = or i1 %18, %17
  br i1 %19, label %41, label %20

20:                                               ; preds = %15
  %21 = icmp ult i32 %16, %3
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = sub i32 %3, %16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  call void @llvm.memset.p0.i32(ptr align 1 %0, i8 32, i32 %23, i1 false)
  br label %26

26:                                               ; preds = %25, %22, %20
  %27 = phi i32 [ 0, %20 ], [ 0, %22 ], [ %23, %25 ]
  %28 = icmp sgt i32 %16, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %29, %26
  %30 = phi i32 [ %37, %29 ], [ 0, %26 ]
  %31 = xor i32 %30, -1
  %32 = add i32 %16, %31
  %33 = getelementptr [24 x i8], ptr %5, i32 0, i32 %32
  %34 = load i8, ptr %33, align 1
  %35 = add i32 %30, %27
  %36 = getelementptr i8, ptr %0, i32 %35
  store i8 %34, ptr %36, align 1
  %37 = add nuw nsw i32 %30, 1
  %38 = icmp eq i32 %37, %16
  br i1 %38, label %39, label %29

39:                                               ; preds = %29, %26
  %40 = add i32 %27, %16
  br label %41

41:                                               ; preds = %39, %15
  %42 = phi i32 [ %40, %39 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  ret i32 %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @put_dec(ptr noundef %0, i64 noundef %1) unnamed_addr #5 {
  %3 = icmp ult i64 %1, 100000000
  %4 = trunc i64 %1 to i32
  br i1 %3, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @put_dec_trunc8(ptr noundef %0, i32 noundef %4)
  br label %46

7:                                                ; preds = %2
  %8 = lshr i32 %4, 16
  %9 = lshr i64 %1, 32
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 65535
  %12 = lshr i32 %10, 16
  %13 = mul nuw nsw i32 %12, 656
  %14 = mul nuw nsw i32 %11, 7296
  %15 = mul nuw nsw i32 %8, 5536
  %16 = and i32 %4, 65535
  %17 = add nuw nsw i32 %15, %16
  %18 = add nuw nsw i32 %17, %14
  %19 = add nuw nsw i32 %18, %13
  %20 = tail call fastcc i32 @put_dec_helper4(ptr noundef %0, i32 noundef %19)
  %21 = mul nuw nsw i32 %12, 7671
  %22 = mul nuw nsw i32 %11, 9496
  %23 = mul nuw nsw i32 %8, 6
  %24 = add nuw nsw i32 %22, %23
  %25 = add nuw nsw i32 %24, %21
  %26 = add i32 %25, %20
  %27 = getelementptr i8, ptr %0, i32 4
  %28 = tail call fastcc i32 @put_dec_helper4(ptr noundef %27, i32 noundef %26)
  %29 = mul nuw nsw i32 %12, 4749
  %30 = mul nuw nsw i32 %11, 42
  %31 = add nuw nsw i32 %29, %30
  %32 = add i32 %31, %28
  %33 = getelementptr i8, ptr %0, i32 8
  %34 = tail call fastcc i32 @put_dec_helper4(ptr noundef %33, i32 noundef %32)
  %35 = mul nuw nsw i32 %12, 281
  %36 = add i32 %34, %35
  %37 = getelementptr i8, ptr %0, i32 12
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %7
  %40 = tail call fastcc ptr @put_dec_trunc8(ptr noundef %37, i32 noundef %36)
  br label %46

41:                                               ; preds = %41, %7
  %42 = phi ptr [ %43, %41 ], [ %37, %7 ]
  %43 = getelementptr i8, ptr %42, i32 -1
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 48
  br i1 %45, label %41, label %46

46:                                               ; preds = %41, %39, %5
  %47 = phi ptr [ %6, %5 ], [ %40, %39 ], [ %42, %41 ]
  ret ptr %47
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @debug_boot_weak_hash_enable(ptr nocapture noundef readnone %0) #6 section ".init.text" {
  store i1 true, ptr @debug_boot_weak_hash, align 4
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #21
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @initialize_ptr_random() #6 section ".init.text" {
  %1 = tail call i32 @get_random_bytes_arch(ptr noundef nonnull @ptr_key, i32 noundef 16) #20
  %2 = icmp eq i32 %1, 16
  br i1 %2, label %3, label %18

3:                                                ; preds = %0
  %4 = load i8, ptr @static_key_initialized, align 1, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !10

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 329, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.static_key_disable, ptr noundef nonnull @not_filled_random_ptr_key) #20
  br label %7

7:                                                ; preds = %6, %3
  %8 = load volatile i32, ptr @not_filled_random_ptr_key, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = load volatile i32, ptr @not_filled_random_ptr_key, align 4
  %12 = icmp ne i32 %11, 0
  %13 = load i1, ptr @static_key_disable.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %22, !prof !10

16:                                               ; preds = %10
  store i1 true, ptr @static_key_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 332, i32 noundef 9, ptr noundef null) #20
  br label %22

17:                                               ; preds = %7
  store volatile i32 0, ptr @not_filled_random_ptr_key, align 4
  br label %22

18:                                               ; preds = %0
  %19 = tail call i32 @add_random_ready_callback(ptr noundef nonnull @random_ready) #20
  %20 = icmp eq i32 %19, -114
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @enable_ptr_key_workfn(ptr noundef nonnull @enable_ptr_key_work)
  br label %22

22:                                               ; preds = %21, %18, %17, %16, %10
  %23 = phi i32 [ 0, %21 ], [ 0, %10 ], [ 0, %16 ], [ 0, %17 ], [ %19, %18 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ptr_to_hashval(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #1 {
  %3 = load volatile i32, ptr @not_filled_random_ptr_key, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %9, label %5, !prof !10

5:                                                ; preds = %2
  %6 = ptrtoint ptr %0 to i32
  %7 = tail call i64 @siphash_1u32(i32 noundef %6, ptr noundef nonnull @ptr_key) #20
  %8 = trunc i64 %7 to i32
  store i32 %8, ptr %1, align 4
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 0, %5 ], [ -11, %2 ]
  ret i32 %10
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @no_hash_pointers_enable(ptr nocapture readnone %0) #6 section ".init.text" {
  %2 = load i8, ptr @no_hash_pointers, align 1, !range !9
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  store i8 1, ptr @no_hash_pointers, align 1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #21
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #21
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #21
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #21
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #21
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #21
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #21
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #21
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #21
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #21
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #21
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #21
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #21
  br label %18

18:                                               ; preds = %4, %1
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vsnprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2, [1 x i32] %3) #1 {
  %5 = alloca %struct.printf_spec, align 8
  %6 = extractvalue [1 x i32] %3, 0
  %7 = inttoptr i32 %6 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store i64 0, ptr %5, align 8
  %8 = icmp slt i32 %1, 0
  %9 = load i1, ptr @vsnprintf.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !10

12:                                               ; preds = %4
  store i1 true, ptr @vsnprintf.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2733, i32 noundef 9, ptr noundef null) #20
  br label %13

13:                                               ; preds = %12, %4
  br i1 %8, label %277, label %14

14:                                               ; preds = %13
  %15 = getelementptr i8, ptr %0, i32 %1
  %16 = icmp ult ptr %15, %0
  %17 = ptrtoint ptr %0 to i32
  %18 = xor i32 %17, -1
  %19 = select i1 %16, i32 %18, i32 %1
  %20 = select i1 %16, ptr inttoptr (i32 -1 to ptr), ptr %15
  %21 = load i8, ptr %2, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %267, label %23

23:                                               ; preds = %14
  %24 = ptrtoint ptr %20 to i32
  br label %25

25:                                               ; preds = %261, %23
  %26 = phi ptr [ %7, %23 ], [ %264, %261 ]
  %27 = phi ptr [ %0, %23 ], [ %263, %261 ]
  %28 = phi ptr [ %2, %23 ], [ %262, %261 ]
  %29 = call fastcc i32 @format_decode(ptr noundef %28, ptr noundef nonnull %5)
  %30 = getelementptr i8, ptr %28, i32 %29
  %31 = load i64, ptr %5, align 8
  %32 = trunc i64 %31 to i8
  %33 = trunc i64 %31 to i32
  %34 = lshr i64 %31, 32
  %35 = trunc i64 %34 to i32
  switch i8 %32, label %249 [
    i8 0, label %36
    i8 1, label %44
    i8 2, label %68
    i8 3, label %91
    i8 4, label %172
    i8 5, label %178
    i8 6, label %192
    i8 7, label %267
    i8 8, label %197
    i8 9, label %204
    i8 10, label %208
    i8 17, label %212
    i8 18, label %221
    i8 11, label %225
    i8 12, label %230
    i8 13, label %235
    i8 14, label %240
    i8 16, label %245
  ]

36:                                               ; preds = %25
  %37 = icmp ult ptr %27, %20
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  %39 = ptrtoint ptr %27 to i32
  %40 = sub i32 %24, %39
  %41 = call i32 @llvm.smin.i32(i32 %29, i32 %40)
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %27, ptr align 1 %28, i32 %41, i1 false)
  br label %42

42:                                               ; preds = %38, %36
  %43 = getelementptr i8, ptr %27, i32 %29
  br label %261

44:                                               ; preds = %25
  %45 = getelementptr inbounds i8, ptr %26, i32 4
  %46 = load i32, ptr %26, align 4
  %47 = shl i32 %46, 8
  %48 = zext i32 %47 to i64
  %49 = and i64 %31, -4294967041
  %50 = or i64 %49, %48
  store i64 %50, ptr %5, align 8
  %51 = shl nuw i64 %48, 32
  %52 = ashr exact i64 %51, 40
  %53 = trunc i64 %52 to i32
  %54 = icmp ne i32 %46, %53
  %55 = load i1, ptr @set_field_width.__already_done, align 1
  %56 = xor i1 %55, true
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %59, !prof !10

58:                                               ; preds = %44
  store i1 true, ptr @set_field_width.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2683, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %46) #20
  br label %59

59:                                               ; preds = %58, %44
  br i1 %54, label %60, label %261

60:                                               ; preds = %59
  %61 = call i32 @llvm.smax.i32(i32 %46, i32 -8388607) #20
  %62 = call i32 @llvm.smin.i32(i32 %61, i32 8388607) #20
  %63 = load i64, ptr %5, align 8
  %64 = shl nsw i32 %62, 8
  %65 = zext i32 %64 to i64
  %66 = and i64 %63, -4294967041
  %67 = or i64 %66, %65
  store i64 %67, ptr %5, align 8
  br label %261

68:                                               ; preds = %25
  %69 = getelementptr inbounds i8, ptr %26, i32 4
  %70 = load i32, ptr %26, align 4
  %71 = zext i32 %70 to i64
  %72 = shl i64 %71, 48
  %73 = and i64 %31, 281474976710655
  %74 = or i64 %72, %73
  store i64 %74, ptr %5, align 8
  %75 = ashr exact i64 %72, 48
  %76 = trunc i64 %75 to i32
  %77 = icmp ne i32 %70, %76
  %78 = load i1, ptr @set_precision.__already_done, align 1
  %79 = xor i1 %78, true
  %80 = select i1 %77, i1 %79, i1 false
  br i1 %80, label %81, label %82, !prof !10

81:                                               ; preds = %68
  store i1 true, ptr @set_precision.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2692, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %70) #20
  br label %82

82:                                               ; preds = %81, %68
  br i1 %77, label %83, label %261

83:                                               ; preds = %82
  %84 = call i32 @llvm.smax.i32(i32 %70, i32 0) #20
  %85 = call i32 @llvm.umin.i32(i32 %84, i32 32767) #20
  %86 = zext i32 %85 to i64
  %87 = load i64, ptr %5, align 8
  %88 = shl nuw nsw i64 %86, 48
  %89 = and i64 %87, 281474976710655
  %90 = or i64 %89, %88
  store i64 %90, ptr %5, align 8
  br label %261

91:                                               ; preds = %25
  %92 = and i64 %31, 8589934592
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %127

94:                                               ; preds = %91
  %95 = lshr i32 %33, 8
  %96 = add nuw nsw i32 %95, 16777215
  %97 = and i32 %96, 16777215
  %98 = zext i32 %97 to i64
  %99 = shl nuw nsw i64 %98, 8
  %100 = and i64 %31, -4294967041
  %101 = or i64 %99, %100
  store i64 %101, ptr %5, align 8
  %102 = shl nuw i64 %98, 40
  %103 = ashr exact i64 %102, 40
  %104 = trunc i64 %103 to i32
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %112, %94
  %107 = phi i64 [ %122, %112 ], [ %101, %94 ]
  %108 = phi ptr [ %114, %112 ], [ %27, %94 ]
  %109 = icmp ult ptr %108, %20
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  store i8 32, ptr %108, align 1
  %111 = load i64, ptr %5, align 8
  br label %112

112:                                              ; preds = %110, %106
  %113 = phi i64 [ %111, %110 ], [ %107, %106 ]
  %114 = getelementptr i8, ptr %108, i32 1
  %115 = trunc i64 %113 to i32
  %116 = lshr i32 %115, 8
  %117 = add nuw nsw i32 %116, 16777215
  %118 = and i32 %117, 16777215
  %119 = zext i32 %118 to i64
  %120 = shl nuw nsw i64 %119, 8
  %121 = and i64 %113, -4294967041
  %122 = or i64 %120, %121
  store i64 %122, ptr %5, align 8
  %123 = shl nuw i64 %119, 40
  %124 = ashr exact i64 %123, 40
  %125 = trunc i64 %124 to i32
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %106, label %127

127:                                              ; preds = %112, %94, %91
  %128 = phi i64 [ %31, %91 ], [ %101, %94 ], [ %122, %112 ]
  %129 = phi ptr [ %27, %91 ], [ %27, %94 ], [ %114, %112 ]
  %130 = getelementptr inbounds i8, ptr %26, i32 4
  %131 = icmp ult ptr %129, %20
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load i32, ptr %26, align 4
  %134 = trunc i32 %133 to i8
  store i8 %134, ptr %129, align 1
  %135 = load i64, ptr %5, align 8
  br label %136

136:                                              ; preds = %132, %127
  %137 = phi i64 [ %135, %132 ], [ %128, %127 ]
  %138 = getelementptr i8, ptr %129, i32 1
  %139 = trunc i64 %137 to i32
  %140 = lshr i32 %139, 8
  %141 = add nuw nsw i32 %140, 16777215
  %142 = and i32 %141, 16777215
  %143 = zext i32 %142 to i64
  %144 = shl nuw nsw i64 %143, 8
  %145 = and i64 %137, -4294967041
  %146 = or i64 %144, %145
  store i64 %146, ptr %5, align 8
  %147 = shl nuw i64 %143, 40
  %148 = ashr exact i64 %147, 40
  %149 = trunc i64 %148 to i32
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %261

151:                                              ; preds = %157, %136
  %152 = phi i64 [ %167, %157 ], [ %146, %136 ]
  %153 = phi ptr [ %159, %157 ], [ %138, %136 ]
  %154 = icmp ult ptr %153, %20
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  store i8 32, ptr %153, align 1
  %156 = load i64, ptr %5, align 8
  br label %157

157:                                              ; preds = %155, %151
  %158 = phi i64 [ %156, %155 ], [ %152, %151 ]
  %159 = getelementptr i8, ptr %153, i32 1
  %160 = trunc i64 %158 to i32
  %161 = lshr i32 %160, 8
  %162 = add nuw nsw i32 %161, 16777215
  %163 = and i32 %162, 16777215
  %164 = zext i32 %163 to i64
  %165 = shl nuw nsw i64 %164, 8
  %166 = and i64 %158, -4294967041
  %167 = or i64 %165, %166
  store i64 %167, ptr %5, align 8
  %168 = shl nuw i64 %164, 40
  %169 = ashr exact i64 %168, 40
  %170 = trunc i64 %169 to i32
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %151, label %261

172:                                              ; preds = %25
  %173 = getelementptr inbounds i8, ptr %26, i32 4
  %174 = load ptr, ptr %26, align 4
  %175 = insertvalue [2 x i32] poison, i32 %33, 0
  %176 = insertvalue [2 x i32] %175, i32 %35, 1
  %177 = call fastcc ptr @string(ptr noundef %27, ptr noundef %20, ptr noundef %174, [2 x i32] %176)
  br label %261

178:                                              ; preds = %25
  %179 = load ptr, ptr %26, align 4
  %180 = insertvalue [2 x i32] poison, i32 %33, 0
  %181 = insertvalue [2 x i32] %180, i32 %35, 1
  %182 = call fastcc ptr @pointer(ptr noundef %30, ptr noundef %27, ptr noundef %20, ptr noundef %179, [2 x i32] %181)
  br label %183

183:                                              ; preds = %183, %178
  %184 = phi ptr [ %30, %178 ], [ %191, %183 ]
  %185 = load i8, ptr %184, align 1
  %186 = zext i8 %185 to i32
  %187 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %186
  %188 = load i8, ptr %187, align 1
  %189 = and i8 %188, 7
  %190 = icmp eq i8 %189, 0
  %191 = getelementptr i8, ptr %184, i32 1
  br i1 %190, label %259, label %183

192:                                              ; preds = %25
  %193 = icmp ult ptr %27, %20
  br i1 %193, label %194, label %195

194:                                              ; preds = %192
  store i8 37, ptr %27, align 1
  br label %195

195:                                              ; preds = %194, %192
  %196 = getelementptr i8, ptr %27, i32 1
  br label %261

197:                                              ; preds = %25
  %198 = ptrtoint ptr %26 to i32
  %199 = add i32 %198, 7
  %200 = and i32 %199, -8
  %201 = inttoptr i32 %200 to ptr
  %202 = getelementptr inbounds i8, ptr %201, i32 8
  %203 = load i64, ptr %201, align 8
  br label %253

204:                                              ; preds = %25
  %205 = getelementptr inbounds i8, ptr %26, i32 4
  %206 = load i32, ptr %26, align 4
  %207 = zext i32 %206 to i64
  br label %253

208:                                              ; preds = %25
  %209 = getelementptr inbounds i8, ptr %26, i32 4
  %210 = load i32, ptr %26, align 4
  %211 = sext i32 %210 to i64
  br label %253

212:                                              ; preds = %25
  %213 = and i64 %31, 4294967296
  %214 = icmp eq i64 %213, 0
  %215 = getelementptr inbounds i8, ptr %26, i32 4
  %216 = load i32, ptr %26, align 4
  br i1 %214, label %219, label %217

217:                                              ; preds = %212
  %218 = sext i32 %216 to i64
  br label %253

219:                                              ; preds = %212
  %220 = zext i32 %216 to i64
  br label %253

221:                                              ; preds = %25
  %222 = getelementptr inbounds i8, ptr %26, i32 4
  %223 = load i32, ptr %26, align 4
  %224 = sext i32 %223 to i64
  br label %253

225:                                              ; preds = %25
  %226 = getelementptr inbounds i8, ptr %26, i32 4
  %227 = load i32, ptr %26, align 4
  %228 = and i32 %227, 255
  %229 = zext i32 %228 to i64
  br label %253

230:                                              ; preds = %25
  %231 = getelementptr inbounds i8, ptr %26, i32 4
  %232 = load i32, ptr %26, align 4
  %233 = trunc i32 %232 to i8
  %234 = sext i8 %233 to i64
  br label %253

235:                                              ; preds = %25
  %236 = getelementptr inbounds i8, ptr %26, i32 4
  %237 = load i32, ptr %26, align 4
  %238 = and i32 %237, 65535
  %239 = zext i32 %238 to i64
  br label %253

240:                                              ; preds = %25
  %241 = getelementptr inbounds i8, ptr %26, i32 4
  %242 = load i32, ptr %26, align 4
  %243 = trunc i32 %242 to i16
  %244 = sext i16 %243 to i64
  br label %253

245:                                              ; preds = %25
  %246 = getelementptr inbounds i8, ptr %26, i32 4
  %247 = load i32, ptr %26, align 4
  %248 = sext i32 %247 to i64
  br label %253

249:                                              ; preds = %25
  %250 = getelementptr inbounds i8, ptr %26, i32 4
  %251 = load i32, ptr %26, align 4
  %252 = zext i32 %251 to i64
  br label %253

253:                                              ; preds = %249, %245, %240, %235, %230, %225, %221, %219, %217, %208, %204, %197
  %254 = phi i64 [ %252, %249 ], [ %248, %245 ], [ %244, %240 ], [ %239, %235 ], [ %234, %230 ], [ %229, %225 ], [ %224, %221 ], [ %218, %217 ], [ %220, %219 ], [ %211, %208 ], [ %207, %204 ], [ %203, %197 ]
  %255 = phi ptr [ %250, %249 ], [ %246, %245 ], [ %241, %240 ], [ %236, %235 ], [ %231, %230 ], [ %226, %225 ], [ %222, %221 ], [ %215, %217 ], [ %215, %219 ], [ %209, %208 ], [ %205, %204 ], [ %202, %197 ]
  %256 = insertvalue [2 x i32] poison, i32 %33, 0
  %257 = insertvalue [2 x i32] %256, i32 %35, 1
  %258 = call fastcc ptr @number(ptr noundef %27, ptr noundef %20, i64 noundef %254, [2 x i32] %257)
  br label %261

259:                                              ; preds = %183
  %260 = getelementptr inbounds i8, ptr %26, i32 4
  br label %261

261:                                              ; preds = %259, %253, %195, %172, %157, %136, %83, %82, %60, %59, %42
  %262 = phi ptr [ %30, %253 ], [ %30, %195 ], [ %30, %172 ], [ %30, %42 ], [ %30, %59 ], [ %30, %60 ], [ %30, %82 ], [ %30, %83 ], [ %30, %136 ], [ %184, %259 ], [ %30, %157 ]
  %263 = phi ptr [ %258, %253 ], [ %196, %195 ], [ %177, %172 ], [ %43, %42 ], [ %27, %59 ], [ %27, %60 ], [ %27, %82 ], [ %27, %83 ], [ %138, %136 ], [ %182, %259 ], [ %159, %157 ]
  %264 = phi ptr [ %255, %253 ], [ %26, %195 ], [ %173, %172 ], [ %26, %42 ], [ %45, %59 ], [ %45, %60 ], [ %69, %82 ], [ %69, %83 ], [ %130, %136 ], [ %260, %259 ], [ %130, %157 ]
  %265 = load i8, ptr %262, align 1
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %267, label %25

267:                                              ; preds = %261, %25, %14
  %268 = phi ptr [ %0, %14 ], [ %263, %261 ], [ %27, %25 ]
  %269 = icmp eq i32 %19, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %267
  %271 = icmp ult ptr %268, %20
  %272 = getelementptr i8, ptr %20, i32 -1
  %273 = select i1 %271, ptr %268, ptr %272
  store i8 0, ptr %273, align 1
  br label %274

274:                                              ; preds = %270, %267
  %275 = ptrtoint ptr %268 to i32
  %276 = sub i32 %275, %17
  br label %277

277:                                              ; preds = %274, %13
  %278 = phi i32 [ %276, %274 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret i32 %278
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @format_decode(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  %4 = load i64, ptr %1, align 1
  %5 = trunc i64 %4 to i8
  switch i8 %5, label %33 [
    i8 1, label %6
    i8 2, label %26
  ]

6:                                                ; preds = %2
  %7 = shl i64 %4, 32
  %8 = ashr i64 %7, 40
  %9 = trunc i64 %8 to i32
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %6
  %12 = mul i32 %9, -256
  %13 = zext i32 %12 to i64
  %14 = and i64 %4, -1099511627521
  %15 = or i64 %14, %13
  %16 = lshr i64 %4, 32
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 253
  %19 = or i32 %18, 2
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 32
  %22 = or i64 %15, %21
  br label %23

23:                                               ; preds = %11, %6
  %24 = phi i64 [ %22, %11 ], [ %4, %6 ]
  %25 = and i64 %24, -256
  br label %88

26:                                               ; preds = %2
  %27 = ashr i64 %4, 48
  %28 = and i64 %27, 2147483648
  %29 = icmp eq i64 %28, 0
  %30 = and i64 %4, 281474976710400
  %31 = select i1 %29, i64 %4, i64 %30
  %32 = and i64 %31, -256
  store i64 %32, ptr %1, align 1
  br label %118

33:                                               ; preds = %2
  %34 = and i64 %4, -256
  store i64 %34, ptr %1, align 1
  %35 = load ptr, ptr %3, align 4
  br label %36

36:                                               ; preds = %40, %33
  %37 = phi ptr [ %41, %40 ], [ %35, %33 ]
  %38 = phi ptr [ %41, %40 ], [ %0, %33 ]
  %39 = load i8, ptr %38, align 1
  switch i8 %39, label %40 [
    i8 0, label %42
    i8 37, label %42
  ]

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %38, i32 1
  br label %36

42:                                               ; preds = %36, %36
  store ptr %37, ptr %3, align 4
  %43 = icmp ne ptr %38, %0
  %44 = icmp eq i8 %39, 0
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %222, label %46

46:                                               ; preds = %42
  %47 = and i64 %4, -1095216660736
  br label %48

48:                                               ; preds = %57, %46
  %49 = phi i64 [ %67, %57 ], [ %47, %46 ]
  %50 = phi ptr [ %51, %57 ], [ %0, %46 ]
  store i64 %49, ptr %1, align 1
  %51 = getelementptr i8, ptr %50, i32 1
  %52 = load i8, ptr %51, align 1
  switch i8 %52, label %68 [
    i8 45, label %57
    i8 43, label %53
    i8 32, label %54
    i8 35, label %55
    i8 48, label %56
  ]

53:                                               ; preds = %48
  br label %57

54:                                               ; preds = %48
  br label %57

55:                                               ; preds = %48
  br label %57

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %55, %54, %53, %48
  %58 = phi i32 [ 239, %56 ], [ 191, %55 ], [ 247, %54 ], [ 251, %53 ], [ 253, %48 ]
  %59 = phi i32 [ 16, %56 ], [ 64, %55 ], [ 8, %54 ], [ 4, %53 ], [ 2, %48 ]
  %60 = lshr i64 %49, 32
  %61 = trunc i64 %60 to i32
  %62 = and i32 %58, %61
  %63 = or i32 %62, %59
  %64 = zext i32 %63 to i64
  %65 = shl nuw nsw i64 %64, 32
  %66 = and i64 %49, -1095216660481
  %67 = or i64 %65, %66
  br label %48

68:                                               ; preds = %48
  store ptr %51, ptr %3, align 4
  %69 = or i64 %49, 4294967040
  store i64 %69, ptr %1, align 1
  %70 = load i8, ptr %51, align 1
  %71 = zext i8 %70 to i32
  %72 = add nsw i32 %71, -58
  %73 = icmp ult i32 %72, -10
  br i1 %73, label %82, label %74

74:                                               ; preds = %68
  %75 = call fastcc i32 @skip_atoi(ptr noundef nonnull %3)
  %76 = load i64, ptr %1, align 1
  %77 = shl i32 %75, 8
  %78 = zext i32 %77 to i64
  %79 = and i64 %76, -4294967041
  %80 = or i64 %79, %78
  %81 = load ptr, ptr %3, align 4
  br label %88

82:                                               ; preds = %68
  %83 = icmp eq i8 %70, 42
  br i1 %83, label %84, label %88

84:                                               ; preds = %82
  %85 = and i64 %69, -256
  %86 = or i64 %85, 1
  store i64 %86, ptr %1, align 1
  %87 = getelementptr i8, ptr %50, i32 2
  store ptr %87, ptr %3, align 4
  br label %222

88:                                               ; preds = %82, %74, %23
  %89 = phi ptr [ %81, %74 ], [ %51, %82 ], [ %0, %23 ]
  %90 = phi i64 [ %80, %74 ], [ %69, %82 ], [ %25, %23 ]
  %91 = or i64 %90, -281474976710656
  store i64 %91, ptr %1, align 1
  %92 = load i8, ptr %89, align 1
  %93 = icmp eq i8 %92, 46
  br i1 %93, label %94, label %122

94:                                               ; preds = %88
  %95 = getelementptr i8, ptr %89, i32 1
  store ptr %95, ptr %3, align 4
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = add nsw i32 %97, -58
  %99 = icmp ult i32 %98, -10
  br i1 %99, label %112, label %100

100:                                              ; preds = %94
  %101 = call fastcc i32 @skip_atoi(ptr noundef nonnull %3)
  %102 = load i64, ptr %1, align 1
  %103 = zext i32 %101 to i64
  %104 = shl i64 %103, 48
  %105 = and i64 %102, 281474976710655
  %106 = ashr exact i64 %104, 48
  %107 = and i64 %106, 2147483648
  %108 = icmp eq i64 %107, 0
  %109 = select i1 %108, i64 %104, i64 0
  %110 = or i64 %109, %105
  store i64 %110, ptr %1, align 1
  %111 = load ptr, ptr %3, align 4
  br label %118

112:                                              ; preds = %94
  %113 = icmp eq i8 %96, 42
  br i1 %113, label %114, label %118

114:                                              ; preds = %112
  %115 = and i64 %91, -256
  %116 = or i64 %115, 2
  store i64 %116, ptr %1, align 1
  %117 = getelementptr i8, ptr %89, i32 2
  store ptr %117, ptr %3, align 4
  br label %222

118:                                              ; preds = %112, %100, %26
  %119 = phi i64 [ %32, %26 ], [ %91, %112 ], [ %110, %100 ]
  %120 = phi ptr [ %0, %26 ], [ %95, %112 ], [ %111, %100 ]
  %121 = load i8, ptr %120, align 1
  br label %122

122:                                              ; preds = %118, %88
  %123 = phi i8 [ %121, %118 ], [ %92, %88 ]
  %124 = phi i64 [ %119, %118 ], [ %91, %88 ]
  %125 = phi ptr [ %120, %118 ], [ %89, %88 ]
  switch i8 %123, label %136 [
    i8 108, label %126
    i8 104, label %126
    i8 76, label %126
    i8 122, label %126
    i8 116, label %126
  ]

126:                                              ; preds = %122, %122, %122, %122, %122
  %127 = getelementptr i8, ptr %125, i32 1
  store ptr %127, ptr %3, align 4
  %128 = load i8, ptr %125, align 1
  %129 = load i8, ptr %127, align 1
  %130 = icmp eq i8 %128, %129
  br i1 %130, label %131, label %136, !prof !10

131:                                              ; preds = %126
  switch i8 %128, label %136 [
    i8 108, label %132
    i8 104, label %134
  ]

132:                                              ; preds = %131
  %133 = getelementptr i8, ptr %125, i32 2
  store ptr %133, ptr %3, align 4
  br label %136

134:                                              ; preds = %131
  %135 = getelementptr i8, ptr %125, i32 2
  store ptr %135, ptr %3, align 4
  br label %136

136:                                              ; preds = %134, %132, %131, %126, %122
  %137 = phi ptr [ %133, %132 ], [ %135, %134 ], [ %127, %126 ], [ %127, %131 ], [ %125, %122 ]
  %138 = phi i8 [ 76, %132 ], [ 72, %134 ], [ %128, %126 ], [ %128, %131 ], [ 0, %122 ]
  %139 = and i64 %124, -280375465082881
  %140 = or i64 %139, 10995116277760
  store i64 %140, ptr %1, align 1
  %141 = load i8, ptr %137, align 1
  switch i8 %141, label %182 [
    i8 99, label %142
    i8 115, label %146
    i8 112, label %150
    i8 37, label %154
    i8 111, label %158
    i8 120, label %160
    i8 88, label %169
    i8 100, label %173
    i8 105, label %173
    i8 117, label %192
  ]

142:                                              ; preds = %136
  %143 = and i64 %140, -269380348805376
  %144 = or i64 %143, 3
  store i64 %144, ptr %1, align 1
  %145 = getelementptr i8, ptr %137, i32 1
  store ptr %145, ptr %3, align 4
  br label %222

146:                                              ; preds = %136
  %147 = and i64 %140, -269380348805376
  %148 = or i64 %147, 4
  store i64 %148, ptr %1, align 1
  %149 = getelementptr i8, ptr %137, i32 1
  store ptr %149, ptr %3, align 4
  br label %222

150:                                              ; preds = %136
  %151 = and i64 %140, -269380348805376
  %152 = or i64 %151, 5
  store i64 %152, ptr %1, align 1
  %153 = getelementptr i8, ptr %137, i32 1
  store ptr %153, ptr %3, align 4
  br label %222

154:                                              ; preds = %136
  %155 = and i64 %140, -269380348805376
  %156 = or i64 %155, 6
  store i64 %156, ptr %1, align 1
  %157 = getelementptr i8, ptr %137, i32 1
  store ptr %157, ptr %3, align 4
  br label %222

158:                                              ; preds = %136
  %159 = or i64 %139, 8796093022208
  br label %192

160:                                              ; preds = %136
  %161 = lshr i64 %124, 32
  %162 = trunc i64 %161 to i32
  %163 = and i32 %162, 223
  %164 = or i32 %163, 32
  %165 = zext i32 %164 to i64
  %166 = shl nuw nsw i64 %165, 32
  %167 = and i64 %140, -270475565465601
  %168 = or i64 %166, %167
  br label %169

169:                                              ; preds = %160, %136
  %170 = phi i64 [ %140, %136 ], [ %168, %160 ]
  %171 = and i64 %170, -280375465082881
  %172 = or i64 %171, 17592186044416
  br label %192

173:                                              ; preds = %136, %136
  %174 = lshr i64 %124, 32
  %175 = trunc i64 %174 to i32
  %176 = and i32 %175, 254
  %177 = or i32 %176, 1
  %178 = zext i32 %177 to i64
  %179 = shl nuw nsw i64 %178, 32
  %180 = and i64 %140, -270475565465601
  %181 = or i64 %179, %180
  br label %192

182:                                              ; preds = %136
  %183 = load i1, ptr @format_decode.__already_done, align 1
  br i1 %183, label %188, label %184, !prof !11

184:                                              ; preds = %182
  store i1 true, ptr @format_decode.__already_done, align 1
  %185 = load i8, ptr %137, align 1
  %186 = zext i8 %185 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2651, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef %186) #20
  %187 = load i64, ptr %1, align 1
  br label %188

188:                                              ; preds = %184, %182
  %189 = phi i64 [ %187, %184 ], [ %140, %182 ]
  %190 = and i64 %189, -256
  %191 = or i64 %190, 7
  store i64 %191, ptr %1, align 1
  br label %222

192:                                              ; preds = %173, %169, %158, %136
  %193 = phi i64 [ %140, %136 ], [ %181, %173 ], [ %172, %169 ], [ %159, %158 ]
  switch i8 %138, label %211 [
    i8 76, label %216
    i8 108, label %194
    i8 122, label %199
    i8 116, label %200
    i8 72, label %201
    i8 104, label %206
  ]

194:                                              ; preds = %192
  %195 = lshr i64 %193, 32
  %196 = trunc i64 %195 to i32
  %197 = and i32 %196, 1
  %198 = add nuw nsw i32 %197, 9
  br label %216

199:                                              ; preds = %192
  br label %216

200:                                              ; preds = %192
  br label %216

201:                                              ; preds = %192
  %202 = lshr i64 %193, 32
  %203 = trunc i64 %202 to i32
  %204 = and i32 %203, 1
  %205 = add nuw nsw i32 %204, 11
  br label %216

206:                                              ; preds = %192
  %207 = lshr i64 %193, 32
  %208 = trunc i64 %207 to i32
  %209 = and i32 %208, 1
  %210 = add nuw nsw i32 %209, 13
  br label %216

211:                                              ; preds = %192
  %212 = lshr i64 %193, 32
  %213 = trunc i64 %212 to i32
  %214 = and i32 %213, 1
  %215 = add nuw nsw i32 %214, 15
  br label %216

216:                                              ; preds = %211, %206, %201, %200, %199, %194, %192
  %217 = phi i32 [ %198, %194 ], [ 18, %200 ], [ %210, %206 ], [ %215, %211 ], [ %205, %201 ], [ 17, %199 ], [ 8, %192 ]
  %218 = zext i32 %217 to i64
  %219 = and i64 %193, -256
  %220 = or i64 %219, %218
  store i64 %220, ptr %1, align 1
  %221 = getelementptr i8, ptr %137, i32 1
  store ptr %221, ptr %3, align 4
  br label %222

222:                                              ; preds = %216, %188, %154, %150, %146, %142, %114, %84, %42
  %223 = phi ptr [ %221, %216 ], [ %137, %188 ], [ %157, %154 ], [ %153, %150 ], [ %149, %146 ], [ %145, %142 ], [ %117, %114 ], [ %87, %84 ], [ %38, %42 ]
  %224 = ptrtoint ptr %223 to i32
  %225 = ptrtoint ptr %0 to i32
  %226 = sub i32 %224, %225
  ret i32 %226
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @string(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, [2 x i32] %3) unnamed_addr #10 {
  %5 = icmp eq ptr %2, null
  %6 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  %7 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  %9 = select i1 %8, ptr @.str.60, ptr null
  %10 = select i1 %5, ptr @.str.59, ptr %9
  %11 = icmp eq ptr %10, null
  %12 = extractvalue [2 x i32] %3, 1
  %13 = zext i32 %12 to i64
  %14 = shl nuw i64 %13, 32
  %15 = ashr i64 %14, 48
  %16 = trunc i64 %15 to i32
  br i1 %11, label %48, label %17

17:                                               ; preds = %4
  %18 = icmp eq i32 %16, -1
  %19 = and i32 %12, 65535
  %20 = or i32 %19, 524288
  %21 = select i1 %18, i32 %20, i32 %12
  %22 = zext i32 %21 to i64
  %23 = shl nuw i64 %22, 32
  %24 = ashr i64 %23, 48
  %25 = trunc i64 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %39, %17
  %28 = phi i32 [ %32, %39 ], [ %25, %17 ]
  %29 = phi i32 [ %41, %39 ], [ 0, %17 ]
  %30 = phi ptr [ %33, %39 ], [ %10, %17 ]
  %31 = phi ptr [ %40, %39 ], [ %0, %17 ]
  %32 = add i32 %28, -1
  %33 = getelementptr i8, ptr %30, i32 1
  %34 = load i8, ptr %30, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %27
  %37 = icmp ult ptr %31, %1
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  store i8 %34, ptr %31, align 1
  br label %39

39:                                               ; preds = %38, %36
  %40 = getelementptr i8, ptr %31, i32 1
  %41 = add nuw i32 %29, 1
  %42 = icmp eq i32 %32, 0
  br i1 %42, label %43, label %27

43:                                               ; preds = %39, %27, %17
  %44 = phi ptr [ %0, %17 ], [ %40, %39 ], [ %31, %27 ]
  %45 = phi i32 [ 0, %17 ], [ %25, %39 ], [ %29, %27 ]
  %46 = insertvalue [2 x i32] %3, i32 %21, 1
  %47 = tail call fastcc ptr @widen_string(ptr noundef %44, i32 noundef %45, ptr noundef %1, [2 x i32] %46) #20
  br label %70

48:                                               ; preds = %4
  %49 = icmp eq i32 %16, 0
  br i1 %49, label %66, label %50

50:                                               ; preds = %62, %48
  %51 = phi i32 [ %55, %62 ], [ %16, %48 ]
  %52 = phi i32 [ %64, %62 ], [ 0, %48 ]
  %53 = phi ptr [ %56, %62 ], [ %2, %48 ]
  %54 = phi ptr [ %63, %62 ], [ %0, %48 ]
  %55 = add i32 %51, -1
  %56 = getelementptr i8, ptr %53, i32 1
  %57 = load i8, ptr %53, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %50
  %60 = icmp ult ptr %54, %1
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  store i8 %57, ptr %54, align 1
  br label %62

62:                                               ; preds = %61, %59
  %63 = getelementptr i8, ptr %54, i32 1
  %64 = add nuw i32 %52, 1
  %65 = icmp eq i32 %55, 0
  br i1 %65, label %66, label %50

66:                                               ; preds = %62, %50, %48
  %67 = phi ptr [ %0, %48 ], [ %63, %62 ], [ %54, %50 ]
  %68 = phi i32 [ 0, %48 ], [ %16, %62 ], [ %52, %50 ]
  %69 = tail call fastcc ptr @widen_string(ptr noundef %67, i32 noundef %68, ptr noundef %1, [2 x i32] %3) #20
  br label %70

70:                                               ; preds = %66, %43
  %71 = phi ptr [ %47, %43 ], [ %69, %66 ]
  ret ptr %71
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @pointer(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4) unnamed_addr #0 {
  %6 = alloca %struct.__va_list, align 4
  %7 = load i8, ptr %0, align 1
  switch i8 %7, label %228 [
    i8 83, label %8
    i8 115, label %8
    i8 66, label %8
    i8 82, label %10
    i8 114, label %10
    i8 104, label %12
    i8 98, label %14
    i8 77, label %22
    i8 109, label %22
    i8 73, label %24
    i8 105, label %24
    i8 69, label %26
    i8 85, label %28
    i8 86, label %30
    i8 75, label %89
    i8 78, label %91
    i8 52, label %93
    i8 97, label %95
    i8 100, label %97
    i8 116, label %99
    i8 67, label %101
    i8 68, label %103
    i8 103, label %105
    i8 71, label %107
    i8 79, label %109
    i8 102, label %112
    i8 120, label %115
    i8 101, label %147
    i8 117, label %151
    i8 107, label %151
  ]

8:                                                ; preds = %5, %5, %5
  %9 = tail call fastcc ptr @symbol_string(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4, ptr noundef %0)
  br label %235

10:                                               ; preds = %5, %5
  %11 = tail call fastcc ptr @resource_string(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4, ptr noundef %0)
  br label %235

12:                                               ; preds = %5
  %13 = tail call fastcc ptr @hex_string(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4, ptr noundef %0)
  br label %235

14:                                               ; preds = %5
  %15 = getelementptr i8, ptr %0, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 108
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @bitmap_list_string(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4)
  br label %235

20:                                               ; preds = %14
  %21 = tail call fastcc ptr @bitmap_string(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4)
  br label %235

22:                                               ; preds = %5, %5
  %23 = tail call fastcc ptr @mac_address_string(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4, ptr noundef %0)
  br label %235

24:                                               ; preds = %5, %5
  %25 = tail call fastcc ptr @ip_addr_string(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4, ptr noundef %0)
  br label %235

26:                                               ; preds = %5
  %27 = tail call fastcc ptr @escaped_string(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4, ptr noundef %0)
  br label %235

28:                                               ; preds = %5
  %29 = tail call fastcc ptr @uuid_string(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4, ptr noundef %0)
  br label %235

30:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  store i32 0, ptr %6, align 4, !annotation !8
  %31 = icmp eq ptr %3, null
  %32 = icmp ult ptr %3, inttoptr (i32 4096 to ptr)
  %33 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %34 = or i1 %32, %33
  %35 = select i1 %34, ptr @.str.60, ptr null
  %36 = select i1 %31, ptr @.str.59, ptr %35
  %37 = icmp eq ptr %36, null
  br i1 %37, label %74, label %38

38:                                               ; preds = %30
  %39 = extractvalue [2 x i32] %4, 1
  %40 = zext i32 %39 to i64
  %41 = shl nuw i64 %40, 32
  %42 = ashr i64 %41, 48
  %43 = trunc i64 %42 to i32
  %44 = icmp eq i32 %43, -1
  %45 = and i32 %39, 65535
  %46 = or i32 %45, 524288
  %47 = select i1 %44, i32 %46, i32 %39
  %48 = zext i32 %47 to i64
  %49 = shl nuw i64 %48, 32
  %50 = ashr i64 %49, 48
  %51 = trunc i64 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %65, %38
  %54 = phi i32 [ %58, %65 ], [ %51, %38 ]
  %55 = phi i32 [ %67, %65 ], [ 0, %38 ]
  %56 = phi ptr [ %59, %65 ], [ %36, %38 ]
  %57 = phi ptr [ %66, %65 ], [ %1, %38 ]
  %58 = add i32 %54, -1
  %59 = getelementptr i8, ptr %56, i32 1
  %60 = load i8, ptr %56, align 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %53
  %63 = icmp ult ptr %57, %2
  br i1 %63, label %64, label %65

64:                                               ; preds = %62
  store i8 %60, ptr %57, align 1
  br label %65

65:                                               ; preds = %64, %62
  %66 = getelementptr i8, ptr %57, i32 1
  %67 = add nuw i32 %55, 1
  %68 = icmp eq i32 %58, 0
  br i1 %68, label %69, label %53

69:                                               ; preds = %65, %53, %38
  %70 = phi ptr [ %1, %38 ], [ %57, %53 ], [ %66, %65 ]
  %71 = phi i32 [ 0, %38 ], [ %55, %53 ], [ %51, %65 ]
  %72 = insertvalue [2 x i32] %4, i32 %47, 1
  %73 = tail call fastcc ptr @widen_string(ptr noundef %70, i32 noundef %71, ptr noundef %2, [2 x i32] %72) #20
  br label %87

74:                                               ; preds = %30
  %75 = getelementptr inbounds %struct.va_format, ptr %3, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  call void @llvm.va_copy(ptr nonnull %6, ptr %76) #20
  %77 = icmp ult ptr %1, %2
  %78 = ptrtoint ptr %2 to i32
  %79 = ptrtoint ptr %1 to i32
  %80 = sub i32 %78, %79
  %81 = select i1 %77, i32 %80, i32 0
  %82 = load ptr, ptr %3, align 4
  %83 = load i32, ptr %6, align 4
  %84 = insertvalue [1 x i32] poison, i32 %83, 0
  %85 = call i32 @vsnprintf(ptr noundef %1, i32 noundef %81, ptr noundef %82, [1 x i32] %84) #20
  %86 = getelementptr i8, ptr %1, i32 %85
  call void @llvm.va_end(ptr nonnull %6) #20
  br label %87

87:                                               ; preds = %74, %69
  %88 = phi ptr [ %86, %74 ], [ %73, %69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  br label %235

89:                                               ; preds = %5
  %90 = tail call fastcc ptr @restricted_pointer(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4)
  br label %235

91:                                               ; preds = %5
  %92 = tail call fastcc ptr @netdev_bits(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4, ptr noundef %0)
  br label %235

93:                                               ; preds = %5
  %94 = tail call fastcc ptr @fourcc_string(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4, ptr noundef %0)
  br label %235

95:                                               ; preds = %5
  %96 = tail call fastcc ptr @address_val(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4, ptr noundef %0)
  br label %235

97:                                               ; preds = %5
  %98 = tail call fastcc ptr @dentry_name(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4, ptr noundef %0)
  br label %235

99:                                               ; preds = %5
  %100 = tail call fastcc ptr @time_and_date(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4, ptr noundef %0)
  br label %235

101:                                              ; preds = %5
  %102 = tail call fastcc ptr @clock(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4, ptr noundef %0)
  br label %235

103:                                              ; preds = %5
  %104 = tail call fastcc ptr @file_dentry_name(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4, ptr noundef %0)
  br label %235

105:                                              ; preds = %5
  %106 = tail call fastcc ptr @bdev_name(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4)
  br label %235

107:                                              ; preds = %5
  %108 = tail call fastcc ptr @flags_string(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4, ptr noundef %0)
  br label %235

109:                                              ; preds = %5
  %110 = getelementptr i8, ptr %0, i32 1
  %111 = tail call fastcc ptr @device_node_string(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4, ptr noundef %110)
  br label %235

112:                                              ; preds = %5
  %113 = getelementptr i8, ptr %0, i32 1
  %114 = tail call fastcc ptr @fwnode_string(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4, ptr noundef %113)
  br label %235

115:                                              ; preds = %5
  %116 = extractvalue [2 x i32] %4, 0
  %117 = extractvalue [2 x i32] %4, 1
  %118 = and i32 %117, -65313
  %119 = or i32 %118, 4128
  %120 = zext i32 %116 to i64
  %121 = shl nuw i64 %120, 32
  %122 = ashr i64 %121, 40
  %123 = trunc i64 %122 to i32
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %139

125:                                              ; preds = %115
  %126 = or i64 %120, 2048
  %127 = zext i32 %119 to i64
  %128 = shl nuw i64 %127, 32
  %129 = or i64 %128, %126
  %130 = and i32 %117, 207
  %131 = or i32 %130, 48
  %132 = zext i32 %131 to i64
  %133 = shl nuw nsw i64 %132, 32
  %134 = and i64 %129, -263882790663937
  %135 = or i64 %134, %133
  %136 = trunc i64 %134 to i32
  %137 = lshr i64 %135, 32
  %138 = trunc i64 %137 to i32
  br label %139

139:                                              ; preds = %125, %115
  %140 = phi i32 [ %136, %125 ], [ %116, %115 ]
  %141 = phi i32 [ %138, %125 ], [ %119, %115 ]
  %142 = ptrtoint ptr %3 to i32
  %143 = zext i32 %142 to i64
  %144 = insertvalue [2 x i32] poison, i32 %140, 0
  %145 = insertvalue [2 x i32] %144, i32 %141, 1
  %146 = tail call fastcc ptr @number(ptr noundef %1, ptr noundef %2, i64 noundef %143, [2 x i32] %145) #20
  br label %235

147:                                              ; preds = %5
  %148 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %148, label %149, label %228

149:                                              ; preds = %147
  %150 = tail call fastcc ptr @err_ptr(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, [2 x i32] %4)
  br label %235

151:                                              ; preds = %5, %5
  %152 = getelementptr i8, ptr %0, i32 1
  %153 = load i8, ptr %152, align 1
  %154 = icmp eq i8 %153, 115
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = tail call fastcc ptr @string(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4)
  br label %235

157:                                              ; preds = %151
  %158 = extractvalue [2 x i32] %4, 1
  %159 = zext i32 %158 to i64
  %160 = shl nuw i64 %159, 32
  %161 = ashr i64 %160, 48
  %162 = trunc i64 %161 to i32
  %163 = icmp eq i32 %162, -1
  %164 = and i32 %158, 65535
  %165 = or i32 %164, 524288
  %166 = select i1 %163, i32 %165, i32 %158
  %167 = zext i32 %166 to i64
  %168 = shl nuw i64 %167, 32
  %169 = ashr i64 %168, 48
  %170 = trunc i64 %169 to i32
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %223, label %172

172:                                              ; preds = %157
  %173 = add nsw i32 %170, -1
  %174 = tail call i32 @llvm.umin.i32(i32 %173, i32 8)
  %175 = icmp ult ptr %1, %2
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  store i8 40, ptr %1, align 1
  br label %177

177:                                              ; preds = %176, %172
  %178 = getelementptr i8, ptr %1, i32 1
  %179 = icmp eq i32 %173, 0
  br i1 %179, label %223, label %180

180:                                              ; preds = %177
  %181 = icmp ult ptr %178, %2
  br i1 %181, label %182, label %183

182:                                              ; preds = %180
  store i8 101, ptr %178, align 1
  br label %183

183:                                              ; preds = %182, %180
  %184 = getelementptr i8, ptr %1, i32 2
  %185 = icmp eq i32 %170, 2
  br i1 %185, label %223, label %186

186:                                              ; preds = %183
  %187 = icmp ult ptr %184, %2
  br i1 %187, label %188, label %189

188:                                              ; preds = %186
  store i8 105, ptr %184, align 1
  br label %189

189:                                              ; preds = %188, %186
  %190 = getelementptr i8, ptr %1, i32 3
  %191 = icmp eq i32 %170, 3
  br i1 %191, label %223, label %192

192:                                              ; preds = %189
  %193 = icmp ult ptr %190, %2
  br i1 %193, label %194, label %195

194:                                              ; preds = %192
  store i8 110, ptr %190, align 1
  br label %195

195:                                              ; preds = %194, %192
  %196 = getelementptr i8, ptr %1, i32 4
  %197 = icmp eq i32 %170, 4
  br i1 %197, label %223, label %198

198:                                              ; preds = %195
  %199 = icmp ult ptr %196, %2
  br i1 %199, label %200, label %201

200:                                              ; preds = %198
  store i8 118, ptr %196, align 1
  br label %201

201:                                              ; preds = %200, %198
  %202 = getelementptr i8, ptr %1, i32 5
  %203 = icmp eq i32 %170, 5
  br i1 %203, label %223, label %204

204:                                              ; preds = %201
  %205 = icmp ult ptr %202, %2
  br i1 %205, label %206, label %207

206:                                              ; preds = %204
  store i8 97, ptr %202, align 1
  br label %207

207:                                              ; preds = %206, %204
  %208 = getelementptr i8, ptr %1, i32 6
  %209 = icmp eq i32 %170, 6
  br i1 %209, label %223, label %210

210:                                              ; preds = %207
  %211 = icmp ult ptr %208, %2
  br i1 %211, label %212, label %213

212:                                              ; preds = %210
  store i8 108, ptr %208, align 1
  br label %213

213:                                              ; preds = %212, %210
  %214 = getelementptr i8, ptr %1, i32 7
  %215 = icmp eq i32 %170, 7
  br i1 %215, label %223, label %216

216:                                              ; preds = %213
  %217 = icmp ult ptr %214, %2
  br i1 %217, label %218, label %219

218:                                              ; preds = %216
  store i8 41, ptr %214, align 1
  br label %219

219:                                              ; preds = %218, %216
  %220 = getelementptr i8, ptr %1, i32 8
  %221 = icmp eq i32 %170, 8
  %222 = select i1 %221, i32 8, i32 %174
  br label %223

223:                                              ; preds = %219, %213, %207, %201, %195, %189, %183, %177, %157
  %224 = phi ptr [ %1, %157 ], [ %178, %177 ], [ %184, %183 ], [ %190, %189 ], [ %196, %195 ], [ %202, %201 ], [ %208, %207 ], [ %214, %213 ], [ %220, %219 ]
  %225 = phi i32 [ 0, %157 ], [ 1, %177 ], [ 2, %183 ], [ 3, %189 ], [ 4, %195 ], [ 5, %201 ], [ 6, %207 ], [ 7, %213 ], [ %222, %219 ]
  %226 = insertvalue [2 x i32] %4, i32 %166, 1
  %227 = tail call fastcc ptr @widen_string(ptr noundef %224, i32 noundef %225, ptr noundef %2, [2 x i32] %226) #20
  br label %235

228:                                              ; preds = %147, %5
  %229 = load i8, ptr @no_hash_pointers, align 1, !range !9
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %233, label %231, !prof !11

231:                                              ; preds = %228
  %232 = tail call fastcc ptr @pointer_string(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4)
  br label %235

233:                                              ; preds = %228
  %234 = tail call fastcc ptr @ptr_to_id(ptr noundef %1, ptr noundef %2, ptr noundef %3, [2 x i32] %4)
  br label %235

235:                                              ; preds = %233, %231, %223, %155, %149, %139, %112, %109, %107, %105, %103, %101, %99, %97, %95, %93, %91, %89, %87, %28, %26, %24, %22, %20, %18, %12, %10, %8
  %236 = phi ptr [ %232, %231 ], [ %234, %233 ], [ %156, %155 ], [ %227, %223 ], [ %150, %149 ], [ %146, %139 ], [ %114, %112 ], [ %111, %109 ], [ %108, %107 ], [ %106, %105 ], [ %104, %103 ], [ %102, %101 ], [ %100, %99 ], [ %98, %97 ], [ %96, %95 ], [ %94, %93 ], [ %92, %91 ], [ %90, %89 ], [ %88, %87 ], [ %29, %28 ], [ %27, %26 ], [ %25, %24 ], [ %23, %22 ], [ %19, %18 ], [ %21, %20 ], [ %13, %12 ], [ %11, %10 ], [ %9, %8 ]
  ret ptr %236
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @number(ptr noundef writeonly %0, ptr noundef readnone %1, i64 noundef %2, [2 x i32] %3) unnamed_addr #10 {
  %5 = alloca [24 x i8], align 2
  %6 = extractvalue [2 x i32] %3, 0
  %7 = extractvalue [2 x i32] %3, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !8
  %8 = zext i32 %7 to i64
  %9 = shl nuw i64 %8, 32
  %10 = zext i32 %6 to i64
  %11 = and i32 %7, 64
  %12 = icmp ne i32 %11, 0
  %13 = and i32 %7, 65280
  %14 = icmp ne i32 %13, 2560
  %15 = and i1 %12, %14
  %16 = icmp eq i64 %2, 0
  %17 = shl nuw i64 %10, 32
  %18 = ashr i64 %17, 40
  %19 = trunc i64 %18 to i32
  %20 = ashr i64 %9, 48
  %21 = trunc i64 %20 to i32
  %22 = trunc i32 %7 to i8
  %23 = and i8 %22, 32
  %24 = and i32 %7, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %4
  %27 = and i32 %7, 239
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 32
  %30 = and i64 %9, -1099511627776
  %31 = or i64 %30, %29
  %32 = lshr exact i64 %31, 32
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %26, %4
  %35 = phi i32 [ %33, %26 ], [ %7, %4 ]
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %34
  %39 = icmp slt i64 %2, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = sub i64 0, %2
  %42 = add nsw i32 %19, -1
  br label %53

43:                                               ; preds = %38
  %44 = and i32 %35, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = add nsw i32 %19, -1
  br label %53

48:                                               ; preds = %43
  %49 = and i32 %35, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = add nsw i32 %19, -1
  br label %53

53:                                               ; preds = %51, %48, %46, %40, %34
  %54 = phi i64 [ %41, %40 ], [ %2, %46 ], [ %2, %51 ], [ %2, %48 ], [ %2, %34 ]
  %55 = phi i1 [ false, %40 ], [ false, %46 ], [ false, %51 ], [ true, %48 ], [ true, %34 ]
  %56 = phi i8 [ 45, %40 ], [ 43, %46 ], [ 32, %51 ], [ 0, %48 ], [ 0, %34 ]
  %57 = phi i32 [ %42, %40 ], [ %47, %46 ], [ %52, %51 ], [ %19, %48 ], [ %19, %34 ]
  br i1 %15, label %58, label %67

58:                                               ; preds = %53
  %59 = and i32 %35, 65280
  %60 = icmp eq i32 %59, 4096
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = add nsw i32 %57, -2
  br label %67

63:                                               ; preds = %58
  %64 = xor i1 %16, true
  %65 = sext i1 %64 to i32
  %66 = add nsw i32 %57, %65
  br label %67

67:                                               ; preds = %63, %61, %53
  %68 = phi i32 [ %62, %61 ], [ %57, %53 ], [ %66, %63 ]
  %69 = lshr i32 %35, 8
  %70 = and i32 %69, 255
  %71 = zext i32 %70 to i64
  %72 = icmp ult i64 %54, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = trunc i64 %54 to i32
  %75 = getelementptr [0 x i8], ptr @hex_asc_upper, i32 0, i32 %74
  %76 = load i8, ptr %75, align 1
  %77 = or i8 %76, %23
  store i8 %77, ptr %5, align 2
  br label %103

78:                                               ; preds = %67
  %79 = icmp eq i32 %70, 10
  br i1 %79, label %98, label %80

80:                                               ; preds = %78
  %81 = add nuw nsw i32 %69, 255
  %82 = icmp eq i32 %70, 16
  %83 = select i1 %82, i32 4, i32 3
  %84 = and i32 %81, 255
  %85 = zext i32 %83 to i64
  br label %86

86:                                               ; preds = %86, %80
  %87 = phi i64 [ %54, %80 ], [ %96, %86 ]
  %88 = phi i32 [ 0, %80 ], [ %94, %86 ]
  %89 = trunc i64 %87 to i32
  %90 = and i32 %84, %89
  %91 = getelementptr [0 x i8], ptr @hex_asc_upper, i32 0, i32 %90
  %92 = load i8, ptr %91, align 1
  %93 = or i8 %92, %23
  %94 = add i32 %88, 1
  %95 = getelementptr [24 x i8], ptr %5, i32 0, i32 %88
  store i8 %93, ptr %95, align 1
  %96 = lshr i64 %87, %85
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %103, label %86

98:                                               ; preds = %78
  %99 = call fastcc ptr @put_dec(ptr noundef nonnull %5, i64 noundef %54)
  %100 = ptrtoint ptr %99 to i32
  %101 = ptrtoint ptr %5 to i32
  %102 = sub i32 %100, %101
  br label %103

103:                                              ; preds = %98, %86, %73
  %104 = phi i32 [ 1, %73 ], [ %102, %98 ], [ %94, %86 ]
  %105 = call i32 @llvm.smax.i32(i32 %104, i32 %21)
  %106 = sub i32 %68, %105
  %107 = and i32 %35, 18
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %103
  %110 = add i32 %106, -1
  %111 = icmp sgt i32 %110, -1
  br i1 %111, label %112, label %121

112:                                              ; preds = %117, %109
  %113 = phi i32 [ %119, %117 ], [ %110, %109 ]
  %114 = phi ptr [ %118, %117 ], [ %0, %109 ]
  %115 = icmp ult ptr %114, %1
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i8 32, ptr %114, align 1
  br label %117

117:                                              ; preds = %116, %112
  %118 = getelementptr i8, ptr %114, i32 1
  %119 = add i32 %113, -1
  %120 = icmp sgt i32 %119, -1
  br i1 %120, label %112, label %121

121:                                              ; preds = %117, %109, %103
  %122 = phi ptr [ %0, %103 ], [ %0, %109 ], [ %118, %117 ]
  %123 = phi i32 [ %106, %103 ], [ %110, %109 ], [ -1, %117 ]
  br i1 %55, label %129, label %124

124:                                              ; preds = %121
  %125 = icmp ult ptr %122, %1
  br i1 %125, label %126, label %127

126:                                              ; preds = %124
  store i8 %56, ptr %122, align 1
  br label %127

127:                                              ; preds = %126, %124
  %128 = getelementptr i8, ptr %122, i32 1
  br label %129

129:                                              ; preds = %127, %121
  %130 = phi ptr [ %128, %127 ], [ %122, %121 ]
  br i1 %15, label %131, label %148

131:                                              ; preds = %129
  %132 = icmp eq i32 %70, 16
  %133 = xor i1 %16, true
  %134 = or i1 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = icmp ult ptr %130, %1
  br i1 %136, label %137, label %138

137:                                              ; preds = %135
  store i8 48, ptr %130, align 1
  br label %138

138:                                              ; preds = %137, %135
  %139 = getelementptr i8, ptr %130, i32 1
  br label %140

140:                                              ; preds = %138, %131
  %141 = phi ptr [ %139, %138 ], [ %130, %131 ]
  br i1 %132, label %142, label %148

142:                                              ; preds = %140
  %143 = icmp ult ptr %141, %1
  br i1 %143, label %144, label %146

144:                                              ; preds = %142
  %145 = or i8 %23, 88
  store i8 %145, ptr %141, align 1
  br label %146

146:                                              ; preds = %144, %142
  %147 = getelementptr i8, ptr %141, i32 1
  br label %148

148:                                              ; preds = %146, %140, %129
  %149 = phi ptr [ %147, %146 ], [ %141, %140 ], [ %130, %129 ]
  %150 = and i32 %35, 2
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %167

152:                                              ; preds = %148
  %153 = trunc i32 %35 to i8
  %154 = and i8 %153, 16
  %155 = or i8 %154, 32
  %156 = add i32 %123, -1
  %157 = icmp sgt i32 %156, -1
  br i1 %157, label %158, label %167

158:                                              ; preds = %163, %152
  %159 = phi i32 [ %165, %163 ], [ %156, %152 ]
  %160 = phi ptr [ %164, %163 ], [ %149, %152 ]
  %161 = icmp ult ptr %160, %1
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  store i8 %155, ptr %160, align 1
  br label %163

163:                                              ; preds = %162, %158
  %164 = getelementptr i8, ptr %160, i32 1
  %165 = add i32 %159, -1
  %166 = icmp sgt i32 %165, -1
  br i1 %166, label %158, label %167

167:                                              ; preds = %163, %152, %148
  %168 = phi ptr [ %149, %148 ], [ %149, %152 ], [ %164, %163 ]
  %169 = phi i32 [ %123, %148 ], [ %156, %152 ], [ -1, %163 ]
  %170 = add i32 %105, -1
  %171 = icmp sgt i32 %104, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %182, %167
  %173 = phi ptr [ %168, %167 ], [ %183, %182 ]
  %174 = icmp sgt i32 %104, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %172
  %176 = add nsw i32 %104, -1
  br label %190

177:                                              ; preds = %182, %167
  %178 = phi i32 [ %184, %182 ], [ %170, %167 ]
  %179 = phi ptr [ %183, %182 ], [ %168, %167 ]
  %180 = icmp ult ptr %179, %1
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  store i8 48, ptr %179, align 1
  br label %182

182:                                              ; preds = %181, %177
  %183 = getelementptr i8, ptr %179, i32 1
  %184 = add i32 %178, -1
  %185 = icmp sgt i32 %104, %184
  br i1 %185, label %172, label %177

186:                                              ; preds = %197, %172
  %187 = phi ptr [ %173, %172 ], [ %198, %197 ]
  %188 = add i32 %169, -1
  %189 = icmp sgt i32 %188, -1
  br i1 %189, label %201, label %210

190:                                              ; preds = %197, %175
  %191 = phi i32 [ %199, %197 ], [ %176, %175 ]
  %192 = phi ptr [ %198, %197 ], [ %173, %175 ]
  %193 = icmp ult ptr %192, %1
  br i1 %193, label %194, label %197

194:                                              ; preds = %190
  %195 = getelementptr [24 x i8], ptr %5, i32 0, i32 %191
  %196 = load i8, ptr %195, align 1
  store i8 %196, ptr %192, align 1
  br label %197

197:                                              ; preds = %194, %190
  %198 = getelementptr i8, ptr %192, i32 1
  %199 = add i32 %191, -1
  %200 = icmp sgt i32 %199, -1
  br i1 %200, label %190, label %186

201:                                              ; preds = %206, %186
  %202 = phi i32 [ %208, %206 ], [ %188, %186 ]
  %203 = phi ptr [ %207, %206 ], [ %187, %186 ]
  %204 = icmp ult ptr %203, %1
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  store i8 32, ptr %203, align 1
  br label %206

206:                                              ; preds = %205, %201
  %207 = getelementptr i8, ptr %203, i32 1
  %208 = add i32 %202, -1
  %209 = icmp sgt i32 %208, -1
  br i1 %209, label %201, label %210

210:                                              ; preds = %206, %186
  %211 = phi ptr [ %187, %186 ], [ %207, %206 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  ret ptr %211
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vscnprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2, [1 x i32] %3) #1 {
  %5 = tail call i32 @vsnprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2, [1 x i32] %3)
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %11, label %7, !prof !11

7:                                                ; preds = %4
  %8 = icmp eq i32 %1, 0
  %9 = add i32 %1, -1
  %10 = select i1 %8, i32 0, i32 %9
  br label %11

11:                                               ; preds = %7, %4
  %12 = phi i32 [ %5, %4 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) #1 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %4)
  %5 = load i32, ptr %4, align 4
  %6 = insertvalue [1 x i32] poison, i32 %5, 0
  %7 = call i32 @vsnprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2, [1 x i32] %6)
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret i32 %7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scnprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) #1 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %4)
  %5 = load i32, ptr %4, align 4
  %6 = insertvalue [1 x i32] poison, i32 %5, 0
  %7 = call i32 @vsnprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2, [1 x i32] %6) #20
  %8 = icmp ult i32 %7, %1
  br i1 %8, label %13, label %9, !prof !11

9:                                                ; preds = %3
  %10 = icmp eq i32 %1, 0
  %11 = add i32 %1, -1
  %12 = select i1 %10, i32 0, i32 %11
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i32 [ %7, %3 ], [ %12, %9 ]
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vsprintf(ptr noundef %0, ptr noundef %1, [1 x i32] %2) #1 {
  %4 = tail call i32 @vsnprintf(ptr noundef %0, i32 noundef 2147483647, ptr noundef %1, [1 x i32] %2)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sprintf(ptr noundef %0, ptr noundef %1, ...) #1 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load i32, ptr %3, align 4
  %5 = insertvalue [1 x i32] poison, i32 %4, 0
  %6 = call i32 @vsnprintf(ptr noundef %0, i32 noundef 2147483647, ptr noundef %1, [1 x i32] %5)
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vbin_printf(ptr noundef %0, i32 noundef %1, ptr noundef %2, [1 x i32] %3) #1 {
  %5 = alloca %struct.printf_spec, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store i64 0, ptr %5, align 8
  %6 = getelementptr i32, ptr %0, i32 %1
  %7 = load i8, ptr %2, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %220, label %9

9:                                                ; preds = %4
  %10 = extractvalue [1 x i32] %3, 0
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr i8, ptr %6, i32 -1
  br label %13

13:                                               ; preds = %214, %9
  %14 = phi ptr [ %11, %9 ], [ %218, %214 ]
  %15 = phi ptr [ %2, %9 ], [ %217, %214 ]
  %16 = phi ptr [ %0, %9 ], [ %216, %214 ]
  %17 = call fastcc i32 @format_decode(ptr noundef %15, ptr noundef nonnull %5)
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = load i64, ptr %5, align 8
  %20 = trunc i64 %19 to i8
  %21 = trunc i64 %19 to i32
  %22 = lshr i64 %19, 32
  %23 = trunc i64 %22 to i32
  switch i8 %20, label %197 [
    i8 0, label %209
    i8 6, label %209
    i8 7, label %220
    i8 1, label %24
    i8 2, label %24
    i8 3, label %60
    i8 4, label %67
    i8 5, label %83
    i8 8, label %131
    i8 9, label %149
    i8 10, label %149
    i8 17, label %159
    i8 18, label %169
    i8 11, label %179
    i8 12, label %179
    i8 13, label %186
    i8 14, label %186
  ]

24:                                               ; preds = %13, %13
  %25 = ptrtoint ptr %16 to i32
  %26 = add i32 %25, 3
  %27 = and i32 %26, -4
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds i8, ptr %14, i32 4
  %30 = load i32, ptr %14, align 4
  %31 = getelementptr i8, ptr %28, i32 4
  %32 = icmp ugt ptr %31, %6
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  store i32 %30, ptr %28, align 4
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i8, ptr %18, align 1
  %36 = icmp eq i8 %35, 112
  br i1 %36, label %37, label %214

37:                                               ; preds = %34
  %38 = load i64, ptr %5, align 8
  %39 = shl i32 %30, 8
  %40 = zext i32 %39 to i64
  %41 = and i64 %38, -4294967041
  %42 = or i64 %41, %40
  store i64 %42, ptr %5, align 8
  %43 = shl nuw i64 %40, 32
  %44 = ashr exact i64 %43, 40
  %45 = trunc i64 %44 to i32
  %46 = icmp ne i32 %30, %45
  %47 = load i1, ptr @set_field_width.__already_done, align 1
  %48 = xor i1 %47, true
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %51, !prof !10

50:                                               ; preds = %37
  store i1 true, ptr @set_field_width.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2683, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %30) #20
  br label %51

51:                                               ; preds = %50, %37
  br i1 %46, label %52, label %209

52:                                               ; preds = %51
  %53 = call i32 @llvm.smax.i32(i32 %30, i32 -8388607) #20
  %54 = call i32 @llvm.smin.i32(i32 %53, i32 8388607) #20
  %55 = load i64, ptr %5, align 8
  %56 = shl nsw i32 %54, 8
  %57 = zext i32 %56 to i64
  %58 = and i64 %55, -4294967041
  %59 = or i64 %58, %57
  store i64 %59, ptr %5, align 8
  br label %209

60:                                               ; preds = %13
  %61 = getelementptr inbounds i8, ptr %14, i32 4
  %62 = getelementptr i8, ptr %16, i32 1
  %63 = icmp ugt ptr %62, %6
  br i1 %63, label %209, label %64

64:                                               ; preds = %60
  %65 = load i32, ptr %14, align 4
  %66 = trunc i32 %65 to i8
  store i8 %66, ptr %16, align 1
  br label %209

67:                                               ; preds = %13
  %68 = getelementptr inbounds i8, ptr %14, i32 4
  %69 = load ptr, ptr %14, align 4
  %70 = icmp eq ptr %69, null
  %71 = icmp ult ptr %69, inttoptr (i32 4096 to ptr)
  %72 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  %73 = or i1 %71, %72
  %74 = select i1 %73, ptr @.str.60, ptr null
  %75 = select i1 %70, ptr @.str.59, ptr %74
  %76 = icmp eq ptr %75, null
  %77 = select i1 %76, ptr %69, ptr %75
  %78 = call i32 @strlen(ptr noundef %77)
  %79 = add i32 %78, 1
  %80 = getelementptr i8, ptr %16, i32 %79
  %81 = icmp ult ptr %80, %6
  br i1 %81, label %82, label %209

82:                                               ; preds = %67
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %16, ptr align 1 %77, i32 %79, i1 false)
  br label %209

83:                                               ; preds = %13
  %84 = load i8, ptr %18, align 1
  switch i8 %84, label %95 [
    i8 83, label %85
    i8 115, label %85
    i8 120, label %85
    i8 75, label %85
    i8 101, label %85
  ]

85:                                               ; preds = %83, %83, %83, %83, %83
  %86 = ptrtoint ptr %16 to i32
  %87 = add i32 %86, 3
  %88 = and i32 %87, -4
  %89 = inttoptr i32 %88 to ptr
  %90 = getelementptr i8, ptr %89, i32 4
  %91 = icmp ugt ptr %90, %6
  br i1 %91, label %120, label %92

92:                                               ; preds = %85
  %93 = load i32, ptr %14, align 4
  %94 = inttoptr i32 %93 to ptr
  store ptr %94, ptr %89, align 4
  br label %120

95:                                               ; preds = %83
  %96 = zext i8 %84 to i32
  %97 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %96
  %98 = load i8, ptr %97, align 1
  %99 = and i8 %98, 7
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = ptrtoint ptr %16 to i32
  %103 = add i32 %102, 3
  %104 = and i32 %103, -4
  %105 = inttoptr i32 %104 to ptr
  %106 = getelementptr i8, ptr %105, i32 4
  %107 = icmp ugt ptr %106, %6
  br i1 %107, label %120, label %108

108:                                              ; preds = %101
  %109 = load i32, ptr %14, align 4
  %110 = inttoptr i32 %109 to ptr
  store ptr %110, ptr %105, align 4
  br label %120

111:                                              ; preds = %95
  %112 = load ptr, ptr %14, align 4
  %113 = insertvalue [2 x i32] poison, i32 %21, 0
  %114 = insertvalue [2 x i32] %113, i32 %23, 1
  %115 = call fastcc ptr @pointer(ptr noundef %18, ptr noundef %16, ptr noundef %6, ptr noundef %112, [2 x i32] %114)
  %116 = getelementptr i8, ptr %115, i32 1
  %117 = icmp ult ptr %116, %6
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  store i8 0, ptr %115, align 1
  br label %120

119:                                              ; preds = %111
  store i8 0, ptr %12, align 1
  br label %120

120:                                              ; preds = %119, %118, %108, %101, %92, %85
  %121 = phi ptr [ %116, %118 ], [ %115, %119 ], [ %90, %92 ], [ %90, %85 ], [ %106, %108 ], [ %106, %101 ]
  br label %122

122:                                              ; preds = %122, %120
  %123 = phi ptr [ %18, %120 ], [ %130, %122 ]
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i32
  %126 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %125
  %127 = load i8, ptr %126, align 1
  %128 = and i8 %127, 7
  %129 = icmp eq i8 %128, 0
  %130 = getelementptr i8, ptr %123, i32 1
  br i1 %129, label %207, label %122

131:                                              ; preds = %13
  %132 = ptrtoint ptr %16 to i32
  %133 = add i32 %132, 3
  %134 = and i32 %133, -4
  %135 = inttoptr i32 %134 to ptr
  %136 = ptrtoint ptr %14 to i32
  %137 = add i32 %136, 7
  %138 = and i32 %137, -8
  %139 = inttoptr i32 %138 to ptr
  %140 = getelementptr inbounds i8, ptr %139, i32 8
  %141 = getelementptr i8, ptr %135, i32 8
  %142 = icmp ugt ptr %141, %6
  br i1 %142, label %209, label %143

143:                                              ; preds = %131
  %144 = load i64, ptr %139, align 8
  %145 = lshr i64 %144, 32
  %146 = trunc i64 %145 to i32
  %147 = trunc i64 %144 to i32
  store i32 %147, ptr %135, align 4
  %148 = getelementptr i8, ptr %135, i32 4
  store i32 %146, ptr %148, align 4
  br label %209

149:                                              ; preds = %13, %13
  %150 = ptrtoint ptr %16 to i32
  %151 = add i32 %150, 3
  %152 = and i32 %151, -4
  %153 = inttoptr i32 %152 to ptr
  %154 = getelementptr inbounds i8, ptr %14, i32 4
  %155 = getelementptr i8, ptr %153, i32 4
  %156 = icmp ugt ptr %155, %6
  br i1 %156, label %209, label %157

157:                                              ; preds = %149
  %158 = load i32, ptr %14, align 4
  store i32 %158, ptr %153, align 4
  br label %209

159:                                              ; preds = %13
  %160 = ptrtoint ptr %16 to i32
  %161 = add i32 %160, 3
  %162 = and i32 %161, -4
  %163 = inttoptr i32 %162 to ptr
  %164 = getelementptr inbounds i8, ptr %14, i32 4
  %165 = getelementptr i8, ptr %163, i32 4
  %166 = icmp ugt ptr %165, %6
  br i1 %166, label %209, label %167

167:                                              ; preds = %159
  %168 = load i32, ptr %14, align 4
  store i32 %168, ptr %163, align 4
  br label %209

169:                                              ; preds = %13
  %170 = ptrtoint ptr %16 to i32
  %171 = add i32 %170, 3
  %172 = and i32 %171, -4
  %173 = inttoptr i32 %172 to ptr
  %174 = getelementptr inbounds i8, ptr %14, i32 4
  %175 = getelementptr i8, ptr %173, i32 4
  %176 = icmp ugt ptr %175, %6
  br i1 %176, label %209, label %177

177:                                              ; preds = %169
  %178 = load i32, ptr %14, align 4
  store i32 %178, ptr %173, align 4
  br label %209

179:                                              ; preds = %13, %13
  %180 = getelementptr inbounds i8, ptr %14, i32 4
  %181 = getelementptr i8, ptr %16, i32 1
  %182 = icmp ugt ptr %181, %6
  br i1 %182, label %209, label %183

183:                                              ; preds = %179
  %184 = load i32, ptr %14, align 4
  %185 = trunc i32 %184 to i8
  store i8 %185, ptr %16, align 1
  br label %209

186:                                              ; preds = %13, %13
  %187 = ptrtoint ptr %16 to i32
  %188 = add i32 %187, 1
  %189 = and i32 %188, -2
  %190 = inttoptr i32 %189 to ptr
  %191 = getelementptr inbounds i8, ptr %14, i32 4
  %192 = getelementptr i8, ptr %190, i32 2
  %193 = icmp ugt ptr %192, %6
  br i1 %193, label %209, label %194

194:                                              ; preds = %186
  %195 = load i32, ptr %14, align 4
  %196 = trunc i32 %195 to i16
  store i16 %196, ptr %190, align 2
  br label %209

197:                                              ; preds = %13
  %198 = ptrtoint ptr %16 to i32
  %199 = add i32 %198, 3
  %200 = and i32 %199, -4
  %201 = inttoptr i32 %200 to ptr
  %202 = getelementptr inbounds i8, ptr %14, i32 4
  %203 = getelementptr i8, ptr %201, i32 4
  %204 = icmp ugt ptr %203, %6
  br i1 %204, label %209, label %205

205:                                              ; preds = %197
  %206 = load i32, ptr %14, align 4
  store i32 %206, ptr %201, align 4
  br label %209

207:                                              ; preds = %122
  %208 = getelementptr inbounds i8, ptr %14, i32 4
  br label %209

209:                                              ; preds = %207, %205, %197, %194, %186, %183, %179, %177, %169, %167, %159, %157, %149, %143, %131, %82, %67, %64, %60, %52, %51, %13, %13
  %210 = phi ptr [ %121, %207 ], [ %31, %52 ], [ %31, %51 ], [ %203, %197 ], [ %203, %205 ], [ %192, %186 ], [ %192, %194 ], [ %181, %179 ], [ %181, %183 ], [ %175, %169 ], [ %175, %177 ], [ %165, %159 ], [ %165, %167 ], [ %155, %149 ], [ %155, %157 ], [ %141, %131 ], [ %141, %143 ], [ %80, %67 ], [ %80, %82 ], [ %62, %60 ], [ %62, %64 ], [ %16, %13 ], [ %16, %13 ]
  %211 = phi ptr [ %123, %207 ], [ %18, %52 ], [ %18, %51 ], [ %18, %197 ], [ %18, %205 ], [ %18, %186 ], [ %18, %194 ], [ %18, %179 ], [ %18, %183 ], [ %18, %169 ], [ %18, %177 ], [ %18, %159 ], [ %18, %167 ], [ %18, %149 ], [ %18, %157 ], [ %18, %131 ], [ %18, %143 ], [ %18, %67 ], [ %18, %82 ], [ %18, %60 ], [ %18, %64 ], [ %18, %13 ], [ %18, %13 ]
  %212 = phi ptr [ %208, %207 ], [ %29, %52 ], [ %29, %51 ], [ %202, %197 ], [ %202, %205 ], [ %191, %186 ], [ %191, %194 ], [ %180, %179 ], [ %180, %183 ], [ %174, %169 ], [ %174, %177 ], [ %164, %159 ], [ %164, %167 ], [ %154, %149 ], [ %154, %157 ], [ %140, %131 ], [ %140, %143 ], [ %68, %67 ], [ %68, %82 ], [ %61, %60 ], [ %61, %64 ], [ %14, %13 ], [ %14, %13 ]
  %213 = load i8, ptr %211, align 1
  br label %214

214:                                              ; preds = %209, %34
  %215 = phi i8 [ %213, %209 ], [ %35, %34 ]
  %216 = phi ptr [ %210, %209 ], [ %31, %34 ]
  %217 = phi ptr [ %211, %209 ], [ %18, %34 ]
  %218 = phi ptr [ %212, %209 ], [ %29, %34 ]
  %219 = icmp eq i8 %215, 0
  br i1 %219, label %220, label %13

220:                                              ; preds = %214, %13, %4
  %221 = phi ptr [ %0, %4 ], [ %16, %13 ], [ %216, %214 ]
  %222 = ptrtoint ptr %221 to i32
  %223 = add i32 %222, 3
  %224 = and i32 %223, -4
  %225 = ptrtoint ptr %0 to i32
  %226 = sub i32 %224, %225
  %227 = ashr exact i32 %226, 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret i32 %227
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bstr_printf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = alloca %struct.printf_spec, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store i64 0, ptr %5, align 8
  %6 = icmp slt i32 %1, 0
  %7 = load i1, ptr @bstr_printf.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %4
  store i1 true, ptr @bstr_printf.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 3193, i32 noundef 9, ptr noundef null) #20
  br label %11

11:                                               ; preds = %10, %4
  br i1 %6, label %328, label %12

12:                                               ; preds = %11
  %13 = getelementptr i8, ptr %0, i32 %1
  %14 = icmp ult ptr %13, %0
  %15 = ptrtoint ptr %0 to i32
  %16 = xor i32 %15, -1
  %17 = select i1 %14, ptr inttoptr (i32 -1 to ptr), ptr %13
  %18 = select i1 %14, i32 %16, i32 %1
  %19 = load i8, ptr %2, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %318, label %21

21:                                               ; preds = %12
  %22 = ptrtoint ptr %17 to i32
  br label %23

23:                                               ; preds = %312, %21
  %24 = phi ptr [ %2, %21 ], [ %315, %312 ]
  %25 = phi ptr [ %0, %21 ], [ %314, %312 ]
  %26 = phi ptr [ %3, %21 ], [ %313, %312 ]
  %27 = call fastcc i32 @format_decode(ptr noundef %24, ptr noundef nonnull %5)
  %28 = getelementptr i8, ptr %24, i32 %27
  %29 = load i64, ptr %5, align 8
  %30 = trunc i64 %29 to i8
  %31 = trunc i64 %29 to i32
  %32 = lshr i64 %29, 32
  %33 = trunc i64 %32 to i32
  switch i8 %30, label %298 [
    i8 0, label %34
    i8 1, label %42
    i8 2, label %70
    i8 3, label %97
    i8 4, label %177
    i8 5, label %184
    i8 6, label %224
    i8 7, label %318
    i8 8, label %229
    i8 9, label %242
    i8 10, label %242
    i8 17, label %250
    i8 18, label %258
    i8 11, label %266
    i8 12, label %270
    i8 13, label %274
    i8 14, label %282
    i8 15, label %290
  ]

34:                                               ; preds = %23
  %35 = icmp ult ptr %25, %17
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = ptrtoint ptr %25 to i32
  %38 = sub i32 %22, %37
  %39 = call i32 @llvm.smin.i32(i32 %27, i32 %38)
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %25, ptr align 1 %24, i32 %39, i1 false)
  br label %40

40:                                               ; preds = %36, %34
  %41 = getelementptr i8, ptr %25, i32 %27
  br label %312

42:                                               ; preds = %23
  %43 = ptrtoint ptr %26 to i32
  %44 = add i32 %43, 3
  %45 = and i32 %44, -4
  %46 = inttoptr i32 %45 to ptr
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr i8, ptr %46, i32 4
  %49 = shl i32 %47, 8
  %50 = zext i32 %49 to i64
  %51 = and i64 %29, -4294967041
  %52 = or i64 %51, %50
  store i64 %52, ptr %5, align 8
  %53 = shl nuw i64 %50, 32
  %54 = ashr exact i64 %53, 40
  %55 = trunc i64 %54 to i32
  %56 = icmp ne i32 %47, %55
  %57 = load i1, ptr @set_field_width.__already_done, align 1
  %58 = xor i1 %57, true
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %61, !prof !10

60:                                               ; preds = %42
  store i1 true, ptr @set_field_width.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2683, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %47) #20
  br label %61

61:                                               ; preds = %60, %42
  br i1 %56, label %62, label %312

62:                                               ; preds = %61
  %63 = call i32 @llvm.smax.i32(i32 %47, i32 -8388607) #20
  %64 = call i32 @llvm.smin.i32(i32 %63, i32 8388607) #20
  %65 = load i64, ptr %5, align 8
  %66 = shl nsw i32 %64, 8
  %67 = zext i32 %66 to i64
  %68 = and i64 %65, -4294967041
  %69 = or i64 %68, %67
  store i64 %69, ptr %5, align 8
  br label %312

70:                                               ; preds = %23
  %71 = ptrtoint ptr %26 to i32
  %72 = add i32 %71, 3
  %73 = and i32 %72, -4
  %74 = inttoptr i32 %73 to ptr
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr i8, ptr %74, i32 4
  %77 = zext i32 %75 to i64
  %78 = shl i64 %77, 48
  %79 = and i64 %29, 281474976710655
  %80 = or i64 %78, %79
  store i64 %80, ptr %5, align 8
  %81 = ashr exact i64 %78, 48
  %82 = trunc i64 %81 to i32
  %83 = icmp ne i32 %75, %82
  %84 = load i1, ptr @set_precision.__already_done, align 1
  %85 = xor i1 %84, true
  %86 = select i1 %83, i1 %85, i1 false
  br i1 %86, label %87, label %88, !prof !10

87:                                               ; preds = %70
  store i1 true, ptr @set_precision.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2692, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %75) #20
  br label %88

88:                                               ; preds = %87, %70
  br i1 %83, label %89, label %312

89:                                               ; preds = %88
  %90 = call i32 @llvm.smax.i32(i32 %75, i32 0) #20
  %91 = call i32 @llvm.umin.i32(i32 %90, i32 32767) #20
  %92 = zext i32 %91 to i64
  %93 = load i64, ptr %5, align 8
  %94 = shl nuw nsw i64 %92, 48
  %95 = and i64 %93, 281474976710655
  %96 = or i64 %95, %94
  store i64 %96, ptr %5, align 8
  br label %312

97:                                               ; preds = %23
  %98 = and i64 %29, 8589934592
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %133

100:                                              ; preds = %97
  %101 = lshr i32 %31, 8
  %102 = add nuw nsw i32 %101, 16777215
  %103 = and i32 %102, 16777215
  %104 = zext i32 %103 to i64
  %105 = shl nuw nsw i64 %104, 8
  %106 = and i64 %29, -4294967041
  %107 = or i64 %105, %106
  store i64 %107, ptr %5, align 8
  %108 = shl nuw i64 %104, 40
  %109 = ashr exact i64 %108, 40
  %110 = trunc i64 %109 to i32
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %133

112:                                              ; preds = %118, %100
  %113 = phi i64 [ %128, %118 ], [ %107, %100 ]
  %114 = phi ptr [ %120, %118 ], [ %25, %100 ]
  %115 = icmp ult ptr %114, %17
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  store i8 32, ptr %114, align 1
  %117 = load i64, ptr %5, align 8
  br label %118

118:                                              ; preds = %116, %112
  %119 = phi i64 [ %117, %116 ], [ %113, %112 ]
  %120 = getelementptr i8, ptr %114, i32 1
  %121 = trunc i64 %119 to i32
  %122 = lshr i32 %121, 8
  %123 = add nuw nsw i32 %122, 16777215
  %124 = and i32 %123, 16777215
  %125 = zext i32 %124 to i64
  %126 = shl nuw nsw i64 %125, 8
  %127 = and i64 %119, -4294967041
  %128 = or i64 %126, %127
  store i64 %128, ptr %5, align 8
  %129 = shl nuw i64 %125, 40
  %130 = ashr exact i64 %129, 40
  %131 = trunc i64 %130 to i32
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %112, label %133

133:                                              ; preds = %118, %100, %97
  %134 = phi i64 [ %29, %97 ], [ %107, %100 ], [ %128, %118 ]
  %135 = phi ptr [ %25, %97 ], [ %25, %100 ], [ %120, %118 ]
  %136 = getelementptr i8, ptr %26, i32 1
  %137 = icmp ult ptr %135, %17
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i8, ptr %26, align 1
  store i8 %139, ptr %135, align 1
  %140 = load i64, ptr %5, align 8
  br label %141

141:                                              ; preds = %138, %133
  %142 = phi i64 [ %140, %138 ], [ %134, %133 ]
  %143 = getelementptr i8, ptr %135, i32 1
  %144 = trunc i64 %142 to i32
  %145 = lshr i32 %144, 8
  %146 = add nuw nsw i32 %145, 16777215
  %147 = and i32 %146, 16777215
  %148 = zext i32 %147 to i64
  %149 = shl nuw nsw i64 %148, 8
  %150 = and i64 %142, -4294967041
  %151 = or i64 %149, %150
  store i64 %151, ptr %5, align 8
  %152 = shl nuw i64 %148, 40
  %153 = ashr exact i64 %152, 40
  %154 = trunc i64 %153 to i32
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %312

156:                                              ; preds = %162, %141
  %157 = phi i64 [ %172, %162 ], [ %151, %141 ]
  %158 = phi ptr [ %164, %162 ], [ %143, %141 ]
  %159 = icmp ult ptr %158, %17
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  store i8 32, ptr %158, align 1
  %161 = load i64, ptr %5, align 8
  br label %162

162:                                              ; preds = %160, %156
  %163 = phi i64 [ %161, %160 ], [ %157, %156 ]
  %164 = getelementptr i8, ptr %158, i32 1
  %165 = trunc i64 %163 to i32
  %166 = lshr i32 %165, 8
  %167 = add nuw nsw i32 %166, 16777215
  %168 = and i32 %167, 16777215
  %169 = zext i32 %168 to i64
  %170 = shl nuw nsw i64 %169, 8
  %171 = and i64 %163, -4294967041
  %172 = or i64 %170, %171
  store i64 %172, ptr %5, align 8
  %173 = shl nuw i64 %169, 40
  %174 = ashr exact i64 %173, 40
  %175 = trunc i64 %174 to i32
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %156, label %312

177:                                              ; preds = %23
  %178 = call i32 @strlen(ptr noundef %26)
  %179 = add i32 %178, 1
  %180 = getelementptr i8, ptr %26, i32 %179
  %181 = insertvalue [2 x i32] poison, i32 %31, 0
  %182 = insertvalue [2 x i32] %181, i32 %33, 1
  %183 = call fastcc ptr @string(ptr noundef %25, ptr noundef %17, ptr noundef %26, [2 x i32] %182)
  br label %312

184:                                              ; preds = %23
  %185 = load i8, ptr %28, align 1
  switch i8 %185, label %186 [
    i8 83, label %202
    i8 115, label %202
    i8 120, label %202
    i8 75, label %202
    i8 101, label %202
  ]

186:                                              ; preds = %184
  %187 = zext i8 %185 to i32
  %188 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %187
  %189 = load i8, ptr %188, align 1
  %190 = and i8 %189, 7
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %202, label %192

192:                                              ; preds = %186
  %193 = icmp ult ptr %25, %17
  br i1 %193, label %194, label %212

194:                                              ; preds = %192
  %195 = call i32 @strlen(ptr noundef %26)
  %196 = ptrtoint ptr %25 to i32
  %197 = sub i32 %22, %196
  %198 = call i32 @llvm.smin.i32(i32 %195, i32 %197)
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %25, ptr align 1 %26, i32 %198, i1 false)
  %199 = getelementptr i8, ptr %25, i32 %195
  %200 = add i32 %195, 1
  %201 = getelementptr i8, ptr %26, i32 %200
  br label %212

202:                                              ; preds = %186, %184, %184, %184, %184, %184
  %203 = ptrtoint ptr %26 to i32
  %204 = add i32 %203, 3
  %205 = and i32 %204, -4
  %206 = inttoptr i32 %205 to ptr
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr i8, ptr %206, i32 4
  %209 = insertvalue [2 x i32] poison, i32 %31, 0
  %210 = insertvalue [2 x i32] %209, i32 %33, 1
  %211 = call fastcc ptr @pointer(ptr noundef %28, ptr noundef %25, ptr noundef %17, ptr noundef %207, [2 x i32] %210)
  br label %212

212:                                              ; preds = %202, %194, %192
  %213 = phi ptr [ %208, %202 ], [ %201, %194 ], [ %26, %192 ]
  %214 = phi ptr [ %211, %202 ], [ %199, %194 ], [ %25, %192 ]
  br label %215

215:                                              ; preds = %215, %212
  %216 = phi ptr [ %28, %212 ], [ %223, %215 ]
  %217 = load i8, ptr %216, align 1
  %218 = zext i8 %217 to i32
  %219 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %218
  %220 = load i8, ptr %219, align 1
  %221 = and i8 %220, 7
  %222 = icmp eq i8 %221, 0
  %223 = getelementptr i8, ptr %216, i32 1
  br i1 %222, label %312, label %215

224:                                              ; preds = %23
  %225 = icmp ult ptr %25, %17
  br i1 %225, label %226, label %227

226:                                              ; preds = %224
  store i8 37, ptr %25, align 1
  br label %227

227:                                              ; preds = %226, %224
  %228 = getelementptr i8, ptr %25, i32 1
  br label %312

229:                                              ; preds = %23
  %230 = ptrtoint ptr %26 to i32
  %231 = add i32 %230, 3
  %232 = and i32 %231, -4
  %233 = inttoptr i32 %232 to ptr
  %234 = load i32, ptr %233, align 4
  %235 = getelementptr i8, ptr %233, i32 4
  %236 = load i32, ptr %235, align 4
  %237 = getelementptr i8, ptr %233, i32 8
  %238 = zext i32 %236 to i64
  %239 = shl nuw i64 %238, 32
  %240 = zext i32 %234 to i64
  %241 = or i64 %239, %240
  br label %306

242:                                              ; preds = %23, %23
  %243 = ptrtoint ptr %26 to i32
  %244 = add i32 %243, 3
  %245 = and i32 %244, -4
  %246 = inttoptr i32 %245 to ptr
  %247 = load i32, ptr %246, align 4
  %248 = getelementptr i8, ptr %246, i32 4
  %249 = zext i32 %247 to i64
  br label %306

250:                                              ; preds = %23
  %251 = ptrtoint ptr %26 to i32
  %252 = add i32 %251, 3
  %253 = and i32 %252, -4
  %254 = inttoptr i32 %253 to ptr
  %255 = load i32, ptr %254, align 4
  %256 = getelementptr i8, ptr %254, i32 4
  %257 = zext i32 %255 to i64
  br label %306

258:                                              ; preds = %23
  %259 = ptrtoint ptr %26 to i32
  %260 = add i32 %259, 3
  %261 = and i32 %260, -4
  %262 = inttoptr i32 %261 to ptr
  %263 = load i32, ptr %262, align 4
  %264 = getelementptr i8, ptr %262, i32 4
  %265 = sext i32 %263 to i64
  br label %306

266:                                              ; preds = %23
  %267 = load i8, ptr %26, align 1
  %268 = getelementptr i8, ptr %26, i32 1
  %269 = zext i8 %267 to i64
  br label %306

270:                                              ; preds = %23
  %271 = load i8, ptr %26, align 1
  %272 = getelementptr i8, ptr %26, i32 1
  %273 = sext i8 %271 to i64
  br label %306

274:                                              ; preds = %23
  %275 = ptrtoint ptr %26 to i32
  %276 = add i32 %275, 1
  %277 = and i32 %276, -2
  %278 = inttoptr i32 %277 to ptr
  %279 = load i16, ptr %278, align 2
  %280 = getelementptr i8, ptr %278, i32 2
  %281 = zext i16 %279 to i64
  br label %306

282:                                              ; preds = %23
  %283 = ptrtoint ptr %26 to i32
  %284 = add i32 %283, 1
  %285 = and i32 %284, -2
  %286 = inttoptr i32 %285 to ptr
  %287 = load i16, ptr %286, align 2
  %288 = getelementptr i8, ptr %286, i32 2
  %289 = sext i16 %287 to i64
  br label %306

290:                                              ; preds = %23
  %291 = ptrtoint ptr %26 to i32
  %292 = add i32 %291, 3
  %293 = and i32 %292, -4
  %294 = inttoptr i32 %293 to ptr
  %295 = load i32, ptr %294, align 4
  %296 = getelementptr i8, ptr %294, i32 4
  %297 = zext i32 %295 to i64
  br label %306

298:                                              ; preds = %23
  %299 = ptrtoint ptr %26 to i32
  %300 = add i32 %299, 3
  %301 = and i32 %300, -4
  %302 = inttoptr i32 %301 to ptr
  %303 = load i32, ptr %302, align 4
  %304 = getelementptr i8, ptr %302, i32 4
  %305 = sext i32 %303 to i64
  br label %306

306:                                              ; preds = %298, %290, %282, %274, %270, %266, %258, %250, %242, %229
  %307 = phi i64 [ %305, %298 ], [ %297, %290 ], [ %289, %282 ], [ %281, %274 ], [ %273, %270 ], [ %269, %266 ], [ %265, %258 ], [ %257, %250 ], [ %249, %242 ], [ %241, %229 ]
  %308 = phi ptr [ %304, %298 ], [ %296, %290 ], [ %288, %282 ], [ %280, %274 ], [ %272, %270 ], [ %268, %266 ], [ %264, %258 ], [ %256, %250 ], [ %248, %242 ], [ %237, %229 ]
  %309 = insertvalue [2 x i32] poison, i32 %31, 0
  %310 = insertvalue [2 x i32] %309, i32 %33, 1
  %311 = call fastcc ptr @number(ptr noundef %25, ptr noundef %17, i64 noundef %307, [2 x i32] %310)
  br label %312

312:                                              ; preds = %306, %227, %215, %177, %162, %141, %89, %88, %62, %61, %40
  %313 = phi ptr [ %308, %306 ], [ %26, %227 ], [ %180, %177 ], [ %26, %40 ], [ %48, %61 ], [ %48, %62 ], [ %76, %88 ], [ %76, %89 ], [ %136, %141 ], [ %136, %162 ], [ %213, %215 ]
  %314 = phi ptr [ %311, %306 ], [ %228, %227 ], [ %183, %177 ], [ %41, %40 ], [ %25, %61 ], [ %25, %62 ], [ %25, %88 ], [ %25, %89 ], [ %143, %141 ], [ %164, %162 ], [ %214, %215 ]
  %315 = phi ptr [ %28, %306 ], [ %28, %227 ], [ %28, %177 ], [ %28, %40 ], [ %28, %61 ], [ %28, %62 ], [ %28, %88 ], [ %28, %89 ], [ %28, %141 ], [ %28, %162 ], [ %216, %215 ]
  %316 = load i8, ptr %315, align 1
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %318, label %23

318:                                              ; preds = %312, %23, %12
  %319 = phi ptr [ %0, %12 ], [ %25, %23 ], [ %314, %312 ]
  %320 = icmp eq i32 %18, 0
  br i1 %320, label %325, label %321

321:                                              ; preds = %318
  %322 = icmp ult ptr %319, %17
  %323 = getelementptr i8, ptr %17, i32 -1
  %324 = select i1 %322, ptr %319, ptr %323
  store i8 0, ptr %324, align 1
  br label %325

325:                                              ; preds = %321, %318
  %326 = ptrtoint ptr %319 to i32
  %327 = sub i32 %326, %15
  br label %328

328:                                              ; preds = %325, %11
  %329 = phi i32 [ %327, %325 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret i32 %329
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) #1 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %4)
  %5 = load i32, ptr %4, align 4
  %6 = insertvalue [1 x i32] poison, i32 %5, 0
  %7 = call i32 @vbin_printf(ptr noundef %0, i32 noundef %1, ptr noundef %2, [1 x i32] %6)
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vsscanf(ptr noundef %0, ptr noundef %1, [1 x i32] %2) #1 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca [8 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store ptr null, ptr %5, align 4, !annotation !8
  %7 = load i8, ptr %1, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %353, label %9

9:                                                ; preds = %3
  %10 = extractvalue [1 x i32] %2, 0
  %11 = inttoptr i32 %10 to ptr
  %12 = ptrtoint ptr %0 to i32
  br label %13

13:                                               ; preds = %117, %9
  %14 = phi i8 [ %7, %9 ], [ %122, %117 ]
  %15 = phi ptr [ %1, %9 ], [ %118, %117 ]
  %16 = phi i32 [ 0, %9 ], [ %121, %117 ]
  %17 = phi ptr [ %0, %9 ], [ %120, %117 ]
  %18 = phi ptr [ %11, %9 ], [ %119, %117 ]
  %19 = zext i8 %14 to i32
  %20 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = and i8 %21, 32
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %13
  %25 = getelementptr i8, ptr %15, i32 1
  %26 = call ptr @skip_spaces(ptr noundef %25) #20
  %27 = call ptr @skip_spaces(ptr noundef %17) #20
  %28 = load i8, ptr %26, align 1
  br label %29

29:                                               ; preds = %24, %13
  %30 = phi i8 [ %28, %24 ], [ %14, %13 ]
  %31 = phi ptr [ %26, %24 ], [ %15, %13 ]
  %32 = phi ptr [ %27, %24 ], [ %17, %13 ]
  switch i8 %30, label %33 [
    i8 0, label %353
    i8 37, label %39
  ]

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %31, i32 1
  store ptr %34, ptr %4, align 4
  %35 = load i8, ptr %31, align 1
  %36 = getelementptr i8, ptr %32, i32 1
  %37 = load i8, ptr %32, align 1
  %38 = icmp eq i8 %35, %37
  br i1 %38, label %117, label %353

39:                                               ; preds = %29
  %40 = getelementptr i8, ptr %31, i32 1
  store ptr %40, ptr %4, align 4
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 42
  br i1 %42, label %43, label %76

43:                                               ; preds = %39
  %44 = load i8, ptr %32, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %353, label %46

46:                                               ; preds = %43
  %47 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @_ctype, i32 0, i32 42), align 1
  %48 = freeze i8 %47
  %49 = and i8 %48, 32
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %56, %46
  %52 = phi i8 [ %58, %56 ], [ 42, %46 ]
  %53 = phi ptr [ %57, %56 ], [ %40, %46 ]
  switch i8 %52, label %56 [
    i8 37, label %54
    i8 0, label %54
    i8 91, label %353
  ]

54:                                               ; preds = %56, %51, %51, %46
  %55 = phi ptr [ %40, %46 ], [ %53, %51 ], [ %53, %51 ], [ %57, %56 ]
  br label %65

56:                                               ; preds = %51
  %57 = getelementptr i8, ptr %53, i32 1
  store ptr %57, ptr %4, align 4
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %59
  %61 = load i8, ptr %60, align 1
  %62 = freeze i8 %61
  %63 = and i8 %62, 32
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %51, label %54

65:                                               ; preds = %65, %54
  %66 = phi ptr [ %75, %65 ], [ %32, %54 ]
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %68
  %70 = load i8, ptr %69, align 1
  %71 = and i8 %70, 32
  %72 = icmp ne i8 %71, 0
  %73 = icmp eq i8 %67, 0
  %74 = select i1 %72, i1 true, i1 %73
  %75 = getelementptr i8, ptr %66, i32 1
  br i1 %74, label %117, label %65

76:                                               ; preds = %39
  %77 = zext i8 %41 to i32
  %78 = add nsw i32 %77, -58
  %79 = icmp ult i32 %78, -10
  br i1 %79, label %88, label %80

80:                                               ; preds = %76
  %81 = call fastcc i32 @skip_atoi(ptr noundef nonnull %4)
  %82 = shl i32 %81, 16
  %83 = icmp slt i32 %82, 65536
  br i1 %83, label %353, label %84

84:                                               ; preds = %80
  %85 = trunc i32 %81 to i16
  %86 = load ptr, ptr %4, align 4
  %87 = load i8, ptr %86, align 1
  br label %88

88:                                               ; preds = %84, %76
  %89 = phi i8 [ %87, %84 ], [ %41, %76 ]
  %90 = phi ptr [ %86, %84 ], [ %40, %76 ]
  %91 = phi i16 [ %85, %84 ], [ -1, %76 ]
  switch i8 %89, label %102 [
    i8 122, label %92
    i8 108, label %92
    i8 104, label %92
    i8 76, label %92
  ]

92:                                               ; preds = %88, %88, %88, %88
  %93 = getelementptr i8, ptr %90, i32 1
  store ptr %93, ptr %4, align 4
  %94 = load i8, ptr %90, align 1
  %95 = load i8, ptr %93, align 1
  %96 = icmp eq i8 %94, %95
  br i1 %96, label %97, label %106, !prof !10

97:                                               ; preds = %92
  switch i8 %94, label %106 [
    i8 104, label %98
    i8 108, label %100
  ]

98:                                               ; preds = %97
  %99 = getelementptr i8, ptr %90, i32 2
  store ptr %99, ptr %4, align 4
  br label %102

100:                                              ; preds = %97
  %101 = getelementptr i8, ptr %90, i32 2
  store ptr %101, ptr %4, align 4
  br label %102

102:                                              ; preds = %100, %98, %88
  %103 = phi ptr [ %90, %88 ], [ %101, %100 ], [ %99, %98 ]
  %104 = phi i8 [ -1, %88 ], [ 76, %100 ], [ 72, %98 ]
  %105 = load i8, ptr %103, align 1
  br label %106

106:                                              ; preds = %102, %97, %92
  %107 = phi i8 [ %105, %102 ], [ %95, %97 ], [ %95, %92 ]
  %108 = phi ptr [ %103, %102 ], [ %93, %97 ], [ %93, %92 ]
  %109 = phi i8 [ %104, %102 ], [ %94, %97 ], [ %94, %92 ]
  switch i8 %107, label %124 [
    i8 0, label %353
    i8 110, label %110
  ]

110:                                              ; preds = %106
  %111 = ptrtoint ptr %32 to i32
  %112 = sub i32 %111, %12
  %113 = getelementptr inbounds i8, ptr %18, i32 4
  %114 = load ptr, ptr %18, align 4
  store i32 %112, ptr %114, align 4
  %115 = load ptr, ptr %4, align 4
  %116 = getelementptr i8, ptr %115, i32 1
  store ptr %116, ptr %4, align 4
  br label %117

117:                                              ; preds = %351, %261, %252, %177, %148, %110, %65, %33
  %118 = phi ptr [ %34, %33 ], [ %116, %110 ], [ %128, %261 ], [ %128, %351 ], [ %212, %252 ], [ %181, %177 ], [ %128, %148 ], [ %55, %65 ]
  %119 = phi ptr [ %18, %33 ], [ %113, %110 ], [ %18, %261 ], [ %352, %351 ], [ %183, %252 ], [ %151, %177 ], [ %131, %148 ], [ %18, %65 ]
  %120 = phi ptr [ %36, %33 ], [ %32, %110 ], [ %262, %261 ], [ %349, %351 ], [ %253, %252 ], [ %178, %177 ], [ %141, %148 ], [ %66, %65 ]
  %121 = phi i32 [ %16, %33 ], [ %16, %110 ], [ %16, %261 ], [ %348, %351 ], [ %255, %252 ], [ %180, %177 ], [ %149, %148 ], [ %16, %65 ]
  %122 = load i8, ptr %118, align 1
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %353, label %13

124:                                              ; preds = %106
  %125 = load i8, ptr %32, align 1
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %353, label %127

127:                                              ; preds = %124
  %128 = getelementptr i8, ptr %108, i32 1
  store ptr %128, ptr %4, align 4
  %129 = load i8, ptr %108, align 1
  switch i8 %129, label %353 [
    i8 99, label %130
    i8 115, label %150
    i8 91, label %182
    i8 111, label %256
    i8 120, label %257
    i8 88, label %257
    i8 105, label %258
    i8 100, label %259
    i8 117, label %265
    i8 37, label %261
  ]

130:                                              ; preds = %127
  %131 = getelementptr inbounds i8, ptr %18, i32 4
  %132 = load ptr, ptr %18, align 4
  %133 = icmp eq i16 %91, -1
  %134 = select i1 %133, i16 1, i16 %91
  %135 = load i8, ptr %32, align 1
  br label %136

136:                                              ; preds = %144, %130
  %137 = phi i8 [ %135, %130 ], [ %146, %144 ]
  %138 = phi ptr [ %32, %130 ], [ %141, %144 ]
  %139 = phi i16 [ %134, %130 ], [ %142, %144 ]
  %140 = phi ptr [ %132, %130 ], [ %145, %144 ]
  %141 = getelementptr i8, ptr %138, i32 1
  store i8 %137, ptr %140, align 1
  %142 = add i16 %139, -1
  %143 = icmp sgt i16 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %136
  %145 = getelementptr i8, ptr %140, i32 1
  %146 = load i8, ptr %141, align 1
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %136

148:                                              ; preds = %144, %136
  %149 = add i32 %16, 1
  br label %117

150:                                              ; preds = %127
  %151 = getelementptr inbounds i8, ptr %18, i32 4
  %152 = load ptr, ptr %18, align 4
  %153 = call ptr @skip_spaces(ptr noundef %32) #20
  %154 = load i8, ptr %153, align 1
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %177, label %156

156:                                              ; preds = %150
  %157 = icmp eq i16 %91, -1
  %158 = select i1 %157, i16 32767, i16 %91
  br label %159

159:                                              ; preds = %171, %156
  %160 = phi i8 [ %175, %171 ], [ %154, %156 ]
  %161 = phi ptr [ %174, %171 ], [ %152, %156 ]
  %162 = phi i16 [ %172, %171 ], [ %158, %156 ]
  %163 = phi ptr [ %173, %171 ], [ %153, %156 ]
  %164 = zext i8 %160 to i32
  %165 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %164
  %166 = load i8, ptr %165, align 1
  %167 = and i8 %166, 32
  %168 = icmp ne i8 %167, 0
  %169 = icmp eq i16 %162, 0
  %170 = select i1 %168, i1 true, i1 %169
  br i1 %170, label %177, label %171

171:                                              ; preds = %159
  %172 = add i16 %162, -1
  %173 = getelementptr i8, ptr %163, i32 1
  %174 = getelementptr i8, ptr %161, i32 1
  store i8 %160, ptr %161, align 1
  %175 = load i8, ptr %173, align 1
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %159

177:                                              ; preds = %171, %159, %150
  %178 = phi ptr [ %153, %150 ], [ %173, %171 ], [ %163, %159 ]
  %179 = phi ptr [ %152, %150 ], [ %174, %171 ], [ %161, %159 ]
  store i8 0, ptr %179, align 1
  %180 = add i32 %16, 1
  %181 = load ptr, ptr %4, align 4
  br label %117

182:                                              ; preds = %127
  %183 = getelementptr inbounds i8, ptr %18, i32 4
  %184 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false)
  %185 = load i8, ptr %128, align 1
  %186 = icmp eq i8 %185, 94
  %187 = icmp eq i16 %91, -1
  br i1 %187, label %251, label %188

188:                                              ; preds = %182
  br i1 %186, label %189, label %191

189:                                              ; preds = %188
  %190 = getelementptr i8, ptr %108, i32 2
  store ptr %190, ptr %4, align 4
  br label %191

191:                                              ; preds = %189, %188
  %192 = phi ptr [ %128, %188 ], [ %190, %189 ]
  br label %193

193:                                              ; preds = %197, %191
  %194 = phi ptr [ %205, %197 ], [ %192, %191 ]
  %195 = phi i32 [ %206, %197 ], [ 0, %191 ]
  %196 = load i8, ptr %194, align 1
  switch i8 %196, label %197 [
    i8 0, label %207
    i8 93, label %207
  ]

197:                                              ; preds = %193
  %198 = zext i8 %196 to i32
  %199 = and i32 %198, 31
  %200 = shl nuw i32 1, %199
  %201 = lshr i32 %198, 5
  %202 = getelementptr i32, ptr %6, i32 %201
  %203 = load i32, ptr %202, align 4
  %204 = or i32 %203, %200
  store i32 %204, ptr %202, align 4
  %205 = getelementptr i8, ptr %194, i32 1
  store ptr %205, ptr %4, align 4
  %206 = add i32 %195, 1
  br label %193

207:                                              ; preds = %193, %193
  %208 = icmp ne i8 %196, 0
  %209 = icmp ne i32 %195, 0
  %210 = select i1 %208, i1 %209, i1 false
  br i1 %210, label %211, label %251

211:                                              ; preds = %207
  %212 = getelementptr i8, ptr %194, i32 1
  store ptr %212, ptr %4, align 4
  br i1 %186, label %213, label %216

213:                                              ; preds = %211
  call void @__bitmap_complement(ptr noundef nonnull %6, ptr noundef nonnull %6, i32 noundef 256) #20
  %214 = load i32, ptr %6, align 4
  %215 = and i32 %214, -2
  store i32 %215, ptr %6, align 4
  br label %216

216:                                              ; preds = %213, %211
  %217 = load i8, ptr %32, align 1
  %218 = zext i8 %217 to i32
  %219 = lshr i32 %218, 5
  %220 = getelementptr i32, ptr %6, i32 %219
  %221 = load volatile i32, ptr %220, align 4
  %222 = and i32 %218, 31
  %223 = shl nuw i32 1, %222
  %224 = and i32 %223, %221
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %251, label %226

226:                                              ; preds = %216
  %227 = load volatile i32, ptr %220, align 4
  %228 = and i32 %223, %227
  %229 = icmp eq i32 %228, 0
  %230 = icmp eq i16 %91, 0
  %231 = select i1 %229, i1 true, i1 %230
  br i1 %231, label %252, label %232

232:                                              ; preds = %232, %226
  %233 = phi i8 [ %240, %232 ], [ %217, %226 ]
  %234 = phi ptr [ %239, %232 ], [ %184, %226 ]
  %235 = phi i16 [ %237, %232 ], [ %91, %226 ]
  %236 = phi ptr [ %238, %232 ], [ %32, %226 ]
  %237 = add i16 %235, -1
  %238 = getelementptr i8, ptr %236, i32 1
  %239 = getelementptr i8, ptr %234, i32 1
  store i8 %233, ptr %234, align 1
  %240 = load i8, ptr %238, align 1
  %241 = zext i8 %240 to i32
  %242 = lshr i32 %241, 5
  %243 = getelementptr i32, ptr %6, i32 %242
  %244 = load volatile i32, ptr %243, align 4
  %245 = and i32 %241, 31
  %246 = shl nuw i32 1, %245
  %247 = and i32 %246, %244
  %248 = icmp eq i32 %247, 0
  %249 = icmp eq i16 %237, 0
  %250 = select i1 %248, i1 true, i1 %249
  br i1 %250, label %252, label %232

251:                                              ; preds = %216, %207, %182
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #20
  br label %353

252:                                              ; preds = %232, %226
  %253 = phi ptr [ %32, %226 ], [ %238, %232 ]
  %254 = phi ptr [ %184, %226 ], [ %239, %232 ]
  store i8 0, ptr %254, align 1
  %255 = add i32 %16, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #20
  br label %117

256:                                              ; preds = %127
  br label %265

257:                                              ; preds = %127, %127
  br label %265

258:                                              ; preds = %127
  br label %259

259:                                              ; preds = %258, %127
  %260 = phi i32 [ 10, %127 ], [ 0, %258 ]
  br label %265

261:                                              ; preds = %127
  %262 = getelementptr i8, ptr %32, i32 1
  %263 = load i8, ptr %32, align 1
  %264 = icmp eq i8 %263, 37
  br i1 %264, label %117, label %353

265:                                              ; preds = %259, %257, %256, %127
  %266 = phi i32 [ 10, %127 ], [ %260, %259 ], [ 16, %257 ], [ 8, %256 ]
  %267 = phi i1 [ false, %127 ], [ true, %259 ], [ false, %257 ], [ false, %256 ]
  %268 = call ptr @skip_spaces(ptr noundef %32) #20
  %269 = load i8, ptr %268, align 1
  %270 = icmp eq i8 %269, 45
  %271 = select i1 %267, i1 %270, i1 false
  br i1 %271, label %272, label %277

272:                                              ; preds = %265
  %273 = icmp eq i16 %91, 1
  br i1 %273, label %353, label %274

274:                                              ; preds = %272
  %275 = getelementptr i8, ptr %268, i32 1
  %276 = load i8, ptr %275, align 1
  br label %277

277:                                              ; preds = %274, %265
  %278 = phi i8 [ %276, %274 ], [ %269, %265 ]
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %353, label %280

280:                                              ; preds = %277
  %281 = lshr i32 %266, 1
  switch i32 %281, label %312 [
    i32 8, label %288
    i32 5, label %282
    i32 4, label %284
    i32 0, label %286
  ]

282:                                              ; preds = %280
  %283 = zext i8 %278 to i32
  br label %295

284:                                              ; preds = %280
  %285 = zext i8 %278 to i32
  br label %300

286:                                              ; preds = %280
  %287 = zext i8 %278 to i32
  br label %308

288:                                              ; preds = %280
  %289 = zext i8 %278 to i32
  %290 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %289
  %291 = load i8, ptr %290, align 1
  %292 = and i8 %291, 68
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %353, label %294

294:                                              ; preds = %288
  switch i32 %266, label %312 [
    i32 10, label %295
    i32 8, label %300
    i32 0, label %308
  ]

295:                                              ; preds = %294, %282
  %296 = phi i32 [ %283, %282 ], [ %289, %294 ]
  %297 = add nsw i32 %296, -58
  %298 = icmp ult i32 %297, -10
  br i1 %298, label %353, label %299

299:                                              ; preds = %295
  switch i32 %266, label %312 [
    i32 8, label %300
    i32 0, label %308
  ]

300:                                              ; preds = %299, %294, %284
  %301 = phi i32 [ %285, %284 ], [ %289, %294 ], [ %296, %299 ]
  %302 = add nsw i32 %301, -58
  %303 = icmp ult i32 %302, -10
  %304 = icmp ugt i8 %278, 55
  %305 = select i1 %303, i1 true, i1 %304
  br i1 %305, label %353, label %306

306:                                              ; preds = %300
  %307 = icmp eq i32 %266, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %306, %299, %294, %286
  %309 = phi i32 [ %287, %286 ], [ %289, %294 ], [ %296, %299 ], [ %301, %306 ]
  %310 = add nsw i32 %309, -58
  %311 = icmp ult i32 %310, -10
  br i1 %311, label %353, label %312

312:                                              ; preds = %308, %306, %299, %294, %280
  %313 = sext i16 %91 to i32
  %314 = icmp sgt i16 %91, -1
  %315 = select i1 %314, i32 %313, i32 2147483647
  br i1 %267, label %316, label %326

316:                                              ; preds = %312
  %317 = icmp ne i32 %315, 0
  %318 = and i1 %317, %270
  br i1 %318, label %319, label %324

319:                                              ; preds = %316
  %320 = getelementptr i8, ptr %268, i32 1
  %321 = add nsw i32 %315, -1
  %322 = call fastcc i64 @simple_strntoull(ptr noundef %320, i32 noundef %321, ptr noundef nonnull %5, i32 noundef %266) #20
  %323 = sub i64 0, %322
  br label %328

324:                                              ; preds = %316
  %325 = call fastcc i64 @simple_strntoull(ptr noundef %268, i32 noundef %315, ptr noundef nonnull %5, i32 noundef %266) #20
  br label %328

326:                                              ; preds = %312
  %327 = call fastcc i64 @simple_strntoull(ptr noundef %268, i32 noundef %315, ptr noundef nonnull %5, i32 noundef %266)
  br label %328

328:                                              ; preds = %326, %324, %319
  %329 = phi i64 [ %327, %326 ], [ %323, %319 ], [ %325, %324 ]
  switch i8 %109, label %344 [
    i8 72, label %330
    i8 104, label %333
    i8 108, label %336
    i8 76, label %339
    i8 122, label %341
  ]

330:                                              ; preds = %328
  %331 = trunc i64 %329 to i8
  %332 = load ptr, ptr %18, align 4
  store i8 %331, ptr %332, align 1
  br label %347

333:                                              ; preds = %328
  %334 = trunc i64 %329 to i16
  %335 = load ptr, ptr %18, align 4
  store i16 %334, ptr %335, align 2
  br label %347

336:                                              ; preds = %328
  %337 = trunc i64 %329 to i32
  %338 = load ptr, ptr %18, align 4
  store i32 %337, ptr %338, align 4
  br label %347

339:                                              ; preds = %328
  %340 = load ptr, ptr %18, align 4
  store i64 %329, ptr %340, align 8
  br label %347

341:                                              ; preds = %328
  %342 = trunc i64 %329 to i32
  %343 = load ptr, ptr %18, align 4
  store i32 %342, ptr %343, align 4
  br label %347

344:                                              ; preds = %328
  %345 = trunc i64 %329 to i32
  %346 = load ptr, ptr %18, align 4
  store i32 %345, ptr %346, align 4
  br label %347

347:                                              ; preds = %344, %341, %339, %336, %333, %330
  %348 = add i32 %16, 1
  %349 = load ptr, ptr %5, align 4
  %350 = icmp eq ptr %349, null
  br i1 %350, label %353, label %351

351:                                              ; preds = %347
  %352 = getelementptr inbounds i8, ptr %18, i32 4
  br label %117

353:                                              ; preds = %347, %308, %300, %295, %288, %277, %272, %261, %251, %127, %124, %117, %106, %80, %51, %43, %33, %29, %3
  %354 = phi i32 [ %16, %251 ], [ 0, %3 ], [ %16, %51 ], [ %16, %261 ], [ %16, %127 ], [ %16, %106 ], [ %348, %347 ], [ %16, %277 ], [ %16, %288 ], [ %16, %295 ], [ %16, %300 ], [ %16, %308 ], [ %16, %272 ], [ %16, %124 ], [ %16, %80 ], [ %16, %43 ], [ %16, %33 ], [ %121, %117 ], [ %16, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret i32 %354
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @skip_atoi(ptr nocapture noundef %0) unnamed_addr #13 {
  %2 = load ptr, ptr %0, align 4
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi ptr [ %2, %1 ], [ %7, %3 ]
  %5 = phi i32 [ 0, %1 ], [ %11, %3 ]
  %6 = mul i32 %5, 10
  %7 = getelementptr i8, ptr %4, i32 1
  store ptr %7, ptr %0, align 4
  %8 = load i8, ptr %4, align 1
  %9 = zext i8 %8 to i32
  %10 = add i32 %6, -48
  %11 = add i32 %10, %9
  %12 = load i8, ptr %7, align 1
  %13 = zext i8 %12 to i32
  %14 = add nsw i32 %13, -58
  %15 = icmp ult i32 %14, -10
  br i1 %15, label %16, label %3

16:                                               ; preds = %3
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sscanf(ptr noundef %0, ptr noundef %1, ...) #1 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load i32, ptr %3, align 4
  %5 = insertvalue [1 x i32] poison, i32 %4, 0
  %6 = call i32 @vsscanf(ptr noundef %0, ptr noundef %1, [1 x i32] %5)
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_parse_integer_fixup_radix(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_parse_integer_limit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal fastcc ptr @put_dec_trunc8(ptr noundef writeonly %0, i32 noundef %1) unnamed_addr #14 {
  %3 = icmp ult i32 %1, 100
  br i1 %3, label %33, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = mul nuw nsw i64 %5, 42949673
  %7 = lshr i64 %6, 32
  %8 = trunc i64 %7 to i32
  %9 = mul i32 %8, -100
  %10 = add i32 %9, %1
  %11 = getelementptr [100 x i16], ptr @decpair, i32 0, i32 %10
  %12 = load i16, ptr %11, align 2
  store i16 %12, ptr %0, align 2
  %13 = getelementptr i8, ptr %0, i32 2
  %14 = icmp ult i32 %8, 100
  br i1 %14, label %33, label %15

15:                                               ; preds = %4
  %16 = mul nuw nsw i64 %7, 42949673
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  %19 = mul nsw i32 %18, -100
  %20 = add nsw i32 %19, %8
  %21 = getelementptr [100 x i16], ptr @decpair, i32 0, i32 %20
  %22 = load i16, ptr %21, align 2
  store i16 %22, ptr %13, align 2
  %23 = getelementptr i8, ptr %0, i32 4
  %24 = icmp ult i32 %18, 100
  br i1 %24, label %33, label %25

25:                                               ; preds = %15
  %26 = mul nuw i32 %18, 5243
  %27 = lshr i32 %26, 19
  %28 = mul nsw i32 %27, -100
  %29 = add nsw i32 %28, %18
  %30 = getelementptr [100 x i16], ptr @decpair, i32 0, i32 %29
  %31 = load i16, ptr %30, align 2
  store i16 %31, ptr %23, align 2
  %32 = getelementptr i8, ptr %0, i32 6
  br label %33

33:                                               ; preds = %25, %15, %4, %2
  %34 = phi ptr [ %0, %2 ], [ %23, %15 ], [ %13, %4 ], [ %32, %25 ]
  %35 = phi i32 [ %1, %2 ], [ %18, %15 ], [ %8, %4 ], [ %27, %25 ]
  %36 = getelementptr [100 x i16], ptr @decpair, i32 0, i32 %35
  %37 = load i16, ptr %36, align 2
  store i16 %37, ptr %34, align 2
  %38 = icmp ult i32 %35, 10
  %39 = select i1 %38, i32 1, i32 2
  %40 = getelementptr i8, ptr %34, i32 %39
  ret ptr %40
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal fastcc i32 @put_dec_helper4(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #15 {
  %3 = zext i32 %1 to i64
  %4 = mul nuw nsw i64 %3, 879609303
  %5 = lshr i64 %4, 43
  %6 = trunc i64 %5 to i32
  %7 = mul i32 %6, -10000
  %8 = add i32 %7, %1
  %9 = mul i32 %8, 5243
  %10 = lshr i32 %9, 19
  %11 = mul nsw i32 %10, -100
  %12 = add i32 %11, %8
  %13 = getelementptr [100 x i16], ptr @decpair, i32 0, i32 %12
  %14 = load i16, ptr %13, align 2
  store i16 %14, ptr %0, align 2
  %15 = getelementptr i8, ptr %0, i32 2
  %16 = getelementptr [100 x i16], ptr @decpair, i32 0, i32 %10
  %17 = load i16, ptr %16, align 2
  store i16 %17, ptr %15, align 2
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_bytes_arch(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_random_ready_callback(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @enable_ptr_key_workfn(ptr nocapture noundef readnone %0) #1 {
  tail call void @get_random_bytes(ptr noundef nonnull @ptr_key, i32 noundef 16) #20
  %2 = load i8, ptr @static_key_initialized, align 1, !range !9
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !10

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 329, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.static_key_disable, ptr noundef nonnull @not_filled_random_ptr_key) #20
  br label %5

5:                                                ; preds = %4, %1
  %6 = load volatile i32, ptr @not_filled_random_ptr_key, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  %9 = load volatile i32, ptr @not_filled_random_ptr_key, align 4
  %10 = icmp ne i32 %9, 0
  %11 = load i1, ptr @static_key_disable.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %16, !prof !10

14:                                               ; preds = %8
  store i1 true, ptr @static_key_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 332, i32 noundef 9, ptr noundef null) #20
  br label %16

15:                                               ; preds = %5
  store volatile i32 0, ptr @not_filled_random_ptr_key, align 4
  br label %16

16:                                               ; preds = %15, %14, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fill_random_ptr_key(ptr nocapture noundef readnone %0) #1 {
  %2 = load ptr, ptr @system_unbound_wq, align 4
  %3 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %2, ptr noundef nonnull @enable_ptr_key_work) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @siphash_1u32(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @string_nocheck(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, [2 x i32] %3) unnamed_addr #2 {
  %5 = extractvalue [2 x i32] %3, 1
  %6 = zext i32 %5 to i64
  %7 = shl nuw i64 %6, 32
  %8 = ashr i64 %7, 48
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %23, %4
  %12 = phi i32 [ %16, %23 ], [ %9, %4 ]
  %13 = phi i32 [ %25, %23 ], [ 0, %4 ]
  %14 = phi ptr [ %17, %23 ], [ %2, %4 ]
  %15 = phi ptr [ %24, %23 ], [ %0, %4 ]
  %16 = add i32 %12, -1
  %17 = getelementptr i8, ptr %14, i32 1
  %18 = load i8, ptr %14, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %11
  %21 = icmp ult ptr %15, %1
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  store i8 %18, ptr %15, align 1
  br label %23

23:                                               ; preds = %22, %20
  %24 = getelementptr i8, ptr %15, i32 1
  %25 = add nuw i32 %13, 1
  %26 = icmp eq i32 %16, 0
  br i1 %26, label %27, label %11

27:                                               ; preds = %23, %11, %4
  %28 = phi ptr [ %0, %4 ], [ %15, %11 ], [ %24, %23 ]
  %29 = phi i32 [ 0, %4 ], [ %13, %11 ], [ %9, %23 ]
  %30 = tail call fastcc ptr @widen_string(ptr noundef %28, i32 noundef %29, ptr noundef %1, [2 x i32] %3)
  ret ptr %30
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @widen_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, [2 x i32] %3) unnamed_addr #10 {
  %5 = extractvalue [2 x i32] %3, 0
  %6 = zext i32 %5 to i64
  %7 = shl nuw i64 %6, 32
  %8 = ashr i64 %7, 40
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %11, label %46, !prof !10

11:                                               ; preds = %4
  %12 = extractvalue [2 x i32] %3, 1
  %13 = sub i32 %9, %1
  %14 = and i32 %12, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = icmp eq i32 %13, 0
  br i1 %17, label %46, label %37

18:                                               ; preds = %11
  %19 = sub i32 0, %1
  %20 = getelementptr i8, ptr %0, i32 %19
  %21 = icmp ult ptr %20, %2
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = ptrtoint ptr %2 to i32
  %24 = ptrtoint ptr %20 to i32
  %25 = sub i32 %23, %24
  %26 = icmp ugt i32 %25, %13
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = icmp eq i32 %1, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %27
  %30 = sub i32 %25, %13
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %1) #20
  %32 = getelementptr i8, ptr %20, i32 %13
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %32, ptr align 1 %20, i32 %31, i1 false) #20
  br label %33

33:                                               ; preds = %29, %27, %22
  %34 = phi i32 [ %25, %22 ], [ %13, %29 ], [ %13, %27 ]
  tail call void @llvm.memset.p0.i32(ptr align 1 %20, i8 32, i32 %34, i1 false) #20
  br label %35

35:                                               ; preds = %33, %18
  %36 = getelementptr i8, ptr %0, i32 %13
  br label %46

37:                                               ; preds = %43, %16
  %38 = phi i32 [ %40, %43 ], [ %13, %16 ]
  %39 = phi ptr [ %44, %43 ], [ %0, %16 ]
  %40 = add i32 %38, -1
  %41 = icmp ult ptr %39, %2
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i8 32, ptr %39, align 1
  br label %43

43:                                               ; preds = %42, %37
  %44 = getelementptr i8, ptr %39, i32 1
  %45 = icmp eq i32 %40, 0
  br i1 %45, label %46, label %37

46:                                               ; preds = %43, %35, %16, %4
  %47 = phi ptr [ %36, %35 ], [ %0, %4 ], [ %0, %16 ], [ %44, %43 ]
  ret ptr %47
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #9

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @symbol_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, [2 x i32] %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca [266 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 266, ptr nonnull %6) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(266) %6, i8 0, i32 266, i1 false), !annotation !8
  %7 = getelementptr i8, ptr %4, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = ptrtoint ptr %2 to i32
  %10 = load i8, ptr %4, align 1
  switch i8 %10, label %24 [
    i8 66, label %11
    i8 83, label %17
    i8 115, label %26
  ]

11:                                               ; preds = %5
  %12 = icmp eq i8 %8, 98
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = call i32 @sprint_backtrace_build_id(ptr noundef nonnull %6, i32 noundef %9) #20
  br label %28

15:                                               ; preds = %11
  %16 = call i32 @sprint_backtrace(ptr noundef nonnull %6, i32 noundef %9) #20
  br label %28

17:                                               ; preds = %5
  switch i8 %8, label %24 [
    i8 98, label %22
    i8 82, label %18
  ]

18:                                               ; preds = %17
  %19 = getelementptr i8, ptr %4, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 98
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %17
  %23 = call i32 @sprint_symbol_build_id(ptr noundef nonnull %6, i32 noundef %9) #20
  br label %28

24:                                               ; preds = %18, %17, %5
  %25 = call i32 @sprint_symbol(ptr noundef nonnull %6, i32 noundef %9) #20
  br label %28

26:                                               ; preds = %5
  %27 = call i32 @sprint_symbol_no_offset(ptr noundef nonnull %6, i32 noundef %9) #20
  br label %28

28:                                               ; preds = %26, %24, %22, %15, %13
  %29 = extractvalue [2 x i32] %3, 1
  %30 = zext i32 %29 to i64
  %31 = shl nuw i64 %30, 32
  %32 = ashr i64 %31, 48
  %33 = trunc i64 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %47, %28
  %36 = phi i32 [ %40, %47 ], [ %33, %28 ]
  %37 = phi i32 [ %49, %47 ], [ 0, %28 ]
  %38 = phi ptr [ %41, %47 ], [ %6, %28 ]
  %39 = phi ptr [ %48, %47 ], [ %0, %28 ]
  %40 = add i32 %36, -1
  %41 = getelementptr i8, ptr %38, i32 1
  %42 = load i8, ptr %38, align 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %35
  %45 = icmp ult ptr %39, %1
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  store i8 %42, ptr %39, align 1
  br label %47

47:                                               ; preds = %46, %44
  %48 = getelementptr i8, ptr %39, i32 1
  %49 = add nuw i32 %37, 1
  %50 = icmp eq i32 %40, 0
  br i1 %50, label %51, label %35

51:                                               ; preds = %47, %35, %28
  %52 = phi ptr [ %0, %28 ], [ %48, %47 ], [ %39, %35 ]
  %53 = phi i32 [ 0, %28 ], [ %33, %47 ], [ %37, %35 ]
  %54 = call fastcc ptr @widen_string(ptr noundef %52, i32 noundef %53, ptr noundef %1, [2 x i32] %3) #20
  call void @llvm.lifetime.end.p0(i64 266, ptr nonnull %6) #20
  ret ptr %54
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @resource_string(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, [2 x i32] %3, ptr nocapture noundef readonly %4) unnamed_addr #10 {
  %6 = alloca [59 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 59, ptr nonnull %6) #20
  %7 = getelementptr inbounds i8, ptr %6, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(59) %7, i8 0, i32 58, i1 false), !annotation !8
  %8 = getelementptr inbounds i8, ptr %6, i32 59
  %9 = load i8, ptr %4, align 1
  %10 = icmp eq i8 %9, 82
  %11 = icmp eq ptr %2, null
  %12 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  %13 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %14 = or i1 %12, %13
  %15 = select i1 %14, ptr @.str.60, ptr null
  %16 = select i1 %11, ptr @.str.59, ptr %15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %54, label %18

18:                                               ; preds = %5
  %19 = extractvalue [2 x i32] %3, 1
  %20 = zext i32 %19 to i64
  %21 = shl nuw i64 %20, 32
  %22 = ashr i64 %21, 48
  %23 = trunc i64 %22 to i32
  %24 = icmp eq i32 %23, -1
  %25 = and i32 %19, 65535
  %26 = or i32 %25, 524288
  %27 = select i1 %24, i32 %26, i32 %19
  %28 = zext i32 %27 to i64
  %29 = shl nuw i64 %28, 32
  %30 = ashr i64 %29, 48
  %31 = trunc i64 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %45, %18
  %34 = phi i32 [ %38, %45 ], [ %31, %18 ]
  %35 = phi i32 [ %47, %45 ], [ 0, %18 ]
  %36 = phi ptr [ %39, %45 ], [ %16, %18 ]
  %37 = phi ptr [ %46, %45 ], [ %0, %18 ]
  %38 = add i32 %34, -1
  %39 = getelementptr i8, ptr %36, i32 1
  %40 = load i8, ptr %36, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %33
  %43 = icmp ult ptr %37, %1
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  store i8 %40, ptr %37, align 1
  br label %45

45:                                               ; preds = %44, %42
  %46 = getelementptr i8, ptr %37, i32 1
  %47 = add nuw i32 %35, 1
  %48 = icmp eq i32 %38, 0
  br i1 %48, label %49, label %33

49:                                               ; preds = %45, %33, %18
  %50 = phi ptr [ %0, %18 ], [ %46, %45 ], [ %37, %33 ]
  %51 = phi i32 [ 0, %18 ], [ %31, %45 ], [ %35, %33 ]
  %52 = insertvalue [2 x i32] %3, i32 %27, 1
  %53 = tail call fastcc ptr @widen_string(ptr noundef %50, i32 noundef %51, ptr noundef %1, [2 x i32] %52) #20
  br label %368

54:                                               ; preds = %5
  %55 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 91, ptr %6, align 1
  %56 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 256
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  store i8 105, ptr %55, align 1
  %61 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 111, ptr %61, align 1
  %62 = getelementptr inbounds i8, ptr %6, i32 3
  store i8 32, ptr %62, align 1
  %63 = getelementptr inbounds i8, ptr %6, i32 4
  store i8 32, ptr %63, align 1
  %64 = getelementptr inbounds i8, ptr %6, i32 5
  %65 = call fastcc ptr @widen_string(ptr noundef %64, i32 noundef 4, ptr noundef %8, [2 x i32] [i32 -256, i32 655362]) #20
  br i1 %10, label %100, label %140

66:                                               ; preds = %54
  %67 = and i32 %57, 512
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  store i8 109, ptr %55, align 1
  %70 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 101, ptr %70, align 1
  %71 = getelementptr inbounds i8, ptr %6, i32 3
  store i8 109, ptr %71, align 1
  %72 = getelementptr inbounds i8, ptr %6, i32 4
  store i8 32, ptr %72, align 1
  %73 = getelementptr inbounds i8, ptr %6, i32 5
  %74 = call fastcc ptr @widen_string(ptr noundef %73, i32 noundef 4, ptr noundef %8, [2 x i32] [i32 -256, i32 655362]) #20
  br i1 %10, label %100, label %140

75:                                               ; preds = %66
  %76 = and i32 %57, 1024
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  store i8 105, ptr %55, align 1
  %79 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 114, ptr %79, align 1
  %80 = getelementptr inbounds i8, ptr %6, i32 3
  store i8 113, ptr %80, align 1
  %81 = getelementptr inbounds i8, ptr %6, i32 4
  store i8 32, ptr %81, align 1
  %82 = getelementptr inbounds i8, ptr %6, i32 5
  %83 = call fastcc ptr @widen_string(ptr noundef %82, i32 noundef 4, ptr noundef %8, [2 x i32] [i32 -256, i32 655362]) #20
  br i1 %10, label %100, label %140

84:                                               ; preds = %75
  %85 = and i32 %57, 2048
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  store i8 100, ptr %55, align 1
  %88 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 109, ptr %88, align 1
  %89 = getelementptr inbounds i8, ptr %6, i32 3
  store i8 97, ptr %89, align 1
  %90 = getelementptr inbounds i8, ptr %6, i32 4
  store i8 32, ptr %90, align 1
  %91 = getelementptr inbounds i8, ptr %6, i32 5
  %92 = call fastcc ptr @widen_string(ptr noundef %91, i32 noundef 4, ptr noundef %8, [2 x i32] [i32 -256, i32 655362]) #20
  br i1 %10, label %100, label %140

93:                                               ; preds = %84
  %94 = and i32 %57, 4096
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call fastcc ptr @string_nocheck(ptr noundef %55, ptr noundef %8, ptr noundef nonnull @.str.22, [2 x i32] [i32 -256, i32 655362])
  br label %140

98:                                               ; preds = %93
  %99 = call fastcc ptr @string_nocheck(ptr noundef %55, ptr noundef %8, ptr noundef nonnull @.str.21, [2 x i32] [i32 -256, i32 655362])
  br i1 %10, label %100, label %140

100:                                              ; preds = %98, %87, %78, %69, %60
  %101 = phi ptr [ @resource_string.io_spec, %60 ], [ @resource_string.bus_spec, %98 ], [ @resource_string.mem_spec, %69 ], [ @default_dec_spec, %78 ], [ @default_dec_spec, %87 ]
  %102 = phi ptr [ %65, %60 ], [ %99, %98 ], [ %74, %69 ], [ %83, %78 ], [ %92, %87 ]
  %103 = load i32, ptr %56, align 4
  %104 = and i32 %103, 536870912
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %140, label %106

106:                                              ; preds = %100
  %107 = icmp ult ptr %102, %8
  br i1 %107, label %108, label %109

108:                                              ; preds = %106
  store i8 115, ptr %102, align 1
  br label %109

109:                                              ; preds = %108, %106
  %110 = getelementptr i8, ptr %102, i32 1
  %111 = icmp ult ptr %110, %8
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i8 105, ptr %110, align 1
  br label %113

113:                                              ; preds = %112, %109
  %114 = getelementptr i8, ptr %102, i32 2
  %115 = icmp ult ptr %114, %8
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i8 122, ptr %114, align 1
  br label %117

117:                                              ; preds = %116, %113
  %118 = getelementptr i8, ptr %102, i32 3
  %119 = icmp ult ptr %118, %8
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i8 101, ptr %118, align 1
  br label %121

121:                                              ; preds = %120, %117
  %122 = getelementptr i8, ptr %102, i32 4
  %123 = icmp ult ptr %122, %8
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i8 32, ptr %122, align 1
  br label %125

125:                                              ; preds = %124, %121
  %126 = getelementptr i8, ptr %102, i32 5
  %127 = call fastcc ptr @widen_string(ptr noundef %126, i32 noundef 5, ptr noundef %8, [2 x i32] [i32 -256, i32 655362]) #20
  %128 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %129 = load i32, ptr %128, align 4
  %130 = load i32, ptr %2, align 4
  %131 = add i32 %129, 1
  %132 = sub i32 %131, %130
  %133 = zext i32 %132 to i64
  %134 = load i32, ptr %101, align 1
  %135 = insertvalue [2 x i32] undef, i32 %134, 0
  %136 = getelementptr inbounds [2 x i32], ptr %101, i32 0, i32 1
  %137 = load i32, ptr %136, align 1
  %138 = insertvalue [2 x i32] %135, i32 %137, 1
  %139 = call fastcc ptr @number(ptr noundef %127, ptr noundef %8, i64 noundef %133, [2 x i32] %138)
  br label %166

140:                                              ; preds = %100, %98, %96, %87, %78, %69, %60
  %141 = phi ptr [ @resource_string.mem_spec, %96 ], [ %101, %100 ], [ @resource_string.bus_spec, %98 ], [ @resource_string.io_spec, %60 ], [ @resource_string.mem_spec, %69 ], [ @default_dec_spec, %78 ], [ @default_dec_spec, %87 ]
  %142 = phi i1 [ false, %96 ], [ true, %100 ], [ false, %98 ], [ false, %60 ], [ false, %69 ], [ false, %78 ], [ false, %87 ]
  %143 = phi ptr [ %97, %96 ], [ %102, %100 ], [ %99, %98 ], [ %65, %60 ], [ %74, %69 ], [ %83, %78 ], [ %92, %87 ]
  %144 = load i32, ptr %2, align 4
  %145 = zext i32 %144 to i64
  %146 = load i32, ptr %141, align 1
  %147 = insertvalue [2 x i32] undef, i32 %146, 0
  %148 = getelementptr inbounds [2 x i32], ptr %141, i32 0, i32 1
  %149 = load i32, ptr %148, align 1
  %150 = insertvalue [2 x i32] %147, i32 %149, 1
  %151 = call fastcc ptr @number(ptr noundef %143, ptr noundef %8, i64 noundef %145, [2 x i32] %150)
  %152 = load i32, ptr %2, align 4
  %153 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %152, %154
  br i1 %155, label %165, label %156

156:                                              ; preds = %140
  %157 = getelementptr i8, ptr %151, i32 1
  store i8 45, ptr %151, align 1
  %158 = load i32, ptr %153, align 4
  %159 = zext i32 %158 to i64
  %160 = load i32, ptr %141, align 1
  %161 = insertvalue [2 x i32] undef, i32 %160, 0
  %162 = load i32, ptr %148, align 1
  %163 = insertvalue [2 x i32] %161, i32 %162, 1
  %164 = call fastcc ptr @number(ptr noundef %157, ptr noundef %8, i64 noundef %159, [2 x i32] %163)
  br i1 %142, label %166, label %305

165:                                              ; preds = %140
  br i1 %142, label %166, label %305

166:                                              ; preds = %165, %156, %125
  %167 = phi ptr [ %139, %125 ], [ %151, %165 ], [ %164, %156 ]
  %168 = load i32, ptr %56, align 4
  %169 = and i32 %168, 1048576
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %198, label %171

171:                                              ; preds = %166
  %172 = icmp ult ptr %167, %8
  br i1 %172, label %173, label %174

173:                                              ; preds = %171
  store i8 32, ptr %167, align 1
  br label %174

174:                                              ; preds = %173, %171
  %175 = getelementptr i8, ptr %167, i32 1
  %176 = icmp ult ptr %175, %8
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  store i8 54, ptr %175, align 1
  br label %178

178:                                              ; preds = %177, %174
  %179 = getelementptr i8, ptr %167, i32 2
  %180 = icmp ult ptr %179, %8
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  store i8 52, ptr %179, align 1
  br label %182

182:                                              ; preds = %181, %178
  %183 = getelementptr i8, ptr %167, i32 3
  %184 = icmp ult ptr %183, %8
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  store i8 98, ptr %183, align 1
  br label %186

186:                                              ; preds = %185, %182
  %187 = getelementptr i8, ptr %167, i32 4
  %188 = icmp ult ptr %187, %8
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  store i8 105, ptr %187, align 1
  br label %190

190:                                              ; preds = %189, %186
  %191 = getelementptr i8, ptr %167, i32 5
  %192 = icmp ult ptr %191, %8
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  store i8 116, ptr %191, align 1
  br label %194

194:                                              ; preds = %193, %190
  %195 = getelementptr i8, ptr %167, i32 6
  %196 = call fastcc ptr @widen_string(ptr noundef %195, i32 noundef 6, ptr noundef %8, [2 x i32] [i32 -256, i32 655362]) #20
  %197 = load i32, ptr %56, align 4
  br label %198

198:                                              ; preds = %194, %166
  %199 = phi i32 [ %197, %194 ], [ %168, %166 ]
  %200 = phi ptr [ %196, %194 ], [ %167, %166 ]
  %201 = and i32 %199, 8192
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %226, label %203

203:                                              ; preds = %198
  %204 = icmp ult ptr %200, %8
  br i1 %204, label %205, label %206

205:                                              ; preds = %203
  store i8 32, ptr %200, align 1
  br label %206

206:                                              ; preds = %205, %203
  %207 = getelementptr i8, ptr %200, i32 1
  %208 = icmp ult ptr %207, %8
  br i1 %208, label %209, label %210

209:                                              ; preds = %206
  store i8 112, ptr %207, align 1
  br label %210

210:                                              ; preds = %209, %206
  %211 = getelementptr i8, ptr %200, i32 2
  %212 = icmp ult ptr %211, %8
  br i1 %212, label %213, label %214

213:                                              ; preds = %210
  store i8 114, ptr %211, align 1
  br label %214

214:                                              ; preds = %213, %210
  %215 = getelementptr i8, ptr %200, i32 3
  %216 = icmp ult ptr %215, %8
  br i1 %216, label %217, label %218

217:                                              ; preds = %214
  store i8 101, ptr %215, align 1
  br label %218

218:                                              ; preds = %217, %214
  %219 = getelementptr i8, ptr %200, i32 4
  %220 = icmp ult ptr %219, %8
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  store i8 102, ptr %219, align 1
  br label %222

222:                                              ; preds = %221, %218
  %223 = getelementptr i8, ptr %200, i32 5
  %224 = call fastcc ptr @widen_string(ptr noundef %223, i32 noundef 5, ptr noundef %8, [2 x i32] [i32 -256, i32 655362]) #20
  %225 = load i32, ptr %56, align 4
  br label %226

226:                                              ; preds = %222, %198
  %227 = phi i32 [ %225, %222 ], [ %199, %198 ]
  %228 = phi ptr [ %224, %222 ], [ %200, %198 ]
  %229 = and i32 %227, 2097152
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %262, label %231

231:                                              ; preds = %226
  %232 = icmp ult ptr %228, %8
  br i1 %232, label %233, label %234

233:                                              ; preds = %231
  store i8 32, ptr %228, align 1
  br label %234

234:                                              ; preds = %233, %231
  %235 = getelementptr i8, ptr %228, i32 1
  %236 = icmp ult ptr %235, %8
  br i1 %236, label %237, label %238

237:                                              ; preds = %234
  store i8 119, ptr %235, align 1
  br label %238

238:                                              ; preds = %237, %234
  %239 = getelementptr i8, ptr %228, i32 2
  %240 = icmp ult ptr %239, %8
  br i1 %240, label %241, label %242

241:                                              ; preds = %238
  store i8 105, ptr %239, align 1
  br label %242

242:                                              ; preds = %241, %238
  %243 = getelementptr i8, ptr %228, i32 3
  %244 = icmp ult ptr %243, %8
  br i1 %244, label %245, label %246

245:                                              ; preds = %242
  store i8 110, ptr %243, align 1
  br label %246

246:                                              ; preds = %245, %242
  %247 = getelementptr i8, ptr %228, i32 4
  %248 = icmp ult ptr %247, %8
  br i1 %248, label %249, label %250

249:                                              ; preds = %246
  store i8 100, ptr %247, align 1
  br label %250

250:                                              ; preds = %249, %246
  %251 = getelementptr i8, ptr %228, i32 5
  %252 = icmp ult ptr %251, %8
  br i1 %252, label %253, label %254

253:                                              ; preds = %250
  store i8 111, ptr %251, align 1
  br label %254

254:                                              ; preds = %253, %250
  %255 = getelementptr i8, ptr %228, i32 6
  %256 = icmp ult ptr %255, %8
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  store i8 119, ptr %255, align 1
  br label %258

258:                                              ; preds = %257, %254
  %259 = getelementptr i8, ptr %228, i32 7
  %260 = call fastcc ptr @widen_string(ptr noundef %259, i32 noundef 7, ptr noundef %8, [2 x i32] [i32 -256, i32 655362]) #20
  %261 = load i32, ptr %56, align 4
  br label %262

262:                                              ; preds = %258, %226
  %263 = phi i32 [ %261, %258 ], [ %227, %226 ]
  %264 = phi ptr [ %260, %258 ], [ %228, %226 ]
  %265 = and i32 %263, 268435456
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %339, label %267

267:                                              ; preds = %262
  %268 = icmp ult ptr %264, %8
  br i1 %268, label %269, label %270

269:                                              ; preds = %267
  store i8 32, ptr %264, align 1
  br label %270

270:                                              ; preds = %269, %267
  %271 = getelementptr i8, ptr %264, i32 1
  %272 = icmp ult ptr %271, %8
  br i1 %272, label %273, label %274

273:                                              ; preds = %270
  store i8 100, ptr %271, align 1
  br label %274

274:                                              ; preds = %273, %270
  %275 = getelementptr i8, ptr %264, i32 2
  %276 = icmp ult ptr %275, %8
  br i1 %276, label %277, label %278

277:                                              ; preds = %274
  store i8 105, ptr %275, align 1
  br label %278

278:                                              ; preds = %277, %274
  %279 = getelementptr i8, ptr %264, i32 3
  %280 = icmp ult ptr %279, %8
  br i1 %280, label %281, label %282

281:                                              ; preds = %278
  store i8 115, ptr %279, align 1
  br label %282

282:                                              ; preds = %281, %278
  %283 = getelementptr i8, ptr %264, i32 4
  %284 = icmp ult ptr %283, %8
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  store i8 97, ptr %283, align 1
  br label %286

286:                                              ; preds = %285, %282
  %287 = getelementptr i8, ptr %264, i32 5
  %288 = icmp ult ptr %287, %8
  br i1 %288, label %289, label %290

289:                                              ; preds = %286
  store i8 98, ptr %287, align 1
  br label %290

290:                                              ; preds = %289, %286
  %291 = getelementptr i8, ptr %264, i32 6
  %292 = icmp ult ptr %291, %8
  br i1 %292, label %293, label %294

293:                                              ; preds = %290
  store i8 108, ptr %291, align 1
  br label %294

294:                                              ; preds = %293, %290
  %295 = getelementptr i8, ptr %264, i32 7
  %296 = icmp ult ptr %295, %8
  br i1 %296, label %297, label %298

297:                                              ; preds = %294
  store i8 101, ptr %295, align 1
  br label %298

298:                                              ; preds = %297, %294
  %299 = getelementptr i8, ptr %264, i32 8
  %300 = icmp ult ptr %299, %8
  br i1 %300, label %301, label %302

301:                                              ; preds = %298
  store i8 100, ptr %299, align 1
  br label %302

302:                                              ; preds = %301, %298
  %303 = getelementptr i8, ptr %264, i32 9
  %304 = call fastcc ptr @widen_string(ptr noundef %303, i32 noundef 9, ptr noundef %8, [2 x i32] [i32 -256, i32 655362]) #20
  br label %339

305:                                              ; preds = %165, %156
  %306 = phi ptr [ %151, %165 ], [ %164, %156 ]
  %307 = icmp ult ptr %306, %8
  br i1 %307, label %308, label %309

308:                                              ; preds = %305
  store i8 32, ptr %306, align 1
  br label %309

309:                                              ; preds = %308, %305
  %310 = getelementptr i8, ptr %306, i32 1
  %311 = icmp ult ptr %310, %8
  br i1 %311, label %312, label %313

312:                                              ; preds = %309
  store i8 102, ptr %310, align 1
  br label %313

313:                                              ; preds = %312, %309
  %314 = getelementptr i8, ptr %306, i32 2
  %315 = icmp ult ptr %314, %8
  br i1 %315, label %316, label %317

316:                                              ; preds = %313
  store i8 108, ptr %314, align 1
  br label %317

317:                                              ; preds = %316, %313
  %318 = getelementptr i8, ptr %306, i32 3
  %319 = icmp ult ptr %318, %8
  br i1 %319, label %320, label %321

320:                                              ; preds = %317
  store i8 97, ptr %318, align 1
  br label %321

321:                                              ; preds = %320, %317
  %322 = getelementptr i8, ptr %306, i32 4
  %323 = icmp ult ptr %322, %8
  br i1 %323, label %324, label %325

324:                                              ; preds = %321
  store i8 103, ptr %322, align 1
  br label %325

325:                                              ; preds = %324, %321
  %326 = getelementptr i8, ptr %306, i32 5
  %327 = icmp ult ptr %326, %8
  br i1 %327, label %328, label %329

328:                                              ; preds = %325
  store i8 115, ptr %326, align 1
  br label %329

329:                                              ; preds = %328, %325
  %330 = getelementptr i8, ptr %306, i32 6
  %331 = icmp ult ptr %330, %8
  br i1 %331, label %332, label %333

332:                                              ; preds = %329
  store i8 32, ptr %330, align 1
  br label %333

333:                                              ; preds = %332, %329
  %334 = getelementptr i8, ptr %306, i32 7
  %335 = call fastcc ptr @widen_string(ptr noundef %334, i32 noundef 7, ptr noundef %8, [2 x i32] [i32 -256, i32 655362]) #20
  %336 = load i32, ptr %56, align 4
  %337 = zext i32 %336 to i64
  %338 = call fastcc ptr @number(ptr noundef %335, ptr noundef %8, i64 noundef %337, [2 x i32] [i32 0, i32 -61344])
  br label %339

339:                                              ; preds = %333, %302, %262
  %340 = phi ptr [ %304, %302 ], [ %264, %262 ], [ %338, %333 ]
  %341 = getelementptr i8, ptr %340, i32 1
  store i8 93, ptr %340, align 1
  store i8 0, ptr %341, align 1
  %342 = extractvalue [2 x i32] %3, 1
  %343 = zext i32 %342 to i64
  %344 = shl nuw i64 %343, 32
  %345 = ashr i64 %344, 48
  %346 = trunc i64 %345 to i32
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %364, label %348

348:                                              ; preds = %360, %339
  %349 = phi i32 [ %353, %360 ], [ %346, %339 ]
  %350 = phi i32 [ %362, %360 ], [ 0, %339 ]
  %351 = phi ptr [ %354, %360 ], [ %6, %339 ]
  %352 = phi ptr [ %361, %360 ], [ %0, %339 ]
  %353 = add i32 %349, -1
  %354 = getelementptr i8, ptr %351, i32 1
  %355 = load i8, ptr %351, align 1
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %364, label %357

357:                                              ; preds = %348
  %358 = icmp ult ptr %352, %1
  br i1 %358, label %359, label %360

359:                                              ; preds = %357
  store i8 %355, ptr %352, align 1
  br label %360

360:                                              ; preds = %359, %357
  %361 = getelementptr i8, ptr %352, i32 1
  %362 = add nuw i32 %350, 1
  %363 = icmp eq i32 %353, 0
  br i1 %363, label %364, label %348

364:                                              ; preds = %360, %348, %339
  %365 = phi ptr [ %0, %339 ], [ %361, %360 ], [ %352, %348 ]
  %366 = phi i32 [ 0, %339 ], [ %346, %360 ], [ %350, %348 ]
  %367 = call fastcc ptr @widen_string(ptr noundef %365, i32 noundef %366, ptr noundef %1, [2 x i32] %3) #20
  br label %368

368:                                              ; preds = %364, %49
  %369 = phi ptr [ %53, %49 ], [ %367, %364 ]
  call void @llvm.lifetime.end.p0(i64 59, ptr nonnull %6) #20
  ret ptr %369
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @hex_string(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, [2 x i32] %3, ptr nocapture noundef readonly %4) unnamed_addr #10 {
  %6 = extractvalue [2 x i32] %3, 0
  %7 = zext i32 %6 to i64
  %8 = shl nuw i64 %7, 32
  %9 = ashr i64 %8, 40
  %10 = trunc i64 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %102, label %12

12:                                               ; preds = %5
  %13 = icmp eq ptr %2, null
  %14 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  %15 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %16 = or i1 %14, %15
  %17 = select i1 %16, ptr @.str.60, ptr null
  %18 = select i1 %13, ptr @.str.59, ptr %17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %56, label %20

20:                                               ; preds = %12
  %21 = extractvalue [2 x i32] %3, 1
  %22 = zext i32 %21 to i64
  %23 = shl nuw i64 %22, 32
  %24 = ashr i64 %23, 48
  %25 = trunc i64 %24 to i32
  %26 = icmp eq i32 %25, -1
  %27 = and i32 %21, 65535
  %28 = or i32 %27, 524288
  %29 = select i1 %26, i32 %28, i32 %21
  %30 = zext i32 %29 to i64
  %31 = shl nuw i64 %30, 32
  %32 = ashr i64 %31, 48
  %33 = trunc i64 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %47, %20
  %36 = phi i32 [ %40, %47 ], [ %33, %20 ]
  %37 = phi i32 [ %49, %47 ], [ 0, %20 ]
  %38 = phi ptr [ %41, %47 ], [ %18, %20 ]
  %39 = phi ptr [ %48, %47 ], [ %0, %20 ]
  %40 = add i32 %36, -1
  %41 = getelementptr i8, ptr %38, i32 1
  %42 = load i8, ptr %38, align 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %35
  %45 = icmp ult ptr %39, %1
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  store i8 %42, ptr %39, align 1
  br label %47

47:                                               ; preds = %46, %44
  %48 = getelementptr i8, ptr %39, i32 1
  %49 = add nuw i32 %37, 1
  %50 = icmp eq i32 %40, 0
  br i1 %50, label %51, label %35

51:                                               ; preds = %47, %35, %20
  %52 = phi ptr [ %0, %20 ], [ %48, %47 ], [ %39, %35 ]
  %53 = phi i32 [ 0, %20 ], [ %33, %47 ], [ %37, %35 ]
  %54 = insertvalue [2 x i32] %3, i32 %29, 1
  %55 = tail call fastcc ptr @widen_string(ptr noundef %52, i32 noundef %53, ptr noundef %1, [2 x i32] %54) #20
  br label %102

56:                                               ; preds = %12
  %57 = getelementptr i8, ptr %4, i32 1
  %58 = load i8, ptr %57, align 1
  switch i8 %58, label %61 [
    i8 67, label %62
    i8 68, label %59
    i8 78, label %60
  ]

59:                                               ; preds = %56
  br label %62

60:                                               ; preds = %56
  br label %62

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %60, %59, %56
  %63 = phi i1 [ false, %61 ], [ true, %60 ], [ false, %59 ], [ false, %56 ]
  %64 = phi i8 [ 32, %61 ], [ 0, %60 ], [ 45, %59 ], [ 58, %56 ]
  %65 = tail call i32 @llvm.smin.i32(i32 %10, i32 64)
  %66 = tail call i32 @llvm.smax.i32(i32 %65, i32 1)
  %67 = add nsw i32 %66, -1
  br label %68

68:                                               ; preds = %98, %62
  %69 = phi i32 [ 0, %62 ], [ %100, %98 ]
  %70 = phi ptr [ %0, %62 ], [ %99, %98 ]
  %71 = icmp ult ptr %70, %1
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = getelementptr i8, ptr %2, i32 %69
  %74 = load i8, ptr %73, align 1
  %75 = lshr i8 %74, 4
  %76 = zext i8 %75 to i32
  %77 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %76
  %78 = load i8, ptr %77, align 1
  store i8 %78, ptr %70, align 1
  br label %79

79:                                               ; preds = %72, %68
  %80 = getelementptr i8, ptr %70, i32 1
  %81 = icmp ult ptr %80, %1
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = getelementptr i8, ptr %2, i32 %69
  %84 = load i8, ptr %83, align 1
  %85 = and i8 %84, 15
  %86 = zext i8 %85 to i32
  %87 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %86
  %88 = load i8, ptr %87, align 1
  store i8 %88, ptr %80, align 1
  br label %89

89:                                               ; preds = %82, %79
  %90 = getelementptr i8, ptr %70, i32 2
  %91 = icmp eq i32 %69, %67
  %92 = select i1 %63, i1 true, i1 %91
  br i1 %92, label %98, label %93

93:                                               ; preds = %89
  %94 = icmp ult ptr %90, %1
  br i1 %94, label %95, label %96

95:                                               ; preds = %93
  store i8 %64, ptr %90, align 1
  br label %96

96:                                               ; preds = %95, %93
  %97 = getelementptr i8, ptr %70, i32 3
  br label %98

98:                                               ; preds = %96, %89
  %99 = phi ptr [ %90, %89 ], [ %97, %96 ]
  %100 = add nuw nsw i32 %69, 1
  %101 = icmp eq i32 %100, %66
  br i1 %101, label %102, label %68

102:                                              ; preds = %98, %51, %5
  %103 = phi ptr [ %55, %51 ], [ %0, %5 ], [ %99, %98 ]
  ret ptr %103
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @bitmap_list_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, [2 x i32] %3) unnamed_addr #0 {
  %5 = extractvalue [2 x i32] %3, 0
  %6 = zext i32 %5 to i64
  %7 = shl nuw i64 %6, 32
  %8 = ashr i64 %7, 40
  %9 = trunc i64 %8 to i32
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 0)
  %11 = icmp eq ptr %2, null
  %12 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  %13 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %14 = or i1 %12, %13
  %15 = select i1 %14, ptr @.str.60, ptr null
  %16 = select i1 %11, ptr @.str.59, ptr %15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %54, label %18

18:                                               ; preds = %4
  %19 = extractvalue [2 x i32] %3, 1
  %20 = zext i32 %19 to i64
  %21 = shl nuw i64 %20, 32
  %22 = ashr i64 %21, 48
  %23 = trunc i64 %22 to i32
  %24 = icmp eq i32 %23, -1
  %25 = and i32 %19, 65535
  %26 = or i32 %25, 524288
  %27 = select i1 %24, i32 %26, i32 %19
  %28 = zext i32 %27 to i64
  %29 = shl nuw i64 %28, 32
  %30 = ashr i64 %29, 48
  %31 = trunc i64 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %45, %18
  %34 = phi i32 [ %38, %45 ], [ %31, %18 ]
  %35 = phi i32 [ %47, %45 ], [ 0, %18 ]
  %36 = phi ptr [ %39, %45 ], [ %16, %18 ]
  %37 = phi ptr [ %46, %45 ], [ %0, %18 ]
  %38 = add i32 %34, -1
  %39 = getelementptr i8, ptr %36, i32 1
  %40 = load i8, ptr %36, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %33
  %43 = icmp ult ptr %37, %1
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  store i8 %40, ptr %37, align 1
  br label %45

45:                                               ; preds = %44, %42
  %46 = getelementptr i8, ptr %37, i32 1
  %47 = add nuw i32 %35, 1
  %48 = icmp eq i32 %38, 0
  br i1 %48, label %49, label %33

49:                                               ; preds = %45, %33, %18
  %50 = phi ptr [ %0, %18 ], [ %46, %45 ], [ %37, %33 ]
  %51 = phi i32 [ 0, %18 ], [ %31, %45 ], [ %35, %33 ]
  %52 = insertvalue [2 x i32] %3, i32 %27, 1
  %53 = tail call fastcc ptr @widen_string(ptr noundef %50, i32 noundef %51, ptr noundef %1, [2 x i32] %52) #20
  br label %105

54:                                               ; preds = %4
  %55 = tail call i32 @_find_next_bit_le(ptr noundef %2, i32 noundef %10, i32 noundef 0) #20
  %56 = add i32 %55, 1
  %57 = tail call i32 @_find_next_zero_bit_le(ptr noundef %2, i32 noundef %10, i32 noundef %56) #20
  %58 = icmp slt i32 %55, %10
  br i1 %58, label %59, label %105

59:                                               ; preds = %54
  %60 = sext i32 %55 to i64
  %61 = tail call fastcc ptr @number(ptr noundef %0, ptr noundef %1, i64 noundef %60, [2 x i32] [i32 0, i32 -62976])
  %62 = icmp eq i32 %57, %56
  br i1 %62, label %71, label %63

63:                                               ; preds = %59
  %64 = icmp ult ptr %61, %1
  br i1 %64, label %65, label %66

65:                                               ; preds = %63
  store i8 45, ptr %61, align 1
  br label %66

66:                                               ; preds = %65, %63
  %67 = getelementptr i8, ptr %61, i32 1
  %68 = add i32 %57, -1
  %69 = sext i32 %68 to i64
  %70 = tail call fastcc ptr @number(ptr noundef %67, ptr noundef %1, i64 noundef %69, [2 x i32] [i32 0, i32 -62976])
  br label %71

71:                                               ; preds = %66, %59
  %72 = phi ptr [ %61, %59 ], [ %70, %66 ]
  %73 = add i32 %57, 1
  %74 = tail call i32 @_find_next_bit_le(ptr noundef %2, i32 noundef %10, i32 noundef %73) #20
  %75 = add i32 %74, 1
  %76 = tail call i32 @_find_next_zero_bit_le(ptr noundef %2, i32 noundef %10, i32 noundef %75) #20
  %77 = icmp slt i32 %74, %10
  br i1 %77, label %78, label %105

78:                                               ; preds = %98, %71
  %79 = phi i32 [ %103, %98 ], [ %76, %71 ]
  %80 = phi i32 [ %101, %98 ], [ %74, %71 ]
  %81 = phi ptr [ %99, %98 ], [ %72, %71 ]
  %82 = icmp ult ptr %81, %1
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i8 44, ptr %81, align 1
  br label %84

84:                                               ; preds = %83, %78
  %85 = getelementptr i8, ptr %81, i32 1
  %86 = sext i32 %80 to i64
  %87 = tail call fastcc ptr @number(ptr noundef %85, ptr noundef %1, i64 noundef %86, [2 x i32] [i32 0, i32 -62976])
  %88 = add nsw i32 %80, 1
  %89 = icmp eq i32 %79, %88
  br i1 %89, label %98, label %90

90:                                               ; preds = %84
  %91 = icmp ult ptr %87, %1
  br i1 %91, label %92, label %93

92:                                               ; preds = %90
  store i8 45, ptr %87, align 1
  br label %93

93:                                               ; preds = %92, %90
  %94 = getelementptr i8, ptr %87, i32 1
  %95 = add i32 %79, -1
  %96 = sext i32 %95 to i64
  %97 = tail call fastcc ptr @number(ptr noundef %94, ptr noundef %1, i64 noundef %96, [2 x i32] [i32 0, i32 -62976])
  br label %98

98:                                               ; preds = %93, %84
  %99 = phi ptr [ %87, %84 ], [ %97, %93 ]
  %100 = add i32 %79, 1
  %101 = tail call i32 @_find_next_bit_le(ptr noundef %2, i32 noundef %10, i32 noundef %100) #20
  %102 = add i32 %101, 1
  %103 = tail call i32 @_find_next_zero_bit_le(ptr noundef %2, i32 noundef %10, i32 noundef %102) #20
  %104 = icmp slt i32 %101, %10
  br i1 %104, label %78, label %105, !llvm.loop !12

105:                                              ; preds = %98, %71, %54, %49
  %106 = phi ptr [ %53, %49 ], [ %0, %54 ], [ %72, %71 ], [ %99, %98 ]
  ret ptr %106
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @bitmap_string(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, [2 x i32] %3) unnamed_addr #10 {
  %5 = icmp eq ptr %2, null
  %6 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  %7 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  %9 = select i1 %8, ptr @.str.60, ptr null
  %10 = select i1 %5, ptr @.str.59, ptr %9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %48, label %12

12:                                               ; preds = %4
  %13 = extractvalue [2 x i32] %3, 1
  %14 = zext i32 %13 to i64
  %15 = shl nuw i64 %14, 32
  %16 = ashr i64 %15, 48
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %17, -1
  %19 = and i32 %13, 65535
  %20 = or i32 %19, 524288
  %21 = select i1 %18, i32 %20, i32 %13
  %22 = zext i32 %21 to i64
  %23 = shl nuw i64 %22, 32
  %24 = ashr i64 %23, 48
  %25 = trunc i64 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %39, %12
  %28 = phi i32 [ %32, %39 ], [ %25, %12 ]
  %29 = phi i32 [ %41, %39 ], [ 0, %12 ]
  %30 = phi ptr [ %33, %39 ], [ %10, %12 ]
  %31 = phi ptr [ %40, %39 ], [ %0, %12 ]
  %32 = add i32 %28, -1
  %33 = getelementptr i8, ptr %30, i32 1
  %34 = load i8, ptr %30, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %27
  %37 = icmp ult ptr %31, %1
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  store i8 %34, ptr %31, align 1
  br label %39

39:                                               ; preds = %38, %36
  %40 = getelementptr i8, ptr %31, i32 1
  %41 = add nuw i32 %29, 1
  %42 = icmp eq i32 %32, 0
  br i1 %42, label %43, label %27

43:                                               ; preds = %39, %27, %12
  %44 = phi ptr [ %0, %12 ], [ %40, %39 ], [ %31, %27 ]
  %45 = phi i32 [ 0, %12 ], [ %25, %39 ], [ %29, %27 ]
  %46 = insertvalue [2 x i32] %3, i32 %21, 1
  %47 = tail call fastcc ptr @widen_string(ptr noundef %44, i32 noundef %45, ptr noundef %1, [2 x i32] %46) #20
  br label %97

48:                                               ; preds = %4
  %49 = extractvalue [2 x i32] %3, 0
  %50 = zext i32 %49 to i64
  %51 = shl nuw i64 %50, 32
  %52 = ashr i64 %51, 40
  %53 = trunc i64 %52 to i32
  %54 = tail call i32 @llvm.smax.i32(i32 %53, i32 0)
  %55 = add nsw i32 %54, -1
  %56 = and i32 %55, -32
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %97

58:                                               ; preds = %48
  %59 = and i32 %54, 31
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i32 32, i32 %59
  %62 = zext i32 %61 to i64
  %63 = shl nsw i64 -1, %62
  %64 = trunc i64 %63 to i32
  %65 = xor i32 %64, -1
  %66 = lshr exact i32 %56, 5
  %67 = getelementptr i32, ptr %2, i32 %66
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, %65
  %70 = shl nuw nsw i32 %61, 6
  %71 = add nuw nsw i32 %70, 192
  %72 = and i32 %71, 7936
  %73 = zext i32 %69 to i64
  %74 = insertvalue [2 x i32] poison, i32 %72, 0
  %75 = insertvalue [2 x i32] %74, i32 4144, 1
  %76 = tail call fastcc ptr @number(ptr noundef %0, ptr noundef %1, i64 noundef %73, [2 x i32] %75)
  %77 = icmp eq i32 %56, 0
  br i1 %77, label %97, label %78

78:                                               ; preds = %88, %58
  %79 = phi i32 [ %91, %88 ], [ %72, %58 ]
  %80 = phi i32 [ %82, %88 ], [ %56, %58 ]
  %81 = phi ptr [ %95, %88 ], [ %76, %58 ]
  %82 = add nsw i32 %80, -32
  %83 = lshr exact i32 %82, 5
  %84 = getelementptr i32, ptr %2, i32 %83
  %85 = load i32, ptr %84, align 4
  %86 = icmp ult ptr %81, %1
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  store i8 44, ptr %81, align 1
  br label %88

88:                                               ; preds = %87, %78
  %89 = getelementptr i8, ptr %81, i32 1
  %90 = and i32 %79, 255
  %91 = or i32 %90, 2048
  %92 = zext i32 %85 to i64
  %93 = insertvalue [2 x i32] poison, i32 %91, 0
  %94 = insertvalue [2 x i32] %93, i32 4144, 1
  %95 = tail call fastcc ptr @number(ptr noundef %89, ptr noundef %1, i64 noundef %92, [2 x i32] %94)
  %96 = icmp ugt i32 %80, 63
  br i1 %96, label %78, label %97, !llvm.loop !14

97:                                               ; preds = %88, %58, %48, %43
  %98 = phi ptr [ %47, %43 ], [ %0, %48 ], [ %76, %58 ], [ %95, %88 ]
  ret ptr %98
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @mac_address_string(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, [2 x i32] %3, ptr nocapture noundef readonly %4) unnamed_addr #10 {
  %6 = alloca [18 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %6) #20
  %7 = getelementptr inbounds i8, ptr %6, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(18) %7, i8 0, i32 16, i1 false), !annotation !8
  %8 = icmp eq ptr %2, null
  %9 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  %10 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %11 = or i1 %9, %10
  %12 = select i1 %11, ptr @.str.60, ptr null
  %13 = select i1 %8, ptr @.str.59, ptr %12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %51, label %15

15:                                               ; preds = %5
  %16 = extractvalue [2 x i32] %3, 1
  %17 = zext i32 %16 to i64
  %18 = shl nuw i64 %17, 32
  %19 = ashr i64 %18, 48
  %20 = trunc i64 %19 to i32
  %21 = icmp eq i32 %20, -1
  %22 = and i32 %16, 65535
  %23 = or i32 %22, 524288
  %24 = select i1 %21, i32 %23, i32 %16
  %25 = zext i32 %24 to i64
  %26 = shl nuw i64 %25, 32
  %27 = ashr i64 %26, 48
  %28 = trunc i64 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %42, %15
  %31 = phi i32 [ %35, %42 ], [ %28, %15 ]
  %32 = phi i32 [ %44, %42 ], [ 0, %15 ]
  %33 = phi ptr [ %36, %42 ], [ %13, %15 ]
  %34 = phi ptr [ %43, %42 ], [ %0, %15 ]
  %35 = add i32 %31, -1
  %36 = getelementptr i8, ptr %33, i32 1
  %37 = load i8, ptr %33, align 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %30
  %40 = icmp ult ptr %34, %1
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  store i8 %37, ptr %34, align 1
  br label %42

42:                                               ; preds = %41, %39
  %43 = getelementptr i8, ptr %34, i32 1
  %44 = add nuw i32 %32, 1
  %45 = icmp eq i32 %35, 0
  br i1 %45, label %46, label %30

46:                                               ; preds = %42, %30, %15
  %47 = phi ptr [ %0, %15 ], [ %43, %42 ], [ %34, %30 ]
  %48 = phi i32 [ 0, %15 ], [ %28, %42 ], [ %32, %30 ]
  %49 = insertvalue [2 x i32] %3, i32 %24, 1
  %50 = tail call fastcc ptr @widen_string(ptr noundef %47, i32 noundef %48, ptr noundef %1, [2 x i32] %49) #20
  br label %185

51:                                               ; preds = %5
  %52 = getelementptr i8, ptr %4, i32 1
  %53 = load i8, ptr %52, align 1
  switch i8 %53, label %57 [
    i8 70, label %54
    i8 82, label %55
  ]

54:                                               ; preds = %51
  br label %57

55:                                               ; preds = %51
  %56 = getelementptr i8, ptr %2, i32 5
  br label %57

57:                                               ; preds = %55, %54, %51
  %58 = phi i1 [ true, %55 ], [ false, %54 ], [ false, %51 ]
  %59 = phi i8 [ 58, %55 ], [ 45, %54 ], [ 58, %51 ]
  %60 = phi ptr [ %56, %55 ], [ %2, %54 ], [ %2, %51 ]
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = lshr i32 %62, 4
  %64 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %63
  %65 = load i8, ptr %64, align 1
  store i8 %65, ptr %6, align 1
  %66 = and i32 %62, 15
  %67 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %66
  %68 = load i8, ptr %67, align 1
  %69 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %68, ptr %69, align 1
  %70 = getelementptr inbounds i8, ptr %6, i32 2
  %71 = load i8, ptr %4, align 1
  %72 = icmp eq i8 %71, 77
  br i1 %72, label %73, label %75

73:                                               ; preds = %57
  %74 = getelementptr inbounds i8, ptr %6, i32 3
  store i8 %59, ptr %70, align 1
  br label %75

75:                                               ; preds = %73, %57
  %76 = phi ptr [ %74, %73 ], [ %70, %57 ]
  %77 = select i1 %58, i32 4, i32 1
  %78 = getelementptr i8, ptr %2, i32 %77
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = lshr i32 %80, 4
  %82 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %81
  %83 = load i8, ptr %82, align 1
  store i8 %83, ptr %76, align 1
  %84 = and i32 %80, 15
  %85 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %84
  %86 = load i8, ptr %85, align 1
  %87 = getelementptr i8, ptr %76, i32 1
  store i8 %86, ptr %87, align 1
  %88 = getelementptr i8, ptr %76, i32 2
  br i1 %72, label %89, label %91

89:                                               ; preds = %75
  %90 = getelementptr i8, ptr %76, i32 3
  store i8 %59, ptr %88, align 1
  br label %91

91:                                               ; preds = %89, %75
  %92 = phi ptr [ %90, %89 ], [ %88, %75 ]
  %93 = select i1 %58, i32 3, i32 2
  %94 = getelementptr i8, ptr %2, i32 %93
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = lshr i32 %96, 4
  %98 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %97
  %99 = load i8, ptr %98, align 1
  store i8 %99, ptr %92, align 1
  %100 = and i32 %96, 15
  %101 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %100
  %102 = load i8, ptr %101, align 1
  %103 = getelementptr i8, ptr %92, i32 1
  store i8 %102, ptr %103, align 1
  %104 = getelementptr i8, ptr %92, i32 2
  %105 = load i8, ptr %4, align 1
  %106 = icmp eq i8 %105, 77
  br i1 %106, label %107, label %109

107:                                              ; preds = %91
  %108 = getelementptr i8, ptr %92, i32 3
  store i8 %59, ptr %104, align 1
  br label %109

109:                                              ; preds = %107, %91
  %110 = phi ptr [ %108, %107 ], [ %104, %91 ]
  %111 = select i1 %58, i32 2, i32 3
  %112 = getelementptr i8, ptr %2, i32 %111
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = lshr i32 %114, 4
  %116 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %115
  %117 = load i8, ptr %116, align 1
  store i8 %117, ptr %110, align 1
  %118 = and i32 %114, 15
  %119 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %118
  %120 = load i8, ptr %119, align 1
  %121 = getelementptr i8, ptr %110, i32 1
  store i8 %120, ptr %121, align 1
  %122 = getelementptr i8, ptr %110, i32 2
  %123 = load i8, ptr %4, align 1
  %124 = icmp eq i8 %123, 77
  br i1 %124, label %125, label %127

125:                                              ; preds = %109
  %126 = getelementptr i8, ptr %110, i32 3
  store i8 %59, ptr %122, align 1
  br label %127

127:                                              ; preds = %125, %109
  %128 = phi ptr [ %126, %125 ], [ %122, %109 ]
  %129 = select i1 %58, i32 1, i32 4
  %130 = getelementptr i8, ptr %2, i32 %129
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = lshr i32 %132, 4
  %134 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %133
  %135 = load i8, ptr %134, align 1
  store i8 %135, ptr %128, align 1
  %136 = and i32 %132, 15
  %137 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %136
  %138 = load i8, ptr %137, align 1
  %139 = getelementptr i8, ptr %128, i32 1
  store i8 %138, ptr %139, align 1
  %140 = getelementptr i8, ptr %128, i32 2
  %141 = load i8, ptr %4, align 1
  %142 = icmp eq i8 %141, 77
  br i1 %142, label %143, label %145

143:                                              ; preds = %127
  %144 = getelementptr i8, ptr %128, i32 3
  store i8 %59, ptr %140, align 1
  br label %145

145:                                              ; preds = %143, %127
  %146 = phi ptr [ %144, %143 ], [ %140, %127 ]
  %147 = select i1 %58, i32 0, i32 5
  %148 = getelementptr i8, ptr %2, i32 %147
  %149 = load i8, ptr %148, align 1
  %150 = zext i8 %149 to i32
  %151 = lshr i32 %150, 4
  %152 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %151
  %153 = load i8, ptr %152, align 1
  store i8 %153, ptr %146, align 1
  %154 = and i32 %150, 15
  %155 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %154
  %156 = load i8, ptr %155, align 1
  %157 = getelementptr i8, ptr %146, i32 1
  store i8 %156, ptr %157, align 1
  %158 = getelementptr i8, ptr %146, i32 2
  store i8 0, ptr %158, align 1
  %159 = extractvalue [2 x i32] %3, 1
  %160 = zext i32 %159 to i64
  %161 = shl nuw i64 %160, 32
  %162 = ashr i64 %161, 48
  %163 = trunc i64 %162 to i32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %181, label %165

165:                                              ; preds = %177, %145
  %166 = phi i32 [ %170, %177 ], [ %163, %145 ]
  %167 = phi i32 [ %179, %177 ], [ 0, %145 ]
  %168 = phi ptr [ %171, %177 ], [ %6, %145 ]
  %169 = phi ptr [ %178, %177 ], [ %0, %145 ]
  %170 = add i32 %166, -1
  %171 = getelementptr i8, ptr %168, i32 1
  %172 = load i8, ptr %168, align 1
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %165
  %175 = icmp ult ptr %169, %1
  br i1 %175, label %176, label %177

176:                                              ; preds = %174
  store i8 %172, ptr %169, align 1
  br label %177

177:                                              ; preds = %176, %174
  %178 = getelementptr i8, ptr %169, i32 1
  %179 = add nuw i32 %167, 1
  %180 = icmp eq i32 %170, 0
  br i1 %180, label %181, label %165

181:                                              ; preds = %177, %165, %145
  %182 = phi ptr [ %0, %145 ], [ %178, %177 ], [ %169, %165 ]
  %183 = phi i32 [ 0, %145 ], [ %163, %177 ], [ %167, %165 ]
  %184 = tail call fastcc ptr @widen_string(ptr noundef %182, i32 noundef %183, ptr noundef %1, [2 x i32] %3) #20
  br label %185

185:                                              ; preds = %181, %46
  %186 = phi ptr [ %50, %46 ], [ %184, %181 ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %6) #20
  ret ptr %186
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ip_addr_string(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, [2 x i32] %3, ptr nocapture noundef readonly %4) unnamed_addr #10 {
  %6 = icmp eq ptr %2, null
  %7 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  %8 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  %10 = select i1 %9, ptr @.str.60, ptr null
  %11 = select i1 %6, ptr @.str.59, ptr %10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %5
  %14 = extractvalue [2 x i32] %3, 1
  %15 = zext i32 %14 to i64
  %16 = shl nuw i64 %15, 32
  %17 = ashr i64 %16, 48
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %18, -1
  %20 = and i32 %14, 65535
  %21 = or i32 %20, 524288
  %22 = select i1 %19, i32 %21, i32 %14
  %23 = zext i32 %22 to i64
  %24 = shl nuw i64 %23, 32
  %25 = ashr i64 %24, 48
  %26 = trunc i64 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %40, %13
  %29 = phi i32 [ %33, %40 ], [ %26, %13 ]
  %30 = phi i32 [ %42, %40 ], [ 0, %13 ]
  %31 = phi ptr [ %34, %40 ], [ %11, %13 ]
  %32 = phi ptr [ %41, %40 ], [ %0, %13 ]
  %33 = add i32 %29, -1
  %34 = getelementptr i8, ptr %31, i32 1
  %35 = load i8, ptr %31, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %28
  %38 = icmp ult ptr %32, %1
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  store i8 %35, ptr %32, align 1
  br label %40

40:                                               ; preds = %39, %37
  %41 = getelementptr i8, ptr %32, i32 1
  %42 = add nuw i32 %30, 1
  %43 = icmp eq i32 %33, 0
  br i1 %43, label %44, label %28

44:                                               ; preds = %40, %28, %13
  %45 = phi ptr [ %0, %13 ], [ %41, %40 ], [ %32, %28 ]
  %46 = phi i32 [ 0, %13 ], [ %26, %40 ], [ %30, %28 ]
  %47 = insertvalue [2 x i32] %3, i32 %22, 1
  %48 = tail call fastcc ptr @widen_string(ptr noundef %45, i32 noundef %46, ptr noundef %1, [2 x i32] %47) #20
  br label %173

49:                                               ; preds = %5
  %50 = getelementptr i8, ptr %4, i32 1
  %51 = load i8, ptr %50, align 1
  switch i8 %51, label %133 [
    i8 54, label %52
    i8 52, label %54
    i8 83, label %56
  ]

52:                                               ; preds = %49
  %53 = tail call fastcc ptr @ip6_addr_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, [2 x i32] %3, ptr noundef %4)
  br label %173

54:                                               ; preds = %49
  %55 = tail call fastcc ptr @ip4_addr_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, [2 x i32] %3, ptr noundef %4)
  br label %173

56:                                               ; preds = %49
  %57 = load i16, ptr %2, align 4
  switch i16 %57, label %62 [
    i16 2, label %58
    i16 10, label %60
  ]

58:                                               ; preds = %56
  %59 = tail call fastcc ptr @ip4_addr_string_sa(ptr noundef %0, ptr noundef %1, ptr noundef %2, [2 x i32] %3, ptr noundef %4)
  br label %173

60:                                               ; preds = %56
  %61 = tail call fastcc ptr @ip6_addr_string_sa(ptr noundef %0, ptr noundef %1, ptr noundef %2, [2 x i32] %3, ptr noundef %4)
  br label %173

62:                                               ; preds = %56
  %63 = extractvalue [2 x i32] %3, 1
  %64 = zext i32 %63 to i64
  %65 = shl nuw i64 %64, 32
  %66 = ashr i64 %65, 48
  %67 = trunc i64 %66 to i32
  %68 = icmp eq i32 %67, -1
  %69 = and i32 %63, 65535
  %70 = or i32 %69, 524288
  %71 = select i1 %68, i32 %70, i32 %63
  %72 = zext i32 %71 to i64
  %73 = shl nuw i64 %72, 32
  %74 = ashr i64 %73, 48
  %75 = trunc i64 %74 to i32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %128, label %77

77:                                               ; preds = %62
  %78 = add nsw i32 %75, -1
  %79 = call i32 @llvm.umin.i32(i32 %78, i32 8)
  %80 = icmp ult ptr %0, %1
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i8 40, ptr %0, align 1
  br label %82

82:                                               ; preds = %81, %77
  %83 = getelementptr i8, ptr %0, i32 1
  %84 = icmp eq i32 %78, 0
  br i1 %84, label %128, label %85

85:                                               ; preds = %82
  %86 = icmp ult ptr %83, %1
  br i1 %86, label %87, label %88

87:                                               ; preds = %85
  store i8 101, ptr %83, align 1
  br label %88

88:                                               ; preds = %87, %85
  %89 = getelementptr i8, ptr %0, i32 2
  %90 = icmp eq i32 %75, 2
  br i1 %90, label %128, label %91

91:                                               ; preds = %88
  %92 = icmp ult ptr %89, %1
  br i1 %92, label %93, label %94

93:                                               ; preds = %91
  store i8 105, ptr %89, align 1
  br label %94

94:                                               ; preds = %93, %91
  %95 = getelementptr i8, ptr %0, i32 3
  %96 = icmp eq i32 %75, 3
  br i1 %96, label %128, label %97

97:                                               ; preds = %94
  %98 = icmp ult ptr %95, %1
  br i1 %98, label %99, label %100

99:                                               ; preds = %97
  store i8 110, ptr %95, align 1
  br label %100

100:                                              ; preds = %99, %97
  %101 = getelementptr i8, ptr %0, i32 4
  %102 = icmp eq i32 %75, 4
  br i1 %102, label %128, label %103

103:                                              ; preds = %100
  %104 = icmp ult ptr %101, %1
  br i1 %104, label %105, label %106

105:                                              ; preds = %103
  store i8 118, ptr %101, align 1
  br label %106

106:                                              ; preds = %105, %103
  %107 = getelementptr i8, ptr %0, i32 5
  %108 = icmp eq i32 %75, 5
  br i1 %108, label %128, label %109

109:                                              ; preds = %106
  %110 = icmp ult ptr %107, %1
  br i1 %110, label %111, label %112

111:                                              ; preds = %109
  store i8 97, ptr %107, align 1
  br label %112

112:                                              ; preds = %111, %109
  %113 = getelementptr i8, ptr %0, i32 6
  %114 = icmp eq i32 %75, 6
  br i1 %114, label %128, label %115

115:                                              ; preds = %112
  %116 = icmp ult ptr %113, %1
  br i1 %116, label %117, label %118

117:                                              ; preds = %115
  store i8 108, ptr %113, align 1
  br label %118

118:                                              ; preds = %117, %115
  %119 = getelementptr i8, ptr %0, i32 7
  %120 = icmp eq i32 %75, 7
  br i1 %120, label %128, label %121

121:                                              ; preds = %118
  %122 = icmp ult ptr %119, %1
  br i1 %122, label %123, label %124

123:                                              ; preds = %121
  store i8 41, ptr %119, align 1
  br label %124

124:                                              ; preds = %123, %121
  %125 = getelementptr i8, ptr %0, i32 8
  %126 = icmp eq i32 %75, 8
  %127 = select i1 %126, i32 8, i32 %79
  br label %128

128:                                              ; preds = %124, %118, %112, %106, %100, %94, %88, %82, %62
  %129 = phi ptr [ %0, %62 ], [ %83, %82 ], [ %89, %88 ], [ %95, %94 ], [ %101, %100 ], [ %107, %106 ], [ %113, %112 ], [ %119, %118 ], [ %125, %124 ]
  %130 = phi i32 [ 0, %62 ], [ 1, %82 ], [ 2, %88 ], [ 3, %94 ], [ 4, %100 ], [ 5, %106 ], [ 6, %112 ], [ 7, %118 ], [ %127, %124 ]
  %131 = insertvalue [2 x i32] %3, i32 %71, 1
  %132 = tail call fastcc ptr @widen_string(ptr noundef %129, i32 noundef %130, ptr noundef %1, [2 x i32] %131) #20
  br label %173

133:                                              ; preds = %49
  %134 = extractvalue [2 x i32] %3, 1
  %135 = zext i32 %134 to i64
  %136 = shl nuw i64 %135, 32
  %137 = ashr i64 %136, 48
  %138 = trunc i64 %137 to i32
  %139 = icmp eq i32 %138, -1
  %140 = and i32 %134, 65535
  %141 = or i32 %140, 524288
  %142 = select i1 %139, i32 %141, i32 %134
  %143 = zext i32 %142 to i64
  %144 = shl nuw i64 %143, 32
  %145 = ashr i64 %144, 48
  %146 = trunc i64 %145 to i32
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %168, label %148

148:                                              ; preds = %133
  %149 = load i8, ptr %4, align 1
  %150 = icmp eq i8 %149, 105
  %151 = select i1 %150, ptr @.str.31, ptr @.str.32
  br label %152

152:                                              ; preds = %164, %148
  %153 = phi i32 [ %157, %164 ], [ %146, %148 ]
  %154 = phi i32 [ %166, %164 ], [ 0, %148 ]
  %155 = phi ptr [ %158, %164 ], [ %151, %148 ]
  %156 = phi ptr [ %165, %164 ], [ %0, %148 ]
  %157 = add i32 %153, -1
  %158 = getelementptr i8, ptr %155, i32 1
  %159 = load i8, ptr %155, align 1
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %152
  %162 = icmp ult ptr %156, %1
  br i1 %162, label %163, label %164

163:                                              ; preds = %161
  store i8 %159, ptr %156, align 1
  br label %164

164:                                              ; preds = %163, %161
  %165 = getelementptr i8, ptr %156, i32 1
  %166 = add nuw i32 %154, 1
  %167 = icmp eq i32 %157, 0
  br i1 %167, label %168, label %152

168:                                              ; preds = %164, %152, %133
  %169 = phi ptr [ %0, %133 ], [ %156, %152 ], [ %165, %164 ]
  %170 = phi i32 [ 0, %133 ], [ %154, %152 ], [ %146, %164 ]
  %171 = insertvalue [2 x i32] %3, i32 %142, 1
  %172 = tail call fastcc ptr @widen_string(ptr noundef %169, i32 noundef %170, ptr noundef %1, [2 x i32] %171) #20
  br label %173

173:                                              ; preds = %168, %128, %60, %58, %54, %52, %44
  %174 = phi ptr [ %48, %44 ], [ %172, %168 ], [ %55, %54 ], [ %53, %52 ], [ %132, %128 ], [ %61, %60 ], [ %59, %58 ]
  ret ptr %174
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @escaped_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, [2 x i32] %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = extractvalue [2 x i32] %3, 0
  %7 = zext i32 %6 to i64
  %8 = shl nuw i64 %7, 32
  %9 = ashr i64 %8, 40
  %10 = trunc i64 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %83, label %12

12:                                               ; preds = %5
  %13 = icmp eq ptr %2, null
  %14 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  %15 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %16 = or i1 %14, %15
  %17 = select i1 %16, ptr @.str.60, ptr null
  %18 = select i1 %13, ptr @.str.59, ptr %17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %56, label %20

20:                                               ; preds = %12
  %21 = extractvalue [2 x i32] %3, 1
  %22 = zext i32 %21 to i64
  %23 = shl nuw i64 %22, 32
  %24 = ashr i64 %23, 48
  %25 = trunc i64 %24 to i32
  %26 = icmp eq i32 %25, -1
  %27 = and i32 %21, 65535
  %28 = or i32 %27, 524288
  %29 = select i1 %26, i32 %28, i32 %21
  %30 = zext i32 %29 to i64
  %31 = shl nuw i64 %30, 32
  %32 = ashr i64 %31, 48
  %33 = trunc i64 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %47, %20
  %36 = phi i32 [ %40, %47 ], [ %33, %20 ]
  %37 = phi i32 [ %49, %47 ], [ 0, %20 ]
  %38 = phi ptr [ %41, %47 ], [ %18, %20 ]
  %39 = phi ptr [ %48, %47 ], [ %0, %20 ]
  %40 = add i32 %36, -1
  %41 = getelementptr i8, ptr %38, i32 1
  %42 = load i8, ptr %38, align 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %35
  %45 = icmp ult ptr %39, %1
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  store i8 %42, ptr %39, align 1
  br label %47

47:                                               ; preds = %46, %44
  %48 = getelementptr i8, ptr %39, i32 1
  %49 = add nuw i32 %37, 1
  %50 = icmp eq i32 %40, 0
  br i1 %50, label %51, label %35

51:                                               ; preds = %47, %35, %20
  %52 = phi ptr [ %0, %20 ], [ %48, %47 ], [ %39, %35 ]
  %53 = phi i32 [ 0, %20 ], [ %33, %47 ], [ %37, %35 ]
  %54 = insertvalue [2 x i32] %3, i32 %29, 1
  %55 = tail call fastcc ptr @widen_string(ptr noundef %52, i32 noundef %53, ptr noundef %1, [2 x i32] %54) #20
  br label %83

56:                                               ; preds = %68, %12
  %57 = phi i32 [ %59, %68 ], [ 1, %12 ]
  %58 = phi i32 [ %70, %68 ], [ 0, %12 ]
  %59 = add i32 %57, 1
  %60 = getelementptr i8, ptr %4, i32 %57
  %61 = load i8, ptr %60, align 1
  switch i8 %61, label %71 [
    i8 97, label %68
    i8 99, label %62
    i8 104, label %63
    i8 110, label %64
    i8 111, label %65
    i8 112, label %66
    i8 115, label %67
  ]

62:                                               ; preds = %56
  br label %68

63:                                               ; preds = %56
  br label %68

64:                                               ; preds = %56
  br label %68

65:                                               ; preds = %56
  br label %68

66:                                               ; preds = %56
  br label %68

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %66, %65, %64, %63, %62, %56
  %69 = phi i32 [ 2, %62 ], [ 32, %63 ], [ 4, %64 ], [ 8, %65 ], [ 16, %66 ], [ 1, %67 ], [ 15, %56 ]
  %70 = or i32 %58, %69
  br label %56

71:                                               ; preds = %56
  %72 = icmp eq i32 %58, 0
  %73 = select i1 %72, i32 31, i32 %58
  %74 = icmp slt i32 %10, 0
  %75 = select i1 %74, i32 1, i32 %10
  %76 = icmp ult ptr %0, %1
  %77 = ptrtoint ptr %1 to i32
  %78 = ptrtoint ptr %0 to i32
  %79 = sub i32 %77, %78
  %80 = select i1 %76, i32 %79, i32 0
  %81 = tail call i32 @string_escape_mem(ptr noundef %2, i32 noundef %75, ptr noundef %0, i32 noundef %80, i32 noundef %73, ptr noundef null) #20
  %82 = getelementptr i8, ptr %0, i32 %81
  br label %83

83:                                               ; preds = %71, %51, %5
  %84 = phi ptr [ %55, %51 ], [ %82, %71 ], [ %0, %5 ]
  ret ptr %84
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @uuid_string(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, [2 x i32] %3, ptr nocapture noundef readonly %4) unnamed_addr #10 {
  %6 = alloca [37 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 37, ptr nonnull %6) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(37) %6, i8 0, i32 37, i1 false), !annotation !8
  %7 = icmp eq ptr %2, null
  %8 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  %9 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %10 = or i1 %8, %9
  %11 = select i1 %10, ptr @.str.60, ptr null
  %12 = select i1 %7, ptr @.str.59, ptr %11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %50, label %14

14:                                               ; preds = %5
  %15 = extractvalue [2 x i32] %3, 1
  %16 = zext i32 %15 to i64
  %17 = shl nuw i64 %16, 32
  %18 = ashr i64 %17, 48
  %19 = trunc i64 %18 to i32
  %20 = icmp eq i32 %19, -1
  %21 = and i32 %15, 65535
  %22 = or i32 %21, 524288
  %23 = select i1 %20, i32 %22, i32 %15
  %24 = zext i32 %23 to i64
  %25 = shl nuw i64 %24, 32
  %26 = ashr i64 %25, 48
  %27 = trunc i64 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %41, %14
  %30 = phi i32 [ %34, %41 ], [ %27, %14 ]
  %31 = phi i32 [ %43, %41 ], [ 0, %14 ]
  %32 = phi ptr [ %35, %41 ], [ %12, %14 ]
  %33 = phi ptr [ %42, %41 ], [ %0, %14 ]
  %34 = add i32 %30, -1
  %35 = getelementptr i8, ptr %32, i32 1
  %36 = load i8, ptr %32, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %29
  %39 = icmp ult ptr %33, %1
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  store i8 %36, ptr %33, align 1
  br label %41

41:                                               ; preds = %40, %38
  %42 = getelementptr i8, ptr %33, i32 1
  %43 = add nuw i32 %31, 1
  %44 = icmp eq i32 %34, 0
  br i1 %44, label %45, label %29

45:                                               ; preds = %41, %29, %14
  %46 = phi ptr [ %0, %14 ], [ %42, %41 ], [ %33, %29 ]
  %47 = phi i32 [ 0, %14 ], [ %27, %41 ], [ %31, %29 ]
  %48 = insertvalue [2 x i32] %3, i32 %23, 1
  %49 = tail call fastcc ptr @widen_string(ptr noundef %46, i32 noundef %47, ptr noundef %1, [2 x i32] %48) #20
  br label %111

50:                                               ; preds = %5
  %51 = getelementptr i8, ptr %4, i32 1
  %52 = load i8, ptr %51, align 1
  switch i8 %52, label %57 [
    i8 76, label %53
    i8 108, label %54
    i8 66, label %56
  ]

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i1 [ false, %50 ], [ true, %53 ]
  br label %57

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %54, %50
  %58 = phi ptr [ @uuid_index, %50 ], [ @uuid_index, %56 ], [ @guid_index, %54 ]
  %59 = phi i1 [ false, %50 ], [ true, %56 ], [ %55, %54 ]
  %60 = select i1 %59, ptr @hex_asc_upper, ptr @hex_asc
  br label %61

61:                                               ; preds = %80, %57
  %62 = phi i32 [ 0, %57 ], [ %82, %80 ]
  %63 = phi ptr [ %6, %57 ], [ %81, %80 ]
  %64 = getelementptr i8, ptr %58, i32 %62
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = getelementptr i8, ptr %2, i32 %66
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = lshr i32 %69, 4
  %71 = getelementptr [0 x i8], ptr %60, i32 0, i32 %70
  %72 = load i8, ptr %71, align 1
  store i8 %72, ptr %63, align 1
  %73 = and i32 %69, 15
  %74 = getelementptr [0 x i8], ptr %60, i32 0, i32 %73
  %75 = load i8, ptr %74, align 1
  %76 = getelementptr i8, ptr %63, i32 1
  store i8 %75, ptr %76, align 1
  %77 = getelementptr i8, ptr %63, i32 2
  switch i32 %62, label %80 [
    i32 3, label %78
    i32 5, label %78
    i32 7, label %78
    i32 9, label %78
  ]

78:                                               ; preds = %61, %61, %61, %61
  %79 = getelementptr i8, ptr %63, i32 3
  store i8 45, ptr %77, align 1
  br label %80

80:                                               ; preds = %78, %61
  %81 = phi ptr [ %77, %61 ], [ %79, %78 ]
  %82 = add nuw nsw i32 %62, 1
  %83 = icmp eq i32 %82, 16
  br i1 %83, label %84, label %61

84:                                               ; preds = %80
  store i8 0, ptr %81, align 1
  %85 = extractvalue [2 x i32] %3, 1
  %86 = zext i32 %85 to i64
  %87 = shl nuw i64 %86, 32
  %88 = ashr i64 %87, 48
  %89 = trunc i64 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %103, %84
  %92 = phi i32 [ %96, %103 ], [ %89, %84 ]
  %93 = phi i32 [ %105, %103 ], [ 0, %84 ]
  %94 = phi ptr [ %97, %103 ], [ %6, %84 ]
  %95 = phi ptr [ %104, %103 ], [ %0, %84 ]
  %96 = add i32 %92, -1
  %97 = getelementptr i8, ptr %94, i32 1
  %98 = load i8, ptr %94, align 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %91
  %101 = icmp ult ptr %95, %1
  br i1 %101, label %102, label %103

102:                                              ; preds = %100
  store i8 %98, ptr %95, align 1
  br label %103

103:                                              ; preds = %102, %100
  %104 = getelementptr i8, ptr %95, i32 1
  %105 = add nuw i32 %93, 1
  %106 = icmp eq i32 %96, 0
  br i1 %106, label %107, label %91

107:                                              ; preds = %103, %91, %84
  %108 = phi ptr [ %0, %84 ], [ %104, %103 ], [ %95, %91 ]
  %109 = phi i32 [ 0, %84 ], [ %89, %103 ], [ %93, %91 ]
  %110 = tail call fastcc ptr @widen_string(ptr noundef %108, i32 noundef %109, ptr noundef %1, [2 x i32] %3) #20
  br label %111

111:                                              ; preds = %107, %45
  %112 = phi ptr [ %49, %45 ], [ %110, %107 ]
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %6) #20
  ret ptr %112
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @restricted_pointer(ptr noundef %0, ptr noundef %1, ptr noundef %2, [2 x i32] %3) unnamed_addr #0 {
  %5 = extractvalue [2 x i32] %3, 0
  %6 = extractvalue [2 x i32] %3, 1
  %7 = load i32, ptr @kptr_restrict, align 4
  switch i32 %7, label %120 [
    i32 0, label %8
    i32 1, label %10
  ]

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @ptr_to_id(ptr noundef %0, ptr noundef %1, ptr noundef %2, [2 x i32] %3)
  br label %151

10:                                               ; preds = %4
  %11 = tail call ptr @llvm.thread.pointer() #20
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 983040
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load volatile i32, ptr %12, align 4
  %18 = and i32 %17, 256
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load volatile i32, ptr %12, align 4
  %22 = and i32 %21, 15728640
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %98, label %24

24:                                               ; preds = %20, %16, %10
  %25 = zext i32 %5 to i64
  %26 = shl nuw i64 %25, 32
  %27 = ashr i64 %26, 40
  %28 = trunc i64 %27 to i32
  %29 = icmp eq i32 %28, -1
  %30 = and i32 %5, 255
  %31 = or i32 %30, 2048
  %32 = select i1 %29, i32 %31, i32 %5
  %33 = insertvalue [2 x i32] poison, i32 %32, 0
  %34 = zext i32 %6 to i64
  %35 = shl nuw i64 %34, 32
  %36 = ashr i64 %35, 48
  %37 = trunc i64 %36 to i32
  %38 = icmp eq i32 %37, -1
  %39 = and i32 %6, 65535
  %40 = or i32 %39, 524288
  %41 = select i1 %38, i32 %40, i32 %6
  %42 = zext i32 %41 to i64
  %43 = shl nuw i64 %42, 32
  %44 = ashr i64 %43, 48
  %45 = trunc i64 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %115, label %47

47:                                               ; preds = %24
  %48 = add nsw i32 %45, -1
  %49 = call i32 @llvm.umin.i32(i32 %48, i32 8)
  %50 = icmp ult ptr %0, %1
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i8 112, ptr %0, align 1
  br label %52

52:                                               ; preds = %51, %47
  %53 = getelementptr i8, ptr %0, i32 1
  %54 = icmp eq i32 %48, 0
  br i1 %54, label %115, label %55

55:                                               ; preds = %52
  %56 = icmp ult ptr %53, %1
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  store i8 75, ptr %53, align 1
  br label %58

58:                                               ; preds = %57, %55
  %59 = getelementptr i8, ptr %0, i32 2
  %60 = icmp eq i32 %45, 2
  br i1 %60, label %115, label %61

61:                                               ; preds = %58
  %62 = icmp ult ptr %59, %1
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  store i8 45, ptr %59, align 1
  br label %64

64:                                               ; preds = %63, %61
  %65 = getelementptr i8, ptr %0, i32 3
  %66 = icmp eq i32 %45, 3
  br i1 %66, label %115, label %67

67:                                               ; preds = %64
  %68 = icmp ult ptr %65, %1
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  store i8 101, ptr %65, align 1
  br label %70

70:                                               ; preds = %69, %67
  %71 = getelementptr i8, ptr %0, i32 4
  %72 = icmp eq i32 %45, 4
  br i1 %72, label %115, label %73

73:                                               ; preds = %70
  %74 = icmp ult ptr %71, %1
  br i1 %74, label %75, label %76

75:                                               ; preds = %73
  store i8 114, ptr %71, align 1
  br label %76

76:                                               ; preds = %75, %73
  %77 = getelementptr i8, ptr %0, i32 5
  %78 = icmp eq i32 %45, 5
  br i1 %78, label %115, label %79

79:                                               ; preds = %76
  %80 = icmp ult ptr %77, %1
  br i1 %80, label %81, label %82

81:                                               ; preds = %79
  store i8 114, ptr %77, align 1
  br label %82

82:                                               ; preds = %81, %79
  %83 = getelementptr i8, ptr %0, i32 6
  %84 = icmp eq i32 %45, 6
  br i1 %84, label %115, label %85

85:                                               ; preds = %82
  %86 = icmp ult ptr %83, %1
  br i1 %86, label %87, label %88

87:                                               ; preds = %85
  store i8 111, ptr %83, align 1
  br label %88

88:                                               ; preds = %87, %85
  %89 = getelementptr i8, ptr %0, i32 7
  %90 = icmp eq i32 %45, 7
  br i1 %90, label %115, label %91

91:                                               ; preds = %88
  %92 = icmp ult ptr %89, %1
  br i1 %92, label %93, label %94

93:                                               ; preds = %91
  store i8 114, ptr %89, align 1
  br label %94

94:                                               ; preds = %93, %91
  %95 = getelementptr i8, ptr %0, i32 8
  %96 = icmp eq i32 %45, 8
  %97 = select i1 %96, i32 8, i32 %49
  br label %115

98:                                               ; preds = %20
  %99 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 83
  %100 = load ptr, ptr %99, align 8
  %101 = tail call zeroext i1 @has_capability_noaudit(ptr noundef %11, i32 noundef 34) #20
  br i1 %101, label %102, label %114

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.cred, ptr %100, i32 0, i32 5
  %104 = getelementptr inbounds %struct.cred, ptr %100, i32 0, i32 1
  %105 = load i32, ptr %103, align 4
  %106 = load i32, ptr %104, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.cred, ptr %100, i32 0, i32 6
  %110 = getelementptr inbounds %struct.cred, ptr %100, i32 0, i32 2
  %111 = load i32, ptr %109, align 4
  %112 = load i32, ptr %110, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %108, %102, %98
  br label %120

115:                                              ; preds = %94, %88, %82, %76, %70, %64, %58, %52, %24
  %116 = phi ptr [ %0, %24 ], [ %53, %52 ], [ %59, %58 ], [ %65, %64 ], [ %71, %70 ], [ %77, %76 ], [ %83, %82 ], [ %89, %88 ], [ %95, %94 ]
  %117 = phi i32 [ 0, %24 ], [ 1, %52 ], [ 2, %58 ], [ 3, %64 ], [ 4, %70 ], [ 5, %76 ], [ 6, %82 ], [ 7, %88 ], [ %97, %94 ]
  %118 = insertvalue [2 x i32] %33, i32 %41, 1
  %119 = tail call fastcc ptr @widen_string(ptr noundef %116, i32 noundef %117, ptr noundef %1, [2 x i32] %118) #20
  br label %151

120:                                              ; preds = %114, %108, %4
  %121 = phi ptr [ null, %4 ], [ null, %114 ], [ %2, %108 ]
  %122 = and i32 %6, -65313
  %123 = or i32 %122, 4128
  %124 = zext i32 %5 to i64
  %125 = shl nuw i64 %124, 32
  %126 = ashr i64 %125, 40
  %127 = trunc i64 %126 to i32
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %129, label %143

129:                                              ; preds = %120
  %130 = or i64 %124, 2048
  %131 = zext i32 %123 to i64
  %132 = shl nuw i64 %131, 32
  %133 = or i64 %132, %130
  %134 = and i32 %6, 207
  %135 = or i32 %134, 48
  %136 = zext i32 %135 to i64
  %137 = shl nuw nsw i64 %136, 32
  %138 = and i64 %133, -263882790663937
  %139 = or i64 %138, %137
  %140 = trunc i64 %138 to i32
  %141 = lshr i64 %139, 32
  %142 = trunc i64 %141 to i32
  br label %143

143:                                              ; preds = %129, %120
  %144 = phi i32 [ %140, %129 ], [ %5, %120 ]
  %145 = phi i32 [ %142, %129 ], [ %123, %120 ]
  %146 = ptrtoint ptr %121 to i32
  %147 = zext i32 %146 to i64
  %148 = insertvalue [2 x i32] poison, i32 %144, 0
  %149 = insertvalue [2 x i32] %148, i32 %145, 1
  %150 = tail call fastcc ptr @number(ptr noundef %0, ptr noundef %1, i64 noundef %147, [2 x i32] %149) #20
  br label %151

151:                                              ; preds = %143, %115, %8
  %152 = phi ptr [ %150, %143 ], [ %119, %115 ], [ %9, %8 ]
  ret ptr %152
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @netdev_bits(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, [2 x i32] %3, ptr nocapture noundef readonly %4) unnamed_addr #10 {
  %6 = icmp eq ptr %2, null
  %7 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  %8 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  %10 = select i1 %9, ptr @.str.60, ptr null
  %11 = select i1 %6, ptr @.str.59, ptr %10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %5
  %14 = extractvalue [2 x i32] %3, 1
  %15 = zext i32 %14 to i64
  %16 = shl nuw i64 %15, 32
  %17 = ashr i64 %16, 48
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %18, -1
  %20 = and i32 %14, 65535
  %21 = or i32 %20, 524288
  %22 = select i1 %19, i32 %21, i32 %14
  %23 = zext i32 %22 to i64
  %24 = shl nuw i64 %23, 32
  %25 = ashr i64 %24, 48
  %26 = trunc i64 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %40, %13
  %29 = phi i32 [ %33, %40 ], [ %26, %13 ]
  %30 = phi i32 [ %42, %40 ], [ 0, %13 ]
  %31 = phi ptr [ %34, %40 ], [ %11, %13 ]
  %32 = phi ptr [ %41, %40 ], [ %0, %13 ]
  %33 = add i32 %29, -1
  %34 = getelementptr i8, ptr %31, i32 1
  %35 = load i8, ptr %31, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %28
  %38 = icmp ult ptr %32, %1
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  store i8 %35, ptr %32, align 1
  br label %40

40:                                               ; preds = %39, %37
  %41 = getelementptr i8, ptr %32, i32 1
  %42 = add nuw i32 %30, 1
  %43 = icmp eq i32 %33, 0
  br i1 %43, label %44, label %28

44:                                               ; preds = %40, %28, %13
  %45 = phi ptr [ %0, %13 ], [ %41, %40 ], [ %32, %28 ]
  %46 = phi i32 [ 0, %13 ], [ %26, %40 ], [ %30, %28 ]
  %47 = insertvalue [2 x i32] %3, i32 %22, 1
  %48 = tail call fastcc ptr @widen_string(ptr noundef %45, i32 noundef %46, ptr noundef %1, [2 x i32] %47) #20
  br label %115

49:                                               ; preds = %5
  %50 = getelementptr i8, ptr %4, i32 1
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, 70
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i64, ptr %2, align 8
  %55 = tail call fastcc ptr @special_hex_number(ptr noundef %0, ptr noundef %1, i64 noundef %54, i32 noundef 8)
  br label %115

56:                                               ; preds = %49
  %57 = extractvalue [2 x i32] %3, 1
  %58 = zext i32 %57 to i64
  %59 = shl nuw i64 %58, 32
  %60 = ashr i64 %59, 48
  %61 = trunc i64 %60 to i32
  %62 = icmp eq i32 %61, -1
  %63 = and i32 %57, 65535
  %64 = or i32 %63, 524288
  %65 = select i1 %62, i32 %64, i32 %57
  %66 = zext i32 %65 to i64
  %67 = shl nuw i64 %66, 32
  %68 = ashr i64 %67, 48
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %110, label %71

71:                                               ; preds = %56
  %72 = add nsw i32 %69, -1
  %73 = call i32 @llvm.umin.i32(i32 %72, i32 6)
  %74 = icmp ult ptr %0, %1
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i8 40, ptr %0, align 1
  br label %76

76:                                               ; preds = %75, %71
  %77 = getelementptr i8, ptr %0, i32 1
  %78 = icmp eq i32 %72, 0
  br i1 %78, label %110, label %79

79:                                               ; preds = %76
  %80 = icmp ult ptr %77, %1
  br i1 %80, label %81, label %82

81:                                               ; preds = %79
  store i8 37, ptr %77, align 1
  br label %82

82:                                               ; preds = %81, %79
  %83 = getelementptr i8, ptr %0, i32 2
  %84 = icmp eq i32 %69, 2
  br i1 %84, label %110, label %85

85:                                               ; preds = %82
  %86 = icmp ult ptr %83, %1
  br i1 %86, label %87, label %88

87:                                               ; preds = %85
  store i8 112, ptr %83, align 1
  br label %88

88:                                               ; preds = %87, %85
  %89 = getelementptr i8, ptr %0, i32 3
  %90 = icmp eq i32 %69, 3
  br i1 %90, label %110, label %91

91:                                               ; preds = %88
  %92 = icmp ult ptr %89, %1
  br i1 %92, label %93, label %94

93:                                               ; preds = %91
  store i8 78, ptr %89, align 1
  br label %94

94:                                               ; preds = %93, %91
  %95 = getelementptr i8, ptr %0, i32 4
  %96 = icmp eq i32 %69, 4
  br i1 %96, label %110, label %97

97:                                               ; preds = %94
  %98 = icmp ult ptr %95, %1
  br i1 %98, label %99, label %100

99:                                               ; preds = %97
  store i8 63, ptr %95, align 1
  br label %100

100:                                              ; preds = %99, %97
  %101 = getelementptr i8, ptr %0, i32 5
  %102 = icmp eq i32 %69, 5
  br i1 %102, label %110, label %103

103:                                              ; preds = %100
  %104 = icmp ult ptr %101, %1
  br i1 %104, label %105, label %106

105:                                              ; preds = %103
  store i8 41, ptr %101, align 1
  br label %106

106:                                              ; preds = %105, %103
  %107 = getelementptr i8, ptr %0, i32 6
  %108 = icmp eq i32 %69, 6
  %109 = select i1 %108, i32 6, i32 %73
  br label %110

110:                                              ; preds = %106, %100, %94, %88, %82, %76, %56
  %111 = phi ptr [ %0, %56 ], [ %77, %76 ], [ %83, %82 ], [ %89, %88 ], [ %95, %94 ], [ %101, %100 ], [ %107, %106 ]
  %112 = phi i32 [ 0, %56 ], [ 1, %76 ], [ 2, %82 ], [ 3, %88 ], [ 4, %94 ], [ 5, %100 ], [ %109, %106 ]
  %113 = insertvalue [2 x i32] %3, i32 %65, 1
  %114 = tail call fastcc ptr @widen_string(ptr noundef %111, i32 noundef %112, ptr noundef %1, [2 x i32] %113) #20
  br label %115

115:                                              ; preds = %110, %53, %44
  %116 = phi ptr [ %48, %44 ], [ %55, %53 ], [ %114, %110 ]
  ret ptr %116
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @fourcc_string(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, [2 x i32] %3, ptr nocapture noundef readonly %4) unnamed_addr #16 {
  %6 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #20
  %7 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %7, i8 0, i32 28, i1 false), !annotation !8
  %8 = getelementptr i8, ptr %4, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 99
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr i8, ptr %4, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 99
  br i1 %14, label %74, label %15

15:                                               ; preds = %11, %5
  %16 = extractvalue [2 x i32] %3, 1
  %17 = zext i32 %16 to i64
  %18 = shl nuw i64 %17, 32
  %19 = ashr i64 %18, 48
  %20 = trunc i64 %19 to i32
  %21 = icmp eq i32 %20, -1
  %22 = and i32 %16, 65535
  %23 = or i32 %22, 524288
  %24 = select i1 %21, i32 %23, i32 %16
  %25 = zext i32 %24 to i64
  %26 = shl nuw i64 %25, 32
  %27 = ashr i64 %26, 48
  %28 = trunc i64 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %69, label %30

30:                                               ; preds = %15
  %31 = add nsw i32 %28, -1
  %32 = call i32 @llvm.umin.i32(i32 %31, i32 6)
  %33 = icmp ult ptr %0, %1
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i8 40, ptr %0, align 1
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr i8, ptr %0, i32 1
  %37 = icmp eq i32 %31, 0
  br i1 %37, label %69, label %38

38:                                               ; preds = %35
  %39 = icmp ult ptr %36, %1
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  store i8 37, ptr %36, align 1
  br label %41

41:                                               ; preds = %40, %38
  %42 = getelementptr i8, ptr %0, i32 2
  %43 = icmp eq i32 %28, 2
  br i1 %43, label %69, label %44

44:                                               ; preds = %41
  %45 = icmp ult ptr %42, %1
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  store i8 112, ptr %42, align 1
  br label %47

47:                                               ; preds = %46, %44
  %48 = getelementptr i8, ptr %0, i32 3
  %49 = icmp eq i32 %28, 3
  br i1 %49, label %69, label %50

50:                                               ; preds = %47
  %51 = icmp ult ptr %48, %1
  br i1 %51, label %52, label %53

52:                                               ; preds = %50
  store i8 52, ptr %48, align 1
  br label %53

53:                                               ; preds = %52, %50
  %54 = getelementptr i8, ptr %0, i32 4
  %55 = icmp eq i32 %28, 4
  br i1 %55, label %69, label %56

56:                                               ; preds = %53
  %57 = icmp ult ptr %54, %1
  br i1 %57, label %58, label %59

58:                                               ; preds = %56
  store i8 63, ptr %54, align 1
  br label %59

59:                                               ; preds = %58, %56
  %60 = getelementptr i8, ptr %0, i32 5
  %61 = icmp eq i32 %28, 5
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = icmp ult ptr %60, %1
  br i1 %63, label %64, label %65

64:                                               ; preds = %62
  store i8 41, ptr %60, align 1
  br label %65

65:                                               ; preds = %64, %62
  %66 = getelementptr i8, ptr %0, i32 6
  %67 = icmp eq i32 %28, 6
  %68 = select i1 %67, i32 6, i32 %32
  br label %69

69:                                               ; preds = %65, %59, %53, %47, %41, %35, %15
  %70 = phi ptr [ %0, %15 ], [ %36, %35 ], [ %42, %41 ], [ %48, %47 ], [ %54, %53 ], [ %60, %59 ], [ %66, %65 ]
  %71 = phi i32 [ 0, %15 ], [ 1, %35 ], [ 2, %41 ], [ 3, %47 ], [ 4, %53 ], [ 5, %59 ], [ %68, %65 ]
  %72 = insertvalue [2 x i32] %3, i32 %24, 1
  %73 = tail call fastcc ptr @widen_string(ptr noundef %70, i32 noundef %71, ptr noundef %1, [2 x i32] %72) #20
  br label %179

74:                                               ; preds = %11
  %75 = icmp eq ptr %2, null
  %76 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  %77 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %78 = or i1 %76, %77
  %79 = select i1 %78, ptr @.str.60, ptr null
  %80 = select i1 %75, ptr @.str.59, ptr %79
  %81 = icmp eq ptr %80, null
  br i1 %81, label %118, label %82

82:                                               ; preds = %74
  %83 = extractvalue [2 x i32] %3, 1
  %84 = zext i32 %83 to i64
  %85 = shl nuw i64 %84, 32
  %86 = ashr i64 %85, 48
  %87 = trunc i64 %86 to i32
  %88 = icmp eq i32 %87, -1
  %89 = and i32 %83, 65535
  %90 = or i32 %89, 524288
  %91 = select i1 %88, i32 %90, i32 %83
  %92 = zext i32 %91 to i64
  %93 = shl nuw i64 %92, 32
  %94 = ashr i64 %93, 48
  %95 = trunc i64 %94 to i32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %113, label %97

97:                                               ; preds = %109, %82
  %98 = phi i32 [ %102, %109 ], [ %95, %82 ]
  %99 = phi i32 [ %111, %109 ], [ 0, %82 ]
  %100 = phi ptr [ %103, %109 ], [ %80, %82 ]
  %101 = phi ptr [ %110, %109 ], [ %0, %82 ]
  %102 = add i32 %98, -1
  %103 = getelementptr i8, ptr %100, i32 1
  %104 = load i8, ptr %100, align 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %97
  %107 = icmp ult ptr %101, %1
  br i1 %107, label %108, label %109

108:                                              ; preds = %106
  store i8 %104, ptr %101, align 1
  br label %109

109:                                              ; preds = %108, %106
  %110 = getelementptr i8, ptr %101, i32 1
  %111 = add nuw i32 %99, 1
  %112 = icmp eq i32 %102, 0
  br i1 %112, label %113, label %97

113:                                              ; preds = %109, %97, %82
  %114 = phi ptr [ %0, %82 ], [ %110, %109 ], [ %101, %97 ]
  %115 = phi i32 [ 0, %82 ], [ %95, %109 ], [ %99, %97 ]
  %116 = insertvalue [2 x i32] %3, i32 %91, 1
  %117 = tail call fastcc ptr @widen_string(ptr noundef %114, i32 noundef %115, ptr noundef %1, [2 x i32] %116) #20
  br label %179

118:                                              ; preds = %74
  %119 = load i32, ptr %2, align 4
  %120 = and i32 %119, 255
  %121 = icmp ult i32 %120, 128
  br i1 %121, label %122, label %129

122:                                              ; preds = %118
  %123 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %120
  %124 = load i8, ptr %123, align 1
  %125 = and i8 %124, -105
  %126 = icmp eq i8 %125, 0
  %127 = trunc i32 %119 to i8
  %128 = select i1 %126, i8 46, i8 %127
  br label %129

129:                                              ; preds = %122, %118
  %130 = phi i8 [ 46, %118 ], [ %128, %122 ]
  %131 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %130, ptr %6, align 1
  %132 = lshr i32 %119, 8
  %133 = and i32 %132, 255
  %134 = icmp ult i32 %133, 128
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %133
  %137 = load i8, ptr %136, align 1
  %138 = and i8 %137, -105
  %139 = icmp eq i8 %138, 0
  %140 = trunc i32 %132 to i8
  %141 = select i1 %139, i8 46, i8 %140
  br label %142

142:                                              ; preds = %135, %129
  %143 = phi i8 [ 46, %129 ], [ %141, %135 ]
  %144 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 %143, ptr %131, align 1
  %145 = lshr i32 %119, 16
  %146 = and i32 %145, 255
  %147 = icmp ult i32 %146, 128
  br i1 %147, label %148, label %155

148:                                              ; preds = %142
  %149 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %146
  %150 = load i8, ptr %149, align 1
  %151 = and i8 %150, -105
  %152 = icmp eq i8 %151, 0
  %153 = trunc i32 %145 to i8
  %154 = select i1 %152, i8 46, i8 %153
  br label %155

155:                                              ; preds = %148, %142
  %156 = phi i8 [ 46, %142 ], [ %154, %148 ]
  %157 = getelementptr inbounds i8, ptr %6, i32 3
  store i8 %156, ptr %144, align 1
  %158 = lshr i32 %119, 24
  %159 = and i32 %158, 127
  %160 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %159
  %161 = load i8, ptr %160, align 1
  %162 = and i8 %161, -105
  %163 = icmp eq i8 %162, 0
  %164 = trunc i32 %159 to i8
  %165 = select i1 %163, i8 46, i8 %164
  %166 = getelementptr inbounds i8, ptr %6, i32 4
  store i8 %165, ptr %157, align 1
  %167 = icmp sgt i32 %119, -1
  %168 = select i1 %167, ptr @.str.38, ptr @.str.37
  %169 = call ptr @strcpy(ptr noundef %166, ptr noundef nonnull %168)
  %170 = call i32 @strlen(ptr noundef %166)
  %171 = getelementptr i8, ptr %166, i32 %170
  %172 = getelementptr i8, ptr %171, i32 1
  store i8 32, ptr %171, align 1
  %173 = getelementptr i8, ptr %172, i32 1
  store i8 40, ptr %172, align 1
  %174 = getelementptr inbounds i8, ptr %6, i32 30
  %175 = zext i32 %119 to i64
  %176 = call fastcc ptr @special_hex_number(ptr noundef %173, ptr noundef %174, i64 noundef %175, i32 noundef 4)
  %177 = getelementptr i8, ptr %176, i32 1
  store i8 41, ptr %176, align 1
  store i8 0, ptr %177, align 1
  %178 = call fastcc ptr @string(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, [2 x i32] %3)
  br label %179

179:                                              ; preds = %155, %113, %69
  %180 = phi ptr [ %73, %69 ], [ %117, %113 ], [ %178, %155 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #20
  ret ptr %180
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @address_val(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, [2 x i32] %3, ptr nocapture noundef readnone %4) unnamed_addr #10 {
  %6 = icmp eq ptr %2, null
  %7 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  %8 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  %10 = select i1 %9, ptr @.str.60, ptr null
  %11 = select i1 %6, ptr @.str.59, ptr %10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %5
  %14 = extractvalue [2 x i32] %3, 1
  %15 = zext i32 %14 to i64
  %16 = shl nuw i64 %15, 32
  %17 = ashr i64 %16, 48
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %18, -1
  %20 = and i32 %14, 65535
  %21 = or i32 %20, 524288
  %22 = select i1 %19, i32 %21, i32 %14
  %23 = zext i32 %22 to i64
  %24 = shl nuw i64 %23, 32
  %25 = ashr i64 %24, 48
  %26 = trunc i64 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %40, %13
  %29 = phi i32 [ %33, %40 ], [ %26, %13 ]
  %30 = phi i32 [ %42, %40 ], [ 0, %13 ]
  %31 = phi ptr [ %34, %40 ], [ %11, %13 ]
  %32 = phi ptr [ %41, %40 ], [ %0, %13 ]
  %33 = add i32 %29, -1
  %34 = getelementptr i8, ptr %31, i32 1
  %35 = load i8, ptr %31, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %28
  %38 = icmp ult ptr %32, %1
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  store i8 %35, ptr %32, align 1
  br label %40

40:                                               ; preds = %39, %37
  %41 = getelementptr i8, ptr %32, i32 1
  %42 = add nuw i32 %30, 1
  %43 = icmp eq i32 %33, 0
  br i1 %43, label %44, label %28

44:                                               ; preds = %40, %28, %13
  %45 = phi ptr [ %0, %13 ], [ %41, %40 ], [ %32, %28 ]
  %46 = phi i32 [ 0, %13 ], [ %26, %40 ], [ %30, %28 ]
  %47 = insertvalue [2 x i32] %3, i32 %22, 1
  %48 = tail call fastcc ptr @widen_string(ptr noundef %45, i32 noundef %46, ptr noundef %1, [2 x i32] %47) #20
  br label %53

49:                                               ; preds = %5
  %50 = load i32, ptr %2, align 4
  %51 = zext i32 %50 to i64
  %52 = tail call fastcc ptr @special_hex_number(ptr noundef %0, ptr noundef %1, i64 noundef %51, i32 noundef 4)
  br label %53

53:                                               ; preds = %49, %44
  %54 = phi ptr [ %48, %44 ], [ %52, %49 ]
  ret ptr %54
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @dentry_name(ptr noundef %0, ptr noundef %1, ptr noundef %2, [2 x i32] %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca [4 x ptr], align 4
  %7 = extractvalue [2 x i32] %3, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !8
  %8 = getelementptr i8, ptr %4, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = add i8 %9, -50
  %11 = icmp ult i8 %10, 3
  %12 = zext i8 %9 to i32
  %13 = add nsw i32 %12, -48
  %14 = select i1 %11, i32 %13, i32 1
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !15
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %77

16:                                               ; preds = %74, %5
  %17 = phi ptr [ %63, %74 ], [ %2, %5 ]
  %18 = phi i32 [ %75, %74 ], [ 0, %5 ]
  %19 = icmp eq ptr %17, null
  %20 = icmp ult ptr %17, inttoptr (i32 4096 to ptr)
  %21 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  %22 = or i1 %20, %21
  %23 = select i1 %22, ptr @.str.60, ptr null
  %24 = select i1 %19, ptr @.str.59, ptr %23
  %25 = icmp eq ptr %24, null
  br i1 %25, label %61, label %26

26:                                               ; preds = %16
  %27 = zext i32 %7 to i64
  %28 = shl nuw i64 %27, 32
  %29 = ashr i64 %28, 48
  %30 = trunc i64 %29 to i32
  %31 = icmp eq i32 %30, -1
  %32 = and i32 %7, 65535
  %33 = or i32 %32, 524288
  %34 = select i1 %31, i32 %33, i32 %7
  %35 = zext i32 %34 to i64
  %36 = shl nuw i64 %35, 32
  %37 = ashr i64 %36, 48
  %38 = trunc i64 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %52, %26
  %41 = phi i32 [ %45, %52 ], [ %38, %26 ]
  %42 = phi i32 [ %54, %52 ], [ 0, %26 ]
  %43 = phi ptr [ %46, %52 ], [ %24, %26 ]
  %44 = phi ptr [ %53, %52 ], [ %0, %26 ]
  %45 = add i32 %41, -1
  %46 = getelementptr i8, ptr %43, i32 1
  %47 = load i8, ptr %43, align 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %40
  %50 = icmp ult ptr %44, %1
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  store i8 %47, ptr %44, align 1
  br label %52

52:                                               ; preds = %51, %49
  %53 = getelementptr i8, ptr %44, i32 1
  %54 = add nuw i32 %42, 1
  %55 = icmp eq i32 %45, 0
  br i1 %55, label %56, label %40

56:                                               ; preds = %52, %40, %26
  %57 = phi ptr [ %0, %26 ], [ %53, %52 ], [ %44, %40 ]
  %58 = phi i32 [ 0, %26 ], [ %38, %52 ], [ %42, %40 ]
  %59 = insertvalue [2 x i32] %3, i32 %34, 1
  %60 = tail call fastcc ptr @widen_string(ptr noundef %57, i32 noundef %58, ptr noundef %1, [2 x i32] %59) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !16
  br label %116

61:                                               ; preds = %16
  %62 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 3
  %63 = load volatile ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 4, i32 1
  %65 = load volatile ptr, ptr %64, align 8
  %66 = getelementptr [4 x ptr], ptr %6, i32 0, i32 %18
  store ptr %65, ptr %66, align 4
  %67 = icmp eq ptr %63, %17
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = icmp eq i32 %18, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %68
  %71 = getelementptr [4 x ptr], ptr %6, i32 0, i32 %18
  store ptr @.str.39, ptr %71, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = add nuw nsw i32 %18, 1
  br label %77

74:                                               ; preds = %61
  %75 = add nuw nsw i32 %18, 1
  %76 = icmp eq i32 %75, %14
  br i1 %76, label %77, label %16

77:                                               ; preds = %74, %72, %5
  %78 = phi i32 [ %73, %72 ], [ 0, %5 ], [ %14, %74 ]
  %79 = zext i32 %7 to i64
  %80 = shl nuw i64 %79, 32
  %81 = ashr i64 %80, 48
  %82 = trunc i64 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %112, label %84

84:                                               ; preds = %77
  %85 = add i32 %78, -1
  %86 = getelementptr [4 x ptr], ptr %6, i32 0, i32 %85
  %87 = load ptr, ptr %86, align 4
  br label %88

88:                                               ; preds = %108, %84
  %89 = phi i32 [ %109, %108 ], [ 0, %84 ]
  %90 = phi i32 [ %104, %108 ], [ %85, %84 ]
  %91 = phi ptr [ %103, %108 ], [ %87, %84 ]
  %92 = phi ptr [ %110, %108 ], [ %0, %84 ]
  %93 = getelementptr i8, ptr %91, i32 1
  %94 = load i8, ptr %91, align 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = icmp eq i32 %90, 0
  br i1 %97, label %112, label %98

98:                                               ; preds = %96
  %99 = add i32 %90, -1
  %100 = getelementptr [4 x ptr], ptr %6, i32 0, i32 %99
  %101 = load ptr, ptr %100, align 4
  br label %102

102:                                              ; preds = %98, %88
  %103 = phi ptr [ %93, %88 ], [ %101, %98 ]
  %104 = phi i32 [ %90, %88 ], [ %99, %98 ]
  %105 = phi i8 [ %94, %88 ], [ 47, %98 ]
  %106 = icmp ult ptr %92, %1
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i8 %105, ptr %92, align 1
  br label %108

108:                                              ; preds = %107, %102
  %109 = add nuw i32 %89, 1
  %110 = getelementptr i8, ptr %92, i32 1
  %111 = icmp eq i32 %109, %82
  br i1 %111, label %112, label %88

112:                                              ; preds = %108, %96, %77
  %113 = phi ptr [ %0, %77 ], [ %92, %96 ], [ %110, %108 ]
  %114 = phi i32 [ 0, %77 ], [ %89, %96 ], [ %82, %108 ]
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !16
  %115 = tail call fastcc ptr @widen_string(ptr noundef %113, i32 noundef %114, ptr noundef %1, [2 x i32] %3)
  br label %116

116:                                              ; preds = %112, %56
  %117 = phi ptr [ %60, %56 ], [ %115, %112 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  ret ptr %117
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @time_and_date(ptr noundef %0, ptr noundef %1, ptr noundef %2, [2 x i32] %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = getelementptr i8, ptr %4, i32 1
  %7 = load i8, ptr %6, align 1
  switch i8 %7, label %13 [
    i8 82, label %8
    i8 84, label %10
  ]

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @rtc_str(ptr noundef %0, ptr noundef %1, ptr noundef %2, [2 x i32] %3, ptr noundef %4)
  br label %72

10:                                               ; preds = %5
  %11 = load i64, ptr %2, align 8
  %12 = tail call fastcc ptr @time64_str(ptr noundef %0, ptr noundef %1, i64 noundef %11, [2 x i32] %3, ptr noundef %4)
  br label %72

13:                                               ; preds = %5
  %14 = extractvalue [2 x i32] %3, 1
  %15 = zext i32 %14 to i64
  %16 = shl nuw i64 %15, 32
  %17 = ashr i64 %16, 48
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %18, -1
  %20 = and i32 %14, 65535
  %21 = or i32 %20, 524288
  %22 = select i1 %19, i32 %21, i32 %14
  %23 = zext i32 %22 to i64
  %24 = shl nuw i64 %23, 32
  %25 = ashr i64 %24, 48
  %26 = trunc i64 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %67, label %28

28:                                               ; preds = %13
  %29 = add nsw i32 %26, -1
  %30 = call i32 @llvm.umin.i32(i32 %29, i32 6)
  %31 = icmp ult ptr %0, %1
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i8 40, ptr %0, align 1
  br label %33

33:                                               ; preds = %32, %28
  %34 = getelementptr i8, ptr %0, i32 1
  %35 = icmp eq i32 %29, 0
  br i1 %35, label %67, label %36

36:                                               ; preds = %33
  %37 = icmp ult ptr %34, %1
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  store i8 37, ptr %34, align 1
  br label %39

39:                                               ; preds = %38, %36
  %40 = getelementptr i8, ptr %0, i32 2
  %41 = icmp eq i32 %26, 2
  br i1 %41, label %67, label %42

42:                                               ; preds = %39
  %43 = icmp ult ptr %40, %1
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  store i8 112, ptr %40, align 1
  br label %45

45:                                               ; preds = %44, %42
  %46 = getelementptr i8, ptr %0, i32 3
  %47 = icmp eq i32 %26, 3
  br i1 %47, label %67, label %48

48:                                               ; preds = %45
  %49 = icmp ult ptr %46, %1
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  store i8 116, ptr %46, align 1
  br label %51

51:                                               ; preds = %50, %48
  %52 = getelementptr i8, ptr %0, i32 4
  %53 = icmp eq i32 %26, 4
  br i1 %53, label %67, label %54

54:                                               ; preds = %51
  %55 = icmp ult ptr %52, %1
  br i1 %55, label %56, label %57

56:                                               ; preds = %54
  store i8 63, ptr %52, align 1
  br label %57

57:                                               ; preds = %56, %54
  %58 = getelementptr i8, ptr %0, i32 5
  %59 = icmp eq i32 %26, 5
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = icmp ult ptr %58, %1
  br i1 %61, label %62, label %63

62:                                               ; preds = %60
  store i8 41, ptr %58, align 1
  br label %63

63:                                               ; preds = %62, %60
  %64 = getelementptr i8, ptr %0, i32 6
  %65 = icmp eq i32 %26, 6
  %66 = select i1 %65, i32 6, i32 %30
  br label %67

67:                                               ; preds = %63, %57, %51, %45, %39, %33, %13
  %68 = phi ptr [ %0, %13 ], [ %34, %33 ], [ %40, %39 ], [ %46, %45 ], [ %52, %51 ], [ %58, %57 ], [ %64, %63 ]
  %69 = phi i32 [ 0, %13 ], [ 1, %33 ], [ 2, %39 ], [ 3, %45 ], [ 4, %51 ], [ 5, %57 ], [ %66, %63 ]
  %70 = insertvalue [2 x i32] %3, i32 %22, 1
  %71 = tail call fastcc ptr @widen_string(ptr noundef %68, i32 noundef %69, ptr noundef %1, [2 x i32] %70) #20
  br label %72

72:                                               ; preds = %67, %10, %8
  %73 = phi ptr [ %71, %67 ], [ %12, %10 ], [ %9, %8 ]
  ret ptr %73
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @clock(ptr noundef %0, ptr noundef %1, ptr noundef %2, [2 x i32] %3, ptr nocapture noundef readnone %4) unnamed_addr #0 {
  %6 = icmp eq ptr %2, null
  %7 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  %8 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  %10 = select i1 %9, ptr @.str.60, ptr null
  %11 = select i1 %6, ptr @.str.59, ptr %10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %5
  %14 = extractvalue [2 x i32] %3, 1
  %15 = zext i32 %14 to i64
  %16 = shl nuw i64 %15, 32
  %17 = ashr i64 %16, 48
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %18, -1
  %20 = and i32 %14, 65535
  %21 = or i32 %20, 524288
  %22 = select i1 %19, i32 %21, i32 %14
  %23 = zext i32 %22 to i64
  %24 = shl nuw i64 %23, 32
  %25 = ashr i64 %24, 48
  %26 = trunc i64 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %40, %13
  %29 = phi i32 [ %33, %40 ], [ %26, %13 ]
  %30 = phi i32 [ %42, %40 ], [ 0, %13 ]
  %31 = phi ptr [ %34, %40 ], [ %11, %13 ]
  %32 = phi ptr [ %41, %40 ], [ %0, %13 ]
  %33 = add i32 %29, -1
  %34 = getelementptr i8, ptr %31, i32 1
  %35 = load i8, ptr %31, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %28
  %38 = icmp ult ptr %32, %1
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  store i8 %35, ptr %32, align 1
  br label %40

40:                                               ; preds = %39, %37
  %41 = getelementptr i8, ptr %32, i32 1
  %42 = add nuw i32 %30, 1
  %43 = icmp eq i32 %33, 0
  br i1 %43, label %44, label %28

44:                                               ; preds = %40, %28, %13
  %45 = phi ptr [ %0, %13 ], [ %41, %40 ], [ %32, %28 ]
  %46 = phi i32 [ 0, %13 ], [ %26, %40 ], [ %30, %28 ]
  %47 = insertvalue [2 x i32] %3, i32 %22, 1
  %48 = tail call fastcc ptr @widen_string(ptr noundef %45, i32 noundef %46, ptr noundef %1, [2 x i32] %47) #20
  br label %52

49:                                               ; preds = %5
  %50 = tail call ptr @__clk_get_name(ptr noundef %2) #20
  %51 = tail call fastcc ptr @string(ptr noundef %0, ptr noundef %1, ptr noundef %50, [2 x i32] %3)
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi ptr [ %48, %44 ], [ %51, %49 ]
  ret ptr %53
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @file_dentry_name(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, [2 x i32] %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = icmp eq ptr %2, null
  %7 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  %8 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  %10 = select i1 %9, ptr @.str.60, ptr null
  %11 = select i1 %6, ptr @.str.59, ptr %10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %5
  %14 = extractvalue [2 x i32] %3, 1
  %15 = zext i32 %14 to i64
  %16 = shl nuw i64 %15, 32
  %17 = ashr i64 %16, 48
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %18, -1
  %20 = and i32 %14, 65535
  %21 = or i32 %20, 524288
  %22 = select i1 %19, i32 %21, i32 %14
  %23 = zext i32 %22 to i64
  %24 = shl nuw i64 %23, 32
  %25 = ashr i64 %24, 48
  %26 = trunc i64 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %40, %13
  %29 = phi i32 [ %33, %40 ], [ %26, %13 ]
  %30 = phi i32 [ %42, %40 ], [ 0, %13 ]
  %31 = phi ptr [ %34, %40 ], [ %11, %13 ]
  %32 = phi ptr [ %41, %40 ], [ %0, %13 ]
  %33 = add i32 %29, -1
  %34 = getelementptr i8, ptr %31, i32 1
  %35 = load i8, ptr %31, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %28
  %38 = icmp ult ptr %32, %1
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  store i8 %35, ptr %32, align 1
  br label %40

40:                                               ; preds = %39, %37
  %41 = getelementptr i8, ptr %32, i32 1
  %42 = add nuw i32 %30, 1
  %43 = icmp eq i32 %33, 0
  br i1 %43, label %44, label %28

44:                                               ; preds = %40, %28, %13
  %45 = phi ptr [ %0, %13 ], [ %41, %40 ], [ %32, %28 ]
  %46 = phi i32 [ 0, %13 ], [ %26, %40 ], [ %30, %28 ]
  %47 = insertvalue [2 x i32] %3, i32 %22, 1
  %48 = tail call fastcc ptr @widen_string(ptr noundef %45, i32 noundef %46, ptr noundef %1, [2 x i32] %47) #20
  br label %53

49:                                               ; preds = %5
  %50 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 1, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = tail call fastcc ptr @dentry_name(ptr noundef %0, ptr noundef %1, ptr noundef %51, [2 x i32] %3, ptr noundef %4)
  br label %53

53:                                               ; preds = %49, %44
  %54 = phi ptr [ %48, %44 ], [ %52, %49 ]
  ret ptr %54
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @bdev_name(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, [2 x i32] %3) unnamed_addr #16 {
  %5 = icmp eq ptr %2, null
  %6 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  %7 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  %9 = select i1 %8, ptr @.str.60, ptr null
  %10 = select i1 %5, ptr @.str.59, ptr %9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %48, label %12

12:                                               ; preds = %4
  %13 = extractvalue [2 x i32] %3, 1
  %14 = zext i32 %13 to i64
  %15 = shl nuw i64 %14, 32
  %16 = ashr i64 %15, 48
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %17, -1
  %19 = and i32 %13, 65535
  %20 = or i32 %19, 524288
  %21 = select i1 %18, i32 %20, i32 %13
  %22 = zext i32 %21 to i64
  %23 = shl nuw i64 %22, 32
  %24 = ashr i64 %23, 48
  %25 = trunc i64 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %39, %12
  %28 = phi i32 [ %32, %39 ], [ %25, %12 ]
  %29 = phi i32 [ %41, %39 ], [ 0, %12 ]
  %30 = phi ptr [ %33, %39 ], [ %10, %12 ]
  %31 = phi ptr [ %40, %39 ], [ %0, %12 ]
  %32 = add i32 %28, -1
  %33 = getelementptr i8, ptr %30, i32 1
  %34 = load i8, ptr %30, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %27
  %37 = icmp ult ptr %31, %1
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  store i8 %34, ptr %31, align 1
  br label %39

39:                                               ; preds = %38, %36
  %40 = getelementptr i8, ptr %31, i32 1
  %41 = add nuw i32 %29, 1
  %42 = icmp eq i32 %32, 0
  br i1 %42, label %43, label %27

43:                                               ; preds = %39, %27, %12
  %44 = phi ptr [ %0, %12 ], [ %40, %39 ], [ %31, %27 ]
  %45 = phi i32 [ 0, %12 ], [ %25, %39 ], [ %29, %27 ]
  %46 = insertvalue [2 x i32] %3, i32 %21, 1
  %47 = tail call fastcc ptr @widen_string(ptr noundef %44, i32 noundef %45, ptr noundef %1, [2 x i32] %46) #20
  br label %76

48:                                               ; preds = %4
  %49 = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 17
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.gendisk, ptr %50, i32 0, i32 3
  %52 = tail call fastcc ptr @string(ptr noundef %0, ptr noundef %1, ptr noundef %51, [2 x i32] %3)
  %53 = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 15
  %54 = load i8, ptr %53, align 8
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %48
  %57 = tail call i32 @strlen(ptr noundef %51)
  %58 = add i32 %57, -1
  %59 = getelementptr %struct.gendisk, ptr %50, i32 0, i32 3, i32 %58
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = add nsw i32 %61, -58
  %63 = icmp ult i32 %62, -10
  br i1 %63, label %71, label %64

64:                                               ; preds = %56
  %65 = icmp ult ptr %52, %1
  br i1 %65, label %66, label %68

66:                                               ; preds = %64
  store i8 112, ptr %52, align 1
  %67 = load i8, ptr %53, align 8
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i8 [ %67, %66 ], [ %54, %64 ]
  %70 = getelementptr i8, ptr %52, i32 1
  br label %71

71:                                               ; preds = %68, %56
  %72 = phi i8 [ %54, %56 ], [ %69, %68 ]
  %73 = phi ptr [ %52, %56 ], [ %70, %68 ]
  %74 = zext i8 %72 to i64
  %75 = tail call fastcc ptr @number(ptr noundef %73, ptr noundef %1, i64 noundef %74, [2 x i32] %3)
  br label %76

76:                                               ; preds = %71, %48, %43
  %77 = phi ptr [ %52, %48 ], [ %75, %71 ], [ %47, %43 ]
  ret ptr %77
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @flags_string(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, [2 x i32] %3, ptr nocapture noundef readonly %4) unnamed_addr #10 {
  %6 = icmp eq ptr %2, null
  %7 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  %8 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  %10 = select i1 %9, ptr @.str.60, ptr null
  %11 = select i1 %6, ptr @.str.59, ptr %10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %5
  %14 = extractvalue [2 x i32] %3, 1
  %15 = zext i32 %14 to i64
  %16 = shl nuw i64 %15, 32
  %17 = ashr i64 %16, 48
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %18, -1
  %20 = and i32 %14, 65535
  %21 = or i32 %20, 524288
  %22 = select i1 %19, i32 %21, i32 %14
  %23 = zext i32 %22 to i64
  %24 = shl nuw i64 %23, 32
  %25 = ashr i64 %24, 48
  %26 = trunc i64 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %40, %13
  %29 = phi i32 [ %33, %40 ], [ %26, %13 ]
  %30 = phi i32 [ %42, %40 ], [ 0, %13 ]
  %31 = phi ptr [ %34, %40 ], [ %11, %13 ]
  %32 = phi ptr [ %41, %40 ], [ %0, %13 ]
  %33 = add i32 %29, -1
  %34 = getelementptr i8, ptr %31, i32 1
  %35 = load i8, ptr %31, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %28
  %38 = icmp ult ptr %32, %1
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  store i8 %35, ptr %32, align 1
  br label %40

40:                                               ; preds = %39, %37
  %41 = getelementptr i8, ptr %32, i32 1
  %42 = add nuw i32 %30, 1
  %43 = icmp eq i32 %33, 0
  br i1 %43, label %44, label %28

44:                                               ; preds = %40, %28, %13
  %45 = phi ptr [ %0, %13 ], [ %41, %40 ], [ %32, %28 ]
  %46 = phi i32 [ 0, %13 ], [ %26, %40 ], [ %30, %28 ]
  %47 = insertvalue [2 x i32] %3, i32 %22, 1
  %48 = tail call fastcc ptr @widen_string(ptr noundef %45, i32 noundef %46, ptr noundef %1, [2 x i32] %47) #20
  br label %243

49:                                               ; preds = %5
  %50 = getelementptr i8, ptr %4, i32 1
  %51 = load i8, ptr %50, align 1
  switch i8 %51, label %146 [
    i8 112, label %52
    i8 118, label %205
    i8 103, label %145
  ]

52:                                               ; preds = %49
  %53 = load i32, ptr %2, align 4
  %54 = and i32 %53, 4194303
  %55 = zext i32 %53 to i64
  %56 = tail call fastcc ptr @number(ptr noundef %0, ptr noundef %1, i64 noundef %55, [2 x i32] [i32 0, i32 -61344]) #20
  %57 = icmp ult ptr %56, %1
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i8 40, ptr %56, align 1
  br label %59

59:                                               ; preds = %58, %52
  %60 = getelementptr i8, ptr %56, i32 1
  %61 = icmp eq i32 %54, 0
  br i1 %61, label %95, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr getelementptr inbounds ([0 x %struct.trace_print_flags], ptr @pageflag_names, i32 0, i32 0, i32 1), align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %90, label %65

65:                                               ; preds = %83, %62
  %66 = phi ptr [ %88, %83 ], [ %63, %62 ]
  %67 = phi ptr [ %84, %83 ], [ %60, %62 ]
  %68 = phi i32 [ %85, %83 ], [ %54, %62 ]
  %69 = phi ptr [ %86, %83 ], [ @pageflag_names, %62 ]
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, %68
  %72 = icmp eq i32 %71, %70
  br i1 %72, label %73, label %83

73:                                               ; preds = %65
  %74 = tail call fastcc ptr @string(ptr noundef %67, ptr noundef %1, ptr noundef nonnull %66, [2 x i32] [i32 -256, i32 -65536]) #20
  %75 = xor i32 %70, -1
  %76 = and i32 %68, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %95, label %78

78:                                               ; preds = %73
  %79 = icmp ult ptr %74, %1
  br i1 %79, label %80, label %81

80:                                               ; preds = %78
  store i8 124, ptr %74, align 1
  br label %81

81:                                               ; preds = %80, %78
  %82 = getelementptr i8, ptr %74, i32 1
  br label %83

83:                                               ; preds = %81, %65
  %84 = phi ptr [ %67, %65 ], [ %82, %81 ]
  %85 = phi i32 [ %68, %65 ], [ %76, %81 ]
  %86 = getelementptr %struct.trace_print_flags, ptr %69, i32 1
  %87 = getelementptr %struct.trace_print_flags, ptr %69, i32 1, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %65

90:                                               ; preds = %83, %62
  %91 = phi i32 [ %54, %62 ], [ %85, %83 ]
  %92 = phi ptr [ %60, %62 ], [ %84, %83 ]
  %93 = zext i32 %91 to i64
  %94 = tail call fastcc ptr @number(ptr noundef %92, ptr noundef %1, i64 noundef %93, [2 x i32] [i32 0, i32 -61344]) #20
  br label %95

95:                                               ; preds = %90, %73, %59
  %96 = phi ptr [ %60, %59 ], [ %94, %90 ], [ %74, %73 ]
  %97 = xor i1 %61, true
  br label %98

98:                                               ; preds = %135, %95
  %99 = phi i32 [ 0, %95 ], [ %138, %135 ]
  %100 = phi i1 [ %97, %95 ], [ %137, %135 ]
  %101 = phi ptr [ %96, %95 ], [ %136, %135 ]
  %102 = getelementptr [5 x %struct.page_flags_fields], ptr @pff, i32 0, i32 %99
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %135, label %105

105:                                              ; preds = %98
  br i1 %100, label %106, label %111

106:                                              ; preds = %105
  %107 = icmp ult ptr %101, %1
  br i1 %107, label %108, label %109

108:                                              ; preds = %106
  store i8 124, ptr %101, align 1
  br label %109

109:                                              ; preds = %108, %106
  %110 = getelementptr i8, ptr %101, i32 1
  br label %111

111:                                              ; preds = %109, %105
  %112 = phi ptr [ %110, %109 ], [ %101, %105 ]
  %113 = getelementptr [5 x %struct.page_flags_fields], ptr @pff, i32 0, i32 %99, i32 4
  %114 = load ptr, ptr %113, align 4
  %115 = tail call fastcc ptr @string(ptr noundef %112, ptr noundef %1, ptr noundef %114, [2 x i32] [i32 -256, i32 -65536]) #20
  %116 = icmp ult ptr %115, %1
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  store i8 61, ptr %115, align 1
  br label %118

118:                                              ; preds = %117, %111
  %119 = getelementptr i8, ptr %115, i32 1
  %120 = getelementptr [5 x %struct.page_flags_fields], ptr @pff, i32 0, i32 %99, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = lshr i32 %53, %121
  %123 = getelementptr [5 x %struct.page_flags_fields], ptr @pff, i32 0, i32 %99, i32 2
  %124 = load i32, ptr %123, align 4
  %125 = and i32 %122, %124
  %126 = zext i32 %125 to i64
  %127 = getelementptr [5 x %struct.page_flags_fields], ptr @pff, i32 0, i32 %99, i32 3
  %128 = load ptr, ptr %127, align 4
  %129 = load i32, ptr %128, align 1
  %130 = insertvalue [2 x i32] undef, i32 %129, 0
  %131 = getelementptr inbounds [2 x i32], ptr %128, i32 0, i32 1
  %132 = load i32, ptr %131, align 1
  %133 = insertvalue [2 x i32] %130, i32 %132, 1
  %134 = tail call fastcc ptr @number(ptr noundef %119, ptr noundef %1, i64 noundef %126, [2 x i32] %133) #20
  br label %135

135:                                              ; preds = %118, %98
  %136 = phi ptr [ %134, %118 ], [ %101, %98 ]
  %137 = phi i1 [ true, %118 ], [ %100, %98 ]
  %138 = add nuw nsw i32 %99, 1
  %139 = icmp eq i32 %138, 5
  br i1 %139, label %140, label %98

140:                                              ; preds = %135
  %141 = icmp ult ptr %136, %1
  br i1 %141, label %142, label %143

142:                                              ; preds = %140
  store i8 41, ptr %136, align 1
  br label %143

143:                                              ; preds = %142, %140
  %144 = getelementptr i8, ptr %136, i32 1
  br label %243

145:                                              ; preds = %49
  br label %205

146:                                              ; preds = %49
  %147 = extractvalue [2 x i32] %3, 1
  %148 = zext i32 %147 to i64
  %149 = shl nuw i64 %148, 32
  %150 = ashr i64 %149, 48
  %151 = trunc i64 %150 to i32
  %152 = icmp eq i32 %151, -1
  %153 = and i32 %147, 65535
  %154 = or i32 %153, 524288
  %155 = select i1 %152, i32 %154, i32 %147
  %156 = zext i32 %155 to i64
  %157 = shl nuw i64 %156, 32
  %158 = ashr i64 %157, 48
  %159 = trunc i64 %158 to i32
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %200, label %161

161:                                              ; preds = %146
  %162 = add nsw i32 %159, -1
  %163 = call i32 @llvm.umin.i32(i32 %162, i32 6)
  %164 = icmp ult ptr %0, %1
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  store i8 40, ptr %0, align 1
  br label %166

166:                                              ; preds = %165, %161
  %167 = getelementptr i8, ptr %0, i32 1
  %168 = icmp eq i32 %162, 0
  br i1 %168, label %200, label %169

169:                                              ; preds = %166
  %170 = icmp ult ptr %167, %1
  br i1 %170, label %171, label %172

171:                                              ; preds = %169
  store i8 37, ptr %167, align 1
  br label %172

172:                                              ; preds = %171, %169
  %173 = getelementptr i8, ptr %0, i32 2
  %174 = icmp eq i32 %159, 2
  br i1 %174, label %200, label %175

175:                                              ; preds = %172
  %176 = icmp ult ptr %173, %1
  br i1 %176, label %177, label %178

177:                                              ; preds = %175
  store i8 112, ptr %173, align 1
  br label %178

178:                                              ; preds = %177, %175
  %179 = getelementptr i8, ptr %0, i32 3
  %180 = icmp eq i32 %159, 3
  br i1 %180, label %200, label %181

181:                                              ; preds = %178
  %182 = icmp ult ptr %179, %1
  br i1 %182, label %183, label %184

183:                                              ; preds = %181
  store i8 71, ptr %179, align 1
  br label %184

184:                                              ; preds = %183, %181
  %185 = getelementptr i8, ptr %0, i32 4
  %186 = icmp eq i32 %159, 4
  br i1 %186, label %200, label %187

187:                                              ; preds = %184
  %188 = icmp ult ptr %185, %1
  br i1 %188, label %189, label %190

189:                                              ; preds = %187
  store i8 63, ptr %185, align 1
  br label %190

190:                                              ; preds = %189, %187
  %191 = getelementptr i8, ptr %0, i32 5
  %192 = icmp eq i32 %159, 5
  br i1 %192, label %200, label %193

193:                                              ; preds = %190
  %194 = icmp ult ptr %191, %1
  br i1 %194, label %195, label %196

195:                                              ; preds = %193
  store i8 41, ptr %191, align 1
  br label %196

196:                                              ; preds = %195, %193
  %197 = getelementptr i8, ptr %0, i32 6
  %198 = icmp eq i32 %159, 6
  %199 = select i1 %198, i32 6, i32 %163
  br label %200

200:                                              ; preds = %196, %190, %184, %178, %172, %166, %146
  %201 = phi ptr [ %0, %146 ], [ %167, %166 ], [ %173, %172 ], [ %179, %178 ], [ %185, %184 ], [ %191, %190 ], [ %197, %196 ]
  %202 = phi i32 [ 0, %146 ], [ 1, %166 ], [ 2, %172 ], [ 3, %178 ], [ 4, %184 ], [ 5, %190 ], [ %199, %196 ]
  %203 = insertvalue [2 x i32] %3, i32 %155, 1
  %204 = tail call fastcc ptr @widen_string(ptr noundef %201, i32 noundef %202, ptr noundef %1, [2 x i32] %203) #20
  br label %243

205:                                              ; preds = %145, %49
  %206 = phi ptr [ @gfpflag_names, %145 ], [ @vmaflag_names, %49 ]
  %207 = load i32, ptr %2, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %243, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.trace_print_flags, ptr %206, i32 0, i32 1
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %238, label %213

213:                                              ; preds = %231, %209
  %214 = phi ptr [ %236, %231 ], [ %211, %209 ]
  %215 = phi ptr [ %232, %231 ], [ %0, %209 ]
  %216 = phi i32 [ %233, %231 ], [ %207, %209 ]
  %217 = phi ptr [ %234, %231 ], [ %206, %209 ]
  %218 = load i32, ptr %217, align 4
  %219 = and i32 %218, %216
  %220 = icmp eq i32 %219, %218
  br i1 %220, label %221, label %231

221:                                              ; preds = %213
  %222 = tail call fastcc ptr @string(ptr noundef %215, ptr noundef %1, ptr noundef nonnull %214, [2 x i32] [i32 -256, i32 -65536]) #20
  %223 = xor i32 %218, -1
  %224 = and i32 %216, %223
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %243, label %226

226:                                              ; preds = %221
  %227 = icmp ult ptr %222, %1
  br i1 %227, label %228, label %229

228:                                              ; preds = %226
  store i8 124, ptr %222, align 1
  br label %229

229:                                              ; preds = %228, %226
  %230 = getelementptr i8, ptr %222, i32 1
  br label %231

231:                                              ; preds = %229, %213
  %232 = phi ptr [ %215, %213 ], [ %230, %229 ]
  %233 = phi i32 [ %216, %213 ], [ %224, %229 ]
  %234 = getelementptr %struct.trace_print_flags, ptr %217, i32 1
  %235 = getelementptr %struct.trace_print_flags, ptr %217, i32 1, i32 1
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %213

238:                                              ; preds = %231, %209
  %239 = phi i32 [ %207, %209 ], [ %233, %231 ]
  %240 = phi ptr [ %0, %209 ], [ %232, %231 ]
  %241 = zext i32 %239 to i64
  %242 = tail call fastcc ptr @number(ptr noundef %240, ptr noundef %1, i64 noundef %241, [2 x i32] [i32 0, i32 -61344]) #20
  br label %243

243:                                              ; preds = %238, %221, %205, %200, %143, %44
  %244 = phi ptr [ %48, %44 ], [ %204, %200 ], [ %144, %143 ], [ %242, %238 ], [ %0, %205 ], [ %222, %221 ]
  ret ptr %244
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @device_node_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, [2 x i32] %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca [6 x i8], align 1
  %7 = alloca ptr, align 4
  %8 = extractvalue [2 x i32] %3, 0
  %9 = extractvalue [2 x i32] %3, 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i32 6, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  store ptr null, ptr %7, align 4, !annotation !8
  %10 = or i32 %8, -256
  %11 = load i8, ptr %4, align 1
  %12 = icmp eq i8 %11, 70
  br i1 %12, label %71, label %13

13:                                               ; preds = %5
  %14 = zext i32 %9 to i64
  %15 = shl nuw i64 %14, 32
  %16 = ashr i64 %15, 48
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %17, -1
  %19 = and i32 %9, 65535
  %20 = or i32 %19, 524288
  %21 = select i1 %18, i32 %20, i32 %9
  %22 = zext i32 %21 to i64
  %23 = shl nuw i64 %22, 32
  %24 = ashr i64 %23, 48
  %25 = trunc i64 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %66, label %27

27:                                               ; preds = %13
  %28 = add nsw i32 %25, -1
  %29 = call i32 @llvm.umin.i32(i32 %28, i32 6)
  %30 = icmp ult ptr %0, %1
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i8 40, ptr %0, align 1
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr i8, ptr %0, i32 1
  %34 = icmp eq i32 %28, 0
  br i1 %34, label %66, label %35

35:                                               ; preds = %32
  %36 = icmp ult ptr %33, %1
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  store i8 37, ptr %33, align 1
  br label %38

38:                                               ; preds = %37, %35
  %39 = getelementptr i8, ptr %0, i32 2
  %40 = icmp eq i32 %25, 2
  br i1 %40, label %66, label %41

41:                                               ; preds = %38
  %42 = icmp ult ptr %39, %1
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  store i8 112, ptr %39, align 1
  br label %44

44:                                               ; preds = %43, %41
  %45 = getelementptr i8, ptr %0, i32 3
  %46 = icmp eq i32 %25, 3
  br i1 %46, label %66, label %47

47:                                               ; preds = %44
  %48 = icmp ult ptr %45, %1
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  store i8 79, ptr %45, align 1
  br label %50

50:                                               ; preds = %49, %47
  %51 = getelementptr i8, ptr %0, i32 4
  %52 = icmp eq i32 %25, 4
  br i1 %52, label %66, label %53

53:                                               ; preds = %50
  %54 = icmp ult ptr %51, %1
  br i1 %54, label %55, label %56

55:                                               ; preds = %53
  store i8 63, ptr %51, align 1
  br label %56

56:                                               ; preds = %55, %53
  %57 = getelementptr i8, ptr %0, i32 5
  %58 = icmp eq i32 %25, 5
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = icmp ult ptr %57, %1
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  store i8 41, ptr %57, align 1
  br label %62

62:                                               ; preds = %61, %59
  %63 = getelementptr i8, ptr %0, i32 6
  %64 = icmp eq i32 %25, 6
  %65 = select i1 %64, i32 6, i32 %29
  br label %66

66:                                               ; preds = %62, %56, %50, %44, %38, %32, %13
  %67 = phi ptr [ %0, %13 ], [ %33, %32 ], [ %39, %38 ], [ %45, %44 ], [ %51, %50 ], [ %57, %56 ], [ %63, %62 ]
  %68 = phi i32 [ 0, %13 ], [ 1, %32 ], [ 2, %38 ], [ 3, %44 ], [ 4, %50 ], [ 5, %56 ], [ %65, %62 ]
  %69 = insertvalue [2 x i32] %3, i32 %21, 1
  %70 = tail call fastcc ptr @widen_string(ptr noundef %67, i32 noundef %68, ptr noundef %1, [2 x i32] %69) #20
  br label %310

71:                                               ; preds = %5
  %72 = icmp eq ptr %2, null
  %73 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  %74 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %75 = or i1 %73, %74
  %76 = select i1 %75, ptr @.str.60, ptr null
  %77 = select i1 %72, ptr @.str.59, ptr %76
  %78 = icmp eq ptr %77, null
  br i1 %78, label %114, label %79

79:                                               ; preds = %71
  %80 = zext i32 %9 to i64
  %81 = shl nuw i64 %80, 32
  %82 = ashr i64 %81, 48
  %83 = trunc i64 %82 to i32
  %84 = icmp eq i32 %83, -1
  %85 = and i32 %9, 65535
  %86 = or i32 %85, 524288
  %87 = select i1 %84, i32 %86, i32 %9
  %88 = zext i32 %87 to i64
  %89 = shl nuw i64 %88, 32
  %90 = ashr i64 %89, 48
  %91 = trunc i64 %90 to i32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %109, label %93

93:                                               ; preds = %105, %79
  %94 = phi i32 [ %98, %105 ], [ %91, %79 ]
  %95 = phi i32 [ %107, %105 ], [ 0, %79 ]
  %96 = phi ptr [ %99, %105 ], [ %77, %79 ]
  %97 = phi ptr [ %106, %105 ], [ %0, %79 ]
  %98 = add i32 %94, -1
  %99 = getelementptr i8, ptr %96, i32 1
  %100 = load i8, ptr %96, align 1
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %93
  %103 = icmp ult ptr %97, %1
  br i1 %103, label %104, label %105

104:                                              ; preds = %102
  store i8 %100, ptr %97, align 1
  br label %105

105:                                              ; preds = %104, %102
  %106 = getelementptr i8, ptr %97, i32 1
  %107 = add nuw i32 %95, 1
  %108 = icmp eq i32 %98, 0
  br i1 %108, label %109, label %93

109:                                              ; preds = %105, %93, %79
  %110 = phi ptr [ %0, %79 ], [ %106, %105 ], [ %97, %93 ]
  %111 = phi i32 [ 0, %79 ], [ %91, %105 ], [ %95, %93 ]
  %112 = insertvalue [2 x i32] %3, i32 %87, 1
  %113 = tail call fastcc ptr @widen_string(ptr noundef %110, i32 noundef %111, ptr noundef %1, [2 x i32] %112) #20
  br label %310

114:                                              ; preds = %71
  %115 = getelementptr i8, ptr %4, i32 1
  %116 = load i8, ptr %115, align 1
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = tail call i32 @strcspn(ptr noundef %115, ptr noundef nonnull @.str.51)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %118, %114
  br label %122

122:                                              ; preds = %121, %118
  %123 = phi ptr [ @.str.52, %121 ], [ %115, %118 ]
  %124 = call i32 @strspn(ptr noundef %123, ptr noundef nonnull @.str.51)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %304, label %126

126:                                              ; preds = %122
  %127 = insertvalue [2 x i32] poison, i32 %10, 0
  %128 = insertvalue [2 x i32] %127, i32 %9, 1
  %129 = zext i32 %9 to i64
  %130 = shl nuw i64 %129, 32
  %131 = ashr i64 %130, 48
  %132 = trunc i64 %131 to i32
  %133 = icmp eq i32 %132, 0
  %134 = getelementptr inbounds %struct.device_node, ptr %2, i32 0, i32 10
  %135 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 1
  %136 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 2
  %137 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 3
  %138 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 4
  %139 = getelementptr inbounds %struct.device_node, ptr %2, i32 0, i32 3
  %140 = select i1 %72, ptr null, ptr %139
  %141 = getelementptr inbounds %struct.device_node, ptr %2, i32 0, i32 1
  %142 = and i64 %130, 281470681743360
  %143 = add nsw i32 %132, -1
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = icmp eq i32 %143, 0
  %147 = icmp eq i32 %143, 0
  %148 = icmp eq i32 %143, 0
  %149 = select i1 %147, i32 1, i32 %145
  %150 = select i1 %148, i32 1, i32 %145
  %151 = select i1 %146, i32 1, i32 %145
  %152 = select i1 %147, i32 1, i32 %145
  %153 = select i1 %148, i32 1, i32 %145
  br label %154

154:                                              ; preds = %299, %126
  %155 = phi ptr [ %123, %126 ], [ %301, %299 ]
  %156 = phi i1 [ false, %126 ], [ true, %299 ]
  %157 = phi ptr [ %0, %126 ], [ %300, %299 ]
  br i1 %156, label %158, label %163

158:                                              ; preds = %154
  %159 = icmp ult ptr %157, %1
  br i1 %159, label %160, label %161

160:                                              ; preds = %158
  store i8 58, ptr %157, align 1
  br label %161

161:                                              ; preds = %160, %158
  %162 = getelementptr i8, ptr %157, i32 1
  br label %163

163:                                              ; preds = %161, %154
  %164 = phi ptr [ %162, %161 ], [ %157, %154 ]
  %165 = load i8, ptr %155, align 1
  switch i8 %165, label %299 [
    i8 102, label %166
    i8 110, label %168
    i8 112, label %182
    i8 80, label %186
    i8 70, label %193
    i8 99, label %231
    i8 67, label %237
  ]

166:                                              ; preds = %163
  %167 = call fastcc ptr @fwnode_full_name_string(ptr noundef %140, ptr noundef %164, ptr noundef %1)
  br label %299

168:                                              ; preds = %163
  %169 = call ptr @fwnode_get_name(ptr noundef %140) #20
  store ptr %169, ptr %7, align 4
  %170 = call ptr @strchrnul(ptr noundef %169, i32 noundef 64) #20
  %171 = load ptr, ptr %7, align 4
  %172 = ptrtoint ptr %170 to i32
  %173 = ptrtoint ptr %171 to i32
  %174 = sub i32 %172, %173
  %175 = zext i32 %174 to i64
  %176 = shl i64 %175, 48
  %177 = or i64 %176, %142
  %178 = lshr exact i64 %177, 32
  %179 = trunc i64 %178 to i32
  %180 = insertvalue [2 x i32] %127, i32 %179, 1
  %181 = call fastcc ptr @string(ptr noundef %164, ptr noundef %1, ptr noundef %171, [2 x i32] %180)
  br label %299

182:                                              ; preds = %163
  %183 = load i32, ptr %141, align 4
  %184 = zext i32 %183 to i64
  %185 = call fastcc ptr @number(ptr noundef %164, ptr noundef %1, i64 noundef %184, [2 x i32] [i32 0, i32 -62976])
  br label %299

186:                                              ; preds = %163
  %187 = call ptr @fwnode_get_name(ptr noundef %140) #20
  store ptr %187, ptr %7, align 4
  %188 = getelementptr i8, ptr %187, i32 1
  %189 = load i8, ptr %188, align 1
  %190 = icmp eq i8 %189, 0
  %191 = select i1 %190, ptr @.str.53, ptr %187
  store ptr %191, ptr %7, align 4
  %192 = call fastcc ptr @string(ptr noundef %164, ptr noundef %1, ptr noundef %191, [2 x i32] %128)
  br label %299

193:                                              ; preds = %163
  %194 = load volatile i32, ptr %134, align 4
  %195 = and i32 %194, 2
  %196 = icmp eq i32 %195, 0
  %197 = select i1 %196, i8 45, i8 68
  store i8 %197, ptr %6, align 1
  %198 = load volatile i32, ptr %134, align 4
  %199 = and i32 %198, 4
  %200 = icmp eq i32 %199, 0
  %201 = select i1 %200, i8 45, i8 100
  store i8 %201, ptr %135, align 1
  %202 = load volatile i32, ptr %134, align 4
  %203 = and i32 %202, 8
  %204 = icmp eq i32 %203, 0
  %205 = select i1 %204, i8 45, i8 80
  store i8 %205, ptr %136, align 1
  %206 = load volatile i32, ptr %134, align 4
  %207 = and i32 %206, 16
  %208 = icmp eq i32 %207, 0
  %209 = select i1 %208, i8 45, i8 66
  store i8 %209, ptr %137, align 1
  store i8 0, ptr %138, align 1
  br i1 %133, label %227, label %210

210:                                              ; preds = %223, %193
  %211 = phi ptr [ %217, %223 ], [ %6, %193 ]
  %212 = phi i32 [ %216, %223 ], [ %132, %193 ]
  %213 = phi ptr [ %221, %223 ], [ %164, %193 ]
  %214 = phi i32 [ %224, %223 ], [ 0, %193 ]
  %215 = phi i8 [ %225, %223 ], [ %197, %193 ]
  %216 = add i32 %212, -1
  %217 = getelementptr i8, ptr %211, i32 1
  %218 = icmp ult ptr %213, %1
  br i1 %218, label %219, label %220

219:                                              ; preds = %210
  store i8 %215, ptr %213, align 1
  br label %220

220:                                              ; preds = %219, %210
  %221 = getelementptr i8, ptr %213, i32 1
  %222 = icmp eq i32 %216, 0
  br i1 %222, label %227, label %223

223:                                              ; preds = %220
  %224 = add nuw i32 %214, 1
  %225 = load i8, ptr %217, align 1
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %227, label %210

227:                                              ; preds = %223, %220, %193
  %228 = phi ptr [ %164, %193 ], [ %221, %220 ], [ %221, %223 ]
  %229 = phi i32 [ 0, %193 ], [ %224, %223 ], [ %132, %220 ]
  %230 = call fastcc ptr @widen_string(ptr noundef %228, i32 noundef %229, ptr noundef %1, [2 x i32] %128) #20
  br label %299

231:                                              ; preds = %163
  %232 = call i32 @of_property_read_string(ptr noundef %2, ptr noundef nonnull @.str.54, ptr noundef nonnull %7) #20
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %299

234:                                              ; preds = %231
  %235 = load ptr, ptr %7, align 4
  %236 = call fastcc ptr @string(ptr noundef %164, ptr noundef %1, ptr noundef %235, [2 x i32] %128)
  br label %299

237:                                              ; preds = %163
  %238 = call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.54, ptr noundef null) #20
  %239 = call ptr @of_prop_next_string(ptr noundef %238, ptr noundef null) #20
  store ptr %239, ptr %7, align 4
  %240 = icmp eq ptr %239, null
  br i1 %240, label %299, label %241

241:                                              ; preds = %237
  br i1 %133, label %247, label %242

242:                                              ; preds = %241
  %243 = icmp ult ptr %164, %1
  br i1 %243, label %244, label %245

244:                                              ; preds = %242
  store i8 34, ptr %164, align 1
  br label %245

245:                                              ; preds = %244, %242
  %246 = getelementptr i8, ptr %164, i32 1
  br label %247

247:                                              ; preds = %245, %241
  %248 = phi ptr [ %164, %241 ], [ %246, %245 ]
  %249 = phi i32 [ 0, %241 ], [ %149, %245 ]
  %250 = call fastcc ptr @widen_string(ptr noundef %248, i32 noundef %249, ptr noundef %1, [2 x i32] %128) #20
  %251 = load ptr, ptr %7, align 4
  %252 = call fastcc ptr @string(ptr noundef %250, ptr noundef %1, ptr noundef %251, [2 x i32] %128)
  br i1 %133, label %258, label %253

253:                                              ; preds = %247
  %254 = icmp ult ptr %252, %1
  br i1 %254, label %255, label %256

255:                                              ; preds = %253
  store i8 34, ptr %252, align 1
  br label %256

256:                                              ; preds = %255, %253
  %257 = getelementptr i8, ptr %252, i32 1
  br label %258

258:                                              ; preds = %256, %247
  %259 = phi ptr [ %252, %247 ], [ %257, %256 ]
  %260 = phi i32 [ 0, %247 ], [ %150, %256 ]
  %261 = call fastcc ptr @widen_string(ptr noundef %259, i32 noundef %260, ptr noundef %1, [2 x i32] %128) #20
  %262 = load ptr, ptr %7, align 4
  %263 = call ptr @of_prop_next_string(ptr noundef %238, ptr noundef %262) #20
  store ptr %263, ptr %7, align 4
  %264 = icmp eq ptr %263, null
  br i1 %264, label %299, label %265

265:                                              ; preds = %292, %258
  %266 = phi ptr [ %295, %292 ], [ %261, %258 ]
  br i1 %133, label %272, label %267

267:                                              ; preds = %265
  %268 = icmp ult ptr %266, %1
  br i1 %268, label %269, label %270

269:                                              ; preds = %267
  store i8 44, ptr %266, align 1
  br label %270

270:                                              ; preds = %269, %267
  %271 = getelementptr i8, ptr %266, i32 1
  br label %272

272:                                              ; preds = %270, %265
  %273 = phi ptr [ %266, %265 ], [ %271, %270 ]
  %274 = phi i32 [ 0, %265 ], [ %151, %270 ]
  %275 = call fastcc ptr @widen_string(ptr noundef %273, i32 noundef %274, ptr noundef %1, [2 x i32] %128) #20
  br i1 %133, label %281, label %276

276:                                              ; preds = %272
  %277 = icmp ult ptr %275, %1
  br i1 %277, label %278, label %279

278:                                              ; preds = %276
  store i8 34, ptr %275, align 1
  br label %279

279:                                              ; preds = %278, %276
  %280 = getelementptr i8, ptr %275, i32 1
  br label %281

281:                                              ; preds = %279, %272
  %282 = phi ptr [ %275, %272 ], [ %280, %279 ]
  %283 = phi i32 [ 0, %272 ], [ %152, %279 ]
  %284 = call fastcc ptr @widen_string(ptr noundef %282, i32 noundef %283, ptr noundef %1, [2 x i32] %128) #20
  %285 = load ptr, ptr %7, align 4
  %286 = call fastcc ptr @string(ptr noundef %284, ptr noundef %1, ptr noundef %285, [2 x i32] %128)
  br i1 %133, label %292, label %287

287:                                              ; preds = %281
  %288 = icmp ult ptr %286, %1
  br i1 %288, label %289, label %290

289:                                              ; preds = %287
  store i8 34, ptr %286, align 1
  br label %290

290:                                              ; preds = %289, %287
  %291 = getelementptr i8, ptr %286, i32 1
  br label %292

292:                                              ; preds = %290, %281
  %293 = phi ptr [ %286, %281 ], [ %291, %290 ]
  %294 = phi i32 [ 0, %281 ], [ %153, %290 ]
  %295 = call fastcc ptr @widen_string(ptr noundef %293, i32 noundef %294, ptr noundef %1, [2 x i32] %128) #20
  %296 = load ptr, ptr %7, align 4
  %297 = call ptr @of_prop_next_string(ptr noundef %238, ptr noundef %296) #20
  store ptr %297, ptr %7, align 4
  %298 = icmp eq ptr %297, null
  br i1 %298, label %299, label %265, !llvm.loop !17

299:                                              ; preds = %292, %258, %237, %234, %231, %227, %186, %182, %168, %166, %163
  %300 = phi ptr [ %164, %163 ], [ %236, %234 ], [ %164, %231 ], [ %230, %227 ], [ %192, %186 ], [ %185, %182 ], [ %181, %168 ], [ %167, %166 ], [ %164, %237 ], [ %261, %258 ], [ %295, %292 ]
  %301 = getelementptr i8, ptr %155, i32 1
  %302 = call i32 @strspn(ptr noundef %301, ptr noundef nonnull @.str.51)
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %154

304:                                              ; preds = %299, %122
  %305 = phi ptr [ %0, %122 ], [ %300, %299 ]
  %306 = ptrtoint ptr %305 to i32
  %307 = ptrtoint ptr %0 to i32
  %308 = sub i32 %306, %307
  %309 = call fastcc ptr @widen_string(ptr noundef %305, i32 noundef %308, ptr noundef %1, [2 x i32] %3)
  br label %310

310:                                              ; preds = %304, %109, %66
  %311 = phi ptr [ %70, %66 ], [ %113, %109 ], [ %309, %304 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #20
  ret ptr %311
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @fwnode_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, [2 x i32] %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = extractvalue [2 x i32] %3, 0
  %7 = extractvalue [2 x i32] %3, 1
  %8 = or i32 %6, -256
  %9 = load i8, ptr %4, align 1
  %10 = icmp eq i8 %9, 119
  br i1 %10, label %69, label %11

11:                                               ; preds = %5
  %12 = zext i32 %7 to i64
  %13 = shl nuw i64 %12, 32
  %14 = ashr i64 %13, 48
  %15 = trunc i64 %14 to i32
  %16 = icmp eq i32 %15, -1
  %17 = and i32 %7, 65535
  %18 = or i32 %17, 524288
  %19 = select i1 %16, i32 %18, i32 %7
  %20 = zext i32 %19 to i64
  %21 = shl nuw i64 %20, 32
  %22 = ashr i64 %21, 48
  %23 = trunc i64 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %64, label %25

25:                                               ; preds = %11
  %26 = add nsw i32 %23, -1
  %27 = call i32 @llvm.umin.i32(i32 %26, i32 6)
  %28 = icmp ult ptr %0, %1
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i8 40, ptr %0, align 1
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr i8, ptr %0, i32 1
  %32 = icmp eq i32 %26, 0
  br i1 %32, label %64, label %33

33:                                               ; preds = %30
  %34 = icmp ult ptr %31, %1
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  store i8 37, ptr %31, align 1
  br label %36

36:                                               ; preds = %35, %33
  %37 = getelementptr i8, ptr %0, i32 2
  %38 = icmp eq i32 %23, 2
  br i1 %38, label %64, label %39

39:                                               ; preds = %36
  %40 = icmp ult ptr %37, %1
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  store i8 112, ptr %37, align 1
  br label %42

42:                                               ; preds = %41, %39
  %43 = getelementptr i8, ptr %0, i32 3
  %44 = icmp eq i32 %23, 3
  br i1 %44, label %64, label %45

45:                                               ; preds = %42
  %46 = icmp ult ptr %43, %1
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  store i8 102, ptr %43, align 1
  br label %48

48:                                               ; preds = %47, %45
  %49 = getelementptr i8, ptr %0, i32 4
  %50 = icmp eq i32 %23, 4
  br i1 %50, label %64, label %51

51:                                               ; preds = %48
  %52 = icmp ult ptr %49, %1
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  store i8 63, ptr %49, align 1
  br label %54

54:                                               ; preds = %53, %51
  %55 = getelementptr i8, ptr %0, i32 5
  %56 = icmp eq i32 %23, 5
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = icmp ult ptr %55, %1
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  store i8 41, ptr %55, align 1
  br label %60

60:                                               ; preds = %59, %57
  %61 = getelementptr i8, ptr %0, i32 6
  %62 = icmp eq i32 %23, 6
  %63 = select i1 %62, i32 6, i32 %27
  br label %64

64:                                               ; preds = %60, %54, %48, %42, %36, %30, %11
  %65 = phi ptr [ %0, %11 ], [ %31, %30 ], [ %37, %36 ], [ %43, %42 ], [ %49, %48 ], [ %55, %54 ], [ %61, %60 ]
  %66 = phi i32 [ 0, %11 ], [ 1, %30 ], [ 2, %36 ], [ 3, %42 ], [ 4, %48 ], [ 5, %54 ], [ %63, %60 ]
  %67 = insertvalue [2 x i32] %3, i32 %19, 1
  %68 = tail call fastcc ptr @widen_string(ptr noundef %65, i32 noundef %66, ptr noundef %1, [2 x i32] %67) #20
  br label %129

69:                                               ; preds = %5
  %70 = icmp eq ptr %2, null
  %71 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  %72 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %73 = or i1 %71, %72
  %74 = select i1 %73, ptr @.str.60, ptr null
  %75 = select i1 %70, ptr @.str.59, ptr %74
  %76 = icmp eq ptr %75, null
  br i1 %76, label %112, label %77

77:                                               ; preds = %69
  %78 = zext i32 %7 to i64
  %79 = shl nuw i64 %78, 32
  %80 = ashr i64 %79, 48
  %81 = trunc i64 %80 to i32
  %82 = icmp eq i32 %81, -1
  %83 = and i32 %7, 65535
  %84 = or i32 %83, 524288
  %85 = select i1 %82, i32 %84, i32 %7
  %86 = zext i32 %85 to i64
  %87 = shl nuw i64 %86, 32
  %88 = ashr i64 %87, 48
  %89 = trunc i64 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %103, %77
  %92 = phi i32 [ %96, %103 ], [ %89, %77 ]
  %93 = phi i32 [ %105, %103 ], [ 0, %77 ]
  %94 = phi ptr [ %97, %103 ], [ %75, %77 ]
  %95 = phi ptr [ %104, %103 ], [ %0, %77 ]
  %96 = add i32 %92, -1
  %97 = getelementptr i8, ptr %94, i32 1
  %98 = load i8, ptr %94, align 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %91
  %101 = icmp ult ptr %95, %1
  br i1 %101, label %102, label %103

102:                                              ; preds = %100
  store i8 %98, ptr %95, align 1
  br label %103

103:                                              ; preds = %102, %100
  %104 = getelementptr i8, ptr %95, i32 1
  %105 = add nuw i32 %93, 1
  %106 = icmp eq i32 %96, 0
  br i1 %106, label %107, label %91

107:                                              ; preds = %103, %91, %77
  %108 = phi ptr [ %0, %77 ], [ %104, %103 ], [ %95, %91 ]
  %109 = phi i32 [ 0, %77 ], [ %89, %103 ], [ %93, %91 ]
  %110 = insertvalue [2 x i32] %3, i32 %85, 1
  %111 = tail call fastcc ptr @widen_string(ptr noundef %108, i32 noundef %109, ptr noundef %1, [2 x i32] %110) #20
  br label %129

112:                                              ; preds = %69
  %113 = getelementptr i8, ptr %4, i32 1
  %114 = load i8, ptr %113, align 1
  %115 = icmp eq i8 %114, 80
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = tail call ptr @fwnode_get_name(ptr noundef %2) #20
  %118 = insertvalue [2 x i32] poison, i32 %8, 0
  %119 = insertvalue [2 x i32] %118, i32 %7, 1
  %120 = tail call fastcc ptr @string(ptr noundef %0, ptr noundef %1, ptr noundef %117, [2 x i32] %119)
  br label %123

121:                                              ; preds = %112
  %122 = tail call fastcc ptr @fwnode_full_name_string(ptr noundef %2, ptr noundef %0, ptr noundef %1)
  br label %123

123:                                              ; preds = %121, %116
  %124 = phi ptr [ %122, %121 ], [ %120, %116 ]
  %125 = ptrtoint ptr %124 to i32
  %126 = ptrtoint ptr %0 to i32
  %127 = sub i32 %125, %126
  %128 = tail call fastcc ptr @widen_string(ptr noundef %124, i32 noundef %127, ptr noundef %1, [2 x i32] %3)
  br label %129

129:                                              ; preds = %123, %107, %64
  %130 = phi ptr [ %68, %64 ], [ %111, %107 ], [ %128, %123 ]
  ret ptr %130
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @pointer_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, [2 x i32] %3) unnamed_addr #2 {
  %5 = extractvalue [2 x i32] %3, 0
  %6 = extractvalue [2 x i32] %3, 1
  %7 = and i32 %6, -65313
  %8 = or i32 %7, 4128
  %9 = zext i32 %5 to i64
  %10 = shl nuw i64 %9, 32
  %11 = ashr i64 %10, 40
  %12 = trunc i64 %11 to i32
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %28

14:                                               ; preds = %4
  %15 = or i64 %9, 2048
  %16 = zext i32 %8 to i64
  %17 = shl nuw i64 %16, 32
  %18 = or i64 %17, %15
  %19 = and i32 %6, 207
  %20 = or i32 %19, 48
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 32
  %23 = and i64 %18, -263882790663937
  %24 = or i64 %23, %22
  %25 = trunc i64 %23 to i32
  %26 = lshr i64 %24, 32
  %27 = trunc i64 %26 to i32
  br label %28

28:                                               ; preds = %14, %4
  %29 = phi i32 [ %25, %14 ], [ %5, %4 ]
  %30 = phi i32 [ %27, %14 ], [ %8, %4 ]
  %31 = ptrtoint ptr %2 to i32
  %32 = zext i32 %31 to i64
  %33 = insertvalue [2 x i32] poison, i32 %29, 0
  %34 = insertvalue [2 x i32] %33, i32 %30, 1
  %35 = tail call fastcc ptr @number(ptr noundef %0, ptr noundef %1, i64 noundef %32, [2 x i32] %34)
  ret ptr %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @err_ptr(ptr noundef %0, ptr noundef %1, ptr noundef %2, [2 x i32] %3) unnamed_addr #1 {
  %5 = ptrtoint ptr %2 to i32
  %6 = tail call ptr @errname(i32 noundef %5) #20
  %7 = icmp eq ptr %6, null
  %8 = extractvalue [2 x i32] %3, 1
  br i1 %7, label %35, label %9

9:                                                ; preds = %4
  %10 = zext i32 %8 to i64
  %11 = shl nuw i64 %10, 32
  %12 = ashr i64 %11, 48
  %13 = trunc i64 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %27, %9
  %16 = phi i32 [ %20, %27 ], [ %13, %9 ]
  %17 = phi i32 [ %29, %27 ], [ 0, %9 ]
  %18 = phi ptr [ %21, %27 ], [ %6, %9 ]
  %19 = phi ptr [ %28, %27 ], [ %0, %9 ]
  %20 = add i32 %16, -1
  %21 = getelementptr i8, ptr %18, i32 1
  %22 = load i8, ptr %18, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %15
  %25 = icmp ult ptr %19, %1
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  store i8 %22, ptr %19, align 1
  br label %27

27:                                               ; preds = %26, %24
  %28 = getelementptr i8, ptr %19, i32 1
  %29 = add nuw i32 %17, 1
  %30 = icmp eq i32 %20, 0
  br i1 %30, label %31, label %15

31:                                               ; preds = %27, %15, %9
  %32 = phi ptr [ %0, %9 ], [ %28, %27 ], [ %19, %15 ]
  %33 = phi i32 [ 0, %9 ], [ %13, %27 ], [ %17, %15 ]
  %34 = tail call fastcc ptr @widen_string(ptr noundef %32, i32 noundef %33, ptr noundef %1, [2 x i32] %3) #20
  br label %41

35:                                               ; preds = %4
  %36 = and i32 %8, -65282
  %37 = or i32 %36, 2561
  %38 = sext i32 %5 to i64
  %39 = insertvalue [2 x i32] %3, i32 %37, 1
  %40 = tail call fastcc ptr @number(ptr noundef %0, ptr noundef %1, i64 noundef %38, [2 x i32] %39)
  br label %41

41:                                               ; preds = %35, %31
  %42 = phi ptr [ %34, %31 ], [ %40, %35 ]
  ret ptr %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ptr_to_id(ptr noundef %0, ptr noundef %1, ptr noundef %2, [2 x i32] %3) unnamed_addr #1 {
  %5 = extractvalue [2 x i32] %3, 0
  %6 = extractvalue [2 x i32] %3, 1
  %7 = icmp eq ptr %2, null
  %8 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %40

10:                                               ; preds = %4
  %11 = and i32 %6, -65313
  %12 = or i32 %11, 4128
  %13 = zext i32 %5 to i64
  %14 = shl nuw i64 %13, 32
  %15 = ashr i64 %14, 40
  %16 = trunc i64 %15 to i32
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %32

18:                                               ; preds = %10
  %19 = or i64 %13, 2048
  %20 = zext i32 %12 to i64
  %21 = shl nuw i64 %20, 32
  %22 = or i64 %21, %19
  %23 = and i32 %6, 207
  %24 = or i32 %23, 48
  %25 = zext i32 %24 to i64
  %26 = shl nuw nsw i64 %25, 32
  %27 = and i64 %22, -263882790663937
  %28 = or i64 %27, %26
  %29 = trunc i64 %27 to i32
  %30 = lshr i64 %28, 32
  %31 = trunc i64 %30 to i32
  br label %32

32:                                               ; preds = %18, %10
  %33 = phi i32 [ %29, %18 ], [ %5, %10 ]
  %34 = phi i32 [ %31, %18 ], [ %12, %10 ]
  %35 = ptrtoint ptr %2 to i32
  %36 = zext i32 %35 to i64
  %37 = insertvalue [2 x i32] poison, i32 %33, 0
  %38 = insertvalue [2 x i32] %37, i32 %34, 1
  %39 = tail call fastcc ptr @number(ptr noundef %0, ptr noundef %1, i64 noundef %36, [2 x i32] %38) #20
  br label %154

40:                                               ; preds = %4
  %41 = load i1, ptr @debug_boot_weak_hash, align 4
  br i1 %41, label %42, label %47, !prof !10

42:                                               ; preds = %40
  %43 = ptrtoint ptr %2 to i32
  %44 = mul i32 %43, 1640531527
  %45 = inttoptr i32 %44 to ptr
  %46 = tail call fastcc ptr @pointer_string(ptr noundef %0, ptr noundef %1, ptr noundef %45, [2 x i32] %3)
  br label %154

47:                                               ; preds = %40
  %48 = load volatile i32, ptr @not_filled_random_ptr_key, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %123, !prof !10

50:                                               ; preds = %47
  %51 = and i32 %5, 255
  %52 = or i32 %51, 2048
  %53 = insertvalue [2 x i32] poison, i32 %52, 0
  %54 = zext i32 %6 to i64
  %55 = shl nuw i64 %54, 32
  %56 = ashr i64 %55, 48
  %57 = trunc i64 %56 to i32
  %58 = icmp eq i32 %57, -1
  %59 = and i32 %6, 65535
  %60 = or i32 %59, 524288
  %61 = select i1 %58, i32 %60, i32 %6
  %62 = zext i32 %61 to i64
  %63 = shl nuw i64 %62, 32
  %64 = ashr i64 %63, 48
  %65 = trunc i64 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %118, label %67

67:                                               ; preds = %50
  %68 = add nsw i32 %65, -1
  %69 = call i32 @llvm.umin.i32(i32 %68, i32 8)
  %70 = icmp ult ptr %0, %1
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i8 40, ptr %0, align 1
  br label %72

72:                                               ; preds = %71, %67
  %73 = getelementptr i8, ptr %0, i32 1
  %74 = icmp eq i32 %68, 0
  br i1 %74, label %118, label %75

75:                                               ; preds = %72
  %76 = icmp ult ptr %73, %1
  br i1 %76, label %77, label %78

77:                                               ; preds = %75
  store i8 112, ptr %73, align 1
  br label %78

78:                                               ; preds = %77, %75
  %79 = getelementptr i8, ptr %0, i32 2
  %80 = icmp eq i32 %65, 2
  br i1 %80, label %118, label %81

81:                                               ; preds = %78
  %82 = icmp ult ptr %79, %1
  br i1 %82, label %83, label %84

83:                                               ; preds = %81
  store i8 116, ptr %79, align 1
  br label %84

84:                                               ; preds = %83, %81
  %85 = getelementptr i8, ptr %0, i32 3
  %86 = icmp eq i32 %65, 3
  br i1 %86, label %118, label %87

87:                                               ; preds = %84
  %88 = icmp ult ptr %85, %1
  br i1 %88, label %89, label %90

89:                                               ; preds = %87
  store i8 114, ptr %85, align 1
  br label %90

90:                                               ; preds = %89, %87
  %91 = getelementptr i8, ptr %0, i32 4
  %92 = icmp eq i32 %65, 4
  br i1 %92, label %118, label %93

93:                                               ; preds = %90
  %94 = icmp ult ptr %91, %1
  br i1 %94, label %95, label %96

95:                                               ; preds = %93
  store i8 118, ptr %91, align 1
  br label %96

96:                                               ; preds = %95, %93
  %97 = getelementptr i8, ptr %0, i32 5
  %98 = icmp eq i32 %65, 5
  br i1 %98, label %118, label %99

99:                                               ; preds = %96
  %100 = icmp ult ptr %97, %1
  br i1 %100, label %101, label %102

101:                                              ; preds = %99
  store i8 97, ptr %97, align 1
  br label %102

102:                                              ; preds = %101, %99
  %103 = getelementptr i8, ptr %0, i32 6
  %104 = icmp eq i32 %65, 6
  br i1 %104, label %118, label %105

105:                                              ; preds = %102
  %106 = icmp ult ptr %103, %1
  br i1 %106, label %107, label %108

107:                                              ; preds = %105
  store i8 108, ptr %103, align 1
  br label %108

108:                                              ; preds = %107, %105
  %109 = getelementptr i8, ptr %0, i32 7
  %110 = icmp eq i32 %65, 7
  br i1 %110, label %118, label %111

111:                                              ; preds = %108
  %112 = icmp ult ptr %109, %1
  br i1 %112, label %113, label %114

113:                                              ; preds = %111
  store i8 41, ptr %109, align 1
  br label %114

114:                                              ; preds = %113, %111
  %115 = getelementptr i8, ptr %0, i32 8
  %116 = icmp eq i32 %65, 8
  %117 = select i1 %116, i32 8, i32 %69
  br label %118

118:                                              ; preds = %114, %108, %102, %96, %90, %84, %78, %72, %50
  %119 = phi ptr [ %0, %50 ], [ %73, %72 ], [ %79, %78 ], [ %85, %84 ], [ %91, %90 ], [ %97, %96 ], [ %103, %102 ], [ %109, %108 ], [ %115, %114 ]
  %120 = phi i32 [ 0, %50 ], [ 1, %72 ], [ 2, %78 ], [ 3, %84 ], [ 4, %90 ], [ 5, %96 ], [ 6, %102 ], [ 7, %108 ], [ %117, %114 ]
  %121 = insertvalue [2 x i32] %53, i32 %61, 1
  %122 = tail call fastcc ptr @widen_string(ptr noundef %119, i32 noundef %120, ptr noundef %1, [2 x i32] %121) #20
  br label %154

123:                                              ; preds = %47
  %124 = ptrtoint ptr %2 to i32
  %125 = tail call i64 @siphash_1u32(i32 noundef %124, ptr noundef nonnull @ptr_key) #20
  %126 = and i32 %6, -65313
  %127 = or i32 %126, 4128
  %128 = zext i32 %5 to i64
  %129 = shl nuw i64 %128, 32
  %130 = ashr i64 %129, 40
  %131 = trunc i64 %130 to i32
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %147

133:                                              ; preds = %123
  %134 = or i64 %128, 2048
  %135 = zext i32 %127 to i64
  %136 = shl nuw i64 %135, 32
  %137 = or i64 %136, %134
  %138 = and i32 %6, 207
  %139 = or i32 %138, 48
  %140 = zext i32 %139 to i64
  %141 = shl nuw nsw i64 %140, 32
  %142 = and i64 %137, -263882790663937
  %143 = or i64 %142, %141
  %144 = trunc i64 %142 to i32
  %145 = lshr i64 %143, 32
  %146 = trunc i64 %145 to i32
  br label %147

147:                                              ; preds = %133, %123
  %148 = phi i32 [ %144, %133 ], [ %5, %123 ]
  %149 = phi i32 [ %146, %133 ], [ %127, %123 ]
  %150 = and i64 %125, 4294967295
  %151 = insertvalue [2 x i32] poison, i32 %148, 0
  %152 = insertvalue [2 x i32] %151, i32 %149, 1
  %153 = tail call fastcc ptr @number(ptr noundef %0, ptr noundef %1, i64 noundef %150, [2 x i32] %152) #20
  br label %154

154:                                              ; preds = %147, %118, %42, %32
  %155 = phi ptr [ %39, %32 ], [ %46, %42 ], [ %122, %118 ], [ %153, %147 ]
  ret ptr %155
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprint_backtrace_build_id(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprint_backtrace(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprint_symbol_build_id(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprint_symbol(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprint_symbol_no_offset(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ip6_addr_string(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, [2 x i32] %3, ptr nocapture noundef readonly %4) unnamed_addr #10 {
  %6 = alloca [46 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 46, ptr nonnull %6) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(46) %6, i8 0, i32 46, i1 false), !annotation !8
  %7 = load i8, ptr %4, align 1
  %8 = icmp eq i8 %7, 73
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %4, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 99
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call fastcc ptr @ip6_compressed_string(ptr noundef nonnull %6, ptr noundef %2)
  br label %17

15:                                               ; preds = %9, %5
  %16 = call fastcc ptr @ip6_string(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %4)
  br label %17

17:                                               ; preds = %15, %13
  %18 = extractvalue [2 x i32] %3, 1
  %19 = zext i32 %18 to i64
  %20 = shl nuw i64 %19, 32
  %21 = ashr i64 %20, 48
  %22 = trunc i64 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %36, %17
  %25 = phi i32 [ %29, %36 ], [ %22, %17 ]
  %26 = phi i32 [ %38, %36 ], [ 0, %17 ]
  %27 = phi ptr [ %30, %36 ], [ %6, %17 ]
  %28 = phi ptr [ %37, %36 ], [ %0, %17 ]
  %29 = add i32 %25, -1
  %30 = getelementptr i8, ptr %27, i32 1
  %31 = load i8, ptr %27, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %24
  %34 = icmp ult ptr %28, %1
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  store i8 %31, ptr %28, align 1
  br label %36

36:                                               ; preds = %35, %33
  %37 = getelementptr i8, ptr %28, i32 1
  %38 = add nuw i32 %26, 1
  %39 = icmp eq i32 %29, 0
  br i1 %39, label %40, label %24

40:                                               ; preds = %36, %24, %17
  %41 = phi ptr [ %0, %17 ], [ %37, %36 ], [ %28, %24 ]
  %42 = phi i32 [ 0, %17 ], [ %22, %36 ], [ %26, %24 ]
  %43 = call fastcc ptr @widen_string(ptr noundef %41, i32 noundef %42, ptr noundef %1, [2 x i32] %3) #20
  call void @llvm.lifetime.end.p0(i64 46, ptr nonnull %6) #20
  ret ptr %43
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ip4_addr_string(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, [2 x i32] %3, ptr nocapture noundef readonly %4) unnamed_addr #10 {
  %6 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !8
  %7 = call fastcc ptr @ip4_string(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %4)
  %8 = extractvalue [2 x i32] %3, 1
  %9 = zext i32 %8 to i64
  %10 = shl nuw i64 %9, 32
  %11 = ashr i64 %10, 48
  %12 = trunc i64 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %26, %5
  %15 = phi i32 [ %19, %26 ], [ %12, %5 ]
  %16 = phi i32 [ %28, %26 ], [ 0, %5 ]
  %17 = phi ptr [ %20, %26 ], [ %6, %5 ]
  %18 = phi ptr [ %27, %26 ], [ %0, %5 ]
  %19 = add i32 %15, -1
  %20 = getelementptr i8, ptr %17, i32 1
  %21 = load i8, ptr %17, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %14
  %24 = icmp ult ptr %18, %1
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  store i8 %21, ptr %18, align 1
  br label %26

26:                                               ; preds = %25, %23
  %27 = getelementptr i8, ptr %18, i32 1
  %28 = add nuw i32 %16, 1
  %29 = icmp eq i32 %19, 0
  br i1 %29, label %30, label %14

30:                                               ; preds = %26, %14, %5
  %31 = phi ptr [ %0, %5 ], [ %27, %26 ], [ %18, %14 ]
  %32 = phi i32 [ 0, %5 ], [ %12, %26 ], [ %16, %14 ]
  %33 = call fastcc ptr @widen_string(ptr noundef %31, i32 noundef %32, ptr noundef %1, [2 x i32] %3) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  ret ptr %33
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ip4_addr_string_sa(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, [2 x i32] %3, ptr nocapture noundef readonly %4) unnamed_addr #10 {
  %6 = alloca [23 x i8], align 1
  %7 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %6) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(23) %6, i8 0, i32 23, i1 false), !annotation !8
  %8 = getelementptr inbounds i8, ptr %6, i32 23
  %9 = getelementptr inbounds %struct.sockaddr_in, ptr %2, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #20
  %10 = load i8, ptr %4, align 1
  store i8 %10, ptr %7, align 1
  %11 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 52, ptr %11, align 1
  %12 = getelementptr inbounds i8, ptr %7, i32 2
  store i8 0, ptr %12, align 1
  %13 = getelementptr i8, ptr %4, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, 3
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = call fastcc ptr @ip4_string(ptr noundef nonnull %6, ptr noundef %9, ptr noundef nonnull %7)
  br label %51

22:                                               ; preds = %32, %5
  %23 = phi i8 [ %33, %32 ], [ 0, %5 ]
  %24 = phi i32 [ %37, %32 ], [ %15, %5 ]
  %25 = phi i8 [ %36, %32 ], [ %14, %5 ]
  %26 = phi ptr [ %35, %32 ], [ %13, %5 ]
  %27 = phi i1 [ %34, %32 ], [ false, %5 ]
  %28 = add nsw i32 %24, -98
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 31)
  switch i32 %29, label %32 [
    i32 7, label %30
    i32 3, label %31
    i32 5, label %31
    i32 6, label %31
    i32 0, label %31
  ]

30:                                               ; preds = %22
  br label %32

31:                                               ; preds = %22, %22, %22, %22
  br label %32

32:                                               ; preds = %31, %30, %22
  %33 = phi i8 [ %23, %22 ], [ %25, %31 ], [ %23, %30 ]
  %34 = phi i1 [ %27, %22 ], [ %27, %31 ], [ true, %30 ]
  %35 = getelementptr i8, ptr %26, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %37
  %39 = load i8, ptr %38, align 1
  %40 = and i8 %39, 3
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %22

42:                                               ; preds = %32
  store i8 %33, ptr %12, align 1
  %43 = call fastcc ptr @ip4_string(ptr noundef nonnull %6, ptr noundef %9, ptr noundef nonnull %7)
  br i1 %34, label %44, label %51

44:                                               ; preds = %42
  %45 = getelementptr i8, ptr %43, i32 1
  store i8 58, ptr %43, align 1
  %46 = getelementptr inbounds %struct.sockaddr_in, ptr %2, i32 0, i32 1
  %47 = load i16, ptr %46, align 2
  %48 = call i16 @llvm.bswap.i16(i16 %47)
  %49 = zext i16 %48 to i64
  %50 = call fastcc ptr @number(ptr noundef %45, ptr noundef %8, i64 noundef %49, [2 x i32] %3)
  br label %51

51:                                               ; preds = %44, %42, %20
  %52 = phi ptr [ %50, %44 ], [ %43, %42 ], [ %21, %20 ]
  store i8 0, ptr %52, align 1
  %53 = extractvalue [2 x i32] %3, 1
  %54 = zext i32 %53 to i64
  %55 = shl nuw i64 %54, 32
  %56 = ashr i64 %55, 48
  %57 = trunc i64 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %71, %51
  %60 = phi i32 [ %64, %71 ], [ %57, %51 ]
  %61 = phi i32 [ %73, %71 ], [ 0, %51 ]
  %62 = phi ptr [ %65, %71 ], [ %6, %51 ]
  %63 = phi ptr [ %72, %71 ], [ %0, %51 ]
  %64 = add i32 %60, -1
  %65 = getelementptr i8, ptr %62, i32 1
  %66 = load i8, ptr %62, align 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %59
  %69 = icmp ult ptr %63, %1
  br i1 %69, label %70, label %71

70:                                               ; preds = %68
  store i8 %66, ptr %63, align 1
  br label %71

71:                                               ; preds = %70, %68
  %72 = getelementptr i8, ptr %63, i32 1
  %73 = add nuw i32 %61, 1
  %74 = icmp eq i32 %64, 0
  br i1 %74, label %75, label %59

75:                                               ; preds = %71, %59, %51
  %76 = phi ptr [ %0, %51 ], [ %72, %71 ], [ %63, %59 ]
  %77 = phi i32 [ 0, %51 ], [ %57, %71 ], [ %61, %59 ]
  %78 = call fastcc ptr @widen_string(ptr noundef %76, i32 noundef %77, ptr noundef %1, [2 x i32] %3) #20
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %6) #20
  ret ptr %78
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ip6_addr_string_sa(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, [2 x i32] %3, ptr nocapture noundef readonly %4) unnamed_addr #10 {
  %6 = alloca [78 x i8], align 1
  %7 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 78, ptr nonnull %6) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(78) %6, i8 0, i32 78, i1 false), !annotation !8
  %8 = getelementptr inbounds i8, ptr %6, i32 78
  %9 = getelementptr inbounds %struct.sockaddr_in6, ptr %2, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #20
  %10 = load i8, ptr %4, align 1
  store i8 %10, ptr %7, align 2
  %11 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 54, ptr %11, align 1
  %12 = getelementptr i8, ptr %4, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, 3
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %42, label %19

19:                                               ; preds = %30, %5
  %20 = phi i8 [ %36, %30 ], [ %13, %5 ]
  %21 = phi ptr [ %35, %30 ], [ %12, %5 ]
  %22 = phi i1 [ %34, %30 ], [ false, %5 ]
  %23 = phi i1 [ %33, %30 ], [ false, %5 ]
  %24 = phi i1 [ %32, %30 ], [ false, %5 ]
  %25 = phi i1 [ %31, %30 ], [ false, %5 ]
  switch i8 %20, label %30 [
    i8 112, label %26
    i8 102, label %27
    i8 115, label %28
    i8 99, label %29
  ]

26:                                               ; preds = %19
  br label %30

27:                                               ; preds = %19
  br label %30

28:                                               ; preds = %19
  br label %30

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %28, %27, %26, %19
  %31 = phi i1 [ %25, %19 ], [ %25, %29 ], [ %25, %28 ], [ %25, %27 ], [ true, %26 ]
  %32 = phi i1 [ %24, %19 ], [ %24, %29 ], [ true, %28 ], [ %24, %27 ], [ %24, %26 ]
  %33 = phi i1 [ %23, %19 ], [ %23, %29 ], [ %23, %28 ], [ true, %27 ], [ %23, %26 ]
  %34 = phi i1 [ %22, %19 ], [ true, %29 ], [ %22, %28 ], [ %22, %27 ], [ %22, %26 ]
  %35 = getelementptr i8, ptr %21, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %37
  %39 = load i8, ptr %38, align 1
  %40 = and i8 %39, 3
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %19

42:                                               ; preds = %30, %5
  %43 = phi i1 [ false, %5 ], [ %31, %30 ]
  %44 = phi i1 [ false, %5 ], [ %32, %30 ]
  %45 = phi i1 [ false, %5 ], [ %33, %30 ]
  %46 = phi i1 [ false, %5 ], [ %34, %30 ]
  %47 = select i1 %43, i1 true, i1 %44
  %48 = select i1 %47, i1 true, i1 %45
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i8 91, ptr %6, align 1
  br label %50

50:                                               ; preds = %49, %42
  %51 = phi i32 [ 1, %49 ], [ 0, %42 ]
  %52 = icmp ne i8 %10, 73
  %53 = xor i1 %46, true
  %54 = select i1 %52, i1 true, i1 %53
  %55 = getelementptr i8, ptr %6, i32 %51
  br i1 %54, label %58, label %56

56:                                               ; preds = %50
  %57 = call fastcc ptr @ip6_compressed_string(ptr noundef %55, ptr noundef %9)
  br label %60

58:                                               ; preds = %50
  %59 = call fastcc ptr @ip6_string(ptr noundef %55, ptr noundef %9, ptr noundef nonnull %7)
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi ptr [ %57, %56 ], [ %59, %58 ]
  br i1 %48, label %62, label %64

62:                                               ; preds = %60
  %63 = getelementptr i8, ptr %61, i32 1
  store i8 93, ptr %61, align 1
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi ptr [ %63, %62 ], [ %61, %60 ]
  br i1 %43, label %66, label %73

66:                                               ; preds = %64
  %67 = getelementptr i8, ptr %65, i32 1
  store i8 58, ptr %65, align 1
  %68 = getelementptr inbounds %struct.sockaddr_in6, ptr %2, i32 0, i32 1
  %69 = load i16, ptr %68, align 2
  %70 = call i16 @llvm.bswap.i16(i16 %69)
  %71 = zext i16 %70 to i64
  %72 = call fastcc ptr @number(ptr noundef %67, ptr noundef %8, i64 noundef %71, [2 x i32] %3)
  br label %73

73:                                               ; preds = %66, %64
  %74 = phi ptr [ %72, %66 ], [ %65, %64 ]
  br i1 %45, label %75, label %83

75:                                               ; preds = %73
  %76 = getelementptr i8, ptr %74, i32 1
  store i8 47, ptr %74, align 1
  %77 = getelementptr inbounds %struct.sockaddr_in6, ptr %2, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, -241
  %80 = call i32 @llvm.bswap.i32(i32 %79)
  %81 = zext i32 %80 to i64
  %82 = call fastcc ptr @number(ptr noundef %76, ptr noundef %8, i64 noundef %81, [2 x i32] %3)
  br label %83

83:                                               ; preds = %75, %73
  %84 = phi ptr [ %82, %75 ], [ %74, %73 ]
  br i1 %44, label %85, label %91

85:                                               ; preds = %83
  %86 = getelementptr i8, ptr %84, i32 1
  store i8 37, ptr %84, align 1
  %87 = getelementptr inbounds %struct.sockaddr_in6, ptr %2, i32 0, i32 4
  %88 = load i32, ptr %87, align 4
  %89 = zext i32 %88 to i64
  %90 = call fastcc ptr @number(ptr noundef %86, ptr noundef %8, i64 noundef %89, [2 x i32] %3)
  br label %91

91:                                               ; preds = %85, %83
  %92 = phi ptr [ %90, %85 ], [ %84, %83 ]
  store i8 0, ptr %92, align 1
  %93 = extractvalue [2 x i32] %3, 1
  %94 = zext i32 %93 to i64
  %95 = shl nuw i64 %94, 32
  %96 = ashr i64 %95, 48
  %97 = trunc i64 %96 to i32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %115, label %99

99:                                               ; preds = %111, %91
  %100 = phi i32 [ %104, %111 ], [ %97, %91 ]
  %101 = phi i32 [ %113, %111 ], [ 0, %91 ]
  %102 = phi ptr [ %105, %111 ], [ %6, %91 ]
  %103 = phi ptr [ %112, %111 ], [ %0, %91 ]
  %104 = add i32 %100, -1
  %105 = getelementptr i8, ptr %102, i32 1
  %106 = load i8, ptr %102, align 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %99
  %109 = icmp ult ptr %103, %1
  br i1 %109, label %110, label %111

110:                                              ; preds = %108
  store i8 %106, ptr %103, align 1
  br label %111

111:                                              ; preds = %110, %108
  %112 = getelementptr i8, ptr %103, i32 1
  %113 = add nuw i32 %101, 1
  %114 = icmp eq i32 %104, 0
  br i1 %114, label %115, label %99

115:                                              ; preds = %111, %99, %91
  %116 = phi ptr [ %0, %91 ], [ %112, %111 ], [ %103, %99 ]
  %117 = phi i32 [ 0, %91 ], [ %97, %111 ], [ %101, %99 ]
  %118 = call fastcc ptr @widen_string(ptr noundef %116, i32 noundef %117, ptr noundef %1, [2 x i32] %3) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 78, ptr nonnull %6) #20
  ret ptr %118
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ip6_compressed_string(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 {
  %3 = alloca [8 x i8], align 8
  %4 = alloca %struct.in6_addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 1 dereferenceable(16) %1, i32 16, i1 false)
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, %5
  %9 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = xor i32 %10, -65536
  %12 = or i32 %8, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i64 0, ptr %3, align 8
  br label %18

15:                                               ; preds = %2
  %16 = and i32 %10, -3
  %17 = icmp eq i32 %16, -27394048
  store i64 0, ptr %3, align 8
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %14
  br label %19

19:                                               ; preds = %18, %15
  %20 = phi i1 [ true, %18 ], [ false, %15 ]
  %21 = phi i32 [ 6, %18 ], [ 8, %15 ]
  %22 = load i8, ptr %3, align 8
  br label %23

23:                                               ; preds = %29, %19
  %24 = phi i8 [ %22, %19 ], [ %30, %29 ]
  %25 = phi i32 [ 0, %19 ], [ %31, %29 ]
  %26 = getelementptr [8 x i16], ptr %4, i32 0, i32 %25
  %27 = load i16, ptr %26, align 2
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = add i8 %24, 1
  store i8 %30, ptr %3, align 8
  %31 = add nuw nsw i32 %25, 1
  %32 = icmp eq i32 %31, %21
  br i1 %32, label %33, label %23

33:                                               ; preds = %29, %23
  %34 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 1
  %35 = load i8, ptr %34, align 1
  br label %36

36:                                               ; preds = %42, %33
  %37 = phi i8 [ %35, %33 ], [ %43, %42 ]
  %38 = phi i32 [ 1, %33 ], [ %44, %42 ]
  %39 = getelementptr [8 x i16], ptr %4, i32 0, i32 %38
  %40 = load i16, ptr %39, align 2
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = add i8 %37, 1
  store i8 %43, ptr %34, align 1
  %44 = add nuw nsw i32 %38, 1
  %45 = icmp eq i32 %44, %21
  br i1 %45, label %46, label %36

46:                                               ; preds = %42, %36
  %47 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 2
  %48 = load i8, ptr %47, align 2
  br label %49

49:                                               ; preds = %55, %46
  %50 = phi i8 [ %48, %46 ], [ %56, %55 ]
  %51 = phi i32 [ 2, %46 ], [ %57, %55 ]
  %52 = getelementptr [8 x i16], ptr %4, i32 0, i32 %51
  %53 = load i16, ptr %52, align 2
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = add i8 %50, 1
  store i8 %56, ptr %47, align 2
  %57 = add nuw nsw i32 %51, 1
  %58 = icmp eq i32 %57, %21
  br i1 %58, label %59, label %49

59:                                               ; preds = %55, %49
  %60 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 3
  %61 = load i8, ptr %60, align 1
  br label %62

62:                                               ; preds = %68, %59
  %63 = phi i8 [ %61, %59 ], [ %69, %68 ]
  %64 = phi i32 [ 3, %59 ], [ %70, %68 ]
  %65 = getelementptr [8 x i16], ptr %4, i32 0, i32 %64
  %66 = load i16, ptr %65, align 2
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = add i8 %63, 1
  store i8 %69, ptr %60, align 1
  %70 = add nuw nsw i32 %64, 1
  %71 = icmp eq i32 %70, %21
  br i1 %71, label %72, label %62

72:                                               ; preds = %68, %62
  %73 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 4
  %74 = load i8, ptr %73, align 4
  br label %75

75:                                               ; preds = %81, %72
  %76 = phi i8 [ %74, %72 ], [ %82, %81 ]
  %77 = phi i32 [ 4, %72 ], [ %83, %81 ]
  %78 = getelementptr [8 x i16], ptr %4, i32 0, i32 %77
  %79 = load i16, ptr %78, align 2
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = add i8 %76, 1
  store i8 %82, ptr %73, align 4
  %83 = add nuw nsw i32 %77, 1
  %84 = icmp eq i32 %83, %21
  br i1 %84, label %85, label %75

85:                                               ; preds = %81, %75
  %86 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 5
  %87 = load i8, ptr %86, align 1
  br label %88

88:                                               ; preds = %94, %85
  %89 = phi i8 [ %87, %85 ], [ %95, %94 ]
  %90 = phi i32 [ 5, %85 ], [ %96, %94 ]
  %91 = getelementptr [8 x i16], ptr %4, i32 0, i32 %90
  %92 = load i16, ptr %91, align 2
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = add i8 %89, 1
  store i8 %95, ptr %86, align 1
  %96 = add nuw nsw i32 %90, 1
  %97 = icmp eq i32 %96, %21
  br i1 %97, label %98, label %88

98:                                               ; preds = %94, %88
  br i1 %20, label %125, label %99

99:                                               ; preds = %98
  %100 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 6
  %101 = load i8, ptr %100, align 2
  br label %102

102:                                              ; preds = %108, %99
  %103 = phi i8 [ %101, %99 ], [ %109, %108 ]
  %104 = phi i32 [ 6, %99 ], [ %110, %108 ]
  %105 = getelementptr [8 x i16], ptr %4, i32 0, i32 %104
  %106 = load i16, ptr %105, align 2
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = add i8 %103, 1
  store i8 %109, ptr %100, align 2
  %110 = add nuw nsw i32 %104, 1
  %111 = icmp eq i32 %110, %21
  br i1 %111, label %112, label %102

112:                                              ; preds = %108, %102
  %113 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 7
  %114 = load i8, ptr %113, align 1
  br label %115

115:                                              ; preds = %121, %112
  %116 = phi i8 [ %114, %112 ], [ %122, %121 ]
  %117 = phi i32 [ 7, %112 ], [ %123, %121 ]
  %118 = getelementptr [8 x i16], ptr %4, i32 0, i32 %117
  %119 = load i16, ptr %118, align 2
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = add i8 %116, 1
  store i8 %122, ptr %113, align 1
  %123 = add nuw nsw i32 %117, 1
  %124 = icmp eq i32 %123, %21
  br i1 %124, label %125, label %115

125:                                              ; preds = %121, %115, %98
  %126 = load i8, ptr %3, align 8
  %127 = zext i8 %126 to i32
  %128 = icmp ult i8 %126, 2
  %129 = tail call i32 @llvm.smax.i32(i32 %127, i32 1)
  %130 = sext i1 %128 to i32
  %131 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 1
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp ult i32 %129, %133
  %135 = tail call i32 @llvm.smax.i32(i32 %129, i32 %133)
  %136 = select i1 %134, i32 1, i32 %130
  %137 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 2
  %138 = load i8, ptr %137, align 2
  %139 = zext i8 %138 to i32
  %140 = icmp ult i32 %135, %139
  %141 = tail call i32 @llvm.smax.i32(i32 %135, i32 %139)
  %142 = select i1 %140, i32 2, i32 %136
  %143 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 3
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp ult i32 %141, %145
  %147 = tail call i32 @llvm.smax.i32(i32 %141, i32 %145)
  %148 = select i1 %146, i32 3, i32 %142
  %149 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 4
  %150 = load i8, ptr %149, align 4
  %151 = zext i8 %150 to i32
  %152 = icmp ult i32 %147, %151
  %153 = tail call i32 @llvm.smax.i32(i32 %147, i32 %151)
  %154 = select i1 %152, i32 4, i32 %148
  %155 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 5
  %156 = load i8, ptr %155, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp ult i32 %153, %157
  %159 = tail call i32 @llvm.smax.i32(i32 %153, i32 %157)
  %160 = select i1 %158, i32 5, i32 %154
  br i1 %20, label %174, label %161

161:                                              ; preds = %125
  %162 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 6
  %163 = load i8, ptr %162, align 2
  %164 = zext i8 %163 to i32
  %165 = icmp ult i32 %159, %164
  %166 = tail call i32 @llvm.smax.i32(i32 %159, i32 %164)
  %167 = select i1 %165, i32 6, i32 %160
  %168 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 7
  %169 = load i8, ptr %168, align 1
  %170 = zext i8 %169 to i32
  %171 = icmp ult i32 %166, %170
  %172 = tail call i32 @llvm.smax.i32(i32 %166, i32 %170)
  %173 = select i1 %171, i32 7, i32 %167
  br label %174

174:                                              ; preds = %161, %125
  %175 = phi i32 [ %159, %125 ], [ %172, %161 ]
  %176 = phi i32 [ %160, %125 ], [ %173, %161 ]
  %177 = icmp eq i32 %175, 1
  %178 = select i1 %177, i32 -1, i32 %176
  %179 = add nsw i32 %175, -1
  %180 = icmp eq i32 %178, 0
  %181 = add i32 %179, %178
  br label %182

182:                                              ; preds = %252, %174
  %183 = phi i1 [ false, %174 ], [ %255, %252 ]
  %184 = phi i32 [ 0, %174 ], [ %256, %252 ]
  %185 = phi ptr [ %0, %174 ], [ %253, %252 ]
  %186 = icmp eq i32 %184, %178
  br i1 %186, label %187, label %194

187:                                              ; preds = %182
  %188 = select i1 %183, i1 true, i1 %180
  br i1 %188, label %189, label %191

189:                                              ; preds = %187
  %190 = getelementptr i8, ptr %185, i32 1
  store i8 58, ptr %185, align 1
  br label %191

191:                                              ; preds = %189, %187
  %192 = phi ptr [ %190, %189 ], [ %185, %187 ]
  %193 = getelementptr i8, ptr %192, i32 1
  store i8 58, ptr %192, align 1
  br label %252

194:                                              ; preds = %182
  br i1 %183, label %195, label %197

195:                                              ; preds = %194
  %196 = getelementptr i8, ptr %185, i32 1
  store i8 58, ptr %185, align 1
  br label %197

197:                                              ; preds = %195, %194
  %198 = phi ptr [ %196, %195 ], [ %185, %194 ]
  %199 = getelementptr [8 x i16], ptr %4, i32 0, i32 %184
  %200 = load i16, ptr %199, align 2
  %201 = tail call i16 @llvm.bswap.i16(i16 %200)
  %202 = lshr i16 %201, 8
  %203 = icmp ult i16 %201, 256
  br i1 %203, label %233, label %204

204:                                              ; preds = %197
  %205 = icmp ugt i16 %201, 4095
  br i1 %205, label %206, label %213

206:                                              ; preds = %204
  %207 = zext i16 %202 to i32
  %208 = lshr i32 %207, 4
  %209 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %208
  %210 = load i8, ptr %209, align 1
  %211 = getelementptr i8, ptr %198, i32 1
  store i8 %210, ptr %198, align 1
  %212 = and i32 %207, 15
  br label %216

213:                                              ; preds = %204
  %214 = and i16 %202, 15
  %215 = zext i16 %214 to i32
  br label %216

216:                                              ; preds = %213, %206
  %217 = phi i32 [ %215, %213 ], [ %212, %206 ]
  %218 = phi i32 [ 1, %213 ], [ 2, %206 ]
  %219 = phi ptr [ %198, %213 ], [ %211, %206 ]
  %220 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %217
  %221 = load i8, ptr %220, align 1
  %222 = getelementptr i8, ptr %198, i32 %218
  store i8 %221, ptr %219, align 1
  %223 = and i16 %201, 255
  %224 = zext i16 %223 to i32
  %225 = lshr i32 %224, 4
  %226 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %225
  %227 = load i8, ptr %226, align 1
  %228 = getelementptr i8, ptr %222, i32 1
  store i8 %227, ptr %222, align 1
  %229 = and i32 %224, 15
  %230 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %229
  %231 = load i8, ptr %230, align 1
  %232 = getelementptr i8, ptr %222, i32 2
  store i8 %231, ptr %228, align 1
  br label %252

233:                                              ; preds = %197
  %234 = and i16 %201, 240
  %235 = icmp eq i16 %234, 0
  br i1 %235, label %246, label %236

236:                                              ; preds = %233
  %237 = zext i16 %201 to i32
  %238 = lshr i32 %237, 4
  %239 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %238
  %240 = load i8, ptr %239, align 1
  %241 = getelementptr i8, ptr %198, i32 1
  store i8 %240, ptr %198, align 1
  %242 = and i32 %237, 15
  %243 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %242
  %244 = load i8, ptr %243, align 1
  %245 = getelementptr i8, ptr %198, i32 2
  store i8 %244, ptr %241, align 1
  br label %252

246:                                              ; preds = %233
  %247 = and i16 %201, 15
  %248 = zext i16 %247 to i32
  %249 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %248
  %250 = load i8, ptr %249, align 1
  %251 = getelementptr i8, ptr %198, i32 1
  store i8 %250, ptr %198, align 1
  br label %252

252:                                              ; preds = %246, %236, %216, %191
  %253 = phi ptr [ %193, %191 ], [ %232, %216 ], [ %245, %236 ], [ %251, %246 ]
  %254 = phi i32 [ %181, %191 ], [ %184, %216 ], [ %184, %236 ], [ %184, %246 ]
  %255 = xor i1 %186, true
  %256 = add i32 %254, 1
  %257 = icmp slt i32 %256, %21
  br i1 %257, label %182, label %258

258:                                              ; preds = %252
  br i1 %20, label %259, label %266

259:                                              ; preds = %258
  br i1 %186, label %262, label %260

260:                                              ; preds = %259
  %261 = getelementptr i8, ptr %253, i32 1
  store i8 58, ptr %253, align 1
  br label %262

262:                                              ; preds = %260, %259
  %263 = phi ptr [ %261, %260 ], [ %253, %259 ]
  %264 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 12
  %265 = call fastcc ptr @ip4_string(ptr noundef %263, ptr noundef %264, ptr noundef nonnull @.str.33)
  br label %266

266:                                              ; preds = %262, %258
  %267 = phi ptr [ %265, %262 ], [ %253, %258 ]
  store i8 0, ptr %267, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret ptr %267
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ip6_string(ptr noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #13 {
  br label %4

4:                                                ; preds = %36, %3
  %5 = phi i32 [ 0, %3 ], [ %38, %36 ]
  %6 = phi ptr [ %0, %3 ], [ %37, %36 ]
  %7 = phi ptr [ %1, %3 ], [ %19, %36 ]
  %8 = getelementptr i8, ptr %7, i32 1
  %9 = load i8, ptr %7, align 1
  %10 = zext i8 %9 to i32
  %11 = lshr i32 %10, 4
  %12 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr i8, ptr %6, i32 1
  store i8 %13, ptr %6, align 1
  %15 = and i32 %10, 15
  %16 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr i8, ptr %6, i32 2
  store i8 %17, ptr %14, align 1
  %19 = getelementptr i8, ptr %7, i32 2
  %20 = load i8, ptr %8, align 1
  %21 = zext i8 %20 to i32
  %22 = lshr i32 %21, 4
  %23 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %22
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr i8, ptr %6, i32 3
  store i8 %24, ptr %18, align 1
  %26 = and i32 %21, 15
  %27 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = getelementptr i8, ptr %6, i32 4
  store i8 %28, ptr %25, align 1
  %30 = load i8, ptr %2, align 1
  %31 = icmp eq i8 %30, 73
  %32 = icmp ne i32 %5, 7
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = getelementptr i8, ptr %6, i32 5
  store i8 58, ptr %29, align 1
  br label %36

36:                                               ; preds = %34, %4
  %37 = phi ptr [ %35, %34 ], [ %29, %4 ]
  %38 = add nuw nsw i32 %5, 1
  %39 = icmp eq i32 %38, 8
  br i1 %39, label %40, label %4

40:                                               ; preds = %36
  store i8 0, ptr %37, align 1
  ret ptr %37
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #17

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ip4_string(ptr noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 {
  %4 = alloca [4 x i8], align 4
  %5 = load i8, ptr %2, align 1
  %6 = icmp eq i8 %5, 105
  %7 = getelementptr i8, ptr %2, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = add nsw i32 %9, -98
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 31)
  switch i32 %11, label %12 [
    i32 3, label %13
    i32 5, label %13
  ]

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %12, %3, %3
  %14 = phi i32 [ 0, %12 ], [ 3, %3 ], [ 3, %3 ]
  %15 = phi i32 [ 1, %12 ], [ -1, %3 ], [ -1, %3 ]
  %16 = ptrtoint ptr %4 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !annotation !8
  %17 = getelementptr i8, ptr %1, i32 %14
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = call fastcc ptr @put_dec_trunc8(ptr noundef nonnull %4, i32 noundef %19)
  %21 = ptrtoint ptr %20 to i32
  %22 = sub i32 %21, %16
  %23 = icmp slt i32 %22, 3
  %24 = select i1 %6, i1 %23, i1 false
  br i1 %24, label %25, label %30

25:                                               ; preds = %13
  %26 = getelementptr i8, ptr %0, i32 1
  store i8 48, ptr %0, align 1
  %27 = icmp slt i32 %22, 2
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = getelementptr i8, ptr %0, i32 2
  store i8 48, ptr %26, align 1
  br label %30

30:                                               ; preds = %28, %13
  %31 = phi ptr [ %29, %28 ], [ %0, %13 ]
  %32 = icmp eq i32 %22, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %30, %25
  %34 = phi ptr [ %31, %30 ], [ %26, %25 ]
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi i32 [ %38, %35 ], [ %22, %33 ]
  %37 = phi ptr [ %41, %35 ], [ %34, %33 ]
  %38 = add i32 %36, -1
  %39 = getelementptr [4 x i8], ptr %4, i32 0, i32 %38
  %40 = load i8, ptr %39, align 1
  %41 = getelementptr i8, ptr %37, i32 1
  store i8 %40, ptr %37, align 1
  %42 = icmp eq i32 %38, 0
  br i1 %42, label %43, label %35

43:                                               ; preds = %35, %30
  %44 = phi ptr [ %31, %30 ], [ %41, %35 ]
  %45 = getelementptr i8, ptr %44, i32 1
  store i8 46, ptr %44, align 1
  %46 = add nsw i32 %14, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !annotation !8
  %47 = getelementptr i8, ptr %1, i32 %46
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = call fastcc ptr @put_dec_trunc8(ptr noundef nonnull %4, i32 noundef %49)
  %51 = ptrtoint ptr %50 to i32
  %52 = sub i32 %51, %16
  %53 = icmp slt i32 %52, 3
  %54 = select i1 %6, i1 %53, i1 false
  br i1 %54, label %55, label %60

55:                                               ; preds = %43
  %56 = getelementptr i8, ptr %44, i32 2
  store i8 48, ptr %45, align 1
  %57 = icmp slt i32 %52, 2
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = getelementptr i8, ptr %44, i32 3
  store i8 48, ptr %56, align 1
  br label %60

60:                                               ; preds = %58, %43
  %61 = phi ptr [ %59, %58 ], [ %45, %43 ]
  %62 = icmp eq i32 %52, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %60, %55
  %64 = phi ptr [ %61, %60 ], [ %56, %55 ]
  br label %65

65:                                               ; preds = %65, %63
  %66 = phi i32 [ %68, %65 ], [ %52, %63 ]
  %67 = phi ptr [ %71, %65 ], [ %64, %63 ]
  %68 = add i32 %66, -1
  %69 = getelementptr [4 x i8], ptr %4, i32 0, i32 %68
  %70 = load i8, ptr %69, align 1
  %71 = getelementptr i8, ptr %67, i32 1
  store i8 %70, ptr %67, align 1
  %72 = icmp eq i32 %68, 0
  br i1 %72, label %73, label %65

73:                                               ; preds = %65, %60
  %74 = phi ptr [ %61, %60 ], [ %71, %65 ]
  %75 = getelementptr i8, ptr %74, i32 1
  store i8 46, ptr %74, align 1
  %76 = add nsw i32 %46, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !annotation !8
  %77 = getelementptr i8, ptr %1, i32 %76
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = call fastcc ptr @put_dec_trunc8(ptr noundef nonnull %4, i32 noundef %79)
  %81 = ptrtoint ptr %80 to i32
  %82 = sub i32 %81, %16
  %83 = icmp slt i32 %82, 3
  %84 = select i1 %6, i1 %83, i1 false
  br i1 %84, label %85, label %90

85:                                               ; preds = %73
  %86 = getelementptr i8, ptr %74, i32 2
  store i8 48, ptr %75, align 1
  %87 = icmp slt i32 %82, 2
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = getelementptr i8, ptr %74, i32 3
  store i8 48, ptr %86, align 1
  br label %90

90:                                               ; preds = %88, %73
  %91 = phi ptr [ %89, %88 ], [ %75, %73 ]
  %92 = icmp eq i32 %82, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %90, %85
  %94 = phi ptr [ %91, %90 ], [ %86, %85 ]
  br label %95

95:                                               ; preds = %95, %93
  %96 = phi i32 [ %98, %95 ], [ %82, %93 ]
  %97 = phi ptr [ %101, %95 ], [ %94, %93 ]
  %98 = add i32 %96, -1
  %99 = getelementptr [4 x i8], ptr %4, i32 0, i32 %98
  %100 = load i8, ptr %99, align 1
  %101 = getelementptr i8, ptr %97, i32 1
  store i8 %100, ptr %97, align 1
  %102 = icmp eq i32 %98, 0
  br i1 %102, label %103, label %95

103:                                              ; preds = %95, %90
  %104 = phi ptr [ %91, %90 ], [ %101, %95 ]
  %105 = getelementptr i8, ptr %104, i32 1
  store i8 46, ptr %104, align 1
  %106 = add nsw i32 %76, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !annotation !8
  %107 = getelementptr i8, ptr %1, i32 %106
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = call fastcc ptr @put_dec_trunc8(ptr noundef nonnull %4, i32 noundef %109)
  %111 = ptrtoint ptr %110 to i32
  %112 = sub i32 %111, %16
  %113 = icmp slt i32 %112, 3
  %114 = select i1 %6, i1 %113, i1 false
  br i1 %114, label %115, label %120

115:                                              ; preds = %103
  %116 = getelementptr i8, ptr %104, i32 2
  store i8 48, ptr %105, align 1
  %117 = icmp slt i32 %112, 2
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = getelementptr i8, ptr %104, i32 3
  store i8 48, ptr %116, align 1
  br label %120

120:                                              ; preds = %118, %103
  %121 = phi ptr [ %119, %118 ], [ %105, %103 ]
  %122 = icmp eq i32 %112, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %120, %115
  %124 = phi ptr [ %121, %120 ], [ %116, %115 ]
  br label %125

125:                                              ; preds = %125, %123
  %126 = phi i32 [ %128, %125 ], [ %112, %123 ]
  %127 = phi ptr [ %131, %125 ], [ %124, %123 ]
  %128 = add i32 %126, -1
  %129 = getelementptr [4 x i8], ptr %4, i32 0, i32 %128
  %130 = load i8, ptr %129, align 1
  %131 = getelementptr i8, ptr %127, i32 1
  store i8 %130, ptr %127, align 1
  %132 = icmp eq i32 %128, 0
  br i1 %132, label %133, label %125

133:                                              ; preds = %125, %120
  %134 = phi ptr [ %121, %120 ], [ %131, %125 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  store i8 0, ptr %134, align 1
  ret ptr %134
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @string_escape_mem(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @has_capability_noaudit(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #18

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @special_hex_number(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #10 {
  %5 = shl i32 %3, 9
  %6 = add i32 %5, 517
  %7 = insertvalue [2 x i32] poison, i32 %6, 0
  %8 = insertvalue [2 x i32] %7, i32 -61328, 1
  %9 = tail call fastcc ptr @number(ptr noundef %0, ptr noundef %1, i64 noundef %2, [2 x i32] %8)
  ret ptr %9
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @rtc_str(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, [2 x i32] %3, ptr nocapture noundef readonly %4) unnamed_addr #10 {
  %6 = icmp eq ptr %2, null
  %7 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  %8 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  %10 = select i1 %9, ptr @.str.60, ptr null
  %11 = select i1 %6, ptr @.str.59, ptr %10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %5
  %14 = extractvalue [2 x i32] %3, 1
  %15 = zext i32 %14 to i64
  %16 = shl nuw i64 %15, 32
  %17 = ashr i64 %16, 48
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %18, -1
  %20 = and i32 %14, 65535
  %21 = or i32 %20, 524288
  %22 = select i1 %19, i32 %21, i32 %14
  %23 = zext i32 %22 to i64
  %24 = shl nuw i64 %23, 32
  %25 = ashr i64 %24, 48
  %26 = trunc i64 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %40, %13
  %29 = phi i32 [ %33, %40 ], [ %26, %13 ]
  %30 = phi i32 [ %42, %40 ], [ 0, %13 ]
  %31 = phi ptr [ %34, %40 ], [ %11, %13 ]
  %32 = phi ptr [ %41, %40 ], [ %0, %13 ]
  %33 = add i32 %29, -1
  %34 = getelementptr i8, ptr %31, i32 1
  %35 = load i8, ptr %31, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %28
  %38 = icmp ult ptr %32, %1
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  store i8 %35, ptr %32, align 1
  br label %40

40:                                               ; preds = %39, %37
  %41 = getelementptr i8, ptr %32, i32 1
  %42 = add nuw i32 %30, 1
  %43 = icmp eq i32 %33, 0
  br i1 %43, label %44, label %28

44:                                               ; preds = %40, %28, %13
  %45 = phi ptr [ %0, %13 ], [ %41, %40 ], [ %32, %28 ]
  %46 = phi i32 [ 0, %13 ], [ %26, %40 ], [ %30, %28 ]
  %47 = insertvalue [2 x i32] %3, i32 %22, 1
  %48 = tail call fastcc ptr @widen_string(ptr noundef %45, i32 noundef %46, ptr noundef %1, [2 x i32] %47) #20
  br label %81

49:                                               ; preds = %5
  %50 = getelementptr i8, ptr %4, i32 2
  %51 = load i8, ptr %50, align 1
  switch i8 %51, label %54 [
    i8 100, label %52
    i8 116, label %53
  ]

52:                                               ; preds = %49
  br label %54

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %53, %52, %49
  %55 = phi i1 [ true, %49 ], [ true, %53 ], [ false, %52 ]
  %56 = phi i1 [ true, %49 ], [ false, %53 ], [ true, %52 ]
  %57 = phi i32 [ 2, %49 ], [ 3, %53 ], [ 3, %52 ]
  br label %58

58:                                               ; preds = %62, %54
  %59 = phi i1 [ false, %54 ], [ true, %62 ]
  %60 = phi i1 [ true, %54 ], [ %63, %62 ]
  %61 = phi i32 [ %57, %54 ], [ %65, %62 ]
  br label %62

62:                                               ; preds = %62, %58
  %63 = phi i1 [ %60, %58 ], [ false, %62 ]
  %64 = phi i32 [ %61, %58 ], [ %65, %62 ]
  %65 = add i32 %64, 1
  %66 = getelementptr i8, ptr %4, i32 %64
  %67 = load i8, ptr %66, align 1
  switch i8 %67, label %68 [
    i8 114, label %58
    i8 115, label %62
  ]

68:                                               ; preds = %62
  br i1 %56, label %69, label %77

69:                                               ; preds = %68
  %70 = tail call fastcc ptr @date_str(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %59)
  br i1 %55, label %71, label %81

71:                                               ; preds = %69
  %72 = icmp ult ptr %70, %1
  br i1 %72, label %73, label %75

73:                                               ; preds = %71
  %74 = select i1 %63, i8 84, i8 32
  store i8 %74, ptr %70, align 1
  br label %75

75:                                               ; preds = %73, %71
  %76 = getelementptr i8, ptr %70, i32 1
  br label %78

77:                                               ; preds = %68
  br i1 %55, label %78, label %81

78:                                               ; preds = %77, %75
  %79 = phi ptr [ %76, %75 ], [ %0, %77 ]
  %80 = tail call fastcc ptr @time_str(ptr noundef %79, ptr noundef %1, ptr noundef %2)
  br label %81

81:                                               ; preds = %78, %77, %69, %44
  %82 = phi ptr [ %80, %78 ], [ %70, %69 ], [ %0, %77 ], [ %48, %44 ]
  ret ptr %82
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @time64_str(ptr noundef %0, ptr noundef %1, i64 noundef %2, [2 x i32] %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca %struct.rtc_time, align 4
  %7 = alloca %struct.tm, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %7, i8 0, i32 32, i1 false), !annotation !8
  call void @time64_to_tm(i64 noundef %2, i32 noundef 0, ptr noundef nonnull %7) #20
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.tm, ptr %7, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rtc_time, ptr %6, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.tm, ptr %7, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rtc_time, ptr %6, i32 0, i32 2
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.tm, ptr %7, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.rtc_time, ptr %6, i32 0, i32 3
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.tm, ptr %7, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.rtc_time, ptr %6, i32 0, i32 4
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.tm, ptr %7, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.rtc_time, ptr %6, i32 0, i32 5
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.tm, ptr %7, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.rtc_time, ptr %6, i32 0, i32 6
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.tm, ptr %7, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.rtc_time, ptr %6, i32 0, i32 7
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.rtc_time, ptr %6, i32 0, i32 8
  store i32 0, ptr %30, align 4
  %31 = call fastcc ptr @rtc_str(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, [2 x i32] %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #20
  ret ptr %31
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @date_str(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i1 noundef zeroext %3) unnamed_addr #10 {
  %5 = getelementptr inbounds %struct.rtc_time, ptr %2, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = select i1 %3, i32 0, i32 1900
  %8 = add i32 %6, %7
  %9 = getelementptr inbounds %struct.rtc_time, ptr %2, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = xor i1 %3, true
  %12 = zext i1 %11 to i32
  %13 = add i32 %10, %12
  %14 = sext i32 %8 to i64
  %15 = tail call fastcc ptr @number(ptr noundef %0, ptr noundef %1, i64 noundef %14, [2 x i32] [i32 1024, i32 -62960])
  %16 = icmp ult ptr %15, %1
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i8 45, ptr %15, align 1
  br label %18

18:                                               ; preds = %17, %4
  %19 = getelementptr i8, ptr %15, i32 1
  %20 = sext i32 %13 to i64
  %21 = tail call fastcc ptr @number(ptr noundef %19, ptr noundef %1, i64 noundef %20, [2 x i32] [i32 512, i32 -62960])
  %22 = icmp ult ptr %21, %1
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i8 45, ptr %21, align 1
  br label %24

24:                                               ; preds = %23, %18
  %25 = getelementptr i8, ptr %21, i32 1
  %26 = getelementptr inbounds %struct.rtc_time, ptr %2, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = sext i32 %27 to i64
  %29 = tail call fastcc ptr @number(ptr noundef %25, ptr noundef %1, i64 noundef %28, [2 x i32] [i32 512, i32 -62960])
  ret ptr %29
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @time_str(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.rtc_time, ptr %2, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = sext i32 %5 to i64
  %7 = tail call fastcc ptr @number(ptr noundef %0, ptr noundef %1, i64 noundef %6, [2 x i32] [i32 512, i32 -62960])
  %8 = icmp ult ptr %7, %1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  store i8 58, ptr %7, align 1
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr i8, ptr %7, i32 1
  %12 = getelementptr inbounds %struct.rtc_time, ptr %2, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = tail call fastcc ptr @number(ptr noundef %11, ptr noundef %1, i64 noundef %14, [2 x i32] [i32 512, i32 -62960])
  %16 = icmp ult ptr %15, %1
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i8 58, ptr %15, align 1
  br label %18

18:                                               ; preds = %17, %10
  %19 = getelementptr i8, ptr %15, i32 1
  %20 = load i32, ptr %2, align 4
  %21 = sext i32 %20 to i64
  %22 = tail call fastcc ptr @number(ptr noundef %19, ptr noundef %1, i64 noundef %21, [2 x i32] [i32 512, i32 -62960])
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @time64_to_tm(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @fwnode_full_name_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @fwnode_count_parents(ptr noundef %0) #20
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %16

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %13, %6 ], [ %1, %3 ]
  %8 = phi i32 [ %14, %6 ], [ %4, %3 ]
  %9 = tail call ptr @fwnode_get_nth_parent(ptr noundef %0, i32 noundef %8) #20
  %10 = tail call ptr @fwnode_get_name_prefix(ptr noundef %9) #20
  %11 = tail call fastcc ptr @string(ptr noundef %7, ptr noundef %2, ptr noundef %10, [2 x i32] [i32 -256, i32 -65536])
  %12 = tail call ptr @fwnode_get_name(ptr noundef %9) #20
  %13 = tail call fastcc ptr @string(ptr noundef %11, ptr noundef %2, ptr noundef %12, [2 x i32] [i32 -256, i32 -65536])
  tail call void @fwnode_handle_put(ptr noundef %9) #20
  %14 = add nsw i32 %8, -1
  %15 = icmp eq i32 %8, 0
  br i1 %15, label %16, label %6

16:                                               ; preds = %6, %3
  %17 = phi ptr [ %1, %3 ], [ %13, %6 ]
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_name(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strchrnul(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_count_parents(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_nth_parent(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_name_prefix(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @errname(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_complement(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #17

attributes #0 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nofree noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #19 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { nounwind }
attributes #21 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.peeled.count", i32 1}
!14 = distinct !{!14, !13}
!15 = !{i64 2149064954}
!16 = !{i64 2149065171}
!17 = distinct !{!17, !13}
