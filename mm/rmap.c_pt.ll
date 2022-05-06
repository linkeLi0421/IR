; ModuleID = '/llk/IR/mm/rmap.c_pt.bc'
source_filename = "../mm/rmap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_mkclean:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_mkclean\22\09\09\09\09\09"
module asm "__kstrtabns_folio_mkclean:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rmap_walk_control = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, %struct.zone_padding, %struct.lruvec, i32, [56 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [28 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.15 }
%union.anon.15 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.mm_struct = type { %struct.anon, [0 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.69, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.anon_vma = type { ptr, %struct.rw_semaphore, %struct.atomic_t, i32, ptr, %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.anon_vma_chain = type { ptr, ptr, %struct.list_head, %struct.rb_node, i32 }
%struct.page = type { i32, %union.anon.16, %union.anon.28, %struct.atomic_t }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.28 = type { %struct.atomic_t }
%struct.anon.30 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.page_referenced_arg = type { i32, i32, i32, ptr }
%struct.page_vma_mapped_walk = type { ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%struct.llist_node = type { ptr }
%union.anon.34 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.55 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.20 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@.str = private unnamed_addr constant [9 x i8] c"anon_vma\00", align 1
@anon_vma_cachep = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"anon_vma_chain\00", align 1
@anon_vma_chain_cachep = internal unnamed_addr global ptr null, align 4
@__kstrtab_folio_mkclean = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_mkclean = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_mkclean = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_mkclean to i32), ptr @__kstrtab_folio_mkclean, ptr @__kstrtabns_folio_mkclean }, section "___ksymtab_gpl+folio_mkclean", align 4
@try_to_migrate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"mm/rmap.c\00", align 1
@__const.page_mlock.rwc = private unnamed_addr constant %struct.rmap_walk_control { ptr null, ptr @page_mlock_one, ptr @page_not_mapped, ptr @page_lock_anon_vma_read, ptr null }, align 4
@lock_anon_vma_root.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@anon_vma_ctor.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"&anon_vma->rwsem\00", align 1
@page_referenced_one.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@page_mkclean_one.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@try_to_unmap_one.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mmlist_lock = external dso_local global %struct.spinlock, align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_folio_mkclean], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__anon_vma_prepare(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr @anon_vma_chain_cachep, align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 3264) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %55, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @find_mergeable_anon_vma(ptr noundef %0) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %8, align 4
  br label %20

12:                                               ; preds = %7
  %13 = load ptr, ptr @anon_vma_cachep, align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %13, i32 noundef 3264) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %51, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.anon_vma, ptr %14, i32 0, i32 2
  store volatile i32 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.anon_vma, ptr %14, i32 0, i32 3
  store i32 1, ptr %18, align 8
  %19 = getelementptr inbounds %struct.anon_vma, ptr %14, i32 0, i32 4
  store ptr %14, ptr %19, align 4
  store ptr %14, ptr %14, align 8
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi ptr [ %11, %10 ], [ %14, %16 ]
  %22 = phi ptr [ %8, %10 ], [ %14, %16 ]
  %23 = phi ptr [ null, %10 ], [ %14, %16 ]
  %24 = getelementptr inbounds %struct.anon_vma, ptr %21, i32 0, i32 1
  tail call void @down_write(ptr noundef %24) #12
  %25 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %25) #12
  %26 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %40, !prof !8

29:                                               ; preds = %20
  store ptr %22, ptr %26, align 4
  store ptr %0, ptr %5, align 8
  %30 = getelementptr inbounds %struct.anon_vma_chain, ptr %5, i32 0, i32 1
  store ptr %22, ptr %30, align 4
  %31 = getelementptr inbounds %struct.anon_vma_chain, ptr %5, i32 0, i32 2
  %32 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 10
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %31, ptr %34, align 4
  store ptr %33, ptr %31, align 8
  %35 = getelementptr inbounds %struct.anon_vma_chain, ptr %5, i32 0, i32 2, i32 1
  store ptr %32, ptr %35, align 4
  store volatile ptr %31, ptr %32, align 4
  %36 = getelementptr inbounds %struct.anon_vma, ptr %22, i32 0, i32 5
  tail call void @anon_vma_interval_tree_insert(ptr noundef nonnull %5, ptr noundef %36) #12
  %37 = getelementptr inbounds %struct.anon_vma, ptr %22, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 4
  br label %40

40:                                               ; preds = %29, %20
  %41 = phi ptr [ null, %29 ], [ %23, %20 ]
  %42 = phi ptr [ null, %29 ], [ %5, %20 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %43 = load i16, ptr %25, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %45 = load ptr, ptr %22, align 4
  %46 = getelementptr inbounds %struct.anon_vma, ptr %45, i32 0, i32 1
  tail call void @up_write(ptr noundef %46) #12
  %47 = icmp eq ptr %41, null
  br i1 %47, label %49, label %48, !prof !8

48:                                               ; preds = %40
  tail call fastcc void @put_anon_vma(ptr noundef nonnull %41)
  br label %49

49:                                               ; preds = %48, %40
  %50 = icmp eq ptr %42, null
  br i1 %50, label %55, label %51, !prof !8

51:                                               ; preds = %49, %12
  %52 = phi ptr [ %42, %49 ], [ %5, %12 ]
  %53 = phi i32 [ 0, %49 ], [ -12, %12 ]
  %54 = load ptr, ptr @anon_vma_chain_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %54, ptr noundef nonnull %52) #12
  br label %55

55:                                               ; preds = %51, %49, %1
  %56 = phi i32 [ 0, %49 ], [ -12, %1 ], [ %53, %51 ]
  ret i32 %56
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_mergeable_anon_vma(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_anon_vma(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.anon_vma, ptr %0, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #12, !srcloc !14
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #12, !srcloc !15
  %4 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @__put_anon_vma(ptr noundef %0)
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @anon_vma_clone(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 10
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 10, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %3
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  br label %71

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 10
  %12 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 11
  %13 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 11
  br label %14

14:                                               ; preds = %66, %10
  %15 = phi ptr [ %5, %10 ], [ %69, %66 ]
  %16 = phi ptr [ null, %10 ], [ %47, %66 ]
  %17 = load ptr, ptr @anon_vma_chain_cachep, align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %17, i32 noundef 10240) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %28, !prof !17

20:                                               ; preds = %14
  %21 = icmp eq ptr %16, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.anon_vma, ptr %16, i32 0, i32 1
  tail call void @up_write(ptr noundef %23) #12
  br label %24

24:                                               ; preds = %22, %20
  %25 = load ptr, ptr @anon_vma_chain_cachep, align 4
  %26 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %25, i32 noundef 3264) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %83, label %28

28:                                               ; preds = %24, %14
  %29 = phi ptr [ null, %24 ], [ %16, %14 ]
  %30 = phi ptr [ %26, %24 ], [ %18, %14 ]
  %31 = getelementptr i8, ptr %15, i32 -4
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %29
  br i1 %34, label %46, label %35

35:                                               ; preds = %28
  %36 = icmp ne ptr %29, null
  %37 = load i1, ptr @lock_anon_vma_root.__already_done, align 1
  %38 = xor i1 %37, true
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %41, !prof !17

40:                                               ; preds = %35
  store i1 true, ptr @lock_anon_vma_root.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 243, i32 noundef 9, ptr noundef null) #12
  br label %41

41:                                               ; preds = %40, %35
  br i1 %36, label %42, label %44

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.anon_vma, ptr %29, i32 0, i32 1
  tail call void @up_write(ptr noundef %43) #12
  br label %44

44:                                               ; preds = %42, %41
  %45 = getelementptr inbounds %struct.anon_vma, ptr %33, i32 0, i32 1
  tail call void @down_write(ptr noundef %45) #12
  br label %46

46:                                               ; preds = %44, %28
  %47 = phi ptr [ %33, %44 ], [ %29, %28 ]
  store ptr %0, ptr %30, align 8
  %48 = getelementptr inbounds %struct.anon_vma_chain, ptr %30, i32 0, i32 1
  store ptr %32, ptr %48, align 4
  %49 = getelementptr inbounds %struct.anon_vma_chain, ptr %30, i32 0, i32 2
  %50 = load ptr, ptr %11, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %49, ptr %51, align 4
  store ptr %50, ptr %49, align 8
  %52 = getelementptr inbounds %struct.anon_vma_chain, ptr %30, i32 0, i32 2, i32 1
  store ptr %11, ptr %52, align 4
  store volatile ptr %49, ptr %11, align 4
  %53 = getelementptr inbounds %struct.anon_vma, ptr %32, i32 0, i32 5
  tail call void @anon_vma_interval_tree_insert(ptr noundef nonnull %30, ptr noundef %53) #12
  %54 = load ptr, ptr %12, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %46
  %57 = load ptr, ptr %13, align 4
  %58 = icmp eq ptr %57, null
  %59 = icmp eq ptr %32, %57
  %60 = or i1 %58, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.anon_vma, ptr %32, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = icmp ult i32 %63, 2
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store ptr %32, ptr %12, align 4
  br label %66

66:                                               ; preds = %65, %61, %56, %46
  %67 = phi ptr [ %32, %65 ], [ null, %61 ], [ null, %56 ], [ %54, %46 ]
  %68 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %3
  br i1 %70, label %71, label %14

71:                                               ; preds = %66, %7
  %72 = phi ptr [ %9, %7 ], [ %67, %66 ]
  %73 = phi ptr [ null, %7 ], [ %47, %66 ]
  %74 = icmp eq ptr %72, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.anon_vma, ptr %72, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr %76, align 4
  br label %79

79:                                               ; preds = %75, %71
  %80 = icmp eq ptr %73, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.anon_vma, ptr %73, i32 0, i32 1
  tail call void @up_write(ptr noundef %82) #12
  br label %84

