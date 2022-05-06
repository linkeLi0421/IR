; ModuleID = '/llk/IR/mm/readahead.c_pt.bc'
source_filename = "../mm/readahead.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_file_ra_state_init:\09\09\09\09\09"
module asm "\09.asciz \09\22file_ra_state_init\22\09\09\09\09\09"
module asm "__kstrtabns_file_ra_state_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_read_cache_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22read_cache_pages\22\09\09\09\09\09"
module asm "__kstrtabns_read_cache_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_cache_ra_unbounded:\09\09\09\09\09"
module asm "\09.asciz \09\22page_cache_ra_unbounded\22\09\09\09\09\09"
module asm "__kstrtabns_page_cache_ra_unbounded:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_cache_sync_ra:\09\09\09\09\09"
module asm "\09.asciz \09\22page_cache_sync_ra\22\09\09\09\09\09"
module asm "__kstrtabns_page_cache_sync_ra:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_cache_async_ra:\09\09\09\09\09"
module asm "\09.asciz \09\22page_cache_async_ra\22\09\09\09\09\09"
module asm "__kstrtabns_page_cache_async_ra:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_readahead_expand:\09\09\09\09\09"
module asm "\09.asciz \09\22readahead_expand\22\09\09\09\09\09"
module asm "__kstrtabns_readahead_expand:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.92, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%union.anon.92 = type { %struct.atomic_t }
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.24 }
%struct.llist_node = type { ptr }
%union.anon.24 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.25 }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.58 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.98 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.93, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.94, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.95, ptr, %struct.address_space, %struct.list_head, %union.anon.96, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.93 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.94 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.95 = type { ptr }
%union.anon.96 = type { ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }

@__kstrtab_file_ra_state_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_file_ra_state_init = external dso_local constant [0 x i8], align 1
@__ksymtab_file_ra_state_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @file_ra_state_init to i32), ptr @__kstrtab_file_ra_state_init, ptr @__kstrtabns_file_ra_state_init }, section "___ksymtab_gpl+file_ra_state_init", align 4
@__kstrtab_read_cache_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_read_cache_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_read_cache_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @read_cache_pages to i32), ptr @__kstrtab_read_cache_pages, ptr @__kstrtabns_read_cache_pages }, section "___ksymtab+read_cache_pages", align 4
@__kstrtab_page_cache_ra_unbounded = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_cache_ra_unbounded = external dso_local constant [0 x i8], align 1
@__ksymtab_page_cache_ra_unbounded = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_cache_ra_unbounded to i32), ptr @__kstrtab_page_cache_ra_unbounded, ptr @__kstrtabns_page_cache_ra_unbounded }, section "___ksymtab_gpl+page_cache_ra_unbounded", align 4
@__kstrtab_page_cache_sync_ra = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_cache_sync_ra = external dso_local constant [0 x i8], align 1
@__ksymtab_page_cache_sync_ra = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_cache_sync_ra to i32), ptr @__kstrtab_page_cache_sync_ra, ptr @__kstrtabns_page_cache_sync_ra }, section "___ksymtab_gpl+page_cache_sync_ra", align 4
@__kstrtab_page_cache_async_ra = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_cache_async_ra = external dso_local constant [0 x i8], align 1
@__ksymtab_page_cache_async_ra = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_cache_async_ra to i32), ptr @__kstrtab_page_cache_async_ra, ptr @__kstrtabns_page_cache_async_ra }, section "___ksymtab_gpl+page_cache_async_ra", align 4
@__kstrtab_readahead_expand = external dso_local constant [0 x i8], align 1
@__kstrtabns_readahead_expand = external dso_local constant [0 x i8], align 1
@__ksymtab_readahead_expand = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @readahead_expand to i32), ptr @__kstrtab_readahead_expand, ptr @__kstrtabns_readahead_expand }, section "___ksymtab+readahead_expand", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_file_ra_state_init, ptr @__ksymtab_page_cache_async_ra, ptr @__ksymtab_page_cache_ra_unbounded, ptr @__ksymtab_page_cache_sync_ra, ptr @__ksymtab_read_cache_pages, ptr @__ksymtab_readahead_expand], section "llvm.metadata"

