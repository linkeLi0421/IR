; ModuleID = '/llk/IR/drivers/gpu/drm/drm_syncobj.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_syncobj.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_syncobj_find:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_syncobj_find\22\09\09\09\09\09"
module asm "__kstrtabns_drm_syncobj_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_syncobj_add_point:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_syncobj_add_point\22\09\09\09\09\09"
module asm "__kstrtabns_drm_syncobj_add_point:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_syncobj_replace_fence:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_syncobj_replace_fence\22\09\09\09\09\09"
module asm "__kstrtabns_drm_syncobj_replace_fence:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_syncobj_find_fence:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_syncobj_find_fence\22\09\09\09\09\09"
module asm "__kstrtabns_drm_syncobj_find_fence:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_syncobj_free:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_syncobj_free\22\09\09\09\09\09"
module asm "__kstrtabns_drm_syncobj_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_syncobj_create:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_syncobj_create\22\09\09\09\09\09"
module asm "__kstrtabns_drm_syncobj_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_syncobj_get_handle:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_syncobj_get_handle\22\09\09\09\09\09"
module asm "__kstrtabns_drm_syncobj_get_handle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_syncobj_get_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_syncobj_get_fd\22\09\09\09\09\09"
module asm "__kstrtabns_drm_syncobj_get_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_timeout_abs_to_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_timeout_abs_to_jiffies\22\09\09\09\09\09"
module asm "__kstrtabns_drm_timeout_abs_to_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.1, i64, i64, i32, %struct.kref, i32 }
%union.anon.1 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_syncobj = type { %struct.kref, ptr, %struct.list_head, %struct.spinlock, ptr }
%struct.syncobj_wait_entry = type { %struct.list_head, ptr, ptr, %struct.dma_fence_cb, i64 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.52, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.23 }
%struct.llist_node = type { ptr }
%union.anon.23 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.52 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.66, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.67, ptr, i32, ptr, i8, i32 }
%struct.anon.66 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.67 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_syncobj_create = type { i32, i32 }
%struct.drm_syncobj_destroy = type { i32, i32 }
%struct.drm_syncobj_handle = type { i32, i32, i32, i32 }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.drm_syncobj_transfer = type { i32, i32, i64, i64, i32, i32 }
%struct.drm_syncobj_wait = type { i64, i64, i32, i32, i32, i32 }
%struct.drm_syncobj_timeline_wait = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.drm_syncobj_array = type { i64, i32, i32 }
%struct.drm_syncobj_timeline_array = type { i64, i64, i32, i32 }
%struct.dma_fence_chain = type { %struct.dma_fence, ptr, i64, ptr, %union.anon.68, %struct.spinlock }
%union.anon.68 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.rcuwait = type { ptr }

@__kstrtab_drm_syncobj_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_syncobj_find = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_syncobj_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_syncobj_find to i32), ptr @__kstrtab_drm_syncobj_find, ptr @__kstrtabns_drm_syncobj_find }, section "___ksymtab+drm_syncobj_find", align 4
@.str = private unnamed_addr constant [46 x i8] c"You are adding an unorder point to timeline!\0A\00", align 1
@__kstrtab_drm_syncobj_add_point = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_syncobj_add_point = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_syncobj_add_point = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_syncobj_add_point to i32), ptr @__kstrtab_drm_syncobj_add_point, ptr @__kstrtabns_drm_syncobj_add_point }, section "___ksymtab+drm_syncobj_add_point", align 4
@__kstrtab_drm_syncobj_replace_fence = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_syncobj_replace_fence = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_syncobj_replace_fence = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_syncobj_replace_fence to i32), ptr @__kstrtab_drm_syncobj_replace_fence, ptr @__kstrtabns_drm_syncobj_replace_fence }, section "___ksymtab+drm_syncobj_replace_fence", align 4
@__kstrtab_drm_syncobj_find_fence = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_syncobj_find_fence = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_syncobj_find_fence = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_syncobj_find_fence to i32), ptr @__kstrtab_drm_syncobj_find_fence, ptr @__kstrtabns_drm_syncobj_find_fence }, section "___ksymtab+drm_syncobj_find_fence", align 4
@__kstrtab_drm_syncobj_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_syncobj_free = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_syncobj_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_syncobj_free to i32), ptr @__kstrtab_drm_syncobj_free, ptr @__kstrtabns_drm_syncobj_free }, section "___ksymtab+drm_syncobj_free", align 4
@__kstrtab_drm_syncobj_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_syncobj_create = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_syncobj_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_syncobj_create to i32), ptr @__kstrtab_drm_syncobj_create, ptr @__kstrtabns_drm_syncobj_create }, section "___ksymtab+drm_syncobj_create", align 4
@__kstrtab_drm_syncobj_get_handle = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_syncobj_get_handle = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_syncobj_get_handle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_syncobj_get_handle to i32), ptr @__kstrtab_drm_syncobj_get_handle, ptr @__kstrtabns_drm_syncobj_get_handle }, section "___ksymtab+drm_syncobj_get_handle", align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"syncobj_file\00", align 1
@drm_syncobj_file_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @drm_syncobj_file_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_drm_syncobj_get_fd = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_syncobj_get_fd = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_syncobj_get_fd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_syncobj_get_fd to i32), ptr @__kstrtab_drm_syncobj_get_fd, ptr @__kstrtabns_drm_syncobj_get_fd }, section "___ksymtab+drm_syncobj_get_fd", align 4
@__kstrtab_drm_timeout_abs_to_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_timeout_abs_to_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_timeout_abs_to_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_timeout_abs_to_jiffies to i32), ptr @__kstrtab_drm_timeout_abs_to_jiffies, ptr @__kstrtabns_drm_timeout_abs_to_jiffies }, section "___ksymtab+drm_timeout_abs_to_jiffies", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@dma_fence_chain_ops = external dso_local constant %struct.dma_fence_ops, align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_drm_syncobj_add_point, ptr @__ksymtab_drm_syncobj_create, ptr @__ksymtab_drm_syncobj_find, ptr @__ksymtab_drm_syncobj_find_fence, ptr @__ksymtab_drm_syncobj_free, ptr @__ksymtab_drm_syncobj_get_fd, ptr @__ksymtab_drm_syncobj_get_handle, ptr @__ksymtab_drm_syncobj_replace_fence, ptr @__ksymtab_drm_timeout_abs_to_jiffies], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_syncobj_find(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 16
  %5 = tail call ptr @idr_find(ptr noundef %4, i32 noundef %1) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #10, !srcloc !9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #10, !srcloc !10
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !11

11:                                               ; preds = %7
  %12 = add i32 %9, 1
  %13 = or i32 %12, %9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %17, label %15, !prof !12

15:                                               ; preds = %11, %7
  %16 = phi i32 [ 2, %7 ], [ 1, %11 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef %16) #10
  br label %17

17:                                               ; preds = %15, %11, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %18 = load i16, ptr %3, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  ret ptr %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_syncobj_add_point(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.dma_fence, ptr %2, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #10, !srcloc !9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #10, !srcloc !10
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !11

11:                                               ; preds = %6
  %12 = add i32 %9, 1
  %13 = or i32 %12, %9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %17, label %15, !prof !12

15:                                               ; preds = %11, %6
  %16 = phi i32 [ 2, %6 ], [ 1, %11 ]
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef %16) #10
  br label %17

17:                                               ; preds = %15, %11, %4
  %18 = getelementptr inbounds %struct.drm_syncobj, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %18) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %19 = getelementptr inbounds %struct.drm_syncobj, ptr %0, i32 0, i32 1
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %61, label %22

22:                                               ; preds = %58, %17
  %23 = phi ptr [ %59, %58 ], [ %20, %17 ]
  %24 = getelementptr inbounds %struct.dma_fence, ptr %23, i32 0, i32 6
  %25 = load volatile i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %37, %22
  %28 = phi i32 [ %35, %37 ], [ %25, %22 ]
  %29 = add i32 %28, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #10, !srcloc !9
  br label %30

30:                                               ; preds = %30, %27
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 %28, i32 %29, ptr elementtype(i32) %24) #10, !srcloc !18
  %32 = extractvalue { i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %30

34:                                               ; preds = %30
  %35 = extractvalue { i32, i32 } %31, 1
  %36 = icmp eq i32 %35, %28
  br i1 %36, label %39, label %37, !prof !12

37:                                               ; preds = %34
  %38 = icmp eq i32 %35, 0
  br i1 %38, label %39, label %27

39:                                               ; preds = %37, %34, %22
  %40 = phi i32 [ 0, %22 ], [ 0, %37 ], [ %28, %34 ]
  %41 = add i32 %40, 1
  %42 = or i32 %41, %40
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %45, label %44, !prof !12

44:                                               ; preds = %39
  tail call void @refcount_warn_saturate(ptr noundef %24, i32 noundef 0) #10
  br label %45

45:                                               ; preds = %44, %39
  %46 = icmp eq i32 %40, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %45
  %48 = load volatile ptr, ptr %19, align 4
  %49 = icmp eq ptr %23, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #10, !srcloc !9
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #10, !srcloc !20
  %52 = extractvalue { i32, i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = icmp sgt i32 %52, 0
  br i1 %55, label %58, label %56, !prof !12

56:                                               ; preds = %54
  tail call void @refcount_warn_saturate(ptr noundef %24, i32 noundef 3) #10
  br label %58

57:                                               ; preds = %50
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @dma_fence_release(ptr noundef %24) #10, !callees !22
  br label %58

58:                                               ; preds = %57, %56, %54, %45
  %59 = load volatile ptr, ptr %19, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %22

61:                                               ; preds = %58, %17
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  br label %69

62:                                               ; preds = %47
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %63 = icmp eq ptr %23, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.dma_fence, ptr %23, i32 0, i32 4
  %66 = load i64, ptr %65, align 8
  %67 = icmp ult i64 %66, %3
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #10
  br label %69

69:                                               ; preds = %68, %64, %62, %61
  %70 = phi i1 [ true, %61 ], [ false, %68 ], [ false, %64 ], [ true, %62 ]
  %71 = phi ptr [ null, %61 ], [ %23, %68 ], [ %23, %64 ], [ null, %62 ]
  tail call void @dma_fence_chain_init(ptr noundef %1, ptr noundef %71, ptr noundef %2, i64 noundef %3) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !24
  store volatile ptr %1, ptr %19, align 4
  %72 = getelementptr inbounds %struct.drm_syncobj, ptr %0, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, %72
  br i1 %74, label %79, label %75

75:                                               ; preds = %75, %69
  %76 = phi ptr [ %77, %75 ], [ %73, %69 ]
  %77 = load ptr, ptr %76, align 8
  tail call fastcc void @syncobj_wait_syncobj_func(ptr noundef %0, ptr noundef %76)
  %78 = icmp eq ptr %77, %72
  br i1 %78, label %79, label %75

79:                                               ; preds = %75, %69
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %80 = load i16, ptr %18, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br i1 %70, label %93, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.dma_fence, ptr %71, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %83) #10, !srcloc !9
  %84 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %83, ptr %83, i32 1, ptr elementtype(i32) %83) #10, !srcloc !10
  %85 = extractvalue { i32, i32, i32 } %84, 0
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87, !prof !11

87:                                               ; preds = %82
  %88 = add i32 %85, 1
  %89 = or i32 %88, %85
  %90 = icmp sgt i32 %89, -1
  br i1 %90, label %93, label %91, !prof !12

91:                                               ; preds = %87, %82
  %92 = phi i32 [ 2, %82 ], [ 1, %87 ]
  tail call void @refcount_warn_saturate(ptr noundef %83, i32 noundef %92) #10
  br label %93

93:                                               ; preds = %91, %87, %79
  %94 = icmp eq ptr %71, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %95, %93
  %96 = phi ptr [ %97, %95 ], [ %71, %93 ]
  %97 = tail call ptr @dma_fence_chain_walk(ptr noundef nonnull %96) #10
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %95

99:                                               ; preds = %95, %93
  br i1 %70, label %109, label %100

100:                                              ; preds = %99
  %101 = getelementptr inbounds %struct.dma_fence, ptr %71, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %101) #10, !srcloc !9
  %102 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %101, ptr %101, i32 1, ptr elementtype(i32) %101) #10, !srcloc !20
  %103 = extractvalue { i32, i32, i32 } %102, 0
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = icmp sgt i32 %103, 0
  br i1 %106, label %109, label %107, !prof !12

107:                                              ; preds = %105
  tail call void @refcount_warn_saturate(ptr noundef %101, i32 noundef 3) #10
  br label %109

108:                                              ; preds = %100
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @dma_fence_release(ptr noundef %101) #10, !callees !22
  br label %109

