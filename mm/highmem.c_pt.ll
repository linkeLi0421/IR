; ModuleID = '/llk/IR/mm/highmem.c_pt.bc'
source_filename = "../mm/highmem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__totalhigh_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22_totalhigh_pages\22\09\09\09\09\09"
module asm "__kstrtabns__totalhigh_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kmap_to_page:\09\09\09\09\09"
module asm "\09.asciz \09\22__kmap_to_page\22\09\09\09\09\09"
module asm "__kstrtabns___kmap_to_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmap_high:\09\09\09\09\09"
module asm "\09.asciz \09\22kmap_high\22\09\09\09\09\09"
module asm "__kstrtabns_kmap_high:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kunmap_high:\09\09\09\09\09"
module asm "\09.asciz \09\22kunmap_high\22\09\09\09\09\09"
module asm "__kstrtabns_kunmap_high:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zero_user_segments:\09\09\09\09\09"
module asm "\09.asciz \09\22zero_user_segments\22\09\09\09\09\09"
module asm "__kstrtabns_zero_user_segments:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kmap_local_pfn_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22__kmap_local_pfn_prot\22\09\09\09\09\09"
module asm "__kstrtabns___kmap_local_pfn_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kmap_local_page_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22__kmap_local_page_prot\22\09\09\09\09\09"
module asm "__kstrtabns___kmap_local_page_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kunmap_local_indexed:\09\09\09\09\09"
module asm "\09.asciz \09\22kunmap_local_indexed\22\09\09\09\09\09"
module asm "__kstrtabns_kunmap_local_indexed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_address:\09\09\09\09\09"
module asm "\09.asciz \09\22page_address\22\09\09\09\09\09"
module asm "__kstrtabns_page_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mm_struct = type { %struct.anon.7, [0 x i32] }
%struct.anon.7 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.page_address_map = type { ptr, ptr, %struct.list_head }
%struct.page_address_slot = type { %struct.list_head, %struct.spinlock, [52 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.page = type { i32, %union.anon.1, %union.anon.68, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.68 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.49 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.62 = type { i32, i8, i8, %struct.atomic_t, i32 }

@_totalhigh_pages = dso_local global %struct.atomic_t zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab__totalhigh_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns__totalhigh_pages = external dso_local constant [0 x i8], align 1
@__ksymtab__totalhigh_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_totalhigh_pages to i32), ptr @__kstrtab__totalhigh_pages, ptr @__kstrtabns__totalhigh_pages }, section "___ksymtab+_totalhigh_pages", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@pkmap_page_table = dso_local local_unnamed_addr global ptr null, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab___kmap_to_page = external dso_local constant [0 x i8], align 1
@__kstrtabns___kmap_to_page = external dso_local constant [0 x i8], align 1
@__ksymtab___kmap_to_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kmap_to_page to i32), ptr @__kstrtab___kmap_to_page, ptr @__kstrtabns___kmap_to_page }, section "___ksymtab+__kmap_to_page", align 4
@kmap_lock = internal global %struct.spinlock zeroinitializer, section ".data..cacheline_aligned", align 64
@pkmap_count = internal unnamed_addr global [512 x i32] zeroinitializer, align 4
@__kstrtab_kmap_high = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmap_high = external dso_local constant [0 x i8], align 1
@__ksymtab_kmap_high = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmap_high to i32), ptr @__kstrtab_kmap_high, ptr @__kstrtabns_kmap_high }, section "___ksymtab+kmap_high", align 4
@__kstrtab_kunmap_high = external dso_local constant [0 x i8], align 1
@__kstrtabns_kunmap_high = external dso_local constant [0 x i8], align 1
@__ksymtab_kunmap_high = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kunmap_high to i32), ptr @__kstrtab_kunmap_high, ptr @__kstrtabns_kunmap_high }, section "___ksymtab+kunmap_high", align 4
@__kstrtab_zero_user_segments = external dso_local constant [0 x i8], align 1
@__kstrtabns_zero_user_segments = external dso_local constant [0 x i8], align 1
@__ksymtab_zero_user_segments = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zero_user_segments to i32), ptr @__kstrtab_zero_user_segments, ptr @__kstrtabns_zero_user_segments }, section "___ksymtab+zero_user_segments", align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@__kstrtab___kmap_local_pfn_prot = external dso_local constant [0 x i8], align 1
@__kstrtabns___kmap_local_pfn_prot = external dso_local constant [0 x i8], align 1
@__ksymtab___kmap_local_pfn_prot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kmap_local_pfn_prot to i32), ptr @__kstrtab___kmap_local_pfn_prot, ptr @__kstrtabns___kmap_local_pfn_prot }, section "___ksymtab_gpl+__kmap_local_pfn_prot", align 4
@__kstrtab___kmap_local_page_prot = external dso_local constant [0 x i8], align 1
@__kstrtabns___kmap_local_page_prot = external dso_local constant [0 x i8], align 1
@__ksymtab___kmap_local_page_prot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kmap_local_page_prot to i32), ptr @__kstrtab___kmap_local_page_prot, ptr @__kstrtabns___kmap_local_page_prot }, section "___ksymtab+__kmap_local_page_prot", align 4
@kunmap_local_indexed.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [13 x i8] c"mm/highmem.c\00", align 1
@kunmap_local_indexed.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@__kstrtab_kunmap_local_indexed = external dso_local constant [0 x i8], align 1
@__kstrtabns_kunmap_local_indexed = external dso_local constant [0 x i8], align 1
@__ksymtab_kunmap_local_indexed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kunmap_local_indexed to i32), ptr @__kstrtab_kunmap_local_indexed, ptr @__kstrtabns_kunmap_local_indexed }, section "___ksymtab+kunmap_local_indexed", align 4
@__kmap_local_sched_out.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kmap_local_sched_in.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmap_local_fork.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_page_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_address = external dso_local constant [0 x i8], align 1
@__ksymtab_page_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_address to i32), ptr @__kstrtab_page_address, ptr @__kstrtabns_page_address }, section "___ksymtab+page_address", align 4
@page_address_maps = internal global [512 x %struct.page_address_map] zeroinitializer, align 4
@page_address_htable = internal global [128 x %struct.page_address_slot] zeroinitializer, align 64
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@get_next_pkmap_nr.last_pkmap_nr = internal unnamed_addr global i32 0, align 4
@get_pkmap_wait_queue_head.pkmap_map_wait = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @get_pkmap_wait_queue_head.pkmap_map_wait, i64 4), ptr getelementptr (i8, ptr @get_pkmap_wait_queue_head.pkmap_map_wait, i64 4) } }, align 4
@kmap_local_idx_push.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab___kmap_local_page_prot, ptr @__ksymtab___kmap_local_pfn_prot, ptr @__ksymtab___kmap_to_page, ptr @__ksymtab__totalhigh_pages, ptr @__ksymtab_kmap_high, ptr @__ksymtab_kunmap_high, ptr @__ksymtab_kunmap_local_indexed, ptr @__ksymtab_page_address, ptr @__ksymtab_zero_user_segments], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__nr_free_highpages() local_unnamed_addr #0 {
  %1 = tail call ptr @first_online_pgdat() #8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %26, %0
  %4 = phi i32 [ %27, %26 ], [ 0, %0 ]
  %5 = phi ptr [ %28, %26 ], [ %1, %0 ]
  %6 = getelementptr inbounds %struct.zone, ptr %5, i32 0, i32 13
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.zone, ptr %5, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %5 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  %15 = icmp eq i32 %14, 1792
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = icmp ne i32 %14, 2688
  %18 = load i32, ptr @movable_zone, align 4
  %19 = icmp ne i32 %18, 2
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16, %9
  %22 = getelementptr inbounds %struct.zone, ptr %5, i32 0, i32 37
  %23 = load volatile i32, ptr %22, align 4
  %24 = tail call i32 @llvm.smax.i32(i32 %23, i32 0) #8
  %25 = add i32 %24, %4
  br label %26