83:                                               ; preds = %24
  store ptr null, ptr %12, align 4
  tail call void @unlink_anon_vmas(ptr noundef %0)
  br label %84

84:                                               ; preds = %83, %81, %79
  %85 = phi i32 [ -12, %83 ], [ 0, %79 ], [ 0, %81 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unlink_anon_vmas(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %44, label %5

5:                                                ; preds = %42, %1
  %6 = phi ptr [ %9, %42 ], [ %3, %1 ]
  %7 = phi ptr [ %26, %42 ], [ null, %1 ]
  %8 = getelementptr i8, ptr %6, i32 -8
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr i8, ptr %6, i32 -4
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %7
  br i1 %13, label %25, label %14

14:                                               ; preds = %5
  %15 = icmp ne ptr %7, null
  %16 = load i1, ptr @lock_anon_vma_root.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !17

19:                                               ; preds = %14
  store i1 true, ptr @lock_anon_vma_root.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 243, i32 noundef 9, ptr noundef null) #12
  br label %20

20:                                               ; preds = %19, %14
  br i1 %15, label %21, label %23

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.anon_vma, ptr %7, i32 0, i32 1
  tail call void @up_write(ptr noundef %22) #12
  br label %23

23:                                               ; preds = %21, %20
  %24 = getelementptr inbounds %struct.anon_vma, ptr %12, i32 0, i32 1
  tail call void @down_write(ptr noundef %24) #12
  br label %25

25:                                               ; preds = %23, %5
  %26 = phi ptr [ %12, %23 ], [ %7, %5 ]
  %27 = getelementptr inbounds %struct.anon_vma, ptr %11, i32 0, i32 5
  tail call void @anon_vma_interval_tree_remove(ptr noundef %8, ptr noundef %27) #12
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.anon_vma, ptr %11, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.anon_vma, ptr %32, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, -1
  store i32 %35, ptr %33, align 4
  br label %42

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %6, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  store volatile ptr %39, ptr %38, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %37, align 4
  %41 = load ptr, ptr @anon_vma_chain_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %41, ptr noundef %8) #12
  br label %42

42:                                               ; preds = %36, %30
  %43 = icmp eq ptr %9, %2
  br i1 %43, label %44, label %5

44:                                               ; preds = %42, %1
  %45 = phi ptr [ null, %1 ], [ %26, %42 ]
  %46 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 11
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.anon_vma, ptr %47, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, -1
  store i32 %52, ptr %50, align 4
  store ptr null, ptr %46, align 4
  br label %53

53:                                               ; preds = %49, %44
  %54 = icmp eq ptr %45, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.anon_vma, ptr %45, i32 0, i32 1
  tail call void @up_write(ptr noundef %56) #12
  br label %57

57:                                               ; preds = %55, %53
  %58 = load ptr, ptr %2, align 4
  %59 = icmp eq ptr %58, %2
  br i1 %59, label %78, label %60

60:                                               ; preds = %71, %57
  %61 = phi ptr [ %63, %71 ], [ %58, %57 ]
  %62 = getelementptr i8, ptr %61, i32 -8
  %63 = load ptr, ptr %61, align 4
  %64 = getelementptr i8, ptr %61, i32 -4
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.anon_vma, ptr %65, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %66) #12, !srcloc !14
  %67 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %66, ptr %66, i32 1, ptr elementtype(i32) %66) #12, !srcloc !15
  %68 = extractvalue { i32, i32 } %67, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  tail call void @__put_anon_vma(ptr noundef %65) #12
  br label %71

71:                                               ; preds = %70, %60
  %72 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = load ptr, ptr %61, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  store ptr %73, ptr %75, align 4
  store volatile ptr %74, ptr %73, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %61, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %72, align 4
  %76 = load ptr, ptr @anon_vma_chain_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %76, ptr noundef %62) #12
  %77 = icmp eq ptr %63, %2
  br i1 %77, label %78, label %60

78:                                               ; preds = %71, %57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @anon_vma_fork(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %50, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 11
  store ptr null, ptr %7, align 4
  %8 = tail call i32 @anon_vma_clone(ptr noundef %0, ptr noundef %1)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %50

10:                                               ; preds = %6
  %11 = load ptr, ptr %7, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %50

13:                                               ; preds = %10
  %14 = load ptr, ptr @anon_vma_cachep, align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %14, i32 noundef 3264) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.anon_vma, ptr %15, i32 0, i32 2
  store volatile i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.anon_vma, ptr %15, i32 0, i32 3
  store i32 1, ptr %19, align 8
  %20 = getelementptr inbounds %struct.anon_vma, ptr %15, i32 0, i32 4
  store ptr %15, ptr %20, align 4
  store ptr %15, ptr %15, align 8
  %21 = load ptr, ptr @anon_vma_chain_cachep, align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %21, i32 noundef 3264) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %3, align 4
  %26 = load ptr, ptr %25, align 4
  store ptr %26, ptr %15, align 8
  store ptr %25, ptr %20, align 4
  %27 = getelementptr inbounds %struct.anon_vma, ptr %26, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #12, !srcloc !14
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #12, !srcloc !18
  store ptr %15, ptr %7, align 4
  %29 = load ptr, ptr %15, align 8
  %30 = getelementptr inbounds %struct.anon_vma, ptr %29, i32 0, i32 1
  tail call void @down_write(ptr noundef %30) #12
  store ptr %0, ptr %22, align 8
  %31 = getelementptr inbounds %struct.anon_vma_chain, ptr %22, i32 0, i32 1
  store ptr %15, ptr %31, align 4
  %32 = getelementptr inbounds %struct.anon_vma_chain, ptr %22, i32 0, i32 2
  %33 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 10
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %32, ptr %35, align 4
  store ptr %34, ptr %32, align 8
  %36 = getelementptr inbounds %struct.anon_vma_chain, ptr %22, i32 0, i32 2, i32 1
  store ptr %33, ptr %36, align 4
  store volatile ptr %32, ptr %33, align 4
  %37 = getelementptr inbounds %struct.anon_vma, ptr %15, i32 0, i32 5
  tail call void @anon_vma_interval_tree_insert(ptr noundef nonnull %22, ptr noundef %37) #12
  %38 = load ptr, ptr %20, align 4
  %39 = getelementptr inbounds %struct.anon_vma, ptr %38, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 4
  %42 = load ptr, ptr %15, align 8
  %43 = getelementptr inbounds %struct.anon_vma, ptr %42, i32 0, i32 1
  tail call void @up_write(ptr noundef %43) #12
  br label %50

44:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #12, !srcloc !14
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #12, !srcloc !15
  %46 = extractvalue { i32, i32 } %45, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  tail call void @__put_anon_vma(ptr noundef nonnull %15) #12
  br label %49

49:                                               ; preds = %48, %44, %13
  tail call void @unlink_anon_vmas(ptr noundef %0)
  br label %50