109:                                              ; preds = %108, %107, %105, %99
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_chain_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @syncobj_wait_syncobj_func(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.drm_syncobj, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  store ptr %5, ptr %3, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %48, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #10, !srcloc !9
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #10, !srcloc !10
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !prof !11

12:                                               ; preds = %7
  %13 = add i32 %10, 1
  %14 = or i32 %13, %10
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %18, label %16, !prof !12

16:                                               ; preds = %12, %7
  %17 = phi i32 [ 2, %7 ], [ 1, %12 ]
  tail call void @refcount_warn_saturate(ptr noundef %8, i32 noundef %17) #10
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.syncobj_wait_entry, ptr %1, i32 0, i32 4
  %20 = load i64, ptr %19, align 8
  %21 = call i32 @dma_fence_chain_find_seqno(ptr noundef nonnull %3, i64 noundef %20) #10
  %22 = icmp eq i32 %21, 0
  %23 = load ptr, ptr %3, align 4
  %24 = icmp eq ptr %23, null
  br i1 %22, label %35, label %25

25:                                               ; preds = %18
  br i1 %24, label %48, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.dma_fence, ptr %23, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #10, !srcloc !9
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #10, !srcloc !20
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = icmp sgt i32 %29, 0
  br i1 %32, label %48, label %33, !prof !12

33:                                               ; preds = %31
  call void @refcount_warn_saturate(ptr noundef %27, i32 noundef 3) #10
  br label %48

34:                                               ; preds = %26
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  call void @dma_fence_release(ptr noundef %27) #10, !callees !22
  br label %48

35:                                               ; preds = %18
  br i1 %24, label %36, label %38

36:                                               ; preds = %35
  %37 = call ptr @dma_fence_get_stub() #10
  br label %38

38:                                               ; preds = %36, %35
  %39 = phi ptr [ %37, %36 ], [ %23, %35 ]
  %40 = getelementptr inbounds %struct.syncobj_wait_entry, ptr %1, i32 0, i32 2
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.syncobj_wait_entry, ptr %1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  %43 = call i32 @wake_up_process(ptr noundef %42) #10
  %44 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %1, align 4
  %47 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %45, ptr %47, align 4
  store volatile ptr %46, ptr %45, align 4
  store volatile ptr %1, ptr %1, align 4
  store ptr %1, ptr %44, align 4
  br label %48

48:                                               ; preds = %38, %34, %33, %31, %25, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_fence_chain_walk(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_syncobj_replace_fence(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #10, !srcloc !9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #10, !srcloc !10
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9, !prof !11

9:                                                ; preds = %4
  %10 = add i32 %7, 1
  %11 = or i32 %10, %7
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %15, label %13, !prof !12

13:                                               ; preds = %9, %4
  %14 = phi i32 [ 2, %4 ], [ 1, %9 ]
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef %14) #10
  br label %15

15:                                               ; preds = %13, %9, %2
  %16 = getelementptr inbounds %struct.drm_syncobj, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %16) #10
  %17 = getelementptr inbounds %struct.drm_syncobj, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !25
  store volatile ptr %1, ptr %17, align 4
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.drm_syncobj, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %28, label %24

24:                                               ; preds = %24, %20
  %25 = phi ptr [ %26, %24 ], [ %22, %20 ]
  %26 = load ptr, ptr %25, align 8
  tail call fastcc void @syncobj_wait_syncobj_func(ptr noundef %0, ptr noundef %25)
  %27 = icmp eq ptr %26, %21
  br i1 %27, label %28, label %24

28:                                               ; preds = %24, %20, %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %29 = load i16, ptr %16, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %31 = icmp eq ptr %18, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.dma_fence, ptr %18, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #10, !srcloc !9
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #10, !srcloc !20
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %41, label %39, !prof !12

39:                                               ; preds = %37
  tail call void @refcount_warn_saturate(ptr noundef %33, i32 noundef 3) #10
  br label %41

40:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @dma_fence_release(ptr noundef %33) #10, !callees !22
  br label %41

41:                                               ; preds = %40, %39, %37, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_syncobj_find_fence(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.syncobj_wait_entry, align 8
  %7 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 16
  %9 = tail call ptr @idr_find(ptr noundef %8, i32 noundef %1) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #10, !srcloc !9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #10, !srcloc !10
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !11

15:                                               ; preds = %11
  %16 = add i32 %13, 1
  %17 = or i32 %16, %13
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %21, label %19, !prof !12

19:                                               ; preds = %15, %11
  %20 = phi i32 [ 2, %11 ], [ 1, %15 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %9, i32 noundef %20) #10
  br label %21

21:                                               ; preds = %19, %15, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %22 = load i16, ptr %7, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i32 40, i1 false), !annotation !26
  %24 = tail call i64 @nsecs_to_jiffies64(i64 noundef 5000000000) #10
  br i1 %10, label %140, label %25

25:                                               ; preds = %21
  %26 = and i64 %3, 2
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %27 = getelementptr inbounds %struct.drm_syncobj, ptr %9, i32 0, i32 1
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %69, label %30

30:                                               ; preds = %66, %25
  %31 = phi ptr [ %67, %66 ], [ %28, %25 ]
  %32 = getelementptr inbounds %struct.dma_fence, ptr %31, i32 0, i32 6
  %33 = load volatile i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %45, %30
  %36 = phi i32 [ %43, %45 ], [ %33, %30 ]
  %37 = add i32 %36, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #10, !srcloc !9
  br label %38

38:                                               ; preds = %38, %35
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 %36, i32 %37, ptr elementtype(i32) %32) #10, !srcloc !18
  %40 = extractvalue { i32, i32 } %39, 0
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %38

42:                                               ; preds = %38
  %43 = extractvalue { i32, i32 } %39, 1
  %44 = icmp eq i32 %43, %36
  br i1 %44, label %47, label %45, !prof !12

45:                                               ; preds = %42
  %46 = icmp eq i32 %43, 0
  br i1 %46, label %47, label %35

47:                                               ; preds = %45, %42, %30
  %48 = phi i32 [ 0, %30 ], [ 0, %45 ], [ %36, %42 ]
  %49 = add i32 %48, 1
  %50 = or i32 %49, %48
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %53, label %52, !prof !12

52:                                               ; preds = %47
  tail call void @refcount_warn_saturate(ptr noundef %32, i32 noundef 0) #10
  br label %53

53:                                               ; preds = %52, %47
  %54 = icmp eq i32 %48, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %53
  %56 = load volatile ptr, ptr %27, align 4
  %57 = icmp eq ptr %31, %56
  br i1 %57, label %70, label %58

58:                                               ; preds = %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #10, !srcloc !9
  %59 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #10, !srcloc !20
  %60 = extractvalue { i32, i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = icmp sgt i32 %60, 0
  br i1 %63, label %66, label %64, !prof !12

64:                                               ; preds = %62
  tail call void @refcount_warn_saturate(ptr noundef %32, i32 noundef 3) #10
  br label %66

65:                                               ; preds = %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @dma_fence_release(ptr noundef %32) #10, !callees !22
  br label %66

66:                                               ; preds = %65, %64, %62, %53
  %67 = load volatile ptr, ptr %27, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %30

69:                                               ; preds = %66, %25
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  store ptr null, ptr %4, align 4
  br label %90

70:                                               ; preds = %55
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  store ptr %31, ptr %4, align 4
  %71 = icmp eq ptr %31, null
  br i1 %71, label %90, label %72

72:                                               ; preds = %70
  %73 = tail call i32 @dma_fence_chain_find_seqno(ptr noundef %4, i64 noundef %2) #10
  %74 = icmp eq i32 %73, 0
  %75 = load ptr, ptr %4, align 4
  %76 = icmp eq ptr %75, null
  br i1 %74, label %77, label %80

77:                                               ; preds = %72
  br i1 %76, label %78, label %131

78:                                               ; preds = %77
  %79 = tail call ptr @dma_fence_get_stub() #10
  store ptr %79, ptr %4, align 4
  br label %131

80:                                               ; preds = %72
  br i1 %76, label %90, label %81

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.dma_fence, ptr %75, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %82) #10, !srcloc !9
  %83 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %82, ptr %82, i32 1, ptr elementtype(i32) %82) #10, !srcloc !20
  %84 = extractvalue { i32, i32, i32 } %83, 0
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = icmp sgt i32 %84, 0
  br i1 %87, label %90, label %88, !prof !12

88:                                               ; preds = %86
  tail call void @refcount_warn_saturate(ptr noundef %82, i32 noundef 3) #10
  br label %90

89:                                               ; preds = %81
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @dma_fence_release(ptr noundef %82) #10, !callees !22
  br label %90

90:                                               ; preds = %89, %88, %86, %80, %70, %69
  %91 = phi i32 [ -22, %70 ], [ -22, %69 ], [ %73, %80 ], [ %73, %86 ], [ %73, %88 ], [ %73, %89 ]
  %92 = icmp eq i64 %26, 0
  br i1 %92, label %131, label %93

93:                                               ; preds = %90
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i32 32, i1 false)
  %94 = tail call ptr @llvm.thread.pointer() #10
  %95 = getelementptr inbounds %struct.syncobj_wait_entry, ptr %6, i32 0, i32 1
  store ptr %94, ptr %95, align 8
  %96 = getelementptr inbounds %struct.syncobj_wait_entry, ptr %6, i32 0, i32 4
  store i64 %2, ptr %96, align 8
  call fastcc void @drm_syncobj_fence_add_wait(ptr noundef nonnull %9, ptr noundef nonnull %6)
  %97 = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 1
  store volatile i32 1, ptr %97, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  %98 = getelementptr inbounds %struct.syncobj_wait_entry, ptr %6, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %118

101:                                              ; preds = %112, %93
  %102 = phi i64 [ %115, %112 ], [ %24, %93 ]
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %118, label %104

104:                                              ; preds = %101
  %105 = load volatile i32, ptr %94, align 4
  %106 = and i32 %105, 256
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %118, !prof !12

108:                                              ; preds = %104
  %109 = load volatile i32, ptr %94, align 4
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = trunc i64 %102 to i32
  %114 = call i32 @schedule_timeout(i32 noundef %113) #10
  %115 = sext i32 %114 to i64
  store volatile i32 1, ptr %97, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  %116 = load ptr, ptr %98, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %101, label %118

118:                                              ; preds = %112, %108, %104, %101, %93
  %119 = phi ptr [ %99, %93 ], [ null, %104 ], [ null, %108 ], [ null, %101 ], [ %116, %112 ]
  %120 = phi i32 [ 0, %93 ], [ -512, %104 ], [ -512, %108 ], [ -62, %101 ], [ 0, %112 ]
  store volatile i32 0, ptr %97, align 8
  store ptr %119, ptr %4, align 4
  %121 = load ptr, ptr %6, align 8
  %122 = icmp eq ptr %121, null
  br i1 %122, label %131, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.drm_syncobj, ptr %9, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %124) #10
  %125 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = load ptr, ptr %6, align 8
  %128 = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  store ptr %126, ptr %128, align 4
  store volatile ptr %127, ptr %126, align 4
  store volatile ptr %6, ptr %6, align 8
  store ptr %6, ptr %125, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %129 = load i16, ptr %124, align 4
  %130 = add i16 %129, 1
  store i16 %130, ptr %124, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %131

