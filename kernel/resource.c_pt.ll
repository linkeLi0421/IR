; ModuleID = '/llk/IR/kernel/resource.c_pt.bc'
source_filename = "../kernel/resource.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ioport_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22ioport_resource\22\09\09\09\09\09"
module asm "__kstrtabns_ioport_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomem_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22iomem_resource\22\09\09\09\09\09"
module asm "__kstrtabns_iomem_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_request_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22request_resource\22\09\09\09\09\09"
module asm "__kstrtabns_request_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_release_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22release_resource\22\09\09\09\09\09"
module asm "__kstrtabns_release_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_walk_iomem_res_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22walk_iomem_res_desc\22\09\09\09\09\09"
module asm "__kstrtabns_walk_iomem_res_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_is_ram:\09\09\09\09\09"
module asm "\09.asciz \09\22page_is_ram\22\09\09\09\09\09"
module asm "__kstrtabns_page_is_ram:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_region_intersects:\09\09\09\09\09"
module asm "\09.asciz \09\22region_intersects\22\09\09\09\09\09"
module asm "__kstrtabns_region_intersects:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_allocate_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22allocate_resource\22\09\09\09\09\09"
module asm "__kstrtabns_allocate_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_insert_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22insert_resource\22\09\09\09\09\09"
module asm "__kstrtabns_insert_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_remove_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22remove_resource\22\09\09\09\09\09"
module asm "__kstrtabns_remove_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adjust_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22adjust_resource\22\09\09\09\09\09"
module asm "__kstrtabns_adjust_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___request_region:\09\09\09\09\09"
module asm "\09.asciz \09\22__request_region\22\09\09\09\09\09"
module asm "__kstrtabns___request_region:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___release_region:\09\09\09\09\09"
module asm "\09.asciz \09\22__release_region\22\09\09\09\09\09"
module asm "__kstrtabns___release_region:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_request_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_request_resource\22\09\09\09\09\09"
module asm "__kstrtabns_devm_request_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_release_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_release_resource\22\09\09\09\09\09"
module asm "__kstrtabns_devm_release_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_request_region:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_request_region\22\09\09\09\09\09"
module asm "__kstrtabns___devm_request_region:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_release_region:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_release_region\22\09\09\09\09\09"
module asm "__kstrtabns___devm_release_region:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_resource_list_create_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22resource_list_create_entry\22\09\09\09\09\09"
module asm "__kstrtabns_resource_list_create_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_resource_list_free:\09\09\09\09\09"
module asm "\09.asciz \09\22resource_list_free\22\09\09\09\09\09"
module asm "__kstrtabns_resource_list_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.user_namespace = type opaque
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.resource_constraint = type { i32, i32, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, ptr, %struct.address_space, %struct.list_head, %union.anon.65, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.64 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.65 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon.1, %union.anon.61, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.61 = type { %struct.atomic_t }
%struct.region_devres = type { ptr, i32, i32 }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"PCI IO\00", align 1
@ioport_resource = dso_local global %struct.resource { i32 0, i32 1048575, ptr @.str, i32 256, i32 0, ptr null, ptr null, ptr null }, align 4
@__kstrtab_ioport_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_ioport_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_ioport_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ioport_resource to i32), ptr @__kstrtab_ioport_resource, ptr @__kstrtabns_ioport_resource }, section "___ksymtab+ioport_resource", align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"PCI mem\00", align 1
@iomem_resource = dso_local global %struct.resource { i32 0, i32 -1, ptr @.str.1, i32 512, i32 0, ptr null, ptr null, ptr null }, align 4
@__kstrtab_iomem_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomem_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_iomem_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomem_resource to i32), ptr @__kstrtab_iomem_resource, ptr @__kstrtabns_iomem_resource }, section "___ksymtab+iomem_resource", align 4
@__initcall__kmod_resource__220_157_ioresources_init6 = internal global ptr @ioresources_init, section ".initcall6.init", align 4
@resource_lock = internal global %struct.rwlock_t zeroinitializer, align 4
@__kstrtab_request_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_request_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_request_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @request_resource to i32), ptr @__kstrtab_request_resource, ptr @__kstrtabns_request_resource }, section "___ksymtab+request_resource", align 4
@__kstrtab_release_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_release_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_release_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @release_resource to i32), ptr @__kstrtab_release_resource, ptr @__kstrtabns_release_resource }, section "___ksymtab+release_resource", align 4
@__kstrtab_walk_iomem_res_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_walk_iomem_res_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_walk_iomem_res_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @walk_iomem_res_desc to i32), ptr @__kstrtab_walk_iomem_res_desc, ptr @__kstrtabns_walk_iomem_res_desc }, section "___ksymtab_gpl+walk_iomem_res_desc", align 4
@__kstrtab_page_is_ram = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_is_ram = external dso_local constant [0 x i8], align 1
@__ksymtab_page_is_ram = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_is_ram to i32), ptr @__kstrtab_page_is_ram, ptr @__kstrtabns_page_is_ram }, section "___ksymtab_gpl+page_is_ram", align 4
@__kstrtab_region_intersects = external dso_local constant [0 x i8], align 1
@__kstrtabns_region_intersects = external dso_local constant [0 x i8], align 1
@__ksymtab_region_intersects = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @region_intersects to i32), ptr @__kstrtab_region_intersects, ptr @__kstrtabns_region_intersects }, section "___ksymtab_gpl+region_intersects", align 4
@__kstrtab_allocate_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_allocate_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_allocate_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @allocate_resource to i32), ptr @__kstrtab_allocate_resource, ptr @__kstrtabns_allocate_resource }, section "___ksymtab+allocate_resource", align 4
@__kstrtab_insert_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_insert_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_insert_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @insert_resource to i32), ptr @__kstrtab_insert_resource, ptr @__kstrtabns_insert_resource }, section "___ksymtab_gpl+insert_resource", align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Expanded resource %s due to conflict with %s\0A\00", align 1
@__kstrtab_remove_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_remove_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_remove_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @remove_resource to i32), ptr @__kstrtab_remove_resource, ptr @__kstrtabns_remove_resource }, section "___ksymtab_gpl+remove_resource", align 4
@__kstrtab_adjust_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_adjust_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_adjust_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adjust_resource to i32), ptr @__kstrtab_adjust_resource, ptr @__kstrtabns_adjust_resource }, section "___ksymtab+adjust_resource", align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"\013resource: requested range [0x%llx-0x%llx] not in root %pr\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\013resource: fixing request to [0x%llx-0x%llx]\0A\00", align 1
@iomem_inode = internal global ptr null, align 4
@__kstrtab___request_region = external dso_local constant [0 x i8], align 1
@__kstrtabns___request_region = external dso_local constant [0 x i8], align 1
@__ksymtab___request_region = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__request_region to i32), ptr @__kstrtab___request_region, ptr @__kstrtabns___request_region }, section "___ksymtab+__request_region", align 4
@muxed_resource_wait = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @muxed_resource_wait, i64 4), ptr getelementptr (i8, ptr @muxed_resource_wait, i64 4) } }, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"\014Trying to free nonexistent resource <%016llx-%016llx>\0A\00", align 1
@__kstrtab___release_region = external dso_local constant [0 x i8], align 1
@__kstrtabns___release_region = external dso_local constant [0 x i8], align 1
@__ksymtab___release_region = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__release_region to i32), ptr @__kstrtab___release_region, ptr @__kstrtabns___release_region }, section "___ksymtab+__release_region", align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"devm_resource_release\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"resource collision: %pR conflicts with %s %pR\0A\00", align 1
@__kstrtab_devm_request_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_request_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_request_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_request_resource to i32), ptr @__kstrtab_devm_request_resource, ptr @__kstrtabns_devm_request_resource }, section "___ksymtab+devm_request_resource", align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"kernel/resource.c\00", align 1
@__kstrtab_devm_release_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_release_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_release_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_release_resource to i32), ptr @__kstrtab_devm_release_resource, ptr @__kstrtabns_devm_release_resource }, section "___ksymtab+devm_release_resource", align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"devm_region_release\00", align 1
@__kstrtab___devm_request_region = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_request_region = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_request_region = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_request_region to i32), ptr @__kstrtab___devm_request_region, ptr @__kstrtabns___devm_request_region }, section "___ksymtab+__devm_request_region", align 4
@__kstrtab___devm_release_region = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_release_region = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_release_region = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_release_region to i32), ptr @__kstrtab___devm_release_region, ptr @__kstrtabns___devm_release_region }, section "___ksymtab+__devm_release_region", align 4
@__setup_str_reserve_setup = internal constant [9 x i8] c"reserve=\00", section ".init.rodata", align 1
@__setup_reserve_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_reserve_setup, ptr @reserve_setup, i32 0 }, section ".init.setup", align 4
@.str.10 = private unnamed_addr constant [91 x i8] c"\014resource sanity check: requesting [mem %#010llx-%#010llx], which spans more than %s %pR\0A\00", align 1
@strict_iomem_checks = internal unnamed_addr global i1 false, align 4
@__kstrtab_resource_list_create_entry = external dso_local constant [0 x i8], align 1
@__kstrtabns_resource_list_create_entry = external dso_local constant [0 x i8], align 1
@__ksymtab_resource_list_create_entry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @resource_list_create_entry to i32), ptr @__kstrtab_resource_list_create_entry, ptr @__kstrtabns_resource_list_create_entry }, section "___ksymtab+resource_list_create_entry", align 4
@__kstrtab_resource_list_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_resource_list_free = external dso_local constant [0 x i8], align 1
@__ksymtab_resource_list_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @resource_list_free to i32), ptr @__kstrtab_resource_list_free, ptr @__kstrtabns_resource_list_free }, section "___ksymtab+resource_list_free", align 4
@__initcall__kmod_resource__230_1939_iomem_init_inode5 = internal global ptr @iomem_init_inode, section ".initcall5.init", align 4
@__setup_str_strict_iomem = internal constant [7 x i8] c"iomem=\00", section ".init.rodata", align 1
@__setup_strict_iomem = internal global %struct.obs_kernel_param { ptr @__setup_str_strict_iomem, ptr @strict_iomem, i32 0 }, section ".init.setup", align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"ioports\00", align 1
@resource_op = internal constant %struct.seq_operations { ptr @r_start, ptr @r_stop, ptr @r_next, ptr @r_show }, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"iomem\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"%*s%0*llx-%0*llx : %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"<BAD>\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"\017release child resource %pR\0A\00", align 1
@bootmem_resource_lock = internal global %struct.spinlock zeroinitializer, align 4
@bootmem_resource_free = internal unnamed_addr global ptr null, align 4
@.str.17 = private unnamed_addr constant [59 x i8] c"\014resource: Unaddressable device %s %pR conflicts with %pR\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@reserve_setup.reserved = internal unnamed_addr global i32 0, align 4
@reserve_setup.reserve = internal global [4 x %struct.resource] zeroinitializer, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@iomem_init_inode.iomem_vfs_mount = internal global ptr null, align 4
@iomem_init_inode.iomem_fs_cnt = internal global i32 0, align 4
@iomem_fs_type = internal global %struct.file_system_type { ptr @.str.12, i32 0, ptr @iomem_fs_init_fs_context, ptr null, ptr null, ptr @kill_anon_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@.str.19 = private unnamed_addr constant [54 x i8] c"\013resource: Cannot mount iomem pseudo filesystem: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"\013resource: Cannot allocate inode for iomem: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"relaxed\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @__initcall__kmod_resource__220_157_ioresources_init6, ptr @__initcall__kmod_resource__230_1939_iomem_init_inode5, ptr @__ksymtab___devm_release_region, ptr @__ksymtab___devm_request_region, ptr @__ksymtab___release_region, ptr @__ksymtab___request_region, ptr @__ksymtab_adjust_resource, ptr @__ksymtab_allocate_resource, ptr @__ksymtab_devm_release_resource, ptr @__ksymtab_devm_request_resource, ptr @__ksymtab_insert_resource, ptr @__ksymtab_iomem_resource, ptr @__ksymtab_ioport_resource, ptr @__ksymtab_page_is_ram, ptr @__ksymtab_region_intersects, ptr @__ksymtab_release_resource, ptr @__ksymtab_remove_resource, ptr @__ksymtab_request_resource, ptr @__ksymtab_resource_list_create_entry, ptr @__ksymtab_resource_list_free, ptr @__ksymtab_walk_iomem_res_desc, ptr @__setup_reserve_setup, ptr @__setup_strict_iomem], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ioresources_init() #0 section ".init.text" {
  %1 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.11, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @resource_op, i32 noundef 0, ptr noundef nonnull @ioport_resource) #15
  %2 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.12, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @resource_op, i32 noundef 0, ptr noundef nonnull @iomem_resource) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @release_child_resources(ptr nocapture noundef %0) local_unnamed_addr #1 {
  tail call void @_raw_write_lock(ptr noundef nonnull @resource_lock) #15
  tail call fastcc void @__release_child_resources(ptr noundef %0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @resource_lock, i32 0) #15, !srcloc !9
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__release_child_resources(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  store ptr null, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 5
  store ptr null, ptr %9, align 4
  store ptr null, ptr %7, align 4
  tail call fastcc void @__release_child_resources(ptr noundef nonnull %6)
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull %6) #16
  %11 = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %14 = sub i32 %12, %13
  store i32 %14, ptr %11, align 4
  %15 = icmp eq ptr %8, null
  br i1 %15, label %16, label %5

16:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @request_resource_conflict(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  tail call void @_raw_write_lock(ptr noundef nonnull @resource_lock) #15
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, %3
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %0, align 4
  %9 = icmp ult i32 %3, %8
  br i1 %9, label %31, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %5, %12
  br i1 %13, label %31, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 7
  br label %16

16:                                               ; preds = %26, %14
  %17 = phi ptr [ %15, %14 ], [ %27, %26 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %18, align 4
  %22 = icmp ugt i32 %21, %5
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %16
  %24 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 6
  store ptr %18, ptr %24, align 4
  store ptr %1, ptr %17, align 4
  %25 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 5
  store ptr %0, ptr %25, align 4
  br label %31

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 6
  %28 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %29, %3
  br i1 %30, label %16, label %31

31:                                               ; preds = %26, %23, %10, %7, %2
  %32 = phi ptr [ null, %23 ], [ %0, %2 ], [ %0, %7 ], [ %0, %10 ], [ %18, %26 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @resource_lock, i32 0) #15, !srcloc !9
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  ret ptr %32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__request_resource(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, %3
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %0, align 4
  %9 = icmp ult i32 %3, %8
  br i1 %9, label %31, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %5, %12
  br i1 %13, label %31, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 7
  br label %16

16:                                               ; preds = %26, %14
  %17 = phi ptr [ %15, %14 ], [ %27, %26 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %18, align 4
  %22 = icmp ugt i32 %21, %5
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %16
  %24 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 6
  store ptr %18, ptr %24, align 4
  store ptr %1, ptr %17, align 4
  %25 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 5
  store ptr %0, ptr %25, align 4
  br label %31

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 6
  %28 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %29, %3
  br i1 %30, label %16, label %31

31:                                               ; preds = %26, %23, %10, %7, %2
  %32 = phi ptr [ null, %23 ], [ %0, %2 ], [ %0, %7 ], [ %0, %10 ], [ %18, %26 ]
  ret ptr %32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @request_resource(ptr noundef %0, ptr noundef %1) #1 {
  tail call void @_raw_write_lock(ptr noundef nonnull @resource_lock) #15
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, %3
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %0, align 4
  %9 = icmp ult i32 %3, %8
  br i1 %9, label %31, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %5, %12
  br i1 %13, label %31, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 7
  br label %16

16:                                               ; preds = %26, %14
  %17 = phi ptr [ %15, %14 ], [ %27, %26 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %18, align 4
  %22 = icmp ugt i32 %21, %5
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %16
  %24 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 6
  store ptr %18, ptr %24, align 4
  store ptr %1, ptr %17, align 4
  %25 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 5
  store ptr %0, ptr %25, align 4
  br label %31

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 6
  %28 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %29, %3
  br i1 %30, label %16, label %31

31:                                               ; preds = %26, %23, %10, %7, %2
  %32 = phi ptr [ null, %23 ], [ %0, %2 ], [ %0, %7 ], [ %0, %10 ], [ %18, %26 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @resource_lock, i32 0) #15, !srcloc !9
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %33 = icmp eq ptr %32, null
  %34 = select i1 %33, i32 0, i32 -16
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @release_resource(ptr noundef %0) #1 {
  tail call void @_raw_write_lock(ptr noundef nonnull @resource_lock) #15
  %2 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = icmp eq ptr %5, %0
  br i1 %8, label %13, label %17

9:                                                ; preds = %17
  %10 = icmp eq ptr %20, %0
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 6
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %4, %7 ], [ %12, %11 ]
  %15 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  store ptr %16, ptr %14, align 4
  store ptr null, ptr %2, align 4
  br label %22

17:                                               ; preds = %9, %7
  %18 = phi ptr [ %20, %9 ], [ %5, %7 ]
  %19 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %9

22:                                               ; preds = %17, %13, %1
  %23 = phi i32 [ 0, %13 ], [ -22, %1 ], [ -22, %17 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @resource_lock, i32 0) #15, !srcloc !9
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @walk_iomem_res_desc(i32 noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #1 {
  %7 = trunc i64 %2 to i32
  %8 = trunc i64 %3 to i32
  %9 = tail call fastcc i32 @__walk_iomem_res_desc(i32 noundef %7, i32 noundef %8, i32 noundef %1, i32 noundef %0, ptr noundef %4, ptr noundef %5)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__walk_iomem_res_desc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #1 {
  %7 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %7, i8 0, i32 32, i1 false), !annotation !13
  %8 = icmp ult i32 %0, %1
  br i1 %8, label %9, label %79

9:                                                ; preds = %6
  %10 = icmp eq i32 %3, 0
  %11 = getelementptr inbounds i8, ptr %7, i32 4
  %12 = getelementptr inbounds i8, ptr %7, i32 8
  %13 = getelementptr inbounds i8, ptr %7, i32 12
  %14 = getelementptr inbounds i8, ptr %7, i32 16
  %15 = getelementptr inbounds i8, ptr %7, i32 20
  %16 = getelementptr inbounds i8, ptr %7, i32 24
  %17 = getelementptr inbounds i8, ptr %7, i32 28
  br label %18

18:                                               ; preds = %75, %9
  %19 = phi i32 [ -22, %9 ], [ 0, %75 ]
  %20 = phi i32 [ %0, %9 ], [ %77, %75 ]
  call void @_raw_read_lock(ptr noundef nonnull @resource_lock) #15
  %21 = load ptr, ptr getelementptr inbounds (%struct.resource, ptr @iomem_resource, i32 0, i32 7), align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %65, label %23

23:                                               ; preds = %18
  %24 = load i32, ptr %21, align 4
  %25 = icmp ugt i32 %24, %1
  br i1 %25, label %65, label %26

26:                                               ; preds = %55, %23
  %27 = phi i32 [ %57, %55 ], [ %24, %23 ]
  %28 = phi ptr [ %56, %55 ], [ %21, %23 ]
  %29 = getelementptr inbounds %struct.resource, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %30, %20
  br i1 %31, label %42, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.resource, ptr %28, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, %2
  %36 = icmp eq i32 %35, %2
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.resource, ptr %28, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  br i1 %10, label %59, label %40

40:                                               ; preds = %37
  %41 = icmp eq i32 %39, %3
  br i1 %41, label %59, label %42

42:                                               ; preds = %40, %32, %26
  %43 = getelementptr inbounds %struct.resource, ptr %28, i32 0, i32 7
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %51, %42
  %47 = phi ptr [ %53, %51 ], [ %28, %42 ]
  %48 = getelementptr inbounds %struct.resource, ptr %47, i32 0, i32 6
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.resource, ptr %47, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %46

55:                                               ; preds = %46, %42
  %56 = phi ptr [ %44, %42 ], [ %49, %46 ]
  %57 = load i32, ptr %56, align 4
  %58 = icmp ugt i32 %57, %1
  br i1 %58, label %65, label %26

59:                                               ; preds = %40, %37
  %60 = phi i32 [ %39, %37 ], [ %3, %40 ]
  %61 = call i32 @llvm.umax.i32(i32 %27, i32 %20) #15
  %62 = call i32 @llvm.umin.i32(i32 %30, i32 %1) #15
  %63 = getelementptr inbounds %struct.resource, ptr %28, i32 0, i32 5
  %64 = load ptr, ptr %63, align 4
  store i32 %61, ptr %7, align 4
  store i32 %62, ptr %11, align 4
  store ptr null, ptr %12, align 4
  store i32 %34, ptr %13, align 4
  store i32 %60, ptr %14, align 4
  store ptr %64, ptr %15, align 4
  store ptr null, ptr %16, align 4
  store ptr null, ptr %17, align 4
  br label %65

65:                                               ; preds = %59, %55, %51, %23, %18
  %66 = phi i1 [ true, %59 ], [ false, %18 ], [ false, %23 ], [ false, %51 ], [ false, %55 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @resource_lock) #15, !srcloc !15
  %67 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @resource_lock) #15, !srcloc !16
  %68 = extractvalue { i32, i32 } %67, 0
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  br label %71

71:                                               ; preds = %70, %65
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !17
  br i1 %66, label %72, label %79

72:                                               ; preds = %71
  %73 = call i32 %5(ptr noundef nonnull %7, ptr noundef %4) #15
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, ptr %11, align 4
  %77 = add i32 %76, 1
  %78 = icmp ult i32 %77, %1
  br i1 %78, label %18, label %79

79:                                               ; preds = %75, %72, %71, %6
  %80 = phi i32 [ -22, %6 ], [ 0, %75 ], [ %73, %72 ], [ %19, %71 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @walk_system_ram_res(i64 noundef %0, i64 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = trunc i64 %0 to i32
  %6 = trunc i64 %1 to i32
  %7 = tail call fastcc i32 @__walk_iomem_res_desc(i32 noundef %5, i32 noundef %6, i32 noundef -2130705920, i32 noundef 0, ptr noundef %2, ptr noundef %3)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @walk_mem_res(i64 noundef %0, i64 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = trunc i64 %0 to i32
  %6 = trunc i64 %1 to i32
  %7 = tail call fastcc i32 @__walk_iomem_res_desc(i32 noundef %5, i32 noundef %6, i32 noundef -2147483136, i32 noundef 0, ptr noundef %2, ptr noundef %3)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @walk_system_ram_range(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = shl i32 %0, 12
  %6 = add i32 %1, %0
  %7 = shl i32 %6, 12
  %8 = add i32 %7, -1
  br label %9

9:                                                ; preds = %70, %4
  %10 = phi i32 [ 0, %4 ], [ %53, %70 ]
  %11 = phi i32 [ 0, %4 ], [ %54, %70 ]
  %12 = phi i32 [ %5, %4 ], [ %64, %70 ]
  %13 = phi i32 [ -22, %4 ], [ 0, %70 ]
  %14 = icmp ult i32 %12, %8
  br i1 %14, label %15, label %73

15:                                               ; preds = %9
  tail call void @_raw_read_lock(ptr noundef nonnull @resource_lock) #15
  %16 = load ptr, ptr getelementptr inbounds (%struct.resource, ptr @iomem_resource, i32 0, i32 7), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %52, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %16, align 4
  %20 = icmp ugt i32 %19, %8
  br i1 %20, label %52, label %21

21:                                               ; preds = %48, %18
  %22 = phi i32 [ %50, %48 ], [ %19, %18 ]
  %23 = phi ptr [ %49, %48 ], [ %16, %18 ]
  %24 = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %25, %12
  br i1 %26, label %35, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, -2130705920
  %31 = icmp eq i32 %30, -2130705920
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = tail call i32 @llvm.umax.i32(i32 %22, i32 %12) #15
  %34 = tail call i32 @llvm.umin.i32(i32 %25, i32 %8) #15
  br label %52

35:                                               ; preds = %27, %21
  %36 = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %44, %35
  %40 = phi ptr [ %46, %44 ], [ %23, %35 ]
  %41 = getelementptr inbounds %struct.resource, ptr %40, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.resource, ptr %40, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %39

48:                                               ; preds = %39, %35
  %49 = phi ptr [ %37, %35 ], [ %42, %39 ]
  %50 = load i32, ptr %49, align 4
  %51 = icmp ugt i32 %50, %8
  br i1 %51, label %52, label %21

52:                                               ; preds = %48, %44, %32, %18, %15
  %53 = phi i32 [ %10, %15 ], [ %33, %32 ], [ %10, %18 ], [ %10, %44 ], [ %10, %48 ]
  %54 = phi i32 [ %11, %15 ], [ %34, %32 ], [ %11, %18 ], [ %11, %44 ], [ %11, %48 ]
  %55 = phi i1 [ false, %15 ], [ true, %32 ], [ false, %18 ], [ false, %44 ], [ false, %48 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @resource_lock) #15, !srcloc !15
  %56 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @resource_lock) #15, !srcloc !16
  %57 = extractvalue { i32, i32 } %56, 0
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  br label %60

60:                                               ; preds = %59, %52
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !17
  br i1 %55, label %61, label %73

61:                                               ; preds = %60
  %62 = add i32 %53, 4095
  %63 = lshr i32 %62, 12
  %64 = add i32 %54, 1
  %65 = lshr i32 %64, 12
  %66 = icmp ugt i32 %65, %63
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = sub nsw i32 %65, %63
  %69 = tail call i32 %3(i32 noundef %63, i32 noundef %68, ptr noundef %2) #15
  br label %70

70:                                               ; preds = %67, %61
  %71 = phi i32 [ %69, %67 ], [ %13, %61 ]
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %9, label %73

73:                                               ; preds = %70, %60, %9
  %74 = phi i32 [ %71, %70 ], [ %13, %60 ], [ %13, %9 ]
  ret i32 %74
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @page_is_ram(i32 noundef %0) #1 {
  %2 = shl i32 %0, 12
  %3 = or i32 %2, 4095
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %5, label %58

5:                                                ; preds = %1
  tail call void @_raw_read_lock(ptr noundef nonnull @resource_lock) #15
  %6 = load ptr, ptr getelementptr inbounds (%struct.resource, ptr @iomem_resource, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %46, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %6, align 4
  %10 = icmp ugt i32 %9, %3
  br i1 %10, label %46, label %11

11:                                               ; preds = %42, %8
  %12 = phi i32 [ %44, %42 ], [ %9, %8 ]
  %13 = phi ptr [ %43, %42 ], [ %6, %8 ]
  %14 = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %15, %2
  br i1 %16, label %29, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -2130705920
  %21 = icmp eq i32 %20, -2130705920
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = tail call i32 @llvm.umax.i32(i32 %12, i32 %2) #15
  %24 = tail call i32 @llvm.umin.i32(i32 %15, i32 %3) #15
  %25 = add i32 %23, 4095
  %26 = lshr i32 %25, 12
  %27 = add i32 %24, 1
  %28 = lshr i32 %27, 12
  br label %46

29:                                               ; preds = %17, %11
  %30 = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %38, %29
  %34 = phi ptr [ %40, %38 ], [ %13, %29 ]
  %35 = getelementptr inbounds %struct.resource, ptr %34, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.resource, ptr %34, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %33

42:                                               ; preds = %33, %29
  %43 = phi ptr [ %31, %29 ], [ %36, %33 ]
  %44 = load i32, ptr %43, align 4
  %45 = icmp ugt i32 %44, %3
  br i1 %45, label %46, label %11

46:                                               ; preds = %42, %38, %22, %8, %5
  %47 = phi i32 [ 0, %5 ], [ %26, %22 ], [ 0, %8 ], [ 0, %38 ], [ 0, %42 ]
  %48 = phi i32 [ 0, %5 ], [ %28, %22 ], [ 0, %8 ], [ 0, %38 ], [ 0, %42 ]
  %49 = phi i1 [ false, %5 ], [ true, %22 ], [ false, %8 ], [ false, %38 ], [ false, %42 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @resource_lock) #15, !srcloc !15
  %50 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @resource_lock) #15, !srcloc !16
  %51 = extractvalue { i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  br label %54

54:                                               ; preds = %53, %46
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !17
  br i1 %49, label %55, label %58

55:                                               ; preds = %54
  %56 = icmp ugt i32 %48, %47
  %57 = zext i1 %56 to i32
  br label %58

58:                                               ; preds = %55, %54, %1
  %59 = phi i32 [ %57, %55 ], [ 0, %1 ], [ 0, %54 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @region_intersects(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  tail call void @_raw_read_lock(ptr noundef nonnull @resource_lock) #15
  %5 = add i32 %0, -1
  %6 = add i32 %5, %1
  %7 = load ptr, ptr getelementptr inbounds (%struct.resource, ptr @iomem_resource, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %48, label %9

9:                                                ; preds = %4
  %10 = icmp eq i32 %3, 0
  br label %11

11:                                               ; preds = %38, %9
  %12 = phi ptr [ %7, %9 ], [ %42, %38 ]
  %13 = phi i32 [ 0, %9 ], [ %40, %38 ]
  %14 = phi i32 [ 0, %9 ], [ %39, %38 ]
  %15 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, %2
  %18 = icmp ne i32 %17, %2
  %19 = or i1 %10, %18
  %20 = xor i1 %18, true
  br i1 %19, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %3
  br label %25

25:                                               ; preds = %21, %11
  %26 = phi i1 [ %20, %11 ], [ %24, %21 ]
  %27 = load i32, ptr %12, align 4
  %28 = icmp ugt i32 %27, %6
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %31, %0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  br i1 %26, label %34, label %36

34:                                               ; preds = %33
  %35 = add i32 %14, 1
  br label %38

36:                                               ; preds = %33
  %37 = add i32 %13, 1
  br label %38

38:                                               ; preds = %36, %34, %29, %25
  %39 = phi i32 [ %35, %34 ], [ %14, %36 ], [ %14, %29 ], [ %14, %25 ]
  %40 = phi i32 [ %13, %34 ], [ %37, %36 ], [ %13, %29 ], [ %13, %25 ]
  %41 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %11

44:                                               ; preds = %38
  %45 = icmp eq i32 %39, 0
  %46 = icmp eq i32 %40, 0
  %47 = select i1 %46, i32 0, i32 2
  br i1 %45, label %48, label %49

48:                                               ; preds = %44, %4
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i32 [ 1, %48 ], [ %47, %44 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @resource_lock) #15, !srcloc !15
  %51 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @resource_lock) #15, !srcloc !16
  %52 = extractvalue { i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  br label %55

55:                                               ; preds = %54, %49
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !17
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @arch_remove_reservations(ptr noundef %0) local_unnamed_addr #1 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @allocate_resource(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) #1 {
  %9 = alloca %struct.resource, align 4
  %10 = alloca %struct.resource_constraint, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %10) #15
  %11 = icmp eq ptr %6, null
  %12 = select i1 %11, ptr @simple_align_resource, ptr %6
  store i32 %3, ptr %10, align 4
  %13 = getelementptr inbounds %struct.resource_constraint, ptr %10, i32 0, i32 1
  store i32 %4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.resource_constraint, ptr %10, i32 0, i32 2
  store i32 %5, ptr %14, align 4
  %15 = getelementptr inbounds %struct.resource_constraint, ptr %10, i32 0, i32 3
  store ptr %12, ptr %15, align 4
  %16 = getelementptr inbounds %struct.resource_constraint, ptr %10, i32 0, i32 4
  store ptr %7, ptr %16, align 4
  %17 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %120, label %20

20:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %9, ptr noundef align 4 dereferenceable(32) %1, i32 32, i1 false) #15
  tail call void @_raw_write_lock(ptr noundef nonnull @resource_lock) #15
  %21 = call fastcc i32 @__find_resource(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, i32 noundef %2, ptr noundef nonnull %10) #15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %118

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = xor i32 %27, %25
  %29 = and i32 %28, 7936
  %30 = and i32 %25, 536870912
  %31 = or i32 %29, %30
  %32 = icmp eq i32 %31, 0
  %33 = and i32 %27, 536870912
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %47

36:                                               ; preds = %23
  %37 = load i32, ptr %9, align 4
  %38 = load i32, ptr %1, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp ult i32 %42, %44
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i32 %37, ptr %1, align 4
  store i32 %42, ptr %43, align 4
  br label %118

47:                                               ; preds = %40, %36, %23
  %48 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 7
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %118

51:                                               ; preds = %47
  %52 = or i32 %29, %33
  %53 = icmp eq i32 %52, 0
  %54 = icmp eq i32 %30, 0
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load i32, ptr %1, align 4
  %58 = load i32, ptr %9, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = icmp ult i32 %62, %64
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  store i32 %58, ptr %1, align 4
  store i32 %64, ptr %61, align 4
  br label %118

67:                                               ; preds = %60, %56, %51
  %68 = load ptr, ptr %17, align 4
  %69 = getelementptr inbounds %struct.resource, ptr %68, i32 0, i32 7
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %87, label %72

72:                                               ; preds = %67
  %73 = icmp eq ptr %70, %1
  br i1 %73, label %78, label %82

74:                                               ; preds = %82
  %75 = icmp eq ptr %85, %1
  br i1 %75, label %76, label %82

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.resource, ptr %83, i32 0, i32 6
  br label %78

78:                                               ; preds = %76, %72
  %79 = phi ptr [ %69, %72 ], [ %77, %76 ]
  %80 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 6
  %81 = load ptr, ptr %80, align 4
  store ptr %81, ptr %79, align 4
  br label %87

82:                                               ; preds = %74, %72
  %83 = phi ptr [ %85, %74 ], [ %70, %72 ]
  %84 = getelementptr inbounds %struct.resource, ptr %83, i32 0, i32 6
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %74

87:                                               ; preds = %82, %78, %67
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(32) %9, i32 32, i1 false) #15
  %88 = load i32, ptr %1, align 4
  %89 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = icmp ult i32 %90, %88
  br i1 %91, label %115, label %92

92:                                               ; preds = %87
  %93 = load i32, ptr %0, align 4
  %94 = icmp ult i32 %88, %93
  br i1 %94, label %115, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = icmp ugt i32 %90, %97
  br i1 %98, label %115, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 7
  br label %101

101:                                              ; preds = %110, %99
  %102 = phi ptr [ %100, %99 ], [ %111, %110 ]
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = load i32, ptr %103, align 4
  %107 = icmp ugt i32 %106, %90
  br i1 %107, label %108, label %110

108:                                              ; preds = %105, %101
  %109 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 6
  store ptr %103, ptr %109, align 4
  store ptr %1, ptr %102, align 4
  store ptr %0, ptr %17, align 4
  br label %118

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.resource, ptr %103, i32 0, i32 6
  %112 = getelementptr inbounds %struct.resource, ptr %103, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = icmp ult i32 %113, %88
  br i1 %114, label %101, label %117

115:                                              ; preds = %95, %92, %87
  %116 = icmp eq ptr %0, null
  br i1 %116, label %118, label %117, !prof !18

117:                                              ; preds = %115, %110
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/resource.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 710, 0\0A.popsection", ""() #15, !srcloc !19
  unreachable

118:                                              ; preds = %115, %108, %66, %47, %46, %20
  %119 = phi i32 [ %21, %20 ], [ 0, %46 ], [ 0, %66 ], [ 0, %115 ], [ -16, %47 ], [ 0, %108 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @resource_lock, i32 0) #15, !srcloc !9
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #15
  br label %157

120:                                              ; preds = %8
  tail call void @_raw_write_lock(ptr noundef nonnull @resource_lock) #15
  %121 = call fastcc i32 @__find_resource(ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %10) #15
  %122 = icmp sgt i32 %121, -1
  br i1 %122, label %123, label %155

123:                                              ; preds = %120
  %124 = load i32, ptr %1, align 4
  %125 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = icmp ult i32 %126, %124
  br i1 %127, label %151, label %128

128:                                              ; preds = %123
  %129 = load i32, ptr %0, align 4
  %130 = icmp ult i32 %124, %129
  br i1 %130, label %151, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = icmp ugt i32 %126, %133
  br i1 %134, label %151, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 7
  br label %137

137:                                              ; preds = %146, %135
  %138 = phi ptr [ %136, %135 ], [ %147, %146 ]
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %137
  %142 = load i32, ptr %139, align 4
  %143 = icmp ugt i32 %142, %126
  br i1 %143, label %144, label %146

144:                                              ; preds = %141, %137
  %145 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 6
  store ptr %139, ptr %145, align 4
  store ptr %1, ptr %138, align 4
  store ptr %0, ptr %17, align 4
  br label %151

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.resource, ptr %139, i32 0, i32 6
  %148 = getelementptr inbounds %struct.resource, ptr %139, i32 0, i32 1
  %149 = load i32, ptr %148, align 4
  %150 = icmp ult i32 %149, %124
  br i1 %150, label %137, label %151

151:                                              ; preds = %146, %144, %131, %128, %123
  %152 = phi ptr [ null, %144 ], [ %0, %123 ], [ %0, %128 ], [ %0, %131 ], [ %139, %146 ]
  %153 = icmp eq ptr %152, null
  %154 = select i1 %153, i32 %121, i32 -16
  br label %155

155:                                              ; preds = %151, %120
  %156 = phi i32 [ %121, %120 ], [ %154, %151 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @resource_lock, i32 0) #15, !srcloc !9
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %157

157:                                              ; preds = %155, %118
  %158 = phi i32 [ %119, %118 ], [ %156, %155 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %10) #15
  ret i32 %158
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @simple_align_resource(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #6 {
  %5 = load i32, ptr %1, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @lookup_resource(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  tail call void @_raw_read_lock(ptr noundef nonnull @resource_lock) #15
  %3 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %10, %2
  %7 = phi ptr [ %12, %10 ], [ %4, %2 ]
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %10, %6, %2
  %15 = phi ptr [ null, %2 ], [ %7, %6 ], [ null, %10 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @resource_lock) #15, !srcloc !15
  %16 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @resource_lock) #15, !srcloc !16
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  br label %20

20:                                               ; preds = %19, %14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !17
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @insert_resource_conflict(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  tail call void @_raw_write_lock(ptr noundef nonnull @resource_lock) #15
  %3 = tail call fastcc ptr @__insert_resource(ptr noundef %0, ptr noundef %1)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @resource_lock, i32 0) #15, !srcloc !9
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__insert_resource(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, %3
  br label %7

7:                                                ; preds = %45, %2
  %8 = phi ptr [ %0, %2 ], [ %20, %45 ]
  br i1 %6, label %89, label %9

9:                                                ; preds = %7
  %10 = load i32, ptr %8, align 4
  %11 = icmp ult i32 %3, %10
  br i1 %11, label %89, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %5, %14
  br i1 %15, label %89, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 7
  br label %18

18:                                               ; preds = %28, %16
  %19 = phi ptr [ %17, %16 ], [ %29, %28 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %20, align 4
  %24 = icmp ugt i32 %23, %5
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %18
  %26 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 6
  store ptr %20, ptr %26, align 4
  store ptr %1, ptr %19, align 4
  %27 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 5
  store ptr %8, ptr %27, align 4
  br label %89

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.resource, ptr %20, i32 0, i32 6
  %30 = getelementptr inbounds %struct.resource, ptr %20, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %31, %3
  br i1 %32, label %18, label %33

33:                                               ; preds = %28
  %34 = icmp eq ptr %20, %8
  br i1 %34, label %89, label %35

35:                                               ; preds = %33
  %36 = icmp eq ptr %20, %1
  br i1 %36, label %37, label %38, !prof !20

37:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 803, i32 noundef 9, ptr noundef null) #15
  br label %89

38:                                               ; preds = %35
  %39 = load i32, ptr %20, align 4
  %40 = icmp ugt i32 %39, %3
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.resource, ptr %20, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp ult i32 %43, %5
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = icmp eq i32 %39, %3
  %47 = icmp eq i32 %43, %5
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %7

49:                                               ; preds = %45, %41, %38
  br label %50

50:                                               ; preds = %62, %49
  %51 = phi i32 [ %63, %62 ], [ %39, %49 ]
  %52 = phi ptr [ %60, %62 ], [ %20, %49 ]
  %53 = icmp ult i32 %51, %3
  br i1 %53, label %89, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.resource, ptr %52, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp ugt i32 %56, %5
  br i1 %57, label %89, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.resource, ptr %52, i32 0, i32 6
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i32, ptr %60, align 4
  %64 = icmp ugt i32 %63, %5
  br i1 %64, label %65, label %50

65:                                               ; preds = %62, %58
  %66 = getelementptr inbounds %struct.resource, ptr %52, i32 0, i32 6
  %67 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 5
  store ptr %8, ptr %67, align 4
  %68 = load ptr, ptr %66, align 4
  %69 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 6
  store ptr %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 7
  store ptr %20, ptr %70, align 4
  store ptr null, ptr %66, align 4
  br label %71

71:                                               ; preds = %71, %65
  %72 = phi ptr [ %75, %71 ], [ %20, %65 ]
  %73 = getelementptr inbounds %struct.resource, ptr %72, i32 0, i32 5
  store ptr %1, ptr %73, align 4
  %74 = getelementptr inbounds %struct.resource, ptr %72, i32 0, i32 6
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %71

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 7
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, %20
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store ptr %1, ptr %78, align 4
  br label %89

82:                                               ; preds = %82, %77
  %83 = phi ptr [ %85, %82 ], [ %79, %77 ]
  %84 = getelementptr inbounds %struct.resource, ptr %83, i32 0, i32 6
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, %20
  br i1 %86, label %87, label %82

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.resource, ptr %83, i32 0, i32 6
  store ptr %1, ptr %88, align 4
  br label %89

89:                                               ; preds = %87, %81, %54, %50, %37, %33, %25, %12, %9, %7
  %90 = phi ptr [ %1, %37 ], [ null, %87 ], [ null, %81 ], [ null, %25 ], [ %52, %54 ], [ %52, %50 ], [ %8, %7 ], [ %8, %9 ], [ %8, %12 ], [ %8, %33 ]
  ret ptr %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @insert_resource(ptr noundef %0, ptr noundef %1) #1 {
  tail call void @_raw_write_lock(ptr noundef nonnull @resource_lock) #15
  %3 = tail call fastcc ptr @__insert_resource(ptr noundef %0, ptr noundef %1) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @resource_lock, i32 0) #15, !srcloc !9
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, i32 0, i32 -16
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @insert_resource_expand_to_fit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %36

6:                                                ; preds = %2
  tail call void @_raw_write_lock(ptr noundef nonnull @resource_lock) #15
  %7 = tail call fastcc ptr @__insert_resource(ptr noundef %0, ptr noundef %1)
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %7, %0
  %10 = or i1 %8, %9
  br i1 %10, label %35, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %13 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 2
  br label %14

14:                                               ; preds = %26, %11
  %15 = phi ptr [ %7, %11 ], [ %31, %26 ]
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %1, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 %16, ptr %1, align 4
  br label %20

20:                                               ; preds = %19, %14
  %21 = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %12, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 %22, ptr %12, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load ptr, ptr %13, align 4
  %28 = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %27, ptr noundef %29) #16
  %31 = tail call fastcc ptr @__insert_resource(ptr noundef %0, ptr noundef %1)
  %32 = icmp eq ptr %31, null
  %33 = icmp eq ptr %31, %0
  %34 = or i1 %32, %33
  br i1 %34, label %35, label %14

35:                                               ; preds = %26, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @resource_lock, i32 0) #15, !srcloc !9
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %36

36:                                               ; preds = %35, %2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @remove_resource(ptr noundef %0) #1 {
  tail call void @_raw_write_lock(ptr noundef nonnull @resource_lock) #15
  %2 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %1
  %8 = icmp eq ptr %5, %0
  br i1 %8, label %13, label %38

9:                                                ; preds = %38
  %10 = icmp eq ptr %41, %0
  br i1 %10, label %11, label %38

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.resource, ptr %39, i32 0, i32 6
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %4, %7 ], [ %12, %11 ]
  %15 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.resource, ptr %16, i32 0, i32 5
  store ptr %3, ptr %19, align 4
  %20 = getelementptr inbounds %struct.resource, ptr %16, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %23, %18
  %24 = phi ptr [ %28, %23 ], [ %21, %18 ]
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr inbounds %struct.resource, ptr %24, i32 0, i32 5
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.resource, ptr %24, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %23

30:                                               ; preds = %23, %18
  %31 = phi ptr [ %16, %18 ], [ %24, %23 ]
  %32 = getelementptr inbounds %struct.resource, ptr %31, i32 0, i32 6
  %33 = load ptr, ptr %15, align 4
  store ptr %33, ptr %14, align 4
  br label %34

34:                                               ; preds = %30, %13
  %35 = phi ptr [ %32, %30 ], [ %14, %13 ]
  %36 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  store ptr %37, ptr %35, align 4
  store ptr null, ptr %2, align 4
  br label %43

38:                                               ; preds = %9, %7
  %39 = phi ptr [ %41, %9 ], [ %5, %7 ]
  %40 = getelementptr inbounds %struct.resource, ptr %39, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %9

43:                                               ; preds = %38, %34, %1
  %44 = phi i32 [ 0, %34 ], [ -22, %1 ], [ -22, %38 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @resource_lock, i32 0) #15, !srcloc !9
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @adjust_resource(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  tail call void @_raw_write_lock(ptr noundef nonnull @resource_lock) #15
  %4 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = add i32 %1, -1
  %7 = add i32 %6, %2
  %8 = icmp eq ptr %5, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %5, align 4
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %54, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %7, %14
  br i1 %15, label %54, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %18, align 4
  %22 = icmp ugt i32 %21, %7
  br i1 %22, label %23, label %54

23:                                               ; preds = %20, %16
  %24 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %36, label %27

27:                                               ; preds = %27, %23
  %28 = phi ptr [ %30, %27 ], [ %25, %23 ]
  %29 = getelementptr inbounds %struct.resource, ptr %28, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %32, label %27

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.resource, ptr %28, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp ult i32 %34, %1
  br i1 %35, label %36, label %54

36:                                               ; preds = %32, %23, %3
  %37 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %52, label %44

40:                                               ; preds = %48
  %41 = getelementptr inbounds %struct.resource, ptr %45, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %40, %36
  %45 = phi ptr [ %42, %40 ], [ %38, %36 ]
  %46 = load i32, ptr %45, align 4
  %47 = icmp ult i32 %46, %1
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.resource, ptr %45, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp ugt i32 %50, %7
  br i1 %51, label %54, label %40

52:                                               ; preds = %40, %36
  store i32 %1, ptr %0, align 4
  %53 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1
  store i32 %7, ptr %53, align 4
  br label %54

54:                                               ; preds = %52, %48, %44, %32, %20, %12, %9
  %55 = phi i32 [ -16, %9 ], [ -16, %12 ], [ -16, %20 ], [ -16, %32 ], [ 0, %52 ], [ -16, %48 ], [ -16, %44 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @resource_lock, i32 0) #15, !srcloc !9
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  ret i32 %55
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @reserve_region_with_split(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 section ".init.text" {
  tail call void @_raw_write_lock(ptr noundef nonnull @resource_lock) #15
  %5 = load i32, ptr %0, align 4
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, %2
  br i1 %10, label %11, label %28

11:                                               ; preds = %7, %4
  %12 = zext i32 %1 to i64
  %13 = zext i32 %2 to i64
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i64 noundef %12, i64 noundef %13, ptr noundef %0) #16
  %15 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, %1
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = load i32, ptr %0, align 4
  %20 = icmp ugt i32 %19, %2
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %11
  tail call void @dump_stack() #16
  br label %31

22:                                               ; preds = %18
  %23 = tail call i32 @llvm.umin.i32(i32 %16, i32 %2)
  %24 = tail call i32 @llvm.umax.i32(i32 %19, i32 %1)
  %25 = zext i32 %24 to i64
  %26 = zext i32 %23 to i64
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i64 noundef %25, i64 noundef %26) #16
  tail call void @dump_stack() #16
  br label %28

28:                                               ; preds = %22, %7
  %29 = phi i32 [ %24, %22 ], [ %1, %7 ]
  %30 = phi i32 [ %23, %22 ], [ %2, %7 ]
  tail call fastcc void @__reserve_region_with_split(ptr noundef %0, i32 noundef %29, i32 noundef %30, ptr noundef %3) #17
  br label %31

31:                                               ; preds = %28, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @resource_lock, i32 0) #15, !srcloc !9
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @__reserve_region_with_split(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 section ".init.text" {
  %5 = tail call fastcc ptr @alloc_resource(i32 noundef 2592)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %61, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 7936
  %11 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 2
  store ptr %3, ptr %11, align 4
  store i32 %1, ptr %5, align 4
  %12 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  store i32 %2, ptr %12, align 4
  %13 = or i32 %10, -2147483648
  %14 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 3
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 4
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %22, %7
  %17 = phi ptr [ %58, %22 ], [ %5, %7 ]
  %18 = tail call fastcc ptr @__request_resource(ptr noundef %0, ptr noundef nonnull %17)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %61, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 1
  br label %24

22:                                               ; preds = %57
  %23 = icmp eq ptr %58, null
  br i1 %23, label %61, label %16

24:                                               ; preds = %57, %20
  %25 = phi ptr [ %18, %20 ], [ %59, %57 ]
  %26 = phi ptr [ null, %20 ], [ %58, %57 ]
  %27 = load i32, ptr %25, align 4
  %28 = load i32, ptr %17, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.resource, ptr %25, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %21, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %55, label %35

35:                                               ; preds = %30
  tail call fastcc void @free_resource(ptr noundef nonnull %17)
  %36 = icmp eq ptr %26, null
  br i1 %36, label %61, label %37, !prof !18

37:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1039, i32 noundef 9, ptr noundef null) #15
  br label %61

38:                                               ; preds = %24
  %39 = load i32, ptr %21, align 4
  %40 = add i32 %27, -1
  store i32 %40, ptr %21, align 4
  %41 = getelementptr inbounds %struct.resource, ptr %25, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp ult i32 %42, %39
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = tail call fastcc ptr @alloc_resource(i32 noundef 2592)
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  tail call fastcc void @free_resource(ptr noundef nonnull %17)
  br label %61

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.resource, ptr %45, i32 0, i32 2
  store ptr %3, ptr %49, align 4
  %50 = load i32, ptr %41, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %45, align 4
  %52 = getelementptr inbounds %struct.resource, ptr %45, i32 0, i32 1
  store i32 %39, ptr %52, align 4
  %53 = getelementptr inbounds %struct.resource, ptr %45, i32 0, i32 3
  store i32 %13, ptr %53, align 4
  %54 = getelementptr inbounds %struct.resource, ptr %45, i32 0, i32 4
  store i32 0, ptr %54, align 4
  br label %57

55:                                               ; preds = %30
  %56 = add nuw i32 %32, 1
  store i32 %56, ptr %17, align 4
  br label %57

57:                                               ; preds = %55, %48, %38
  %58 = phi ptr [ %45, %48 ], [ %26, %38 ], [ %26, %55 ]
  %59 = tail call fastcc ptr @__request_resource(ptr noundef %0, ptr noundef nonnull %17)
  %60 = icmp eq ptr %59, null
  br i1 %60, label %22, label %24

61:                                               ; preds = %47, %37, %35, %22, %16, %4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @resource_alignment(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 786432
  switch i32 %4, label %13 [
    i32 262144, label %5
    i32 524288, label %11
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  %9 = add i32 %7, 1
  %10 = sub i32 %9, %8
  br label %13

11:                                               ; preds = %1
  %12 = load i32, ptr %0, align 4
  br label %13

13:                                               ; preds = %11, %5, %1
  %14 = phi i32 [ %12, %11 ], [ %10, %5 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @iomem_get_mapping() local_unnamed_addr #1 {
  %1 = load volatile ptr, ptr @iomem_inode, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  %2 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__request_region(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #1 {
  %6 = alloca %struct.wait_queue_entry, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @bootmem_resource_lock) #15
  %7 = load ptr, ptr @bootmem_resource_free, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr @bootmem_resource_free, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %12 = load i16, ptr @bootmem_resource_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @bootmem_resource_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %7, i8 0, i32 32, i1 false) #15
  br label %20

14:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %15 = load i16, ptr @bootmem_resource_lock, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr @bootmem_resource_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 32) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %135, label %20

20:                                               ; preds = %14, %9
  %21 = phi ptr [ %7, %9 ], [ %18, %14 ]
  tail call void @_raw_write_lock(ptr noundef nonnull @resource_lock) #15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #15
  %22 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 1
  %23 = tail call ptr @llvm.thread.pointer() #15
  store i32 0, ptr %6, align 4
  store ptr %23, ptr %22, align 4
  %24 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 2
  store ptr @default_wake_function, ptr %24, align 4
  %25 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 3
  store ptr null, ptr %25, align 4
  %26 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 3, i32 1
  store ptr null, ptr %26, align 4
  %27 = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 2
  store ptr %3, ptr %27, align 4
  store i32 %1, ptr %21, align 4
  %28 = add i32 %1, -1
  %29 = add i32 %28, %2
  %30 = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 3
  %32 = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 4
  %33 = and i32 %4, 4194304
  %34 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 1
  br label %35

35:                                               ; preds = %95, %20
  %36 = phi i32 [ %29, %20 ], [ %98, %95 ]
  %37 = phi i32 [ %1, %20 ], [ %97, %95 ]
  %38 = phi ptr [ %0, %20 ], [ %96, %95 ]
  %39 = getelementptr inbounds %struct.resource, ptr %38, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 16785152
  %42 = or i32 %41, %4
  %43 = or i32 %42, -2147483648
  store i32 %43, ptr %31, align 4
  %44 = getelementptr inbounds %struct.resource, ptr %38, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  store i32 %45, ptr %32, align 4
  %46 = icmp ult i32 %36, %37
  br i1 %46, label %71, label %47

47:                                               ; preds = %35
  %48 = load i32, ptr %38, align 4
  %49 = icmp ult i32 %37, %48
  br i1 %49, label %71, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.resource, ptr %38, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp ugt i32 %36, %52
  br i1 %53, label %71, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.resource, ptr %38, i32 0, i32 7
  br label %56

56:                                               ; preds = %66, %54
  %57 = phi ptr [ %55, %54 ], [ %67, %66 ]
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i32, ptr %58, align 4
  %62 = icmp ugt i32 %61, %36
  br i1 %62, label %63, label %66

63:                                               ; preds = %60, %56
  %64 = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 6
  store ptr %58, ptr %64, align 4
  store ptr %21, ptr %57, align 4
  %65 = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 5
  store ptr %38, ptr %65, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #15
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @resource_lock, i32 0) #15, !srcloc !9
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %135

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.resource, ptr %58, i32 0, i32 6
  %68 = getelementptr inbounds %struct.resource, ptr %58, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp ult i32 %69, %37
  br i1 %70, label %56, label %73

71:                                               ; preds = %50, %47, %35
  %72 = icmp eq ptr %38, null
  br i1 %72, label %134, label %73

73:                                               ; preds = %71, %66
  %74 = phi ptr [ %38, %71 ], [ %58, %66 ]
  %75 = getelementptr inbounds %struct.resource, ptr %74, i32 0, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 6
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.resource, ptr %74, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %80, ptr noundef nonnull %74, ptr noundef %21) #16
  br label %82

82:                                               ; preds = %78, %73
  %83 = icmp eq ptr %74, %38
  br i1 %83, label %84, label %86

84:                                               ; preds = %82
  %85 = load i32, ptr %39, align 4
  br label %90

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.resource, ptr %74, i32 0, i32 3
  %88 = load i32, ptr %87, align 4
  %89 = icmp sgt i32 %88, -1
  br i1 %89, label %95, label %90

90:                                               ; preds = %86, %84
  %91 = phi i32 [ %85, %84 ], [ %88, %86 ]
  %92 = and i32 %33, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  call void @add_wait_queue(ptr noundef nonnull @muxed_resource_wait, ptr noundef nonnull %6) #15
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @resource_lock, i32 0) #15, !srcloc !9
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  store volatile i32 2, ptr %34, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  call void @schedule() #15
  call void @remove_wait_queue(ptr noundef nonnull @muxed_resource_wait, ptr noundef nonnull %6) #15
  call void @_raw_write_lock(ptr noundef nonnull @resource_lock) #15
  br label %95

95:                                               ; preds = %94, %86
  %96 = phi ptr [ %38, %94 ], [ %74, %86 ]
  %97 = load i32, ptr %21, align 4
  %98 = load i32, ptr %30, align 4
  br label %35

99:                                               ; preds = %90
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #15
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @resource_lock, i32 0) #15, !srcloc !9
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %100 = load ptr, ptr @mem_map, align 4
  %101 = ptrtoint ptr %21 to i32
  %102 = add i32 %101, 1073741824
  %103 = lshr i32 %102, 12
  %104 = getelementptr %struct.page, ptr %100, i32 %103, i32 1
  %105 = load volatile i32, ptr %104, align 4
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108, !prof !18

108:                                              ; preds = %99
  %109 = add i32 %105, -1
  br label %113

110:                                              ; preds = %99
  %111 = getelementptr %struct.page, ptr %100, i32 %103
  %112 = ptrtoint ptr %111 to i32
  br label %113

113:                                              ; preds = %110, %108
  %114 = phi i32 [ %109, %108 ], [ %112, %110 ]
  %115 = inttoptr i32 %114 to ptr
  %116 = getelementptr inbounds %struct.page, ptr %115, i32 0, i32 1
  %117 = load volatile i32, ptr %116, align 4
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %123, label %120, !prof !18

120:                                              ; preds = %113
  %121 = add i32 %117, -1
  %122 = inttoptr i32 %121 to ptr
  br label %123

123:                                              ; preds = %120, %113
  %124 = phi ptr [ %115, %113 ], [ %122, %120 ]
  %125 = load volatile i32, ptr %124, align 4
  %126 = and i32 %125, 512
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  call void @_raw_spin_lock(ptr noundef nonnull @bootmem_resource_lock) #15
  %129 = load ptr, ptr @bootmem_resource_free, align 4
  %130 = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 6
  store ptr %129, ptr %130, align 4
  store ptr %21, ptr @bootmem_resource_free, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %131 = load i16, ptr @bootmem_resource_lock, align 4
  %132 = add i16 %131, 1
  store i16 %132, ptr @bootmem_resource_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  br label %135

133:                                              ; preds = %123
  call void @kfree(ptr noundef nonnull %21) #15
  br label %135

134:                                              ; preds = %71
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #15
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @resource_lock, i32 0) #15, !srcloc !9
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %135

135:                                              ; preds = %134, %133, %128, %63, %14
  %136 = phi ptr [ null, %14 ], [ null, %128 ], [ null, %133 ], [ %21, %63 ], [ %21, %134 ]
  ret ptr %136
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @alloc_resource(i32 noundef %0) unnamed_addr #1 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @bootmem_resource_lock) #15
  %2 = load ptr, ptr @bootmem_resource_free, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  store ptr %6, ptr @bootmem_resource_free, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %7 = load i16, ptr @bootmem_resource_lock, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr @bootmem_resource_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false)
  br label %24

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %10 = load i16, ptr @bootmem_resource_lock, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr @bootmem_resource_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  %12 = or i32 %0, 256
  %13 = and i32 %0, 17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !18

15:                                               ; preds = %9
  %16 = and i32 %0, 1
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 1, i32 2
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi i32 [ 0, %9 ], [ %18, %15 ]
  %21 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %20, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef %12, i32 noundef 32) #18
  br label %24