@sys_readahead = dso_local alias i32 (i32, i64, i32), ptr @__se_sys_readahead

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @file_ra_state_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = tail call ptr @inode_to_bdi(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.backing_dev_info, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.file_ra_state, ptr %0, i32 0, i32 3
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.file_ra_state, ptr %0, i32 0, i32 5
  store i64 -1, ptr %8, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @read_cache_pages(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %47, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 3
  br label %10

10:                                               ; preds = %24, %7
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr i8, ptr %11, i32 -4
  %13 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  %17 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %9, align 4
  %20 = or i32 %19, 73728
  %21 = tail call i32 @add_to_page_cache_lru(ptr noundef %12, ptr noundef %0, i32 noundef %18, i32 noundef %20) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %10
  tail call fastcc void @read_cache_pages_invalidate_page(ptr noundef %0, ptr noundef %12)
  br label %24

24:                                               ; preds = %43, %23
  %25 = load volatile ptr, ptr %1, align 4
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %47, label %10

27:                                               ; preds = %10
  %28 = load volatile i32, ptr %11, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31, !prof !8

31:                                               ; preds = %27
  %32 = add i32 %28, -1
  br label %35

33:                                               ; preds = %27
  %34 = ptrtoint ptr %12 to i32
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = inttoptr i32 %36 to ptr
  %38 = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #6, !srcloc !10
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #6, !srcloc !11
  %40 = extractvalue { i32, i32 } %39, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  tail call void @__put_page(ptr noundef %37) #6
  br label %43

43:                                               ; preds = %42, %35
  %44 = tail call i32 %2(ptr noundef %3, ptr noundef %12) #6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %24, label %46, !prof !8

46:                                               ; preds = %43
  tail call fastcc void @read_cache_pages_invalidate_pages(ptr noundef %0, ptr noundef %1)
  br label %47

47:                                               ; preds = %46, %24, %4
  %48 = phi i32 [ %44, %46 ], [ 0, %4 ], [ 0, %24 ]
  ret i32 %48
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_to_page_cache_lru(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @read_cache_pages_invalidate_page(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 24576
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !8

11:                                               ; preds = %6
  %12 = add i32 %8, -1
  br label %15

13:                                               ; preds = %6
  %14 = ptrtoint ptr %1 to i32
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = inttoptr i32 %16 to ptr
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #6, !srcloc !10
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #6, !srcloc !13
  %23 = extractvalue { i32, i32, i32 } %22, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/readahead.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 52, 0\0A.popsection", ""() #6, !srcloc !15
  unreachable

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 1
  store ptr %0, ptr %28, align 4
  tail call void @do_invalidatepage(ptr noundef %1, i32 noundef 0, i32 noundef 4096) #6
  store ptr null, ptr %28, align 4
  tail call void @unlock_page(ptr noundef %1) #6
  br label %29

29:                                               ; preds = %27, %2
  %30 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34, !prof !8

34:                                               ; preds = %29
  %35 = add i32 %31, -1
  br label %38

36:                                               ; preds = %29
  %37 = ptrtoint ptr %1 to i32
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = inttoptr i32 %39 to ptr
  %41 = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #6, !srcloc !10
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #6, !srcloc !11
  %43 = extractvalue { i32, i32 } %42, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  tail call void @__put_page(ptr noundef %40) #6
  br label %46

46:                                               ; preds = %45, %38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @read_cache_pages_invalidate_pages(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load volatile ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  br label %7

7:                                                ; preds = %7, %5
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr i8, ptr %8, i32 -4
  %10 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  tail call fastcc void @read_cache_pages_invalidate_page(ptr noundef %0, ptr noundef %9)
  %14 = load volatile ptr, ptr %1, align 4
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %7

16:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_cache_ra_unbounded(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.list_head, align 8
  %5 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store ptr %4, ptr %4, align 8
  %9 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %9, align 4
  %10 = getelementptr inbounds %struct.address_space, ptr %6, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, 73728
  %13 = tail call ptr @llvm.thread.pointer() #6
  %14 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, 262144
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.address_space, ptr %6, i32 0, i32 2
  call void @down_read(ptr noundef %17) #6
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %77, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.address_space, ptr %6, i32 0, i32 1
  %21 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 4
  %22 = xor i32 %8, -1
  %23 = getelementptr inbounds %struct.address_space, ptr %6, i32 0, i32 9
  %24 = sub i32 %1, %2
  br label %25

25:                                               ; preds = %73, %19
  %26 = phi i32 [ 0, %19 ], [ %75, %73 ]
  %27 = add i32 %26, %8
  %28 = call ptr @xa_load(ptr noundef %20, i32 noundef %27) #6
  %29 = icmp eq ptr %28, null
  %30 = ptrtoint ptr %28 to i32
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %29, i1 true, i1 %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %25
  call fastcc void @read_pages(ptr noundef %0, ptr noundef nonnull %4, i1 noundef zeroext true)
  %35 = load i32, ptr %7, align 4
  %36 = load i32, ptr %21, align 4
  %37 = add i32 %35, %22
  %38 = add i32 %37, %36
  br label %73

39:                                               ; preds = %25
  %40 = call ptr @__folio_alloc(i32 noundef %12, i32 noundef 0, i32 noundef 0, ptr noundef null) #6
  %41 = icmp eq ptr %40, null
  br i1 %41, label %77, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %23, align 4
  %44 = getelementptr inbounds %struct.address_space_operations, ptr %43, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.anon.98, ptr %40, i32 0, i32 3
  store i32 %27, ptr %48, align 4
  %49 = getelementptr inbounds %struct.anon.98, ptr %40, i32 0, i32 1
  %50 = load ptr, ptr %4, align 8
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %49, ptr %51, align 4
  store ptr %50, ptr %49, align 4
  %52 = getelementptr inbounds %struct.anon.98, ptr %40, i32 0, i32 1, i32 1
  store ptr %4, ptr %52, align 4
  store volatile ptr %49, ptr %4, align 8
  br label %67

53:                                               ; preds = %42
  %54 = call i32 @filemap_add_folio(ptr noundef %6, ptr noundef nonnull %40, i32 noundef %27, i32 noundef %12) #6
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %57) #6, !srcloc !10
  %58 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %57, ptr %57, i32 1, ptr elementtype(i32) %57) #6, !srcloc !11
  %59 = extractvalue { i32, i32 } %58, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  call void @__put_page(ptr noundef nonnull %40) #6
  br label %62

62:                                               ; preds = %61, %56
  call fastcc void @read_pages(ptr noundef %0, ptr noundef nonnull %4, i1 noundef zeroext true)
  %63 = load i32, ptr %7, align 4
  %64 = load i32, ptr %21, align 4
  %65 = add i32 %63, %22
  %66 = add i32 %65, %64
  br label %73

67:                                               ; preds = %53, %47
  %68 = icmp eq i32 %26, %24
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  call void @_set_bit(i32 noundef 18, ptr noundef nonnull %40) #6
  br label %70

70:                                               ; preds = %69, %67
  %71 = load i32, ptr %21, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %21, align 4
  br label %73

73:                                               ; preds = %70, %62, %34
  %74 = phi i32 [ %38, %34 ], [ %66, %62 ], [ %26, %70 ]
  %75 = add i32 %74, 1
  %76 = icmp ult i32 %75, %1
  br i1 %76, label %25, label %77

77:                                               ; preds = %73, %39, %3
  %78 = and i32 %15, 262144
  call fastcc void @read_pages(ptr noundef %0, ptr noundef nonnull %4, i1 noundef zeroext false)
  call void @up_read(ptr noundef %17) #6
  %79 = load i32, ptr %14, align 4
  %80 = and i32 %79, -262145
  %81 = or i32 %80, %78
  store i32 %81, ptr %14, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @read_pages(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.blk_plug, align 4
  %5 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.address_space, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !16
  %9 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %141, label %12

12:                                               ; preds = %3
  call void @blk_start_plug(ptr noundef nonnull %4) #6
  %13 = getelementptr inbounds %struct.address_space_operations, ptr %8, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %65, label %16

16:                                               ; preds = %12
  call void %14(ptr noundef %0) #6
  %17 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %9, align 4
  %20 = icmp ult i32 %19, %18
  br i1 %20, label %23, label %21, !prof !17

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 3
  br label %24

23:                                               ; preds = %61, %16
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1086, 0\0A.popsection", ""() #6, !srcloc !18
  unreachable

24:                                               ; preds = %61, %21
  %25 = phi i32 [ %19, %21 ], [ %63, %61 ]
  %26 = phi i32 [ %18, %21 ], [ %62, %61 ]
  %27 = sub i32 %25, %26
  store i32 %27, ptr %9, align 4
  %28 = load i32, ptr %22, align 4
  %29 = add i32 %28, %26
  store i32 %29, ptr %22, align 4
  %30 = icmp eq i32 %25, %26
  br i1 %30, label %131, label %31

31:                                               ; preds = %24
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr inbounds %struct.address_space, ptr %32, i32 0, i32 1
  %34 = call ptr @xa_load(ptr noundef %33, i32 noundef %29) #6
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 65536
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = getelementptr %struct.page, ptr %34, i32 1, i32 1, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = phi i32 [ %40, %38 ], [ 1, %31 ]
  store i32 %42, ptr %17, align 4
  %43 = icmp eq ptr %34, null
  br i1 %43, label %133, label %44

44:                                               ; preds = %41
  call void @unlock_page(ptr noundef nonnull %34) #6
  %45 = getelementptr inbounds %struct.page, ptr %34, i32 0, i32 1
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49, !prof !8

49:                                               ; preds = %44
  %50 = add i32 %46, -1
  br label %53

51:                                               ; preds = %44
  %52 = ptrtoint ptr %34 to i32
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = inttoptr i32 %54 to ptr
  %56 = getelementptr inbounds %struct.page, ptr %55, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #6, !srcloc !10
  %57 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #6, !srcloc !11
  %58 = extractvalue { i32, i32 } %57, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  call void @__put_page(ptr noundef %55) #6
  br label %61

61:                                               ; preds = %60, %53
  %62 = load i32, ptr %17, align 4
  %63 = load i32, ptr %9, align 4
  %64 = icmp ult i32 %63, %62
  br i1 %64, label %23, label %24, !prof !17

65:                                               ; preds = %12
  %66 = getelementptr inbounds %struct.address_space_operations, ptr %8, i32 0, i32 4
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = load i32, ptr %9, align 4
  %73 = icmp ult i32 %72, %71
  br i1 %73, label %86, label %74, !prof !17

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 3
  %76 = getelementptr inbounds %struct.address_space_operations, ptr %8, i32 0, i32 1
  br label %87

77:                                               ; preds = %65
  %78 = load ptr, ptr %0, align 4
  %79 = load ptr, ptr %5, align 4
  %80 = load i32, ptr %9, align 4
  %81 = call i32 %67(ptr noundef %78, ptr noundef %79, ptr noundef %1, i32 noundef %80) #6
  call void @put_pages_list(ptr noundef %1) #6
  %82 = load i32, ptr %9, align 4
  %83 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, %82
  store i32 %85, ptr %83, align 4
  br label %131

86:                                               ; preds = %127, %69
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1086, 0\0A.popsection", ""() #6, !srcloc !18
  unreachable

87:                                               ; preds = %127, %74
  %88 = phi i32 [ %72, %74 ], [ %129, %127 ]
  %89 = phi i32 [ %71, %74 ], [ %128, %127 ]
  %90 = sub i32 %88, %89
  store i32 %90, ptr %9, align 4
  %91 = load i32, ptr %75, align 4
  %92 = add i32 %91, %89
  store i32 %92, ptr %75, align 4
  %93 = icmp eq i32 %88, %89
  br i1 %93, label %131, label %94

94:                                               ; preds = %87
  %95 = load ptr, ptr %5, align 4
  %96 = getelementptr inbounds %struct.address_space, ptr %95, i32 0, i32 1
  %97 = call ptr @xa_load(ptr noundef %96, i32 noundef %92) #6
  %98 = load volatile i32, ptr %97, align 4
  %99 = and i32 %98, 65536
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %94
  %102 = getelementptr %struct.page, ptr %97, i32 1, i32 1, i32 0, i32 2
  %103 = load i32, ptr %102, align 4
  br label %104

104:                                              ; preds = %101, %94
  %105 = phi i32 [ %103, %101 ], [ 1, %94 ]
  store i32 %105, ptr %70, align 4
  %106 = icmp eq ptr %97, null
  br i1 %106, label %133, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %76, align 4
  %109 = load ptr, ptr %0, align 4
  %110 = call i32 %108(ptr noundef %109, ptr noundef nonnull %97) #6
  %111 = getelementptr inbounds %struct.page, ptr %97, i32 0, i32 1
  %112 = load volatile i32, ptr %111, align 4
  %113 = and i32 %112, 1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115, !prof !8

115:                                              ; preds = %107
  %116 = add i32 %112, -1
  br label %119

117:                                              ; preds = %107
  %118 = ptrtoint ptr %97 to i32
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  %121 = inttoptr i32 %120 to ptr
  %122 = getelementptr inbounds %struct.page, ptr %121, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %122) #6, !srcloc !10
  %123 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %122, ptr %122, i32 1, ptr elementtype(i32) %122) #6, !srcloc !11
  %124 = extractvalue { i32, i32 } %123, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  call void @__put_page(ptr noundef %121) #6
  br label %127

127:                                              ; preds = %126, %119
  %128 = load i32, ptr %70, align 4
  %129 = load i32, ptr %9, align 4
  %130 = icmp ult i32 %129, %128
  br i1 %130, label %86, label %87, !prof !17

131:                                              ; preds = %87, %77, %24
  %132 = phi ptr [ %9, %77 ], [ %70, %87 ], [ %17, %24 ]
  store i32 0, ptr %132, align 4
  br label %133

133:                                              ; preds = %131, %104, %41
  call void @blk_finish_plug(ptr noundef nonnull %4) #6
  %134 = load volatile ptr, ptr %1, align 4
  %135 = icmp eq ptr %134, %1
  br i1 %135, label %137, label %136, !prof !8

136:                                              ; preds = %133
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/readahead.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 151, 0\0A.popsection", ""() #6, !srcloc !19
  unreachable

137:                                              ; preds = %133
  %138 = load i32, ptr %9, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %141, label %140, !prof !8

140:                                              ; preds = %137
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/readahead.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 152, 0\0A.popsection", ""() #6, !srcloc !20
  unreachable

141:                                              ; preds = %137, %3
  br i1 %2, label %142, label %146

142:                                              ; preds = %141
  %143 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 3
  %144 = load i32, ptr %143, align 4
  %145 = add i32 %144, 1
  store i32 %145, ptr %143, align 4
  br label %146

146:                                              ; preds = %142, %141
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_add_folio(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_page_cache_ra(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 22
  %10 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  br label %11

11:                                               ; preds = %19, %3
  %12 = load volatile i32, ptr %9, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %15, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !21
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !22
  %16 = load volatile i32, ptr %9, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15, %11
  %20 = phi i32 [ %12, %11 ], [ %16, %15 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  %21 = load i64, ptr %10, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !24
  %22 = load volatile i32, ptr %9, align 4
  %23 = icmp eq i32 %22, %20
  br i1 %23, label %24, label %11

24:                                               ; preds = %19
  %25 = icmp eq i64 %21, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %24
  %27 = add i64 %21, 17592186044415
  %28 = lshr i64 %27, 12
  %29 = trunc i64 %28 to i32
  %30 = icmp ugt i32 %8, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = sub i32 %29, %8
  %33 = icmp ult i32 %32, %1
  %34 = add i32 %32, 1
  %35 = select i1 %33, i32 %34, i32 %1
  tail call void @page_cache_ra_unbounded(ptr noundef %0, i32 noundef %35, i32 noundef %2)
  br label %36

36:                                               ; preds = %31, %26, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @force_page_cache_ra(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = tail call ptr @inode_to_bdi(ptr noundef %7) #6
  %9 = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.address_space_operations, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.address_space_operations, ptr %10, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.address_space_operations, ptr %10, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %70, label %22, !prof !17

22:                                               ; preds = %18, %14, %2
  %23 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 3
  %24 = getelementptr inbounds %struct.backing_dev_info, ptr %8, i32 0, i32 4
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.file_ra_state, ptr %6, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @llvm.umax.i32(i32 %25, i32 %27)
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 %1)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %70, label %31

31:                                               ; preds = %22
  %32 = load i32, ptr %23, align 4
  br label %33

33:                                               ; preds = %66, %31
  %34 = phi i32 [ %68, %66 ], [ %29, %31 ]
  %35 = phi i32 [ %67, %66 ], [ %32, %31 ]
  store i32 %35, ptr %23, align 4
  %36 = load ptr, ptr %3, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 22
  %39 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 13
  br label %40

40:                                               ; preds = %48, %33
  %41 = load volatile i32, ptr %38, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %44, %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !21
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !22
  %45 = load volatile i32, ptr %38, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %44

48:                                               ; preds = %44, %40
  %49 = phi i32 [ %41, %40 ], [ %45, %44 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  %50 = load i64, ptr %39, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !24
  %51 = load volatile i32, ptr %38, align 4
  %52 = icmp eq i32 %51, %49
  br i1 %52, label %53, label %40

53:                                               ; preds = %48
  %54 = tail call i32 @llvm.umin.i32(i32 %34, i32 512)
  %55 = icmp eq i64 %50, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %53
  %57 = add i64 %50, 17592186044415
  %58 = lshr i64 %57, 12
  %59 = trunc i64 %58 to i32
  %60 = icmp ugt i32 %35, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = sub i32 %59, %35
  %63 = icmp ult i32 %62, %54
  %64 = add i32 %62, 1
  %65 = select i1 %63, i32 %64, i32 %54
  tail call void @page_cache_ra_unbounded(ptr noundef %0, i32 noundef %65, i32 noundef 0) #6
  br label %66

66:                                               ; preds = %61, %56, %53
  %67 = add i32 %54, %35
  %68 = sub i32 %34, %54
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %33

70:                                               ; preds = %66, %22, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_cache_sync_ra(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.file_ra_state, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %24

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 8
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 4096
  %15 = icmp ne i32 %14, 0
  %16 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.file_ra_state, ptr %17, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i1 true, i1 %15
  br i1 %21, label %22, label %24

22:                                               ; preds = %11
  %23 = select i1 %20, i32 1, i32 %1
  tail call void @force_page_cache_ra(ptr noundef %0, i32 noundef %23)
  br label %25

24:                                               ; preds = %11, %5
  tail call fastcc void @ondemand_readahead(ptr noundef %0, i1 noundef zeroext false, i32 noundef %1)
  br label %25

25:                                               ; preds = %24, %22, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ondemand_readahead(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @inode_to_bdi(ptr noundef %6) #6
  %8 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.file_ra_state, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %11, %2
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.backing_dev_info, ptr %7, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = icmp ugt i32 %17, %11
  %19 = tail call i32 @llvm.umin.i32(i32 %17, i32 %2)
  %20 = select i1 %18, i32 %19, i32 %11
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i32 [ %11, %3 ], [ %20, %15 ]
  %23 = icmp eq i32 %13, 0
  br i1 %23, label %69, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %9, align 8
  %26 = getelementptr inbounds %struct.file_ra_state, ptr %9, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  %29 = getelementptr inbounds %struct.file_ra_state, ptr %9, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = sub i32 %28, %30
  %32 = icmp eq i32 %13, %31
  %33 = icmp eq i32 %13, %28
  %34 = or i1 %33, %32
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  store i32 %28, ptr %9, align 8
  br label %89

36:                                               ; preds = %24
  br i1 %1, label %37, label %47

37:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !25
  %38 = load ptr, ptr %4, align 4
  %39 = add i32 %13, 1
  %40 = tail call i32 @page_cache_next_miss(ptr noundef %38, i32 noundef %39, i32 noundef %22) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !26
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %156, label %42

42:                                               ; preds = %37
  %43 = sub i32 %40, %13
  %44 = icmp ugt i32 %43, %22
  br i1 %44, label %156, label %45

45:                                               ; preds = %42
  store i32 %40, ptr %9, align 8
  %46 = add i32 %43, %2
  br label %89

47:                                               ; preds = %36
  %48 = icmp ult i32 %22, %2
  br i1 %48, label %69, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.file_ra_state, ptr %9, i32 0, i32 5
  %51 = load i64, ptr %50, align 8
  %52 = lshr i64 %51, 12
  %53 = trunc i64 %52 to i32
  %54 = sub i32 %13, %53
  %55 = icmp ult i32 %54, 2
  br i1 %55, label %69, label %56

56:                                               ; preds = %49
  %57 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !25
  %58 = add i32 %13, -1
  %59 = tail call i32 @page_cache_prev_miss(ptr noundef %57, i32 noundef %58, i32 noundef %22) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !26
  %60 = sub i32 %58, %59
  %61 = icmp ugt i32 %60, %2
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = icmp uge i32 %60, %13
  %64 = zext i1 %63 to i32
  %65 = shl i32 %60, %64
  store i32 %13, ptr %9, align 8
  %66 = add i32 %65, %2
  %67 = tail call i32 @llvm.umin.i32(i32 %66, i32 %22) #6
  store i32 %67, ptr %26, align 4
  store i32 1, ptr %29, align 8
  br label %101

68:                                               ; preds = %56
  tail call void @do_page_cache_ra(ptr noundef %0, i32 noundef %2, i32 noundef 0)
  br label %156

69:                                               ; preds = %49, %47, %21
  store i32 %13, ptr %9, align 8
  %70 = add i32 %2, -1
  %71 = icmp eq i32 %70, 0
  %72 = tail call i32 @llvm.ctlz.i32(i32 %70, i1 false) #6, !range !27
  %73 = sub nuw nsw i32 32, %72
  %74 = shl nuw i32 1, %73
  %75 = select i1 %71, i32 1, i32 %74
  %76 = lshr i32 %22, 5
  %77 = icmp ugt i32 %75, %76
  %78 = shl i32 %75, 2
  %79 = lshr i32 %22, 2
  %80 = icmp ugt i32 %75, %79
  %81 = shl i32 %75, 1
  %82 = select i1 %80, i32 %22, i32 %81
  %83 = select i1 %77, i32 %82, i32 %78
  %84 = getelementptr inbounds %struct.file_ra_state, ptr %9, i32 0, i32 1
  store i32 %83, ptr %84, align 4
  %85 = icmp ugt i32 %83, %2
  %86 = select i1 %85, i32 %2, i32 0
  %87 = sub i32 %83, %86
  %88 = getelementptr inbounds %struct.file_ra_state, ptr %9, i32 0, i32 2
  store i32 %87, ptr %88, align 8
  br label %101

89:                                               ; preds = %45, %35
  %90 = phi i32 [ %46, %45 ], [ %27, %35 ]
  %91 = phi i32 [ %40, %45 ], [ %28, %35 ]
  %92 = lshr i32 %22, 4
  %93 = icmp ult i32 %90, %92
  %94 = shl i32 %90, 2
  %95 = lshr i32 %22, 1
  %96 = icmp ugt i32 %90, %95
  %97 = shl i32 %90, 1
  %98 = select i1 %96, i32 %22, i32 %97
  %99 = select i1 %93, i32 %94, i32 %98
  store i32 %99, ptr %26, align 4
  store i32 %99, ptr %29, align 8
  %100 = icmp eq i32 %13, %91
  br i1 %100, label %101, label %121

101:                                              ; preds = %89, %69, %62
  %102 = phi i32 [ %91, %89 ], [ %13, %62 ], [ %13, %69 ]
  %103 = phi i32 [ %99, %89 ], [ %67, %62 ], [ %83, %69 ]
  %104 = phi i32 [ %99, %89 ], [ 1, %62 ], [ %87, %69 ]
  %105 = getelementptr inbounds %struct.file_ra_state, ptr %9, i32 0, i32 1
  %106 = getelementptr inbounds %struct.file_ra_state, ptr %9, i32 0, i32 2
  %107 = icmp eq i32 %103, %104
  br i1 %107, label %108, label %121

108:                                              ; preds = %101
  %109 = lshr i32 %22, 4
  %110 = icmp ult i32 %104, %109
  %111 = shl i32 %104, 2
  %112 = lshr i32 %22, 1
  %113 = icmp ugt i32 %104, %112
  %114 = shl i32 %104, 1
  %115 = select i1 %113, i32 %22, i32 %114
  %116 = select i1 %110, i32 %111, i32 %115
  %117 = add i32 %116, %104
  %118 = icmp ugt i32 %117, %22
  br i1 %118, label %120, label %119

119:                                              ; preds = %108
  store i32 %116, ptr %106, align 8
  store i32 %117, ptr %105, align 4
  br label %121

120:                                              ; preds = %108
  store i32 %22, ptr %105, align 4
  store i32 %112, ptr %106, align 8
  br label %121

121:                                              ; preds = %120, %119, %101, %89
  %122 = phi i32 [ %102, %119 ], [ %102, %120 ], [ %102, %101 ], [ %91, %89 ]
  store i32 %122, ptr %12, align 4
  %123 = getelementptr inbounds %struct.file_ra_state, ptr %9, i32 0, i32 1
  %124 = load i32, ptr %123, align 4
  %125 = getelementptr inbounds %struct.file_ra_state, ptr %9, i32 0, i32 2
  %126 = load i32, ptr %125, align 8
  %127 = load ptr, ptr %4, align 4
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.inode, ptr %128, i32 0, i32 22
  %130 = getelementptr inbounds %struct.inode, ptr %128, i32 0, i32 13
  br label %131

131:                                              ; preds = %139, %121
  %132 = load volatile i32, ptr %129, align 4
  %133 = and i32 %132, 1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %135, %131
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !21
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !22
  %136 = load volatile i32, ptr %129, align 4
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %135

139:                                              ; preds = %135, %131
  %140 = phi i32 [ %132, %131 ], [ %136, %135 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  %141 = load i64, ptr %130, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !24
  %142 = load volatile i32, ptr %129, align 4
  %143 = icmp eq i32 %142, %140
  br i1 %143, label %144, label %131

144:                                              ; preds = %139
  %145 = icmp eq i64 %141, 0
  br i1 %145, label %156, label %146

146:                                              ; preds = %144
  %147 = add i64 %141, 17592186044415
  %148 = lshr i64 %147, 12
  %149 = trunc i64 %148 to i32
  %150 = icmp ugt i32 %122, %149
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = sub i32 %149, %122
  %153 = icmp ult i32 %152, %124
  %154 = add i32 %152, 1
  %155 = select i1 %153, i32 %154, i32 %124
  tail call void @page_cache_ra_unbounded(ptr noundef %0, i32 noundef %155, i32 noundef %126) #6
  br label %156

156:                                              ; preds = %151, %146, %144, %68, %42, %37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_cache_async_ra(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.file_ra_state, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %3
  %10 = load volatile i32, ptr %1, align 4
  %11 = and i32 %10, 32768
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  tail call void @_clear_bit(i32 noundef 18, ptr noundef %1) #6
  %14 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @inode_to_bdi(ptr noundef %16) #6
  %18 = getelementptr inbounds %struct.backing_dev_info, ptr %17, i32 0, i32 11, i32 10
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  tail call fastcc void @ondemand_readahead(ptr noundef %0, i1 noundef zeroext true, i32 noundef %2)
  br label %23

23:                                               ; preds = %22, %13, %9, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksys_readahead(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @__fdget(i32 noundef %0) #6, !noalias !28
  %5 = and i32 %4, -4
  %6 = inttoptr i32 %5 to ptr
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 17
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.address_space, ptr %15, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = load i16, ptr %23, align 8
  %25 = and i16 %24, -4096
  %26 = icmp eq i16 %25, -32768
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = zext i32 %2 to i64
  %29 = tail call i32 @vfs_fadvise(ptr noundef nonnull %6, i64 noundef %1, i64 noundef %28, i32 noundef 3) #6
  br label %30

30:                                               ; preds = %27, %21, %17, %13, %8, %3
  %31 = phi i32 [ %29, %27 ], [ -22, %21 ], [ -22, %17 ], [ -22, %13 ], [ -9, %8 ], [ -9, %3 ]
  %32 = and i32 %4, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @fput(ptr noundef %6) #6
  br label %35

35:                                               ; preds = %34, %30
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fadvise(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_readahead(i32 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @__fdget(i32 noundef %0) #6, !noalias !31
  %5 = and i32 %4, -4
  %6 = inttoptr i32 %5 to ptr
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 17
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.address_space, ptr %15, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = load i16, ptr %23, align 8
  %25 = and i16 %24, -4096
  %26 = icmp eq i16 %25, -32768
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = zext i32 %2 to i64
  %29 = tail call i32 @vfs_fadvise(ptr noundef nonnull %6, i64 noundef %1, i64 noundef %28, i32 noundef 3) #6
  br label %30

30:                                               ; preds = %27, %21, %17, %13, %8, %3
  %31 = phi i32 [ %29, %27 ], [ -22, %21 ], [ -22, %17 ], [ -22, %13 ], [ -9, %8 ], [ -9, %3 ]
  %32 = and i32 %4, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @fput(ptr noundef %6) #6
  br label %35

35:                                               ; preds = %34, %30
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @readahead_expand(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, 73728
  %11 = sdiv i64 %1, 4096
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, %12
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  br label %59

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 1
  %21 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 4
  br label %22

22:                                               ; preds = %53, %19
  %23 = phi i32 [ %14, %19 ], [ %57, %53 ]
  %24 = add i32 %23, -1
  %25 = tail call ptr @xa_load(ptr noundef %20, i32 noundef %24) #6
  %26 = icmp eq ptr %25, null
  %27 = ptrtoint ptr %25 to i32
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  %30 = select i1 %26, i1 true, i1 %29
  br i1 %30, label %31, label %129

31:                                               ; preds = %22
  %32 = tail call ptr @__folio_alloc(i32 noundef %10, i32 noundef 0, i32 noundef 0, ptr noundef null) #6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %129, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @add_to_page_cache_lru(ptr noundef nonnull %32, ptr noundef %5, i32 noundef %24, i32 noundef %10) #6
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 1
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42, !prof !8

42:                                               ; preds = %37
  %43 = add i32 %39, -1
  br label %46

44:                                               ; preds = %37
  %45 = ptrtoint ptr %32 to i32
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = inttoptr i32 %47 to ptr
  %49 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #6, !srcloc !10
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #6, !srcloc !11
  %51 = extractvalue { i32, i32 } %50, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %127, label %129

53:                                               ; preds = %34
  %54 = load i32, ptr %21, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %21, align 4
  %56 = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 1, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  store i32 %57, ptr %13, align 4
  %58 = icmp ugt i32 %57, %12
  br i1 %58, label %22, label %59

59:                                               ; preds = %53, %16
  %60 = phi i32 [ %18, %16 ], [ %55, %53 ]
  %61 = phi i32 [ %14, %16 ], [ %57, %53 ]
  %62 = zext i32 %61 to i64
  %63 = mul nuw i64 %62, 4294963200
  %64 = add i64 %63, %1
  %65 = trunc i64 %64 to i32
  %66 = add i32 %2, 4095
  %67 = add i32 %66, %65
  %68 = lshr i32 %67, 12
  %69 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 4
  %70 = icmp ult i32 %60, %68
  br i1 %70, label %71, label %129

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 1
  %73 = icmp eq ptr %7, null
  %74 = getelementptr inbounds %struct.file_ra_state, ptr %7, i32 0, i32 1
  %75 = getelementptr inbounds %struct.file_ra_state, ptr %7, i32 0, i32 2
  %76 = add i32 %61, %60
  %77 = tail call ptr @xa_load(ptr noundef %72, i32 noundef %76) #6
  %78 = icmp eq ptr %77, null
  %79 = ptrtoint ptr %77 to i32
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  %82 = select i1 %78, i1 true, i1 %81
  br i1 %82, label %83, label %129

83:                                               ; preds = %118, %71
  %84 = phi i32 [ %120, %118 ], [ %76, %71 ]
  %85 = tail call ptr @__folio_alloc(i32 noundef %10, i32 noundef 0, i32 noundef 0, ptr noundef null) #6
  %86 = icmp eq ptr %85, null
  br i1 %86, label %129, label %87

87:                                               ; preds = %83
  %88 = tail call i32 @add_to_page_cache_lru(ptr noundef nonnull %85, ptr noundef %5, i32 noundef %84, i32 noundef %10) #6
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.page, ptr %85, i32 0, i32 1
  %92 = load volatile i32, ptr %91, align 4
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95, !prof !8

95:                                               ; preds = %90
  %96 = add i32 %92, -1
  br label %99

97:                                               ; preds = %90
  %98 = ptrtoint ptr %85 to i32
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  %101 = inttoptr i32 %100 to ptr
  %102 = getelementptr inbounds %struct.page, ptr %101, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %102) #6, !srcloc !10
  %103 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %102, ptr %102, i32 1, ptr elementtype(i32) %102) #6, !srcloc !11
  %104 = extractvalue { i32, i32 } %103, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %127, label %129

106:                                              ; preds = %87
  %107 = load i32, ptr %69, align 4
  %108 = add i32 %107, 1
  store i32 %108, ptr %69, align 4
  br i1 %73, label %115, label %109

109:                                              ; preds = %106
  %110 = load i32, ptr %74, align 4
  %111 = add i32 %110, 1
  store i32 %111, ptr %74, align 4
  %112 = load i32, ptr %75, align 8
  %113 = add i32 %112, 1
  store i32 %113, ptr %75, align 8
  %114 = load i32, ptr %69, align 4
  br label %115

115:                                              ; preds = %109, %106
  %116 = phi i32 [ %108, %106 ], [ %114, %109 ]
  %117 = icmp ult i32 %116, %68
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = load i32, ptr %13, align 4
  %120 = add i32 %119, %116
  %121 = tail call ptr @xa_load(ptr noundef %72, i32 noundef %120) #6
  %122 = icmp eq ptr %121, null
  %123 = ptrtoint ptr %121 to i32
  %124 = and i32 %123, 1
  %125 = icmp ne i32 %124, 0
  %126 = select i1 %122, i1 true, i1 %125
  br i1 %126, label %83, label %129

127:                                              ; preds = %99, %46
  %128 = phi ptr [ %48, %46 ], [ %101, %99 ]
  tail call void @__put_page(ptr noundef %128) #6
  br label %129

129:                                              ; preds = %127, %118, %115, %99, %83, %71, %59, %46, %31, %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_invalidatepage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pages_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__folio_alloc(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @page_cache_next_miss(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @page_cache_prev_miss(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2148031247}
!10 = !{i64 428409, i64 2147918380, i64 2147918406, i64 2147918453, i64 2147918475, i64 2147918503, i64 2147918523}
!11 = !{i64 2147933633, i64 2147933665, i64 2147933694, i64 2147933728, i64 2147933759, i64 2147933782}
!12 = !{i64 2148031450}
!13 = !{i64 2147939054, i64 2147939086, i64 2147939115, i64 2147939149, i64 2147939180, i64 2147939203}
!14 = !{i64 2148040370}
!15 = !{i64 2154273380, i64 2154273858, i64 2154273417, i64 2154273473, i64 2154273507, i64 2154273531, i64 2154273572, i64 2154273593, i64 2154273621, i64 2154273655}
!16 = !{!"auto-init"}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2152912275, i64 2152912764, i64 2152912312, i64 2152912368, i64 2152912402, i64 2152912426, i64 2152912467, i64 2152912488, i64 2152912516, i64 2152912550}
!19 = !{i64 2154282493, i64 2154282972, i64 2154282530, i64 2154282586, i64 2154282620, i64 2154282644, i64 2154282685, i64 2154282706, i64 2154282734, i64 2154282768}
!20 = !{i64 2154283510, i64 2154283989, i64 2154283547, i64 2154283603, i64 2154283637, i64 2154283661, i64 2154283702, i64 2154283723, i64 2154283751, i64 2154283785}
!21 = !{i64 2151304289}
!22 = !{i64 2151304131}
!23 = !{i64 2151304433}
!24 = !{i64 2149498676}
!25 = !{i64 2149172956}
!26 = !{i64 2149173173}
!27 = !{i32 0, i32 33}
!28 = !{!29}
!29 = distinct !{!29, !30, !"fdget: argument 0"}
!30 = distinct !{!30, !"fdget"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"fdget: argument 0"}
!33 = distinct !{!33, !"fdget"}