26:                                               ; preds = %21, %16, %3
  %27 = phi i32 [ %25, %21 ], [ %4, %16 ], [ %4, %3 ]
  %28 = tail call ptr @next_zone(ptr noundef nonnull %5) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %3

30:                                               ; preds = %26, %0
  %31 = phi i32 [ 0, %0 ], [ %27, %26 ]
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @first_online_pgdat() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @next_zone(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @__kmap_to_page(ptr noundef %0) #3 {
  %2 = ptrtoint ptr %0 to i32
  %3 = icmp ugt ptr %0, inttoptr (i32 -1075838977 to ptr)
  %4 = icmp ult ptr %0, inttoptr (i32 -1073741824 to ptr)
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = add i32 %2, 1075838976
  %8 = lshr i32 %7, 12
  %9 = load ptr, ptr @mem_map, align 4
  %10 = load ptr, ptr @pkmap_page_table, align 4
  %11 = getelementptr i32, ptr %10, i32 %8
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %12, 12
  %14 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %15 = sub i32 %13, %14
  %16 = getelementptr %struct.page, ptr %9, i32 %15
  br label %22

17:                                               ; preds = %1
  %18 = load ptr, ptr @mem_map, align 4
  %19 = add i32 %2, 1073741824
  %20 = lshr i32 %19, 12
  %21 = getelementptr %struct.page, ptr %18, i32 %20
  br label %22

22:                                               ; preds = %17, %6
  %23 = phi ptr [ %16, %6 ], [ %21, %17 ]
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__kmap_flush_unused() local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @kmap_lock) #8
  tail call fastcc void @flush_all_zero_pkmaps()
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %1 = load i16, ptr @kmap_lock, align 64
  %2 = add i16 %1, 1
  store i16 %2, ptr @kmap_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @flush_all_zero_pkmaps() unnamed_addr #0 {
  br label %1

1:                                                ; preds = %50, %0
  %2 = phi i32 [ 0, %0 ], [ %51, %50 ]
  %3 = phi i32 [ 0, %0 ], [ %52, %50 ]
  %4 = getelementptr [512 x i32], ptr @pkmap_count, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %50

7:                                                ; preds = %1
  store i32 0, ptr %4, align 4
  %8 = load ptr, ptr @pkmap_page_table, align 4
  %9 = getelementptr i32, ptr %8, i32 %3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13, !prof !12

12:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/highmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 178, 0\0A.popsection", ""() #8, !srcloc !13
  unreachable

13:                                               ; preds = %7
  %14 = load ptr, ptr @mem_map, align 4
  %15 = lshr i32 %10, 12
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %17 = sub i32 %15, %16
  %18 = getelementptr %struct.page, ptr %14, i32 %17
  %19 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 9), align 4
  tail call void %19(ptr noundef %9, i32 noundef 0, i32 noundef 0) #8
  %20 = load i32, ptr %18, align 4
  %21 = lshr i32 %20, 30
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %29, label %23

23:                                               ; preds = %13
  %24 = icmp ne i32 %21, 3
  %25 = load i32, ptr @movable_zone, align 4
  %26 = icmp ne i32 %25, 2
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %28, label %29, !prof !12

28:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/highmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 760, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

29:                                               ; preds = %23, %13
  %30 = ptrtoint ptr %18 to i32
  %31 = mul i32 %30, 1640531527
  %32 = lshr i32 %31, 25
  %33 = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %32
  %34 = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %32, i32 1
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #8
  br label %36

36:                                               ; preds = %40, %29
  %37 = phi ptr [ %33, %29 ], [ %38, %40 ]
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %33
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %38, i32 -8
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %18
  br i1 %43, label %44, label %36

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %38, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  store volatile ptr %47, ptr %46, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %38, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %45, align 4
  br label %49

49:                                               ; preds = %44, %36
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %35) #8
  br label %50

50:                                               ; preds = %49, %1
  %51 = phi i32 [ %2, %1 ], [ 1, %49 ]
  %52 = add nuw nsw i32 %3, 1
  %53 = icmp eq i32 %52, 512
  br i1 %53, label %54, label %1

54:                                               ; preds = %50
  %55 = icmp eq i32 %51, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %54
  tail call void @flush_tlb_kernel_range(i32 noundef -1075838976, i32 noundef -1073741824) #8
  br label %57

57:                                               ; preds = %56, %54
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kmap_high(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @kmap_lock) #8
  %3 = load i32, ptr %0, align 4
  %4 = lshr i32 %3, 30
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = icmp ne i32 %4, 3
  %8 = load i32, ptr @movable_zone, align 4
  %9 = icmp ne i32 %8, 2
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load ptr, ptr @mem_map, align 4
  %13 = ptrtoint ptr %0 to i32
  %14 = ptrtoint ptr %12 to i32
  %15 = sub i32 %13, %14
  %16 = lshr exact i32 %15, 5
  %17 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %18 = add i32 %16, %17
  %19 = shl i32 %18, 12
  %20 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %19, i32 -2130706432, i32 8454144) #9, !srcloc !15
  %21 = inttoptr i32 %20 to ptr
  br label %44

22:                                               ; preds = %6, %1
  %23 = ptrtoint ptr %0 to i32
  %24 = mul i32 %23, 1640531527
  %25 = lshr i32 %24, 25
  %26 = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %25
  %27 = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %25, i32 1
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %27) #8
  %29 = load volatile ptr, ptr %26, align 64
  %30 = icmp eq ptr %29, %26
  br i1 %30, label %42, label %31

31:                                               ; preds = %36, %22
  %32 = phi ptr [ %37, %36 ], [ %29, %22 ]
  %33 = getelementptr i8, ptr %32, i32 -8
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %32, align 4
  %38 = icmp eq ptr %37, %26
  br i1 %38, label %42, label %31

