; ModuleID = '/llk/IR/fs/mpage.c_pt.bc'
source_filename = "../fs/mpage.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpage_readahead:\09\09\09\09\09"
module asm "\09.asciz \09\22mpage_readahead\22\09\09\09\09\09"
module asm "__kstrtabns_mpage_readahead:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpage_readpage:\09\09\09\09\09"
module asm "\09.asciz \09\22mpage_readpage\22\09\09\09\09\09"
module asm "__kstrtabns_mpage_readpage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpage_writepages:\09\09\09\09\09"
module asm "\09.asciz \09\22mpage_writepages\22\09\09\09\09\09"
module asm "__kstrtabns_mpage_writepages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpage_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22mpage_writepage\22\09\09\09\09\09"
module asm "__kstrtabns_mpage_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mpage_readpage_args = type { ptr, ptr, i32, i8, i64, %struct.buffer_head, i32, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.page = type { i32, %union.anon.15, %union.anon.30, %struct.atomic_t }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.30 = type { %struct.atomic_t }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.39, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.39 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%union.anon.70 = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.40 }
%struct.llist_node = type { ptr }
%union.anon.40 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.41 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.61 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.mpage_data = type { ptr, i64, ptr, i32 }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16 }
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

@__kstrtab_mpage_readahead = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpage_readahead = external dso_local constant [0 x i8], align 1
@__ksymtab_mpage_readahead = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpage_readahead to i32), ptr @__kstrtab_mpage_readahead, ptr @__kstrtabns_mpage_readahead }, section "___ksymtab+mpage_readahead", align 4
@__kstrtab_mpage_readpage = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpage_readpage = external dso_local constant [0 x i8], align 1
@__ksymtab_mpage_readpage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpage_readpage to i32), ptr @__kstrtab_mpage_readpage, ptr @__kstrtabns_mpage_readpage }, section "___ksymtab+mpage_readpage", align 4
@__kstrtab_mpage_writepages = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpage_writepages = external dso_local constant [0 x i8], align 1
@__ksymtab_mpage_writepages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpage_writepages to i32), ptr @__kstrtab_mpage_writepages, ptr @__kstrtabns_mpage_writepages }, section "___ksymtab+mpage_writepages", align 4
@__kstrtab_mpage_writepage = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpage_writepage = external dso_local constant [0 x i8], align 1
@__ksymtab_mpage_writepage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpage_writepage to i32), ptr @__kstrtab_mpage_writepage, ptr @__kstrtabns_mpage_writepage }, section "___ksymtab+mpage_writepage", align 4
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@buffer_heads_over_limit = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_mpage_readahead, ptr @__ksymtab_mpage_readpage, ptr @__ksymtab_mpage_writepage, ptr @__ksymtab_mpage_writepages], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpage_readahead(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.mpage_readpage_args, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #6
  %4 = getelementptr inbounds %struct.mpage_readpage_args, ptr %3, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %3, i8 0, i64 96, i1 false)
  store i8 1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.mpage_readpage_args, ptr %3, i32 0, i32 7
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 5
  %7 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %6, align 4
  %9 = load i32, ptr %7, align 4
  %10 = icmp ult i32 %9, %8
  br i1 %10, label %16, label %11, !prof !8

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 3
  %13 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 1
  %14 = getelementptr inbounds %struct.mpage_readpage_args, ptr %3, i32 0, i32 1
  %15 = getelementptr inbounds %struct.mpage_readpage_args, ptr %3, i32 0, i32 2
  br label %17

16:                                               ; preds = %57, %2
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1086, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

17:                                               ; preds = %57, %11
  %18 = phi i32 [ %9, %11 ], [ %59, %57 ]
  %19 = phi i32 [ %8, %11 ], [ %58, %57 ]
  %20 = sub i32 %18, %19
  store i32 %20, ptr %7, align 4
  %21 = load i32, ptr %12, align 4
  %22 = add i32 %21, %19
  store i32 %22, ptr %12, align 4
  %23 = icmp eq i32 %18, %19
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, ptr %6, align 4
  br label %61

25:                                               ; preds = %17
  %26 = load ptr, ptr %13, align 4
  %27 = getelementptr inbounds %struct.address_space, ptr %26, i32 0, i32 1
  %28 = call ptr @xa_load(ptr noundef %27, i32 noundef %22) #6
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 65536
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = getelementptr %struct.page, ptr %28, i32 1, i32 1, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %25
  %36 = phi i32 [ %34, %32 ], [ 1, %25 ]
  store i32 %36, ptr %6, align 4
  %37 = icmp eq ptr %28, null
  br i1 %37, label %61, label %38

38:                                               ; preds = %35
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %28) #6, !srcloc !10
  store ptr %28, ptr %14, align 4
  %39 = load i32, ptr %7, align 4
  store i32 %39, ptr %15, align 8
  %40 = call fastcc ptr @do_mpage_readpage(ptr noundef nonnull %3)
  store ptr %40, ptr %3, align 8
  %41 = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45, !prof !11

45:                                               ; preds = %38
  %46 = add i32 %42, -1
  br label %49

47:                                               ; preds = %38
  %48 = ptrtoint ptr %28 to i32
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = inttoptr i32 %50 to ptr
  %52 = getelementptr inbounds %struct.page, ptr %51, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #6, !srcloc !10
  %53 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #6, !srcloc !13
  %54 = extractvalue { i32, i32 } %53, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  call void @__put_page(ptr noundef %51) #6
  br label %57

57:                                               ; preds = %56, %49
  %58 = load i32, ptr %6, align 4
  %59 = load i32, ptr %7, align 4
  %60 = icmp ult i32 %59, %58
  br i1 %60, label %16, label %17, !prof !8

61:                                               ; preds = %35, %24
  %62 = load ptr, ptr %3, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.bio, ptr %62, i32 0, i32 10
  store ptr @mpage_end_io, ptr %65, align 4
  %66 = getelementptr inbounds %struct.bio, ptr %62, i32 0, i32 2
  store i32 524288, ptr %66, align 4
  call void @guard_bio_eod(ptr noundef nonnull %62) #6
  call void @submit_bio(ptr noundef nonnull %62) #6
  br label %67

67:                                               ; preds = %64, %61
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @do_mpage_readpage(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [8 x i64], align 8
  %3 = getelementptr inbounds %struct.mpage_readpage_args, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 19
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = lshr i32 4096, %10
  %12 = shl nuw i32 1, %10
  %13 = getelementptr inbounds %struct.mpage_readpage_args, ptr %0, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 0, i32 64, i1 false), !annotation !15
  %14 = getelementptr inbounds %struct.mpage_readpage_args, ptr %0, i32 0, i32 3
  %15 = load i8, ptr %14, align 4, !range !16
  %16 = icmp eq i8 %15, 0
  %17 = getelementptr inbounds %struct.address_space, ptr %6, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 3264
  %20 = select i1 %16, i32 0, i32 524288
  %21 = load volatile i32, ptr %4, align 4
  %22 = and i32 %21, 8192
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %343

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = sub nsw i32 12, %10
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mpage_readpage_args, ptr %0, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = mul i32 %30, %11
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 22
  %34 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 13
  br label %35

35:                                               ; preds = %43, %24
  %36 = load volatile i32, ptr %33, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %39, %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !18
  %40 = load volatile i32, ptr %33, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %39