50:                                               ; preds = %49, %24, %10, %6, %2
  %51 = phi i32 [ 0, %24 ], [ -12, %49 ], [ 0, %2 ], [ %8, %6 ], [ 0, %10 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @anon_vma_interval_tree_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @anon_vma_init() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 0, i32 noundef 786432, ptr noundef nonnull @anon_vma_ctor) #12
  store ptr %1, ptr @anon_vma_cachep, align 4
  %2 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 32, i32 noundef 4, i32 noundef 262144, ptr noundef null) #12
  store ptr %2, ptr @anon_vma_chain_cachep, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @anon_vma_ctor(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.anon_vma, ptr %0, i32 0, i32 1
  tail call void @__init_rwsem(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef nonnull @anon_vma_ctor.__key) #12
  %3 = getelementptr inbounds %struct.anon_vma, ptr %0, i32 0, i32 2
  store volatile i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.anon_vma, ptr %0, i32 0, i32 5
  store ptr null, ptr %4, align 4
  %5 = getelementptr inbounds %struct.anon_vma, ptr %0, i32 0, i32 5, i32 1
  store ptr null, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @page_get_anon_vma(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !19
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3 = load volatile ptr, ptr %2, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = and i32 %4, 3
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = tail call zeroext i1 @page_mapped(ptr noundef %0) #12
  br i1 %8, label %9, label %23

9:                                                ; preds = %7
  %10 = add i32 %4, -1
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr inbounds %struct.anon_vma, ptr %11, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #12, !srcloc !14
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 0, i32 1, ptr elementtype(i32) %12) #12, !srcloc !21
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  %17 = tail call zeroext i1 @page_mapped(ptr noundef %0) #12
  br i1 %17, label %23, label %18

18:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #12, !srcloc !14
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #12, !srcloc !15
  %20 = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  tail call void @__put_anon_vma(ptr noundef %11) #12
  br label %25

23:                                               ; preds = %16, %9, %7, %1
  %24 = phi ptr [ null, %1 ], [ %11, %16 ], [ null, %7 ], [ null, %9 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  br label %25

25:                                               ; preds = %23, %22, %18
  %26 = phi ptr [ %24, %23 ], [ null, %18 ], [ null, %22 ]
  ret ptr %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_mapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @page_lock_anon_vma_read(ptr noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !19
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3 = load volatile ptr, ptr %2, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = and i32 %4, 3
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %40

7:                                                ; preds = %1
  %8 = tail call zeroext i1 @page_mapped(ptr noundef %0) #12
  br i1 %8, label %9, label %40

9:                                                ; preds = %7
  %10 = add i32 %4, -1
  %11 = inttoptr i32 %10 to ptr
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.anon_vma, ptr %12, i32 0, i32 1
  %14 = tail call i32 @down_read_trylock(ptr noundef %13) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = tail call zeroext i1 @page_mapped(ptr noundef %0) #12
  br i1 %17, label %40, label %18

18:                                               ; preds = %16
  tail call void @up_read(ptr noundef %13) #12
  br label %40

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.anon_vma, ptr %11, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #12, !srcloc !14
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 0, i32 1, ptr elementtype(i32) %20) #12, !srcloc !21
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  %25 = tail call zeroext i1 @page_mapped(ptr noundef %0) #12
  tail call void asm sideeffect "", "~{memory}"() #12
  br i1 %25, label %31, label %26

26:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #12, !srcloc !14
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #12, !srcloc !15
  %28 = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  tail call void @__put_anon_vma(ptr noundef %11) #12
  br label %42

31:                                               ; preds = %24
  %32 = load ptr, ptr %11, align 4
  %33 = getelementptr inbounds %struct.anon_vma, ptr %32, i32 0, i32 1
  tail call void @down_read(ptr noundef %33) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #12, !srcloc !14
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #12, !srcloc !15
  %35 = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load ptr, ptr %11, align 4
  %39 = getelementptr inbounds %struct.anon_vma, ptr %38, i32 0, i32 1
  tail call void @up_read(ptr noundef %39) #12
  tail call void @__put_anon_vma(ptr noundef %11)
  br label %42

40:                                               ; preds = %19, %18, %16, %7, %1
  %41 = phi ptr [ null, %1 ], [ %11, %16 ], [ null, %18 ], [ null, %7 ], [ null, %19 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  br label %42

42:                                               ; preds = %40, %37, %31, %30, %26
  %43 = phi ptr [ %41, %40 ], [ null, %37 ], [ %11, %31 ], [ null, %26 ], [ null, %30 ]
  ret ptr %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__put_anon_vma(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.anon_vma, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  tail call void @down_write(ptr noundef %3) #12
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.anon_vma, ptr %7, i32 0, i32 1
  tail call void @up_write(ptr noundef %8) #12
  br label %9

9:                                                ; preds = %6, %1
  %10 = load ptr, ptr @anon_vma_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %10, ptr noundef %0) #12
  %11 = icmp eq ptr %2, %0
  br i1 %11, label %27, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.anon_vma, ptr %2, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #12, !srcloc !14
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #12, !srcloc !15
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.anon_vma, ptr %18, i32 0, i32 1
  %20 = load volatile i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  tail call void @down_write(ptr noundef %19) #12
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr inbounds %struct.anon_vma, ptr %23, i32 0, i32 1
  tail call void @up_write(ptr noundef %24) #12
  br label %25

25:                                               ; preds = %22, %17
  %26 = load ptr, ptr @anon_vma_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %26, ptr noundef %2) #12
  br label %27

27:                                               ; preds = %25, %12, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_unlock_anon_vma_read(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.anon_vma, ptr %2, i32 0, i32 1
  tail call void @up_read(ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @page_address_in_vma(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !8

7:                                                ; preds = %2
  %8 = add i32 %4, -1
  br label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %0 to i32
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.anon.30, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %11
  %20 = tail call ptr @page_anon_vma(ptr noundef %0) #12
  %21 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = icmp ne ptr %22, null
  %24 = icmp ne ptr %20, null
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %85

26:                                               ; preds = %19
  %27 = load ptr, ptr %22, align 4
  %28 = load ptr, ptr %20, align 4
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %50, label %85

30:                                               ; preds = %11
  %31 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %85, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.file, ptr %32, i32 0, i32 17
  %36 = load ptr, ptr %35, align 8
  %37 = load volatile i32, ptr %3, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40, !prof !8

40:                                               ; preds = %34
  %41 = add i32 %37, -1
  br label %44

42:                                               ; preds = %34
  %43 = ptrtoint ptr %0 to i32
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = inttoptr i32 %45 to ptr
  %47 = getelementptr inbounds %struct.page, ptr %46, i32 0, i32 1, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %36, %48
  br i1 %49, label %50, label %85

50:                                               ; preds = %44, %26
  %51 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %54 = load i32, ptr %53, align 4
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %67, label %56

56:                                               ; preds = %50
  %57 = load i32, ptr %1, align 4
  %58 = sub i32 %52, %54
  %59 = shl i32 %58, 12
  %60 = add i32 %57, %59
  %61 = icmp ult i32 %60, %57
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = icmp ult i32 %60, %64
  br i1 %65, label %85, label %66

66:                                               ; preds = %62, %56
  br label %85

67:                                               ; preds = %50
  %68 = load volatile i32, ptr %0, align 4
  %69 = and i32 %68, 65536
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %67
  %72 = load volatile i32, ptr %0, align 4
  %73 = and i32 %72, 65536
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  br label %78

78:                                               ; preds = %75, %71
  %79 = phi i32 [ %77, %75 ], [ 1, %71 ]
  %80 = add i32 %52, -1
  %81 = add i32 %80, %79
  %82 = icmp ult i32 %81, %54
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = load i32, ptr %1, align 4
  br label %85

85:                                               ; preds = %83, %78, %67, %66, %62, %44, %30, %26, %19
  %86 = phi i32 [ -14, %30 ], [ -14, %44 ], [ -14, %66 ], [ %60, %62 ], [ %84, %83 ], [ -14, %78 ], [ -14, %67 ], [ -14, %19 ], [ -14, %26 ]
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_anon_vma(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mm_find_pmd(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = lshr i32 %1, 21
  %6 = getelementptr [2 x i32], ptr %4, i32 %5
  %7 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, ptr null, ptr %6
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @page_referenced(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.page_referenced_arg, align 4
  %6 = alloca %struct.rmap_walk_control, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %7 = load volatile i32, ptr %0, align 4
  %8 = and i32 %7, 65536
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15, !prof !8

15:                                               ; preds = %10, %4
  %16 = tail call i32 @__page_mapcount(ptr noundef %0) #12
  br label %21

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 2
  %19 = load volatile i32, ptr %18, align 4
  %20 = add i32 %19, 1
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi i32 [ %16, %15 ], [ %20, %17 ]
  store i32 %22, ptr %5, align 4
  %23 = getelementptr inbounds %struct.page_referenced_arg, ptr %5, i32 0, i32 1
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.page_referenced_arg, ptr %5, i32 0, i32 2
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.page_referenced_arg, ptr %5, i32 0, i32 3
  store ptr %2, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #12
  store ptr %5, ptr %6, align 4
  %26 = getelementptr inbounds %struct.rmap_walk_control, ptr %6, i32 0, i32 1
  store ptr @page_referenced_one, ptr %26, align 4
  %27 = getelementptr inbounds %struct.rmap_walk_control, ptr %6, i32 0, i32 2
  store ptr null, ptr %27, align 4
  %28 = getelementptr inbounds %struct.rmap_walk_control, ptr %6, i32 0, i32 3
  store ptr @page_lock_anon_vma_read, ptr %28, align 4
  %29 = getelementptr inbounds %struct.rmap_walk_control, ptr %6, i32 0, i32 4
  store ptr null, ptr %29, align 4
  store i32 0, ptr %3, align 4
  %30 = icmp eq i32 %22, 0
  br i1 %30, label %102, label %31

31:                                               ; preds = %21
  %32 = call ptr @page_rmapping(ptr noundef %0) #12
  %33 = icmp eq ptr %32, null
  br i1 %33, label %102, label %34

34:                                               ; preds = %31
  %35 = icmp eq i32 %1, 0
  br i1 %35, label %36, label %73

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41, !prof !8

41:                                               ; preds = %36
  %42 = add i32 %38, -1
  br label %45

43:                                               ; preds = %36
  %44 = ptrtoint ptr %0 to i32
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = inttoptr i32 %46 to ptr
  %48 = getelementptr inbounds %struct.anon.30, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %45
  %54 = load volatile i32, ptr %37, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57, !prof !8

57:                                               ; preds = %53
  %58 = add i32 %54, -1
  br label %61

59:                                               ; preds = %53
  %60 = ptrtoint ptr %0 to i32
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = inttoptr i32 %62 to ptr
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %102

67:                                               ; preds = %61
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #12, !srcloc !14
  %68 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 1, ptr elementtype(i32) %63) #12, !srcloc !25
  %69 = extractvalue { i32, i32, i32 } %68, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !26
  %70 = and i32 %69, 1
  %71 = xor i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %102, label %73

73:                                               ; preds = %67, %45, %34
  %74 = phi i32 [ 0, %34 ], [ %71, %67 ], [ 0, %45 ]
  %75 = icmp eq ptr %2, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  store ptr @invalid_page_referenced_vma, ptr %29, align 4
  br label %77

77:                                               ; preds = %76, %73
  %78 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82, !prof !8

82:                                               ; preds = %77
  %83 = add i32 %79, -1
  br label %86

84:                                               ; preds = %77
  %85 = ptrtoint ptr %0 to i32
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = inttoptr i32 %87 to ptr
  %89 = getelementptr inbounds %struct.anon.30, ptr %88, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = ptrtoint ptr %90 to i32
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %86
  call fastcc void @rmap_walk_anon(ptr noundef %0, ptr noundef nonnull %6, i1 noundef zeroext false) #12
  br label %96

95:                                               ; preds = %86
  call fastcc void @rmap_walk_file(ptr noundef %0, ptr noundef nonnull %6, i1 noundef zeroext false) #12
  br label %96

96:                                               ; preds = %95, %94
  %97 = load i32, ptr %24, align 4
  store i32 %97, ptr %3, align 4
  %98 = icmp eq i32 %74, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  call void @unlock_page(ptr noundef %0) #12
  br label %100

100:                                              ; preds = %99, %96
  %101 = load i32, ptr %23, align 4
  br label %102

102:                                              ; preds = %100, %67, %61, %31, %21
  %103 = phi i32 [ %101, %100 ], [ 0, %21 ], [ 0, %31 ], [ 1, %67 ], [ 1, %61 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @page_referenced_one(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca %struct.page_vma_mapped_walk, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #12
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 1
  store ptr %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 2
  store i32 %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 3
  %9 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 4
  %10 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %11 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %5) #12
  br i1 %11, label %12, label %58

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  br label %14

14:                                               ; preds = %51, %12
  %15 = phi i32 [ 0, %12 ], [ %52, %51 ]
  %16 = load i32, ptr %7, align 4
  %17 = load i32, ptr %13, align 4
  %18 = and i32 %17, 8192
  %19 = icmp eq i32 %18, 0
  %20 = load ptr, ptr %9, align 4
  %21 = icmp eq ptr %20, null
  br i1 %19, label %38, label %22

22:                                               ; preds = %14
  br i1 %21, label %28, label %23

23:                                               ; preds = %22
  call void @kunmap_local_indexed(ptr noundef nonnull %20) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !27
  %24 = tail call ptr @llvm.thread.pointer() #12
  %25 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 149
  %26 = load i32, ptr %25, align 8
  %27 = add i32 %26, -1
  store i32 %27, ptr %25, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  br label %28

28:                                               ; preds = %23, %22
  %29 = load ptr, ptr %10, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %32 = load i16, ptr %29, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %29, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  br label %34

34:                                               ; preds = %31, %28
  %35 = getelementptr inbounds %struct.page_referenced_arg, ptr %3, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, 8192
  store i32 %37, ptr %35, align 4
  br label %76

38:                                               ; preds = %14
  br i1 %21, label %48, label %39

39:                                               ; preds = %38
  %40 = call i32 @ptep_clear_flush_young(ptr noundef %1, i32 noundef %16, ptr noundef nonnull %20) #12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr %13, align 4
  %44 = lshr i32 %43, 15
  %45 = and i32 %44, 1
  %46 = xor i32 %45, 1
  %47 = add i32 %46, %15
  br label %51

48:                                               ; preds = %38
  %49 = load i1, ptr @page_referenced_one.__already_done, align 1
  br i1 %49, label %51, label %50, !prof !8

50:                                               ; preds = %48
  store i1 true, ptr @page_referenced_one.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 841, i32 noundef 9, ptr noundef null) #12
  br label %51

51:                                               ; preds = %50, %48, %42, %39
  %52 = phi i32 [ %15, %39 ], [ %47, %42 ], [ %15, %50 ], [ %15, %48 ]
  %53 = load i32, ptr %3, align 4
  %54 = add i32 %53, -1
  store i32 %54, ptr %3, align 4
  %55 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %5) #12
  br i1 %55, label %14, label %56

56:                                               ; preds = %51
  %57 = icmp eq i32 %52, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %56, %4
  %59 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %60 = load volatile i32, ptr %59, align 4
  br label %73

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %63 = load volatile i32, ptr %62, align 4
  %64 = load volatile i32, ptr %62, align 4
  %65 = getelementptr inbounds %struct.page_referenced_arg, ptr %3, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 4
  %68 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.page_referenced_arg, ptr %3, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = or i32 %71, %69
  store i32 %72, ptr %70, align 4
  br label %73

73:                                               ; preds = %61, %58
  %74 = load i32, ptr %3, align 4
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %73, %34
  %77 = phi i1 [ false, %34 ], [ %75, %73 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #12
  ret i1 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_rmapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @invalid_page_referenced_vma(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rmap_walk(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !8

7:                                                ; preds = %2
  %8 = add i32 %4, -1
  br label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %0 to i32
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.anon.30, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  tail call fastcc void @rmap_walk_anon(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  br label %21

20:                                               ; preds = %11
  tail call fastcc void @rmap_walk_file(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  br label %21

21:                                               ; preds = %20, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @folio_mkclean(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rmap_walk_control, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #12
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.rmap_walk_control, ptr %3, i32 0, i32 1
  store ptr @page_mkclean_one, ptr %4, align 4
  %5 = getelementptr inbounds %struct.rmap_walk_control, ptr %3, i32 0, i32 2
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.rmap_walk_control, ptr %3, i32 0, i32 3
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rmap_walk_control, ptr %3, i32 0, i32 4
  store ptr @invalid_mkclean_vma, ptr %7, align 4
  %8 = load volatile i32, ptr %0, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !17

11:                                               ; preds = %1
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1023, 0\0A.popsection", ""() #12, !srcloc !29
  unreachable

12:                                               ; preds = %1
  %13 = call zeroext i1 @folio_mapped(ptr noundef %0) #12
  br i1 %13, label %14, label %38

14:                                               ; preds = %12
  %15 = call ptr @folio_mapping(ptr noundef %0) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %38, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !8

22:                                               ; preds = %17
  %23 = add i32 %19, -1
  br label %26

24:                                               ; preds = %17
  %25 = ptrtoint ptr %0 to i32
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.anon.30, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  call fastcc void @rmap_walk_anon(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false) #12
  br label %36

35:                                               ; preds = %26
  call fastcc void @rmap_walk_file(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false) #12
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, ptr %2, align 4
  br label %38

38:                                               ; preds = %36, %14, %12
  %39 = phi i32 [ %37, %36 ], [ 0, %12 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @page_mkclean_one(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca %struct.page_vma_mapped_walk, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #12
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 1
  store ptr %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 2
  store i32 %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 3
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 4
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 5
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 6
  store i32 1, ptr %11, align 4
  %12 = load volatile i32, ptr %0, align 4
  %13 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %5) #12
  br i1 %13, label %14, label %37

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 6
  br label %16

16:                                               ; preds = %35, %14
  %17 = load i32, ptr %7, align 4
  %18 = load ptr, ptr %9, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %18, align 4
  %22 = and i32 %21, 192
  %23 = icmp eq i32 %22, 128
  br i1 %23, label %35, label %27

24:                                               ; preds = %16
  %25 = load i1, ptr @page_mkclean_one.__already_done, align 1
  br i1 %25, label %35, label %26, !prof !8

26:                                               ; preds = %24
  store i1 true, ptr @page_mkclean_one.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 985, i32 noundef 9, ptr noundef null) #12
  br label %35

27:                                               ; preds = %20
  %28 = lshr i32 %21, 12
  call void @flush_cache_page(ptr noundef %1, i32 noundef %17, i32 noundef %28) #12
  %29 = call i32 @ptep_clear_flush(ptr noundef %1, i32 noundef %17, ptr noundef nonnull %18) #12
  %30 = and i32 %29, -193
  %31 = or i32 %30, 128
  %32 = load ptr, ptr %15, align 4
  call void @set_pte_at(ptr noundef %32, i32 noundef %17, ptr noundef nonnull %18, i32 noundef %31) #12
  %33 = load i32, ptr %3, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %3, align 4
  br label %35

35:                                               ; preds = %27, %26, %24, %20
  %36 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %5) #12
  br i1 %36, label %16, label %37

37:                                               ; preds = %35, %4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #12
  ret i1 true
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @invalid_mkclean_vma(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #6 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  ret i1 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_mapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @folio_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_move_anon_rmap(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !8

9:                                                ; preds = %2
  %10 = add i32 %6, -1
  br label %13

11:                                               ; preds = %2
  %12 = ptrtoint ptr %0 to i32
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr i8, ptr %4, i32 1
  %17 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1, i32 0, i32 1
  store volatile ptr %16, ptr %17, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_add_anon_rmap(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = select i1 %3, i32 2, i32 0
  tail call void @do_page_add_anon_rmap(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_page_add_anon_rmap(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = and i32 %3, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #12, !srcloc !14
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #12, !srcloc !31
  %10 = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %56

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #12, !srcloc !14
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #12, !srcloc !31
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %56

17:                                               ; preds = %7
  tail call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 28, i32 noundef 1) #12
  br label %18

18:                                               ; preds = %17, %12
  tail call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 17, i32 noundef 1) #12
  %19 = and i32 %3, 1
  %20 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24, !prof !17

23:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1078, 0\0A.popsection", ""() #12, !srcloc !33
  unreachable

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29, !prof !8

29:                                               ; preds = %24
  %30 = add i32 %26, -1
  br label %33

31:                                               ; preds = %24
  %32 = ptrtoint ptr %0 to i32
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = inttoptr i32 %34 to ptr
  %36 = getelementptr inbounds %struct.anon.30, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = ptrtoint ptr %37 to i32
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %33
  %42 = icmp eq i32 %19, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = load ptr, ptr %21, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi ptr [ %21, %41 ], [ %44, %43 ]
  %47 = getelementptr i8, ptr %46, i32 1
  %48 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  store volatile ptr %47, ptr %48, align 4
  %49 = load i32, ptr %1, align 4
  %50 = sub i32 %2, %49
  %51 = lshr i32 %50, 12
  %52 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %51, %53
  %55 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  store i32 %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %45, %33, %12, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_add_new_anon_rmap(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %3, label %9, label %50

9:                                                ; preds = %4
  br i1 %8, label %12, label %10, !prof !8

10:                                               ; preds = %9
  %11 = add i32 %6, -1
  br label %14

12:                                               ; preds = %9
  %13 = ptrtoint ptr %0 to i32
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  %16 = inttoptr i32 %15 to ptr
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, 524288
  store i32 %18, ptr %16, align 4
  %19 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 1
  store volatile i32 0, ptr %19, align 4
  %20 = load volatile i32, ptr %5, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !8

23:                                               ; preds = %14
  %24 = add i32 %20, -1
  br label %27

25:                                               ; preds = %14
  %26 = ptrtoint ptr %0 to i32
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = inttoptr i32 %28 to ptr
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 65536
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 1
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %33, %27
  %39 = load volatile i32, ptr %29, align 4
  %40 = and i32 %39, 65536
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = getelementptr %struct.page, ptr %29, i32 1, i32 1
  %44 = getelementptr inbounds %struct.anon.20, ptr %43, i32 0, i32 2
  %45 = load i8, ptr %44, align 1
  %46 = icmp ugt i8 %45, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = getelementptr %struct.page, ptr %0, i32 2, i32 1, i32 0, i32 0, i32 1
  store volatile i32 0, ptr %48, align 4
  br label %49

49:                                               ; preds = %47, %42, %38, %33
  tail call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 28, i32 noundef 1) #12
  br label %61

50:                                               ; preds = %4
  br i1 %8, label %53, label %51, !prof !8

51:                                               ; preds = %50
  %52 = add i32 %6, -1
  br label %55

53:                                               ; preds = %50
  %54 = ptrtoint ptr %0 to i32
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = inttoptr i32 %56 to ptr
  %58 = load i32, ptr %57, align 4
  %59 = or i32 %58, 524288
  store i32 %59, ptr %57, align 4
  %60 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 2
  store volatile i32 0, ptr %60, align 4
  br label %61

61:                                               ; preds = %55, %49
  tail call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 17, i32 noundef 1) #12
  %62 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 11
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %66, !prof !17

65:                                               ; preds = %61
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1078, 0\0A.popsection", ""() #12, !srcloc !33
  unreachable

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71, !prof !8

71:                                               ; preds = %66
  %72 = add i32 %68, -1
  br label %75

73:                                               ; preds = %66
  %74 = ptrtoint ptr %0 to i32
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = inttoptr i32 %76 to ptr
  %78 = getelementptr inbounds %struct.anon.30, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = ptrtoint ptr %79 to i32
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %75
  %84 = getelementptr i8, ptr %63, i32 1
  %85 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  store volatile ptr %84, ptr %85, align 4
  %86 = load i32, ptr %1, align 4
  %87 = sub i32 %2, %86
  %88 = lshr i32 %87, 12
  %89 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %88, %90
  %92 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  store i32 %91, ptr %92, align 4
  br label %93

93:                                               ; preds = %83, %75
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_add_file_rmap(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #12, !srcloc !14
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #12, !srcloc !31
  %5 = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 18, i32 noundef 1) #12
  br label %8

8:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_page_mlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_remove_rmap(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !8

7:                                                ; preds = %2
  %8 = add i32 %4, -1
  br label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %0 to i32
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.anon.30, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #12, !srcloc !14
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 -1, ptr elementtype(i32) %20) #12, !srcloc !31
  %22 = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !32
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %19
  tail call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 18, i32 noundef -1) #12
  %25 = load volatile i32, ptr %3, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28, !prof !8

28:                                               ; preds = %24
  %29 = add i32 %25, -1
  br label %32

30:                                               ; preds = %24
  %31 = ptrtoint ptr %0 to i32
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = inttoptr i32 %33 to ptr
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 2097152
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %63, label %38, !prof !8

38:                                               ; preds = %32
  tail call void @clear_page_mlock(ptr noundef %0) #12
  br label %63

39:                                               ; preds = %11
  br i1 %1, label %40, label %43

40:                                               ; preds = %39
  %41 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #12, !srcloc !14
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 -1, ptr elementtype(i32) %41) #12, !srcloc !31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !32
  br label %63

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #12, !srcloc !14
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 -1, ptr elementtype(i32) %44) #12, !srcloc !31
  %46 = extractvalue { i32, i32 } %45, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !32
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  tail call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 17, i32 noundef -1) #12
  %49 = load volatile i32, ptr %3, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52, !prof !8

52:                                               ; preds = %48
  %53 = add i32 %49, -1
  br label %56

54:                                               ; preds = %48
  %55 = ptrtoint ptr %0 to i32
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = inttoptr i32 %57 to ptr
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 2097152
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62, !prof !8

62:                                               ; preds = %56
  tail call void @clear_page_mlock(ptr noundef %0) #12
  br label %63

63:                                               ; preds = %62, %56, %43, %40, %38, %32, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @try_to_unmap(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.rmap_walk_control, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #12
  %4 = inttoptr i32 %1 to ptr
  store ptr %4, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rmap_walk_control, ptr %3, i32 0, i32 1
  store ptr @try_to_unmap_one, ptr %5, align 4
  %6 = getelementptr inbounds %struct.rmap_walk_control, ptr %3, i32 0, i32 2
  store ptr @page_not_mapped, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rmap_walk_control, ptr %3, i32 0, i32 3
  store ptr @page_lock_anon_vma_read, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rmap_walk_control, ptr %3, i32 0, i32 4
  store ptr null, ptr %8, align 4
  %9 = and i32 %1, 128
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %10, label %30, label %15

15:                                               ; preds = %2
  br i1 %14, label %18, label %16, !prof !8

16:                                               ; preds = %15
  %17 = add i32 %12, -1
  br label %20

18:                                               ; preds = %15
  %19 = ptrtoint ptr %0 to i32
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.anon.30, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  call fastcc void @rmap_walk_anon(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true) #12
  br label %45

29:                                               ; preds = %20
  call fastcc void @rmap_walk_file(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true) #12
  br label %45

30:                                               ; preds = %2
  br i1 %14, label %33, label %31, !prof !8

31:                                               ; preds = %30
  %32 = add i32 %12, -1
  br label %35

33:                                               ; preds = %30
  %34 = ptrtoint ptr %0 to i32
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = inttoptr i32 %36 to ptr
  %38 = getelementptr inbounds %struct.anon.30, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = ptrtoint ptr %39 to i32
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  call fastcc void @rmap_walk_anon(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false) #12
  br label %45

44:                                               ; preds = %35
  call fastcc void @rmap_walk_file(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false) #12
  br label %45

45:                                               ; preds = %44, %43, %29, %28
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @try_to_unmap_one(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.page_vma_mapped_walk, align 4
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #12
  store ptr %0, ptr %5, align 4
  %8 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 1
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 2
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 3
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 4
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 5
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %3 to i32
  %15 = lshr i32 %14, 4
  %16 = and i32 %15, 1
  store i32 %16, ptr %13, align 4
  %17 = load volatile i32, ptr %0, align 4
  %18 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %5) #12
  br i1 %18, label %19, label %258

19:                                               ; preds = %4
  %20 = and i32 %14, 8
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %0 to i32
  %24 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 40
  %25 = getelementptr %struct.anon, ptr %7, i32 0, i32 40, i32 0, i32 1
  %26 = getelementptr %struct.anon, ptr %7, i32 0, i32 40, i32 0, i32 3
  %27 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 17
  %28 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %29 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 16
  %30 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 16, i32 1
  %31 = getelementptr %struct.anon, ptr %7, i32 0, i32 40, i32 0, i32 2
  br label %32

32:                                               ; preds = %256, %19
  br i1 %21, label %33, label %51

33:                                               ; preds = %32
  %34 = load i32, ptr %22, align 4
  %35 = and i32 %34, 8192
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %33
  call void @mlock_vma_page(ptr noundef %0) #12
  %38 = load ptr, ptr %11, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  call void @kunmap_local_indexed(ptr noundef nonnull %38) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !27
  %41 = tail call ptr @llvm.thread.pointer() #12
  %42 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 149
  %43 = load i32, ptr %42, align 8
  %44 = add i32 %43, -1
  store i32 %44, ptr %42, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  br label %45

45:                                               ; preds = %40, %37
  %46 = load ptr, ptr %12, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %258, label %48

48:                                               ; preds = %45
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %49 = load i16, ptr %46, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %46, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  br label %258

51:                                               ; preds = %33, %32
  %52 = load ptr, ptr @mem_map, align 4
  %53 = ptrtoint ptr %52 to i32
  %54 = sub i32 %23, %53
  %55 = ashr exact i32 %54, 5
  %56 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %57 = add i32 %56, %55
  %58 = sub i32 0, %57
  %59 = getelementptr %struct.page, ptr %0, i32 %58
  %60 = load ptr, ptr %11, align 4
  %61 = load i32, ptr %60, align 4
  %62 = lshr i32 %61, 12
  %63 = getelementptr %struct.page, ptr %59, i32 %62
  %64 = load i32, ptr %9, align 4
  call void @flush_cache_page(ptr noundef %1, i32 noundef %64, i32 noundef %62) #12
  %65 = load ptr, ptr %11, align 4
  %66 = call i32 @ptep_clear_flush(ptr noundef %1, i32 noundef %64, ptr noundef %65) #12
  %67 = and i32 %66, 64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %51
  %70 = call zeroext i1 @set_page_dirty(ptr noundef %0) #12
  br label %71

71:                                               ; preds = %69, %51
  %72 = load volatile i32, ptr %24, align 4
  %73 = call i32 @llvm.smax.i32(i32 %72, i32 0) #12
  %74 = load volatile i32, ptr %25, align 4
  %75 = call i32 @llvm.smax.i32(i32 %74, i32 0) #12
  %76 = add nuw i32 %75, %73
  %77 = load volatile i32, ptr %26, align 4
  %78 = call i32 @llvm.smax.i32(i32 %77, i32 0) #12
  %79 = add i32 %76, %78
  %80 = load i32, ptr %27, align 8
  %81 = icmp ult i32 %80, %79
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  store i32 %79, ptr %27, align 8
  br label %83

83:                                               ; preds = %82, %71
  %84 = load volatile i32, ptr %28, align 4
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87, !prof !8

87:                                               ; preds = %83
  %88 = add i32 %84, -1
  br label %89

89:                                               ; preds = %87, %83
  %90 = phi i32 [ %88, %87 ], [ %23, %83 ]
  %91 = inttoptr i32 %90 to ptr
  %92 = getelementptr inbounds %struct.anon.30, ptr %91, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = ptrtoint ptr %93 to i32
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %226, label %97

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.page, ptr %63, i32 0, i32 1
  %99 = getelementptr inbounds %struct.anon.17, ptr %98, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = load volatile i32, ptr %28, align 4
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104, !prof !8

104:                                              ; preds = %97
  %105 = add i32 %101, -1
  br label %106

106:                                              ; preds = %104, %97
  %107 = phi i32 [ %105, %104 ], [ %23, %97 ]
  %108 = inttoptr i32 %107 to ptr
  %109 = load volatile i32, ptr %108, align 4
  %110 = load volatile i32, ptr %28, align 4
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113, !prof !8

113:                                              ; preds = %106
  %114 = add i32 %110, -1
  br label %115

115:                                              ; preds = %113, %106
  %116 = phi i32 [ %114, %113 ], [ %23, %106 ]
  %117 = inttoptr i32 %116 to ptr
  %118 = load volatile i32, ptr %117, align 4
  %119 = and i32 %118, 524288
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = and i32 %109, 524288
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %135, label %131, !prof !8

124:                                              ; preds = %115
  %125 = load volatile i32, ptr %117, align 4
  %126 = and i32 %125, 1024
  %127 = icmp ne i32 %126, 0
  %128 = and i32 %109, 524288
  %129 = icmp eq i32 %128, 0
  %130 = xor i1 %129, %127
  br i1 %130, label %135, label %131, !prof !8

131:                                              ; preds = %124, %121
  %132 = load i1, ptr @try_to_unmap_one.__already_done, align 1
  br i1 %132, label %134, label %133, !prof !8

133:                                              ; preds = %131
  store i1 true, ptr @try_to_unmap_one.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1591, i32 noundef 9, ptr noundef null) #12
  br label %134

134:                                              ; preds = %133, %131
  call fastcc void @page_vma_mapped_walk_done(ptr noundef nonnull %5)
  br label %258

135:                                              ; preds = %124, %121
  %136 = load volatile i32, ptr %28, align 4
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %141, label %139, !prof !8

139:                                              ; preds = %135
  %140 = add i32 %136, -1
  br label %141

141:                                              ; preds = %139, %135
  %142 = phi i32 [ %140, %139 ], [ %23, %135 ]
  %143 = inttoptr i32 %142 to ptr
  %144 = load volatile i32, ptr %143, align 4
  %145 = and i32 %144, 524288
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %185

147:                                              ; preds = %141
  %148 = load volatile i32, ptr %28, align 4
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %153, label %151, !prof !8

151:                                              ; preds = %147
  %152 = add i32 %148, -1
  br label %153

153:                                              ; preds = %151, %147
  %154 = phi i32 [ %152, %151 ], [ %23, %147 ]
  %155 = inttoptr i32 %154 to ptr
  %156 = load volatile i32, ptr %155, align 4
  %157 = and i32 %156, 8
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %153
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #12, !srcloc !14
  %160 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #12, !srcloc !15
  %161 = extractvalue { i32, i32 } %160, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  call void @mm_trace_rss_stat(ptr noundef %7, i32 noundef 1, i32 noundef %161) #12
  br label %242

162:                                              ; preds = %153
  %163 = load ptr, ptr %11, align 4
  call void @set_pte_at(ptr noundef %7, i32 noundef %64, ptr noundef %163, i32 noundef %66) #12
  %164 = load volatile i32, ptr %28, align 4
  %165 = and i32 %164, 1
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167, !prof !8

167:                                              ; preds = %162
  %168 = add i32 %164, -1
  br label %169

169:                                              ; preds = %167, %162
  %170 = phi i32 [ %168, %167 ], [ %23, %162 ]
  %171 = inttoptr i32 %170 to ptr
  call void @_set_bit(i32 noundef 19, ptr noundef %171) #12
  %172 = load ptr, ptr %11, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %179, label %174

174:                                              ; preds = %169
  call void @kunmap_local_indexed(ptr noundef nonnull %172) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !27
  %175 = tail call ptr @llvm.thread.pointer() #12
  %176 = getelementptr inbounds %struct.task_struct, ptr %175, i32 0, i32 149
  %177 = load i32, ptr %176, align 8
  %178 = add i32 %177, -1
  store i32 %178, ptr %176, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  br label %179

179:                                              ; preds = %174, %169
  %180 = load ptr, ptr %12, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %258, label %182

182:                                              ; preds = %179
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %183 = load i16, ptr %180, align 4
  %184 = add i16 %183, 1
  store i16 %184, ptr %180, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  br label %258

185:                                              ; preds = %141
  %186 = insertvalue [1 x i32] poison, i32 %100, 0
  %187 = call i32 @swap_duplicate([1 x i32] %186) #12
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %204

189:                                              ; preds = %185
  %190 = load ptr, ptr %11, align 4
  call void @set_pte_at(ptr noundef %7, i32 noundef %64, ptr noundef %190, i32 noundef %66) #12
  %191 = load ptr, ptr %11, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %198, label %193

193:                                              ; preds = %189
  call void @kunmap_local_indexed(ptr noundef nonnull %191) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !27
  %194 = tail call ptr @llvm.thread.pointer() #12
  %195 = getelementptr inbounds %struct.task_struct, ptr %194, i32 0, i32 149
  %196 = load i32, ptr %195, align 8
  %197 = add i32 %196, -1
  store i32 %197, ptr %195, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  br label %198

198:                                              ; preds = %193, %189
  %199 = load ptr, ptr %12, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %258, label %201

201:                                              ; preds = %198
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %202 = load i16, ptr %199, align 4
  %203 = add i16 %202, 1
  store i16 %203, ptr %199, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  br label %258

204:                                              ; preds = %185
  %205 = load volatile ptr, ptr %29, align 4
  %206 = icmp eq ptr %205, %29
  br i1 %206, label %207, label %216

207:                                              ; preds = %204
  call void @_raw_spin_lock(ptr noundef nonnull @mmlist_lock) #12
  %208 = load volatile ptr, ptr %29, align 4
  %209 = icmp eq ptr %208, %29
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 16), align 8
  %212 = getelementptr inbounds %struct.list_head, ptr %211, i32 0, i32 1
  store ptr %29, ptr %212, align 4
  store ptr %211, ptr %29, align 4
  store ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 16), ptr %30, align 4
  store volatile ptr %29, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 16), align 8
  br label %213

213:                                              ; preds = %210, %207
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %214 = load i16, ptr @mmlist_lock, align 4
  %215 = add i16 %214, 1
  store i16 %215, ptr @mmlist_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  br label %216

216:                                              ; preds = %213, %204
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #12, !srcloc !14
  %217 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #12, !srcloc !15
  %218 = extractvalue { i32, i32 } %217, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  call void @mm_trace_rss_stat(ptr noundef %7, i32 noundef 1, i32 noundef %218) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !30
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #12, !srcloc !14
  %219 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #12, !srcloc !31
  %220 = extractvalue { i32, i32 } %219, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !32
  call void @mm_trace_rss_stat(ptr noundef %7, i32 noundef 2, i32 noundef %220) #12
  %221 = lshr i32 %100, 24
  %222 = and i32 %221, 252
  %223 = shl i32 %100, 7
  %224 = or i32 %222, %223
  %225 = load ptr, ptr %11, align 4
  call void @set_pte_at(ptr noundef %7, i32 noundef %64, ptr noundef %225, i32 noundef %224) #12
  br label %242

226:                                              ; preds = %89
  %227 = load volatile i32, ptr %28, align 4
  %228 = and i32 %227, 1
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %232, label %230, !prof !8

230:                                              ; preds = %226
  %231 = add i32 %227, -1
  br label %232

232:                                              ; preds = %230, %226
  %233 = phi i32 [ %231, %230 ], [ %23, %226 ]
  %234 = inttoptr i32 %233 to ptr
  %235 = load volatile i32, ptr %234, align 4
  %236 = and i32 %235, 524288
  %237 = icmp eq i32 %236, 0
  %238 = select i1 %237, i32 0, i32 3
  %239 = getelementptr [4 x %struct.atomic_t], ptr %24, i32 0, i32 %238
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %239) #12, !srcloc !14
  %240 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %239, ptr %239, i32 1, ptr elementtype(i32) %239) #12, !srcloc !15
  %241 = extractvalue { i32, i32 } %240, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  call void @mm_trace_rss_stat(ptr noundef %7, i32 noundef %238, i32 noundef %241) #12
  br label %242

242:                                              ; preds = %232, %216, %159
  call void @page_remove_rmap(ptr noundef %63, i1 noundef zeroext false)
  %243 = load volatile i32, ptr %28, align 4
  %244 = and i32 %243, 1
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %248, label %246, !prof !8

246:                                              ; preds = %242
  %247 = add i32 %243, -1
  br label %248

248:                                              ; preds = %246, %242
  %249 = phi i32 [ %247, %246 ], [ %23, %242 ]
  %250 = inttoptr i32 %249 to ptr
  %251 = getelementptr inbounds %struct.page, ptr %250, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %251) #12, !srcloc !14
  %252 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %251, ptr %251, i32 1, ptr elementtype(i32) %251) #12, !srcloc !15
  %253 = extractvalue { i32, i32 } %252, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %248
  call void @__put_page(ptr noundef %250) #12
  br label %256

256:                                              ; preds = %255, %248
  %257 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %5) #12
  br i1 %257, label %32, label %258