39:                                               ; preds = %31
  %40 = getelementptr i8, ptr %32, i32 -4
  %41 = load ptr, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %36, %22
  %43 = phi ptr [ null, %22 ], [ %41, %39 ], [ null, %36 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %28) #8
  br label %44

44:                                               ; preds = %42, %11
  %45 = phi ptr [ %43, %42 ], [ %21, %11 ]
  %46 = ptrtoint ptr %45 to i32
  %47 = icmp eq ptr %45, null
  br i1 %47, label %48, label %195

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 1
  %50 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 2
  %51 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3
  %52 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %0 to i32
  %54 = mul i32 %53, 1640531527
  %55 = lshr i32 %54, 25
  %56 = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %55
  %57 = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %55, i32 1
  br label %58

58:                                               ; preds = %160, %48
  %59 = phi i32 [ undef, %48 ], [ %161, %160 ]
  %60 = load i32, ptr @get_next_pkmap_nr.last_pkmap_nr, align 4
  br label %61

61:                                               ; preds = %75, %58
  %62 = phi i32 [ %60, %58 ], [ %70, %75 ]
  %63 = phi i32 [ 512, %58 ], [ %76, %75 ]
  %64 = add i32 %62, 1
  %65 = and i32 %64, 511
  store i32 %65, ptr @get_next_pkmap_nr.last_pkmap_nr, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  call fastcc void @flush_all_zero_pkmaps() #8
  %68 = load i32, ptr @get_next_pkmap_nr.last_pkmap_nr, align 4
  br label %69

69:                                               ; preds = %67, %61
  %70 = phi i32 [ %68, %67 ], [ %65, %61 ]
  %71 = phi i32 [ 512, %67 ], [ %63, %61 ]
  %72 = getelementptr [512 x i32], ptr @pkmap_count, i32 0, i32 %65
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %162, label %75

75:                                               ; preds = %69
  %76 = add i32 %71, -1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %61

78:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #8
  %79 = tail call ptr @llvm.thread.pointer() #8
  store i32 0, ptr %2, align 4
  store ptr %79, ptr %49, align 4
  store ptr @default_wake_function, ptr %50, align 4
  store ptr null, ptr %51, align 4
  store ptr null, ptr %52, align 4
  %80 = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 1
  store volatile i32 2, ptr %80, align 8
  call void @add_wait_queue(ptr noundef nonnull @get_pkmap_wait_queue_head.pkmap_map_wait, ptr noundef nonnull %2) #8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %81 = load i16, ptr @kmap_lock, align 64
  %82 = add i16 %81, 1
  store i16 %82, ptr @kmap_lock, align 64
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  call void @schedule() #8
  call void @remove_wait_queue(ptr noundef nonnull @get_pkmap_wait_queue_head.pkmap_map_wait, ptr noundef nonnull %2) #8
  call void @_raw_spin_lock(ptr noundef nonnull @kmap_lock) #8
  %83 = load i32, ptr %0, align 4
  %84 = lshr i32 %83, 30
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %101, label %86

86:                                               ; preds = %78
  %87 = icmp ne i32 %84, 3
  %88 = load i32, ptr @movable_zone, align 4
  %89 = icmp ne i32 %88, 2
  %90 = select i1 %87, i1 true, i1 %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %86
  %92 = load ptr, ptr @mem_map, align 4
  %93 = ptrtoint ptr %92 to i32
  %94 = sub i32 %53, %93
  %95 = lshr exact i32 %94, 5
  %96 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %97 = add i32 %95, %96
  %98 = shl i32 %97, 12
  %99 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %98, i32 -2130706432, i32 8454144) #9, !srcloc !15
  %100 = inttoptr i32 %99 to ptr
  br label %118

101:                                              ; preds = %86, %78
  %102 = call i32 @_raw_spin_lock_irqsave(ptr noundef %57) #8
  %103 = load volatile ptr, ptr %56, align 64
  %104 = icmp eq ptr %103, %56
  br i1 %104, label %116, label %105

105:                                              ; preds = %110, %101
  %106 = phi ptr [ %111, %110 ], [ %103, %101 ]
  %107 = getelementptr i8, ptr %106, i32 -8
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, %0
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = load ptr, ptr %106, align 4
  %112 = icmp eq ptr %111, %56
  br i1 %112, label %116, label %105

113:                                              ; preds = %105
  %114 = getelementptr i8, ptr %106, i32 -4
  %115 = load ptr, ptr %114, align 4
  br label %116

116:                                              ; preds = %113, %110, %101
  %117 = phi ptr [ null, %101 ], [ %115, %113 ], [ null, %110 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %57, i32 noundef %102) #8
  br label %118

118:                                              ; preds = %116, %91
  %119 = phi ptr [ %117, %116 ], [ %100, %91 ]
  %120 = icmp eq ptr %119, null
  br i1 %120, label %160, label %121

121:                                              ; preds = %118
  %122 = load i32, ptr %0, align 4
  %123 = lshr i32 %122, 30
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %140, label %125

125:                                              ; preds = %121
  %126 = icmp ne i32 %123, 3
  %127 = load i32, ptr @movable_zone, align 4
  %128 = icmp ne i32 %127, 2
  %129 = select i1 %126, i1 true, i1 %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %125
  %131 = load ptr, ptr @mem_map, align 4
  %132 = ptrtoint ptr %131 to i32
  %133 = sub i32 %53, %132
  %134 = lshr exact i32 %133, 5
  %135 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %136 = add i32 %134, %135
  %137 = shl i32 %136, 12
  %138 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %137, i32 -2130706432, i32 8454144) #9, !srcloc !15
  %139 = inttoptr i32 %138 to ptr
  br label %157

140:                                              ; preds = %125, %121
  %141 = call i32 @_raw_spin_lock_irqsave(ptr noundef %57) #8
  %142 = load volatile ptr, ptr %56, align 64
  %143 = icmp eq ptr %142, %56
  br i1 %143, label %155, label %144

144:                                              ; preds = %149, %140
  %145 = phi ptr [ %150, %149 ], [ %142, %140 ]
  %146 = getelementptr i8, ptr %145, i32 -8
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, %0
  br i1 %148, label %152, label %149

149:                                              ; preds = %144
  %150 = load ptr, ptr %145, align 4
  %151 = icmp eq ptr %150, %56
  br i1 %151, label %155, label %144

152:                                              ; preds = %144
  %153 = getelementptr i8, ptr %145, i32 -4
  %154 = load ptr, ptr %153, align 4
  br label %155

155:                                              ; preds = %152, %149, %140
  %156 = phi ptr [ null, %140 ], [ %154, %152 ], [ null, %149 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %57, i32 noundef %141) #8
  br label %157

157:                                              ; preds = %155, %130
  %158 = phi ptr [ %156, %155 ], [ %139, %130 ]
  %159 = ptrtoint ptr %158 to i32
  br label %160