43:                                               ; preds = %39, %35
  %44 = phi i32 [ %36, %35 ], [ %40, %39 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  %45 = load i64, ptr %34, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  %46 = load volatile i32, ptr %33, align 4
  %47 = icmp eq i32 %46, %44
  br i1 %47, label %48, label %35

48:                                               ; preds = %43
  %49 = zext i32 %26 to i64
  %50 = shl i64 %49, %28
  %51 = add i64 %50, %32
  %52 = zext i32 %12 to i64
  %53 = add nsw i64 %52, -1
  %54 = add i64 %53, %45
  %55 = zext i8 %9 to i64
  %56 = ashr i64 %54, %55
  %57 = tail call i64 @llvm.umin.i64(i64 %51, i64 %56)
  %58 = getelementptr inbounds %struct.mpage_readpage_args, ptr %0, i32 0, i32 5, i32 4
  %59 = load i32, ptr %58, align 8
  %60 = lshr i32 %59, %10
  %61 = load volatile i32, ptr %13, align 4
  %62 = and i32 %61, 16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %102, label %64

64:                                               ; preds = %48
  %65 = getelementptr inbounds %struct.mpage_readpage_args, ptr %0, i32 0, i32 6
  %66 = load i32, ptr %65, align 8
  %67 = zext i32 %66 to i64
  %68 = icmp ugt i64 %50, %67
  br i1 %68, label %69, label %102

69:                                               ; preds = %64
  %70 = add i32 %66, %60
  %71 = zext i32 %70 to i64
  %72 = icmp ult i64 %50, %71
  br i1 %72, label %73, label %102

73:                                               ; preds = %69
  %74 = trunc i64 %50 to i32
  %75 = sub i32 %74, %66
  %76 = sub i32 %60, %75
  %77 = icmp eq i32 %60, %75
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.mpage_readpage_args, ptr %0, i32 0, i32 5, i32 3
  %80 = zext i32 %75 to i64
  br label %84

81:                                               ; preds = %88, %73
  %82 = phi i64 [ %50, %73 ], [ %95, %88 ]
  %83 = phi i32 [ 0, %73 ], [ %76, %88 ]
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %13) #6
  br label %97

84:                                               ; preds = %88, %78
  %85 = phi i32 [ 0, %78 ], [ %94, %88 ]
  %86 = phi i64 [ %50, %78 ], [ %95, %88 ]
  %87 = icmp eq i32 %85, %11
  br i1 %87, label %97, label %88

88:                                               ; preds = %84
  %89 = load i64, ptr %79, align 8
  %90 = zext i32 %85 to i64
  %91 = add nuw nsw i64 %90, %80
  %92 = add i64 %91, %89
  %93 = getelementptr [8 x i64], ptr %2, i32 0, i32 %85
  store i64 %92, ptr %93, align 8
  %94 = add nuw nsw i32 %85, 1
  %95 = add i64 %86, 1
  %96 = icmp eq i32 %94, %76
  br i1 %96, label %81, label %84

97:                                               ; preds = %84, %81
  %98 = phi i64 [ %82, %81 ], [ %86, %84 ]
  %99 = phi i32 [ %83, %81 ], [ %11, %84 ]
  %100 = getelementptr inbounds %struct.mpage_readpage_args, ptr %0, i32 0, i32 5, i32 6
  %101 = load ptr, ptr %100, align 8
  br label %102

102:                                              ; preds = %97, %69, %64, %48
  %103 = phi i64 [ %98, %97 ], [ %50, %69 ], [ %50, %64 ], [ %50, %48 ]
  %104 = phi i32 [ %99, %97 ], [ 0, %69 ], [ 0, %64 ], [ 0, %48 ]
  %105 = phi ptr [ %101, %97 ], [ null, %69 ], [ null, %64 ], [ null, %48 ]
  %106 = getelementptr inbounds %struct.mpage_readpage_args, ptr %0, i32 0, i32 5, i32 2
  store ptr %4, ptr %106, align 8
  %107 = icmp ult i32 %104, %11
  %108 = trunc i64 %103 to i32
  br i1 %107, label %109, label %238

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.mpage_readpage_args, ptr %0, i32 0, i32 7
  %111 = getelementptr inbounds %struct.mpage_readpage_args, ptr %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.mpage_readpage_args, ptr %0, i32 0, i32 5, i32 3
  %113 = getelementptr inbounds %struct.mpage_readpage_args, ptr %0, i32 0, i32 5, i32 6
  br label %114

114:                                              ; preds = %139, %109
  %115 = phi i1 [ false, %109 ], [ true, %139 ]
  %116 = phi ptr [ %105, %109 ], [ %122, %139 ]
  %117 = phi i32 [ %11, %109 ], [ %140, %139 ]
  %118 = phi i32 [ %104, %109 ], [ %141, %139 ]
  %119 = phi i64 [ %103, %109 ], [ %142, %139 ]
  %120 = icmp eq i32 %117, %11
  br label %121

121:                                              ; preds = %221, %114
  %122 = phi ptr [ %116, %114 ], [ %224, %221 ]
  %123 = phi i32 [ %118, %114 ], [ %223, %221 ]
  %124 = phi i64 [ %119, %114 ], [ %222, %221 ]
  store i32 0, ptr %13, align 8
  store i32 0, ptr %58, align 8
  %125 = icmp ugt i64 %57, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = sub i64 %57, %124
  %128 = shl i64 %127, %55
  %129 = trunc i64 %128 to i32
  store i32 %129, ptr %58, align 8
  %130 = load ptr, ptr %110, align 4
  %131 = tail call i32 %130(ptr noundef %7, i64 noundef %124, ptr noundef %13, i32 noundef 0) #6
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %343

133:                                              ; preds = %126
  %134 = trunc i64 %124 to i32
  store i32 %134, ptr %111, align 8
  br label %135

135:                                              ; preds = %133, %121
  %136 = load volatile i32, ptr %13, align 4
  %137 = and i32 %136, 16
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = select i1 %120, i32 %123, i32 %117
  %141 = add nuw i32 %123, 1
  %142 = add i64 %124, 1
  %143 = icmp ult i32 %141, %11
  br i1 %143, label %114, label %226

144:                                              ; preds = %135
  %145 = load volatile i32, ptr %13, align 4
  %146 = and i32 %145, 1
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %190, label %148

148:                                              ; preds = %144
  %149 = load ptr, ptr %5, align 4
  %150 = load ptr, ptr %149, align 4
  %151 = load volatile i32, ptr %4, align 4
  %152 = and i32 %151, 8192
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.inode, ptr %150, i32 0, i32 19
  %156 = load i8, ptr %155, align 2
  %157 = icmp eq i8 %156, 12
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load volatile i32, ptr %13, align 4
  %160 = and i32 %159, 1
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %158
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !21
  tail call void @_set_bit(i32 noundef 2, ptr noundef %4) #6
  br label %343

163:                                              ; preds = %158, %154
  %164 = zext i8 %156 to i32
  %165 = shl nuw i32 1, %164
  tail call void @create_empty_buffers(ptr noundef %4, i32 noundef %165, i32 noundef 0) #6
  br label %166

166:                                              ; preds = %163, %148
  %167 = load volatile i32, ptr %4, align 4
  %168 = and i32 %167, 8192
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171, !prof !8

170:                                              ; preds = %166
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/mpage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 121, 0\0A.popsection", ""() #6, !srcloc !22
  unreachable

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1, i32 0, i32 3
  %173 = load i32, ptr %172, align 4
  %174 = inttoptr i32 %173 to ptr
  br label %175

175:                                              ; preds = %185, %171
  %176 = phi ptr [ %174, %171 ], [ %187, %185 ]
  %177 = phi i32 [ 0, %171 ], [ %188, %185 ]
  %178 = icmp eq i32 %177, %123
  br i1 %178, label %179, label %185

