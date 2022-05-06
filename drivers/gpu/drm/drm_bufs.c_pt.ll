; ModuleID = '/llk/IR/drivers/gpu/drm/drm_bufs.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_bufs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_addmap:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_addmap\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_addmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_findmap:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_findmap\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_findmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_rmmap_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_rmmap_locked\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_rmmap_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_rmmap:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_rmmap\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_rmmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_addbufs_pci:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_addbufs_pci\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_addbufs_pci:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_getsarea:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_getsarea\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_getsarea:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_map_list = type { %struct.list_head, %struct.drm_hash_item, ptr, i64, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_hash_item = type { %struct.hlist_node, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_local_map = type { i32, i32, i32, i32, ptr, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.61, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.66, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.61 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.66 = type { i32, ptr }
%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr, %struct.drm_lock_data }
%struct.drm_lock_data = type { ptr, ptr, %struct.wait_queue_head, i32, %struct.spinlock, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_agp_head = type { %struct.agp_kern_info, %struct.list_head, i32, ptr, i32, i32, i32, i32, i32, i32 }
%struct.agp_kern_info = type { %struct.agp_version, ptr, i32, i32, i32, i32, i32, i32, i8, i32, ptr }
%struct.agp_version = type { i16, i16 }
%struct.drm_sg_mem = type { i32, ptr, i32, ptr, ptr }
%struct.drm_map = type { i32, i32, i32, i32, ptr, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_buf_desc = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_buf_entry = type { i32, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.drm_device_dma = type { [23 x %struct.drm_buf_entry], i32, ptr, i32, i32, ptr, i32, i32 }
%struct.drm_dma_handle = type { i32, ptr, i32 }
%struct.drm_buf = type { i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.drm_buf_info = type { i32, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_buf_free = type { i32, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_buf_map = type { i32, ptr, ptr }
%struct.drm_buf_pub = type { i32, i32, i32, ptr }

@__kstrtab_drm_legacy_addmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_addmap = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_addmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_addmap to i32), ptr @__kstrtab_drm_legacy_addmap, ptr @__kstrtabns_drm_legacy_addmap }, section "___ksymtab+drm_legacy_addmap", align 4
@__kstrtab_drm_legacy_findmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_findmap = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_findmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_findmap to i32), ptr @__kstrtab_drm_legacy_findmap, ptr @__kstrtabns_drm_legacy_findmap }, section "___ksymtab+drm_legacy_findmap", align 4
@__kstrtab_drm_legacy_rmmap_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_rmmap_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_rmmap_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_rmmap_locked to i32), ptr @__kstrtab_drm_legacy_rmmap_locked, ptr @__kstrtabns_drm_legacy_rmmap_locked }, section "___ksymtab+drm_legacy_rmmap_locked", align 4
@__kstrtab_drm_legacy_rmmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_rmmap = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_rmmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_rmmap to i32), ptr @__kstrtab_drm_legacy_rmmap, ptr @__kstrtabns_drm_legacy_rmmap }, section "___ksymtab+drm_legacy_rmmap", align 4
@.str = private unnamed_addr constant [34 x i8] c"count=%d, size=%d (%d), order=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"pagelist: %d entries\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"page %d @ 0x%08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"buffer %d @ %p\0A\00", align 1
@__kstrtab_drm_legacy_addbufs_pci = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_addbufs_pci = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_addbufs_pci = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_addbufs_pci to i32), ptr @__kstrtab_drm_legacy_addbufs_pci, ptr @__kstrtabns_drm_legacy_addbufs_pci }, section "___ksymtab+drm_legacy_addbufs_pci", align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"count = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%d %d %d %d %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%d, %d, %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Index %d (of %d max)\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Process %d freeing buffer not owned\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"%d buffers, retcode = %d\0A\00", align 1
@__kstrtab_drm_legacy_getsarea = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_getsarea = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_getsarea = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_getsarea to i32), ptr @__kstrtab_drm_legacy_getsarea, ptr @__kstrtabns_drm_legacy_getsarea }, section "___ksymtab+drm_legacy_getsarea", align 4
@.str.11 = private unnamed_addr constant [46 x i8] c"offset = 0x%08llx, size = 0x%08lx, type = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"Matching maps of type %d with mismatched sizes, (%ld vs %ld)\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"%lu %d %p\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"AGP offset = 0x%08llx, size = 0x%08lx\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"count:      %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"order:      %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"size:       %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"agp_offset: %lu\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"alignment:  %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"page_order: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"total:      %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"byte_count: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"dma->buf_count : %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"entry->buf_count : %d\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_drm_legacy_addbufs_pci, ptr @__ksymtab_drm_legacy_addmap, ptr @__ksymtab_drm_legacy_findmap, ptr @__ksymtab_drm_legacy_getsarea, ptr @__ksymtab_drm_legacy_rmmap, ptr @__ksymtab_drm_legacy_rmmap_locked], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_addmap(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #0 {
  %7 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store ptr null, ptr %7, align 4, !annotation !8
  %8 = call fastcc i32 @drm_addmap_core(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.drm_map_list, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %5, align 4
  br label %14

14:                                               ; preds = %10, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_addmap_core(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 {
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 24) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %228, label %10

10:                                               ; preds = %6
  store i32 %1, ptr %8, align 8
  %11 = getelementptr inbounds %struct.drm_local_map, ptr %8, i32 0, i32 1
  store i32 %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.drm_local_map, ptr %8, i32 0, i32 3
  store i32 %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.drm_local_map, ptr %8, i32 0, i32 2
  store i32 %3, ptr %13, align 8
  %14 = and i32 %4, 64
  %15 = icmp eq i32 %14, 0
  %16 = icmp eq i32 %3, 2
  %17 = or i1 %16, %15
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  tail call void @kfree(ptr noundef nonnull %8) #11
  br label %228

19:                                               ; preds = %10
  %20 = zext i32 %1 to i64
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.11, i64 noundef %20, i32 noundef %2, i32 noundef %3) #11
  %21 = load i32, ptr %13, align 8
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, ptr %11, align 4
  %25 = add i32 %24, 4095
  %26 = and i32 %25, -4096
  store i32 %26, ptr %11, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32, ptr %8, align 8
  %29 = and i32 %28, 4095
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, ptr %11, align 4
  %33 = and i32 %32, 4095
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31, %27
  tail call void @kfree(ptr noundef nonnull %8) #11
  br label %228

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.drm_local_map, ptr %8, i32 0, i32 5
  store i32 -1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.drm_local_map, ptr %8, i32 0, i32 4
  store ptr null, ptr %38, align 8
  switch i32 %21, label %177 [
    i32 1, label %39
    i32 0, label %39
    i32 2, label %73
    i32 3, label %112
    i32 4, label %161
    i32 5, label %171
  ]

39:                                               ; preds = %36, %36
  %40 = tail call fastcc ptr @drm_find_matching_map(ptr noundef %0, ptr noundef nonnull %8)
  %41 = icmp eq ptr %40, null
  br i1 %41, label %53, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.drm_map_list, ptr %40, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.drm_local_map, ptr %44, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, %32
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %21, i32 noundef %32, i32 noundef %46) #11
  %49 = load i32, ptr %11, align 4
  %50 = load ptr, ptr %43, align 4
  %51 = getelementptr inbounds %struct.drm_local_map, ptr %50, i32 0, i32 1
  store i32 %49, ptr %51, align 4
  br label %52

52:                                               ; preds = %48, %42
  tail call void @kfree(ptr noundef nonnull %8) #11
  store ptr %40, ptr %5, align 4
  br label %228

53:                                               ; preds = %39
  %54 = icmp eq i32 %21, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %53
  %56 = load i32, ptr %12, align 4
  %57 = and i32 %56, 16
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  store i32 0, ptr %37, align 4
  br label %61

60:                                               ; preds = %53
  store i32 0, ptr %37, align 4
  br label %178

61:                                               ; preds = %59, %55
  %62 = load i32, ptr %12, align 4
  %63 = and i32 %62, 16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = tail call ptr @ioremap_wc(i32 noundef %28, i32 noundef %32) #11
  br label %69

67:                                               ; preds = %61
  %68 = tail call ptr @ioremap(i32 noundef %28, i32 noundef %32) #11
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi ptr [ %68, %67 ], [ %66, %65 ]
  store ptr %70, ptr %38, align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %178

72:                                               ; preds = %69
  tail call void @kfree(ptr noundef nonnull %8) #11
  br label %228

73:                                               ; preds = %36
  %74 = tail call fastcc ptr @drm_find_matching_map(ptr noundef %0, ptr noundef nonnull %8)
  %75 = icmp eq ptr %74, null
  br i1 %75, label %87, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.drm_map_list, ptr %74, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.drm_local_map, ptr %78, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, %32
  br i1 %81, label %86, label %82

82:                                               ; preds = %76
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef 2, i32 noundef %32, i32 noundef %80) #11
  %83 = load i32, ptr %11, align 4
  %84 = load ptr, ptr %77, align 4
  %85 = getelementptr inbounds %struct.drm_local_map, ptr %84, i32 0, i32 1
  store i32 %83, ptr %85, align 4
  br label %86

86:                                               ; preds = %82, %76
  tail call void @kfree(ptr noundef nonnull %8) #11
  store ptr %74, ptr %5, align 4
  br label %228

87:                                               ; preds = %73
  %88 = tail call noalias ptr @vmalloc_user(i32 noundef %32) #13
  store ptr %88, ptr %38, align 8
  %89 = load i32, ptr %11, align 4
  %90 = icmp ugt i32 %89, 1
  %91 = add i32 %89, -1
  %92 = tail call i32 @llvm.ctlz.i32(i32 %91, i1 false) #11, !range !9
  %93 = sub nuw nsw i32 32, %92
  %94 = select i1 %90, i32 %93, i32 0
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef %89, i32 noundef %94, ptr noundef %88) #11
  %95 = load ptr, ptr %38, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  tail call void @kfree(ptr noundef nonnull %8) #11
  br label %228