24:                                               ; preds = %19, %4
  %25 = phi ptr [ %2, %4 ], [ %23, %19 ]
  ret ptr %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_resource(ptr noundef %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @mem_map, align 4
  %5 = ptrtoint ptr %0 to i32
  %6 = add i32 %5, 1073741824
  %7 = lshr i32 %6, 12
  %8 = getelementptr %struct.page, ptr %4, i32 %7, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !18

12:                                               ; preds = %3
  %13 = add i32 %9, -1
  br label %17

14:                                               ; preds = %3
  %15 = getelementptr %struct.page, ptr %4, i32 %7
  %16 = ptrtoint ptr %15 to i32
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi i32 [ %13, %12 ], [ %16, %14 ]
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 1
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24, !prof !18

24:                                               ; preds = %17
  %25 = add i32 %21, -1
  %26 = inttoptr i32 %25 to ptr
  br label %27

27:                                               ; preds = %24, %17
  %28 = phi ptr [ %19, %17 ], [ %26, %24 ]
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 512
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  tail call void @_raw_spin_lock(ptr noundef nonnull @bootmem_resource_lock) #15
  %33 = load ptr, ptr @bootmem_resource_free, align 4
  %34 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 6
  store ptr %33, ptr %34, align 4
  store ptr %0, ptr @bootmem_resource_free, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %35 = load i16, ptr @bootmem_resource_lock, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr @bootmem_resource_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  br label %38

37:                                               ; preds = %27
  tail call void @kfree(ptr noundef nonnull %0) #15
  br label %38

38:                                               ; preds = %37, %32, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__release_region(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 7
  %5 = add i32 %1, -1
  %6 = add i32 %5, %2
  tail call void @_raw_write_lock(ptr noundef nonnull @resource_lock) #15
  %7 = load ptr, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %76, label %9

9:                                                ; preds = %72, %3
  %10 = phi ptr [ %74, %72 ], [ %7, %3 ]
  %11 = phi ptr [ %73, %72 ], [ %4, %3 ]
  %12 = load i32, ptr %10, align 4
  %13 = icmp ugt i32 %12, %1
  br i1 %13, label %70, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, %6
  br i1 %17, label %70, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 7
  br label %72

24:                                               ; preds = %18
  %25 = icmp eq i32 %12, %1
  %26 = icmp eq i32 %16, %6
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %76

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 3
  %30 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  store ptr %31, ptr %11, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @resource_lock, i32 0) #15, !srcloc !9
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %32 = load i32, ptr %29, align 4
  %33 = and i32 %32, 4194304
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  tail call void @__wake_up(ptr noundef nonnull @muxed_resource_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %36

36:                                               ; preds = %35, %28
  %37 = load ptr, ptr @mem_map, align 4
  %38 = ptrtoint ptr %10 to i32
  %39 = add i32 %38, 1073741824
  %40 = lshr i32 %39, 12
  %41 = getelementptr %struct.page, ptr %37, i32 %40, i32 1
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45, !prof !18

45:                                               ; preds = %36
  %46 = add i32 %42, -1
  br label %50

47:                                               ; preds = %36
  %48 = getelementptr %struct.page, ptr %37, i32 %40
  %49 = ptrtoint ptr %48 to i32
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi i32 [ %46, %45 ], [ %49, %47 ]
  %52 = inttoptr i32 %51 to ptr
  %53 = getelementptr inbounds %struct.page, ptr %52, i32 0, i32 1
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57, !prof !18

57:                                               ; preds = %50
  %58 = add i32 %54, -1
  %59 = inttoptr i32 %58 to ptr
  br label %60

60:                                               ; preds = %57, %50
  %61 = phi ptr [ %52, %50 ], [ %59, %57 ]
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %62, 512
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  tail call void @_raw_spin_lock(ptr noundef nonnull @bootmem_resource_lock) #15
  %66 = load ptr, ptr @bootmem_resource_free, align 4
  store ptr %66, ptr %30, align 4
  store ptr %10, ptr @bootmem_resource_free, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %67 = load i16, ptr @bootmem_resource_lock, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr @bootmem_resource_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  br label %80

69:                                               ; preds = %60
  tail call void @kfree(ptr noundef nonnull %10) #15
  br label %80

70:                                               ; preds = %14, %9
  %71 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 6
  br label %72

72:                                               ; preds = %70, %22
  %73 = phi ptr [ %23, %22 ], [ %71, %70 ]
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %9

76:                                               ; preds = %72, %24, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @resource_lock, i32 0) #15, !srcloc !9
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %77 = zext i32 %1 to i64
  %78 = zext i32 %6 to i64
  %79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i64 noundef %77, i64 noundef %78) #16
  br label %80