131:                                              ; preds = %123, %118, %90, %78, %77
  %132 = phi i32 [ %120, %123 ], [ %120, %118 ], [ %91, %90 ], [ 0, %77 ], [ 0, %78 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #10, !srcloc !9
  %133 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #10, !srcloc !20
  %134 = extractvalue { i32, i32, i32 } %133, 0
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %139, label %136

136:                                              ; preds = %131
  %137 = icmp sgt i32 %134, 0
  br i1 %137, label %140, label %138, !prof !12

138:                                              ; preds = %136
  call void @refcount_warn_saturate(ptr noundef nonnull %9, i32 noundef 3) #10
  br label %140

139:                                              ; preds = %131
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  call void @drm_syncobj_replace_fence(ptr noundef nonnull %9, ptr noundef null) #10
  call void @kfree(ptr noundef nonnull %9) #10
  br label %140

140:                                              ; preds = %139, %138, %136, %21
  %141 = phi i32 [ -2, %21 ], [ %132, %136 ], [ %132, %138 ], [ %132, %139 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10
  ret i32 %141
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nsecs_to_jiffies64(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_chain_find_seqno(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_fence_get_stub() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drm_syncobj_fence_add_wait(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.syncobj_wait_entry, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %53

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.drm_syncobj, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %8) #10
  %9 = getelementptr inbounds %struct.drm_syncobj, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.dma_fence, ptr %10, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #10, !srcloc !9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #10, !srcloc !10
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !11

17:                                               ; preds = %12
  %18 = add i32 %15, 1
  %19 = or i32 %18, %15
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %24, label %21, !prof !12

21:                                               ; preds = %17, %12
  %22 = phi i32 [ 2, %12 ], [ 1, %17 ]
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef %22) #10
  br label %24

23:                                               ; preds = %7
  store ptr null, ptr %3, align 4
  br label %41

24:                                               ; preds = %21, %17
  store ptr %10, ptr %3, align 4
  %25 = getelementptr inbounds %struct.syncobj_wait_entry, ptr %1, i32 0, i32 4
  %26 = load i64, ptr %25, align 8
  %27 = call i32 @dma_fence_chain_find_seqno(ptr noundef nonnull %3, i64 noundef %26) #10
  %28 = icmp eq i32 %27, 0
  %29 = load ptr, ptr %3, align 4
  %30 = icmp eq ptr %29, null
  br i1 %28, label %46, label %31

31:                                               ; preds = %24
  br i1 %30, label %41, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.dma_fence, ptr %29, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #10, !srcloc !9
  %34 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #10, !srcloc !20
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %41, label %39, !prof !12

39:                                               ; preds = %37
  call void @refcount_warn_saturate(ptr noundef %33, i32 noundef 3) #10
  br label %41

40:                                               ; preds = %32
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  call void @dma_fence_release(ptr noundef %33) #10, !callees !22
  br label %41

41:                                               ; preds = %40, %39, %37, %31, %23
  %42 = getelementptr inbounds %struct.drm_syncobj, ptr %0, i32 0, i32 2
  %43 = getelementptr inbounds %struct.drm_syncobj, ptr %0, i32 0, i32 2, i32 1
  %44 = load ptr, ptr %43, align 4
  store ptr %1, ptr %43, align 4
  store ptr %42, ptr %1, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %44, ptr %45, align 4
  store volatile ptr %1, ptr %44, align 4
  br label %50

46:                                               ; preds = %24
  br i1 %30, label %47, label %49

47:                                               ; preds = %46
  %48 = call ptr @dma_fence_get_stub() #10
  store ptr %48, ptr %4, align 4
  br label %50

49:                                               ; preds = %46
  store ptr %29, ptr %4, align 4
  br label %50

50:                                               ; preds = %49, %47, %41
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %51 = load i16, ptr %8, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %8, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %53

53:                                               ; preds = %50, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_syncobj_free(ptr noundef %0) #0 {
  tail call void @drm_syncobj_replace_fence(ptr noundef %0, ptr noundef null)
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_syncobj_create(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 24) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  store volatile i32 1, ptr %5, align 8
  %8 = getelementptr inbounds %struct.drm_syncobj, ptr %5, i32 0, i32 2
  store volatile ptr %8, ptr %8, align 8
  %9 = getelementptr inbounds %struct.drm_syncobj, ptr %5, i32 0, i32 2, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.drm_syncobj, ptr %5, i32 0, i32 3
  store i32 0, ptr %10, align 8
  %11 = and i32 %1, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %7
  %14 = tail call ptr @dma_fence_allocate_private_stub() #10
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  tail call void @drm_syncobj_replace_fence(ptr noundef nonnull %5, ptr noundef %14) #10
  %17 = icmp eq ptr %14, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.dma_fence, ptr %14, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #10, !srcloc !9
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #10, !srcloc !20
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = icmp sgt i32 %21, 0
  br i1 %24, label %38, label %25, !prof !12

25:                                               ; preds = %23
  tail call void @refcount_warn_saturate(ptr noundef %19, i32 noundef 3) #10
  br label %38

26:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @dma_fence_release(ptr noundef %19) #10, !callees !22
  br label %38

27:                                               ; preds = %13
  %28 = ptrtoint ptr %14 to i32
  %29 = icmp slt ptr %14, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #10, !srcloc !9
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #10, !srcloc !20
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = icmp sgt i32 %32, 0
  br i1 %35, label %42, label %36, !prof !12

36:                                               ; preds = %34
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #10
  br label %42

37:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @drm_syncobj_replace_fence(ptr noundef nonnull %5, ptr noundef null) #10
  tail call void @kfree(ptr noundef nonnull %5) #10
  br label %42

38:                                               ; preds = %27, %26, %25, %23, %16, %7
  %39 = icmp eq ptr %2, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %38
  tail call void @drm_syncobj_replace_fence(ptr noundef nonnull %5, ptr noundef nonnull %2)
  br label %41

41:                                               ; preds = %40, %38
  store ptr %5, ptr %0, align 4
  br label %42

42:                                               ; preds = %41, %37, %36, %34, %3
  %43 = phi i32 [ 0, %41 ], [ -12, %3 ], [ %28, %34 ], [ %28, %36 ], [ %28, %37 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_syncobj_get_handle(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #10, !srcloc !9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #10, !srcloc !10
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7, !prof !11

7:                                                ; preds = %3
  %8 = add i32 %5, 1
  %9 = or i32 %8, %5
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %13, label %11, !prof !12

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 2, %3 ], [ 1, %7 ]
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %12) #10
  br label %13

13:                                               ; preds = %11, %7
  tail call void @idr_preload(i32 noundef 3264) #10
  %14 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %14) #10
  %15 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 16
  %16 = tail call i32 @idr_alloc(ptr noundef %15, ptr noundef %1, i32 noundef 1, i32 noundef 0, i32 noundef 2048) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %17 = load i16, ptr %14, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #8, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !29
  %22 = icmp slt i32 %16, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #10, !srcloc !9
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #10, !srcloc !20
  %25 = extractvalue { i32, i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = icmp sgt i32 %25, 0
  br i1 %28, label %32, label %29, !prof !12

29:                                               ; preds = %27
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #10
  br label %32

30:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @drm_syncobj_replace_fence(ptr noundef %1, ptr noundef null) #10
  tail call void @kfree(ptr noundef %1) #10
  br label %32

31:                                               ; preds = %13
  store i32 %16, ptr %2, align 4
  br label %32

32:                                               ; preds = %31, %30, %29, %27
  %33 = phi i32 [ 0, %31 ], [ %16, %27 ], [ %16, %29 ], [ %16, %30 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_syncobj_get_fd(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call i32 @get_unused_fd_flags(i32 noundef 524288) #10
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @anon_inode_getfile(ptr noundef nonnull @.str.1, ptr noundef nonnull @drm_syncobj_file_fops, ptr noundef %0, i32 noundef 0) #10
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  tail call void @put_unused_fd(i32 noundef %3) #10
  %9 = ptrtoint ptr %6 to i32
  br label %21

10:                                               ; preds = %5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #10, !srcloc !9
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #10, !srcloc !10
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !11

14:                                               ; preds = %10
  %15 = add i32 %12, 1
  %16 = or i32 %15, %12
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %20, label %18, !prof !12

18:                                               ; preds = %14, %10
  %19 = phi i32 [ 2, %10 ], [ 1, %14 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %19) #10
  br label %20

20:                                               ; preds = %18, %14
  tail call void @fd_install(i32 noundef %3, ptr noundef %6) #10
  store i32 %3, ptr %1, align 4
  br label %21

21:                                               ; preds = %20, %8, %2
  %22 = phi i32 [ %9, %8 ], [ 0, %20 ], [ %3, %2 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_inode_getfile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @drm_syncobj_open(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 16
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 16, i32 0, i32 1
  store i32 33554436, ptr %3, align 4
  %4 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 16, i32 0, i32 2
  store ptr null, ptr %4, align 4
  %5 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 16, i32 1
  store i32 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 16, i32 2
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 17
  store i32 0, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_syncobj_release(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 16
  %3 = tail call i32 @idr_for_each(ptr noundef %2, ptr noundef nonnull @drm_syncobj_release_handle, ptr noundef %0) #10
  tail call void @idr_destroy(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_syncobj_release_handle(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #10, !srcloc !9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #10, !srcloc !20
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %11, label %9, !prof !12

9:                                                ; preds = %7
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #10
  br label %11

10:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @drm_syncobj_replace_fence(ptr noundef %1, ptr noundef null) #10
  tail call void @kfree(ptr noundef %1) #10
  br label %11

11:                                               ; preds = %10, %9, %7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_syncobj_create_ioctl(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %8, 32
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 32
  br i1 %13, label %14, label %33

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.drm_syncobj_create, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !26
  %19 = call i32 @drm_syncobj_create(ptr noundef nonnull %4, i32 noundef %16, ptr noundef null) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load ptr, ptr %4, align 4
  %23 = tail call i32 @drm_syncobj_get_handle(ptr noundef %2, ptr noundef %22, ptr noundef %1) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #10, !srcloc !9
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #10, !srcloc !20
  %25 = extractvalue { i32, i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = icmp sgt i32 %25, 0
  br i1 %28, label %31, label %29, !prof !12

29:                                               ; preds = %27
  tail call void @refcount_warn_saturate(ptr noundef %22, i32 noundef 3) #10
  br label %31

30:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @drm_syncobj_replace_fence(ptr noundef %22, ptr noundef null) #10
  tail call void @kfree(ptr noundef %22) #10
  br label %31

31:                                               ; preds = %30, %29, %27, %18
  %32 = phi i32 [ %19, %18 ], [ %23, %27 ], [ %23, %29 ], [ %23, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %33

33:                                               ; preds = %31, %14, %3
  %34 = phi i32 [ %32, %31 ], [ -95, %3 ], [ -22, %14 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_syncobj_destroy_ioctl(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %7, 32
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 32
  br i1 %12, label %13, label %33

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.drm_syncobj_destroy, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load i32, ptr %1, align 4
  %19 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %19) #10
  %20 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 16
  %21 = tail call ptr @idr_remove(ptr noundef %20, i32 noundef %18) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %22 = load i16, ptr %19, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %24 = icmp eq ptr %21, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %21) #10, !srcloc !9
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %21, ptr nonnull %21, i32 1, ptr nonnull elementtype(i32) %21) #10, !srcloc !20
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = icmp sgt i32 %27, 0
  br i1 %30, label %33, label %31, !prof !12

31:                                               ; preds = %29
  tail call void @refcount_warn_saturate(ptr noundef nonnull %21, i32 noundef 3) #10
  br label %33

32:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @drm_syncobj_replace_fence(ptr noundef nonnull %21, ptr noundef null) #10
  tail call void @kfree(ptr noundef nonnull %21) #10
  br label %33

33:                                               ; preds = %32, %31, %29, %17, %13, %3
  %34 = phi i32 [ -95, %3 ], [ -22, %13 ], [ -22, %17 ], [ 0, %29 ], [ 0, %31 ], [ 0, %32 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_syncobj_handle_to_fd_ioctl(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %8, 32
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 32
  br i1 %13, label %14, label %86

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.drm_syncobj_handle, ptr %1, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %86

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.drm_syncobj_handle, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %22, label %86

22:                                               ; preds = %18
  %23 = icmp eq i32 %20, 0
  %24 = load i32, ptr %1, align 4
  %25 = getelementptr inbounds %struct.drm_syncobj_handle, ptr %1, i32 0, i32 2
  br i1 %23, label %54, label %26

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !26
  %27 = tail call i32 @get_unused_fd_flags(i32 noundef 524288) #10
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %26
  %30 = call i32 @drm_syncobj_find_fence(ptr noundef %2, i32 noundef %24, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %4) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = load ptr, ptr %4, align 4
  %34 = call ptr @sync_file_create(ptr noundef %33) #10
  %35 = load ptr, ptr %4, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.dma_fence, ptr %35, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #10, !srcloc !9
  %39 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #10, !srcloc !20
  %40 = extractvalue { i32, i32, i32 } %39, 0
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = icmp sgt i32 %40, 0
  br i1 %43, label %46, label %44, !prof !12

44:                                               ; preds = %42
  call void @refcount_warn_saturate(ptr noundef %38, i32 noundef 3) #10
  br label %46

45:                                               ; preds = %37
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  call void @dma_fence_release(ptr noundef %38) #10, !callees !22
  br label %46

46:                                               ; preds = %45, %44, %42, %32
  %47 = icmp eq ptr %34, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %46
  %49 = load ptr, ptr %34, align 4
  call void @fd_install(i32 noundef %27, ptr noundef %49) #10
  store i32 %27, ptr %25, align 4
  br label %52

50:                                               ; preds = %46, %29
  %51 = phi i32 [ %30, %29 ], [ -22, %46 ]
  call void @put_unused_fd(i32 noundef %27) #10
  br label %52

52:                                               ; preds = %50, %48, %26
  %53 = phi i32 [ %51, %50 ], [ 0, %48 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %86

54:                                               ; preds = %22
  %55 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %55) #10
  %56 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 16
  %57 = tail call ptr @idr_find(ptr noundef %56, i32 noundef %24) #10
  %58 = icmp eq ptr %57, null
  br i1 %58, label %83, label %59

59:                                               ; preds = %54
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %57) #10, !srcloc !9
  %60 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %57, ptr nonnull %57, i32 1, ptr nonnull elementtype(i32) %57) #10, !srcloc !10
  %61 = extractvalue { i32, i32, i32 } %60, 0
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63, !prof !11

63:                                               ; preds = %59
  %64 = add i32 %61, 1
  %65 = or i32 %64, %61
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %71, label %67, !prof !12

67:                                               ; preds = %63, %59
  %68 = phi i32 [ 2, %59 ], [ 1, %63 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %57, i32 noundef %68) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %69 = load i16, ptr %55, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %55, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %74

71:                                               ; preds = %63
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %72 = load i16, ptr %55, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %55, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %74

74:                                               ; preds = %71, %67
  %75 = tail call i32 @drm_syncobj_get_fd(ptr noundef nonnull %57, ptr noundef %25) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %57) #10, !srcloc !9
  %76 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %57, ptr nonnull %57, i32 1, ptr nonnull elementtype(i32) %57) #10, !srcloc !20
  %77 = extractvalue { i32, i32, i32 } %76, 0
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = icmp sgt i32 %77, 0
  br i1 %80, label %86, label %81, !prof !12

81:                                               ; preds = %79
  tail call void @refcount_warn_saturate(ptr noundef nonnull %57, i32 noundef 3) #10
  br label %86

82:                                               ; preds = %74
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @drm_syncobj_replace_fence(ptr noundef nonnull %57, ptr noundef null) #10
  tail call void @kfree(ptr noundef nonnull %57) #10
  br label %86

83:                                               ; preds = %54
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %84 = load i16, ptr %55, align 4
  %85 = add i16 %84, 1
  store i16 %85, ptr %55, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %86

86:                                               ; preds = %83, %82, %81, %79, %52, %18, %14, %3
  %87 = phi i32 [ %53, %52 ], [ -95, %3 ], [ -22, %14 ], [ -22, %18 ], [ %75, %79 ], [ %75, %81 ], [ %75, %82 ], [ -22, %83 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_syncobj_fd_to_handle_ioctl(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %7, 32
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 32
  br i1 %12, label %13, label %126

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.drm_syncobj_handle, ptr %1, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %126

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.drm_syncobj_handle, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %21, label %126

21:                                               ; preds = %17
  %22 = icmp eq i32 %19, 0
  %23 = getelementptr inbounds %struct.drm_syncobj_handle, ptr %1, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  br i1 %22, label %77, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %1, align 4
  %27 = tail call ptr @sync_file_get_fence(i32 noundef %24) #10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %126, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %30) #10
  %31 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 16
  %32 = tail call ptr @idr_find(ptr noundef %31, i32 noundef %26) #10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %32) #10, !srcloc !9
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %32, ptr nonnull %32, i32 1, ptr nonnull elementtype(i32) %32) #10, !srcloc !10
  %36 = extractvalue { i32, i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38, !prof !11

38:                                               ; preds = %34
  %39 = add i32 %36, 1
  %40 = or i32 %39, %36
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %57, label %42, !prof !12

42:                                               ; preds = %38, %34
  %43 = phi i32 [ 2, %34 ], [ 1, %38 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %32, i32 noundef %43) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %44 = load i16, ptr %30, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %60

46:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %47 = load i16, ptr %30, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %49 = getelementptr inbounds %struct.dma_fence, ptr %27, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #10, !srcloc !9
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #10, !srcloc !20
  %51 = extractvalue { i32, i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = icmp sgt i32 %51, 0
  br i1 %54, label %126, label %55, !prof !12

55:                                               ; preds = %53
  tail call void @refcount_warn_saturate(ptr noundef %49, i32 noundef 3) #10
  br label %126

56:                                               ; preds = %46
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @dma_fence_release(ptr noundef %49) #10, !callees !22
  br label %126

57:                                               ; preds = %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %58 = load i16, ptr %30, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %60

60:                                               ; preds = %57, %42
  tail call void @drm_syncobj_replace_fence(ptr noundef nonnull %32, ptr noundef nonnull %27) #10
  %61 = getelementptr inbounds %struct.dma_fence, ptr %27, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %61) #10, !srcloc !9
  %62 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %61, ptr %61, i32 1, ptr elementtype(i32) %61) #10, !srcloc !20
  %63 = extractvalue { i32, i32, i32 } %62, 0
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = icmp sgt i32 %63, 0
  br i1 %66, label %69, label %67, !prof !12

67:                                               ; preds = %65
  tail call void @refcount_warn_saturate(ptr noundef %61, i32 noundef 3) #10
  br label %69

68:                                               ; preds = %60
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @dma_fence_release(ptr noundef %61) #10, !callees !22
  br label %69

69:                                               ; preds = %68, %67, %65
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %32) #10, !srcloc !9
  %70 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %32, ptr nonnull %32, i32 1, ptr nonnull elementtype(i32) %32) #10, !srcloc !20
  %71 = extractvalue { i32, i32, i32 } %70, 0
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = icmp sgt i32 %71, 0
  br i1 %74, label %126, label %75, !prof !12

75:                                               ; preds = %73
  tail call void @refcount_warn_saturate(ptr noundef nonnull %32, i32 noundef 3) #10
  br label %126

76:                                               ; preds = %69
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @drm_syncobj_replace_fence(ptr noundef nonnull %32, ptr noundef null) #10
  tail call void @kfree(ptr noundef nonnull %32) #10
  br label %126

77:                                               ; preds = %21
  %78 = tail call i32 @__fdget(i32 noundef %24) #10, !noalias !30
  %79 = and i32 %78, -4
  %80 = inttoptr i32 %79 to ptr
  %81 = icmp eq i32 %79, 0
  br i1 %81, label %126, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.file, ptr %80, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, @drm_syncobj_file_fops
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = and i32 %78, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %126, label %124

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.file, ptr %80, i32 0, i32 15
  %91 = load ptr, ptr %90, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #10, !srcloc !9
  %92 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %91, ptr %91, i32 1, ptr elementtype(i32) %91) #10, !srcloc !10
  %93 = extractvalue { i32, i32, i32 } %92, 0
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95, !prof !11

95:                                               ; preds = %89
  %96 = add i32 %93, 1
  %97 = or i32 %96, %93
  %98 = icmp sgt i32 %97, -1
  br i1 %98, label %101, label %99, !prof !12

99:                                               ; preds = %95, %89
  %100 = phi i32 [ 2, %89 ], [ 1, %95 ]
  tail call void @refcount_warn_saturate(ptr noundef %91, i32 noundef %100) #10
  br label %101

101:                                              ; preds = %99, %95
  tail call void @idr_preload(i32 noundef 3264) #10
  %102 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %102) #10
  %103 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 16
  %104 = tail call i32 @idr_alloc(ptr noundef %103, ptr noundef %91, i32 noundef 1, i32 noundef 0, i32 noundef 2048) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %105 = load i16, ptr %102, align 4
  %106 = add i16 %105, 1
  store i16 %106, ptr %102, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %107 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %108 = inttoptr i32 %107 to ptr
  %109 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %108) #8, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !29
  %110 = icmp sgt i32 %104, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  store i32 %104, ptr %1, align 4
  br label %120

112:                                              ; preds = %101
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #10, !srcloc !9
  %113 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %91, ptr %91, i32 1, ptr elementtype(i32) %91) #10, !srcloc !20
  %114 = extractvalue { i32, i32, i32 } %113, 0
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = icmp sgt i32 %114, 0
  br i1 %117, label %120, label %118, !prof !12

118:                                              ; preds = %116
  tail call void @refcount_warn_saturate(ptr noundef %91, i32 noundef 3) #10
  br label %120

119:                                              ; preds = %112
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @drm_syncobj_replace_fence(ptr noundef %91, ptr noundef null) #10
  tail call void @kfree(ptr noundef %91) #10
  br label %120

120:                                              ; preds = %119, %118, %116, %111
  %121 = phi i32 [ 0, %111 ], [ %104, %116 ], [ %104, %118 ], [ %104, %119 ]
  %122 = and i32 %78, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %120, %86
  %125 = phi i32 [ -22, %86 ], [ %121, %120 ]
  tail call void @fput(ptr noundef nonnull %80) #10
  br label %126

126:                                              ; preds = %124, %120, %86, %77, %76, %75, %73, %56, %55, %53, %25, %17, %13, %3
  %127 = phi i32 [ -95, %3 ], [ -22, %13 ], [ -22, %17 ], [ -22, %25 ], [ -2, %53 ], [ -2, %55 ], [ -2, %56 ], [ 0, %73 ], [ 0, %75 ], [ 0, %76 ], [ -22, %77 ], [ -22, %86 ], [ %121, %120 ], [ %125, %124 ]
  ret i32 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_syncobj_transfer_ioctl(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_driver, ptr %7, i32 0, i32 24
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %9, 64
  %13 = and i32 %12, %11
  %14 = icmp eq i32 %13, 64
  br i1 %14, label %15, label %145

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.drm_syncobj_transfer, ptr %1, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %145

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.drm_syncobj_transfer, ptr %1, i32 0, i32 3
  %21 = load i64, ptr %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %88, label %23

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !26
  %24 = getelementptr inbounds %struct.drm_syncobj_transfer, ptr %1, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %26) #10
  %27 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 16
  %28 = tail call ptr @idr_find(ptr noundef %27, i32 noundef %25) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %83, label %30

30:                                               ; preds = %23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %28) #10, !srcloc !9
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %28, ptr nonnull %28, i32 1, ptr nonnull elementtype(i32) %28) #10, !srcloc !10
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34, !prof !11

34:                                               ; preds = %30
  %35 = add i32 %32, 1
  %36 = or i32 %35, %32
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %42, label %38, !prof !12

38:                                               ; preds = %34, %30
  %39 = phi i32 [ 2, %30 ], [ 1, %34 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %28, i32 noundef %39) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %40 = load i16, ptr %26, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %45

42:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %43 = load i16, ptr %26, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32, ptr %1, align 8
  %47 = getelementptr inbounds %struct.drm_syncobj_transfer, ptr %1, i32 0, i32 2
  %48 = load i64, ptr %47, align 8
  %49 = getelementptr inbounds %struct.drm_syncobj_transfer, ptr %1, i32 0, i32 4
  %50 = load i32, ptr %49, align 8
  %51 = zext i32 %50 to i64
  %52 = call i32 @drm_syncobj_find_fence(ptr noundef %2, i32 noundef %46, i64 noundef %48, i64 noundef %51, ptr noundef nonnull %5) #10
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %45
  %55 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %56 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3264, i32 noundef 88) #11
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %5, align 4
  %60 = load i64, ptr %20, align 8
  call void @drm_syncobj_add_point(ptr noundef nonnull %28, ptr noundef nonnull %56, ptr noundef %59, i64 noundef %60) #10
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i32 [ 0, %58 ], [ -12, %54 ]
  %63 = load ptr, ptr %5, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.dma_fence, ptr %63, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %66) #10, !srcloc !9
  %67 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %66, ptr %66, i32 1, ptr elementtype(i32) %66) #10, !srcloc !20
  %68 = extractvalue { i32, i32, i32 } %67, 0
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = icmp sgt i32 %68, 0
  br i1 %71, label %74, label %72, !prof !12