98:                                               ; preds = %87
  %99 = ptrtoint ptr %95 to i32
  store i32 %99, ptr %8, align 8
  %100 = load i32, ptr %12, align 4
  %101 = and i32 %100, 32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %178, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 9
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.drm_master, ptr %105, i32 0, i32 12
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %103
  tail call void @vfree(ptr noundef nonnull %95) #11
  tail call void @kfree(ptr noundef nonnull %8) #11
  br label %228

110:                                              ; preds = %103
  store ptr %95, ptr %106, align 4
  %111 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 51, i32 1
  store ptr %95, ptr %111, align 4
  br label %178

112:                                              ; preds = %36
  %113 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 38
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  tail call void @kfree(ptr noundef nonnull %8) #11
  br label %228

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.drm_agp_head, ptr %114, i32 0, i32 6
  %119 = load i32, ptr %118, align 4
  %120 = icmp ult i32 %28, %119
  br i1 %120, label %128, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.agp_kern_info, ptr %114, i32 0, i32 5
  %123 = load i32, ptr %122, align 4
  %124 = shl i32 %123, 20
  %125 = add i32 %119, -1
  %126 = add i32 %125, %124
  %127 = icmp ugt i32 %28, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %121, %117
  %129 = add i32 %119, %28
  store i32 %129, ptr %8, align 8
  br label %130

130:                                              ; preds = %128, %121
  %131 = phi i32 [ %129, %128 ], [ %28, %121 ]
  %132 = getelementptr inbounds %struct.drm_agp_head, ptr %114, i32 0, i32 7
  %133 = load i32, ptr %132, align 4
  store i32 %133, ptr %37, align 4
  %134 = getelementptr inbounds %struct.drm_agp_head, ptr %114, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, %134
  br i1 %136, label %155, label %137

137:                                              ; preds = %130
  %138 = add i32 %32, %131
  br label %139

139:                                              ; preds = %152, %137
  %140 = phi ptr [ %135, %137 ], [ %153, %152 ]
  %141 = getelementptr i8, ptr %140, i32 -8
  %142 = load i32, ptr %141, align 4
  %143 = icmp ult i32 %131, %142
  br i1 %143, label %152, label %144

144:                                              ; preds = %139
  %145 = getelementptr i8, ptr %140, i32 -4
  %146 = load i32, ptr %145, align 4
  %147 = shl i32 %146, 12
  %148 = add i32 %147, %142
  %149 = icmp ugt i32 %138, %148
  br i1 %149, label %152, label %150

150:                                              ; preds = %144
  %151 = load volatile ptr, ptr %134, align 4
  br label %159

152:                                              ; preds = %144, %139
  %153 = load ptr, ptr %140, align 4
  %154 = icmp eq ptr %153, %134
  br i1 %154, label %155, label %139

155:                                              ; preds = %152, %130
  %156 = load volatile ptr, ptr %134, align 4
  %157 = icmp eq ptr %156, %134
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  tail call void @kfree(ptr noundef nonnull %8) #11
  br label %228

159:                                              ; preds = %155, %150
  %160 = zext i32 %131 to i64
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.14, i64 noundef %160, i32 noundef %32) #11
  br label %178

161:                                              ; preds = %36
  %162 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 54
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  tail call void @kfree(ptr noundef nonnull %8) #11
  br label %228

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.drm_sg_mem, ptr %163, i32 0, i32 1
  %168 = load ptr, ptr %167, align 4
  %169 = ptrtoint ptr %168 to i32
  %170 = add i32 %28, %169
  store i32 %170, ptr %8, align 8
  br label %178

171:                                              ; preds = %36
  %172 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %173 = load ptr, ptr %172, align 4
  %174 = tail call ptr @dma_alloc_attrs(ptr noundef %173, i32 noundef %32, ptr noundef nonnull %8, i32 noundef 3264, i32 noundef 0) #11
  store ptr %174, ptr %38, align 8
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  tail call void @kfree(ptr noundef nonnull %8) #11
  br label %228

177:                                              ; preds = %36
  tail call void @kfree(ptr noundef nonnull %8) #11
  br label %228

178:                                              ; preds = %171, %166, %159, %110, %98, %69, %60
  %179 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %180 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %179, i32 noundef 3520, i32 noundef 40) #12
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %188

182:                                              ; preds = %178
  %183 = load i32, ptr %13, align 8
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = load ptr, ptr %38, align 8
  tail call void @iounmap(ptr noundef %186) #11
  br label %187

187:                                              ; preds = %185, %182
  tail call void @kfree(ptr noundef nonnull %8) #11
  br label %228

188:                                              ; preds = %178
  %189 = getelementptr inbounds %struct.drm_map_list, ptr %180, i32 0, i32 2
  store ptr %8, ptr %189, align 4
  %190 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %190) #11
  %191 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 42
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr inbounds %struct.list_head, ptr %192, i32 0, i32 1
  store ptr %180, ptr %193, align 4
  store ptr %192, ptr %180, align 8
  %194 = getelementptr inbounds %struct.list_head, ptr %180, i32 0, i32 1
  store ptr %191, ptr %194, align 4
  store volatile ptr %180, ptr %191, align 4
  %195 = load i32, ptr %13, align 8
  %196 = icmp eq i32 %195, 2
  br i1 %196, label %197, label %200

197:                                              ; preds = %188
  %198 = load ptr, ptr %38, align 8
  %199 = ptrtoint ptr %198 to i32
  br label %202

200:                                              ; preds = %188
  %201 = load i32, ptr %8, align 8
  br label %202

202:                                              ; preds = %200, %197
  %203 = phi i32 [ %199, %197 ], [ %201, %200 ]
  %204 = getelementptr inbounds %struct.drm_map_list, ptr %180, i32 0, i32 1
  %205 = zext i1 %196 to i32
  %206 = tail call fastcc i32 @drm_map_handle(ptr noundef %0, ptr noundef %204, i32 noundef %203, i32 noundef %205)
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %214, label %208

208:                                              ; preds = %202
  %209 = load i32, ptr %13, align 8
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = load ptr, ptr %38, align 8
  tail call void @iounmap(ptr noundef %212) #11
  br label %213

213:                                              ; preds = %211, %208
  tail call void @kfree(ptr noundef nonnull %8) #11
  tail call void @kfree(ptr noundef nonnull %180) #11
  tail call void @mutex_unlock(ptr noundef %190) #11
  br label %228

214:                                              ; preds = %202
  %215 = getelementptr inbounds %struct.drm_map_list, ptr %180, i32 0, i32 1, i32 1
  %216 = load i32, ptr %215, align 8
  %217 = shl i32 %216, 12
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.drm_map_list, ptr %180, i32 0, i32 3
  store i64 %218, ptr %219, align 8
  tail call void @mutex_unlock(ptr noundef %190) #11
  %220 = load i32, ptr %12, align 4
  %221 = and i32 %220, 128
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %214
  %224 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 9
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr inbounds %struct.drm_map_list, ptr %180, i32 0, i32 4
  store ptr %225, ptr %226, align 8
  br label %227

227:                                              ; preds = %223, %214
  store ptr %180, ptr %5, align 4
  br label %228