80:                                               ; preds = %76, %69, %65
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_request_resource(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_resource_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.6) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %42, label %6

6:                                                ; preds = %3
  store ptr %2, ptr %4, align 4
  tail call void @_raw_write_lock(ptr noundef nonnull @resource_lock) #15
  %7 = load i32, ptr %2, align 4
  %8 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %35, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %1, align 4
  %13 = icmp ult i32 %7, %12
  br i1 %13, label %35, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %9, %16
  br i1 %17, label %35, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 7
  br label %20

20:                                               ; preds = %30, %18
  %21 = phi ptr [ %19, %18 ], [ %31, %30 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %22, align 4
  %26 = icmp ugt i32 %25, %9
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %20
  %28 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 6
  store ptr %22, ptr %28, align 4
  store ptr %2, ptr %21, align 4
  %29 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 5
  store ptr %1, ptr %29, align 4
  br label %35

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.resource, ptr %22, i32 0, i32 6
  %32 = getelementptr inbounds %struct.resource, ptr %22, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp ult i32 %33, %7
  br i1 %34, label %20, label %35

35:                                               ; preds = %30, %27, %14, %11, %6
  %36 = phi ptr [ null, %27 ], [ %1, %6 ], [ %1, %11 ], [ %1, %14 ], [ %22, %30 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @resource_lock, i32 0) #15, !srcloc !9
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.resource, ptr %36, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %2, ptr noundef %40, ptr noundef nonnull %36) #16
  tail call void @devres_free(ptr noundef nonnull %4) #15
  br label %42