160:                                              ; preds = %157, %118
  %161 = phi i32 [ %159, %157 ], [ %59, %118 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #8
  br i1 %120, label %58, label %195

162:                                              ; preds = %69
  %163 = shl nuw nsw i32 %65, 12
  %164 = or i32 %163, -1075838976
  %165 = load ptr, ptr @pkmap_page_table, align 4
  %166 = getelementptr i32, ptr %165, i32 %65
  %167 = load ptr, ptr @mem_map, align 4
  %168 = ptrtoint ptr %167 to i32
  %169 = sub i32 %53, %168
  %170 = lshr exact i32 %169, 5
  %171 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %172 = add i32 %170, %171
  %173 = shl i32 %172, 12
  %174 = load i32, ptr @pgprot_kernel, align 4
  %175 = or i32 %174, %173
  %176 = or i32 %175, 512
  call void @set_pte_at(ptr noundef nonnull @init_mm, i32 noundef %164, ptr noundef %166, i32 noundef %176) #8
  store i32 1, ptr %72, align 4
  %177 = inttoptr i32 %164 to ptr
  %178 = load i32, ptr %0, align 4
  %179 = lshr i32 %178, 30
  %180 = icmp eq i32 %179, 2
  br i1 %180, label %187, label %181

181:                                              ; preds = %162
  %182 = icmp ne i32 %179, 3
  %183 = load i32, ptr @movable_zone, align 4
  %184 = icmp ne i32 %183, 2
  %185 = select i1 %182, i1 true, i1 %184
  br i1 %185, label %186, label %187, !prof !12

186:                                              ; preds = %181
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/highmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 760, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

187:                                              ; preds = %181, %162
  %188 = getelementptr [512 x %struct.page_address_map], ptr @page_address_maps, i32 0, i32 %65
  store ptr %0, ptr %188, align 4
  %189 = getelementptr [512 x %struct.page_address_map], ptr @page_address_maps, i32 0, i32 %65, i32 1
  store ptr %177, ptr %189, align 4
  %190 = call i32 @_raw_spin_lock_irqsave(ptr noundef %57) #8
  %191 = getelementptr [512 x %struct.page_address_map], ptr @page_address_maps, i32 0, i32 %65, i32 2
  %192 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %193 = load ptr, ptr %192, align 4
  store ptr %191, ptr %192, align 4
  store ptr %56, ptr %191, align 4
  %194 = getelementptr [512 x %struct.page_address_map], ptr @page_address_maps, i32 0, i32 %65, i32 2, i32 1
  store ptr %193, ptr %194, align 4
  store volatile ptr %191, ptr %193, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %57, i32 noundef %190) #8
  br label %195

195:                                              ; preds = %187, %160, %44
  %196 = phi i32 [ %46, %44 ], [ %164, %187 ], [ %161, %160 ]
  %197 = add i32 %196, 1075838976
  %198 = lshr i32 %197, 12
  %199 = getelementptr [512 x i32], ptr @pkmap_count, i32 0, i32 %198
  %200 = load i32, ptr %199, align 4
  %201 = add i32 %200, 1
  store i32 %201, ptr %199, align 4
  %202 = icmp slt i32 %201, 2
  br i1 %202, label %203, label %204, !prof !12

203:                                              ; preds = %195
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/highmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 279, 0\0A.popsection", ""() #8, !srcloc !16
  unreachable

204:                                              ; preds = %195
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %205 = load i16, ptr @kmap_lock, align 64
  %206 = add i16 %205, 1
  store i16 %206, ptr @kmap_lock, align 64
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  %207 = inttoptr i32 %196 to ptr
  ret ptr %207
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @page_address(ptr noundef %0) #0 {
  %2 = load i32, ptr %0, align 4
  %3 = lshr i32 %2, 30
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = icmp ne i32 %3, 3
  %7 = load i32, ptr @movable_zone, align 4
  %8 = icmp ne i32 %7, 2
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = load ptr, ptr @mem_map, align 4
  %12 = ptrtoint ptr %0 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  %15 = lshr exact i32 %14, 5
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %17 = add i32 %15, %16
  %18 = shl i32 %17, 12
  %19 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %18, i32 -2130706432, i32 8454144) #9, !srcloc !15
  %20 = inttoptr i32 %19 to ptr
  br label %43

21:                                               ; preds = %5, %1
  %22 = ptrtoint ptr %0 to i32
  %23 = mul i32 %22, 1640531527
  %24 = lshr i32 %23, 25
  %25 = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %24
  %26 = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %24, i32 1
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #8
  %28 = load volatile ptr, ptr %25, align 64
  %29 = icmp eq ptr %28, %25
  br i1 %29, label %41, label %30

30:                                               ; preds = %35, %21
  %31 = phi ptr [ %36, %35 ], [ %28, %21 ]
  %32 = getelementptr i8, ptr %31, i32 -8
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %31, align 4
  %37 = icmp eq ptr %36, %25
  br i1 %37, label %41, label %30

38:                                               ; preds = %30
  %39 = getelementptr i8, ptr %31, i32 -4
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %35, %21
  %42 = phi ptr [ null, %21 ], [ %40, %38 ], [ null, %35 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #8
  br label %43

43:                                               ; preds = %41, %10
  %44 = phi ptr [ %42, %41 ], [ %20, %10 ]
  ret ptr %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kunmap_high(ptr noundef %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @kmap_lock) #8
  %2 = load i32, ptr %0, align 4
  %3 = lshr i32 %2, 30
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = icmp ne i32 %3, 3
  %7 = load i32, ptr @movable_zone, align 4
  %8 = icmp ne i32 %7, 2
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = load ptr, ptr @mem_map, align 4
  %12 = ptrtoint ptr %0 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  %15 = lshr exact i32 %14, 5
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %17 = add i32 %15, %16
  %18 = shl i32 %17, 12
  %19 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %18, i32 -2130706432, i32 8454144) #9, !srcloc !15
  %20 = inttoptr i32 %19 to ptr
  br label %43

21:                                               ; preds = %5, %1
  %22 = ptrtoint ptr %0 to i32
  %23 = mul i32 %22, 1640531527
  %24 = lshr i32 %23, 25
  %25 = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %24
  %26 = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %24, i32 1
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #8
  %28 = load volatile ptr, ptr %25, align 64
  %29 = icmp eq ptr %28, %25
  br i1 %29, label %41, label %30

30:                                               ; preds = %35, %21
  %31 = phi ptr [ %36, %35 ], [ %28, %21 ]
  %32 = getelementptr i8, ptr %31, i32 -8
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %31, align 4
  %37 = icmp eq ptr %36, %25
  br i1 %37, label %41, label %30