228:                                              ; preds = %227, %213, %187, %177, %176, %165, %158, %116, %109, %97, %86, %72, %52, %35, %18, %6
  %229 = phi i32 [ -22, %18 ], [ -22, %35 ], [ -22, %177 ], [ %206, %213 ], [ 0, %227 ], [ -22, %187 ], [ -12, %176 ], [ -22, %165 ], [ 0, %86 ], [ -16, %109 ], [ -12, %97 ], [ 0, %52 ], [ -12, %72 ], [ -12, %6 ], [ -22, %116 ], [ -1, %158 ]
  ret i32 %229
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @drm_legacy_findmap(ptr noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 42
  %4 = zext i32 %1 to i64
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi ptr [ %3, %2 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.drm_map_list, ptr %7, i32 0, i32 3
  %11 = load i64, ptr %10, align 8
  %12 = icmp eq i64 %11, %4
  br i1 %12, label %13, label %5

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.drm_map_list, ptr %7, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %5
  %17 = phi ptr [ %15, %13 ], [ null, %5 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_addmap_ioctl(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store ptr null, ptr %4, align 4, !annotation !8
  %5 = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.drm_map, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, -2
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %39

11:                                               ; preds = %6, %3
  %12 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_driver, ptr %13, i32 0, i32 24
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, %15
  %19 = and i32 %18, -2080374784
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %11
  %22 = load i32, ptr %1, align 4
  %23 = getelementptr inbounds %struct.drm_map, ptr %1, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.drm_map, ptr %1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.drm_map, ptr %1, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = call fastcc i32 @drm_addmap_core(ptr noundef %0, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, ptr noundef nonnull %4)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr inbounds %struct.drm_map_list, ptr %32, i32 0, i32 3
  %34 = load i64, ptr %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = inttoptr i32 %35 to ptr
  %37 = getelementptr inbounds %struct.drm_map, ptr %1, i32 0, i32 4
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.drm_map, ptr %1, i32 0, i32 5
  store i32 -1, ptr %38, align 4
  br label %39

39:                                               ; preds = %31, %21, %11, %6
  %40 = phi i32 [ 0, %31 ], [ -1, %6 ], [ %29, %21 ], [ -95, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_getmap_ioctl(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = and i32 %10, -2080374784
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %57, label %13

13:                                               ; preds = %3
  %14 = load i32, ptr %1, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %57, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %17) #11
  %18 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 42
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %55, label %25

21:                                               ; preds = %25
  %22 = add nuw i32 %27, 1
  %23 = load ptr, ptr %26, align 4
  %24 = icmp eq ptr %23, %18
  br i1 %24, label %55, label %25

25:                                               ; preds = %21, %16
  %26 = phi ptr [ %23, %21 ], [ %19, %16 ]
  %27 = phi i32 [ %22, %21 ], [ 0, %16 ]
  %28 = icmp eq i32 %27, %14
  br i1 %28, label %29, label %21

29:                                               ; preds = %25
  %30 = icmp eq ptr %26, null
  br i1 %30, label %55, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.drm_map_list, ptr %26, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %33, align 4
  store i32 %36, ptr %1, align 4
  %37 = load ptr, ptr %32, align 4
  %38 = getelementptr inbounds %struct.drm_local_map, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.drm_map, ptr %1, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  %41 = load ptr, ptr %32, align 4
  %42 = getelementptr inbounds %struct.drm_local_map, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.drm_map, ptr %1, i32 0, i32 2
  store i32 %43, ptr %44, align 4
  %45 = load ptr, ptr %32, align 4
  %46 = getelementptr inbounds %struct.drm_local_map, ptr %45, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.drm_map, ptr %1, i32 0, i32 3
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.drm_map_list, ptr %26, i32 0, i32 3
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = inttoptr i32 %51 to ptr
  %53 = getelementptr inbounds %struct.drm_map, ptr %1, i32 0, i32 4
  store ptr %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.drm_map, ptr %1, i32 0, i32 5
  store i32 -1, ptr %54, align 4
  br label %55

55:                                               ; preds = %35, %31, %29, %21, %16
  %56 = phi i32 [ 0, %35 ], [ -22, %16 ], [ -22, %31 ], [ -22, %29 ], [ -22, %21 ]
  tail call void @mutex_unlock(ptr noundef %17) #11
  br label %57

57:                                               ; preds = %55, %13, %3
  %58 = phi i32 [ -22, %13 ], [ -95, %3 ], [ %56, %55 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_rmmap_locked(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 42
  %4 = load ptr, ptr %3, align 4
  br label %5

5:                                                ; preds = %8, %2
  %6 = phi ptr [ %4, %2 ], [ %9, %8 ]
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %53, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr inbounds %struct.drm_map_list, ptr %6, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %5

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.drm_map_list, ptr %6, i32 0, i32 4
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %9, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  %19 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 43
  %20 = getelementptr inbounds %struct.drm_map_list, ptr %6, i32 0, i32 3
  %21 = load i64, ptr %20, align 8
  %22 = lshr i64 %21, 12
  %23 = trunc i64 %22 to i32
  %24 = tail call i32 @drm_ht_remove_key(ptr noundef %19, i32 noundef %23) #11
  tail call void @kfree(ptr noundef %6) #11
  %25 = getelementptr inbounds %struct.drm_local_map, ptr %1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %52 [
    i32 1, label %27
    i32 5, label %44
    i32 2, label %30
  ]

27:                                               ; preds = %13
  %28 = getelementptr inbounds %struct.drm_local_map, ptr %1, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  tail call void @iounmap(ptr noundef %29) #11
  br label %52

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.drm_local_map, ptr %1, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  tail call void @vfree(ptr noundef %32) #11
  %33 = icmp eq ptr %15, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 51, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.drm_master, ptr %15, i32 0, i32 12
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store ptr null, ptr %35, align 4
  br label %41

41:                                               ; preds = %40, %34
  store ptr null, ptr %37, align 4
  %42 = getelementptr inbounds %struct.drm_master, ptr %15, i32 0, i32 12, i32 1
  store ptr null, ptr %42, align 4
  %43 = getelementptr inbounds %struct.drm_master, ptr %15, i32 0, i32 12, i32 2
  tail call void @__wake_up(ptr noundef %43, i32 noundef 1, i32 noundef 0, ptr noundef null) #11
  br label %52

44:                                               ; preds = %13
  %45 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.drm_local_map, ptr %1, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.drm_local_map, ptr %1, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = load i32, ptr %1, align 4
  tail call void @dma_free_attrs(ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %51, i32 noundef 0) #11
  br label %52

52:                                               ; preds = %44, %41, %30, %27, %13
  tail call void @kfree(ptr noundef %1) #11
  br label %53

53:                                               ; preds = %52, %5
  %54 = phi i32 [ 0, %52 ], [ -22, %5 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ht_remove_key(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_legacy_rmmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_driver, ptr %4, i32 0, i32 24
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %6
  %10 = and i32 %9, -2080374784
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %13) #11
  %14 = tail call i32 @drm_legacy_rmmap_locked(ptr noundef %0, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %13) #11
  br label %15

15:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_legacy_master_rmmaps(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_driver, ptr %4, i32 0, i32 24
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %6, 67108864
  %10 = and i32 %9, %8
  %11 = icmp eq i32 %10, 67108864
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %13) #11
  %14 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 42
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %29, label %17

17:                                               ; preds = %27, %12
  %18 = phi ptr [ %19, %27 ], [ %15, %12 ]
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.drm_map_list, ptr %18, i32 0, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.drm_map_list, ptr %18, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @drm_legacy_rmmap_locked(ptr noundef %0, ptr noundef %25)
  br label %27

27:                                               ; preds = %23, %17
  %28 = icmp eq ptr %19, %14
  br i1 %28, label %29, label %17

29:                                               ; preds = %27, %12
  tail call void @mutex_unlock(ptr noundef %13) #11
  br label %30

30:                                               ; preds = %29, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_legacy_rmmaps(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 42
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 14
  br label %9

9:                                                ; preds = %23, %5
  %10 = phi ptr [ %3, %5 ], [ %11, %23 ]
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.drm_driver, ptr %12, i32 0, i32 24
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %7, align 4
  %16 = and i32 %14, -2080374784
  %17 = and i32 %16, %15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.drm_map_list, ptr %10, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void @mutex_lock(ptr noundef %8) #11
  %22 = tail call i32 @drm_legacy_rmmap_locked(ptr noundef %0, ptr noundef %21) #11
  tail call void @mutex_unlock(ptr noundef %8) #11
  br label %23

23:                                               ; preds = %19, %9
  %24 = icmp eq ptr %11, %2
  br i1 %24, label %25, label %9

25:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_rmmap_ioctl(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = and i32 %10, -2080374784
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %53, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %14) #11
  %15 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 42
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.drm_map, ptr %1, i32 0, i32 4
  br label %22

20:                                               ; preds = %39, %13
  %21 = load volatile ptr, ptr %15, align 4
  br label %51

22:                                               ; preds = %39, %18
  %23 = phi ptr [ %16, %18 ], [ %40, %39 ]
  %24 = getelementptr inbounds %struct.drm_map_list, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.drm_map_list, ptr %23, i32 0, i32 3
  %29 = load i64, ptr %28, align 8
  %30 = load ptr, ptr %19, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = zext i32 %31 to i64
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.drm_local_map, ptr %25, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 64
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34, %27, %22
  %40 = load ptr, ptr %23, align 4
  %41 = icmp eq ptr %40, %15
  br i1 %41, label %20, label %22

42:                                               ; preds = %34
  %43 = load volatile ptr, ptr %15, align 4
  %44 = icmp eq ptr %43, %15
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.drm_local_map, ptr %25, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = icmp ult i32 %47, 2
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = tail call i32 @drm_legacy_rmmap_locked(ptr noundef %0, ptr noundef nonnull %25)
  br label %51

51:                                               ; preds = %49, %45, %42, %20
  %52 = phi i32 [ %50, %49 ], [ -22, %20 ], [ -22, %42 ], [ 0, %45 ]
  tail call void @mutex_unlock(ptr noundef %14) #11
  br label %53

53:                                               ; preds = %51, %3
  %54 = phi i32 [ -95, %3 ], [ %52, %51 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_addbufs_pci(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 45
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %8, 134217728
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 134217728
  br i1 %13, label %14, label %265

14:                                               ; preds = %2
  %15 = icmp eq ptr %4, null
  br i1 %15, label %265, label %16

16:                                               ; preds = %14
  %17 = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %17, label %18, label %265

18:                                               ; preds = %16
  %19 = load i32, ptr %1, align 4
  %20 = getelementptr inbounds %struct.drm_buf_desc, ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, 1
  %23 = add i32 %21, -1
  %24 = tail call i32 @llvm.ctlz.i32(i32 %23, i1 false) #11, !range !9
  %25 = sub nuw nsw i32 32, %24
  %26 = select i1 %22, i32 %25, i32 0
  %27 = shl nuw i32 1, %26
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %19, i32 noundef %21, i32 noundef %27, i32 noundef %26) #11
  %28 = add nsw i32 %26, -23
  %29 = icmp ult i32 %28, -18
  br i1 %29, label %265, label %30

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.drm_buf_desc, ptr %1, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  %35 = add nuw i32 %27, 4095
  %36 = and i32 %35, -4096
  %37 = select i1 %34, i32 %27, i32 %36
  %38 = tail call i32 @llvm.smax.i32(i32 %26, i32 12)
  %39 = add nsw i32 %38, -12
  %40 = shl nuw nsw i32 1, %38
  %41 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 48
  tail call void @_raw_spin_lock(ptr noundef %41) #11
  %42 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 49
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %46 = load i16, ptr %41, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %41, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  br label %265

48:                                               ; preds = %30
  %49 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 50
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #11, !srcloc !14
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #11, !srcloc !15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %51 = load i16, ptr %41, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %41, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %53 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %53) #11
  %54 = getelementptr [23 x %struct.drm_buf_entry], ptr %4, i32 0, i32 %26
  %55 = getelementptr [23 x %struct.drm_buf_entry], ptr %4, i32 0, i32 %26, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %48
  tail call void @mutex_unlock(ptr noundef %53) #11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #11, !srcloc !14
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #11, !srcloc !16
  br label %265

60:                                               ; preds = %48
  %61 = icmp ugt i32 %19, 4096
  br i1 %61, label %62, label %64

62:                                               ; preds = %60
  tail call void @mutex_unlock(ptr noundef %53) #11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #11, !srcloc !14
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #11, !srcloc !16
  br label %265

64:                                               ; preds = %60
  %65 = shl nuw nsw i32 %19, 6
  %66 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %65, i32 noundef 3520) #13
  %67 = getelementptr [23 x %struct.drm_buf_entry], ptr %4, i32 0, i32 %26, i32 2
  store ptr %66, ptr %67, align 4
  %68 = icmp eq ptr %66, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  tail call void @mutex_unlock(ptr noundef %53) #11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #11, !srcloc !14
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #11, !srcloc !16
  br label %265

71:                                               ; preds = %64
  %72 = shl nuw nsw i32 %19, 2
  %73 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %72, i32 noundef 3520) #13
  %74 = getelementptr [23 x %struct.drm_buf_entry], ptr %4, i32 0, i32 %26, i32 5
  store ptr %73, ptr %74, align 4
  %75 = icmp eq ptr %73, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load ptr, ptr %67, align 4
  tail call void @kfree(ptr noundef %77) #11
  tail call void @mutex_unlock(ptr noundef %53) #11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #11, !srcloc !14
  %78 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #11, !srcloc !16
  br label %265

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.drm_device_dma, ptr %4, i32 0, i32 4
  %81 = load i32, ptr %80, align 4
  %82 = shl nuw nsw i32 %19, %39
  %83 = add i32 %81, %82
  %84 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %83, i32 4) #11
  %85 = extractvalue { i32, i1 } %84, 1
  br i1 %85, label %90, label %86, !prof !17

86:                                               ; preds = %79
  %87 = extractvalue { i32, i1 } %84, 0
  %88 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %87, i32 noundef 3264) #13
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %86, %79
  %91 = load ptr, ptr %67, align 4
  tail call void @kfree(ptr noundef %91) #11
  %92 = load ptr, ptr %74, align 4
  tail call void @kfree(ptr noundef %92) #11
  tail call void @mutex_unlock(ptr noundef %53) #11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #11, !srcloc !14
  %93 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #11, !srcloc !16
  br label %265

94:                                               ; preds = %86
  %95 = load i32, ptr %80, align 4
  %96 = getelementptr inbounds %struct.drm_device_dma, ptr %4, i32 0, i32 5
  %97 = load ptr, ptr %96, align 4
  %98 = shl i32 %95, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %88, ptr align 4 %97, i32 %98, i1 false)
  %99 = load i32, ptr %80, align 4
  %100 = add i32 %99, %82
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %100) #11
  store i32 %27, ptr %54, align 4
  %101 = getelementptr [23 x %struct.drm_buf_entry], ptr %4, i32 0, i32 %26, i32 4
  store i32 %39, ptr %101, align 4
  %102 = load i32, ptr %55, align 4
  %103 = icmp slt i32 %102, %19
  br i1 %103, label %104, label %199

104:                                              ; preds = %94
  %105 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %106 = getelementptr [23 x %struct.drm_buf_entry], ptr %4, i32 0, i32 %26, i32 3
  %107 = shl nuw nsw i32 1, %39
  %108 = icmp ugt i32 %27, %40
  %109 = getelementptr inbounds %struct.drm_device_dma, ptr %4, i32 0, i32 1
  %110 = getelementptr inbounds %struct.drm_device_dma, ptr %4, i32 0, i32 6
  br label %111

111:                                              ; preds = %195, %104
  %112 = phi i32 [ 0, %104 ], [ %147, %195 ]
  %113 = phi i32 [ 0, %104 ], [ %197, %195 ]
  %114 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %115 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %114, i32 noundef 3264, i32 noundef 12) #12
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  store i32 %19, ptr %55, align 4
  store i32 %19, ptr %106, align 4
  tail call fastcc void @drm_cleanup_buf_error(ptr noundef %0, ptr noundef %54)
  tail call void @kfree(ptr noundef nonnull %88) #11
  tail call void @mutex_unlock(ptr noundef %53) #11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #11, !srcloc !14
  %118 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #11, !srcloc !16
  br label %265

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.drm_dma_handle, ptr %115, i32 0, i32 2
  store i32 %40, ptr %120, align 8
  %121 = load ptr, ptr %105, align 4
  %122 = tail call ptr @dma_alloc_attrs(ptr noundef %121, i32 noundef %40, ptr noundef nonnull %115, i32 noundef 3264, i32 noundef 0) #11
  %123 = getelementptr inbounds %struct.drm_dma_handle, ptr %115, i32 0, i32 1
  store ptr %122, ptr %123, align 4
  %124 = icmp eq ptr %122, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  tail call void @kfree(ptr noundef nonnull %115) #11
  store i32 %19, ptr %55, align 4
  store i32 %19, ptr %106, align 4
  tail call fastcc void @drm_cleanup_buf_error(ptr noundef %0, ptr noundef %54)
  tail call void @kfree(ptr noundef nonnull %88) #11
  tail call void @mutex_unlock(ptr noundef %53) #11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #11, !srcloc !14
  %126 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #11, !srcloc !16
  br label %265

127:                                              ; preds = %119
  %128 = load ptr, ptr %74, align 4
  %129 = load i32, ptr %106, align 4
  %130 = add i32 %129, 1
  store i32 %130, ptr %106, align 4
  %131 = getelementptr ptr, ptr %128, i32 %129
  store ptr %115, ptr %131, align 4
  br label %134

132:                                              ; preds = %134
  %133 = load i32, ptr %55, align 4
  br i1 %108, label %195, label %152

134:                                              ; preds = %134, %127
  %135 = phi i32 [ %147, %134 ], [ %112, %127 ]
  %136 = phi i32 [ %150, %134 ], [ 0, %127 ]
  %137 = load i32, ptr %80, align 4
  %138 = add i32 %137, %135
  %139 = load ptr, ptr %123, align 4
  %140 = ptrtoint ptr %139 to i32
  %141 = shl i32 %136, 12
  %142 = add i32 %141, %140
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %138, i32 noundef %142) #11
  %143 = load ptr, ptr %123, align 4
  %144 = ptrtoint ptr %143 to i32
  %145 = add i32 %141, %144
  %146 = load i32, ptr %80, align 4
  %147 = add i32 %135, 1
  %148 = add i32 %146, %135
  %149 = getelementptr i32, ptr %88, i32 %148
  store i32 %145, ptr %149, align 4
  %150 = add nuw nsw i32 %136, 1
  %151 = icmp eq i32 %150, %107
  br i1 %151, label %132, label %134

152:                                              ; preds = %187, %132
  %153 = phi i32 [ %192, %187 ], [ %133, %132 ]
  %154 = phi i32 [ %190, %187 ], [ 0, %132 ]
  %155 = icmp slt i32 %153, %19
  br i1 %155, label %156, label %195

156:                                              ; preds = %152
  %157 = load ptr, ptr %67, align 4
  %158 = getelementptr %struct.drm_buf, ptr %157, i32 %153
  %159 = load i32, ptr %109, align 4
  %160 = add i32 %159, %153
  store i32 %160, ptr %158, align 4
  %161 = getelementptr %struct.drm_buf, ptr %157, i32 %153, i32 1
  store i32 %37, ptr %161, align 4
  %162 = getelementptr %struct.drm_buf, ptr %157, i32 %153, i32 2
  store i32 %26, ptr %162, align 4
  %163 = getelementptr %struct.drm_buf, ptr %157, i32 %153, i32 3
  store i32 0, ptr %163, align 4
  %164 = load i32, ptr %110, align 4
  %165 = add i32 %154, %113
  %166 = add i32 %165, %164
  %167 = getelementptr %struct.drm_buf, ptr %157, i32 %153, i32 4
  store i32 %166, ptr %167, align 4
  %168 = load ptr, ptr %123, align 4
  %169 = getelementptr i8, ptr %168, i32 %154
  %170 = getelementptr %struct.drm_buf, ptr %157, i32 %153, i32 5
  store ptr %169, ptr %170, align 4
  %171 = load i32, ptr %115, align 8
  %172 = add i32 %171, %154
  %173 = getelementptr %struct.drm_buf, ptr %157, i32 %153, i32 6
  store i32 %172, ptr %173, align 4
  %174 = getelementptr %struct.drm_buf, ptr %157, i32 %153, i32 7
  store ptr null, ptr %174, align 4
  %175 = getelementptr %struct.drm_buf, ptr %157, i32 %153, i32 8
  store volatile i32 0, ptr %175, align 4
  %176 = getelementptr %struct.drm_buf, ptr %157, i32 %153, i32 9
  store volatile i32 0, ptr %176, align 4
  %177 = getelementptr %struct.drm_buf, ptr %157, i32 %153, i32 10
  store ptr null, ptr %177, align 4
  %178 = load ptr, ptr %5, align 4
  %179 = getelementptr inbounds %struct.drm_driver, ptr %178, i32 0, i32 40
  %180 = load i32, ptr %179, align 4
  %181 = getelementptr %struct.drm_buf, ptr %157, i32 %153, i32 14
  store i32 %180, ptr %181, align 4
  %182 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %180, i32 noundef 3520) #13
  %183 = getelementptr %struct.drm_buf, ptr %157, i32 %153, i32 15
  store ptr %182, ptr %183, align 4
  %184 = icmp eq ptr %182, null
  br i1 %184, label %185, label %187

185:                                              ; preds = %156
  store i32 %19, ptr %55, align 4
  store i32 %19, ptr %106, align 4
  tail call fastcc void @drm_cleanup_buf_error(ptr noundef %0, ptr noundef %54)
  tail call void @kfree(ptr noundef nonnull %88) #11
  tail call void @mutex_unlock(ptr noundef %53) #11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #11, !srcloc !14
  %186 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #11, !srcloc !16
  br label %265

187:                                              ; preds = %156
  %188 = load ptr, ptr %170, align 4
  %189 = load i32, ptr %55, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %189, ptr noundef %188) #11
  %190 = add i32 %154, %37
  %191 = load i32, ptr %55, align 4
  %192 = add i32 %191, 1
  store i32 %192, ptr %55, align 4
  %193 = add i32 %190, %27
  %194 = icmp ugt i32 %193, %40
  br i1 %194, label %195, label %152