258:                                              ; preds = %256, %201, %198, %182, %179, %134, %48, %45, %4
  %259 = phi i1 [ false, %201 ], [ false, %198 ], [ false, %182 ], [ false, %179 ], [ false, %134 ], [ false, %45 ], [ false, %48 ], [ true, %4 ], [ true, %256 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #12
  ret i1 %259
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @page_not_mapped(ptr noundef %0) #0 {
  %2 = tail call zeroext i1 @page_mapped(ptr noundef %0) #12
  %3 = xor i1 %2, true
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rmap_walk_locked(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !8

7:                                                ; preds = %2
  %8 = add i32 %4, -1
  br label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %0 to i32
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.anon.30, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  tail call fastcc void @rmap_walk_anon(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  br label %21

20:                                               ; preds = %11
  tail call fastcc void @rmap_walk_file(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  br label %21

21:                                               ; preds = %20, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @try_to_migrate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.rmap_walk_control, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #12
  %4 = inttoptr i32 %1 to ptr
  store ptr %4, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rmap_walk_control, ptr %3, i32 0, i32 1
  store ptr @try_to_migrate_one, ptr %5, align 4
  %6 = getelementptr inbounds %struct.rmap_walk_control, ptr %3, i32 0, i32 2
  store ptr @page_not_mapped, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rmap_walk_control, ptr %3, i32 0, i32 3
  store ptr @page_lock_anon_vma_read, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rmap_walk_control, ptr %3, i32 0, i32 4
  store ptr null, ptr %8, align 4
  %9 = and i32 %1, -149
  %10 = icmp ne i32 %9, 0
  %11 = load i1, ptr @try_to_migrate.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !17

14:                                               ; preds = %2
  store i1 true, ptr @try_to_migrate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1976, i32 noundef 9, ptr noundef null) #12
  br label %15

15:                                               ; preds = %14, %2
  br i1 %10, label %70, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21, !prof !8

21:                                               ; preds = %16
  %22 = add i32 %18, -1
  br label %25

23:                                               ; preds = %16
  %24 = ptrtoint ptr %0 to i32
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = inttoptr i32 %26 to ptr
  %28 = getelementptr inbounds %struct.anon.30, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  store ptr @invalid_migration_vma, ptr %8, align 4
  br label %34

34:                                               ; preds = %33, %25
  %35 = and i32 %1, 128
  %36 = icmp eq i32 %35, 0
  %37 = load volatile i32, ptr %17, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %36, label %55, label %40

40:                                               ; preds = %34
  br i1 %39, label %43, label %41, !prof !8

41:                                               ; preds = %40
  %42 = add i32 %37, -1
  br label %45

43:                                               ; preds = %40
  %44 = ptrtoint ptr %0 to i32
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = inttoptr i32 %46 to ptr
  %48 = getelementptr inbounds %struct.anon.30, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  call fastcc void @rmap_walk_anon(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true) #12
  br label %70

54:                                               ; preds = %45
  call fastcc void @rmap_walk_file(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true) #12
  br label %70

55:                                               ; preds = %34
  br i1 %39, label %58, label %56, !prof !8

56:                                               ; preds = %55
  %57 = add i32 %37, -1
  br label %60

58:                                               ; preds = %55
  %59 = ptrtoint ptr %0 to i32
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = inttoptr i32 %61 to ptr
  %63 = getelementptr inbounds %struct.anon.30, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = ptrtoint ptr %64 to i32
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  call fastcc void @rmap_walk_anon(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false) #12
  br label %70

69:                                               ; preds = %60
  call fastcc void @rmap_walk_file(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false) #12
  br label %70

70:                                               ; preds = %69, %68, %54, %53, %15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @try_to_migrate_one(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.page_vma_mapped_walk, align 4
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #12
  store ptr %0, ptr %5, align 4
  %8 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 1
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 2
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 3
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 4
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 5
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %3 to i32
  %15 = lshr i32 %14, 4
  %16 = and i32 %15, 1
  store i32 %16, ptr %13, align 4
  %17 = load volatile i32, ptr %0, align 4
  %18 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %5) #12
  br i1 %18, label %19, label %87

19:                                               ; preds = %4
  %20 = ptrtoint ptr %0 to i32
  %21 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 40
  %22 = getelementptr %struct.anon, ptr %7, i32 0, i32 40, i32 0, i32 1
  %23 = getelementptr %struct.anon, ptr %7, i32 0, i32 40, i32 0, i32 3
  %24 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 17
  %25 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  br label %26

26:                                               ; preds = %85, %19
  %27 = load ptr, ptr @mem_map, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = sub i32 %20, %28
  %30 = ashr exact i32 %29, 5
  %31 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %32 = add i32 %31, %30
  %33 = sub i32 0, %32
  %34 = getelementptr %struct.page, ptr %0, i32 %33
  %35 = load ptr, ptr %11, align 4
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 12
  %38 = getelementptr %struct.page, ptr %34, i32 %37
  %39 = load i32, ptr %9, align 4
  call void @flush_cache_page(ptr noundef %1, i32 noundef %39, i32 noundef %37) #12
  %40 = load ptr, ptr %11, align 4
  %41 = call i32 @ptep_clear_flush(ptr noundef %1, i32 noundef %39, ptr noundef %40) #12
  %42 = and i32 %41, 64
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %26
  %45 = call zeroext i1 @set_page_dirty(ptr noundef %0) #12
  br label %46

46:                                               ; preds = %44, %26
  %47 = load volatile i32, ptr %21, align 4
  %48 = call i32 @llvm.smax.i32(i32 %47, i32 0) #12
  %49 = load volatile i32, ptr %22, align 4
  %50 = call i32 @llvm.smax.i32(i32 %49, i32 0) #12
  %51 = add nuw i32 %50, %48
  %52 = load volatile i32, ptr %23, align 4
  %53 = call i32 @llvm.smax.i32(i32 %52, i32 0) #12
  %54 = add i32 %51, %53
  %55 = load i32, ptr %24, align 8
  %56 = icmp ult i32 %55, %54
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  store i32 %54, ptr %24, align 8
  br label %58

58:                                               ; preds = %57, %46
  %59 = and i32 %41, 128
  %60 = icmp eq i32 %59, 0
  %61 = load ptr, ptr @mem_map, align 4
  %62 = ptrtoint ptr %38 to i32
  %63 = ptrtoint ptr %61 to i32
  %64 = sub i32 %62, %63
  %65 = lshr exact i32 %64, 5
  %66 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %67 = add i32 %65, %66
  %68 = select i1 %60, i32 124, i32 120
  %69 = shl i32 %67, 7
  %70 = or i32 %68, %69
  %71 = load ptr, ptr %11, align 4
  call void @set_pte_at(ptr noundef %7, i32 noundef %39, ptr noundef %71, i32 noundef %70) #12
  call void @page_remove_rmap(ptr noundef %38, i1 noundef zeroext false)
  %72 = load volatile i32, ptr %25, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75, !prof !8

75:                                               ; preds = %58
  %76 = add i32 %72, -1
  br label %77

77:                                               ; preds = %75, %58
  %78 = phi i32 [ %76, %75 ], [ %20, %58 ]
  %79 = inttoptr i32 %78 to ptr
  %80 = getelementptr inbounds %struct.page, ptr %79, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %80) #12, !srcloc !14
  %81 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %80, ptr %80, i32 1, ptr elementtype(i32) %80) #12, !srcloc !15
  %82 = extractvalue { i32, i32 } %81, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  call void @__put_page(ptr noundef %79) #12
  br label %85

85:                                               ; preds = %84, %77
  %86 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %5) #12
  br i1 %86, label %26, label %87