179:                                              ; preds = %175
  %180 = load i32, ptr %13, align 8
  store i32 %180, ptr %176, align 8
  %181 = load ptr, ptr %113, align 8
  %182 = getelementptr inbounds %struct.buffer_head, ptr %176, i32 0, i32 6
  store ptr %181, ptr %182, align 8
  %183 = load i64, ptr %112, align 8
  %184 = getelementptr inbounds %struct.buffer_head, ptr %176, i32 0, i32 3
  store i64 %183, ptr %184, align 8
  br label %343

185:                                              ; preds = %175
  %186 = getelementptr inbounds %struct.buffer_head, ptr %176, i32 0, i32 1
  %187 = load ptr, ptr %186, align 4
  %188 = add i32 %177, 1
  %189 = icmp eq ptr %187, %174
  br i1 %189, label %343, label %175

190:                                              ; preds = %144
  br i1 %120, label %191, label %343

191:                                              ; preds = %190
  %192 = icmp eq i32 %123, 0
  br i1 %192, label %200, label %193

193:                                              ; preds = %191
  %194 = add i32 %123, -1
  %195 = getelementptr [8 x i64], ptr %2, i32 0, i32 %194
  %196 = load i64, ptr %195, align 8
  %197 = load i64, ptr %112, align 8
  %198 = add i64 %197, -1
  %199 = icmp eq i64 %196, %198
  br i1 %199, label %200, label %343

200:                                              ; preds = %193, %191
  %201 = load i32, ptr %58, align 8
  %202 = lshr i32 %201, %10
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %221, label %204

204:                                              ; preds = %212, %200
  %205 = phi i32 [ %219, %212 ], [ 0, %200 ]
  %206 = phi i32 [ %217, %212 ], [ %123, %200 ]
  %207 = phi i64 [ %218, %212 ], [ %124, %200 ]
  %208 = icmp eq i32 %206, %11
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load ptr, ptr %113, align 8
  %211 = trunc i64 %207 to i32
  br label %235

212:                                              ; preds = %204
  %213 = load i64, ptr %112, align 8
  %214 = zext i32 %205 to i64
  %215 = add i64 %213, %214
  %216 = getelementptr [8 x i64], ptr %2, i32 0, i32 %206
  store i64 %215, ptr %216, align 8
  %217 = add i32 %206, 1
  %218 = add i64 %207, 1
  %219 = add nuw i32 %205, 1
  %220 = icmp eq i32 %219, %202
  br i1 %220, label %221, label %204

221:                                              ; preds = %212, %200
  %222 = phi i64 [ %124, %200 ], [ %218, %212 ]
  %223 = phi i32 [ %123, %200 ], [ %217, %212 ]
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %13) #6
  %224 = load ptr, ptr %113, align 8
  %225 = icmp ult i32 %223, %11
  br i1 %225, label %121, label %233

226:                                              ; preds = %139
  %227 = trunc i64 %142 to i32
  %228 = icmp eq i32 %140, %11
  br i1 %228, label %252, label %229