38:                                               ; preds = %30
  %39 = getelementptr i8, ptr %31, i32 -4
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %35, %21
  %42 = phi ptr [ null, %21 ], [ %40, %38 ], [ null, %35 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #8
  br label %43

43:                                               ; preds = %41, %10
  %44 = phi ptr [ %42, %41 ], [ %20, %10 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47, !prof !12

46:                                               ; preds = %43
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/highmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 329, 0\0A.popsection", ""() #8, !srcloc !17
  unreachable

47:                                               ; preds = %43
  %48 = ptrtoint ptr %44 to i32
  %49 = add i32 %48, 1075838976
  %50 = lshr i32 %49, 12
  %51 = getelementptr [512 x i32], ptr @pkmap_count, i32 0, i32 %50
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, -1
  store i32 %53, ptr %51, align 4
  switch i32 %52, label %58 [
    i32 1, label %54
    i32 2, label %55
  ]

54:                                               ; preds = %47
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/highmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 339, 0\0A.popsection", ""() #8, !srcloc !18
  unreachable

55:                                               ; preds = %47
  %56 = load volatile ptr, ptr getelementptr inbounds (%struct.wait_queue_head, ptr @get_pkmap_wait_queue_head.pkmap_map_wait, i32 0, i32 1), align 4
  %57 = icmp eq ptr %56, getelementptr inbounds (%struct.wait_queue_head, ptr @get_pkmap_wait_queue_head.pkmap_map_wait, i32 0, i32 1)
  br label %58

58:                                               ; preds = %55, %47
  %59 = phi i1 [ true, %47 ], [ %57, %55 ]
  %60 = phi ptr [ null, %47 ], [ @get_pkmap_wait_queue_head.pkmap_map_wait, %55 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %61 = load i16, ptr @kmap_lock, align 64
  %62 = add i16 %61, 1
  store i16 %62, ptr @kmap_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br i1 %59, label %64, label %63

63:                                               ; preds = %58
  tail call void @__wake_up(ptr noundef %60, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %64

64:                                               ; preds = %63, %58
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @zero_user_segments(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load volatile i32, ptr %0, align 4
  %7 = and i32 %6, 65536
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %11 = getelementptr inbounds %struct.anon.62, ptr %10, i32 0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  br label %14

14:                                               ; preds = %9, %5
  %15 = phi i32 [ %13, %9 ], [ 0, %5 ]
  %16 = shl i32 4096, %15
  %17 = icmp ult i32 %16, %2
  br i1 %17, label %31, label %18, !prof !12

18:                                               ; preds = %14
  %19 = load volatile i32, ptr %0, align 4
  %20 = and i32 %19, 65536
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %24 = getelementptr inbounds %struct.anon.62, ptr %23, i32 0, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i32 [ %26, %22 ], [ 0, %18 ]
  %29 = shl i32 4096, %28
  %30 = icmp ult i32 %29, %4
  br i1 %30, label %31, label %32, !prof !12

31:                                               ; preds = %27, %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/highmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 367, 0\0A.popsection", ""() #8, !srcloc !19
  unreachable

32:                                               ; preds = %27
  %33 = icmp ult i32 %1, %2
  %34 = select i1 %33, i32 %2, i32 0
  %35 = select i1 %33, i32 %1, i32 0
  %36 = icmp ult i32 %3, %4
  %37 = select i1 %36, i32 %4, i32 0
  %38 = select i1 %36, i32 %3, i32 0
  %39 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 2
  br label %40

40:                                               ; preds = %160, %32
  %41 = phi i32 [ 0, %32 ], [ %164, %160 ]
  %42 = phi i32 [ %37, %32 ], [ %155, %160 ]
  %43 = phi i32 [ %38, %32 ], [ %156, %160 ]
  %44 = phi i32 [ %34, %32 ], [ %103, %160 ]
  %45 = phi i32 [ %35, %32 ], [ %104, %160 ]
  %46 = load volatile i32, ptr %0, align 4
  %47 = and i32 %46, 65536
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %40
  %50 = load i32, ptr %39, align 4
  br label %51

51:                                               ; preds = %49, %40
  %52 = phi i32 [ %50, %49 ], [ 1, %40 ]
  %53 = icmp ult i32 %41, %52
  br i1 %53, label %54, label %165

54:                                               ; preds = %51
  %55 = icmp ugt i32 %45, 4095
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = add i32 %45, -4096
  %58 = add i32 %44, -4096
  br label %101

59:                                               ; preds = %54
  %60 = tail call i32 @llvm.umin.i32(i32 %44, i32 4096)
  %61 = icmp ugt i32 %44, %45
  br i1 %61, label %62, label %98

62:                                               ; preds = %59
  %63 = getelementptr %struct.page, ptr %0, i32 %41
  %64 = load i32, ptr @pgprot_kernel, align 4
  %65 = or i32 %64, 512
  %66 = load i32, ptr %63, align 4
  %67 = lshr i32 %66, 30
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %85, label %69

69:                                               ; preds = %62
  %70 = icmp ne i32 %67, 3
  %71 = load i32, ptr @movable_zone, align 4
  %72 = icmp ne i32 %71, 2
  %73 = select i1 %70, i1 true, i1 %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load ptr, ptr @mem_map, align 4
  %76 = ptrtoint ptr %63 to i32
  %77 = ptrtoint ptr %75 to i32
  %78 = sub i32 %76, %77
  %79 = lshr exact i32 %78, 5
  %80 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %81 = add i32 %79, %80
  %82 = shl i32 %81, 12
  %83 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %82, i32 -2130706432, i32 8454144) #9, !srcloc !15
  %84 = inttoptr i32 %83 to ptr
  br label %94

85:                                               ; preds = %69, %62
  %86 = load ptr, ptr @mem_map, align 4
  %87 = ptrtoint ptr %63 to i32
  %88 = ptrtoint ptr %86 to i32
  %89 = sub i32 %87, %88
  %90 = ashr exact i32 %89, 5
  %91 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %92 = add i32 %90, %91
  %93 = tail call ptr @__kmap_local_pfn_prot(i32 noundef %92, i32 noundef %65) #8
  br label %94

94:                                               ; preds = %85, %74
  %95 = phi ptr [ %93, %85 ], [ %84, %74 ]
  %96 = getelementptr i8, ptr %95, i32 %45
  %97 = sub nsw i32 %60, %45
  tail call void @llvm.memset.p0.i32(ptr align 1 %96, i8 0, i32 %97, i1 false)
  br label %98

98:                                               ; preds = %94, %59
  %99 = phi ptr [ %95, %94 ], [ null, %59 ]
  %100 = sub i32 %44, %60
  br label %101

101:                                              ; preds = %98, %56
  %102 = phi ptr [ null, %56 ], [ %99, %98 ]
  %103 = phi i32 [ %58, %56 ], [ %100, %98 ]
  %104 = phi i32 [ %57, %56 ], [ 0, %98 ]
  %105 = icmp ugt i32 %43, 4095
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = add i32 %43, -4096
  %108 = add i32 %42, -4096
  br label %153

109:                                              ; preds = %101
  %110 = tail call i32 @llvm.umin.i32(i32 %42, i32 4096)
  %111 = icmp ugt i32 %42, %43
  br i1 %111, label %112, label %150

112:                                              ; preds = %109
  %113 = icmp eq ptr %102, null
  br i1 %113, label %114, label %146

114:                                              ; preds = %112
  %115 = getelementptr %struct.page, ptr %0, i32 %41
  %116 = load i32, ptr @pgprot_kernel, align 4
  %117 = or i32 %116, 512
  %118 = load i32, ptr %115, align 4
  %119 = lshr i32 %118, 30
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %137, label %121

121:                                              ; preds = %114
  %122 = icmp ne i32 %119, 3
  %123 = load i32, ptr @movable_zone, align 4
  %124 = icmp ne i32 %123, 2
  %125 = select i1 %122, i1 true, i1 %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %121
  %127 = load ptr, ptr @mem_map, align 4
  %128 = ptrtoint ptr %115 to i32
  %129 = ptrtoint ptr %127 to i32
  %130 = sub i32 %128, %129
  %131 = lshr exact i32 %130, 5
  %132 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %133 = add i32 %131, %132
  %134 = shl i32 %133, 12
  %135 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %134, i32 -2130706432, i32 8454144) #9, !srcloc !15
  %136 = inttoptr i32 %135 to ptr
  br label %146

137:                                              ; preds = %121, %114
  %138 = load ptr, ptr @mem_map, align 4
  %139 = ptrtoint ptr %115 to i32
  %140 = ptrtoint ptr %138 to i32
  %141 = sub i32 %139, %140
  %142 = ashr exact i32 %141, 5
  %143 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %144 = add i32 %142, %143
  %145 = tail call ptr @__kmap_local_pfn_prot(i32 noundef %144, i32 noundef %117) #8
  br label %146

146:                                              ; preds = %137, %126, %112
  %147 = phi ptr [ %102, %112 ], [ %145, %137 ], [ %136, %126 ]
  %148 = getelementptr i8, ptr %147, i32 %43
  %149 = sub nsw i32 %110, %43
  tail call void @llvm.memset.p0.i32(ptr align 1 %148, i8 0, i32 %149, i1 false)
  br label %150

150:                                              ; preds = %146, %109
  %151 = phi ptr [ %147, %146 ], [ %102, %109 ]
  %152 = sub i32 %42, %110
  br label %153

153:                                              ; preds = %150, %106
  %154 = phi ptr [ %102, %106 ], [ %151, %150 ]
  %155 = phi i32 [ %108, %106 ], [ %152, %150 ]
  %156 = phi i32 [ %107, %106 ], [ 0, %150 ]
  %157 = icmp eq ptr %154, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %153
  tail call void @kunmap_local_indexed(ptr noundef nonnull %154) #8
  %159 = getelementptr %struct.page, ptr %0, i32 %41
  tail call void @flush_dcache_page(ptr noundef %159) #8
  br label %160

160:                                              ; preds = %158, %153
  %161 = icmp ne i32 %103, 0
  %162 = icmp ne i32 %155, 0
  %163 = select i1 %161, i1 true, i1 %162
  %164 = add nuw i32 %41, 1
  br i1 %163, label %40, label %165

165:                                              ; preds = %160, %51
  %166 = phi i32 [ 0, %160 ], [ %42, %51 ]
  %167 = phi i32 [ %156, %160 ], [ %43, %51 ]
  %168 = phi i32 [ 0, %160 ], [ %44, %51 ]
  %169 = phi i32 [ %104, %160 ], [ %45, %51 ]
  %170 = or i32 %167, %166
  %171 = or i32 %170, %168
  %172 = or i32 %171, %169
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %175, label %174, !prof !20

174:                                              ; preds = %165
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/highmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #8, !srcloc !21
  unreachable

175:                                              ; preds = %165
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__kmap_local_pfn_prot(i32 noundef %0, i32 noundef %1) #0 {
  tail call void @migrate_disable() #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !22
  %3 = tail call ptr @llvm.thread.pointer() #8
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 983040
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !23
  %10 = and i32 %9, 128
  %11 = icmp eq i32 %10, 0
  %12 = load i1, ptr @kmap_local_idx_push.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !12

15:                                               ; preds = %8
  store i1 true, ptr @kmap_local_idx_push.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 436, i32 noundef 9, ptr noundef null) #8
  br label %16

16:                                               ; preds = %15, %8, %2
  %17 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 148
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  %20 = icmp sgt i32 %19, 15
  br i1 %20, label %21, label %22, !prof !12

21:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/highmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 438, 0\0A.popsection", ""() #8, !srcloc !24
  unreachable

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = mul i32 %24, 1048560
  %26 = sub i32 %25, %18
  %27 = shl i32 %26, 12
  %28 = add i32 %27, -1056768
  %29 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %30 = lshr i32 %28, 21
  %31 = getelementptr [2 x i32], ptr %29, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %22
  %35 = and i32 %32, -4096
  %36 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %35, i32 -2130706432, i32 8454144) #9, !srcloc !15
  %37 = inttoptr i32 %36 to ptr
  %38 = lshr exact i32 %28, 12
  %39 = and i32 %38, 511
  %40 = getelementptr i32, ptr %37, i32 %39
  br label %41

41:                                               ; preds = %34, %22
  %42 = phi ptr [ %40, %34 ], [ null, %22 ]
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45, !prof !20

45:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/highmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 532, 0\0A.popsection", ""() #8, !srcloc !25
  unreachable

46:                                               ; preds = %41
  %47 = shl i32 %0, 12
  %48 = or i32 %47, %1
  tail call void @set_pte_at(ptr noundef nonnull @init_mm, i32 noundef %28, ptr noundef %42, i32 noundef %48) #8
  %49 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "dsb nshst", "~{memory}"() #8, !srcloc !26
  %50 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %28, i32 %50, i32 16) #8, !srcloc !27
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %28, i32 %49, i32 1048576) #8, !srcloc !28
  tail call void asm sideeffect "dsb nsh", "~{memory}"() #8, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !30
  %51 = load i32, ptr %17, align 4
  %52 = add i32 %51, -1
  %53 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 148, i32 1, i32 %52
  store i32 %48, ptr %53, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !31
  %54 = inttoptr i32 %28 to ptr
  ret ptr %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__kmap_local_page_prot(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = lshr i32 %3, 30
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = icmp ne i32 %4, 3
  %8 = load i32, ptr @movable_zone, align 4
  %9 = icmp ne i32 %8, 2
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load ptr, ptr @mem_map, align 4
  %13 = ptrtoint ptr %0 to i32
  %14 = ptrtoint ptr %12 to i32
  %15 = sub i32 %13, %14
  %16 = lshr exact i32 %15, 5
  %17 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %18 = add i32 %16, %17
  %19 = shl i32 %18, 12
  %20 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %19, i32 -2130706432, i32 8454144) #9, !srcloc !15
  %21 = inttoptr i32 %20 to ptr
  br label %31