41:                                               ; preds = %35
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #15
  br label %42

42:                                               ; preds = %41, %38, %3
  %43 = phi i32 [ -16, %38 ], [ 0, %41 ], [ -12, %3 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_resource_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load ptr, ptr %1, align 4
  tail call void @_raw_write_lock(ptr noundef nonnull @resource_lock) #15
  %4 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %7, %3
  br i1 %10, label %15, label %19

11:                                               ; preds = %19
  %12 = icmp eq ptr %22, %3
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.resource, ptr %20, i32 0, i32 6
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %6, %9 ], [ %14, %13 ]
  %17 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  store ptr %18, ptr %16, align 4
  store ptr null, ptr %4, align 4
  br label %24

19:                                               ; preds = %11, %9
  %20 = phi ptr [ %22, %11 ], [ %7, %9 ]
  %21 = getelementptr inbounds %struct.resource, ptr %20, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %11

24:                                               ; preds = %19, %15, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @resource_lock, i32 0) #15, !srcloc !9
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_release_resource(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_resource_release, ptr noundef nonnull @devm_resource_match, ptr noundef %1) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !18

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1563, i32 noundef 9, ptr noundef null) #15
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @devm_resource_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) #6 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, %2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__devm_request_region(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #1 {
  %6 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_region_release, i32 noundef 12, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.9) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  store ptr %1, ptr %6, align 4
  %9 = getelementptr inbounds %struct.region_devres, ptr %6, i32 0, i32 1
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.region_devres, ptr %6, i32 0, i32 2
  store i32 %3, ptr %10, align 4
  %11 = tail call ptr @__request_region(ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef 0)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %6) #15
  br label %15