72:                                               ; preds = %70
  call void @refcount_warn_saturate(ptr noundef %66, i32 noundef 3) #10
  br label %74

73:                                               ; preds = %65
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  call void @dma_fence_release(ptr noundef %66) #10, !callees !22
  br label %74

74:                                               ; preds = %73, %72, %70, %61, %45
  %75 = phi i32 [ %52, %45 ], [ %62, %61 ], [ %62, %70 ], [ %62, %72 ], [ %62, %73 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %28) #10, !srcloc !9
  %76 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %28, ptr nonnull %28, i32 1, ptr nonnull elementtype(i32) %28) #10, !srcloc !20
  %77 = extractvalue { i32, i32, i32 } %76, 0
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = icmp sgt i32 %77, 0
  br i1 %80, label %86, label %81, !prof !12

81:                                               ; preds = %79
  call void @refcount_warn_saturate(ptr noundef nonnull %28, i32 noundef 3) #10
  br label %86

82:                                               ; preds = %74
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  call void @drm_syncobj_replace_fence(ptr noundef nonnull %28, ptr noundef null) #10
  call void @kfree(ptr noundef nonnull %28) #10
  br label %86

83:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %84 = load i16, ptr %26, align 4
  %85 = add i16 %84, 1
  store i16 %85, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %86

86:                                               ; preds = %83, %82, %81, %79
  %87 = phi i32 [ %75, %79 ], [ %75, %81 ], [ %75, %82 ], [ -2, %83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %145

88:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !26
  %89 = getelementptr inbounds %struct.drm_syncobj_transfer, ptr %1, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %91) #10
  %92 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 16
  %93 = tail call ptr @idr_find(ptr noundef %92, i32 noundef %90) #10
  %94 = icmp eq ptr %93, null
  br i1 %94, label %140, label %95

95:                                               ; preds = %88
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %93) #10, !srcloc !9
  %96 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %93, ptr nonnull %93, i32 1, ptr nonnull elementtype(i32) %93) #10, !srcloc !10
  %97 = extractvalue { i32, i32, i32 } %96, 0
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99, !prof !11

99:                                               ; preds = %95
  %100 = add i32 %97, 1
  %101 = or i32 %100, %97
  %102 = icmp sgt i32 %101, -1
  br i1 %102, label %107, label %103, !prof !12

103:                                              ; preds = %99, %95
  %104 = phi i32 [ 2, %95 ], [ 1, %99 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %93, i32 noundef %104) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %105 = load i16, ptr %91, align 4
  %106 = add i16 %105, 1
  store i16 %106, ptr %91, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %110

107:                                              ; preds = %99
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %108 = load i16, ptr %91, align 4
  %109 = add i16 %108, 1
  store i16 %109, ptr %91, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %110

110:                                              ; preds = %107, %103
  %111 = load i32, ptr %1, align 8
  %112 = getelementptr inbounds %struct.drm_syncobj_transfer, ptr %1, i32 0, i32 2
  %113 = load i64, ptr %112, align 8
  %114 = getelementptr inbounds %struct.drm_syncobj_transfer, ptr %1, i32 0, i32 4
  %115 = load i32, ptr %114, align 8
  %116 = zext i32 %115 to i64
  %117 = call i32 @drm_syncobj_find_fence(ptr noundef %2, i32 noundef %111, i64 noundef %113, i64 noundef %116, ptr noundef nonnull %4) #10
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %110
  %120 = load ptr, ptr %4, align 4
  call void @drm_syncobj_replace_fence(ptr noundef nonnull %93, ptr noundef %120) #10
  %121 = load ptr, ptr %4, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %132, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.dma_fence, ptr %121, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %124) #10, !srcloc !9
  %125 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %124, ptr %124, i32 1, ptr elementtype(i32) %124) #10, !srcloc !20
  %126 = extractvalue { i32, i32, i32 } %125, 0
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %131, label %128

128:                                              ; preds = %123
  %129 = icmp sgt i32 %126, 0
  br i1 %129, label %132, label %130, !prof !12

130:                                              ; preds = %128
  call void @refcount_warn_saturate(ptr noundef %124, i32 noundef 3) #10
  br label %132

131:                                              ; preds = %123
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  call void @dma_fence_release(ptr noundef %124) #10, !callees !22
  br label %132

132:                                              ; preds = %131, %130, %128, %119, %110
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %93) #10, !srcloc !9
  %133 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %93, ptr nonnull %93, i32 1, ptr nonnull elementtype(i32) %93) #10, !srcloc !20
  %134 = extractvalue { i32, i32, i32 } %133, 0
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = icmp sgt i32 %134, 0
  br i1 %137, label %143, label %138, !prof !12

138:                                              ; preds = %136
  call void @refcount_warn_saturate(ptr noundef nonnull %93, i32 noundef 3) #10
  br label %143

139:                                              ; preds = %132
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  call void @drm_syncobj_replace_fence(ptr noundef nonnull %93, ptr noundef null) #10
  call void @kfree(ptr noundef nonnull %93) #10
  br label %143

140:                                              ; preds = %88
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %141 = load i16, ptr %91, align 4
  %142 = add i16 %141, 1
  store i16 %142, ptr %91, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %143