229:                                              ; preds = %226
  %230 = shl i32 %140, %10
  tail call void @zero_user_segments(ptr noundef %4, i32 noundef %230, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #6
  %231 = icmp eq i32 %140, 0
  br i1 %231, label %232, label %252

232:                                              ; preds = %229
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !21
  tail call void @_set_bit(i32 noundef 2, ptr noundef %4) #6
  tail call void @unlock_page(ptr noundef %4) #6
  br label %341

233:                                              ; preds = %221
  %234 = trunc i64 %222 to i32
  br label %235

235:                                              ; preds = %233, %209
  %236 = phi i32 [ %211, %209 ], [ %234, %233 ]
  %237 = phi ptr [ %210, %209 ], [ %224, %233 ]
  br i1 %115, label %252, label %238

238:                                              ; preds = %235, %102
  %239 = phi ptr [ %237, %235 ], [ %105, %102 ]
  %240 = phi i32 [ %236, %235 ], [ %108, %102 ]
  %241 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %242 = load volatile i32, ptr %241, align 4
  %243 = and i32 %242, 1
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %247, label %245, !prof !11

245:                                              ; preds = %238
  %246 = add i32 %242, -1
  br label %249

247:                                              ; preds = %238
  %248 = ptrtoint ptr %4 to i32
  br label %249

249:                                              ; preds = %247, %245
  %250 = phi i32 [ %246, %245 ], [ %248, %247 ]
  %251 = inttoptr i32 %250 to ptr
  tail call void @_set_bit(i32 noundef 17, ptr noundef %251) #6
  br label %252

252:                                              ; preds = %249, %235, %229, %226
  %253 = phi i1 [ true, %235 ], [ true, %249 ], [ false, %229 ], [ true, %226 ]
  %254 = phi ptr [ %237, %235 ], [ %239, %249 ], [ %122, %229 ], [ %122, %226 ]
  %255 = phi i32 [ %236, %235 ], [ %240, %249 ], [ %227, %229 ], [ %227, %226 ]
  %256 = phi i32 [ %11, %235 ], [ %11, %249 ], [ %140, %229 ], [ %140, %226 ]
  %257 = load ptr, ptr %0, align 8
  %258 = icmp eq ptr %257, null
  br i1 %258, label %269, label %259

259:                                              ; preds = %252
  %260 = getelementptr inbounds %struct.mpage_readpage_args, ptr %0, i32 0, i32 4
  %261 = load i64, ptr %260, align 8
  %262 = load i64, ptr %2, align 8
  %263 = add i64 %262, -1
  %264 = icmp eq i64 %261, %263
  br i1 %264, label %310, label %265

265:                                              ; preds = %259
  %266 = getelementptr inbounds %struct.bio, ptr %257, i32 0, i32 10
  store ptr @mpage_end_io, ptr %266, align 4
  %267 = getelementptr inbounds %struct.bio, ptr %257, i32 0, i32 2
  store i32 %20, ptr %267, align 4
  tail call void @guard_bio_eod(ptr noundef nonnull %257) #6
  tail call void @submit_bio(ptr noundef nonnull %257) #6
  br label %268

268:                                              ; preds = %315, %265
  store ptr null, ptr %0, align 8
  br label %269

269:                                              ; preds = %268, %252
  %270 = load i64, ptr %2, align 8
  %271 = add nsw i32 %10, -9
  %272 = zext i32 %271 to i64
  %273 = shl i64 %270, %272
  br i1 %253, label %274, label %277

274:                                              ; preds = %269
  %275 = tail call i32 @bdev_read_page(ptr noundef %254, i64 noundef %273, ptr noundef %4) #6
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %341, label %277

277:                                              ; preds = %274, %269
  %278 = load i32, ptr %29, align 8
  %279 = tail call i32 @llvm.umin.i32(i32 %278, i32 256) #6
  %280 = trunc i32 %279 to i16
  %281 = tail call ptr @bio_alloc_bioset(i32 noundef %19, i16 noundef zeroext %280, ptr noundef nonnull @fs_bio_set) #6
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %298

283:                                              ; preds = %277
  %284 = tail call ptr @llvm.thread.pointer() #6
  %285 = getelementptr inbounds %struct.task_struct, ptr %284, i32 0, i32 4
  %286 = load i32, ptr %285, align 4
  %287 = and i32 %286, 2048
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %349, label %289

289:                                              ; preds = %293, %283
  %290 = phi i32 [ %294, %293 ], [ %279, %283 ]
  %291 = add nsw i32 %290, 1
  %292 = icmp ult i32 %291, 3
  br i1 %292, label %349, label %293

293:                                              ; preds = %289
  %294 = sdiv i32 %290, 2
  %295 = trunc i32 %294 to i16
  %296 = tail call ptr @bio_alloc_bioset(i32 noundef %19, i16 noundef zeroext %295, ptr noundef nonnull @fs_bio_set) #6
  %297 = icmp eq ptr %296, null
  br i1 %297, label %289, label %298

298:                                              ; preds = %293, %277
  %299 = phi ptr [ %281, %277 ], [ %296, %293 ]
  %300 = getelementptr inbounds %struct.bio, ptr %299, i32 0, i32 3
  %301 = load i16, ptr %300, align 4
  %302 = and i16 %301, -2049
  store i16 %302, ptr %300, align 4
  %303 = getelementptr inbounds %struct.bio, ptr %299, i32 0, i32 1
  %304 = load ptr, ptr %303, align 4
  %305 = icmp eq ptr %304, %254
  br i1 %305, label %308, label %306

306:                                              ; preds = %298
  %307 = and i16 %301, -2177
  store i16 %307, ptr %300, align 4
  br label %308

308:                                              ; preds = %306, %298
  store ptr %254, ptr %303, align 4
  %309 = getelementptr inbounds %struct.bio, ptr %299, i32 0, i32 8
  store i64 %273, ptr %309, align 4
  store ptr %299, ptr %0, align 8
  br label %310

310:                                              ; preds = %308, %259
  %311 = phi ptr [ %299, %308 ], [ %257, %259 ]
  %312 = shl i32 %256, %10
  %313 = tail call i32 @bio_add_page(ptr noundef nonnull %311, ptr noundef %4, i32 noundef %312, i32 noundef 0) #6
  %314 = icmp slt i32 %313, %312
  br i1 %314, label %315, label %319

315:                                              ; preds = %310
  %316 = load ptr, ptr %0, align 8
  %317 = getelementptr inbounds %struct.bio, ptr %316, i32 0, i32 10
  store ptr @mpage_end_io, ptr %317, align 4
  %318 = getelementptr inbounds %struct.bio, ptr %316, i32 0, i32 2
  store i32 %20, ptr %318, align 4
  tail call void @guard_bio_eod(ptr noundef %316) #6
  tail call void @submit_bio(ptr noundef %316) #6
  br label %268

319:                                              ; preds = %310
  %320 = getelementptr inbounds %struct.mpage_readpage_args, ptr %0, i32 0, i32 6
  %321 = load i32, ptr %320, align 8
  %322 = load i32, ptr %58, align 8
  %323 = load volatile i32, ptr %13, align 4
  %324 = and i32 %323, 512
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %331, label %326

326:                                              ; preds = %319
  %327 = lshr i32 %322, %10
  %328 = sub i32 %255, %321
  %329 = icmp ne i32 %328, %327
  %330 = and i1 %253, %329
  br i1 %330, label %336, label %332

331:                                              ; preds = %319
  br i1 %253, label %336, label %332

332:                                              ; preds = %331, %326
  %333 = load ptr, ptr %0, align 8
  %334 = getelementptr inbounds %struct.bio, ptr %333, i32 0, i32 10
  store ptr @mpage_end_io, ptr %334, align 4
  %335 = getelementptr inbounds %struct.bio, ptr %333, i32 0, i32 2
  store i32 %20, ptr %335, align 4
  tail call void @guard_bio_eod(ptr noundef %333) #6
  tail call void @submit_bio(ptr noundef %333) #6
  store ptr null, ptr %0, align 8
  br label %341

336:                                              ; preds = %331, %326
  %337 = add nsw i32 %11, -1
  %338 = getelementptr [8 x i64], ptr %2, i32 0, i32 %337
  %339 = load i64, ptr %338, align 8
  %340 = getelementptr inbounds %struct.mpage_readpage_args, ptr %0, i32 0, i32 4
  store i64 %339, ptr %340, align 8
  br label %341

341:                                              ; preds = %366, %365, %336, %332, %274, %232
  %342 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #6
  ret ptr %342

343:                                              ; preds = %193, %190, %185, %179, %162, %126, %1
  %344 = load ptr, ptr %0, align 8
  %345 = icmp eq ptr %344, null
  br i1 %345, label %350, label %346

346:                                              ; preds = %343
  %347 = getelementptr inbounds %struct.bio, ptr %344, i32 0, i32 10
  store ptr @mpage_end_io, ptr %347, align 4
  %348 = getelementptr inbounds %struct.bio, ptr %344, i32 0, i32 2
  store i32 %20, ptr %348, align 4
  tail call void @guard_bio_eod(ptr noundef nonnull %344) #6
  tail call void @submit_bio(ptr noundef nonnull %344) #6
  br label %349

349:                                              ; preds = %346, %289, %283
  store ptr null, ptr %0, align 8
  br label %350

350:                                              ; preds = %349, %343
  %351 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %352 = load volatile i32, ptr %351, align 4
  %353 = and i32 %352, 1
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %357, label %355, !prof !11

355:                                              ; preds = %350
  %356 = add i32 %352, -1
  br label %359

357:                                              ; preds = %350
  %358 = ptrtoint ptr %4 to i32
  br label %359

359:                                              ; preds = %357, %355
  %360 = phi i32 [ %356, %355 ], [ %358, %357 ]
  %361 = inttoptr i32 %360 to ptr
  %362 = load volatile i32, ptr %361, align 4
  %363 = and i32 %362, 4
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %366, label %365

365:                                              ; preds = %359
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  tail call void @unlock_page(ptr noundef %4) #6
  br label %341

366:                                              ; preds = %359
  %367 = getelementptr inbounds %struct.mpage_readpage_args, ptr %0, i32 0, i32 7
  %368 = load ptr, ptr %367, align 4
  %369 = tail call i32 @block_read_full_page(ptr noundef %4, ptr noundef %368) #6
  br label %341
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpage_readpage(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.mpage_readpage_args, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #6
  %4 = getelementptr inbounds %struct.mpage_readpage_args, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %3, i8 0, i64 96, i1 false)
  store ptr %0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.mpage_readpage_args, ptr %3, i32 0, i32 2
  store i32 1, ptr %5, align 8
  %6 = getelementptr inbounds %struct.mpage_readpage_args, ptr %3, i32 0, i32 7
  store ptr %1, ptr %6, align 4
  %7 = call fastcc ptr @do_mpage_readpage(ptr noundef nonnull %3)
  store ptr %7, ptr %3, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 10
  store ptr @mpage_end_io, ptr %10, align 4
  %11 = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 2
  store i32 0, ptr %11, align 4
  call void @guard_bio_eod(ptr noundef nonnull %7) #6
  call void @submit_bio(ptr noundef nonnull %7) #6
  br label %12

12:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clean_page_buffers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 8192
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %43, label %5

5:                                                ; preds = %1
  %6 = load volatile i32, ptr %0, align 4
  %7 = and i32 %6, 8192
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/mpage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 442, 0\0A.popsection", ""() #6, !srcloc !24
  unreachable

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = inttoptr i32 %12 to ptr
  br label %14

14:                                               ; preds = %18, %10
  %15 = phi ptr [ %13, %10 ], [ %21, %18 ]
  %16 = phi i32 [ 0, %10 ], [ %19, %18 ]
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = add nuw i32 %16, 1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %15) #6
  %20 = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %13
  br i1 %22, label %23, label %14

23:                                               ; preds = %18, %14
  %24 = load i32, ptr @buffer_heads_over_limit, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31, !prof !11