22:                                               ; preds = %6, %2
  %23 = load ptr, ptr @mem_map, align 4
  %24 = ptrtoint ptr %0 to i32
  %25 = ptrtoint ptr %23 to i32
  %26 = sub i32 %24, %25
  %27 = ashr exact i32 %26, 5
  %28 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %29 = add i32 %27, %28
  %30 = tail call ptr @__kmap_local_pfn_prot(i32 noundef %29, i32 noundef %1)
  br label %31

31:                                               ; preds = %22, %11
  %32 = phi ptr [ %30, %22 ], [ %21, %11 ]
  ret ptr %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kunmap_local_indexed(ptr noundef %0) #0 {
  %2 = ptrtoint ptr %0 to i32
  %3 = and i32 %2, -4096
  %4 = add i32 %3, 1056767
  %5 = icmp ult i32 %4, -1044481
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = icmp ult i32 %3, -1073741824
  %8 = load i1, ptr @kunmap_local_indexed.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %54, !prof !12

11:                                               ; preds = %6
  store i1 true, ptr @kunmap_local_indexed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 584, i32 noundef 9, ptr noundef null) #8
  br label %54

12:                                               ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !32
  %13 = tail call ptr @llvm.thread.pointer() #8
  %14 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 148
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 1, %15
  %17 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = mul i32 %18, 1048560
  %20 = add i32 %16, %19
  %21 = shl i32 %20, 12
  %22 = add i32 %21, -1056768
  %23 = icmp ne i32 %3, %22
  %24 = load i1, ptr @kunmap_local_indexed.__already_done.1, align 1
  %25 = xor i1 %24, true
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %28, !prof !12