143:                                              ; preds = %140, %139, %138, %136
  %144 = phi i32 [ %117, %136 ], [ %117, %138 ], [ %117, %139 ], [ -2, %140 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %145

145:                                              ; preds = %143, %86, %15, %3
  %146 = phi i32 [ -95, %3 ], [ -22, %15 ], [ %87, %86 ], [ %144, %143 ]
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_timeout_abs_to_jiffies(i64 noundef %0) #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = tail call i64 @ktime_get() #10
  %5 = icmp slt i64 %4, %0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = sub i64 %0, %4
  %8 = tail call i64 @nsecs_to_jiffies64(i64 noundef %7) #10
  %9 = icmp ugt i64 %8, 2147483645
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = trunc i64 %8 to i32
  %12 = add nuw nsw i32 %11, 1
  br label %13

13:                                               ; preds = %10, %6, %3, %1
  %14 = phi i32 [ %12, %10 ], [ 0, %1 ], [ 0, %3 ], [ 2147483646, %6 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_syncobj_wait_ioctl(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !26
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_driver, ptr %7, i32 0, i32 24
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %9, 32
  %13 = and i32 %12, %11
  %14 = icmp eq i32 %13, 32
  br i1 %14, label %15, label %72

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.drm_syncobj_wait, ptr %1, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %17, 4
  br i1 %18, label %19, label %72

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.drm_syncobj_wait, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %72, label %23

23:                                               ; preds = %19
  %24 = load i64, ptr %1, align 8
  %25 = trunc i64 %24 to i32
  %26 = inttoptr i32 %25 to ptr
  %27 = call fastcc i32 @drm_syncobj_array_find(ptr noundef %2, ptr noundef %26, i32 noundef %21, ptr noundef nonnull %5)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %72, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 -1, ptr %4, align 4
  %31 = getelementptr inbounds %struct.drm_syncobj_wait, ptr %1, i32 0, i32 1
  %32 = load i64, ptr %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = tail call i64 @ktime_get() #10
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = sub i64 %32, %35
  %39 = tail call i64 @nsecs_to_jiffies64(i64 noundef %38) #10
  %40 = icmp ugt i64 %39, 2147483645
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = trunc i64 %39 to i32
  %43 = add nuw nsw i32 %42, 1
  br label %44

44:                                               ; preds = %41, %37, %34, %29
  %45 = phi i32 [ %43, %41 ], [ 0, %29 ], [ 0, %34 ], [ 2147483646, %37 ]
  %46 = load i32, ptr %20, align 8
  %47 = load i32, ptr %16, align 4
  %48 = call fastcc i32 @drm_syncobj_array_wait_timeout(ptr noundef %30, ptr noundef null, i32 noundef %46, i32 noundef %47, i32 noundef %45, ptr noundef nonnull %4) #10
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i32, ptr %4, align 4
  %52 = getelementptr inbounds %struct.drm_syncobj_wait, ptr %1, i32 0, i32 4
  store i32 %51, ptr %52, align 8
  br label %53

53:                                               ; preds = %50, %44
  %54 = phi i32 [ %48, %44 ], [ 0, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %55 = load i32, ptr %20, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %71, label %57

57:                                               ; preds = %68, %53
  %58 = phi i32 [ %69, %68 ], [ 0, %53 ]
  %59 = getelementptr ptr, ptr %30, i32 %58
  %60 = load ptr, ptr %59, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #10, !srcloc !9
  %61 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #10, !srcloc !20
  %62 = extractvalue { i32, i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = icmp sgt i32 %62, 0
  br i1 %65, label %68, label %66, !prof !12

66:                                               ; preds = %64
  call void @refcount_warn_saturate(ptr noundef %60, i32 noundef 3) #10
  br label %68

67:                                               ; preds = %57
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  call void @drm_syncobj_replace_fence(ptr noundef %60, ptr noundef null) #10
  call void @kfree(ptr noundef %60) #10
  br label %68

68:                                               ; preds = %67, %66, %64
  %69 = add nuw i32 %58, 1
  %70 = icmp eq i32 %69, %55
  br i1 %70, label %71, label %57

71:                                               ; preds = %68, %53
  call void @kfree(ptr noundef %30) #10
  br label %72

72:                                               ; preds = %71, %23, %19, %15, %3
  %73 = phi i32 [ %54, %71 ], [ -95, %3 ], [ -22, %15 ], [ -22, %19 ], [ %27, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_syncobj_array_find(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #10
  %6 = extractvalue { i32, i1 } %5, 1
  %7 = extractvalue { i32, i1 } %5, 0
  br i1 %6, label %92, label %8, !prof !11

8:                                                ; preds = %4
  %9 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %92, label %11

11:                                               ; preds = %8
  %12 = shl nuw i32 %2, 2
  %13 = icmp slt i32 %12, 0
  %14 = load i1, ptr @check_copy_size.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !11

17:                                               ; preds = %11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %18

18:                                               ; preds = %17, %11
  br i1 %13, label %90, label %19, !prof !11

19:                                               ; preds = %18
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %12, i32 -1090519040) #13, !srcloc !33
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30, !prof !12

23:                                               ; preds = %19
  %24 = tail call ptr @llvm.thread.pointer() #10
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %25) #8, !srcloc !34
  %27 = and i32 %26, -13
  %28 = or i32 %27, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #10, !srcloc !35
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !36
  %29 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %9, ptr noundef %1, i32 noundef %12) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #10, !srcloc !35
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !36
  br label %30

30:                                               ; preds = %23, %19
  %31 = phi i32 [ %29, %23 ], [ %12, %19 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33, !prof !12

33:                                               ; preds = %30
  %34 = sub i32 %12, %31
  %35 = getelementptr i8, ptr %9, i32 %34
  tail call void @llvm.memset.p0.i32(ptr align 1 %35, i8 0, i32 %31, i1 false) #10
  br label %90

36:                                               ; preds = %30
  %37 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %90, label %39

39:                                               ; preds = %36
  %40 = icmp eq i32 %2, 0
  br i1 %40, label %69, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 17
  %43 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 16
  br label %44

44:                                               ; preds = %65, %41
  %45 = phi i32 [ 0, %41 ], [ %67, %65 ]
  %46 = getelementptr i32, ptr %9, i32 %45
  %47 = load i32, ptr %46, align 4
  tail call void @_raw_spin_lock(ptr noundef %42) #10
  %48 = tail call ptr @idr_find(ptr noundef %43, i32 noundef %47) #10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %70, label %50

50:                                               ; preds = %44
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %48) #10, !srcloc !9
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %48, ptr nonnull %48, i32 1, ptr nonnull elementtype(i32) %48) #10, !srcloc !10
  %52 = extractvalue { i32, i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54, !prof !11

54:                                               ; preds = %50
  %55 = add i32 %52, 1
  %56 = or i32 %55, %52
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %62, label %58, !prof !12

58:                                               ; preds = %54, %50
  %59 = phi i32 [ 2, %50 ], [ 1, %54 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %48, i32 noundef %59) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %60 = load i16, ptr %42, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %65

62:                                               ; preds = %54
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %63 = load i16, ptr %42, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %65

65:                                               ; preds = %62, %58
  %66 = getelementptr ptr, ptr %37, i32 %45
  store ptr %48, ptr %66, align 4
  %67 = add nuw i32 %45, 1
  %68 = icmp eq i32 %67, %2
  br i1 %68, label %69, label %44

69:                                               ; preds = %65, %39
  tail call void @kfree(ptr noundef nonnull %9) #10
  store ptr %37, ptr %3, align 4
  br label %92

70:                                               ; preds = %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %71 = load i16, ptr %42, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %73 = getelementptr ptr, ptr %37, i32 %45
  store ptr null, ptr %73, align 4
  %74 = icmp eq i32 %45, 0
  br i1 %74, label %89, label %75

75:                                               ; preds = %87, %70
  %76 = phi i32 [ %77, %87 ], [ %45, %70 ]
  %77 = add i32 %76, -1
  %78 = getelementptr ptr, ptr %37, i32 %77
  %79 = load ptr, ptr %78, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %79) #10, !srcloc !9
  %80 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %79, ptr %79, i32 1, ptr elementtype(i32) %79) #10, !srcloc !20
  %81 = extractvalue { i32, i32, i32 } %80, 0
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %86, label %83

83:                                               ; preds = %75
  %84 = icmp sgt i32 %81, 0
  br i1 %84, label %87, label %85, !prof !12

85:                                               ; preds = %83
  tail call void @refcount_warn_saturate(ptr noundef %79, i32 noundef 3) #10
  br label %87

86:                                               ; preds = %75
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @drm_syncobj_replace_fence(ptr noundef %79, ptr noundef null) #10
  tail call void @kfree(ptr noundef %79) #10
  br label %87

87:                                               ; preds = %86, %85, %83
  %88 = icmp eq i32 %77, 0
  br i1 %88, label %89, label %75

89:                                               ; preds = %87, %70
  tail call void @kfree(ptr noundef nonnull %37) #10
  br label %90

90:                                               ; preds = %89, %36, %33, %18
  %91 = phi i32 [ -2, %89 ], [ -12, %36 ], [ -14, %18 ], [ -14, %33 ]
  tail call void @kfree(ptr noundef nonnull %9) #10
  br label %92

92:                                               ; preds = %90, %69, %8, %4
  %93 = phi i32 [ %91, %90 ], [ 0, %69 ], [ -12, %8 ], [ -12, %4 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_syncobj_timeline_wait_ioctl(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !26
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_driver, ptr %7, i32 0, i32 24
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %9, 64
  %13 = and i32 %12, %11
  %14 = icmp eq i32 %13, 64
  br i1 %14, label %15, label %76

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.drm_syncobj_timeline_wait, ptr %1, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %17, 8
  br i1 %18, label %19, label %76

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.drm_syncobj_timeline_wait, ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %76, label %23

23:                                               ; preds = %19
  %24 = load i64, ptr %1, align 8
  %25 = trunc i64 %24 to i32
  %26 = inttoptr i32 %25 to ptr
  %27 = call fastcc i32 @drm_syncobj_array_find(ptr noundef %2, ptr noundef %26, i32 noundef %21, ptr noundef nonnull %5)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %76, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 -1, ptr %4, align 4
  %31 = getelementptr inbounds %struct.drm_syncobj_timeline_wait, ptr %1, i32 0, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = tail call i64 @ktime_get() #10
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = sub i64 %32, %35
  %39 = tail call i64 @nsecs_to_jiffies64(i64 noundef %38) #10
  %40 = icmp ugt i64 %39, 2147483645
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = trunc i64 %39 to i32
  %43 = add nuw nsw i32 %42, 1
  br label %44

44:                                               ; preds = %41, %37, %34, %29
  %45 = phi i32 [ %43, %41 ], [ 0, %29 ], [ 0, %34 ], [ 2147483646, %37 ]
  %46 = getelementptr inbounds %struct.drm_syncobj_timeline_wait, ptr %1, i32 0, i32 1
  %47 = load i64, ptr %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = inttoptr i32 %48 to ptr
  %50 = load i32, ptr %20, align 8
  %51 = load i32, ptr %16, align 4
  %52 = call fastcc i32 @drm_syncobj_array_wait_timeout(ptr noundef %30, ptr noundef %49, i32 noundef %50, i32 noundef %51, i32 noundef %45, ptr noundef nonnull %4) #10
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %44
  %55 = load i32, ptr %4, align 4
  %56 = getelementptr inbounds %struct.drm_syncobj_timeline_wait, ptr %1, i32 0, i32 5
  store i32 %55, ptr %56, align 8
  br label %57

57:                                               ; preds = %54, %44
  %58 = phi i32 [ %52, %44 ], [ 0, %54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %59 = load i32, ptr %20, align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %72, %57
  %62 = phi i32 [ %73, %72 ], [ 0, %57 ]
  %63 = getelementptr ptr, ptr %30, i32 %62
  %64 = load ptr, ptr %63, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #10, !srcloc !9
  %65 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 1, ptr elementtype(i32) %64) #10, !srcloc !20
  %66 = extractvalue { i32, i32, i32 } %65, 0
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %71, label %68

68:                                               ; preds = %61
  %69 = icmp sgt i32 %66, 0
  br i1 %69, label %72, label %70, !prof !12

70:                                               ; preds = %68
  call void @refcount_warn_saturate(ptr noundef %64, i32 noundef 3) #10
  br label %72

71:                                               ; preds = %61
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  call void @drm_syncobj_replace_fence(ptr noundef %64, ptr noundef null) #10
  call void @kfree(ptr noundef %64) #10
  br label %72

72:                                               ; preds = %71, %70, %68
  %73 = add nuw i32 %62, 1
  %74 = icmp eq i32 %73, %59
  br i1 %74, label %75, label %61

75:                                               ; preds = %72, %57
  call void @kfree(ptr noundef %30) #10
  br label %76

76:                                               ; preds = %75, %23, %19, %15, %3
  %77 = phi i32 [ %58, %75 ], [ -95, %3 ], [ -22, %15 ], [ -22, %19 ], [ %27, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_syncobj_reset_ioctl(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !26
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %8, 32
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 32
  br i1 %13, label %14, label %56

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.drm_syncobj_array, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.drm_syncobj_array, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %56, label %22

22:                                               ; preds = %18
  %23 = load i64, ptr %1, align 8
  %24 = trunc i64 %23 to i32
  %25 = inttoptr i32 %24 to ptr
  %26 = call fastcc i32 @drm_syncobj_array_find(ptr noundef %2, ptr noundef %25, i32 noundef %20, ptr noundef nonnull %4)
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %56, label %28

28:                                               ; preds = %22
  %29 = load i32, ptr %19, align 8
  %30 = icmp eq i32 %29, 0
  %31 = load ptr, ptr %4, align 4
  br i1 %30, label %55, label %32

32:                                               ; preds = %32, %28
  %33 = phi i32 [ %36, %32 ], [ 0, %28 ]
  %34 = getelementptr ptr, ptr %31, i32 %33
  %35 = load ptr, ptr %34, align 4
  tail call void @drm_syncobj_replace_fence(ptr noundef %35, ptr noundef null)
  %36 = add nuw i32 %33, 1
  %37 = load i32, ptr %19, align 8
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %32, label %39

39:                                               ; preds = %32
  %40 = icmp eq i32 %37, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %52, %39
  %42 = phi i32 [ %53, %52 ], [ 0, %39 ]
  %43 = getelementptr ptr, ptr %31, i32 %42
  %44 = load ptr, ptr %43, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #10, !srcloc !9
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #10, !srcloc !20
  %46 = extractvalue { i32, i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = icmp sgt i32 %46, 0
  br i1 %49, label %52, label %50, !prof !12

50:                                               ; preds = %48
  tail call void @refcount_warn_saturate(ptr noundef %44, i32 noundef 3) #10
  br label %52

51:                                               ; preds = %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @drm_syncobj_replace_fence(ptr noundef %44, ptr noundef null) #10
  tail call void @kfree(ptr noundef %44) #10
  br label %52

52:                                               ; preds = %51, %50, %48
  %53 = add nuw i32 %42, 1
  %54 = icmp eq i32 %53, %37
  br i1 %54, label %55, label %41

55:                                               ; preds = %52, %39, %28
  tail call void @kfree(ptr noundef %31) #10
  br label %56

56:                                               ; preds = %55, %22, %18, %14, %3
  %57 = phi i32 [ 0, %55 ], [ -95, %3 ], [ -22, %14 ], [ -22, %18 ], [ %26, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_syncobj_signal_ioctl(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !26
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %8, 32
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 32
  br i1 %13, label %14, label %80

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.drm_syncobj_array, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %80

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.drm_syncobj_array, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %80, label %22

22:                                               ; preds = %18
  %23 = load i64, ptr %1, align 8
  %24 = trunc i64 %23 to i32
  %25 = inttoptr i32 %24 to ptr
  %26 = call fastcc i32 @drm_syncobj_array_find(ptr noundef %2, ptr noundef %25, i32 noundef %20, ptr noundef nonnull %4)
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %80, label %28

28:                                               ; preds = %22
  %29 = load i32, ptr %19, align 8
  %30 = icmp eq i32 %29, 0
  %31 = load ptr, ptr %4, align 4
  br i1 %30, label %78, label %32

32:                                               ; preds = %52, %28
  %33 = phi i32 [ %54, %52 ], [ 0, %28 ]
  %34 = getelementptr ptr, ptr %31, i32 %33
  %35 = load ptr, ptr %34, align 4
  %36 = tail call ptr @dma_fence_allocate_private_stub() #10
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %49, label %38

38:                                               ; preds = %32
  tail call void @drm_syncobj_replace_fence(ptr noundef %35, ptr noundef %36) #10
  %39 = icmp eq ptr %36, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.dma_fence, ptr %36, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #10, !srcloc !9
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #10, !srcloc !20
  %43 = extractvalue { i32, i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = icmp sgt i32 %43, 0
  br i1 %46, label %52, label %47, !prof !12

47:                                               ; preds = %45
  tail call void @refcount_warn_saturate(ptr noundef %41, i32 noundef 3) #10
  br label %52

48:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @dma_fence_release(ptr noundef %41) #10, !callees !22
  br label %52

49:                                               ; preds = %32
  %50 = ptrtoint ptr %36 to i32
  %51 = icmp slt ptr %36, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49, %48, %47, %45, %38
  %53 = phi i32 [ %50, %49 ], [ 0, %38 ], [ 0, %45 ], [ 0, %47 ], [ 0, %48 ]
  %54 = add nuw i32 %33, 1
  %55 = load i32, ptr %19, align 8
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %32, label %60

57:                                               ; preds = %49
  %58 = ptrtoint ptr %36 to i32
  %59 = load i32, ptr %19, align 8
  br label %60

60:                                               ; preds = %57, %52
  %61 = phi i32 [ %59, %57 ], [ %55, %52 ]
  %62 = phi i32 [ %58, %57 ], [ %53, %52 ]
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %75, %60
  %65 = phi i32 [ %76, %75 ], [ 0, %60 ]
  %66 = getelementptr ptr, ptr %31, i32 %65
  %67 = load ptr, ptr %66, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #10, !srcloc !9
  %68 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 1, ptr elementtype(i32) %67) #10, !srcloc !20
  %69 = extractvalue { i32, i32, i32 } %68, 0
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = icmp sgt i32 %69, 0
  br i1 %72, label %75, label %73, !prof !12

73:                                               ; preds = %71
  tail call void @refcount_warn_saturate(ptr noundef %67, i32 noundef 3) #10
  br label %75

74:                                               ; preds = %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @drm_syncobj_replace_fence(ptr noundef %67, ptr noundef null) #10
  tail call void @kfree(ptr noundef %67) #10
  br label %75

75:                                               ; preds = %74, %73, %71
  %76 = add nuw i32 %65, 1
  %77 = icmp eq i32 %76, %61
  br i1 %77, label %78, label %64

78:                                               ; preds = %75, %60, %28
  %79 = phi i32 [ %62, %60 ], [ %26, %28 ], [ %62, %75 ]
  tail call void @kfree(ptr noundef %31) #10
  br label %80

80:                                               ; preds = %78, %22, %18, %14, %3
  %81 = phi i32 [ %79, %78 ], [ -95, %3 ], [ -22, %14 ], [ -22, %18 ], [ %26, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_syncobj_timeline_signal_ioctl(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !26
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %8, 64
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 64
  br i1 %13, label %14, label %159

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.drm_syncobj_timeline_array, ptr %1, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %159

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.drm_syncobj_timeline_array, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %159, label %22

22:                                               ; preds = %18
  %23 = load i64, ptr %1, align 8
  %24 = trunc i64 %23 to i32
  %25 = inttoptr i32 %24 to ptr
  %26 = call fastcc i32 @drm_syncobj_array_find(ptr noundef %2, ptr noundef %25, i32 noundef %20, ptr noundef nonnull %4)
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %159, label %28

28:                                               ; preds = %22
  %29 = load i32, ptr %19, align 8
  %30 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %29, i32 8) #10
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %32, label %34, !prof !11

32:                                               ; preds = %28
  %33 = load ptr, ptr %4, align 4
  br label %138

34:                                               ; preds = %28
  %35 = extractvalue { i32, i1 } %30, 0
  %36 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %35, i32 noundef 3264) #12
  %37 = icmp eq ptr %36, null
  br i1 %37, label %133, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.drm_syncobj_timeline_array, ptr %1, i32 0, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, ptr %19, align 8
  %45 = shl i32 %44, 3
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %36, i8 0, i32 %45, i1 false)
  br label %73

46:                                               ; preds = %38
  %47 = inttoptr i32 %41 to ptr
  %48 = load i32, ptr %19, align 8
  %49 = shl i32 %48, 3
  %50 = icmp slt i32 %49, 0
  %51 = load i1, ptr @check_copy_size.__already_done, align 1
  %52 = xor i1 %51, true
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %55, !prof !11

54:                                               ; preds = %46
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %55

55:                                               ; preds = %54, %46
  br i1 %50, label %131, label %56, !prof !11

56:                                               ; preds = %55
  %57 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %47, i32 %49, i32 -1090519040) #13, !srcloc !33
  %58 = extractvalue { i32, i32 } %57, 0
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67, !prof !12

60:                                               ; preds = %56
  %61 = tail call ptr @llvm.thread.pointer() #10
  %62 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %63 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %62) #8, !srcloc !34
  %64 = and i32 %63, -13
  %65 = or i32 %64, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #10, !srcloc !35
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !36
  %66 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %36, ptr noundef nonnull %47, i32 noundef %49) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #10, !srcloc !35
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !36
  br label %67

67:                                               ; preds = %60, %56
  %68 = phi i32 [ %66, %60 ], [ %49, %56 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70, !prof !12

70:                                               ; preds = %67
  %71 = sub i32 %49, %68
  %72 = getelementptr i8, ptr %36, i32 %71
  tail call void @llvm.memset.p0.i32(ptr align 1 %72, i8 0, i32 %68, i1 false) #10
  br label %131

73:                                               ; preds = %67, %43
  %74 = load i32, ptr %19, align 8
  %75 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %74, i32 4) #10
  %76 = extractvalue { i32, i1 } %75, 1
  br i1 %76, label %131, label %77, !prof !11

77:                                               ; preds = %73
  %78 = extractvalue { i32, i1 } %75, 0
  %79 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %78, i32 noundef 3264) #12
  %80 = icmp eq ptr %79, null
  br i1 %80, label %131, label %81

81:                                               ; preds = %77
  %82 = load i32, ptr %19, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %129, label %88

84:                                               ; preds = %102
  %85 = icmp eq i32 %104, 0
  br i1 %85, label %129, label %86

86:                                               ; preds = %84
  %87 = load ptr, ptr %4, align 4
  br label %106

88:                                               ; preds = %102, %81
  %89 = phi i32 [ %103, %102 ], [ 0, %81 ]
  %90 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %91 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %90, i32 noundef 3264, i32 noundef 88) #11
  %92 = getelementptr ptr, ptr %79, i32 %89
  store ptr %91, ptr %92, align 4
  %93 = icmp eq ptr %91, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = icmp eq i32 %89, 0
  br i1 %95, label %129, label %96

96:                                               ; preds = %96, %94
  %97 = phi i32 [ %100, %96 ], [ 0, %94 ]
  %98 = getelementptr ptr, ptr %79, i32 %97
  %99 = load ptr, ptr %98, align 4
  tail call void @kfree(ptr noundef %99) #10
  %100 = add nuw i32 %97, 1
  %101 = icmp eq i32 %100, %89
  br i1 %101, label %129, label %96

102:                                              ; preds = %88
  %103 = add nuw i32 %89, 1
  %104 = load i32, ptr %19, align 8
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %88, label %84

106:                                              ; preds = %125, %86
  %107 = phi i32 [ 0, %86 ], [ %126, %125 ]
  %108 = tail call ptr @dma_fence_get_stub() #10
  %109 = getelementptr ptr, ptr %87, i32 %107
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr ptr, ptr %79, i32 %107
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr i64, ptr %36, i32 %107
  %114 = load i64, ptr %113, align 8
  tail call void @drm_syncobj_add_point(ptr noundef %110, ptr noundef %112, ptr noundef %108, i64 noundef %114)
  %115 = icmp eq ptr %108, null
  br i1 %115, label %125, label %116

116:                                              ; preds = %106
  %117 = getelementptr inbounds %struct.dma_fence, ptr %108, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %117) #10, !srcloc !9
  %118 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %117, ptr %117, i32 1, ptr elementtype(i32) %117) #10, !srcloc !20
  %119 = extractvalue { i32, i32, i32 } %118, 0
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %124, label %121

121:                                              ; preds = %116
  %122 = icmp sgt i32 %119, 0
  br i1 %122, label %125, label %123, !prof !12

123:                                              ; preds = %121
  tail call void @refcount_warn_saturate(ptr noundef %117, i32 noundef 3) #10
  br label %125

124:                                              ; preds = %116
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @dma_fence_release(ptr noundef %117) #10, !callees !22
  br label %125

125:                                              ; preds = %124, %123, %121, %106
  %126 = add nuw i32 %107, 1
  %127 = load i32, ptr %19, align 8
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %106, label %129

129:                                              ; preds = %125, %96, %94, %84, %81
  %130 = phi i32 [ -12, %94 ], [ %26, %84 ], [ %26, %81 ], [ -12, %96 ], [ %26, %125 ]
  tail call void @kfree(ptr noundef nonnull %79) #10
  br label %131

131:                                              ; preds = %129, %77, %73, %70, %55
  %132 = phi i32 [ %130, %129 ], [ -12, %77 ], [ -14, %70 ], [ -14, %55 ], [ -12, %73 ]
  tail call void @kfree(ptr noundef nonnull %36) #10
  br label %133

133:                                              ; preds = %131, %34
  %134 = phi i32 [ -12, %34 ], [ %132, %131 ]
  %135 = load i32, ptr %19, align 8
  %136 = load ptr, ptr %4, align 4
  %137 = icmp eq i32 %135, 0
  br i1 %137, label %156, label %138

138:                                              ; preds = %133, %32
  %139 = phi ptr [ %33, %32 ], [ %136, %133 ]
  %140 = phi i32 [ -12, %32 ], [ %134, %133 ]
  %141 = phi i32 [ %29, %32 ], [ %135, %133 ]
  br label %142

142:                                              ; preds = %153, %138
  %143 = phi i32 [ %154, %153 ], [ 0, %138 ]
  %144 = getelementptr ptr, ptr %139, i32 %143
  %145 = load ptr, ptr %144, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %145) #10, !srcloc !9
  %146 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %145, ptr %145, i32 1, ptr elementtype(i32) %145) #10, !srcloc !20
  %147 = extractvalue { i32, i32, i32 } %146, 0
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %152, label %149