14:                                               ; preds = %8
  tail call void @devres_free(ptr noundef nonnull %6) #15
  br label %15

15:                                               ; preds = %14, %13, %5
  %16 = phi ptr [ null, %5 ], [ null, %14 ], [ %11, %13 ]
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_region_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.region_devres, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.region_devres, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  tail call void @__release_region(ptr noundef %3, i32 noundef %5, i32 noundef %7)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__devm_release_region(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = alloca %struct.region_devres, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.region_devres, ptr %5, i32 0, i32 1
  store i32 %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.region_devres, ptr %5, i32 0, i32 2
  store i32 %3, ptr %7, align 4
  tail call void @__release_region(ptr noundef %1, i32 noundef %2, i32 noundef %3)
  %8 = call i32 @devres_destroy(ptr noundef %0, ptr noundef nonnull @devm_region_release, ptr noundef nonnull @devm_region_match, ptr noundef nonnull %5) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !18

10:                                               ; preds = %4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1621, i32 noundef 9, ptr noundef null) #15
  br label %11

11:                                               ; preds = %10, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_destroy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @devm_region_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #6 {
  %4 = load ptr, ptr %1, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.region_devres, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.region_devres, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.region_devres, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.region_devres, ptr %2, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %15, %17
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %13, %7, %3
  %21 = phi i32 [ 0, %7 ], [ 0, %3 ], [ %19, %13 ]
  ret i32 %21
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @reserve_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !13
  %5 = load i32, ptr @reserve_setup.reserved, align 4
  %6 = call i32 @get_option(ptr noundef nonnull %2, ptr noundef nonnull %3) #15
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %36