31:                                               ; preds = %26
  %32 = add i32 %28, -1
  br label %35

33:                                               ; preds = %26
  %34 = ptrtoint ptr %0 to i32
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = inttoptr i32 %36 to ptr
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  %42 = tail call i32 @try_to_free_buffers(ptr noundef %0) #6
  br label %43

43:                                               ; preds = %41, %35, %23, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpage_writepages(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.blk_plug, align 4
  %5 = alloca %struct.mpage_data, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !15
  call void @blk_start_plug(ptr noundef nonnull %4) #6
  %6 = icmp eq ptr %2, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = call i32 @generic_writepages(ptr noundef %0, ptr noundef %1) #6
  br label %23

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  %10 = getelementptr inbounds %struct.mpage_data, ptr %5, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr %2, ptr %10, align 8
  %11 = getelementptr inbounds %struct.mpage_data, ptr %5, i32 0, i32 3
  store i32 1, ptr %11, align 4
  %12 = call i32 @write_cache_pages(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__mpage_writepage, ptr noundef nonnull %5) #6
  %13 = load ptr, ptr %5, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 1
  %19 = getelementptr inbounds %struct.bio, ptr %13, i32 0, i32 10
  store ptr @mpage_end_io, ptr %19, align 4
  %20 = select i1 %18, i32 2049, i32 1
  %21 = getelementptr inbounds %struct.bio, ptr %13, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  call void @guard_bio_eod(ptr noundef nonnull %13) #6
  call void @submit_bio(ptr noundef nonnull %13) #6
  br label %22

22:                                               ; preds = %15, %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  br label %23

23:                                               ; preds = %22, %7
  %24 = phi i32 [ %12, %22 ], [ %8, %7 ]
  call void @blk_finish_plug(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_writepages(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_cache_pages(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__mpage_writepage(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca [8 x i64], align 8
  %5 = alloca %struct.buffer_head, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 19
  %11 = load i8, ptr %10, align 2
  %12 = zext i8 %11 to i32
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !15
  %13 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 22
  %14 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 13
  br label %15

15:                                               ; preds = %23, %3
  %16 = load volatile i32, ptr %13, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %19, %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !18
  %20 = load volatile i32, ptr %13, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %19

23:                                               ; preds = %19, %15
  %24 = phi i32 [ %16, %15 ], [ %20, %19 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  %25 = load i64, ptr %14, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  %26 = load volatile i32, ptr %13, align 4
  %27 = icmp eq i32 %26, %24
  br i1 %27, label %28, label %15

28:                                               ; preds = %23
  %29 = lshr i32 4096, %12
  %30 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 5
  %31 = load i16, ptr %30, align 4
  %32 = and i16 %31, 256
  %33 = zext i16 %32 to i32
  %34 = shl nuw nsw i32 %33, 14
  %35 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 4
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = or i32 %34, 2048
  br label %45

40:                                               ; preds = %28
  %41 = and i16 %31, 3
  %42 = icmp eq i16 %41, 0
  %43 = or i32 %34, 1048576
  %44 = select i1 %42, i32 %34, i32 %43
  br label %45

45:                                               ; preds = %40, %38
  %46 = phi i32 [ %39, %38 ], [ %44, %40 ]
  %47 = load volatile i32, ptr %0, align 4
  %48 = and i32 %47, 8192
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %126, label %50

50:                                               ; preds = %45
  %51 = load volatile i32, ptr %0, align 4
  %52 = and i32 %51, 8192
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55, !prof !8

54:                                               ; preds = %50
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/mpage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 497, 0\0A.popsection", ""() #6, !srcloc !25
  unreachable

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = inttoptr i32 %57 to ptr
  br label %59

59:                                               ; preds = %114, %55
  %60 = phi i32 [ 0, %55 ], [ %115, %114 ]
  %61 = phi i32 [ %29, %55 ], [ %116, %114 ]
  %62 = phi ptr [ null, %55 ], [ %117, %114 ]
  %63 = phi i32 [ 0, %55 ], [ %118, %114 ]
  %64 = phi i64 [ 0, %55 ], [ %119, %114 ]
  %65 = phi ptr [ null, %55 ], [ %120, %114 ]
  %66 = phi ptr [ %58, %55 ], [ %122, %114 ]
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %67, 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70, !prof !11

70:                                               ; preds = %59
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/mpage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 503, 0\0A.popsection", ""() #6, !srcloc !26
  unreachable

71:                                               ; preds = %59
  %72 = load volatile i32, ptr %66, align 4
  %73 = and i32 %72, 16
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load volatile i32, ptr %66, align 4
  %77 = and i32 %76, 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %381

79:                                               ; preds = %75
  %80 = icmp eq i32 %61, %29
  %81 = select i1 %80, i32 %60, i32 %61
  br label %114

82:                                               ; preds = %71
  %83 = icmp eq i32 %61, %29
  br i1 %83, label %84, label %381

84:                                               ; preds = %82
  %85 = load volatile i32, ptr %66, align 4
  %86 = and i32 %85, 2
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %381, label %88

88:                                               ; preds = %84
  %89 = load volatile i32, ptr %66, align 4
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %381, label %92

92:                                               ; preds = %88
  %93 = icmp eq i32 %60, 0
  %94 = getelementptr inbounds %struct.buffer_head, ptr %66, i32 0, i32 3
  %95 = load i64, ptr %94, align 8
  br i1 %93, label %102, label %96

96:                                               ; preds = %92
  %97 = add i32 %60, -1
  %98 = getelementptr [8 x i64], ptr %4, i32 0, i32 %97
  %99 = load i64, ptr %98, align 8
  %100 = add i64 %99, 1
  %101 = icmp eq i64 %95, %100
  br i1 %101, label %102, label %381

102:                                              ; preds = %96, %92
  %103 = add i32 %60, 1
  %104 = getelementptr [8 x i64], ptr %4, i32 0, i32 %60
  store i64 %95, ptr %104, align 8
  %105 = load volatile i32, ptr %66, align 4
  %106 = and i32 %105, 512
  %107 = icmp eq i32 %106, 0
  %108 = getelementptr inbounds %struct.buffer_head, ptr %66, i32 0, i32 6
  %109 = load ptr, ptr %108, align 8
  %110 = xor i1 %107, true
  %111 = zext i1 %110 to i32
  %112 = select i1 %107, i64 %64, i64 %95
  %113 = select i1 %107, ptr %65, ptr %109
  br label %114

114:                                              ; preds = %102, %79
  %115 = phi i32 [ %60, %79 ], [ %103, %102 ]
  %116 = phi i32 [ %81, %79 ], [ %29, %102 ]
  %117 = phi ptr [ %62, %79 ], [ %109, %102 ]
  %118 = phi i32 [ %63, %79 ], [ %111, %102 ]
  %119 = phi i64 [ %64, %79 ], [ %112, %102 ]
  %120 = phi ptr [ %65, %79 ], [ %113, %102 ]
  %121 = getelementptr inbounds %struct.buffer_head, ptr %66, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, %58
  br i1 %123, label %124, label %59

124:                                              ; preds = %114
  %125 = icmp eq i32 %116, 0
  br i1 %125, label %381, label %204

126:                                              ; preds = %45
  %127 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %128 = load volatile i32, ptr %127, align 4
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131, !prof !11

131:                                              ; preds = %126
  %132 = add i32 %128, -1
  br label %135

133:                                              ; preds = %126
  %134 = ptrtoint ptr %0 to i32
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32 [ %132, %131 ], [ %134, %133 ]
  %137 = inttoptr i32 %136 to ptr
  %138 = load volatile i32, ptr %137, align 4
  %139 = and i32 %138, 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %160, label %141

141:                                              ; preds = %135
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  %142 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %143 = load i32, ptr %142, align 4
  %144 = add i64 %25, -1
  %145 = zext i8 %11 to i64
  %146 = ashr i64 %144, %145
  %147 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 2
  store ptr %0, ptr %147, align 8
  %148 = icmp ugt i8 %11, 12
  br i1 %148, label %199, label %149

149:                                              ; preds = %141
  %150 = zext i32 %143 to i64
  %151 = sub nsw i32 12, %12
  %152 = zext i32 %151 to i64
  %153 = shl i64 %150, %152
  %154 = shl nuw i32 1, %12
  %155 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 4
  %156 = getelementptr inbounds %struct.mpage_data, ptr %2, i32 0, i32 2
  %157 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 6
  %158 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 3
  %159 = call i32 @llvm.umax.i32(i32 %29, i32 1)
  br label %164

160:                                              ; preds = %135
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/mpage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 549, 0\0A.popsection", ""() #6, !srcloc !27
  unreachable

161:                                              ; preds = %194
  %162 = add i64 %168, 1
  %163 = icmp eq i32 %195, %159
  br i1 %163, label %200, label %164

164:                                              ; preds = %161, %149
  %165 = phi ptr [ null, %149 ], [ %186, %161 ]
  %166 = phi i64 [ 0, %149 ], [ %185, %161 ]
  %167 = phi i32 [ 0, %149 ], [ %195, %161 ]
  %168 = phi i64 [ %153, %149 ], [ %162, %161 ]
  store i32 0, ptr %5, align 8
  store i32 %154, ptr %155, align 8
  %169 = load ptr, ptr %156, align 8
  %170 = call i32 %169(ptr noundef %9, i64 noundef %168, ptr noundef nonnull %5, i32 noundef 1) #6
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %381

172:                                              ; preds = %164
  %173 = load volatile i32, ptr %5, align 8
  %174 = and i32 %173, 32
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %157, align 8
  %178 = load i64, ptr %158, align 8
  call void @clean_bdev_aliases(ptr noundef %177, i64 noundef %178, i64 noundef 1) #6
  br label %179

179:                                              ; preds = %176, %172
  %180 = load volatile i32, ptr %5, align 8
  %181 = and i32 %180, 512
  %182 = icmp eq i32 %181, 0
  %183 = load i64, ptr %158, align 8
  %184 = load ptr, ptr %157, align 8
  %185 = select i1 %182, i64 %166, i64 %183
  %186 = select i1 %182, ptr %165, ptr %184
  %187 = icmp eq i32 %167, 0
  br i1 %187, label %194, label %188

188:                                              ; preds = %179
  %189 = add nsw i32 %167, -1
  %190 = getelementptr [8 x i64], ptr %4, i32 0, i32 %189
  %191 = load i64, ptr %190, align 8
  %192 = add i64 %191, 1
  %193 = icmp eq i64 %183, %192
  br i1 %193, label %194, label %381

194:                                              ; preds = %188, %179
  %195 = add nuw nsw i32 %167, 1
  %196 = getelementptr [8 x i64], ptr %4, i32 0, i32 %167
  store i64 %183, ptr %196, align 8
  %197 = load volatile i32, ptr %5, align 8
  %198 = icmp eq i64 %168, %146
  br i1 %198, label %200, label %161

199:                                              ; preds = %141
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/mpage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 576, 0\0A.popsection", ""() #6, !srcloc !28
  unreachable

200:                                              ; preds = %194, %161
  %201 = phi i32 [ %159, %161 ], [ %195, %194 ]
  %202 = lshr i32 %197, 9
  %203 = and i32 %202, 1
  br label %204

204:                                              ; preds = %200, %124
  %205 = phi i32 [ %116, %124 ], [ %201, %200 ]
  %206 = phi ptr [ %117, %124 ], [ %184, %200 ]
  %207 = phi i32 [ %118, %124 ], [ %203, %200 ]
  %208 = phi i64 [ %119, %124 ], [ %185, %200 ]
  %209 = phi ptr [ %120, %124 ], [ %186, %200 ]
  %210 = lshr i64 %25, 12
  %211 = trunc i64 %210 to i32
  %212 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %213 = load i32, ptr %212, align 4
  %214 = icmp ult i32 %213, %211
  br i1 %214, label %222, label %215

215:                                              ; preds = %204
  %216 = trunc i64 %25 to i32
  %217 = and i32 %216, 4095
  %218 = icmp ule i32 %213, %211
  %219 = icmp ne i32 %217, 0
  %220 = select i1 %218, i1 %219, i1 false
  br i1 %220, label %221, label %381

221:                                              ; preds = %215
  call void @zero_user_segments(ptr noundef %0, i32 noundef %217, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #6
  br label %222

222:                                              ; preds = %221, %204
  %223 = icmp eq ptr %6, null
  br i1 %223, label %234, label %224

224:                                              ; preds = %222
  %225 = getelementptr inbounds %struct.mpage_data, ptr %2, i32 0, i32 1
  %226 = load i64, ptr %225, align 8
  %227 = load i64, ptr %4, align 8
  %228 = add i64 %227, -1
  %229 = icmp eq i64 %226, %228
  br i1 %229, label %234, label %230

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 10
  store ptr @mpage_end_io, ptr %231, align 4
  %232 = or i32 %46, 1
  %233 = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 2
  store i32 %232, ptr %233, align 4
  call void @guard_bio_eod(ptr noundef nonnull %6) #6
  call void @submit_bio(ptr noundef nonnull %6) #6
  br label %234

234:                                              ; preds = %230, %224, %222
  %235 = phi ptr [ null, %230 ], [ %6, %224 ], [ null, %222 ]
  %236 = icmp eq i32 %205, %29
  %237 = add nsw i32 %12, -9
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 20
  %240 = shl i32 %205, %12
  %241 = or i32 %46, 1
  %242 = load i64, ptr %4, align 8
  %243 = shl i64 %242, %238
  %244 = shl i64 %242, %238
  br label %245

245:                                              ; preds = %305, %234
  %246 = phi ptr [ %235, %234 ], [ null, %305 ]
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %301

248:                                              ; preds = %245
  br i1 %236, label %249, label %252

249:                                              ; preds = %248
  %250 = call i32 @bdev_write_page(ptr noundef %206, i64 noundef %244, ptr noundef %0, ptr noundef %1) #6
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %409, label %252

252:                                              ; preds = %249, %248
  %253 = phi i64 [ %244, %249 ], [ %243, %248 ]
  %254 = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 256, ptr noundef nonnull @fs_bio_set) #6
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %286

256:                                              ; preds = %252
  %257 = tail call ptr @llvm.thread.pointer() #6
  %258 = getelementptr inbounds %struct.task_struct, ptr %257, i32 0, i32 4
  %259 = load i32, ptr %258, align 4
  %260 = and i32 %259, 2048
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %387, label %262

262:                                              ; preds = %256
  %263 = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 128, ptr noundef nonnull @fs_bio_set) #6
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %286

265:                                              ; preds = %262
  %266 = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 64, ptr noundef nonnull @fs_bio_set) #6
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %286

268:                                              ; preds = %265
  %269 = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 32, ptr noundef nonnull @fs_bio_set) #6
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %286

271:                                              ; preds = %268
  %272 = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 16, ptr noundef nonnull @fs_bio_set) #6
  %273 = icmp eq ptr %272, null
  br i1 %273, label %274, label %286

274:                                              ; preds = %271
  %275 = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 8, ptr noundef nonnull @fs_bio_set) #6
  %276 = icmp eq ptr %275, null
  br i1 %276, label %277, label %286

277:                                              ; preds = %274
  %278 = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 4, ptr noundef nonnull @fs_bio_set) #6
  %279 = icmp eq ptr %278, null
  br i1 %279, label %280, label %286