149:                                              ; preds = %142
  %150 = icmp sgt i32 %147, 0
  br i1 %150, label %153, label %151, !prof !12

151:                                              ; preds = %149
  tail call void @refcount_warn_saturate(ptr noundef %145, i32 noundef 3) #10
  br label %153

152:                                              ; preds = %142
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @drm_syncobj_replace_fence(ptr noundef %145, ptr noundef null) #10
  tail call void @kfree(ptr noundef %145) #10
  br label %153

153:                                              ; preds = %152, %151, %149
  %154 = add nuw i32 %143, 1
  %155 = icmp eq i32 %154, %141
  br i1 %155, label %156, label %142

156:                                              ; preds = %153, %133
  %157 = phi ptr [ %136, %133 ], [ %139, %153 ]
  %158 = phi i32 [ %134, %133 ], [ %140, %153 ]
  tail call void @kfree(ptr noundef %157) #10
  br label %159

159:                                              ; preds = %156, %22, %18, %14, %3
  %160 = phi i32 [ %158, %156 ], [ -95, %3 ], [ -22, %14 ], [ -22, %18 ], [ %26, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %160
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_syncobj_query_ioctl(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !26
  %6 = getelementptr inbounds %struct.drm_syncobj_timeline_array, ptr %1, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_driver, ptr %11, i32 0, i32 24
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %13, 64
  %17 = and i32 %16, %15
  %18 = icmp eq i32 %17, 64
  br i1 %18, label %19, label %244

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.drm_syncobj_timeline_array, ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %23, label %244

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.drm_syncobj_timeline_array, ptr %1, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %244, label %27

27:                                               ; preds = %23
  %28 = load i64, ptr %1, align 8
  %29 = trunc i64 %28 to i32
  %30 = inttoptr i32 %29 to ptr
  %31 = call fastcc i32 @drm_syncobj_array_find(ptr noundef %2, ptr noundef %30, i32 noundef %25, ptr noundef nonnull %4)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %244, label %33

33:                                               ; preds = %27
  %34 = load i32, ptr %24, align 8
  %35 = icmp eq i32 %34, 0
  %36 = load ptr, ptr %4, align 4
  br i1 %35, label %242, label %41

37:                                               ; preds = %214
  %38 = add nuw i32 %42, 1
  %39 = load i32, ptr %24, align 8
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %224

41:                                               ; preds = %37, %33
  %42 = phi i32 [ %38, %37 ], [ 0, %33 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store i64 0, ptr %5, align 8, !annotation !26
  %43 = getelementptr ptr, ptr %36, i32 %42
  %44 = load ptr, ptr %43, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %45 = getelementptr inbounds %struct.drm_syncobj, ptr %44, i32 0, i32 1
  %46 = load volatile ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %87, label %48

48:                                               ; preds = %84, %41
  %49 = phi ptr [ %85, %84 ], [ %46, %41 ]
  %50 = getelementptr inbounds %struct.dma_fence, ptr %49, i32 0, i32 6
  %51 = load volatile i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %63, %48
  %54 = phi i32 [ %61, %63 ], [ %51, %48 ]
  %55 = add i32 %54, 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #10, !srcloc !9
  br label %56

56:                                               ; preds = %56, %53
  %57 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 %54, i32 %55, ptr elementtype(i32) %50) #10, !srcloc !18
  %58 = extractvalue { i32, i32 } %57, 0
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %56

60:                                               ; preds = %56
  %61 = extractvalue { i32, i32 } %57, 1
  %62 = icmp eq i32 %61, %54
  br i1 %62, label %65, label %63, !prof !12

63:                                               ; preds = %60
  %64 = icmp eq i32 %61, 0
  br i1 %64, label %65, label %53

65:                                               ; preds = %63, %60, %48
  %66 = phi i32 [ 0, %48 ], [ 0, %63 ], [ %54, %60 ]
  %67 = add i32 %66, 1
  %68 = or i32 %67, %66
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %71, label %70, !prof !12

70:                                               ; preds = %65
  call void @refcount_warn_saturate(ptr noundef %50, i32 noundef 0) #10
  br label %71

71:                                               ; preds = %70, %65
  %72 = icmp eq i32 %66, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %71
  %74 = load volatile ptr, ptr %45, align 4
  %75 = icmp eq ptr %49, %74
  br i1 %75, label %88, label %76

76:                                               ; preds = %73
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #10, !srcloc !9
  %77 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #10, !srcloc !20
  %78 = extractvalue { i32, i32, i32 } %77, 0
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = icmp sgt i32 %78, 0
  br i1 %81, label %84, label %82, !prof !12

82:                                               ; preds = %80
  call void @refcount_warn_saturate(ptr noundef %50, i32 noundef 3) #10
  br label %84

83:                                               ; preds = %76
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  call void @dma_fence_release(ptr noundef %50) #10, !callees !22
  br label %84

84:                                               ; preds = %83, %82, %80, %71
  %85 = load volatile ptr, ptr %45, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %48

87:                                               ; preds = %84, %41
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  br label %198

88:                                               ; preds = %73
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %89 = icmp eq ptr %49, null
  br i1 %89, label %198, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.dma_fence, ptr %49, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, @dma_fence_chain_ops
  br i1 %93, label %94, label %199

94:                                               ; preds = %90
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #10, !srcloc !9
  %95 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #10, !srcloc !10
  %96 = extractvalue { i32, i32, i32 } %95, 0
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98, !prof !11

98:                                               ; preds = %94
  %99 = add i32 %96, 1
  %100 = or i32 %99, %96
  %101 = icmp sgt i32 %100, -1
  br i1 %101, label %104, label %102, !prof !12

102:                                              ; preds = %98, %94
  %103 = phi i32 [ 2, %94 ], [ 1, %98 ]
  call void @refcount_warn_saturate(ptr noundef %50, i32 noundef %103) #10
  br label %104

104:                                              ; preds = %102, %98
  %105 = load i32, ptr %20, align 4
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.dma_fence, ptr %49, i32 0, i32 4
  br label %186

110:                                              ; preds = %104
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #10, !srcloc !9
  %111 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #10, !srcloc !10
  %112 = extractvalue { i32, i32, i32 } %111, 0
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %118, label %114, !prof !11

114:                                              ; preds = %110
  %115 = add i32 %112, 1
  %116 = or i32 %115, %112
  %117 = icmp sgt i32 %116, -1
  br i1 %117, label %120, label %118, !prof !12

118:                                              ; preds = %114, %110
  %119 = phi i32 [ 2, %110 ], [ 1, %114 ]
  call void @refcount_warn_saturate(ptr noundef %50, i32 noundef %119) #10
  br label %120

120:                                              ; preds = %118, %114
  %121 = getelementptr inbounds %struct.dma_fence, ptr %49, i32 0, i32 3
  br label %122

122:                                              ; preds = %158, %120
  %123 = phi ptr [ %49, %120 ], [ %124, %158 ]
  %124 = phi ptr [ %49, %120 ], [ %159, %158 ]
  %125 = getelementptr inbounds %struct.dma_fence, ptr %124, i32 0, i32 3
  %126 = load i64, ptr %125, align 8
  %127 = load i64, ptr %121, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %138, label %129

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.dma_fence, ptr %124, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %130) #10, !srcloc !9
  %131 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %130, ptr %130, i32 1, ptr elementtype(i32) %130) #10, !srcloc !20
  %132 = extractvalue { i32, i32, i32 } %131, 0
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %137, label %134