27:                                               ; preds = %12
  store i1 true, ptr @kunmap_local_indexed.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 590, i32 noundef 9, ptr noundef null) #8
  br label %28

28:                                               ; preds = %27, %12
  %29 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %30 = lshr i32 %2, 21
  %31 = getelementptr [2 x i32], ptr %29, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = and i32 %32, -4096
  %36 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %35, i32 -2130706432, i32 8454144) #9, !srcloc !15
  %37 = inttoptr i32 %36 to ptr
  %38 = lshr i32 %2, 12
  %39 = and i32 %38, 511
  %40 = getelementptr i32, ptr %37, i32 %39
  br label %41

41:                                               ; preds = %34, %28
  %42 = phi ptr [ %40, %34 ], [ null, %28 ]
  %43 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 9), align 4
  tail call void %43(ptr noundef %42, i32 noundef 0, i32 noundef 0) #8
  %44 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "dsb nshst", "~{memory}"() #8, !srcloc !26
  %45 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %3, i32 %45, i32 16) #8, !srcloc !27
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %3, i32 %44, i32 1048576) #8, !srcloc !28
  tail call void asm sideeffect "dsb nsh", "~{memory}"() #8, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !30
  %46 = load i32, ptr %14, align 4
  %47 = add i32 %46, -1
  %48 = getelementptr %struct.task_struct, ptr %13, i32 0, i32 148, i32 1, i32 %47
  store i32 0, ptr %48, align 4
  %49 = load i32, ptr %14, align 4
  %50 = add i32 %49, -1
  store i32 %50, ptr %14, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53, !prof !12

52:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/highmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 450, 0\0A.popsection", ""() #8, !srcloc !33
  unreachable

53:                                               ; preds = %41
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !34
  tail call void @migrate_enable() #8
  br label %54

54:                                               ; preds = %53, %11, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__kmap_local_sched_out() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #8
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 148
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %44

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  br label %7

7:                                                ; preds = %40, %5
  %8 = phi i32 [ 0, %5 ], [ %41, %40 ]
  %9 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 148, i32 1, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = load i1, ptr @__kmap_local_sched_out.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !12

15:                                               ; preds = %7
  store i1 true, ptr @__kmap_local_sched_out.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 630, i32 noundef 9, ptr noundef null) #8
  br label %16

16:                                               ; preds = %15, %7
  br i1 %11, label %40, label %17

17:                                               ; preds = %16
  %18 = load i32, ptr %6, align 8
  %19 = mul i32 %18, 1048560
  %20 = sub i32 %19, %8
  %21 = shl i32 %20, 12
  %22 = add i32 %21, -1056768
  %23 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %24 = lshr i32 %22, 21
  %25 = getelementptr [2 x i32], ptr %23, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %17
  %29 = and i32 %26, -4096
  %30 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %29, i32 -2130706432, i32 8454144) #9, !srcloc !15
  %31 = inttoptr i32 %30 to ptr
  %32 = lshr exact i32 %22, 12
  %33 = and i32 %32, 511
  %34 = getelementptr i32, ptr %31, i32 %33
  br label %35

35:                                               ; preds = %28, %17
  %36 = phi ptr [ %34, %28 ], [ null, %17 ]
  %37 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 9), align 4
  tail call void %37(ptr noundef %36, i32 noundef 0, i32 noundef 0) #8
  %38 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "dsb nshst", "~{memory}"() #8, !srcloc !26
  %39 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %22, i32 %39, i32 16) #8, !srcloc !27
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %22, i32 %38, i32 1048576) #8, !srcloc !28
  tail call void asm sideeffect "dsb nsh", "~{memory}"() #8, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !30
  br label %40

40:                                               ; preds = %35, %16
  %41 = add nuw nsw i32 %8, 1
  %42 = load i32, ptr %2, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %7, label %44

44:                                               ; preds = %40, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__kmap_local_sched_in() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #8
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 148
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %43

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  br label %7

7:                                                ; preds = %39, %5
  %8 = phi i32 [ 0, %5 ], [ %40, %39 ]
  %9 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 148, i32 1, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = load i1, ptr @__kmap_local_sched_in.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !12

15:                                               ; preds = %7
  store i1 true, ptr @__kmap_local_sched_in.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 667, i32 noundef 9, ptr noundef null) #8
  br label %16

16:                                               ; preds = %15, %7
  br i1 %11, label %39, label %17

17:                                               ; preds = %16
  %18 = load i32, ptr %6, align 8
  %19 = mul i32 %18, 1048560
  %20 = sub i32 %19, %8
  %21 = shl i32 %20, 12
  %22 = add i32 %21, -1056768
  %23 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %24 = lshr i32 %22, 21
  %25 = getelementptr [2 x i32], ptr %23, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %17
  %29 = and i32 %26, -4096
  %30 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %29, i32 -2130706432, i32 8454144) #9, !srcloc !15
  %31 = inttoptr i32 %30 to ptr
  %32 = lshr exact i32 %22, 12
  %33 = and i32 %32, 511
  %34 = getelementptr i32, ptr %31, i32 %33
  br label %35