195:                                              ; preds = %187, %152, %132
  %196 = phi i32 [ %133, %132 ], [ %153, %152 ], [ %192, %187 ]
  %197 = add i32 %113, %40
  %198 = icmp slt i32 %196, %19
  br i1 %198, label %111, label %199

199:                                              ; preds = %195, %94
  %200 = phi i32 [ %102, %94 ], [ %196, %195 ]
  %201 = getelementptr inbounds %struct.drm_device_dma, ptr %4, i32 0, i32 2
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr inbounds %struct.drm_device_dma, ptr %4, i32 0, i32 1
  %204 = load i32, ptr %203, align 4
  %205 = add i32 %204, %200
  %206 = shl i32 %205, 2
  %207 = tail call noalias ptr @krealloc(ptr noundef %202, i32 noundef %206, i32 noundef 3264) #14
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %211

209:                                              ; preds = %199
  tail call fastcc void @drm_cleanup_buf_error(ptr noundef %0, ptr noundef %54)
  tail call void @kfree(ptr noundef nonnull %88) #11
  tail call void @mutex_unlock(ptr noundef %53) #11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #11, !srcloc !14
  %210 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #11, !srcloc !16
  br label %265

211:                                              ; preds = %199
  store ptr %207, ptr %201, align 4
  %212 = load i32, ptr %55, align 4
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %231