134:                                              ; preds = %129
  %135 = icmp sgt i32 %132, 0
  br i1 %135, label %161, label %136, !prof !12

136:                                              ; preds = %134
  call void @refcount_warn_saturate(ptr noundef %130, i32 noundef 3) #10
  br label %161

137:                                              ; preds = %129
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  call void @dma_fence_release(ptr noundef %130) #10, !callees !22
  br label %161

138:                                              ; preds = %122
  %139 = getelementptr inbounds %struct.dma_fence, ptr %123, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %139) #10, !srcloc !9
  %140 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %139, ptr %139, i32 1, ptr elementtype(i32) %139) #10, !srcloc !20
  %141 = extractvalue { i32, i32, i32 } %140, 0
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = icmp sgt i32 %141, 0
  br i1 %144, label %147, label %145, !prof !12

145:                                              ; preds = %143
  call void @refcount_warn_saturate(ptr noundef %139, i32 noundef 3) #10
  br label %147

146:                                              ; preds = %138
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  call void @dma_fence_release(ptr noundef %139) #10, !callees !22
  br label %147

147:                                              ; preds = %146, %145, %143
  %148 = getelementptr inbounds %struct.dma_fence, ptr %124, i32 0, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %148) #10, !srcloc !9
  %149 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %148, ptr %148, i32 1, ptr elementtype(i32) %148) #10, !srcloc !10
  %150 = extractvalue { i32, i32, i32 } %149, 0
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %156, label %152, !prof !11

152:                                              ; preds = %147
  %153 = add i32 %150, 1
  %154 = or i32 %153, %150
  %155 = icmp sgt i32 %154, -1
  br i1 %155, label %158, label %156, !prof !12

156:                                              ; preds = %152, %147
  %157 = phi i32 [ 2, %147 ], [ 1, %152 ]
  call void @refcount_warn_saturate(ptr noundef %148, i32 noundef %157) #10
  br label %158

158:                                              ; preds = %156, %152
  %159 = call ptr @dma_fence_chain_walk(ptr noundef nonnull %124) #10
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %122

161:                                              ; preds = %158, %137, %136, %134
  %162 = phi ptr [ %123, %137 ], [ %123, %136 ], [ %123, %134 ], [ %124, %158 ]
  %163 = getelementptr inbounds %struct.dma_fence, ptr %162, i32 0, i32 5
  %164 = load volatile i32, ptr %163, align 4
  %165 = and i32 %164, 1
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.dma_fence, ptr %162, i32 0, i32 1
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr inbounds %struct.dma_fence_ops, ptr %169, i32 0, i32 4
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %181, label %173

173:                                              ; preds = %167
  %174 = call zeroext i1 %171(ptr noundef nonnull %162) #10
  br i1 %174, label %177, label %175

175:                                              ; preds = %173
  %176 = load ptr, ptr %168, align 4
  br label %181

177:                                              ; preds = %173
  %178 = call i32 @dma_fence_signal(ptr noundef nonnull %162) #10
  br label %179

179:                                              ; preds = %177, %161
  %180 = getelementptr inbounds %struct.dma_fence, ptr %162, i32 0, i32 4
  br label %186

181:                                              ; preds = %175, %167
  %182 = phi ptr [ %176, %175 ], [ %169, %167 ]
  %183 = icmp eq ptr %182, @dma_fence_chain_ops
  %184 = select i1 %183, ptr %162, ptr null
  %185 = getelementptr inbounds %struct.dma_fence_chain, ptr %184, i32 0, i32 2
  br label %186

186:                                              ; preds = %181, %179, %108
  %187 = phi ptr [ %109, %108 ], [ %180, %179 ], [ %185, %181 ]
  %188 = phi ptr [ %49, %108 ], [ %162, %179 ], [ %162, %181 ]
  %189 = load i64, ptr %187, align 8
  store i64 %189, ptr %5, align 8
  %190 = getelementptr inbounds %struct.dma_fence, ptr %188, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %190) #10, !srcloc !9
  %191 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %190, ptr %190, i32 1, ptr elementtype(i32) %190) #10, !srcloc !20
  %192 = extractvalue { i32, i32, i32 } %191, 0
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %197, label %194

194:                                              ; preds = %186
  %195 = icmp sgt i32 %192, 0
  br i1 %195, label %200, label %196, !prof !12

196:                                              ; preds = %194
  call void @refcount_warn_saturate(ptr noundef %190, i32 noundef 3) #10
  br label %200

197:                                              ; preds = %186
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  call void @dma_fence_release(ptr noundef %190) #10, !callees !22
  br label %200

198:                                              ; preds = %88, %87
  store i64 0, ptr %5, align 8
  br label %208

199:                                              ; preds = %90
  store i64 0, ptr %5, align 8
  br label %200

200:                                              ; preds = %199, %197, %196, %194
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #10, !srcloc !9
  %201 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #10, !srcloc !20
  %202 = extractvalue { i32, i32, i32 } %201, 0
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %207, label %204

204:                                              ; preds = %200
  %205 = icmp sgt i32 %202, 0
  br i1 %205, label %208, label %206, !prof !12

206:                                              ; preds = %204
  call void @refcount_warn_saturate(ptr noundef %50, i32 noundef 3) #10
  br label %208

207:                                              ; preds = %200
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  call void @dma_fence_release(ptr noundef %50) #10, !callees !22
  br label %208

208:                                              ; preds = %207, %206, %204, %198
  %209 = getelementptr i64, ptr %9, i32 %42
  %210 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %209, i32 8, i32 -1090519040) #13, !srcloc !37
  %211 = extractvalue { i32, i32 } %210, 0
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %208
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %222

214:                                              ; preds = %208
  %215 = tail call ptr @llvm.thread.pointer() #10
  %216 = getelementptr inbounds %struct.thread_info, ptr %215, i32 0, i32 3
  %217 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %216) #8, !srcloc !34
  %218 = and i32 %217, -13
  %219 = or i32 %218, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %219) #10, !srcloc !35
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !36
  %220 = call i32 @arm_copy_to_user(ptr noundef %209, ptr noundef nonnull %5, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %217) #10, !srcloc !35
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !36
  %221 = icmp eq i32 %220, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br i1 %221, label %37, label %222

222:                                              ; preds = %214, %213
  %223 = load i32, ptr %24, align 8
  br label %224

224:                                              ; preds = %222, %37
  %225 = phi i32 [ %223, %222 ], [ %39, %37 ]
  %226 = phi i32 [ -14, %222 ], [ 0, %37 ]
  %227 = icmp eq i32 %225, 0
  br i1 %227, label %242, label %228

228:                                              ; preds = %239, %224
  %229 = phi i32 [ %240, %239 ], [ 0, %224 ]
  %230 = getelementptr ptr, ptr %36, i32 %229
  %231 = load ptr, ptr %230, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %231) #10, !srcloc !9
  %232 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %231, ptr %231, i32 1, ptr elementtype(i32) %231) #10, !srcloc !20
  %233 = extractvalue { i32, i32, i32 } %232, 0
  %234 = icmp eq i32 %233, 1
  br i1 %234, label %238, label %235

235:                                              ; preds = %228
  %236 = icmp sgt i32 %233, 0
  br i1 %236, label %239, label %237, !prof !12

237:                                              ; preds = %235
  call void @refcount_warn_saturate(ptr noundef %231, i32 noundef 3) #10
  br label %239

238:                                              ; preds = %228
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  call void @drm_syncobj_replace_fence(ptr noundef %231, ptr noundef null) #10
  call void @kfree(ptr noundef %231) #10
  br label %239

239:                                              ; preds = %238, %237, %235
  %240 = add nuw i32 %229, 1
  %241 = icmp eq i32 %240, %225
  br i1 %241, label %242, label %228

242:                                              ; preds = %239, %224, %33
  %243 = phi i32 [ %226, %224 ], [ %31, %33 ], [ %226, %239 ]
  call void @kfree(ptr noundef %36) #10
  br label %244

244:                                              ; preds = %242, %27, %23, %19, %3
  %245 = phi i32 [ %243, %242 ], [ -95, %3 ], [ -22, %19 ], [ -22, %23 ], [ %31, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %245
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_fence_allocate_private_stub() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_syncobj_file_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #10, !srcloc !9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #10, !srcloc !20
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %12, label %10, !prof !12

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #10
  br label %12

11:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void @drm_syncobj_replace_fence(ptr noundef %4, ptr noundef null) #10
  tail call void @kfree(ptr noundef %4) #10
  br label %12

12:                                               ; preds = %11, %10, %8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sync_file_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sync_file_get_fence(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_syncobj_array_wait_timeout(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef writeonly %5) unnamed_addr #0 {
  %7 = alloca ptr, align 4
  %8 = and i32 %3, 2
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 8) #10
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %289, label %11, !prof !11

11:                                               ; preds = %6
  %12 = extractvalue { i32, i1 } %9, 0
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %289, label %15

15:                                               ; preds = %11
  %16 = icmp eq ptr %1, null
  %17 = shl nuw i32 %2, 3
  br i1 %16, label %18, label %19

18:                                               ; preds = %15
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %13, i8 0, i32 %17, i1 false)
  br label %43

19:                                               ; preds = %15
  %20 = icmp slt i32 %17, 0
  %21 = load i1, ptr @check_copy_size.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !11

24:                                               ; preds = %19
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %25

25:                                               ; preds = %24, %19
  br i1 %20, label %287, label %26, !prof !11

26:                                               ; preds = %25
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 %17, i32 -1090519040) #13, !srcloc !33
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37, !prof !12

30:                                               ; preds = %26
  %31 = tail call ptr @llvm.thread.pointer() #10
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %33 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %32) #8, !srcloc !34
  %34 = and i32 %33, -13
  %35 = or i32 %34, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #10, !srcloc !35
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !36
  %36 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %13, ptr noundef nonnull %1, i32 noundef %17) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #10, !srcloc !35
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !36
  br label %37

37:                                               ; preds = %30, %26
  %38 = phi i32 [ %36, %30 ], [ %17, %26 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40, !prof !12

40:                                               ; preds = %37
  %41 = sub i32 %17, %38
  %42 = getelementptr i8, ptr %13, i32 %41
  tail call void @llvm.memset.p0.i32(ptr align 1 %42, i8 0, i32 %38, i1 false) #10
  br label %287

43:                                               ; preds = %37, %18
  %44 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 40) #10
  %45 = extractvalue { i32, i1 } %44, 1
  br i1 %45, label %287, label %46, !prof !11

46:                                               ; preds = %43
  %47 = extractvalue { i32, i1 } %44, 0
  %48 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %47, i32 noundef 3520) #12
  %49 = icmp eq ptr %48, null
  br i1 %49, label %287, label %50

50:                                               ; preds = %46
  %51 = icmp eq i32 %2, 0
  br i1 %51, label %161, label %52

52:                                               ; preds = %50
  %53 = tail call ptr @llvm.thread.pointer() #10
  %54 = and i32 %3, 4
  %55 = icmp eq i32 %54, 0
  %56 = icmp ne ptr %5, null
  %57 = icmp eq i32 %8, 0
  br label %58

58:                                               ; preds = %157, %52
  %59 = phi i32 [ 0, %52 ], [ %159, %157 ]
  %60 = phi i32 [ 0, %52 ], [ %158, %157 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store ptr null, ptr %7, align 4, !annotation !26
  %61 = getelementptr %struct.syncobj_wait_entry, ptr %48, i32 %59, i32 1
  store ptr %53, ptr %61, align 8
  %62 = getelementptr i64, ptr %13, i32 %59
  %63 = load i64, ptr %62, align 8
  %64 = getelementptr %struct.syncobj_wait_entry, ptr %48, i32 %59, i32 4
  store i64 %63, ptr %64, align 8
  %65 = getelementptr ptr, ptr %0, i32 %59
  %66 = load ptr, ptr %65, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %67 = getelementptr inbounds %struct.drm_syncobj, ptr %66, i32 0, i32 1
  %68 = load volatile ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %109, label %70

70:                                               ; preds = %106, %58
  %71 = phi ptr [ %107, %106 ], [ %68, %58 ]
  %72 = getelementptr inbounds %struct.dma_fence, ptr %71, i32 0, i32 6
  %73 = load volatile i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %85, %70
  %76 = phi i32 [ %83, %85 ], [ %73, %70 ]
  %77 = add i32 %76, 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %72) #10, !srcloc !9
  br label %78

78:                                               ; preds = %78, %75
  %79 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %72, ptr %72, i32 %76, i32 %77, ptr elementtype(i32) %72) #10, !srcloc !18
  %80 = extractvalue { i32, i32 } %79, 0
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %78

82:                                               ; preds = %78
  %83 = extractvalue { i32, i32 } %79, 1
  %84 = icmp eq i32 %83, %76
  br i1 %84, label %87, label %85, !prof !12

85:                                               ; preds = %82
  %86 = icmp eq i32 %83, 0
  br i1 %86, label %87, label %75

87:                                               ; preds = %85, %82, %70
  %88 = phi i32 [ 0, %70 ], [ 0, %85 ], [ %76, %82 ]
  %89 = add i32 %88, 1
  %90 = or i32 %89, %88
  %91 = icmp sgt i32 %90, -1
  br i1 %91, label %93, label %92, !prof !12