280:                                              ; preds = %277
  %281 = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 2, ptr noundef nonnull @fs_bio_set) #6
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %286

283:                                              ; preds = %280
  %284 = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #6
  %285 = icmp eq ptr %284, null
  br i1 %285, label %387, label %286

286:                                              ; preds = %283, %280, %277, %274, %271, %268, %265, %262, %252
  %287 = phi ptr [ %254, %252 ], [ %263, %262 ], [ %266, %265 ], [ %269, %268 ], [ %272, %271 ], [ %275, %274 ], [ %278, %277 ], [ %281, %280 ], [ %284, %283 ]
  %288 = getelementptr inbounds %struct.bio, ptr %287, i32 0, i32 3
  %289 = load i16, ptr %288, align 4
  %290 = and i16 %289, -2049
  store i16 %290, ptr %288, align 4
  %291 = getelementptr inbounds %struct.bio, ptr %287, i32 0, i32 1
  %292 = load ptr, ptr %291, align 4
  %293 = icmp eq ptr %292, %206
  br i1 %293, label %296, label %294

294:                                              ; preds = %286
  %295 = and i16 %289, -2177
  store i16 %295, ptr %288, align 4
  br label %296

296:                                              ; preds = %294, %286
  store ptr %206, ptr %291, align 4
  %297 = getelementptr inbounds %struct.bio, ptr %287, i32 0, i32 8
  store i64 %253, ptr %297, align 4
  %298 = load i8, ptr %239, align 1
  %299 = zext i8 %298 to i16
  %300 = getelementptr inbounds %struct.bio, ptr %287, i32 0, i32 5
  store i16 %299, ptr %300, align 4
  br label %301