214:                                              ; preds = %211
  %215 = load ptr, ptr %67, align 4
  %216 = load i32, ptr %203, align 4
  %217 = getelementptr ptr, ptr %207, i32 %216
  store ptr %215, ptr %217, align 4
  %218 = load i32, ptr %55, align 4
  %219 = icmp sgt i32 %218, 1
  br i1 %219, label %220, label %231

220:                                              ; preds = %220, %214
  %221 = phi i32 [ %228, %220 ], [ 1, %214 ]
  %222 = load ptr, ptr %201, align 4
  %223 = load ptr, ptr %67, align 4
  %224 = getelementptr %struct.drm_buf, ptr %223, i32 %221
  %225 = load i32, ptr %203, align 4
  %226 = add i32 %225, %221
  %227 = getelementptr ptr, ptr %222, i32 %226
  store ptr %224, ptr %227, align 4
  %228 = add nuw nsw i32 %221, 1
  %229 = load i32, ptr %55, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %220, label %231

231:                                              ; preds = %220, %214, %211
  %232 = phi i32 [ %212, %211 ], [ %218, %214 ], [ %229, %220 ]
  %233 = load i32, ptr %80, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %239, label %235

235:                                              ; preds = %231
  %236 = load ptr, ptr %96, align 4
  tail call void @kfree(ptr noundef %236) #11
  %237 = load i32, ptr %55, align 4
  %238 = load i32, ptr %80, align 4
  br label %239

239:                                              ; preds = %235, %231
  %240 = phi i32 [ %238, %235 ], [ 0, %231 ]
  %241 = phi i32 [ %237, %235 ], [ %232, %231 ]
  store ptr %88, ptr %96, align 4
  %242 = load i32, ptr %203, align 4
  %243 = add i32 %242, %241
  store i32 %243, ptr %203, align 4
  %244 = getelementptr [23 x %struct.drm_buf_entry], ptr %4, i32 0, i32 %26, i32 3
  %245 = load i32, ptr %244, align 4
  %246 = getelementptr inbounds %struct.drm_device_dma, ptr %4, i32 0, i32 3
  %247 = load i32, ptr %246, align 4
  %248 = add i32 %247, %245
  store i32 %248, ptr %246, align 4
  %249 = shl i32 %245, %39
  %250 = add i32 %240, %249
  store i32 %250, ptr %80, align 4
  %251 = load i32, ptr %244, align 4
  %252 = shl i32 %251, %39
  %253 = shl i32 %252, 12
  %254 = getelementptr inbounds %struct.drm_device_dma, ptr %4, i32 0, i32 6
  %255 = load i32, ptr %254, align 4
  %256 = add i32 %253, %255
  store i32 %256, ptr %254, align 4
  tail call void @mutex_unlock(ptr noundef %53) #11
  %257 = load i32, ptr %55, align 4
  store i32 %257, ptr %1, align 4
  store i32 %27, ptr %20, align 4
  %258 = load i32, ptr %31, align 4
  %259 = and i32 %258, 16
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %263, label %261

261:                                              ; preds = %239
  %262 = getelementptr inbounds %struct.drm_device_dma, ptr %4, i32 0, i32 7
  store i32 8, ptr %262, align 4
  br label %263

263:                                              ; preds = %261, %239
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #11, !srcloc !14
  %264 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #11, !srcloc !16
  br label %265

265:                                              ; preds = %263, %209, %185, %125, %117, %90, %76, %69, %62, %58, %45, %18, %16, %14, %2
  %266 = phi i32 [ -16, %45 ], [ -12, %58 ], [ -22, %62 ], [ -12, %185 ], [ -12, %125 ], [ -12, %117 ], [ 0, %263 ], [ -12, %209 ], [ -12, %90 ], [ -12, %76 ], [ -12, %69 ], [ -95, %2 ], [ -22, %14 ], [ -1, %16 ], [ -22, %18 ]
  ret i32 %266
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drm_cleanup_buf_error(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_buf_entry, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.drm_buf_entry, ptr %1, i32 0, i32 5
  %10 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  br label %11

11:                                               ; preds = %26, %8
  %12 = phi i32 [ %4, %8 ], [ %27, %26 ]
  %13 = phi i32 [ 0, %8 ], [ %28, %26 ]
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr ptr, ptr %14, i32 %13
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %10, align 4
  %20 = getelementptr inbounds %struct.drm_dma_handle, ptr %16, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.drm_dma_handle, ptr %16, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %16, align 4
  tail call void @dma_free_attrs(ptr noundef %19, i32 noundef %21, ptr noundef %23, i32 noundef %24, i32 noundef 0) #11
  tail call void @kfree(ptr noundef nonnull %16) #11
  %25 = load i32, ptr %3, align 4
  br label %26

26:                                               ; preds = %18, %11
  %27 = phi i32 [ %12, %11 ], [ %25, %18 ]
  %28 = add nuw nsw i32 %13, 1
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %11, label %30

30:                                               ; preds = %26, %6
  %31 = getelementptr inbounds %struct.drm_buf_entry, ptr %1, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %32) #11
  store i32 0, ptr %3, align 4
  br label %33

33:                                               ; preds = %30, %2
  %34 = getelementptr inbounds %struct.drm_buf_entry, ptr %1, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %33
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.drm_buf_entry, ptr %1, i32 0, i32 2
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i32 [ 0, %39 ], [ %46, %41 ]
  %43 = load ptr, ptr %40, align 4
  %44 = getelementptr %struct.drm_buf, ptr %43, i32 %42, i32 15
  %45 = load ptr, ptr %44, align 4
  tail call void @kfree(ptr noundef %45) #11
  %46 = add nuw nsw i32 %42, 1
  %47 = load i32, ptr %34, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %41, label %49

49:                                               ; preds = %41, %37
  %50 = getelementptr inbounds %struct.drm_buf_entry, ptr %1, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  tail call void @kfree(ptr noundef %51) #11
  store i32 0, ptr %34, align 4
  br label %52

52:                                               ; preds = %49, %33
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_addbufs(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = and i32 %10, 603979776
  %12 = icmp eq i32 %11, 603979776
  br i1 %12, label %13, label %193

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.drm_buf_desc, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %188, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 45
  %20 = load ptr, ptr %19, align 4
  %21 = and i32 %10, 268435456
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %193, label %23

23:                                               ; preds = %18
  %24 = icmp eq ptr %20, null
  br i1 %24, label %193, label %25

25:                                               ; preds = %23
  %26 = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %26, label %27, label %193

27:                                               ; preds = %25
  %28 = load i32, ptr %1, align 4
  %29 = getelementptr inbounds %struct.drm_buf_desc, ptr %1, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp ugt i32 %30, 1
  %32 = add i32 %30, -1
  %33 = tail call i32 @llvm.ctlz.i32(i32 %32, i1 false) #11, !range !9
  %34 = sub nuw nsw i32 32, %33
  %35 = select i1 %31, i32 %34, i32 0
  %36 = shl nuw i32 1, %35
  %37 = load i32, ptr %14, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  %40 = add nuw i32 %36, 4095
  %41 = and i32 %40, -4096
  %42 = select i1 %39, i32 %36, i32 %41
  %43 = tail call i32 @llvm.smax.i32(i32 %35, i32 12) #11
  %44 = add nsw i32 %43, -12
  %45 = shl i32 4096, %44
  %46 = getelementptr inbounds %struct.drm_buf_desc, ptr %1, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.15, i32 noundef %28) #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.16, i32 noundef %35) #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef %36) #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.18, i32 noundef %47) #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.19, i32 noundef %42) #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.20, i32 noundef %44) #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef %45) #11
  %48 = add nsw i32 %35, -23
  %49 = icmp ult i32 %48, -18
  br i1 %49, label %193, label %50

50:                                               ; preds = %27
  %51 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 48
  tail call void @_raw_spin_lock(ptr noundef %51) #11
  %52 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 49
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %56 = load i16, ptr %51, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %51, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  br label %193

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 50
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #11, !srcloc !14
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #11, !srcloc !15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %61 = load i16, ptr %51, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %51, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %63 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %63) #11
  %64 = getelementptr [23 x %struct.drm_buf_entry], ptr %20, i32 0, i32 %35
  %65 = getelementptr [23 x %struct.drm_buf_entry], ptr %20, i32 0, i32 %35, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %58
  tail call void @mutex_unlock(ptr noundef %63) #11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #11, !srcloc !14
  %69 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #11, !srcloc !16
  br label %193

70:                                               ; preds = %58
  %71 = icmp ugt i32 %28, 4096
  br i1 %71, label %72, label %74

72:                                               ; preds = %70
  tail call void @mutex_unlock(ptr noundef %63) #11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #11, !srcloc !14
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #11, !srcloc !16
  br label %193