92:                                               ; preds = %87
  call void @refcount_warn_saturate(ptr noundef %72, i32 noundef 0) #10
  br label %93

93:                                               ; preds = %92, %87
  %94 = icmp eq i32 %88, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %93
  %96 = load volatile ptr, ptr %67, align 4
  %97 = icmp eq ptr %71, %96
  br i1 %97, label %110, label %98

98:                                               ; preds = %95
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %72) #10, !srcloc !9
  %99 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %72, ptr %72, i32 1, ptr elementtype(i32) %72) #10, !srcloc !20
  %100 = extractvalue { i32, i32, i32 } %99, 0
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = icmp sgt i32 %100, 0
  br i1 %103, label %106, label %104, !prof !12

104:                                              ; preds = %102
  call void @refcount_warn_saturate(ptr noundef %72, i32 noundef 3) #10
  br label %106

105:                                              ; preds = %98
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  call void @dma_fence_release(ptr noundef %72) #10, !callees !22
  br label %106

106:                                              ; preds = %105, %104, %102, %93
  %107 = load volatile ptr, ptr %67, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %70

109:                                              ; preds = %106, %58
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  br label %128

110:                                              ; preds = %95
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  store ptr %71, ptr %7, align 4
  %111 = icmp eq ptr %71, null
  br i1 %111, label %128, label %112

112:                                              ; preds = %110
  %113 = load i64, ptr %62, align 8
  %114 = call i32 @dma_fence_chain_find_seqno(ptr noundef nonnull %7, i64 noundef %113) #10
  %115 = icmp eq i32 %114, 0
  %116 = load ptr, ptr %7, align 4
  %117 = icmp eq ptr %116, null
  br i1 %115, label %129, label %118

118:                                              ; preds = %112
  br i1 %117, label %128, label %119

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct.dma_fence, ptr %116, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %120) #10, !srcloc !9
  %121 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %120, ptr %120, i32 1, ptr elementtype(i32) %120) #10, !srcloc !20
  %122 = extractvalue { i32, i32, i32 } %121, 0
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = icmp sgt i32 %122, 0
  br i1 %125, label %128, label %126, !prof !12

126:                                              ; preds = %124
  call void @refcount_warn_saturate(ptr noundef %120, i32 noundef 3) #10
  br label %128

127:                                              ; preds = %119
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  call void @dma_fence_release(ptr noundef %120) #10, !callees !22
  br label %128

128:                                              ; preds = %127, %126, %124, %118, %110, %109
  br i1 %57, label %156, label %157

129:                                              ; preds = %112
  br i1 %117, label %130, label %132

130:                                              ; preds = %129
  %131 = call ptr @dma_fence_get_stub() #10
  br label %132

132:                                              ; preds = %130, %129
  %133 = phi ptr [ %131, %130 ], [ %116, %129 ]
  %134 = getelementptr %struct.syncobj_wait_entry, ptr %48, i32 %59, i32 2
  store ptr %133, ptr %134, align 4
  br i1 %55, label %135, label %150

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.dma_fence, ptr %133, i32 0, i32 5
  %137 = load volatile i32, ptr %136, align 4
  %138 = and i32 %137, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.dma_fence, ptr %133, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.dma_fence_ops, ptr %142, i32 0, i32 4
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %157, label %146

146:                                              ; preds = %140
  %147 = call zeroext i1 %144(ptr noundef %133) #10
  br i1 %147, label %148, label %157

148:                                              ; preds = %146
  %149 = call i32 @dma_fence_signal(ptr noundef %133) #10
  br label %150

150:                                              ; preds = %148, %135, %132
  %151 = icmp eq i32 %60, 0
  %152 = and i1 %56, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  store i32 %59, ptr %5, align 4
  br label %154

154:                                              ; preds = %153, %150
  %155 = add i32 %60, 1
  br label %157

156:                                              ; preds = %128
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  br label %244

157:                                              ; preds = %154, %146, %140, %128
  %158 = phi i32 [ %60, %146 ], [ %60, %140 ], [ %155, %154 ], [ %60, %128 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  %159 = add nuw i32 %59, 1
  %160 = icmp eq i32 %159, %2
  br i1 %160, label %161, label %58

161:                                              ; preds = %157, %50
  %162 = phi i32 [ 0, %50 ], [ %158, %157 ]
  %163 = icmp eq i32 %162, %2
  br i1 %163, label %244, label %164

164:                                              ; preds = %161
  %165 = icmp ne i32 %162, 0
  %166 = and i32 %3, 1
  %167 = icmp eq i32 %166, 0
  %168 = and i1 %167, %165
  br i1 %168, label %244, label %169

169:                                              ; preds = %164
  %170 = icmp ne i32 %8, 0
  %171 = icmp ne i32 %2, 0
  %172 = and i1 %170, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %173, %169
  %174 = phi i32 [ %178, %173 ], [ 0, %169 ]
  %175 = getelementptr ptr, ptr %0, i32 %174
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr %struct.syncobj_wait_entry, ptr %48, i32 %174
  call fastcc void @drm_syncobj_fence_add_wait(ptr noundef %176, ptr noundef %177)
  %178 = add nuw i32 %174, 1
  %179 = icmp eq i32 %178, %2
  br i1 %179, label %180, label %173

180:                                              ; preds = %173, %169
  %181 = tail call ptr @llvm.thread.pointer() #10
  %182 = getelementptr inbounds %struct.task_struct, ptr %181, i32 0, i32 1
  %183 = and i32 %3, 4
  %184 = icmp eq i32 %183, 0
  br label %185

185:                                              ; preds = %240, %180
  %186 = phi i32 [ %4, %180 ], [ %241, %240 ]
  store volatile i32 1, ptr %182, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !38
  br i1 %51, label %227, label %187

187:                                              ; preds = %223, %185
  %188 = phi i32 [ %225, %223 ], [ 0, %185 ]
  %189 = phi i32 [ %224, %223 ], [ 0, %185 ]
  %190 = getelementptr %struct.syncobj_wait_entry, ptr %48, i32 %188, i32 2
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %223, label %193

193:                                              ; preds = %187
  br i1 %184, label %194, label %217

194:                                              ; preds = %193
  %195 = getelementptr inbounds %struct.dma_fence, ptr %191, i32 0, i32 5
  %196 = load volatile i32, ptr %195, align 4
  %197 = and i32 %196, 1
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %217

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.dma_fence, ptr %191, i32 0, i32 1
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.dma_fence_ops, ptr %201, i32 0, i32 4
  %203 = load ptr, ptr %202, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %209, label %205

205:                                              ; preds = %199
  %206 = call zeroext i1 %203(ptr noundef nonnull %191) #10
  br i1 %206, label %207, label %209

207:                                              ; preds = %205
  %208 = call i32 @dma_fence_signal(ptr noundef nonnull %191) #10
  br label %217

209:                                              ; preds = %205, %199
  %210 = getelementptr %struct.syncobj_wait_entry, ptr %48, i32 %188, i32 3, i32 1
  %211 = load ptr, ptr %210, align 8
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %223

213:                                              ; preds = %209
  %214 = getelementptr %struct.syncobj_wait_entry, ptr %48, i32 %188, i32 3
  %215 = call i32 @dma_fence_add_callback(ptr noundef nonnull %191, ptr noundef %214, ptr noundef nonnull @syncobj_wait_fence_func) #10
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %213, %207, %194, %193
  br i1 %167, label %220, label %218

218:                                              ; preds = %217
  %219 = add i32 %189, 1
  br label %223

220:                                              ; preds = %217
  %221 = icmp eq ptr %5, null
  br i1 %221, label %242, label %222

222:                                              ; preds = %220
  store i32 %188, ptr %5, align 4
  br label %242

223:                                              ; preds = %218, %213, %209, %187
  %224 = phi i32 [ %219, %218 ], [ %189, %209 ], [ %189, %213 ], [ %189, %187 ]
  %225 = add nuw i32 %188, 1
  %226 = icmp eq i32 %225, %2
  br i1 %226, label %227, label %187

227:                                              ; preds = %223, %185
  %228 = phi i32 [ 0, %185 ], [ %224, %223 ]
  %229 = icmp eq i32 %228, %2
  br i1 %229, label %242, label %230

230:                                              ; preds = %227
  %231 = icmp eq i32 %186, 0
  br i1 %231, label %242, label %232

232:                                              ; preds = %230
  %233 = load volatile i32, ptr %181, align 4
  %234 = and i32 %233, 256
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %242, !prof !12

236:                                              ; preds = %232
  %237 = load volatile i32, ptr %181, align 4
  %238 = and i32 %237, 1
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = call i32 @schedule_timeout(i32 noundef %186) #10
  br label %185

242:                                              ; preds = %236, %232, %230, %227, %222, %220
  %243 = phi i32 [ %186, %222 ], [ %186, %220 ], [ %186, %227 ], [ -62, %230 ], [ -512, %236 ], [ -512, %232 ]
  store volatile i32 0, ptr %182, align 8
  br label %244

244:                                              ; preds = %242, %164, %161, %156
  %245 = phi i32 [ -22, %156 ], [ %4, %161 ], [ %243, %242 ], [ %4, %164 ]
  br i1 %51, label %286, label %246

246:                                              ; preds = %283, %244
  %247 = phi i32 [ %284, %283 ], [ 0, %244 ]
  %248 = getelementptr %struct.syncobj_wait_entry, ptr %48, i32 %247
  %249 = load ptr, ptr %248, align 8
  %250 = icmp eq ptr %249, null
  br i1 %250, label %261, label %251

251:                                              ; preds = %246
  %252 = getelementptr ptr, ptr %0, i32 %247
  %253 = load ptr, ptr %252, align 4
  %254 = getelementptr inbounds %struct.drm_syncobj, ptr %253, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %254) #10
  %255 = getelementptr inbounds %struct.list_head, ptr %248, i32 0, i32 1
  %256 = load ptr, ptr %255, align 4
  %257 = load ptr, ptr %248, align 8
  %258 = getelementptr inbounds %struct.list_head, ptr %257, i32 0, i32 1
  store ptr %256, ptr %258, align 4
  store volatile ptr %257, ptr %256, align 4
  store volatile ptr %248, ptr %248, align 8
  store ptr %248, ptr %255, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %259 = load i16, ptr %254, align 4
  %260 = add i16 %259, 1
  store i16 %260, ptr %254, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %261

261:                                              ; preds = %251, %246
  %262 = getelementptr %struct.syncobj_wait_entry, ptr %48, i32 %247, i32 3, i32 1
  %263 = load ptr, ptr %262, align 8
  %264 = icmp eq ptr %263, null
  br i1 %264, label %270, label %265

265:                                              ; preds = %261
  %266 = getelementptr %struct.syncobj_wait_entry, ptr %48, i32 %247, i32 3
  %267 = getelementptr %struct.syncobj_wait_entry, ptr %48, i32 %247, i32 2
  %268 = load ptr, ptr %267, align 4
  %269 = call zeroext i1 @dma_fence_remove_callback(ptr noundef %268, ptr noundef %266) #10
  br label %270

270:                                              ; preds = %265, %261
  %271 = getelementptr %struct.syncobj_wait_entry, ptr %48, i32 %247, i32 2
  %272 = load ptr, ptr %271, align 4
  %273 = icmp eq ptr %272, null
  br i1 %273, label %283, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.dma_fence, ptr %272, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %275) #10, !srcloc !9
  %276 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %275, ptr %275, i32 1, ptr elementtype(i32) %275) #10, !srcloc !20
  %277 = extractvalue { i32, i32, i32 } %276, 0
  %278 = icmp eq i32 %277, 1
  br i1 %278, label %282, label %279

279:                                              ; preds = %274
  %280 = icmp sgt i32 %277, 0
  br i1 %280, label %283, label %281, !prof !12

281:                                              ; preds = %279
  call void @refcount_warn_saturate(ptr noundef %275, i32 noundef 3) #10
  br label %283

282:                                              ; preds = %274
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  call void @dma_fence_release(ptr noundef %275) #10, !callees !22
  br label %283

283:                                              ; preds = %282, %281, %279, %270
  %284 = add nuw i32 %247, 1
  %285 = icmp eq i32 %284, %2
  br i1 %285, label %286, label %246

286:                                              ; preds = %283, %244
  call void @kfree(ptr noundef nonnull %48) #10
  br label %287

287:                                              ; preds = %286, %46, %43, %40, %25
  %288 = phi i32 [ %245, %286 ], [ -12, %46 ], [ -14, %40 ], [ -14, %25 ], [ -12, %43 ]
  call void @kfree(ptr noundef nonnull %13) #10
  br label %289

289:                                              ; preds = %287, %11, %6
  %290 = phi i32 [ %288, %287 ], [ -12, %11 ], [ -12, %6 ]
  ret i32 %290
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_add_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @syncobj_wait_fence_func(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @wake_up_process(ptr noundef %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_fence_remove_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i64 873474, i64 2148363445, i64 2148363471, i64 2148363518, i64 2148363540, i64 2148363568, i64 2148363588}
!10 = !{i64 2148376318, i64 2148376350, i64 2148376379, i64 2148376413, i64 2148376444, i64 2148376467}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149040540}
!14 = !{i64 2149036364}
!15 = !{i64 2149036439, i64 2149036466, i64 2149036513, i64 2149036535, i64 2149036563, i64 2149036583}
!16 = !{i64 2149063543}
!17 = !{i64 2149193244}
!18 = !{i64 859537, i64 859561, i64 859582, i64 859599, i64 859616}
!19 = !{i64 2148476540}
!20 = !{i64 2148378675, i64 2148378707, i64 2148378736, i64 2148378770, i64 2148378801, i64 2148378824}
!21 = !{i64 2149800516}
!22 = !{ptr @dma_fence_release, ptr @drm_syncobj_free}
!23 = !{i64 2149193461}
!24 = !{i64 2153613407}
!25 = !{i64 2153627704}
!26 = !{!"auto-init"}
!27 = !{i64 2153639312}
!28 = !{i64 797852}
!29 = !{i64 2151593406}
!30 = !{!31}
!31 = distinct !{!31, !32, !"fdget: argument 0"}
!32 = distinct !{!32, !"fdget"}
!33 = !{i64 2151005595, i64 2151005620}
!34 = !{i64 3501707}
!35 = !{i64 3501904}
!36 = !{i64 2150987183}
!37 = !{i64 2151006173, i64 2151006198}
!38 = !{i64 2153660410}