8:                                                ; preds = %32, %1
  %9 = phi i32 [ %33, %32 ], [ %5, %1 ]
  %10 = call i32 @get_option(ptr noundef nonnull %2, ptr noundef nonnull %4) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %36, label %12

12:                                               ; preds = %8
  %13 = icmp slt i32 %9, 4
  br i1 %13, label %14, label %32

14:                                               ; preds = %12
  %15 = getelementptr %struct.resource, ptr @reserve_setup.reserve, i32 %9
  %16 = load i32, ptr %3, align 4
  %17 = icmp ult i32 %16, 65536
  %18 = select i1 %17, ptr @ioport_resource, ptr @iomem_resource
  %19 = getelementptr %struct.resource, ptr @reserve_setup.reserve, i32 %9, i32 3
  %20 = getelementptr %struct.resource, ptr @reserve_setup.reserve, i32 %9, i32 2
  store ptr @.str.18, ptr %20, align 4
  store i32 %16, ptr %15, align 4
  %21 = load i32, ptr %4, align 4
  %22 = add i32 %16, -1
  %23 = add i32 %22, %21
  %24 = getelementptr %struct.resource, ptr @reserve_setup.reserve, i32 %9, i32 1
  store i32 %23, ptr %24, align 4
  %25 = select i1 %17, i32 -2147483392, i32 -2147483136
  store i32 %25, ptr %19, align 4
  %26 = getelementptr %struct.resource, ptr @reserve_setup.reserve, i32 %9, i32 4
  store i32 0, ptr %26, align 4
  %27 = getelementptr %struct.resource, ptr @reserve_setup.reserve, i32 %9, i32 7
  store ptr null, ptr %27, align 4
  %28 = call i32 @request_resource(ptr noundef nonnull %18, ptr noundef %15)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %14
  %31 = add nsw i32 %9, 1
  store i32 %31, ptr @reserve_setup.reserved, align 4
  br label %32

32:                                               ; preds = %30, %14, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !13
  %33 = load i32, ptr @reserve_setup.reserved, align 4
  %34 = call i32 @get_option(ptr noundef nonnull %2, ptr noundef nonnull %3) #15
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %8, label %36

36:                                               ; preds = %32, %8, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iomem_map_sanity_check(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  tail call void @_raw_read_lock(ptr noundef nonnull @resource_lock) #15
  %3 = load ptr, ptr getelementptr inbounds (%struct.resource, ptr @iomem_resource, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %2
  %6 = add i32 %1, %0
  %7 = lshr i32 %0, 12
  %8 = add i32 %6, -1
  %9 = lshr i32 %8, 12
  br label %10

10:                                               ; preds = %38, %5
  %11 = phi ptr [ %3, %5 ], [ %39, %38 ]
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, %6
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, %0
  br i1 %17, label %34, label %18

18:                                               ; preds = %14
  %19 = lshr i32 %12, 12
  %20 = icmp ugt i32 %19, %7
  %21 = lshr i32 %16, 12
  %22 = icmp ult i32 %21, %9
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = zext i32 %0 to i64
  %30 = zext i32 %8 to i64
  %31 = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i64 noundef %29, i64 noundef %30, ptr noundef %32, ptr noundef nonnull %11) #16
  br label %49

34:                                               ; preds = %24, %18, %14, %10
  %35 = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %40, %34
  %39 = phi ptr [ %36, %34 ], [ %43, %40 ]
  br label %10

40:                                               ; preds = %45, %34
  %41 = phi ptr [ %47, %45 ], [ %11, %34 ]
  %42 = getelementptr inbounds %struct.resource, ptr %41, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %38

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.resource, ptr %41, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %40

49:                                               ; preds = %45, %28, %2
  %50 = phi i32 [ -1, %28 ], [ 0, %2 ], [ 0, %45 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @resource_lock) #15, !srcloc !15
  %51 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @resource_lock) #15, !srcloc !16
  %52 = extractvalue { i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  br label %55

55:                                               ; preds = %54, %49
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !17
  ret i32 %50
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @r_next(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #4 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  %6 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %14, %3
  %10 = phi ptr [ %16, %14 ], [ %1, %3 ]
  %11 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %9

18:                                               ; preds = %14, %9, %3
  %19 = phi ptr [ %7, %3 ], [ %12, %9 ], [ null, %14 ]
  ret ptr %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @iomem_is_exclusive(i64 noundef %0) local_unnamed_addr #1 {
  %2 = and i64 %0, -4096
  tail call void @_raw_read_lock(ptr noundef nonnull @resource_lock) #15
  %3 = load ptr, ptr getelementptr inbounds (%struct.resource, ptr @iomem_resource, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %56, label %5

5:                                                ; preds = %1
  %6 = add i64 %2, 4096
  %7 = load i1, ptr @strict_iomem_checks, align 4
  %8 = xor i1 %7, true
  %9 = load i32, ptr %3, align 4
  %10 = zext i32 %9 to i64
  %11 = icmp ugt i64 %6, %10
  br i1 %11, label %12, label %56

12:                                               ; preds = %51, %5
  %13 = phi ptr [ %52, %51 ], [ %3, %5 ]
  %14 = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = zext i32 %15 to i64
  %17 = icmp ugt i64 %2, %16
  br i1 %17, label %29, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 150995456
  %22 = icmp eq i32 %21, 150995456
  br i1 %22, label %56, label %23

23:                                               ; preds = %18
  %24 = icmp sgt i32 %20, -1
  %25 = select i1 %8, i1 true, i1 %24
  %26 = and i32 %20, 134217728
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %38, label %56

29:                                               ; preds = %34, %12
  %30 = phi ptr [ %36, %34 ], [ %13, %12 ]
  %31 = getelementptr inbounds %struct.resource, ptr %30, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.resource, ptr %30, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %56, label %29

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 7
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %47, %38
  %43 = phi ptr [ %49, %47 ], [ %13, %38 ]
  %44 = getelementptr inbounds %struct.resource, ptr %43, i32 0, i32 6
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.resource, ptr %43, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %42

51:                                               ; preds = %42, %38, %29
  %52 = phi ptr [ %40, %38 ], [ %32, %29 ], [ %45, %42 ]
  %53 = load i32, ptr %52, align 4
  %54 = zext i32 %53 to i64
  %55 = icmp ugt i64 %6, %54
  br i1 %55, label %12, label %56

56:                                               ; preds = %51, %47, %34, %23, %18, %5, %1
  %57 = phi i1 [ false, %1 ], [ false, %5 ], [ false, %34 ], [ false, %47 ], [ false, %51 ], [ true, %18 ], [ true, %23 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @resource_lock) #15, !srcloc !15
  %58 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @resource_lock) #15, !srcloc !16
  %59 = extractvalue { i32, i32 } %58, 0
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  br label %62

62:                                               ; preds = %61, %56
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !17
  ret i1 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @resource_list_create_entry(ptr noundef %0, i32 noundef %1) #1 {
  %3 = add i32 %1, 48
  %4 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  store volatile ptr %4, ptr %4, align 64
  %7 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %7, align 4
  %8 = icmp eq ptr %0, null
  %9 = getelementptr inbounds %struct.resource_entry, ptr %4, i32 0, i32 3
  %10 = select i1 %8, ptr %9, ptr %0
  %11 = getelementptr inbounds %struct.resource_entry, ptr %4, i32 0, i32 1
  store ptr %10, ptr %11, align 8
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi ptr [ %4, %6 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @resource_list_free(ptr noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %11, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  store volatile ptr %6, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  tail call void @kfree(ptr noundef %5) #15
  %10 = icmp eq ptr %6, %0
  br i1 %10, label %11, label %4

11:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @iomem_init_inode() #0 section ".init.text" {
  %1 = tail call i32 @simple_pin_fs(ptr noundef nonnull @iomem_fs_type, ptr noundef nonnull @iomem_init_inode.iomem_vfs_mount, ptr noundef nonnull @iomem_init_inode.iomem_fs_cnt) #15
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %1) #16
  br label %15

5:                                                ; preds = %0
  %6 = load ptr, ptr @iomem_init_inode.iomem_vfs_mount, align 4
  %7 = getelementptr inbounds %struct.vfsmount, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @alloc_anon_inode(ptr noundef %8) #15
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = ptrtoint ptr %9 to i32
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %12) #16
  tail call void @simple_release_fs(ptr noundef nonnull @iomem_init_inode.iomem_vfs_mount, ptr noundef nonnull @iomem_init_inode.iomem_fs_cnt) #15
  br label %15

14:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !25
  store volatile ptr %9, ptr @iomem_inode, align 4
  br label %15

15:                                               ; preds = %14, %11, %3
  %16 = phi i32 [ %1, %3 ], [ %12, %11 ], [ 0, %14 ]
  ret i32 %16
}

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @strict_iomem(ptr noundef readonly %0) #8 section ".init.text" {
  %2 = tail call ptr @strstr(ptr noundef %0, ptr noundef nonnull @.str.21)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  store i1 false, ptr @strict_iomem_checks, align 4
  br label %5

5:                                                ; preds = %4, %1
  %6 = tail call ptr @strstr(ptr noundef %0, ptr noundef nonnull @.str.22)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store i1 true, ptr @strict_iomem_checks, align 4
  br label %9

9:                                                ; preds = %8, %5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @r_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @resource_lock) #15
  %9 = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %2
  %13 = load i64, ptr %1, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %31, %12
  %16 = phi i64 [ %18, %31 ], [ 0, %12 ]
  %17 = phi ptr [ %32, %31 ], [ %10, %12 ]
  %18 = add nuw nsw i64 %16, 1
  %19 = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %27, %15
  %23 = phi ptr [ %29, %27 ], [ %17, %15 ]
  %24 = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %22