74:                                               ; preds = %70
  %75 = shl nuw nsw i32 %28, 6
  %76 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %75, i32 noundef 3520) #13
  %77 = getelementptr [23 x %struct.drm_buf_entry], ptr %20, i32 0, i32 %35, i32 2
  store ptr %76, ptr %77, align 4
  %78 = icmp eq ptr %76, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load i32, ptr %65, align 4
  store i32 %36, ptr %64, align 4
  %81 = getelementptr [23 x %struct.drm_buf_entry], ptr %20, i32 0, i32 %35, i32 4
  store i32 %44, ptr %81, align 4
  %82 = icmp slt i32 %80, %28
  br i1 %82, label %85, label %135

83:                                               ; preds = %74
  tail call void @mutex_unlock(ptr noundef %63) #11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #11, !srcloc !14
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #11, !srcloc !16
  br label %193

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.drm_device_dma, ptr %20, i32 0, i32 1
  %87 = getelementptr inbounds %struct.drm_device_dma, ptr %20, i32 0, i32 6
  %88 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 54
  br label %89

89:                                               ; preds = %132, %85
  %90 = phi ptr [ %76, %85 ], [ %134, %132 ]
  %91 = phi i32 [ %80, %85 ], [ %129, %132 ]
  %92 = phi i32 [ 0, %85 ], [ %130, %132 ]
  %93 = phi i32 [ 0, %85 ], [ %133, %132 ]
  %94 = getelementptr %struct.drm_buf, ptr %90, i32 %91
  %95 = load i32, ptr %86, align 4
  %96 = add i32 %95, %91
  store i32 %96, ptr %94, align 4
  %97 = getelementptr %struct.drm_buf, ptr %90, i32 %91, i32 1
  store i32 %42, ptr %97, align 4
  %98 = getelementptr %struct.drm_buf, ptr %90, i32 %91, i32 2
  store i32 %35, ptr %98, align 4
  %99 = getelementptr %struct.drm_buf, ptr %90, i32 %91, i32 3
  store i32 0, ptr %99, align 4
  %100 = load i32, ptr %87, align 4
  %101 = add i32 %100, %93
  %102 = getelementptr %struct.drm_buf, ptr %90, i32 %91, i32 4
  store i32 %101, ptr %102, align 4
  %103 = add i32 %93, %47
  %104 = getelementptr %struct.drm_buf, ptr %90, i32 %91, i32 6
  store i32 %103, ptr %104, align 4
  %105 = load ptr, ptr %88, align 4
  %106 = getelementptr inbounds %struct.drm_sg_mem, ptr %105, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = ptrtoint ptr %107 to i32
  %109 = add i32 %103, %108
  %110 = inttoptr i32 %109 to ptr
  %111 = getelementptr %struct.drm_buf, ptr %90, i32 %91, i32 5
  store ptr %110, ptr %111, align 4
  %112 = getelementptr %struct.drm_buf, ptr %90, i32 %91, i32 7
  store ptr null, ptr %112, align 4
  %113 = getelementptr %struct.drm_buf, ptr %90, i32 %91, i32 8
  store volatile i32 0, ptr %113, align 4
  %114 = getelementptr %struct.drm_buf, ptr %90, i32 %91, i32 9
  store volatile i32 0, ptr %114, align 4
  %115 = getelementptr %struct.drm_buf, ptr %90, i32 %91, i32 10
  store ptr null, ptr %115, align 4
  %116 = load ptr, ptr %4, align 4
  %117 = getelementptr inbounds %struct.drm_driver, ptr %116, i32 0, i32 40
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr %struct.drm_buf, ptr %90, i32 %91, i32 14
  store i32 %118, ptr %119, align 4
  %120 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %118, i32 noundef 3520) #13
  %121 = getelementptr %struct.drm_buf, ptr %90, i32 %91, i32 15
  store ptr %120, ptr %121, align 4
  %122 = icmp eq ptr %120, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %89
  store i32 %28, ptr %65, align 4
  tail call fastcc void @drm_cleanup_buf_error(ptr noundef %0, ptr noundef %64) #11
  tail call void @mutex_unlock(ptr noundef %63) #11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #11, !srcloc !14
  %124 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #11, !srcloc !16
  br label %193

125:                                              ; preds = %89
  %126 = load ptr, ptr %111, align 4
  %127 = load i32, ptr %65, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %127, ptr noundef %126) #11
  %128 = load i32, ptr %65, align 4
  %129 = add i32 %128, 1
  store i32 %129, ptr %65, align 4
  %130 = add i32 %92, %45
  %131 = icmp slt i32 %129, %28
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = add i32 %93, %42
  %134 = load ptr, ptr %77, align 4
  br label %89

135:                                              ; preds = %125, %79
  %136 = phi i32 [ 0, %79 ], [ %130, %125 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22, i32 noundef %136) #11
  %137 = getelementptr inbounds %struct.drm_device_dma, ptr %20, i32 0, i32 2
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.drm_device_dma, ptr %20, i32 0, i32 1
  %140 = load i32, ptr %139, align 4
  %141 = load i32, ptr %65, align 4
  %142 = add i32 %141, %140
  %143 = shl i32 %142, 2
  %144 = tail call noalias ptr @krealloc(ptr noundef %138, i32 noundef %143, i32 noundef 3264) #14
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %135
  tail call fastcc void @drm_cleanup_buf_error(ptr noundef %0, ptr noundef %64) #11
  tail call void @mutex_unlock(ptr noundef %63) #11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #11, !srcloc !14
  %147 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #11, !srcloc !16
  br label %193

148:                                              ; preds = %135
  store ptr %144, ptr %137, align 4
  %149 = load i32, ptr %65, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %168

151:                                              ; preds = %148
  %152 = load ptr, ptr %77, align 4
  %153 = load i32, ptr %139, align 4
  %154 = getelementptr ptr, ptr %144, i32 %153
  store ptr %152, ptr %154, align 4
  %155 = load i32, ptr %65, align 4
  %156 = icmp sgt i32 %155, 1
  br i1 %156, label %157, label %168

157:                                              ; preds = %157, %151
  %158 = phi i32 [ %165, %157 ], [ 1, %151 ]
  %159 = load ptr, ptr %137, align 4
  %160 = load ptr, ptr %77, align 4
  %161 = getelementptr %struct.drm_buf, ptr %160, i32 %158
  %162 = load i32, ptr %139, align 4
  %163 = add i32 %162, %158
  %164 = getelementptr ptr, ptr %159, i32 %163
  store ptr %161, ptr %164, align 4
  %165 = add nuw nsw i32 %158, 1
  %166 = load i32, ptr %65, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %157, label %168

168:                                              ; preds = %157, %151, %148
  %169 = phi i32 [ %149, %148 ], [ %155, %151 ], [ %166, %157 ]
  %170 = load i32, ptr %139, align 4
  %171 = add i32 %170, %169
  store i32 %171, ptr %139, align 4
  %172 = getelementptr [23 x %struct.drm_buf_entry], ptr %20, i32 0, i32 %35, i32 3
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr inbounds %struct.drm_device_dma, ptr %20, i32 0, i32 3
  %175 = load i32, ptr %174, align 4
  %176 = add i32 %175, %173
  store i32 %176, ptr %174, align 4
  %177 = ashr exact i32 %136, 12
  %178 = getelementptr inbounds %struct.drm_device_dma, ptr %20, i32 0, i32 4
  %179 = load i32, ptr %178, align 4
  %180 = add i32 %179, %177
  store i32 %180, ptr %178, align 4
  %181 = getelementptr inbounds %struct.drm_device_dma, ptr %20, i32 0, i32 6
  %182 = load i32, ptr %181, align 4
  %183 = add i32 %182, %136
  store i32 %183, ptr %181, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.23, i32 noundef %171) #11
  %184 = load i32, ptr %65, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.24, i32 noundef %184) #11
  tail call void @mutex_unlock(ptr noundef %63) #11
  %185 = load i32, ptr %65, align 4
  store i32 %185, ptr %1, align 4
  store i32 %36, ptr %29, align 4
  %186 = getelementptr inbounds %struct.drm_device_dma, ptr %20, i32 0, i32 7
  store i32 2, ptr %186, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #11, !srcloc !14
  %187 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #11, !srcloc !16
  br label %193

188:                                              ; preds = %13
  %189 = and i32 %15, 8
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = tail call i32 @drm_legacy_addbufs_pci(ptr noundef %0, ptr noundef %1)
  br label %193

193:                                              ; preds = %191, %188, %168, %146, %123, %83, %72, %68, %55, %27, %25, %23, %18, %3
  %194 = phi i32 [ -95, %3 ], [ %192, %191 ], [ -22, %188 ], [ -16, %55 ], [ -12, %68 ], [ -22, %72 ], [ -12, %123 ], [ 0, %168 ], [ -12, %146 ], [ -12, %83 ], [ -95, %18 ], [ -22, %23 ], [ -1, %25 ], [ -22, %27 ]
  ret i32 %194
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__drm_legacy_infobufs(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 45
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_driver, ptr %8, i32 0, i32 24
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %10
  %14 = and i32 %13, 603979776
  %15 = icmp eq i32 %14, 603979776
  br i1 %15, label %16, label %172

16:                                               ; preds = %4
  %17 = icmp eq ptr %6, null
  br i1 %17, label %172, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 48
  tail call void @_raw_spin_lock(ptr noundef %19) #11
  %20 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 50
  %21 = load volatile i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %24 = load i16, ptr %19, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  br label %172

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 49
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %30 = load i16, ptr %19, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %32 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 1, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = add nuw nsw i32 %35, %39
  %41 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 2, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %40, %44
  %46 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 3, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = add nuw nsw i32 %45, %49
  %51 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 4, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = add nuw nsw i32 %50, %54
  %56 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 5, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = add nuw nsw i32 %55, %59
  %61 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 6, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = add nuw nsw i32 %60, %64
  %66 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 7, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = add nuw nsw i32 %65, %69
  %71 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 8, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = add nuw nsw i32 %70, %74
  %76 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 9, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = add nuw nsw i32 %75, %79
  %81 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 10, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = add nuw nsw i32 %80, %84
  %86 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 11, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = add nuw nsw i32 %85, %89
  %91 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 12, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = add nuw nsw i32 %90, %94
  %96 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 13, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = add nuw nsw i32 %95, %99
  %101 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 14, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = add nuw nsw i32 %100, %104
  %106 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 15, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = add nuw nsw i32 %105, %109
  %111 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 16, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i32
  %115 = add nuw nsw i32 %110, %114
  %116 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 17, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = add nuw nsw i32 %115, %119
  %121 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 18, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = add nuw nsw i32 %120, %124
  %126 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 19, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i32
  %130 = add nuw nsw i32 %125, %129
  %131 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 20, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = add nuw nsw i32 %130, %134
  %136 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 21, i32 1
  %137 = load i32, ptr %136, align 4
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i32
  %140 = add nuw nsw i32 %135, %139
  %141 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 22, i32 1
  %142 = load i32, ptr %141, align 4
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i32
  %145 = add nuw nsw i32 %140, %144
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %145) #11
  %146 = load i32, ptr %2, align 4
  %147 = icmp slt i32 %146, %145
  br i1 %147, label %170, label %148