87:                                               ; preds = %85, %4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #12
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @invalid_migration_vma(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #6 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 98560
  %6 = icmp eq i32 %5, 98560
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_mlock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.rmap_walk_control, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) @__const.page_mlock.rwc, i32 20, i1 false)
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !8

7:                                                ; preds = %1
  %8 = add i32 %4, -1
  br label %11

9:                                                ; preds = %1
  %10 = ptrtoint ptr %0 to i32
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.anon.30, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  call fastcc void @rmap_walk_anon(ptr noundef %0, ptr noundef nonnull %2, i1 noundef zeroext false) #12
  br label %21

20:                                               ; preds = %11
  call fastcc void @rmap_walk_file(ptr noundef %0, ptr noundef nonnull %2, i1 noundef zeroext false) #12
  br label %21

21:                                               ; preds = %20, %19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @page_mlock_one(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca %struct.page_vma_mapped_walk, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #12
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 1
  store ptr %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 2
  store i32 %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 3
  %9 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 4
  %10 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %5, i32 0, i32 5
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 8192
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %17, %4
  %16 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %5) #12
  br i1 %16, label %17, label %35

17:                                               ; preds = %15
  %18 = load i32, ptr %11, align 4
  %19 = and i32 %18, 8192
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %15, label %21

21:                                               ; preds = %17
  call void @mlock_vma_page(ptr noundef %0) #12
  %22 = load ptr, ptr %9, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  call void @kunmap_local_indexed(ptr noundef nonnull %22) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !27
  %25 = tail call ptr @llvm.thread.pointer() #12
  %26 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 149
  %27 = load i32, ptr %26, align 8
  %28 = add i32 %27, -1
  store i32 %28, ptr %26, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  br label %29