301:                                              ; preds = %296, %245
  %302 = phi ptr [ %287, %296 ], [ %246, %245 ]
  %303 = call i32 @bio_add_page(ptr noundef nonnull %302, ptr noundef %0, i32 noundef %240, i32 noundef 0) #6
  %304 = icmp slt i32 %303, %240
  br i1 %304, label %305, label %308

305:                                              ; preds = %301
  %306 = getelementptr inbounds %struct.bio, ptr %302, i32 0, i32 10
  store ptr @mpage_end_io, ptr %306, align 4
  %307 = getelementptr inbounds %struct.bio, ptr %302, i32 0, i32 2
  store i32 %241, ptr %307, align 4
  call void @guard_bio_eod(ptr noundef nonnull %302) #6
  call void @submit_bio(ptr noundef nonnull %302) #6
  br label %245

308:                                              ; preds = %301
  %309 = load volatile i32, ptr %0, align 4
  %310 = and i32 %309, 8192
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %350, label %312

312:                                              ; preds = %308
  %313 = load volatile i32, ptr %0, align 4
  %314 = and i32 %313, 8192
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %317, !prof !8

316:                                              ; preds = %312
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/mpage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 442, 0\0A.popsection", ""() #6, !srcloc !24
  unreachable

317:                                              ; preds = %312
  %318 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %319 = load i32, ptr %318, align 4
  %320 = inttoptr i32 %319 to ptr
  br label %321

321:                                              ; preds = %325, %317
  %322 = phi ptr [ %320, %317 ], [ %328, %325 ]
  %323 = phi i32 [ 0, %317 ], [ %326, %325 ]
  %324 = icmp eq i32 %323, %205
  br i1 %324, label %330, label %325

325:                                              ; preds = %321
  %326 = add i32 %323, 1
  call void @_clear_bit(i32 noundef 1, ptr noundef %322) #6
  %327 = getelementptr inbounds %struct.buffer_head, ptr %322, i32 0, i32 1
  %328 = load ptr, ptr %327, align 4
  %329 = icmp eq ptr %328, %320
  br i1 %329, label %330, label %321

330:                                              ; preds = %325, %321
  %331 = load i32, ptr @buffer_heads_over_limit, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %350, label %333

333:                                              ; preds = %330
  %334 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %335 = load volatile i32, ptr %334, align 4
  %336 = and i32 %335, 1
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %340, label %338, !prof !11

338:                                              ; preds = %333
  %339 = add i32 %335, -1
  br label %342

340:                                              ; preds = %333
  %341 = ptrtoint ptr %0 to i32
  br label %342

342:                                              ; preds = %340, %338
  %343 = phi i32 [ %339, %338 ], [ %341, %340 ]
  %344 = inttoptr i32 %343 to ptr
  %345 = load volatile i32, ptr %344, align 4
  %346 = and i32 %345, 4
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %350, label %348

348:                                              ; preds = %342
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  %349 = call i32 @try_to_free_buffers(ptr noundef %0) #6
  br label %350

350:                                              ; preds = %348, %342, %330, %308
  %351 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %352 = load volatile i32, ptr %351, align 4
  %353 = and i32 %352, 1
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %357, label %355, !prof !11

355:                                              ; preds = %350
  %356 = add i32 %352, -1
  br label %359

357:                                              ; preds = %350
  %358 = ptrtoint ptr %0 to i32
  br label %359

359:                                              ; preds = %357, %355
  %360 = phi i32 [ %356, %355 ], [ %358, %357 ]
  %361 = inttoptr i32 %360 to ptr
  %362 = load volatile i32, ptr %361, align 4
  %363 = and i32 %362, 32768
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %366, label %365, !prof !11

365:                                              ; preds = %359
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/mpage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 634, 0\0A.popsection", ""() #6, !srcloc !29
  unreachable

366:                                              ; preds = %359
  %367 = call zeroext i1 @set_page_writeback(ptr noundef %0) #6
  call void @unlock_page(ptr noundef %0) #6
  %368 = icmp eq i32 %207, 0
  %369 = select i1 %368, i1 %236, i1 false
  br i1 %369, label %376, label %370

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct.bio, ptr %302, i32 0, i32 10
  store ptr @mpage_end_io, ptr %371, align 4
  %372 = getelementptr inbounds %struct.bio, ptr %302, i32 0, i32 2
  store i32 %241, ptr %372, align 4
  call void @guard_bio_eod(ptr noundef %302) #6
  call void @submit_bio(ptr noundef %302) #6
  %373 = icmp eq i64 %208, 0
  br i1 %373, label %409, label %374

374:                                              ; preds = %370
  %375 = shl nuw i32 1, %12
  call void @write_boundary_block(ptr noundef %209, i64 noundef %208, i32 noundef %375) #6
  br label %409

376:                                              ; preds = %366
  %377 = add nsw i32 %29, -1
  %378 = getelementptr [8 x i64], ptr %4, i32 0, i32 %377
  %379 = load i64, ptr %378, align 8
  %380 = getelementptr inbounds %struct.mpage_data, ptr %2, i32 0, i32 1
  store i64 %379, ptr %380, align 8
  br label %409

381:                                              ; preds = %215, %188, %164, %124, %96, %88, %84, %82, %75
  %382 = icmp eq ptr %6, null
  br i1 %382, label %387, label %383

383:                                              ; preds = %381
  %384 = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 10
  store ptr @mpage_end_io, ptr %384, align 4
  %385 = or i32 %46, 1
  %386 = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 2
  store i32 %385, ptr %386, align 4
  call void @guard_bio_eod(ptr noundef nonnull %6) #6
  call void @submit_bio(ptr noundef nonnull %6) #6
  br label %387