148:                                              ; preds = %166, %26
  %149 = phi i32 [ %167, %166 ], [ 0, %26 ]
  %150 = phi i32 [ %168, %166 ], [ 0, %26 ]
  %151 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 %150
  %152 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 %150, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %166, label %155

155:                                              ; preds = %148
  %156 = tail call i32 %3(ptr noundef %1, i32 noundef %149, ptr noundef %151) #11
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %172, label %158

158:                                              ; preds = %155
  %159 = load i32, ptr %152, align 4
  %160 = load i32, ptr %151, align 4
  %161 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 %150, i32 6
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr [23 x %struct.drm_buf_entry], ptr %6, i32 0, i32 %150, i32 7
  %164 = load i32, ptr %163, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %150, i32 noundef %159, i32 noundef %160, i32 noundef %162, i32 noundef %164) #11
  %165 = add i32 %149, 1
  br label %166

166:                                              ; preds = %158, %148
  %167 = phi i32 [ %149, %148 ], [ %165, %158 ]
  %168 = add nuw nsw i32 %150, 1
  %169 = icmp eq i32 %168, 23
  br i1 %169, label %170, label %148

170:                                              ; preds = %166, %26
  %171 = phi i32 [ %145, %26 ], [ %167, %166 ]
  store i32 %171, ptr %2, align 4
  br label %172

172:                                              ; preds = %170, %155, %23, %16, %4
  %173 = phi i32 [ -16, %23 ], [ 0, %170 ], [ -95, %4 ], [ -22, %16 ], [ -14, %155 ]
  ret i32 %173
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_infobufs(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = tail call i32 @__drm_legacy_infobufs(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef nonnull @copy_one_buf)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @copy_one_buf(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.drm_buf_desc, align 4
  %5 = getelementptr inbounds %struct.drm_buf_info, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.drm_buf_desc, ptr %6, i32 %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %8 = getelementptr inbounds %struct.drm_buf_entry, ptr %2, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.drm_buf_desc, ptr %4, i32 0, i32 1
  %11 = load i32, ptr %2, align 4
  store i32 %11, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_buf_desc, ptr %4, i32 0, i32 2
  %13 = getelementptr inbounds %struct.drm_buf_entry, ptr %2, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.drm_buf_desc, ptr %4, i32 0, i32 3
  %16 = getelementptr inbounds %struct.drm_buf_entry, ptr %2, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.drm_buf_desc, ptr %4, i32 0, i32 4
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.drm_buf_desc, ptr %4, i32 0, i32 5
  store i32 0, ptr %19, align 4
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 16, i32 -1090519040) #15, !srcloc !18
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = tail call ptr @llvm.thread.pointer() #11
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %25) #16, !srcloc !19
  %27 = and i32 %26, -13
  %28 = or i32 %27, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #11, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !21
  %29 = call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef nonnull %4, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #11, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !21
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 0, i32 -14
  br label %32

32:                                               ; preds = %23, %3
  %33 = phi i32 [ -14, %3 ], [ %31, %23 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_markbufs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 45
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_driver, ptr %7, i32 0, i32 24
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, %9
  %13 = and i32 %12, 603979776
  %14 = icmp eq i32 %13, 603979776
  br i1 %14, label %15, label %48

15:                                               ; preds = %3
  %16 = icmp eq ptr %5, null
  br i1 %16, label %48, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.drm_buf_desc, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.drm_buf_desc, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.drm_buf_desc, ptr %1, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %19, i32 noundef %21, i32 noundef %23) #11
  %24 = load i32, ptr %18, align 4
  %25 = icmp ugt i32 %24, 1
  br i1 %25, label %26, label %48

26:                                               ; preds = %17
  %27 = add i32 %24, -1
  %28 = tail call i32 @llvm.ctlz.i32(i32 %27, i1 false) #11, !range !9
  %29 = sub nuw nsw i32 32, %28
  %30 = add nsw i32 %28, -28
  %31 = icmp ult i32 %30, -18
  br i1 %31, label %48, label %32

32:                                               ; preds = %26
  %33 = load i32, ptr %20, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %32
  %36 = getelementptr [23 x %struct.drm_buf_entry], ptr %5, i32 0, i32 %29, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp sgt i32 %33, %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %22, align 4
  %41 = icmp slt i32 %40, 0
  %42 = icmp sgt i32 %40, %37
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = getelementptr [23 x %struct.drm_buf_entry], ptr %5, i32 0, i32 %29, i32 6
  store i32 %33, ptr %45, align 4
  %46 = load i32, ptr %22, align 4
  %47 = getelementptr [23 x %struct.drm_buf_entry], ptr %5, i32 0, i32 %29, i32 7
  store i32 %46, ptr %47, align 4
  br label %48

48:                                               ; preds = %44, %39, %35, %32, %26, %17, %15, %3
  %49 = phi i32 [ 0, %44 ], [ -95, %3 ], [ -22, %15 ], [ -22, %26 ], [ -22, %35 ], [ -22, %32 ], [ -22, %39 ], [ -22, %17 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_freebufs(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 45
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_driver, ptr %8, i32 0, i32 24
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %10
  %14 = and i32 %13, 603979776
  %15 = icmp eq i32 %14, 603979776
  br i1 %15, label %16, label %69

16:                                               ; preds = %3
  %17 = icmp eq ptr %6, null
  br i1 %17, label %69, label %18

18:                                               ; preds = %16
  %19 = load i32, ptr %1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %19) #11
  %20 = load i32, ptr %1, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %69

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.drm_buf_free, ptr %1, i32 0, i32 1
  %24 = getelementptr inbounds %struct.drm_device_dma, ptr %6, i32 0, i32 1
  %25 = getelementptr inbounds %struct.drm_device_dma, ptr %6, i32 0, i32 2
  br label %26

26:                                               ; preds = %65, %22
  %27 = phi i32 [ 0, %22 ], [ %66, %65 ]
  %28 = load ptr, ptr %23, align 4
  %29 = getelementptr i32, ptr %28, i32 %27
  %30 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %29, i32 4, i32 -1090519040) #15, !srcloc !22
  %31 = extractvalue { i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41, !prof !23

33:                                               ; preds = %26
  %34 = tail call ptr @llvm.thread.pointer() #11
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %36 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %35) #16, !srcloc !19
  %37 = and i32 %36, -13
  %38 = or i32 %37, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #11, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !21
  %39 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %29, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #11, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !21
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41, !prof !23

41:                                               ; preds = %33, %26
  %42 = phi i32 [ %39, %33 ], [ 4, %26 ]
  %43 = sub i32 4, %42
  %44 = getelementptr i8, ptr %4, i32 %43
  call void @llvm.memset.p0.i32(ptr align 1 %44, i8 0, i32 %42, i1 false) #11
  br label %69

45:                                               ; preds = %33
  %46 = load i32, ptr %4, align 4
  %47 = icmp sgt i32 %46, -1
  %48 = load i32, ptr %24, align 4
  %49 = icmp slt i32 %46, %48
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = add i32 %48, -1
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %46, i32 noundef %52) #11
  br label %69

53:                                               ; preds = %45
  %54 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %46, i32 %48) #11, !srcloc !24
  %55 = and i32 %54, %46
  store i32 %55, ptr %4, align 4
  %56 = load ptr, ptr %25, align 4
  %57 = getelementptr ptr, ptr %56, i32 %55
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.drm_buf, ptr %58, i32 0, i32 10
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %2
  br i1 %61, label %65, label %62

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 52
  %64 = load i32, ptr %63, align 8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %64) #11
  br label %69

65:                                               ; preds = %53
  call void @drm_legacy_free_buffer(ptr noundef %0, ptr noundef %58) #11
  %66 = add nuw nsw i32 %27, 1
  %67 = load i32, ptr %1, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %26, label %69