35:                                               ; preds = %28, %17
  %36 = phi ptr [ %34, %28 ], [ null, %17 ]
  tail call void @set_pte_at(ptr noundef nonnull @init_mm, i32 noundef %22, ptr noundef %36, i32 noundef %10) #8
  %37 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "dsb nshst", "~{memory}"() #8, !srcloc !26
  %38 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %22, i32 %38, i32 16) #8, !srcloc !27
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %22, i32 %37, i32 1048576) #8, !srcloc !28
  tail call void asm sideeffect "dsb nsh", "~{memory}"() #8, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !30
  br label %39

39:                                               ; preds = %35, %16
  %40 = add nuw nsw i32 %8, 1
  %41 = load i32, ptr %2, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %7, label %43

43:                                               ; preds = %39, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kmap_local_fork(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 148
  %3 = load i32, ptr %2, align 4
  %4 = icmp ne i32 %3, 0
  %5 = load i1, ptr @kmap_local_fork.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !12

8:                                                ; preds = %1
  store i1 true, ptr @kmap_local_fork.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 681, i32 noundef 9, ptr noundef null) #8
  br label %9

9:                                                ; preds = %8, %1
  br i1 %4, label %10, label %11

10:                                               ; preds = %9
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(68) %2, i8 0, i32 68, i1 false)
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_page_address(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4
  %4 = lshr i32 %3, 30
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = icmp ne i32 %4, 3
  %8 = load i32, ptr @movable_zone, align 4
  %9 = icmp ne i32 %8, 2
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %11, label %12, !prof !12

11:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/highmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 760, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

12:                                               ; preds = %6, %2
  %13 = ptrtoint ptr %0 to i32
  %14 = mul i32 %13, 1640531527
  %15 = lshr i32 %14, 25
  %16 = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %15
  %17 = icmp eq ptr %1, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %12
  %19 = ptrtoint ptr %1 to i32
  %20 = add i32 %19, 1075838976
  %21 = lshr i32 %20, 12
  %22 = getelementptr [512 x %struct.page_address_map], ptr @page_address_maps, i32 0, i32 %21
  store ptr %0, ptr %22, align 4
  %23 = getelementptr [512 x %struct.page_address_map], ptr @page_address_maps, i32 0, i32 %21, i32 1
  store ptr %1, ptr %23, align 4
  %24 = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %15, i32 1
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #8
  %26 = getelementptr [512 x %struct.page_address_map], ptr @page_address_maps, i32 0, i32 %21, i32 2
  %27 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  store ptr %26, ptr %27, align 4
  store ptr %16, ptr %26, align 4
  %29 = getelementptr [512 x %struct.page_address_map], ptr @page_address_maps, i32 0, i32 %21, i32 2, i32 1
  store ptr %28, ptr %29, align 4
  store volatile ptr %26, ptr %28, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %25) #8
  br label %47

30:                                               ; preds = %12
  %31 = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %15, i32 1
  %32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %31) #8
  br label %33

33:                                               ; preds = %37, %30
  %34 = phi ptr [ %16, %30 ], [ %35, %37 ]
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %16
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %35, i32 -8
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %41, label %33

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %35, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %43, ptr %45, align 4
  store volatile ptr %44, ptr %43, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %35, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %42, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %31, i32 noundef %32) #8
  br label %47

46:                                               ; preds = %33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %31, i32 noundef %32) #8
  br label %47

47:                                               ; preds = %46, %41, %18
  ret void
}

; Function Attrs: cold nofree norecurse nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @page_address_init() local_unnamed_addr #5 section ".init.text" {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %6, %1 ]
  %3 = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %2
  store volatile ptr %3, ptr %3, align 64
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %2, i32 1
  store i32 0, ptr %5, align 8
  %6 = add nuw nsw i32 %2, 1
  %7 = icmp eq i32 %6, 128
  br i1 %7, label %8, label %1

8:                                                ; preds = %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_kernel_range(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold nofree norecurse nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }

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
!8 = !{i64 2149025556}
!9 = !{i64 2149021380}
!10 = !{i64 2149021455, i64 2149021482, i64 2149021529, i64 2149021551, i64 2149021579, i64 2149021599}
!11 = !{i64 2149048559}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2153596770, i64 2153597247, i64 2153596807, i64 2153596863, i64 2153596897, i64 2153596921, i64 2153596962, i64 2153596983, i64 2153597011, i64 2153597045}
!14 = !{i64 2153653919, i64 2153654396, i64 2153653956, i64 2153654012, i64 2153654046, i64 2153654070, i64 2153654111, i64 2153654132, i64 2153654160, i64 2153654194}
!15 = !{i64 2148795838, i64 2148795861, i64 2148795893, i64 2148795925, i64 2148795963, i64 2148795993}
!16 = !{i64 2153603639, i64 2153604116, i64 2153603676, i64 2153603732, i64 2153603766, i64 2153603790, i64 2153603831, i64 2153603852, i64 2153603880, i64 2153603914}
!17 = !{i64 2153605792, i64 2153606269, i64 2153605829, i64 2153605885, i64 2153605919, i64 2153605943, i64 2153605984, i64 2153606005, i64 2153606033, i64 2153606067}
!18 = !{i64 2153606915, i64 2153607392, i64 2153606952, i64 2153607008, i64 2153607042, i64 2153607066, i64 2153607107, i64 2153607128, i64 2153607156, i64 2153607190}
!19 = !{i64 2153609278, i64 2153609755, i64 2153609315, i64 2153609371, i64 2153609405, i64 2153609429, i64 2153609470, i64 2153609491, i64 2153609519, i64 2153609553}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2153616261, i64 2153616738, i64 2153616298, i64 2153616354, i64 2153616388, i64 2153616412, i64 2153616453, i64 2153616474, i64 2153616502, i64 2153616536}
!22 = !{i64 2153624935}
!23 = !{i64 766900}
!24 = !{i64 2153621400, i64 2153621877, i64 2153621437, i64 2153621493, i64 2153621527, i64 2153621551, i64 2153621592, i64 2153621613, i64 2153621641, i64 2153621675}
!25 = !{i64 2153625473, i64 2153625950, i64 2153625510, i64 2153625566, i64 2153625600, i64 2153625624, i64 2153625665, i64 2153625686, i64 2153625714, i64 2153625748}
!26 = !{i64 2150896460}
!27 = !{i64 2150890151, i64 2150890164}
!28 = !{i64 2150896733, i64 2150896746}
!29 = !{i64 2150899496}
!30 = !{i64 2150899555}
!31 = !{i64 2153626526}
!32 = !{i64 2153633864}
!33 = !{i64 2153622833, i64 2153623310, i64 2153622870, i64 2153622926, i64 2153622960, i64 2153622984, i64 2153623025, i64 2153623046, i64 2153623074, i64 2153623108}
!34 = !{i64 2153635687}