387:                                              ; preds = %383, %381, %283, %256
  %388 = getelementptr inbounds %struct.mpage_data, ptr %2, i32 0, i32 3
  %389 = load i32, ptr %388, align 4
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %409, label %391

391:                                              ; preds = %387
  %392 = getelementptr inbounds %struct.address_space, ptr %8, i32 0, i32 9
  %393 = load ptr, ptr %392, align 4
  %394 = load ptr, ptr %393, align 4
  %395 = call i32 %394(ptr noundef %0, ptr noundef %1) #6
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %409, label %397, !prof !11

397:                                              ; preds = %391
  call void @__filemap_set_wb_err(ptr noundef %8, i32 noundef %395) #6
  %398 = load ptr, ptr %8, align 4
  %399 = icmp eq ptr %398, null
  br i1 %399, label %405, label %400

400:                                              ; preds = %397
  %401 = getelementptr inbounds %struct.inode, ptr %398, i32 0, i32 8
  %402 = load ptr, ptr %401, align 4
  %403 = getelementptr inbounds %struct.super_block, ptr %402, i32 0, i32 44
  %404 = call i32 @errseq_set(ptr noundef %403, i32 noundef %395) #6
  br label %405

405:                                              ; preds = %400, %397
  %406 = icmp eq i32 %395, -28
  %407 = getelementptr inbounds %struct.address_space, ptr %8, i32 0, i32 10
  %408 = zext i1 %406 to i32
  call void @_set_bit(i32 noundef %408, ptr noundef %407) #6
  br label %409

409:                                              ; preds = %405, %391, %387, %376, %374, %370, %249
  %410 = phi ptr [ null, %374 ], [ null, %370 ], [ %302, %376 ], [ null, %387 ], [ null, %391 ], [ null, %405 ], [ null, %249 ]
  %411 = phi i32 [ 0, %374 ], [ 0, %370 ], [ 0, %376 ], [ -11, %387 ], [ 0, %391 ], [ %395, %405 ], [ 0, %249 ]
  store ptr %410, ptr %2, align 8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  ret i32 %411
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpage_writepage(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.mpage_data, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.mpage_data, ptr %4, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store ptr %1, ptr %5, align 8
  %6 = call i32 @__mpage_writepage(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4)
  %7 = load ptr, ptr %4, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.writeback_control, ptr %2, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 1
  %13 = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 10
  store ptr @mpage_end_io, ptr %13, align 4
  %14 = select i1 %12, i32 2049, i32 1
  %15 = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  tail call void @guard_bio_eod(ptr noundef nonnull %7) #6
  tail call void @submit_bio(ptr noundef nonnull %7) #6
  br label %16

16:                                               ; preds = %9, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_read_page(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_read_full_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_empty_buffers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mpage_end_io(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 13
  %3 = load i16, ptr %2, align 4
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  %7 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 6
  br label %9

9:                                                ; preds = %25, %5
  %10 = phi i32 [ 0, %5 ], [ %37, %25 ]
  %11 = phi i32 [ 0, %5 ], [ %36, %25 ]
  %12 = phi ptr [ null, %5 ], [ %26, %25 ]
  %13 = load ptr, ptr %6, align 4
  %14 = icmp eq i32 %10, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = getelementptr %struct.page, ptr %12, i32 1
  br label %25

17:                                               ; preds = %9
  %18 = getelementptr %struct.bio_vec, ptr %13, i32 %11
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.bio_vec, ptr %13, i32 %11, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 12
  %23 = getelementptr %struct.page, ptr %19, i32 %22
  %24 = and i32 %21, 4095
  br label %25

25:                                               ; preds = %17, %15
  %26 = phi ptr [ %23, %17 ], [ %16, %15 ]
  %27 = phi i32 [ %24, %17 ], [ 0, %15 ]
  %28 = sub nuw nsw i32 4096, %27
  %29 = getelementptr %struct.bio_vec, ptr %13, i32 %11, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = sub i32 %30, %10
  %32 = tail call i32 @llvm.umin.i32(i32 %28, i32 %31) #6
  %33 = add i32 %32, %10
  %34 = icmp eq i32 %33, %30
  %35 = zext i1 %34 to i32
  %36 = add nuw nsw i32 %11, %35
  %37 = select i1 %34, i32 0, i32 %33
  %38 = load i32, ptr %7, align 4
  %39 = and i32 %38, 255
  %40 = icmp ne i32 %39, 0
  %41 = load i8, ptr %8, align 2
  %42 = tail call i32 @blk_status_to_errno(i8 noundef zeroext %41) #6
  tail call void @page_endio(ptr noundef %26, i1 noundef zeroext %40, i32 noundef %42) #6
  %43 = load i16, ptr %2, align 4
  %44 = zext i16 %43 to i32
  %45 = icmp ult i32 %36, %44
  br i1 %45, label %9, label %46

46:                                               ; preds = %25, %1
  tail call void @bio_put(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @guard_bio_eod(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_endio(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_buffers(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_write_page(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_writeback(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_boundary_block(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clean_bdev_aliases(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2152948200, i64 2152948689, i64 2152948237, i64 2152948293, i64 2152948327, i64 2152948351, i64 2152948392, i64 2152948413, i64 2152948441, i64 2152948475}
!10 = !{i64 429147, i64 2147919118, i64 2147919144, i64 2147919191, i64 2147919213, i64 2147919241, i64 2147919261}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148031985}
!13 = !{i64 2147934371, i64 2147934403, i64 2147934432, i64 2147934466, i64 2147934497, i64 2147934520}
!14 = !{i64 2148032188}
!15 = !{!"auto-init"}
!16 = !{i8 0, i8 2}
!17 = !{i64 2151835357}
!18 = !{i64 2151835199}
!19 = !{i64 2151835501}
!20 = !{i64 2149269078}
!21 = !{i64 2149858397}
!22 = !{i64 2153632956, i64 2153633431, i64 2153632993, i64 2153633049, i64 2153633083, i64 2153633107, i64 2153633148, i64 2153633169, i64 2153633197, i64 2153633231}
!23 = !{i64 2149857376}
!24 = !{i64 2153636981, i64 2153637456, i64 2153637018, i64 2153637074, i64 2153637108, i64 2153637132, i64 2153637173, i64 2153637194, i64 2153637222, i64 2153637256}
!25 = !{i64 2153638301, i64 2153638776, i64 2153638338, i64 2153638394, i64 2153638428, i64 2153638452, i64 2153638493, i64 2153638514, i64 2153638542, i64 2153638576}
!26 = !{i64 2153639323, i64 2153639798, i64 2153639360, i64 2153639416, i64 2153639450, i64 2153639474, i64 2153639515, i64 2153639536, i64 2153639564, i64 2153639598}
!27 = !{i64 2153640326, i64 2153640801, i64 2153640363, i64 2153640419, i64 2153640453, i64 2153640477, i64 2153640518, i64 2153640539, i64 2153640567, i64 2153640601}
!28 = !{i64 2153641324, i64 2153641799, i64 2153641361, i64 2153641417, i64 2153641451, i64 2153641475, i64 2153641516, i64 2153641537, i64 2153641565, i64 2153641599}
!29 = !{i64 2153642711, i64 2153643186, i64 2153642748, i64 2153642804, i64 2153642838, i64 2153642862, i64 2153642903, i64 2153642924, i64 2153642952, i64 2153642986}