69:                                               ; preds = %65, %62, %51, %41, %18, %16, %3
  %70 = phi i32 [ -22, %51 ], [ -22, %62 ], [ -95, %3 ], [ -22, %16 ], [ -14, %41 ], [ 0, %18 ], [ 0, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_free_buffer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__drm_legacy_mapbufs(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 45
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_driver, ptr %10, i32 0, i32 24
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %12
  %16 = and i32 %15, 603979776
  %17 = icmp eq i32 %16, 603979776
  br i1 %17, label %18, label %100

18:                                               ; preds = %6
  %19 = icmp eq ptr %8, null
  br i1 %19, label %100, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 48
  tail call void @_raw_spin_lock(ptr noundef %21) #11
  %22 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 50
  %23 = load volatile i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %26 = load i16, ptr %21, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  br label %100

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 49
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %32 = load i16, ptr %21, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %34 = load i32, ptr %2, align 4
  %35 = getelementptr inbounds %struct.drm_device_dma, ptr %8, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %97, label %38

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 38
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.drm_device_dma, ptr %8, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42, %38
  %48 = load ptr, ptr %9, align 4
  %49 = getelementptr inbounds %struct.drm_driver, ptr %48, i32 0, i32 24
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr %13, align 4
  %52 = and i32 %50, 268435456
  %53 = and i32 %52, %51
  %54 = icmp eq i32 %53, 268435456
  br i1 %54, label %55, label %72

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.drm_device_dma, ptr %8, i32 0, i32 7
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %55, %42
  %61 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 52
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %97, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 53
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 18
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.drm_local_map, ptr %62, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = tail call i32 @vm_mmap(ptr noundef %68, i32 noundef 0, i32 noundef %70, i32 noundef 3, i32 noundef 1, i32 noundef %66) #11
  br label %78

72:                                               ; preds = %55, %47
  %73 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 18
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.drm_device_dma, ptr %8, i32 0, i32 6
  %76 = load i32, ptr %75, align 4
  %77 = tail call i32 @vm_mmap(ptr noundef %74, i32 noundef 0, i32 noundef %76, i32 noundef 3, i32 noundef 1, i32 noundef 0) #11
  br label %78

78:                                               ; preds = %72, %64
  %79 = phi i32 [ %77, %72 ], [ %71, %64 ]
  %80 = icmp ugt i32 %79, -1024
  br i1 %80, label %97, label %81

81:                                               ; preds = %78
  %82 = inttoptr i32 %79 to ptr
  store ptr %82, ptr %3, align 4
  %83 = getelementptr inbounds %struct.drm_device_dma, ptr %8, i32 0, i32 2
  %84 = load i32, ptr %35, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %90, label %97

86:                                               ; preds = %90
  %87 = add nuw nsw i32 %91, 1
  %88 = load i32, ptr %35, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %86, %81
  %91 = phi i32 [ %87, %86 ], [ 0, %81 ]
  %92 = load ptr, ptr %83, align 4
  %93 = getelementptr ptr, ptr %92, i32 %91
  %94 = load ptr, ptr %93, align 4
  %95 = tail call i32 %4(ptr noundef %1, i32 noundef %91, i32 noundef %79, ptr noundef %94) #11
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %86

97:                                               ; preds = %90, %86, %81, %78, %60, %28
  %98 = phi i32 [ 0, %28 ], [ %79, %78 ], [ -22, %60 ], [ 0, %81 ], [ 0, %86 ], [ -14, %90 ]
  %99 = load i32, ptr %35, align 4
  store i32 %99, ptr %2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %99, i32 noundef %98) #11
  br label %100

100:                                              ; preds = %97, %25, %18, %6
  %101 = phi i32 [ -16, %25 ], [ %98, %97 ], [ -95, %6 ], [ -22, %18 ]
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_mmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_mapbufs(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_buf_map, ptr %1, i32 0, i32 1
  %5 = tail call i32 @__drm_legacy_mapbufs(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef %4, ptr noundef nonnull @map_one_buf, ptr noundef %2)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @map_one_buf(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct.drm_buf, ptr %3, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %2
  store i32 %8, ptr %5, align 4
  %9 = getelementptr inbounds %struct.drm_buf_map, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.drm_buf_pub, ptr %10, i32 %1
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 4, i32 -1090519040) #15, !srcloc !18
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %61

15:                                               ; preds = %4
  %16 = tail call ptr @llvm.thread.pointer() #11
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %17) #16, !srcloc !19
  %19 = and i32 %18, -13
  %20 = or i32 %19, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #11, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !21
  %21 = tail call i32 @arm_copy_to_user(ptr noundef %11, ptr noundef %3, i32 noundef 4) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #11, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !21
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %15
  %24 = load ptr, ptr %9, align 4
  %25 = getelementptr %struct.drm_buf_pub, ptr %24, i32 %1, i32 1
  %26 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i32 4, i32 -1090519040) #15, !srcloc !18
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %61

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.drm_buf, ptr %3, i32 0, i32 1
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %17) #16, !srcloc !19
  %32 = and i32 %31, -13
  %33 = or i32 %32, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #11, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !21
  %34 = tail call i32 @arm_copy_to_user(ptr noundef %25, ptr noundef %30, i32 noundef 4) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #11, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !21
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %29
  %37 = load ptr, ptr %9, align 4
  %38 = getelementptr %struct.drm_buf_pub, ptr %37, i32 %1, i32 2
  %39 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %38, i32 4, i32 -1090519040) #15, !srcloc !25
  %40 = extractvalue { i32, i32 } %39, 0
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %36
  %43 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %17) #16, !srcloc !19
  %44 = and i32 %43, -13
  %45 = or i32 %44, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #11, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !21
  %46 = tail call i32 @arm_clear_user(ptr noundef %38, i32 noundef 4) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #11, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !21
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load ptr, ptr %9, align 4
  %50 = getelementptr %struct.drm_buf_pub, ptr %49, i32 %1, i32 3
  %51 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %50, i32 4, i32 -1090519040) #15, !srcloc !18
  %52 = extractvalue { i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %17) #16, !srcloc !19
  %56 = and i32 %55, -13
  %57 = or i32 %56, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #11, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !21
  %58 = call i32 @arm_copy_to_user(ptr noundef %50, ptr noundef nonnull %5, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #11, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !21
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i32 0, i32 -14
  br label %61

61:                                               ; preds = %54, %48, %42, %36, %29, %23, %15, %4
  %62 = phi i32 [ -14, %15 ], [ -14, %29 ], [ -14, %42 ], [ -14, %4 ], [ -14, %23 ], [ -14, %36 ], [ -14, %48 ], [ %60, %54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_dma_ioctl(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %7, 67108864
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 67108864
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 30
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i32 %15(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  br label %19

19:                                               ; preds = %17, %13, %3
  %20 = phi i32 [ %18, %17 ], [ -95, %3 ], [ -22, %13 ]
  ret i32 %20
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @drm_legacy_getsarea(ptr noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 42
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %22, label %5

5:                                                ; preds = %19, %1
  %6 = phi ptr [ %20, %19 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.drm_map_list, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.drm_local_map, ptr %8, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.drm_local_map, ptr %8, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %10, %5
  %20 = load ptr, ptr %6, align 4
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %22, label %5

22:                                               ; preds = %19, %14, %1
  %23 = phi ptr [ null, %1 ], [ null, %19 ], [ %8, %14 ]
  ret ptr %23
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc ptr @drm_find_matching_map(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 42
  %4 = getelementptr inbounds %struct.drm_local_map, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %3, align 4
  %6 = icmp eq ptr %5, %3
  br i1 %6, label %40, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.drm_local_map, ptr %1, i32 0, i32 2
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 9
  br label %10

10:                                               ; preds = %37, %7
  %11 = phi ptr [ %5, %7 ], [ %38, %37 ]
  %12 = getelementptr inbounds %struct.drm_map_list, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %10
  %16 = load i32, ptr %8, align 4
  %17 = getelementptr inbounds %struct.drm_local_map, ptr %13, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.drm_map_list, ptr %11, i32 0, i32 4
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %9, align 4
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  switch i32 %16, label %33 [
    i32 2, label %26
    i32 1, label %29
    i32 0, label %29
  ]

26:                                               ; preds = %25
  %27 = load i32, ptr %4, align 4
  %28 = icmp eq i32 %27, 32
  br i1 %28, label %40, label %33

29:                                               ; preds = %25, %25
  %30 = load i32, ptr %13, align 4
  %31 = load i32, ptr %1, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %29, %26, %25
  %34 = load i32, ptr %13, align 4
  %35 = load i32, ptr %1, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %33, %20, %15, %10
  %38 = load ptr, ptr %11, align 4
  %39 = icmp eq ptr %38, %3
  br i1 %39, label %40, label %10

40:                                               ; preds = %37, %33, %29, %26, %2
  %41 = phi ptr [ null, %2 ], [ null, %37 ], [ %11, %33 ], [ %11, %29 ], [ %11, %26 ]
  ret ptr %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_user(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_map_handle(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = lshr i32 %2, 12
  %6 = getelementptr inbounds %struct.drm_hash_item, ptr %1, i32 0, i32 1
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 43
  %8 = tail call i32 @drm_ht_insert_item(ptr noundef %7, ptr noundef %1) #11
  %9 = icmp eq i32 %8, -22
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = icmp eq i32 %3, 0
  %12 = and i32 %5, 7
  %13 = or i32 %12, 65536
  %14 = select i1 %11, i32 0, i32 3
  %15 = select i1 %11, i32 65536, i32 %13
  %16 = tail call i32 @drm_ht_just_insert_please(ptr noundef %7, ptr noundef %1, i32 noundef %2, i32 noundef 17, i32 noundef %14, i32 noundef %15) #11
  br label %17

17:                                               ; preds = %10, %4
  %18 = phi i32 [ %16, %10 ], [ %8, %4 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ht_insert_item(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ht_just_insert_please(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(1) }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind readonly }

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
!9 = !{i32 0, i32 33}
!10 = !{i64 2149049000}
!11 = !{i64 2149044824}
!12 = !{i64 2149044899, i64 2149044926, i64 2149044973, i64 2149044995, i64 2149045023, i64 2149045043}
!13 = !{i64 2149072003}
!14 = !{i64 416448, i64 2147906419, i64 2147906445, i64 2147906492, i64 2147906514, i64 2147906542, i64 2147906562}
!15 = !{i64 2147918631, i64 2147918657, i64 2147918686, i64 2147918720, i64 2147918751, i64 2147918774}
!16 = !{i64 2147920988, i64 2147921014, i64 2147921043, i64 2147921077, i64 2147921108, i64 2147921131}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2151543741, i64 2151543766}
!19 = !{i64 4039275}
!20 = !{i64 4039472}
!21 = !{i64 2151524751}
!22 = !{i64 2151543163, i64 2151543188}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 367537, i64 367554, i64 2147851624}
!25 = !{i64 2151540453, i64 2151540478}