31:                                               ; preds = %22, %15
  %32 = phi ptr [ %20, %15 ], [ %25, %22 ]
  %33 = icmp slt i64 %18, %13
  br i1 %33, label %15, label %34

34:                                               ; preds = %31, %27, %12, %2
  %35 = phi ptr [ null, %2 ], [ %10, %12 ], [ null, %27 ], [ %32, %31 ]
  ret ptr %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @r_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #1 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @resource_lock) #15, !srcloc !15
  %3 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @resource_lock) #15, !srcloc !16
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  br label %7

7:                                                ; preds = %6, %2
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r_show(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %8
  br i1 %13, label %31, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %8
  br i1 %17, label %31, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.resource, ptr %16, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %8
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.resource, ptr %20, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %8
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.resource, ptr %24, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %8
  %30 = select i1 %29, i32 8, i32 10
  br label %31

31:                                               ; preds = %26, %22, %18, %14, %2
  %32 = phi i32 [ 0, %2 ], [ 2, %14 ], [ 4, %18 ], [ 6, %22 ], [ %30, %26 ]
  %33 = tail call zeroext i1 @file_ns_capable(ptr noundef %4, ptr noundef nonnull @init_user_ns, i32 noundef 21) #15
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, ptr %1, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = zext i32 %38 to i64
  br label %40

40:                                               ; preds = %34, %31
  %41 = phi i64 [ %36, %34 ], [ 0, %31 ]
  %42 = phi i64 [ %39, %34 ], [ 0, %31 ]
  %43 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  %46 = select i1 %45, ptr @.str.15, ptr %44
  %47 = icmp ult i32 %10, 65536
  %48 = select i1 %47, i32 4, i32 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %32, ptr noundef nonnull @.str.14, i32 noundef %48, i64 noundef %41, i32 noundef %48, i64 noundef %42, ptr noundef nonnull %46) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @file_ns_capable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__find_resource(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #1 {
  %6 = alloca %struct.resource, align 4
  %7 = alloca %struct.resource, align 4
  %8 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, ptr noundef align 4 dereferenceable(32) %2, i32 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %7, i8 0, i32 32, i1 false), !annotation !13
  %10 = load i32, ptr %0, align 4
  store i32 %10, ptr %6, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %5
  %13 = load i32, ptr %9, align 4
  %14 = icmp eq i32 %13, %10
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = icmp eq ptr %9, %1
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = load i32, ptr %1, align 4
  br label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  br label %23

23:                                               ; preds = %19, %17
  %24 = phi i32 [ %18, %17 ], [ %22, %19 ]
  store i32 %24, ptr %6, align 4
  %25 = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %23, %12, %5
  %28 = phi ptr [ %26, %23 ], [ %9, %12 ], [ null, %5 ]
  %29 = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 1
  %30 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1
  %31 = getelementptr inbounds %struct.resource_constraint, ptr %4, i32 0, i32 1
  %32 = getelementptr inbounds %struct.resource_constraint, ptr %4, i32 0, i32 2
  %33 = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 1
  %34 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3
  %35 = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 3
  %36 = getelementptr inbounds %struct.resource_constraint, ptr %4, i32 0, i32 3
  %37 = getelementptr inbounds %struct.resource_constraint, ptr %4, i32 0, i32 4
  %38 = add i32 %3, -1
  %39 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  br label %40

40:                                               ; preds = %106, %27
  %41 = phi ptr [ %28, %27 ], [ %108, %106 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = icmp eq ptr %41, %1
  br i1 %44, label %45, label %47

45:                                               ; preds = %43
  %46 = load i32, ptr %39, align 4
  br label %52

47:                                               ; preds = %43
  %48 = load i32, ptr %41, align 4
  %49 = add i32 %48, -1
  br label %52

50:                                               ; preds = %40
  %51 = load i32, ptr %30, align 4
  br label %52

52:                                               ; preds = %50, %47, %45
  %53 = phi i32 [ %51, %50 ], [ %46, %45 ], [ %49, %47 ]
  store i32 %53, ptr %29, align 4
  %54 = load i32, ptr %6, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %96, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %4, align 4
  %58 = load i32, ptr %31, align 4
  %59 = icmp ult i32 %54, %57
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 %57, ptr %6, align 4
  br label %61

61:                                               ; preds = %60, %56
  %62 = icmp ugt i32 %53, %58
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  store i32 %58, ptr %29, align 4
  br label %64

64:                                               ; preds = %63, %61
  call void @arch_remove_reservations(ptr noundef nonnull %6)
  %65 = load i32, ptr %6, align 4
  %66 = load i32, ptr %32, align 4
  %67 = add i32 %65, -1
  %68 = add i32 %67, %66
  %69 = sub i32 0, %66
  %70 = and i32 %68, %69
  store i32 %70, ptr %7, align 4
  %71 = load i32, ptr %29, align 4
  store i32 %71, ptr %33, align 4
  %72 = load i32, ptr %34, align 4
  %73 = and i32 %72, -536870913
  store i32 %73, ptr %35, align 4
  %74 = icmp ult i32 %70, %65
  br i1 %74, label %96, label %75

75:                                               ; preds = %64
  %76 = load ptr, ptr %36, align 4
  %77 = load ptr, ptr %37, align 4
  %78 = call i32 %76(ptr noundef %77, ptr noundef nonnull %7, i32 noundef %3, i32 noundef %66) #15
  %79 = add i32 %38, %78
  %80 = icmp ugt i32 %78, %79
  br i1 %80, label %96, label %81

81:                                               ; preds = %75
  %82 = load i32, ptr %35, align 4
  %83 = xor i32 %82, %72
  %84 = and i32 %83, 7936
  %85 = and i32 %82, 536870912
  %86 = or i32 %84, %85
  %87 = icmp eq i32 %86, 0
  %88 = load i32, ptr %7, align 4
  %89 = icmp ule i32 %88, %78
  %90 = select i1 %87, i1 %89, i1 false
  %91 = load i32, ptr %33, align 4
  %92 = icmp uge i32 %91, %79
  %93 = select i1 %90, i1 %92, i1 false
  br i1 %93, label %94, label %96

94:                                               ; preds = %81
  store i32 %78, ptr %2, align 4
  %95 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  store i32 %79, ptr %95, align 4
  br label %109

96:                                               ; preds = %81, %75, %64, %52
  br i1 %42, label %109, label %97

97:                                               ; preds = %96
  %98 = getelementptr inbounds %struct.resource, ptr %41, i32 0, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = load i32, ptr %30, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %109, label %102

102:                                              ; preds = %97
  %103 = icmp eq ptr %41, %1
  br i1 %103, label %106, label %104

104:                                              ; preds = %102
  %105 = add i32 %99, 1
  store i32 %105, ptr %6, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = getelementptr inbounds %struct.resource, ptr %41, i32 0, i32 6
  %108 = load ptr, ptr %107, align 4
  br label %40

109:                                              ; preds = %97, %96, %94
  %110 = phi i32 [ 0, %94 ], [ -16, %96 ], [ -16, %97 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  ret i32 %110
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_pin_fs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_anon_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_release_fs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iomem_fs_init_fs_context(ptr noundef %0) #1 {
  %2 = tail call ptr @init_pseudo(ptr noundef %0, i32 noundef 1162691661) #15
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, i32 -12, i32 0
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_pseudo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { cold }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }

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
!8 = !{i64 2148998961}
!9 = !{i64 1502175}
!10 = !{i64 2148987708}
!11 = !{i64 2148987783, i64 2148987810, i64 2148987857, i64 2148987879, i64 2148987907, i64 2148987927}
!12 = !{i64 2149036930}
!13 = !{!"auto-init"}
!14 = !{i64 2148999766}
!15 = !{i64 828931, i64 2148318902, i64 2148318928, i64 2148318975, i64 2148318997, i64 2148319025, i64 2148319045}
!16 = !{i64 1503190, i64 1503213, i64 1503233, i64 1503257, i64 1503273}
!17 = !{i64 2149037369}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2152739909, i64 2152740391, i64 2152739946, i64 2152740002, i64 2152740036, i64 2152740060, i64 2152740101, i64 2152740122, i64 2152740150, i64 2152740184}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2152756442}
!22 = !{i64 2148991884}
!23 = !{i64 2149014887}
!24 = !{i64 2152760307}
!25 = !{i64 2152790492}