29:                                               ; preds = %24, %21
  %30 = load ptr, ptr %10, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %33 = load i16, ptr %30, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %30, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  br label %35

35:                                               ; preds = %32, %29, %15, %4
  %36 = phi i1 [ true, %4 ], [ false, %29 ], [ false, %32 ], [ true, %15 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #12
  ret i1 %36
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rmap_walk_anon(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #0 {
  br i1 %2, label %4, label %6

4:                                                ; preds = %3
  %5 = tail call ptr @page_anon_vma(ptr noundef %0) #12
  br label %18

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rmap_walk_control, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call ptr %8(ptr noundef %0) #12
  br label %18

12:                                               ; preds = %6
  %13 = tail call ptr @page_anon_vma(ptr noundef %0) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %93, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr inbounds %struct.anon_vma, ptr %16, i32 0, i32 1
  tail call void @down_read(ptr noundef %17) #12
  br label %21

18:                                               ; preds = %10, %4
  %19 = phi ptr [ %5, %4 ], [ %11, %10 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %93, label %21

21:                                               ; preds = %18, %15
  %22 = phi ptr [ %13, %15 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.anon_vma, ptr %22, i32 0, i32 5
  %26 = tail call ptr @anon_vma_interval_tree_iter_first(ptr noundef %25, i32 noundef %24, i32 noundef %24) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %89, label %28

28:                                               ; preds = %21
  %29 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 2
  %30 = getelementptr inbounds %struct.rmap_walk_control, ptr %1, i32 0, i32 4
  %31 = getelementptr inbounds %struct.rmap_walk_control, ptr %1, i32 0, i32 1
  %32 = getelementptr inbounds %struct.rmap_walk_control, ptr %1, i32 0, i32 2
  br label %33

33:                                               ; preds = %86, %28
  %34 = phi ptr [ %26, %28 ], [ %87, %86 ]
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %23, align 4
  %37 = getelementptr inbounds %struct.vm_area_struct, ptr %35, i32 0, i32 13
  %38 = load i32, ptr %37, align 4
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %51, label %40

40:                                               ; preds = %33
  %41 = load i32, ptr %35, align 4
  %42 = sub i32 %36, %38
  %43 = shl i32 %42, 12
  %44 = add i32 %41, %43
  %45 = icmp ult i32 %44, %41
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.vm_area_struct, ptr %35, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp ult i32 %44, %48
  br i1 %49, label %68, label %50

50:                                               ; preds = %46, %40
  br label %68

51:                                               ; preds = %33
  %52 = load volatile i32, ptr %0, align 4
  %53 = and i32 %52, 65536
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %51
  %56 = load volatile i32, ptr %0, align 4
  %57 = and i32 %56, 65536
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load i32, ptr %29, align 4
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi i32 [ %60, %59 ], [ 1, %55 ]
  %63 = add i32 %36, -1
  %64 = add i32 %63, %62
  %65 = icmp ult i32 %64, %38
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = load i32, ptr %35, align 4
  br label %68

68:                                               ; preds = %66, %61, %51, %50, %46
  %69 = phi i32 [ -14, %50 ], [ %44, %46 ], [ %67, %66 ], [ -14, %61 ], [ -14, %51 ]
  %70 = tail call i32 @__cond_resched() #12
  %71 = load ptr, ptr %30, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load ptr, ptr %1, align 4
  %75 = tail call zeroext i1 %71(ptr noundef %35, ptr noundef %74) #12
  br i1 %75, label %86, label %76

76:                                               ; preds = %73, %68
  %77 = load ptr, ptr %31, align 4
  %78 = load ptr, ptr %1, align 4
  %79 = tail call zeroext i1 %77(ptr noundef %0, ptr noundef %35, i32 noundef %69, ptr noundef %78) #12
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load ptr, ptr %32, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = tail call i32 %81(ptr noundef %0) #12
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83, %80, %73
  %87 = tail call ptr @anon_vma_interval_tree_iter_next(ptr noundef nonnull %34, i32 noundef %24, i32 noundef %24) #12
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %33

89:                                               ; preds = %86, %83, %76, %21
  br i1 %2, label %93, label %90

90:                                               ; preds = %89
  %91 = load ptr, ptr %22, align 4
  %92 = getelementptr inbounds %struct.anon_vma, ptr %91, i32 0, i32 1
  tail call void @up_read(ptr noundef %92) #12
  br label %93

93:                                               ; preds = %90, %89, %18, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rmap_walk_file(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call ptr @page_mapping(ptr noundef %0) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %78, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  br i1 %2, label %11, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 6
  tail call void @down_read(ptr noundef %10) #12
  br label %11

11:                                               ; preds = %9, %6
  %12 = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 5
  %13 = tail call ptr @vma_interval_tree_iter_first(ptr noundef %12, i32 noundef %8, i32 noundef %8) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %75, label %15

15:                                               ; preds = %11
  %16 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 2
  %17 = getelementptr inbounds %struct.rmap_walk_control, ptr %1, i32 0, i32 4
  %18 = getelementptr inbounds %struct.rmap_walk_control, ptr %1, i32 0, i32 1
  %19 = getelementptr inbounds %struct.rmap_walk_control, ptr %1, i32 0, i32 2
  br label %20

20:                                               ; preds = %72, %15
  %21 = phi ptr [ %13, %15 ], [ %73, %72 ]
  %22 = load i32, ptr %7, align 4
  %23 = getelementptr inbounds %struct.vm_area_struct, ptr %21, i32 0, i32 13
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %37, label %26

26:                                               ; preds = %20
  %27 = load i32, ptr %21, align 4
  %28 = sub i32 %22, %24
  %29 = shl i32 %28, 12
  %30 = add i32 %27, %29
  %31 = icmp ult i32 %30, %27
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.vm_area_struct, ptr %21, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp ult i32 %30, %34
  br i1 %35, label %54, label %36

36:                                               ; preds = %32, %26
  br label %54

37:                                               ; preds = %20
  %38 = load volatile i32, ptr %0, align 4
  %39 = and i32 %38, 65536
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %37
  %42 = load volatile i32, ptr %0, align 4
  %43 = and i32 %42, 65536
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr %16, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i32 [ %46, %45 ], [ 1, %41 ]
  %49 = add i32 %22, -1
  %50 = add i32 %49, %48
  %51 = icmp ult i32 %50, %24
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load i32, ptr %21, align 4
  br label %54

54:                                               ; preds = %52, %47, %37, %36, %32
  %55 = phi i32 [ -14, %36 ], [ %30, %32 ], [ %53, %52 ], [ -14, %47 ], [ -14, %37 ]
  %56 = tail call i32 @__cond_resched() #12
  %57 = load ptr, ptr %17, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load ptr, ptr %1, align 4
  %61 = tail call zeroext i1 %57(ptr noundef nonnull %21, ptr noundef %60) #12
  br i1 %61, label %72, label %62

62:                                               ; preds = %59, %54
  %63 = load ptr, ptr %18, align 4
  %64 = load ptr, ptr %1, align 4
  %65 = tail call zeroext i1 %63(ptr noundef %0, ptr noundef nonnull %21, i32 noundef %55, ptr noundef %64) #12
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load ptr, ptr %19, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = tail call i32 %67(ptr noundef %0) #12
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69, %66, %59
  %73 = tail call ptr @vma_interval_tree_iter_next(ptr noundef nonnull %21, i32 noundef %8, i32 noundef %8) #12
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %20

75:                                               ; preds = %72, %69, %62, %11
  br i1 %2, label %78, label %76

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 6
  tail call void @up_read(ptr noundef %77) #12
  br label %78

78:                                               ; preds = %76, %75, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @anon_vma_interval_tree_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_vma_mapped_walk(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @page_vma_mapped_walk_done(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  tail call void @kunmap_local_indexed(ptr noundef nonnull %3) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !27
  %6 = tail call ptr @llvm.thread.pointer() #12
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 149
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %8, -1
  store i32 %9, ptr %7, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  br label %10

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %15 = load i16, ptr %12, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  br label %17

17:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptep_clear_flush_young(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_cache_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptep_clear_flush(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlock_vma_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swap_duplicate([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mm_trace_rss_stat(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_vma_interval_tree_iter_first(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_vma_interval_tree_iter_next(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vma_interval_tree_iter_first(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vma_interval_tree_iter_next(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nounwind }

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
!9 = !{i64 2149076295}
!10 = !{i64 2149072119}
!11 = !{i64 2149072194, i64 2149072221, i64 2149072268, i64 2149072290, i64 2149072318, i64 2149072338}
!12 = !{i64 2149099298}
!13 = !{i64 2148511294}
!14 = !{i64 909229, i64 2148399200, i64 2148399226, i64 2148399273, i64 2148399295, i64 2148399323, i64 2148399343}
!15 = !{i64 2148413656, i64 2148413688, i64 2148413717, i64 2148413751, i64 2148413782, i64 2148413805}
!16 = !{i64 2148511497}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2148410615, i64 2148410641, i64 2148410670, i64 2148410704, i64 2148410735, i64 2148410758}
!19 = !{i64 2149475067}
!20 = !{i64 2148410122}
!21 = !{i64 895798, i64 895823, i64 895845, i64 895861, i64 895873, i64 895893, i64 895917, i64 895933, i64 895945}
!22 = !{i64 2148410248}
!23 = !{i64 2149475284}
!24 = !{i64 2153723913}
!25 = !{i64 2148419077, i64 2148419109, i64 2148419138, i64 2148419172, i64 2148419203, i64 2148419226}
!26 = !{i64 2148520417}
!27 = !{i64 2151573171}
!28 = !{i64 2152510651}
!29 = !{i64 2153727863, i64 2153728338, i64 2153727900, i64 2153727956, i64 2153727990, i64 2153728014, i64 2153728055, i64 2153728076, i64 2153728104, i64 2153728138}
!30 = !{i64 2148508461}
!31 = !{i64 2148411299, i64 2148411331, i64 2148411360, i64 2148411394, i64 2148411425, i64 2148411448}
!32 = !{i64 2148508664}
!33 = !{i64 2153732497, i64 2153732972, i64 2153732534, i64 2153732590, i64 2153732624, i64 2153732648, i64 2153732689, i64 2153732710, i64 2153732738, i64 2153732772}
