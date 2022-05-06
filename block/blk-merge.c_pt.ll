; ModuleID = '/llk/IR/block/blk-merge.c_pt.bc'
source_filename = "../block/blk-merge.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_queue_split:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_queue_split\22\09\09\09\09\09"
module asm "__kstrtabns_blk_queue_split:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___blk_rq_map_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22__blk_rq_map_sg\22\09\09\09\09\09"
module asm "__kstrtabns___blk_rq_map_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_bio_list_merge:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_bio_list_merge\22\09\09\09\09\09"
module asm "__kstrtabns_blk_bio_list_merge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_sched_try_merge:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_sched_try_merge\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_sched_try_merge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.41, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.41 = type {}
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.lockdep_map = type {}
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.70, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.76, %union.anon.77, %union.anon.78, %union.anon.83, ptr, ptr }
%union.anon.70 = type { %struct.list_head }
%union.anon.76 = type { %struct.hlist_node }
%union.anon.77 = type { %struct.rb_node }
%union.anon.78 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, %struct.list_head, ptr }
%union.anon.83 = type { i64, [8 x i8] }
%struct.page = type { i32, %union.anon.2, %union.anon.69, %struct.atomic_t }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.21 }
%struct.llist_node = type { ptr }
%union.anon.21 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.56 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.elevator_type = type { ptr, %struct.elevator_mq_ops, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.disk_stats = type { [4 x i64], [4 x i32], [4 x i32], [4 x i32], i32, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic_t }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__kstrtab_blk_queue_split = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_queue_split = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_queue_split = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_queue_split to i32), ptr @__kstrtab_blk_queue_split, ptr @__kstrtabns_blk_queue_split }, section "___ksymtab+blk_queue_split", align 4
@.str = private unnamed_addr constant [18 x i8] c"block/blk-merge.c\00", align 1
@__kstrtab___blk_rq_map_sg = external dso_local constant [0 x i8], align 1
@__kstrtabns___blk_rq_map_sg = external dso_local constant [0 x i8], align 1
@__ksymtab___blk_rq_map_sg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__blk_rq_map_sg to i32), ptr @__kstrtab___blk_rq_map_sg, ptr @__kstrtabns___blk_rq_map_sg }, section "___ksymtab+__blk_rq_map_sg", align 4
@blk_rq_set_mixed_merge.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_blk_bio_list_merge = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_bio_list_merge = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_bio_list_merge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_bio_list_merge to i32), ptr @__kstrtab_blk_bio_list_merge, ptr @__kstrtabns_blk_bio_list_merge }, section "___ksymtab_gpl+blk_bio_list_merge", align 4
@__kstrtab_blk_mq_sched_try_merge = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_sched_try_merge = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_sched_try_merge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_sched_try_merge to i32), ptr @__kstrtab_blk_mq_sched_try_merge, ptr @__kstrtabns_blk_mq_sched_try_merge }, section "___ksymtab_gpl+blk_mq_sched_try_merge", align 4
@__tracepoint_block_split = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_block_rq_merge = external dso_local global %struct.tracepoint, align 4
@__tracepoint_block_bio_backmerge = external dso_local global %struct.tracepoint, align 4
@__tracepoint_block_bio_frontmerge = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab___blk_rq_map_sg, ptr @__ksymtab_blk_bio_list_merge, ptr @__ksymtab_blk_mq_sched_try_merge, ptr @__ksymtab_blk_queue_split], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__blk_queue_split(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.bio_vec, align 4
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = trunc i32 %7 to i8
  switch i8 %8, label %86 [
    i8 3, label %9
    i8 5, label %9
    i8 9, label %62
    i8 7, label %74
  ]

9:                                                ; preds = %3, %3
  %10 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 51
  store i32 1, ptr %2, align 4
  %11 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 18
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %12, 9
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 1) #11
  %15 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 13
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq ptr %0, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 512, i32 %20
  br label %23

23:                                               ; preds = %18, %9
  %24 = phi i32 [ 512, %9 ], [ %22, %18 ]
  %25 = sub i32 0, %24
  %26 = lshr i32 %25, 9
  %27 = tail call i32 @llvm.umin.i32(i32 %16, i32 %26) #11
  %28 = urem i32 %27, %14
  %29 = sub nsw i32 %27, %28
  %30 = icmp eq i32 %27, %28
  br i1 %30, label %322, label %31, !prof !9

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 8, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = lshr i32 %33, 9
  %35 = icmp ugt i32 %34, %29
  br i1 %35, label %36, label %322

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 8
  %38 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 19
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 9
  %41 = urem i32 %40, %14
  %42 = load i64, ptr %37, align 4
  %43 = zext i32 %29 to i64
  %44 = add i64 %42, %43
  %45 = zext i32 %41 to i64
  %46 = sub i64 %44, %45
  %47 = icmp ult i64 %46, 4294967296
  br i1 %47, label %48, label %51, !prof !10

48:                                               ; preds = %36
  %49 = trunc i64 %46 to i32
  %50 = urem i32 %49, %14
  br label %56

51:                                               ; preds = %36
  %52 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %46) #12, !srcloc !11
  %53 = extractvalue { i64, i64 } %52, 0
  %54 = lshr i64 %53, 32
  %55 = trunc i64 %54 to i32
  br label %56

56:                                               ; preds = %51, %48
  %57 = phi i32 [ %50, %48 ], [ %55, %51 ]
  %58 = icmp ugt i32 %29, %57
  %59 = select i1 %58, i32 %57, i32 0
  %60 = sub i32 %29, %59
  %61 = tail call ptr @bio_split(ptr noundef %5, i32 noundef %60, i32 noundef 3072, ptr noundef %10) #11
  br label %292

62:                                               ; preds = %3
  %63 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 51
  store i32 0, ptr %2, align 4
  %64 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 16
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %322, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 8, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = lshr i32 %69, 9
  %71 = icmp ugt i32 %70, %65
  br i1 %71, label %72, label %322

72:                                               ; preds = %67
  %73 = tail call ptr @bio_split(ptr noundef %5, i32 noundef %65, i32 noundef 3072, ptr noundef %63) #11
  br label %292

74:                                               ; preds = %3
  %75 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 51
  store i32 1, ptr %2, align 4
  %76 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 15
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %322, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 8, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = lshr i32 %81, 9
  %83 = icmp ugt i32 %82, %77
  br i1 %83, label %84, label %322

84:                                               ; preds = %79
  %85 = tail call ptr @bio_split(ptr noundef %5, i32 noundef %77, i32 noundef 3072, ptr noundef %75) #11
  br label %292

86:                                               ; preds = %3
  %87 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 51
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #11, !annotation !12
  %88 = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 8
  %89 = load i64, ptr %88, align 4
  %90 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 5
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 6
  %95 = load i32, ptr %94, align 4
  br label %119

96:                                               ; preds = %86
  %97 = tail call i32 @llvm.ctpop.i32(i32 %91) #11, !range !13
  %98 = icmp ult i32 %97, 2
  br i1 %98, label %99, label %103, !prof !10

99:                                               ; preds = %96
  %100 = add i32 %91, -1
  %101 = trunc i64 %89 to i32
  %102 = and i32 %100, %101
  br label %113

103:                                              ; preds = %96
  %104 = icmp ult i64 %89, 4294967296
  br i1 %104, label %105, label %108, !prof !10

105:                                              ; preds = %103
  %106 = trunc i64 %89 to i32
  %107 = urem i32 %106, %91
  br label %113

108:                                              ; preds = %103
  %109 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %91, i64 %89) #12, !srcloc !11
  %110 = extractvalue { i64, i64 } %109, 0
  %111 = lshr i64 %110, 32
  %112 = trunc i64 %111 to i32
  br label %113

113:                                              ; preds = %108, %105, %99
  %114 = phi i32 [ %102, %99 ], [ %107, %105 ], [ %112, %108 ]
  %115 = sub i32 %91, %114
  %116 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 6
  %117 = load i32, ptr %116, align 4
  %118 = tail call i32 @llvm.umin.i32(i32 %117, i32 %115) #11
  br label %119

119:                                              ; preds = %113, %93
  %120 = phi i32 [ %118, %113 ], [ %95, %93 ]
  %121 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 8
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq ptr %0, null
  br i1 %123, label %130, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 9
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, 0
  %128 = lshr i32 %126, 9
  %129 = select i1 %127, i32 1, i32 %128
  br label %130

130:                                              ; preds = %124, %119
  %131 = phi i32 [ 1, %119 ], [ %129, %124 ]
  %132 = lshr i32 %122, 9
  %133 = add nsw i32 %132, -1
  %134 = trunc i64 %89 to i32
  %135 = and i32 %133, %134
  %136 = add i32 %135, %120
  %137 = sub nsw i32 0, %132
  %138 = and i32 %136, %137
  %139 = icmp ugt i32 %138, %135
  %140 = sub i32 %138, %135
  %141 = sub nsw i32 0, %131
  %142 = and i32 %120, %141
  %143 = select i1 %139, i32 %140, i32 %142
  %144 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 21
  %145 = load i16, ptr %144, align 4
  %146 = zext i16 %145 to i32
  %147 = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 8, i32 1
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %279, label %150

150:                                              ; preds = %130
  %151 = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 8, i32 3
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 8, i32 2
  %154 = load i32, ptr %153, align 4
  %155 = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 16
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 2
  %158 = tail call i32 @llvm.umin.i32(i32 %143, i32 8388607) #11
  %159 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 1
  %160 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 7
  %161 = load ptr, ptr @mem_map, align 4
  %162 = ptrtoint ptr %161 to i32
  %163 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %164 = getelementptr inbounds i8, ptr %4, i32 4
  %165 = getelementptr inbounds i8, ptr %4, i32 8
  br label %166

166:                                              ; preds = %274, %150
  %167 = phi ptr [ null, %150 ], [ %4, %274 ]
  %168 = phi i32 [ 0, %150 ], [ %261, %274 ]
  %169 = phi i32 [ 0, %150 ], [ %260, %274 ]
  %170 = phi i32 [ %152, %150 ], [ %276, %274 ]
  %171 = phi i32 [ %154, %150 ], [ %275, %274 ]
  %172 = phi i32 [ %148, %150 ], [ %277, %274 ]
  %173 = getelementptr %struct.bio_vec, ptr %156, i32 %171
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr %struct.bio_vec, ptr %156, i32 %171, i32 1
  %176 = load i32, ptr %175, align 4
  %177 = sub i32 %176, %170
  %178 = call i32 @llvm.umin.i32(i32 %172, i32 %177) #11
  %179 = getelementptr %struct.bio_vec, ptr %156, i32 %171, i32 2
  %180 = load i32, ptr %179, align 4
  %181 = add i32 %180, %170
  %182 = icmp eq ptr %167, null
  br i1 %182, label %197, label %183

183:                                              ; preds = %166
  %184 = load i32, ptr %157, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %197, label %186

186:                                              ; preds = %183
  %187 = and i32 %184, %181
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %281

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.bio_vec, ptr %167, i32 0, i32 2
  %191 = load i32, ptr %190, align 4
  %192 = getelementptr inbounds %struct.bio_vec, ptr %167, i32 0, i32 1
  %193 = load i32, ptr %192, align 4
  %194 = add i32 %193, %191
  %195 = and i32 %194, %184
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %281

197:                                              ; preds = %189, %183, %166
  %198 = icmp ult i32 %169, %146
  br i1 %198, label %199, label %208

199:                                              ; preds = %197
  %200 = lshr i32 %178, 9
  %201 = add i32 %200, %168
  %202 = icmp ule i32 %201, %143
  %203 = add i32 %181, %178
  %204 = icmp ult i32 %203, 4097
  %205 = select i1 %202, i1 %204, i1 false
  br i1 %205, label %206, label %208

206:                                              ; preds = %199
  %207 = add nuw i32 %169, 1
  br label %259

208:                                              ; preds = %199, %197
  %209 = sub i32 %158, %168
  %210 = shl i32 %209, 9
  %211 = call i32 @llvm.umin.i32(i32 %178, i32 %210) #11
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %255, label %213

213:                                              ; preds = %208
  %214 = ptrtoint ptr %174 to i32
  %215 = sub i32 %214, %162
  %216 = lshr exact i32 %215, 5
  %217 = add i32 %216, %163
  %218 = shl i32 %217, 12
  %219 = call i32 @llvm.umax.i32(i32 %169, i32 %146) #11
  %220 = add i32 %218, %181
  br label %221

221:                                              ; preds = %229, %213
  %222 = phi i32 [ %169, %213 ], [ %242, %229 ]
  %223 = phi i32 [ 0, %213 ], [ %243, %229 ]
  %224 = phi i32 [ %211, %213 ], [ %244, %229 ]
  %225 = icmp eq i32 %222, %219
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = lshr i32 %223, 9
  %228 = add i32 %227, %168
  br label %281

229:                                              ; preds = %221
  %230 = load i32, ptr %159, align 4
  %231 = add i32 %220, %223
  %232 = xor i32 %231, -1
  %233 = and i32 %230, %232
  %234 = add i32 %233, 1
  %235 = load i32, ptr %160, align 4
  %236 = icmp eq i32 %234, 0
  %237 = icmp eq i32 %235, 0
  %238 = call i32 @llvm.umin.i32(i32 %234, i32 %235) #11
  %239 = select i1 %237, i32 %234, i32 %238
  %240 = select i1 %236, i32 %235, i32 %239
  %241 = call i32 @llvm.umin.i32(i32 %240, i32 %224) #11
  %242 = add i32 %222, 1
  %243 = add i32 %241, %223
  %244 = sub i32 %224, %241
  %245 = add i32 %243, %181
  %246 = load i32, ptr %157, align 4
  %247 = and i32 %245, %246
  %248 = icmp eq i32 %247, 0
  %249 = icmp ne i32 %244, 0
  %250 = select i1 %248, i1 %249, i1 false
  br i1 %250, label %221, label %251

251:                                              ; preds = %229
  %252 = lshr i32 %243, 9
  %253 = add i32 %252, %168
  %254 = icmp eq i32 %244, 0
  br i1 %254, label %255, label %281

255:                                              ; preds = %251, %208
  %256 = phi i32 [ %169, %208 ], [ %242, %251 ]
  %257 = phi i32 [ %168, %208 ], [ %253, %251 ]
  %258 = icmp ugt i32 %178, %210
  br i1 %258, label %281, label %259

259:                                              ; preds = %255, %206
  %260 = phi i32 [ %256, %255 ], [ %207, %206 ]
  %261 = phi i32 [ %257, %255 ], [ %201, %206 ]
  store ptr %174, ptr %4, align 4
  store i32 %178, ptr %164, align 4
  store i32 %181, ptr %165, align 4
  %262 = load i32, ptr %6, align 4
  %263 = and i32 %262, 255
  %264 = add nsw i32 %263, -3
  %265 = and i32 %264, -7
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %274, label %267

267:                                              ; preds = %259
  %268 = add i32 %178, %170
  %269 = load i32, ptr %175, align 4
  %270 = icmp eq i32 %268, %269
  %271 = zext i1 %270 to i32
  %272 = add i32 %171, %271
  %273 = select i1 %270, i32 0, i32 %268
  br label %274

274:                                              ; preds = %267, %259
  %275 = phi i32 [ %171, %259 ], [ %272, %267 ]
  %276 = phi i32 [ %170, %259 ], [ %273, %267 ]
  %277 = sub i32 %172, %178
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %166

279:                                              ; preds = %274, %130
  %280 = phi i32 [ 0, %130 ], [ %260, %274 ]
  store i32 %280, ptr %2, align 4
  br label %290

281:                                              ; preds = %255, %251, %226, %189, %186
  %282 = phi i32 [ %219, %226 ], [ %256, %255 ], [ %169, %189 ], [ %169, %186 ], [ %242, %251 ]
  %283 = phi i32 [ %228, %226 ], [ %257, %255 ], [ %168, %189 ], [ %168, %186 ], [ %253, %251 ]
  store i32 %282, ptr %2, align 4
  %284 = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 3
  %285 = load i16, ptr %284, align 4
  %286 = and i16 %285, -8193
  store i16 %286, ptr %284, align 4
  %287 = load i32, ptr %6, align 4
  %288 = and i32 %287, -16777217
  store i32 %288, ptr %6, align 4
  %289 = call ptr @bio_split(ptr noundef %5, i32 noundef %283, i32 noundef 3072, ptr noundef %87) #11
  br label %290

290:                                              ; preds = %281, %279
  %291 = phi ptr [ %289, %281 ], [ null, %279 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  br label %292

292:                                              ; preds = %290, %84, %72, %56
  %293 = phi ptr [ %291, %290 ], [ %61, %56 ], [ %73, %72 ], [ %85, %84 ]
  %294 = icmp eq ptr %293, null
  br i1 %294, label %322, label %295

295:                                              ; preds = %292
  %296 = getelementptr inbounds %struct.bio, ptr %293, i32 0, i32 2
  %297 = load i32, ptr %296, align 4
  %298 = or i32 %297, 16384
  store i32 %298, ptr %296, align 4
  %299 = load ptr, ptr %1, align 4
  call void @bio_chain(ptr noundef nonnull %293, ptr noundef %299) #11
  %300 = load ptr, ptr %1, align 4
  %301 = getelementptr inbounds %struct.bio, ptr %300, i32 0, i32 8
  %302 = load i64, ptr %301, align 4
  %303 = trunc i64 %302 to i32
  %304 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_split, i32 0, i32 1), align 4
  %305 = icmp sgt i32 %304, 0
  br i1 %305, label %306, label %320

306:                                              ; preds = %295
  %307 = tail call ptr @llvm.thread.pointer() #11
  %308 = getelementptr inbounds %struct.thread_info, ptr %307, i32 0, i32 2
  %309 = load i32, ptr %308, align 8
  %310 = lshr i32 %309, 5
  %311 = getelementptr i32, ptr @__cpu_online_mask, i32 %310
  %312 = load volatile i32, ptr %311, align 4
  %313 = and i32 %309, 31
  %314 = shl nuw i32 1, %313
  %315 = and i32 %314, %312
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %320, label %317

317:                                              ; preds = %306
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %318 = call i32 @__traceiter_block_split(ptr noundef null, ptr noundef nonnull %293, i32 noundef %303) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %319 = load ptr, ptr %1, align 4
  br label %320

320:                                              ; preds = %317, %306, %295
  %321 = phi ptr [ %300, %295 ], [ %300, %306 ], [ %319, %317 ]
  call void @submit_bio_noacct(ptr noundef %321) #11
  store ptr %293, ptr %1, align 4
  br label %322

322:                                              ; preds = %320, %292, %79, %74, %67, %62, %31, %23
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_queue_split(ptr nocapture noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 18
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %8 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %11 [
    i8 3, label %28
    i8 5, label %28
    i8 9, label %28
    i8 7, label %28
  ]

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 32, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 13
  %17 = load i16, ptr %16, align 4
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 16
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.bio_vec, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.bio_vec, ptr %21, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %23
  %27 = icmp ugt i32 %26, 4096
  br i1 %27, label %28, label %29

28:                                               ; preds = %19, %15, %11, %1, %1, %1, %1
  call void @__blk_queue_split(ptr noundef %7, ptr noundef %0, ptr noundef nonnull %2)
  br label %29

29:                                               ; preds = %28, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_recalc_rq_segments(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %127, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = trunc i32 %7 to i8
  switch i8 %8, label %9 [
    i8 3, label %13
    i8 5, label %13
    i8 9, label %127
    i8 7, label %24
  ]

9:                                                ; preds = %5
  %10 = load ptr, ptr @mem_map, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = load i32, ptr @__pv_phys_pfn_offset, align 4
  br label %25

13:                                               ; preds = %5, %5
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %struct.request_queue, ptr %14, i32 0, i32 32, i32 23
  %16 = load i16, ptr %15, align 4
  %17 = icmp ugt i16 %16, 1
  br i1 %17, label %18, label %127

18:                                               ; preds = %18, %13
  %19 = phi i32 [ %21, %18 ], [ 0, %13 ]
  %20 = phi ptr [ %22, %18 ], [ %3, %13 ]
  %21 = add i32 %19, 1
  %22 = load ptr, ptr %20, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %127, label %18

24:                                               ; preds = %5
  br label %127

25:                                               ; preds = %122, %9
  %26 = phi ptr [ %3, %9 ], [ %125, %122 ]
  %27 = phi i32 [ 0, %9 ], [ %124, %122 ]
  %28 = phi i32 [ 0, %9 ], [ %123, %122 ]
  %29 = getelementptr inbounds %struct.bio, ptr %26, i32 0, i32 8, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %122, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.bio, ptr %26, i32 0, i32 8, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.bio, ptr %26, i32 0, i32 8, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.bio, ptr %26, i32 0, i32 16
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.bio, ptr %26, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 255
  %42 = add nsw i32 %41, -3
  %43 = and i32 %42, -7
  %44 = icmp eq i32 %43, 0
  br label %45

45:                                               ; preds = %117, %32
  %46 = phi i32 [ %34, %32 ], [ %119, %117 ]
  %47 = phi i32 [ %36, %32 ], [ %118, %117 ]
  %48 = phi i32 [ %30, %32 ], [ %120, %117 ]
  %49 = phi i32 [ %27, %32 ], [ %110, %117 ]
  %50 = phi i32 [ %28, %32 ], [ %109, %117 ]
  %51 = getelementptr %struct.bio_vec, ptr %38, i32 %47, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = sub i32 %52, %46
  %54 = tail call i32 @llvm.umin.i32(i32 %48, i32 %53)
  %55 = getelementptr %struct.bio_vec, ptr %38, i32 %47, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, %46
  %58 = mul i32 %49, -512
  %59 = add i32 %58, -512
  %60 = tail call i32 @llvm.umin.i32(i32 %54, i32 %59) #11
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %108, label %62

62:                                               ; preds = %45
  %63 = getelementptr %struct.bio_vec, ptr %38, i32 %47
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %0, align 8
  %66 = getelementptr inbounds %struct.request_queue, ptr %65, i32 0, i32 32, i32 1
  %67 = getelementptr inbounds %struct.request_queue, ptr %65, i32 0, i32 32, i32 7
  %68 = getelementptr inbounds %struct.request_queue, ptr %65, i32 0, i32 32, i32 2
  %69 = ptrtoint ptr %64 to i32
  %70 = sub i32 %69, %11
  %71 = lshr exact i32 %70, 5
  %72 = add i32 %71, %12
  %73 = shl i32 %72, 12
  br label %74

74:                                               ; preds = %82, %62
  %75 = phi i32 [ %50, %62 ], [ %96, %82 ]
  %76 = phi i32 [ 0, %62 ], [ %97, %82 ]
  %77 = phi i32 [ %60, %62 ], [ %98, %82 ]
  %78 = icmp eq i32 %75, -1
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = lshr i32 %76, 9
  %81 = add i32 %80, %49
  br label %108

82:                                               ; preds = %74
  %83 = add i32 %76, %57
  %84 = load i32, ptr %66, align 4
  %85 = add i32 %83, %73
  %86 = xor i32 %85, -1
  %87 = and i32 %84, %86
  %88 = add i32 %87, 1
  %89 = load i32, ptr %67, align 4
  %90 = icmp eq i32 %88, 0
  %91 = icmp eq i32 %89, 0
  %92 = tail call i32 @llvm.umin.i32(i32 %88, i32 %89) #11
  %93 = select i1 %91, i32 %88, i32 %92
  %94 = select i1 %90, i32 %89, i32 %93
  %95 = tail call i32 @llvm.umin.i32(i32 %94, i32 %77) #11
  %96 = add nuw i32 %75, 1
  %97 = add i32 %95, %76
  %98 = sub i32 %77, %95
  %99 = add i32 %97, %57
  %100 = load i32, ptr %68, align 4
  %101 = and i32 %99, %100
  %102 = icmp eq i32 %101, 0
  %103 = icmp ne i32 %98, 0
  %104 = select i1 %102, i1 %103, i1 false
  br i1 %104, label %74, label %105

105:                                              ; preds = %82
  %106 = lshr i32 %97, 9
  %107 = add i32 %106, %49
  br label %108

108:                                              ; preds = %105, %79, %45
  %109 = phi i32 [ -1, %79 ], [ %50, %45 ], [ %96, %105 ]
  %110 = phi i32 [ %81, %79 ], [ %49, %45 ], [ %107, %105 ]
  br i1 %44, label %117, label %111

111:                                              ; preds = %108
  %112 = add i32 %54, %46
  %113 = icmp eq i32 %112, %52
  %114 = zext i1 %113 to i32
  %115 = add i32 %47, %114
  %116 = select i1 %113, i32 0, i32 %112
  br label %117

117:                                              ; preds = %111, %108
  %118 = phi i32 [ %47, %108 ], [ %115, %111 ]
  %119 = phi i32 [ %46, %108 ], [ %116, %111 ]
  %120 = sub i32 %48, %54
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %45

122:                                              ; preds = %117, %25
  %123 = phi i32 [ %28, %25 ], [ %109, %117 ]
  %124 = phi i32 [ %27, %25 ], [ %110, %117 ]
  %125 = load ptr, ptr %26, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %25

127:                                              ; preds = %122, %24, %18, %13, %5, %1
  %128 = phi i32 [ 1, %24 ], [ 0, %1 ], [ 1, %13 ], [ 0, %5 ], [ %123, %122 ], [ %21, %18 ]
  ret i32 %128
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__blk_rq_map_sg(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 262144
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 24
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 24, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 24, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %3, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %9
  %19 = load i32, ptr %16, align 4
  %20 = and i32 %19, -3
  store i32 %20, ptr %16, align 4
  %21 = load ptr, ptr %3, align 4
  %22 = tail call ptr @sg_next(ptr noundef %21) #11
  br label %23

23:                                               ; preds = %18, %9
  %24 = phi ptr [ %22, %18 ], [ %2, %9 ]
  store ptr %24, ptr %3, align 4
  %25 = and i32 %11, 3
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %258, label %27, !prof !10

27:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !16
  unreachable

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 10
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %268, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.bio, ptr %30, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 255
  %36 = icmp eq i32 %35, 7
  br i1 %36, label %37, label %73

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.bio, ptr %30, i32 0, i32 16
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.bio, ptr %30, i32 0, i32 8, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr %struct.bio_vec, ptr %39, i32 %41
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr %struct.bio_vec, ptr %39, i32 %41, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.bio, ptr %30, i32 0, i32 8, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, %45
  %49 = lshr i32 %48, 12
  %50 = getelementptr %struct.page, ptr %43, i32 %49
  %51 = getelementptr inbounds %struct.bio, ptr %30, i32 0, i32 8, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr %struct.bio_vec, ptr %39, i32 %41, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = sub i32 %54, %47
  %56 = tail call i32 @llvm.umin.i32(i32 %52, i32 %55)
  %57 = and i32 %48, 4095
  %58 = sub nuw nsw i32 4096, %57
  %59 = tail call i32 @llvm.umin.i32(i32 %56, i32 %58)
  %60 = ptrtoint ptr %50 to i32
  %61 = load ptr, ptr %3, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %37
  %64 = load i32, ptr %61, align 4
  %65 = and i32 %64, -3
  store i32 %65, ptr %61, align 4
  %66 = load ptr, ptr %3, align 4
  %67 = tail call ptr @sg_next(ptr noundef %66) #11
  br label %68

68:                                               ; preds = %63, %37
  %69 = phi ptr [ %67, %63 ], [ %2, %37 ]
  store ptr %69, ptr %3, align 4
  %70 = and i32 %60, 3
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %258, label %72, !prof !10

72:                                               ; preds = %68
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !16
  unreachable

73:                                               ; preds = %32
  %74 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 7
  %75 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 1
  br label %76

76:                                               ; preds = %250, %73
  %77 = phi ptr [ %30, %73 ], [ %256, %250 ]
  %78 = phi i32 [ 0, %73 ], [ %251, %250 ]
  %79 = phi i1 [ false, %73 ], [ %255, %250 ]
  %80 = phi i32 [ 0, %73 ], [ %254, %250 ]
  %81 = phi i32 [ 0, %73 ], [ %253, %250 ]
  %82 = phi ptr [ null, %73 ], [ %252, %250 ]
  %83 = getelementptr inbounds %struct.bio, ptr %77, i32 0, i32 8, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %250, label %86

86:                                               ; preds = %76
  %87 = getelementptr inbounds %struct.bio, ptr %77, i32 0, i32 8, i32 3
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.bio, ptr %77, i32 0, i32 8, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.bio, ptr %77, i32 0, i32 16
  %92 = ptrtoint ptr %82 to i32
  %93 = getelementptr inbounds %struct.bio, ptr %77, i32 0, i32 2
  br label %94

94:                                               ; preds = %241, %86
  %95 = phi i32 [ %78, %86 ], [ %226, %241 ]
  %96 = phi i1 [ %79, %86 ], [ false, %241 ]
  %97 = phi i32 [ %88, %86 ], [ %243, %241 ]
  %98 = phi i32 [ %90, %86 ], [ %242, %241 ]
  %99 = phi i32 [ %84, %86 ], [ %244, %241 ]
  %100 = load ptr, ptr %91, align 4
  %101 = getelementptr %struct.bio_vec, ptr %100, i32 %98
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr %struct.bio_vec, ptr %100, i32 %98, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = sub i32 %104, %97
  %106 = tail call i32 @llvm.umin.i32(i32 %99, i32 %105) #11
  %107 = getelementptr %struct.bio_vec, ptr %100, i32 %98, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, %97
  br i1 %96, label %110, label %144

110:                                              ; preds = %94
  %111 = load ptr, ptr %3, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %144, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.scatterlist, ptr %111, i32 0, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %115, %106
  %117 = load i32, ptr %74, align 4
  %118 = icmp ugt i32 %116, %117
  br i1 %118, label %144, label %119

119:                                              ; preds = %113
  %120 = load ptr, ptr @mem_map, align 4
  %121 = ptrtoint ptr %120 to i32
  %122 = sub i32 %92, %121
  %123 = lshr exact i32 %122, 5
  %124 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %125 = add i32 %123, %124
  %126 = shl i32 %125, 12
  %127 = add i32 %126, %80
  %128 = ptrtoint ptr %102 to i32
  %129 = sub i32 %128, %121
  %130 = lshr exact i32 %129, 5
  %131 = add i32 %130, %124
  %132 = shl i32 %131, 12
  %133 = add i32 %132, %109
  %134 = add i32 %127, %81
  %135 = icmp eq i32 %134, %133
  br i1 %135, label %136, label %144

136:                                              ; preds = %119
  %137 = load i32, ptr %75, align 4
  %138 = or i32 %137, %127
  %139 = add i32 %106, -1
  %140 = add i32 %139, %133
  %141 = or i32 %137, %140
  %142 = icmp eq i32 %138, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  store i32 %116, ptr %114, align 4
  br label %225

144:                                              ; preds = %136, %119, %113, %110, %94
  %145 = add i32 %109, %106
  %146 = icmp ult i32 %145, 4097
  br i1 %146, label %147, label %168

147:                                              ; preds = %144
  %148 = ptrtoint ptr %102 to i32
  %149 = load ptr, ptr %3, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %156, label %151

151:                                              ; preds = %147
  %152 = load i32, ptr %149, align 4
  %153 = and i32 %152, -3
  store i32 %153, ptr %149, align 4
  %154 = load ptr, ptr %3, align 4
  %155 = tail call ptr @sg_next(ptr noundef %154) #11
  br label %156

156:                                              ; preds = %151, %147
  %157 = phi ptr [ %155, %151 ], [ %2, %147 ]
  store ptr %157, ptr %3, align 4
  %158 = and i32 %148, 3
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %161, label %160, !prof !10

160:                                              ; preds = %156
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !16
  unreachable

161:                                              ; preds = %156
  %162 = load i32, ptr %157, align 4
  %163 = and i32 %162, 3
  %164 = or i32 %163, %148
  store i32 %164, ptr %157, align 4
  %165 = getelementptr inbounds %struct.scatterlist, ptr %157, i32 0, i32 1
  store i32 %109, ptr %165, align 4
  %166 = getelementptr inbounds %struct.scatterlist, ptr %157, i32 0, i32 2
  store i32 %106, ptr %166, align 4
  %167 = add i32 %95, 1
  br label %225

168:                                              ; preds = %144
  %169 = icmp eq i32 %106, 0
  br i1 %169, label %222, label %170

170:                                              ; preds = %168
  %171 = ptrtoint ptr %102 to i32
  br label %172

172:                                              ; preds = %212, %170
  %173 = phi i32 [ %106, %170 ], [ %219, %212 ]
  %174 = phi i32 [ 0, %170 ], [ %220, %212 ]
  %175 = phi i32 [ 0, %170 ], [ %218, %212 ]
  %176 = add i32 %175, %109
  %177 = load i32, ptr %75, align 4
  %178 = load ptr, ptr @mem_map, align 4
  %179 = ptrtoint ptr %178 to i32
  %180 = sub i32 %171, %179
  %181 = lshr exact i32 %180, 5
  %182 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %183 = add i32 %181, %182
  %184 = shl i32 %183, 12
  %185 = add i32 %184, %176
  %186 = xor i32 %185, -1
  %187 = and i32 %177, %186
  %188 = add i32 %187, 1
  %189 = load i32, ptr %74, align 4
  %190 = icmp eq i32 %188, 0
  %191 = icmp eq i32 %189, 0
  %192 = tail call i32 @llvm.umin.i32(i32 %188, i32 %189) #11
  %193 = select i1 %191, i32 %188, i32 %192
  %194 = select i1 %190, i32 %189, i32 %193
  %195 = tail call i32 @llvm.umin.i32(i32 %194, i32 %173) #11
  %196 = lshr i32 %176, 12
  %197 = getelementptr %struct.page, ptr %102, i32 %196
  %198 = and i32 %176, 4095
  %199 = load ptr, ptr %3, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %206, label %201

201:                                              ; preds = %172
  %202 = load i32, ptr %199, align 4
  %203 = and i32 %202, -3
  store i32 %203, ptr %199, align 4
  %204 = load ptr, ptr %3, align 4
  %205 = tail call ptr @sg_next(ptr noundef %204) #11
  br label %206

206:                                              ; preds = %201, %172
  %207 = phi ptr [ %205, %201 ], [ %2, %172 ]
  store ptr %207, ptr %3, align 4
  %208 = ptrtoint ptr %197 to i32
  %209 = and i32 %208, 3
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %212, label %211, !prof !10

211:                                              ; preds = %206
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !16
  unreachable

212:                                              ; preds = %206
  %213 = load i32, ptr %207, align 4
  %214 = and i32 %213, 3
  %215 = or i32 %214, %208
  store i32 %215, ptr %207, align 4
  %216 = getelementptr inbounds %struct.scatterlist, ptr %207, i32 0, i32 1
  store i32 %198, ptr %216, align 4
  %217 = getelementptr inbounds %struct.scatterlist, ptr %207, i32 0, i32 2
  store i32 %195, ptr %217, align 4
  %218 = add i32 %195, %175
  %219 = sub i32 %173, %195
  %220 = add i32 %174, 1
  %221 = icmp eq i32 %219, 0
  br i1 %221, label %222, label %172

222:                                              ; preds = %212, %168
  %223 = phi i32 [ 0, %168 ], [ %220, %212 ]
  %224 = add i32 %223, %95
  br label %225

225:                                              ; preds = %222, %161, %143
  %226 = phi i32 [ %95, %143 ], [ %167, %161 ], [ %224, %222 ]
  %227 = load i32, ptr %93, align 4
  %228 = and i32 %227, 255
  %229 = add nsw i32 %228, -3
  %230 = and i32 %229, -7
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %241, label %232

232:                                              ; preds = %225
  %233 = load ptr, ptr %91, align 4
  %234 = add i32 %106, %97
  %235 = getelementptr %struct.bio_vec, ptr %233, i32 %98, i32 1
  %236 = load i32, ptr %235, align 4
  %237 = icmp eq i32 %234, %236
  %238 = zext i1 %237 to i32
  %239 = add i32 %98, %238
  %240 = select i1 %237, i32 0, i32 %234
  br label %241

241:                                              ; preds = %232, %225
  %242 = phi i32 [ %98, %225 ], [ %239, %232 ]
  %243 = phi i32 [ %97, %225 ], [ %240, %232 ]
  %244 = sub i32 %99, %106
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %94

246:                                              ; preds = %241
  %247 = load i32, ptr %83, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %250, label %249, !prof !9

249:                                              ; preds = %246
  br label %250

250:                                              ; preds = %249, %246, %76
  %251 = phi i32 [ %226, %246 ], [ %226, %249 ], [ %78, %76 ]
  %252 = phi ptr [ %82, %246 ], [ %102, %249 ], [ %82, %76 ]
  %253 = phi i32 [ %81, %246 ], [ %106, %249 ], [ %81, %76 ]
  %254 = phi i32 [ %80, %246 ], [ %109, %249 ], [ %80, %76 ]
  %255 = phi i1 [ false, %246 ], [ true, %249 ], [ %79, %76 ]
  %256 = load ptr, ptr %77, align 4
  %257 = icmp eq ptr %256, null
  br i1 %257, label %268, label %76

258:                                              ; preds = %68, %23
  %259 = phi ptr [ %24, %23 ], [ %69, %68 ]
  %260 = phi i32 [ %11, %23 ], [ %60, %68 ]
  %261 = phi i32 [ %15, %23 ], [ %57, %68 ]
  %262 = phi i32 [ %13, %23 ], [ %59, %68 ]
  %263 = load i32, ptr %259, align 4
  %264 = and i32 %263, 3
  %265 = or i32 %264, %260
  store i32 %265, ptr %259, align 4
  %266 = getelementptr inbounds %struct.scatterlist, ptr %259, i32 0, i32 1
  store i32 %261, ptr %266, align 4
  %267 = getelementptr inbounds %struct.scatterlist, ptr %259, i32 0, i32 2
  store i32 %262, ptr %267, align 4
  br label %268

268:                                              ; preds = %258, %250, %28
  %269 = phi i32 [ 0, %28 ], [ 1, %258 ], [ %251, %250 ]
  %270 = load ptr, ptr %3, align 4
  %271 = icmp eq ptr %270, null
  br i1 %271, label %276, label %272

272:                                              ; preds = %268
  %273 = load i32, ptr %270, align 4
  %274 = and i32 %273, -4
  %275 = or i32 %274, 2
  store i32 %275, ptr %270, align 4
  br label %276

276:                                              ; preds = %272, %268
  %277 = load i32, ptr %5, align 8
  %278 = and i32 %277, 262144
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 17
  %282 = load i16, ptr %281, align 2
  %283 = zext i16 %282 to i32
  br label %284

284:                                              ; preds = %280, %276
  %285 = phi i32 [ %283, %280 ], [ 1, %276 ]
  %286 = icmp sgt i32 %269, %285
  br i1 %286, label %287, label %288, !prof !9

287:                                              ; preds = %284
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 570, i32 noundef 9, ptr noundef null) #11
  br label %288

288:                                              ; preds = %287, %284
  ret i32 %269
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ll_back_merge_fn(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = tail call fastcc zeroext i1 @bio_will_gap(ptr noundef %4, ptr noundef %0, ptr noundef %6, ptr noundef %1) #11
  br i1 %7, label %107, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 9
  %12 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 9
  %15 = add nuw nsw i32 %14, %11
  %16 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 9
  %17 = load i64, ptr %16, align 8
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 254
  %22 = icmp eq i32 %21, 34
  br i1 %22, label %23, label %26

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 32, i32 3
  %25 = load i32, ptr %24, align 4
  br label %79

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 32, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = trunc i32 %20 to i8
  br i1 %29, label %32, label %31

31:                                               ; preds = %26
  switch i8 %30, label %46 [
    i8 5, label %33
    i8 3, label %33
  ], !prof !17

32:                                               ; preds = %26
  switch i8 %30, label %43 [
    i8 5, label %33
    i8 3, label %33
    i8 7, label %37
    i8 9, label %40
  ], !prof !18

33:                                               ; preds = %32, %32, %31, %31
  %34 = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 32, i32 13
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 8388607) #11
  br label %79

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 32, i32 15
  %39 = load i32, ptr %38, align 4
  br label %79

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 32, i32 16
  %42 = load i32, ptr %41, align 4
  br label %79

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 32, i32 6
  %45 = load i32, ptr %44, align 4
  br label %79

46:                                               ; preds = %31
  %47 = tail call i32 @llvm.ctpop.i32(i32 %28) #11, !range !13
  %48 = icmp ult i32 %47, 2
  br i1 %48, label %49, label %53, !prof !10

49:                                               ; preds = %46
  %50 = add i32 %28, -1
  %51 = trunc i64 %17 to i32
  %52 = and i32 %50, %51
  br label %63

53:                                               ; preds = %46
  %54 = icmp ult i64 %17, 4294967296
  br i1 %54, label %55, label %58, !prof !10

55:                                               ; preds = %53
  %56 = trunc i64 %17 to i32
  %57 = urem i32 %56, %28
  br label %63

58:                                               ; preds = %53
  %59 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %28, i64 %17) #12, !srcloc !11
  %60 = extractvalue { i64, i64 } %59, 0
  %61 = lshr i64 %60, 32
  %62 = trunc i64 %61 to i32
  br label %63

63:                                               ; preds = %58, %55, %49
  %64 = phi i32 [ %52, %49 ], [ %57, %55 ], [ %62, %58 ]
  %65 = sub i32 %28, %64
  %66 = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 32, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = tail call i32 @llvm.umin.i32(i32 %67, i32 %65) #11
  switch i8 %30, label %76 [
    i8 9, label %71
    i8 7, label %69
  ], !prof !19

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 32, i32 15
  br label %73

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 32, i32 16
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi ptr [ %72, %71 ], [ %70, %69 ]
  %75 = load i32, ptr %74, align 4
  br label %76

76:                                               ; preds = %73, %63
  %77 = phi i32 [ %67, %63 ], [ %75, %73 ]
  %78 = tail call i32 @llvm.umin.i32(i32 %68, i32 %77) #11
  br label %79

79:                                               ; preds = %76, %43, %40, %37, %33, %23
  %80 = phi i32 [ %25, %23 ], [ %78, %76 ], [ %36, %33 ], [ %39, %37 ], [ %42, %40 ], [ %45, %43 ]
  %81 = icmp ugt i32 %15, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = or i32 %20, 16384
  store i32 %83, ptr %19, align 4
  %84 = load ptr, ptr %18, align 8
  %85 = icmp eq ptr %84, %0
  br i1 %85, label %86, label %107

86:                                               ; preds = %82
  store ptr null, ptr %18, align 8
  br label %107

87:                                               ; preds = %79
  %88 = and i32 %20, 255
  %89 = icmp eq i32 %88, 3
  br i1 %89, label %107, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 17
  %92 = load i16, ptr %91, align 2
  %93 = zext i16 %92 to i32
  %94 = add i32 %93, %2
  %95 = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 32, i32 21
  %96 = load i16, ptr %95, align 4
  %97 = zext i16 %96 to i32
  %98 = icmp ugt i32 %94, %97
  br i1 %98, label %102, label %99

99:                                               ; preds = %90
  %100 = trunc i32 %2 to i16
  %101 = add i16 %92, %100
  store i16 %101, ptr %91, align 2
  br label %107

102:                                              ; preds = %90
  %103 = or i32 %20, 16384
  store i32 %103, ptr %19, align 4
  %104 = load ptr, ptr %18, align 8
  %105 = icmp eq ptr %104, %0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store ptr null, ptr %18, align 8
  br label %107

107:                                              ; preds = %106, %102, %99, %87, %86, %82, %3
  %108 = phi i32 [ 0, %3 ], [ 0, %82 ], [ 0, %86 ], [ 1, %99 ], [ 1, %87 ], [ 0, %102 ], [ 0, %106 ]
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_rq_set_mixed_merge(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1792
  %5 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %9
  %14 = load i1, ptr @blk_rq_set_mixed_merge.__already_done, align 1
  br label %15

15:                                               ; preds = %29, %13
  %16 = phi i1 [ %31, %29 ], [ %14, %13 ]
  %17 = phi ptr [ %33, %29 ], [ %11, %13 ]
  %18 = getelementptr inbounds %struct.bio, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1792
  %21 = icmp ne i32 %20, 0
  %22 = icmp ne i32 %20, %4
  %23 = select i1 %21, i1 %22, i1 false
  %24 = xor i1 %16, true
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %29, !prof !9

26:                                               ; preds = %15
  store i1 true, ptr @blk_rq_set_mixed_merge.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 734, i32 noundef 9, ptr noundef null) #11
  %27 = load i1, ptr @blk_rq_set_mixed_merge.__already_done, align 1
  %28 = load i32, ptr %18, align 4
  br label %29

29:                                               ; preds = %26, %15
  %30 = phi i32 [ %28, %26 ], [ %19, %15 ]
  %31 = phi i1 [ %27, %26 ], [ %16, %15 ]
  %32 = or i32 %30, %4
  store i32 %32, ptr %18, align 4
  %33 = load ptr, ptr %17, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %15

35:                                               ; preds = %29
  %36 = load i32, ptr %5, align 8
  br label %37

37:                                               ; preds = %35, %9
  %38 = phi i32 [ %36, %35 ], [ %6, %9 ]
  %39 = or i32 %38, 32
  store i32 %39, ptr %5, align 8
  br label %40

40:                                               ; preds = %37, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @blk_attempt_req_merge(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @attempt_merge(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %5 = icmp ne ptr %4, null
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @attempt_merge(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 254
  %7 = icmp eq i32 %6, 34
  br i1 %7, label %158, label %8

8:                                                ; preds = %3
  %9 = trunc i32 %5 to i8
  switch i8 %9, label %10 [
    i8 2, label %158
    i8 9, label %158
    i8 13, label %158
  ]

10:                                               ; preds = %8
  %11 = and i32 %5, 409600
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %158

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 262170
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %158

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 254
  %22 = icmp eq i32 %21, 34
  br i1 %22, label %158, label %23

23:                                               ; preds = %18
  %24 = trunc i32 %20 to i8
  switch i8 %24, label %25 [
    i8 2, label %158
    i8 9, label %158
    i8 13, label %158
  ]

25:                                               ; preds = %23
  %26 = and i32 %20, 409600
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %158

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 4
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 262170
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %158

33:                                               ; preds = %28
  %34 = and i32 %5, 255
  %35 = and i32 %20, 255
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %158

37:                                               ; preds = %33
  %38 = and i32 %5, 1
  %39 = icmp ne i32 %38, 0
  %40 = and i32 %20, 1
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %39, %41
  br i1 %42, label %158, label %43

43:                                               ; preds = %37
  %44 = icmp eq i32 %34, 7
  br i1 %44, label %45, label %81

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 10
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 10
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.bio, ptr %47, i32 0, i32 16
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.bio, ptr %47, i32 0, i32 8, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr %struct.bio_vec, ptr %51, i32 %53
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr %struct.bio_vec, ptr %51, i32 %53, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.bio, ptr %47, i32 0, i32 8, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, %57
  %61 = lshr i32 %60, 12
  %62 = getelementptr %struct.page, ptr %55, i32 %61
  %63 = getelementptr inbounds %struct.bio, ptr %49, i32 0, i32 16
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.bio, ptr %49, i32 0, i32 8, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr %struct.bio_vec, ptr %64, i32 %66
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr %struct.bio_vec, ptr %64, i32 %66, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.bio, ptr %49, i32 0, i32 8, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, %70
  %74 = lshr i32 %73, 12
  %75 = getelementptr %struct.page, ptr %68, i32 %74
  %76 = icmp eq ptr %62, %75
  br i1 %76, label %77, label %158

77:                                               ; preds = %45
  %78 = xor i32 %73, %60
  %79 = and i32 %78, 4095
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %158

81:                                               ; preds = %77, %43
  %82 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 18
  %83 = load i16, ptr %82, align 4
  %84 = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 18
  %85 = load i16, ptr %84, align 4
  %86 = icmp eq i16 %83, %85
  br i1 %86, label %87, label %158

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 19
  %89 = load i16, ptr %88, align 2
  %90 = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 19
  %91 = load i16, ptr %90, align 2
  %92 = icmp eq i16 %89, %91
  br i1 %92, label %93, label %158

93:                                               ; preds = %87
  %94 = icmp eq i32 %34, 3
  br i1 %94, label %95, label %100

95:                                               ; preds = %93
  %96 = load ptr, ptr %1, align 8
  %97 = getelementptr inbounds %struct.request_queue, ptr %96, i32 0, i32 32, i32 23
  %98 = load i16, ptr %97, align 4
  %99 = icmp ugt i16 %98, 1
  br i1 %99, label %111, label %100

100:                                              ; preds = %95, %93
  %101 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 9
  %102 = load i64, ptr %101, align 8
  %103 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 8
  %104 = load i32, ptr %103, align 8
  %105 = lshr i32 %104, 9
  %106 = zext i32 %105 to i64
  %107 = add i64 %102, %106
  %108 = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 9
  %109 = load i64, ptr %108, align 8
  %110 = icmp eq i64 %107, %109
  br i1 %110, label %113, label %158

111:                                              ; preds = %95
  %112 = tail call fastcc zeroext i1 @req_attempt_discard_merge(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br i1 %112, label %116, label %158

113:                                              ; preds = %100
  %114 = tail call fastcc i32 @ll_merge_requests_fn(ptr noundef %1, ptr noundef %2)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %158, label %116

116:                                              ; preds = %113, %111
  %117 = load i32, ptr %14, align 8
  %118 = load i32, ptr %29, align 8
  %119 = or i32 %118, %117
  %120 = and i32 %119, 32
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load i32, ptr %4, align 4
  %124 = load i32, ptr %19, align 4
  %125 = xor i32 %124, %123
  %126 = and i32 %125, 1792
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %122, %116
  tail call void @blk_rq_set_mixed_merge(ptr noundef %1)
  tail call void @blk_rq_set_mixed_merge(ptr noundef %2)
  br label %129

129:                                              ; preds = %128, %122
  %130 = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 14
  %131 = load i64, ptr %130, align 8
  %132 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 14
  %133 = load i64, ptr %132, align 8
  %134 = icmp ult i64 %131, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  store i64 %131, ptr %132, align 8
  br label %136

136:                                              ; preds = %135, %129
  %137 = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 10
  %138 = load ptr, ptr %137, align 8
  %139 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 11
  %140 = load ptr, ptr %139, align 4
  store ptr %138, ptr %140, align 4
  %141 = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 11
  %142 = load ptr, ptr %141, align 4
  store ptr %142, ptr %139, align 4
  %143 = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 8
  %144 = load i32, ptr %143, align 8
  %145 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 8
  %146 = load i32, ptr %145, align 8
  %147 = add i32 %146, %144
  store i32 %147, ptr %145, align 8
  %148 = load i32, ptr %4, align 4
  %149 = and i32 %148, 255
  %150 = icmp eq i32 %149, 3
  br i1 %150, label %151, label %156

151:                                              ; preds = %136
  %152 = load ptr, ptr %1, align 8
  %153 = getelementptr inbounds %struct.request_queue, ptr %152, i32 0, i32 32, i32 23
  %154 = load i16, ptr %153, align 4
  %155 = icmp ugt i16 %154, 1
  br i1 %155, label %157, label %156

156:                                              ; preds = %151, %136
  tail call void @elv_merge_requests(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  br label %157

157:                                              ; preds = %156, %151
  tail call fastcc void @blk_account_io_merge_request(ptr noundef %2)
  tail call fastcc void @trace_block_rq_merge(ptr noundef %2)
  store ptr null, ptr %137, align 8
  br label %158

158:                                              ; preds = %157, %113, %111, %100, %87, %81, %77, %45, %37, %33, %28, %25, %23, %23, %23, %18, %13, %10, %8, %8, %8, %3
  %159 = phi ptr [ %2, %157 ], [ null, %28 ], [ null, %13 ], [ null, %33 ], [ null, %37 ], [ null, %81 ], [ null, %87 ], [ null, %111 ], [ null, %113 ], [ null, %45 ], [ null, %77 ], [ null, %3 ], [ null, %8 ], [ null, %8 ], [ null, %8 ], [ null, %10 ], [ null, %18 ], [ null, %23 ], [ null, %23 ], [ null, %23 ], [ null, %25 ], [ null, %100 ]
  ret ptr %159
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @blk_rq_merge_ok(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 254
  %6 = icmp eq i32 %5, 34
  br i1 %6, label %80, label %7

7:                                                ; preds = %2
  %8 = trunc i32 %4 to i8
  switch i8 %8, label %9 [
    i8 2, label %80
    i8 9, label %80
    i8 13, label %80
  ]

9:                                                ; preds = %7
  %10 = and i32 %4, 409600
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %80

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 262170
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %80

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 409600
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %80

22:                                               ; preds = %17
  %23 = and i32 %4, 255
  %24 = and i32 %19, 255
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %80

26:                                               ; preds = %22
  %27 = and i32 %19, 1
  %28 = icmp ne i32 %27, 0
  %29 = and i32 %4, 1
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, %28
  br i1 %31, label %80, label %32

32:                                               ; preds = %26
  %33 = icmp eq i32 %23, 7
  br i1 %33, label %34, label %68

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 10
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.bio, ptr %36, i32 0, i32 16
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.bio, ptr %36, i32 0, i32 8, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr %struct.bio_vec, ptr %38, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr %struct.bio_vec, ptr %38, i32 %40, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.bio, ptr %36, i32 0, i32 8, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %44
  %48 = lshr i32 %47, 12
  %49 = getelementptr %struct.page, ptr %42, i32 %48
  %50 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 16
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr %struct.bio_vec, ptr %51, i32 %53
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr %struct.bio_vec, ptr %51, i32 %53, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, %57
  %61 = lshr i32 %60, 12
  %62 = getelementptr %struct.page, ptr %55, i32 %61
  %63 = icmp eq ptr %49, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %34
  %65 = xor i32 %60, %47
  %66 = and i32 %65, 4095
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %64, %32
  %69 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 18
  %70 = load i16, ptr %69, align 4
  %71 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 5
  %72 = load i16, ptr %71, align 4
  %73 = icmp eq i16 %70, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 19
  %76 = load i16, ptr %75, align 2
  %77 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 4
  %78 = load i16, ptr %77, align 2
  %79 = icmp eq i16 %76, %78
  br label %80

80:                                               ; preds = %74, %68, %64, %34, %26, %22, %17, %12, %9, %7, %7, %7, %2
  %81 = phi i1 [ false, %17 ], [ false, %12 ], [ false, %22 ], [ false, %26 ], [ false, %68 ], [ %79, %74 ], [ false, %34 ], [ false, %64 ], [ false, %2 ], [ false, %7 ], [ false, %7 ], [ false, %7 ], [ false, %9 ]
  ret i1 %81
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @blk_try_merge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 32, i32 23
  %10 = load i16, ptr %9, align 4
  %11 = icmp ugt i16 %10, 1
  br i1 %11, label %31, label %12

12:                                               ; preds = %7, %2
  %13 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 9
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 9
  %18 = zext i32 %17 to i64
  %19 = add i64 %14, %18
  %20 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8
  %21 = load i64, ptr %20, align 4
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = lshr i32 %25, 9
  %27 = zext i32 %26 to i64
  %28 = sub i64 %14, %27
  %29 = icmp eq i64 %28, %21
  %30 = zext i1 %29 to i32
  br label %31

31:                                               ; preds = %23, %12, %7
  %32 = phi i32 [ 2, %12 ], [ %30, %23 ], [ 3, %7 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @blk_attempt_plug_merge(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @llvm.thread.pointer() #11
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 115
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %9, align 8
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = tail call fastcc i32 @blk_attempt_bio_merge(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %11
  br label %18

18:                                               ; preds = %17, %14, %8, %3
  %19 = phi i1 [ false, %17 ], [ false, %8 ], [ false, %3 ], [ true, %14 ]
  ret i1 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @blk_attempt_bio_merge(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = tail call zeroext i1 @blk_rq_merge_ok(ptr noundef %1, ptr noundef %2)
  br i1 %6, label %7, label %71

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load ptr, ptr %1, align 8
  %14 = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 32, i32 23
  %15 = load i16, ptr %14, align 4
  %16 = icmp ugt i16 %15, 1
  br i1 %16, label %69, label %17

17:                                               ; preds = %12, %7
  %18 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 9
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 8
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %21, 9
  %23 = zext i32 %22 to i64
  %24 = add i64 %19, %23
  %25 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 8
  %26 = load i64, ptr %25, align 4
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 8, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = lshr i32 %30, 9
  %32 = zext i32 %31 to i64
  %33 = sub i64 %19, %32
  %34 = icmp eq i64 %33, %26
  br i1 %34, label %52, label %71

35:                                               ; preds = %17
  br i1 %4, label %36, label %50

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 4194304
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.elevator_type, ptr %44, i32 0, i32 1, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  %49 = tail call zeroext i1 %46(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  br i1 %49, label %50, label %71

50:                                               ; preds = %48, %41, %36, %35
  %51 = tail call fastcc i32 @bio_attempt_back_merge(ptr noundef %1, ptr noundef %2, i32 noundef %3)
  br label %71

52:                                               ; preds = %28
  br i1 %4, label %53, label %67

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 4194304
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.elevator_type, ptr %61, i32 0, i32 1, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %58
  %66 = tail call zeroext i1 %63(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  br i1 %66, label %67, label %71

67:                                               ; preds = %65, %58, %53, %52
  %68 = tail call fastcc i32 @bio_attempt_front_merge(ptr noundef %1, ptr noundef %2, i32 noundef %3)
  br label %71

69:                                               ; preds = %12
  %70 = tail call fastcc i32 @bio_attempt_discard_merge(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %71

71:                                               ; preds = %69, %67, %65, %50, %48, %28, %5
  %72 = phi i32 [ %70, %69 ], [ %68, %67 ], [ %51, %50 ], [ 1, %5 ], [ 1, %28 ], [ 2, %65 ], [ 2, %48 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @blk_bio_list_merge(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  br label %5

5:                                                ; preds = %13, %4
  %6 = phi i32 [ 8, %4 ], [ %15, %13 ]
  %7 = phi ptr [ %1, %4 ], [ %9, %13 ]
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %1
  %11 = icmp eq i32 %6, 0
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %5
  %14 = getelementptr i8, ptr %9, i32 -56
  %15 = add nsw i32 %6, -1
  %16 = tail call fastcc i32 @blk_attempt_bio_merge(ptr noundef %0, ptr noundef %14, ptr noundef %2, i32 noundef %3, i1 noundef zeroext true)
  switch i32 %16, label %5 [
    i32 2, label %19
    i32 0, label %17
  ]

17:                                               ; preds = %13, %5
  %18 = xor i1 %12, true
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi i1 [ %18, %17 ], [ false, %13 ]
  ret i1 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @blk_mq_sched_try_merge(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store ptr null, ptr %5, align 4, !annotation !12
  %6 = call i32 @elv_merge(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1) #11
  switch i32 %6, label %73 [
    i32 2, label %7
    i32 1, label %38
    i32 3, label %69
  ]

7:                                                ; preds = %4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.request, ptr %8, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 4194304
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.elevator_type, ptr %16, i32 0, i32 1, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = call zeroext i1 %18(ptr noundef %0, ptr noundef %8, ptr noundef %1) #11
  br i1 %21, label %22, label %73

22:                                               ; preds = %20
  %23 = load ptr, ptr %5, align 4
  br label %24

24:                                               ; preds = %22, %13, %7
  %25 = phi ptr [ %23, %22 ], [ %8, %13 ], [ %8, %7 ]
  %26 = call fastcc i32 @bio_attempt_back_merge(ptr noundef %25, ptr noundef %1, i32 noundef %2)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %73

28:                                               ; preds = %24
  %29 = load ptr, ptr %5, align 4
  %30 = call ptr @elv_latter_request(ptr noundef %0, ptr noundef %29) #11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store ptr null, ptr %3, align 4
  br label %36

33:                                               ; preds = %28
  %34 = call fastcc ptr @attempt_merge(ptr noundef %0, ptr noundef %29, ptr noundef nonnull %30) #11
  store ptr %34, ptr %3, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %73

36:                                               ; preds = %33, %32
  %37 = load ptr, ptr %5, align 4
  call void @elv_merged_request(ptr noundef %0, ptr noundef %37, i32 noundef 2) #11
  br label %73

38:                                               ; preds = %4
  %39 = load ptr, ptr %5, align 4
  %40 = getelementptr inbounds %struct.request, ptr %39, i32 0, i32 4
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 4194304
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.elevator_type, ptr %47, i32 0, i32 1, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  %52 = call zeroext i1 %49(ptr noundef %0, ptr noundef %39, ptr noundef %1) #11
  br i1 %52, label %53, label %73

53:                                               ; preds = %51
  %54 = load ptr, ptr %5, align 4
  br label %55

55:                                               ; preds = %53, %44, %38
  %56 = phi ptr [ %54, %53 ], [ %39, %44 ], [ %39, %38 ]
  %57 = call fastcc i32 @bio_attempt_front_merge(ptr noundef %56, ptr noundef %1, i32 noundef %2)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load ptr, ptr %5, align 4
  %61 = call ptr @elv_former_request(ptr noundef %0, ptr noundef %60) #11
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store ptr null, ptr %3, align 4
  br label %67

64:                                               ; preds = %59
  %65 = call fastcc ptr @attempt_merge(ptr noundef %0, ptr noundef nonnull %61, ptr noundef %60) #11
  store ptr %65, ptr %3, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64, %63
  %68 = load ptr, ptr %5, align 4
  call void @elv_merged_request(ptr noundef %0, ptr noundef %68, i32 noundef 1) #11
  br label %73

69:                                               ; preds = %4
  %70 = load ptr, ptr %5, align 4
  %71 = call fastcc i32 @bio_attempt_discard_merge(ptr noundef %0, ptr noundef %70, ptr noundef %1)
  %72 = icmp eq i32 %71, 0
  br label %73

73:                                               ; preds = %69, %67, %64, %55, %51, %36, %33, %24, %20, %4
  %74 = phi i1 [ %72, %69 ], [ false, %20 ], [ false, %24 ], [ true, %36 ], [ true, %33 ], [ false, %51 ], [ false, %55 ], [ true, %67 ], [ true, %64 ], [ false, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i1 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elv_merge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bio_attempt_back_merge(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @ll_back_merge_fn(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %135, label %8

8:                                                ; preds = %3
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_backmerge, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = tail call ptr @llvm.thread.pointer() #11
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %23 = tail call i32 @__traceiter_block_bio_backmerge(ptr noundef null, ptr noundef %1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  br label %24

24:                                               ; preds = %22, %11, %8
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr inbounds %struct.request_queue, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void @__rq_qos_merge(ptr noundef nonnull %27, ptr noundef %0, ptr noundef %1) #11
  br label %30

30:                                               ; preds = %29, %24
  %31 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = xor i32 %32, %5
  %34 = and i32 %33, 1792
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %73, label %36

36:                                               ; preds = %30
  %37 = and i32 %32, 1792
  %38 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 10
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %70, label %46

46:                                               ; preds = %42
  %47 = load i1, ptr @blk_rq_set_mixed_merge.__already_done, align 1
  br label %48

48:                                               ; preds = %62, %46
  %49 = phi i1 [ %64, %62 ], [ %47, %46 ]
  %50 = phi ptr [ %66, %62 ], [ %44, %46 ]
  %51 = getelementptr inbounds %struct.bio, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 1792
  %54 = icmp ne i32 %53, 0
  %55 = icmp ne i32 %53, %37
  %56 = select i1 %54, i1 %55, i1 false
  %57 = xor i1 %49, true
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %62, !prof !9

59:                                               ; preds = %48
  store i1 true, ptr @blk_rq_set_mixed_merge.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 734, i32 noundef 9, ptr noundef null) #11
  %60 = load i1, ptr @blk_rq_set_mixed_merge.__already_done, align 1
  %61 = load i32, ptr %51, align 4
  br label %62

62:                                               ; preds = %59, %48
  %63 = phi i32 [ %61, %59 ], [ %52, %48 ]
  %64 = phi i1 [ %60, %59 ], [ %49, %48 ]
  %65 = or i32 %63, %37
  store i32 %65, ptr %51, align 4
  %66 = load ptr, ptr %50, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %48

68:                                               ; preds = %62
  %69 = load i32, ptr %38, align 8
  br label %70

70:                                               ; preds = %68, %42
  %71 = phi i32 [ %69, %68 ], [ %39, %42 ]
  %72 = or i32 %71, 32
  store i32 %72, ptr %38, align 8
  br label %73

73:                                               ; preds = %70, %36, %30
  %74 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 11
  %75 = load ptr, ptr %74, align 4
  store ptr %1, ptr %75, align 4
  store ptr %1, ptr %74, align 4
  %76 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 8
  %79 = load i32, ptr %78, align 8
  %80 = add i32 %79, %77
  store i32 %80, ptr %78, align 8
  %81 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %82 = load i32, ptr %81, align 8
  %83 = and i32 %82, 8192
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %135, label %85

85:                                               ; preds = %73
  %86 = load ptr, ptr %0, align 8
  %87 = getelementptr inbounds %struct.request_queue, ptr %86, i32 0, i32 15
  %88 = load ptr, ptr %87, align 8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %135, label %90

90:                                               ; preds = %85
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %91 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 13
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds %struct.block_device, ptr %92, i32 0, i32 2
  %94 = load ptr, ptr %93, align 8
  %95 = load i32, ptr %31, align 4
  %96 = and i32 %95, 255
  %97 = icmp eq i32 %96, 3
  %98 = and i32 %95, 1
  %99 = select i1 %97, i32 2, i32 %98
  %100 = getelementptr %struct.disk_stats, ptr %94, i32 0, i32 3, i32 %99
  %101 = ptrtoint ptr %100 to i32
  %102 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %103 = inttoptr i32 %102 to ptr
  %104 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %103) #9, !srcloc !23
  %105 = add i32 %104, %101
  %106 = inttoptr i32 %105 to ptr
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, 1
  store i32 %108, ptr %106, align 4
  %109 = load ptr, ptr %91, align 8
  %110 = getelementptr inbounds %struct.block_device, ptr %109, i32 0, i32 15
  %111 = load i8, ptr %110, align 8
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %134, label %113

113:                                              ; preds = %90
  %114 = getelementptr inbounds %struct.block_device, ptr %109, i32 0, i32 17
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds %struct.gendisk, ptr %115, i32 0, i32 7
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.block_device, ptr %117, i32 0, i32 2
  %119 = load ptr, ptr %118, align 8
  %120 = load i32, ptr %31, align 4
  %121 = and i32 %120, 255
  %122 = icmp eq i32 %121, 3
  %123 = and i32 %120, 1
  %124 = select i1 %122, i32 2, i32 %123
  %125 = getelementptr %struct.disk_stats, ptr %119, i32 0, i32 3, i32 %124
  %126 = ptrtoint ptr %125 to i32
  %127 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %128 = inttoptr i32 %127 to ptr
  %129 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %128) #9, !srcloc !23
  %130 = add i32 %129, %126
  %131 = inttoptr i32 %130 to ptr
  %132 = load i32, ptr %131, align 4
  %133 = add i32 %132, 1
  store i32 %133, ptr %131, align 4
  br label %134

134:                                              ; preds = %113, %90
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  br label %135

135:                                              ; preds = %134, %85, %73, %3
  %136 = phi i32 [ 2, %3 ], [ 0, %73 ], [ 0, %85 ], [ 0, %134 ]
  ret i32 %136
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @elv_merged_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bio_attempt_front_merge(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 8
  %9 = tail call fastcc zeroext i1 @bio_will_gap(ptr noundef %6, ptr noundef null, ptr noundef %1, ptr noundef %8) #11
  br i1 %9, label %234, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 8
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 9
  %14 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8
  %15 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, 9
  %18 = add nuw nsw i32 %17, %13
  %19 = load i64, ptr %14, align 4
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 254
  %24 = icmp eq i32 %23, 34
  br i1 %24, label %25, label %28

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 32, i32 3
  %27 = load i32, ptr %26, align 4
  br label %81

28:                                               ; preds = %10
  %29 = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 32, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  %32 = trunc i32 %22 to i8
  br i1 %31, label %34, label %33

33:                                               ; preds = %28
  switch i8 %32, label %48 [
    i8 5, label %35
    i8 3, label %35
  ], !prof !17

34:                                               ; preds = %28
  switch i8 %32, label %45 [
    i8 5, label %35
    i8 3, label %35
    i8 7, label %39
    i8 9, label %42
  ], !prof !18

35:                                               ; preds = %34, %34, %33, %33
  %36 = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 32, i32 13
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 8388607) #11
  br label %81

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 32, i32 15
  %41 = load i32, ptr %40, align 4
  br label %81

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 32, i32 16
  %44 = load i32, ptr %43, align 4
  br label %81

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 32, i32 6
  %47 = load i32, ptr %46, align 4
  br label %81

48:                                               ; preds = %33
  %49 = tail call i32 @llvm.ctpop.i32(i32 %30) #11, !range !13
  %50 = icmp ult i32 %49, 2
  br i1 %50, label %51, label %55, !prof !10

51:                                               ; preds = %48
  %52 = add i32 %30, -1
  %53 = trunc i64 %19 to i32
  %54 = and i32 %52, %53
  br label %65

55:                                               ; preds = %48
  %56 = icmp ult i64 %19, 4294967296
  br i1 %56, label %57, label %60, !prof !10

57:                                               ; preds = %55
  %58 = trunc i64 %19 to i32
  %59 = urem i32 %58, %30
  br label %65

60:                                               ; preds = %55
  %61 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %30, i64 %19) #12, !srcloc !11
  %62 = extractvalue { i64, i64 } %61, 0
  %63 = lshr i64 %62, 32
  %64 = trunc i64 %63 to i32
  br label %65

65:                                               ; preds = %60, %57, %51
  %66 = phi i32 [ %54, %51 ], [ %59, %57 ], [ %64, %60 ]
  %67 = sub i32 %30, %66
  %68 = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 32, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = tail call i32 @llvm.umin.i32(i32 %69, i32 %67) #11
  switch i8 %32, label %78 [
    i8 9, label %73
    i8 7, label %71
  ], !prof !19

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 32, i32 15
  br label %75

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 32, i32 16
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi ptr [ %74, %73 ], [ %72, %71 ]
  %77 = load i32, ptr %76, align 4
  br label %78

78:                                               ; preds = %75, %65
  %79 = phi i32 [ %69, %65 ], [ %77, %75 ]
  %80 = tail call i32 @llvm.umin.i32(i32 %70, i32 %79) #11
  br label %81

81:                                               ; preds = %78, %45, %42, %39, %35, %25
  %82 = phi i32 [ %27, %25 ], [ %80, %78 ], [ %38, %35 ], [ %41, %39 ], [ %44, %42 ], [ %47, %45 ]
  %83 = icmp ugt i32 %18, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = or i32 %22, 16384
  store i32 %85, ptr %21, align 4
  %86 = load ptr, ptr %20, align 8
  %87 = icmp eq ptr %86, %0
  br i1 %87, label %88, label %234

88:                                               ; preds = %84
  store ptr null, ptr %20, align 8
  br label %234

89:                                               ; preds = %81
  %90 = and i32 %22, 255
  %91 = icmp eq i32 %90, 3
  br i1 %91, label %109, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 17
  %94 = load i16, ptr %93, align 2
  %95 = zext i16 %94 to i32
  %96 = add i32 %95, %2
  %97 = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 32, i32 21
  %98 = load i16, ptr %97, align 4
  %99 = zext i16 %98 to i32
  %100 = icmp ugt i32 %96, %99
  br i1 %100, label %104, label %101

101:                                              ; preds = %92
  %102 = trunc i32 %2 to i16
  %103 = add i16 %94, %102
  store i16 %103, ptr %93, align 2
  br label %109

104:                                              ; preds = %92
  %105 = or i32 %22, 16384
  store i32 %105, ptr %21, align 4
  %106 = load ptr, ptr %20, align 8
  %107 = icmp eq ptr %106, %0
  br i1 %107, label %108, label %234

108:                                              ; preds = %104
  store ptr null, ptr %20, align 8
  br label %234

109:                                              ; preds = %101, %89
  %110 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_frontmerge, i32 0, i32 1), align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %109
  %113 = tail call ptr @llvm.thread.pointer() #11
  %114 = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 2
  %115 = load i32, ptr %114, align 8
  %116 = lshr i32 %115, 5
  %117 = getelementptr i32, ptr @__cpu_online_mask, i32 %116
  %118 = load volatile i32, ptr %117, align 4
  %119 = and i32 %115, 31
  %120 = shl nuw i32 1, %119
  %121 = and i32 %120, %118
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %112
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  %124 = tail call i32 @__traceiter_block_bio_frontmerge(ptr noundef null, ptr noundef %1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  %125 = load ptr, ptr %0, align 8
  br label %126

126:                                              ; preds = %123, %112, %109
  %127 = phi ptr [ %20, %109 ], [ %20, %112 ], [ %125, %123 ]
  %128 = getelementptr inbounds %struct.request_queue, ptr %127, i32 0, i32 4
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %126
  tail call void @__rq_qos_merge(ptr noundef nonnull %129, ptr noundef %0, ptr noundef %1) #11
  br label %132

132:                                              ; preds = %131, %126
  %133 = load i32, ptr %21, align 4
  %134 = xor i32 %133, %5
  %135 = and i32 %134, 1792
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %173, label %137

137:                                              ; preds = %132
  %138 = and i32 %133, 1792
  %139 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %140 = load i32, ptr %139, align 8
  %141 = and i32 %140, 32
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %173

143:                                              ; preds = %137
  %144 = load ptr, ptr %7, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %170, label %146

146:                                              ; preds = %143
  %147 = load i1, ptr @blk_rq_set_mixed_merge.__already_done, align 1
  br label %148

148:                                              ; preds = %162, %146
  %149 = phi i1 [ %164, %162 ], [ %147, %146 ]
  %150 = phi ptr [ %166, %162 ], [ %144, %146 ]
  %151 = getelementptr inbounds %struct.bio, ptr %150, i32 0, i32 2
  %152 = load i32, ptr %151, align 4
  %153 = and i32 %152, 1792
  %154 = icmp ne i32 %153, 0
  %155 = icmp ne i32 %153, %138
  %156 = select i1 %154, i1 %155, i1 false
  %157 = xor i1 %149, true
  %158 = select i1 %156, i1 %157, i1 false
  br i1 %158, label %159, label %162, !prof !9

159:                                              ; preds = %148
  store i1 true, ptr @blk_rq_set_mixed_merge.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 734, i32 noundef 9, ptr noundef null) #11
  %160 = load i1, ptr @blk_rq_set_mixed_merge.__already_done, align 1
  %161 = load i32, ptr %151, align 4
  br label %162

162:                                              ; preds = %159, %148
  %163 = phi i32 [ %161, %159 ], [ %152, %148 ]
  %164 = phi i1 [ %160, %159 ], [ %149, %148 ]
  %165 = or i32 %163, %138
  store i32 %165, ptr %151, align 4
  %166 = load ptr, ptr %150, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %148

168:                                              ; preds = %162
  %169 = load i32, ptr %139, align 8
  br label %170

170:                                              ; preds = %168, %143
  %171 = phi i32 [ %169, %168 ], [ %140, %143 ]
  %172 = or i32 %171, 32
  store i32 %172, ptr %139, align 8
  br label %173

173:                                              ; preds = %170, %137, %132
  %174 = load ptr, ptr %7, align 8
  store ptr %174, ptr %1, align 4
  store ptr %1, ptr %7, align 8
  %175 = load i64, ptr %14, align 4
  %176 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 9
  store i64 %175, ptr %176, align 8
  %177 = load i32, ptr %15, align 4
  %178 = load i32, ptr %11, align 8
  %179 = add i32 %178, %177
  store i32 %179, ptr %11, align 8
  %180 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %181 = load i32, ptr %180, align 8
  %182 = and i32 %181, 8192
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %234, label %184

184:                                              ; preds = %173
  %185 = load ptr, ptr %0, align 8
  %186 = getelementptr inbounds %struct.request_queue, ptr %185, i32 0, i32 15
  %187 = load ptr, ptr %186, align 8
  %188 = icmp eq ptr %187, null
  br i1 %188, label %234, label %189

189:                                              ; preds = %184
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %190 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 13
  %191 = load ptr, ptr %190, align 8
  %192 = getelementptr inbounds %struct.block_device, ptr %191, i32 0, i32 2
  %193 = load ptr, ptr %192, align 8
  %194 = load i32, ptr %21, align 4
  %195 = and i32 %194, 255
  %196 = icmp eq i32 %195, 3
  %197 = and i32 %194, 1
  %198 = select i1 %196, i32 2, i32 %197
  %199 = getelementptr %struct.disk_stats, ptr %193, i32 0, i32 3, i32 %198
  %200 = ptrtoint ptr %199 to i32
  %201 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %202 = inttoptr i32 %201 to ptr
  %203 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %202) #9, !srcloc !23
  %204 = add i32 %203, %200
  %205 = inttoptr i32 %204 to ptr
  %206 = load i32, ptr %205, align 4
  %207 = add i32 %206, 1
  store i32 %207, ptr %205, align 4
  %208 = load ptr, ptr %190, align 8
  %209 = getelementptr inbounds %struct.block_device, ptr %208, i32 0, i32 15
  %210 = load i8, ptr %209, align 8
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %233, label %212

212:                                              ; preds = %189
  %213 = getelementptr inbounds %struct.block_device, ptr %208, i32 0, i32 17
  %214 = load ptr, ptr %213, align 8
  %215 = getelementptr inbounds %struct.gendisk, ptr %214, i32 0, i32 7
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.block_device, ptr %216, i32 0, i32 2
  %218 = load ptr, ptr %217, align 8
  %219 = load i32, ptr %21, align 4
  %220 = and i32 %219, 255
  %221 = icmp eq i32 %220, 3
  %222 = and i32 %219, 1
  %223 = select i1 %221, i32 2, i32 %222
  %224 = getelementptr %struct.disk_stats, ptr %218, i32 0, i32 3, i32 %223
  %225 = ptrtoint ptr %224 to i32
  %226 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %227 = inttoptr i32 %226 to ptr
  %228 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %227) #9, !srcloc !23
  %229 = add i32 %228, %225
  %230 = inttoptr i32 %229 to ptr
  %231 = load i32, ptr %230, align 4
  %232 = add i32 %231, 1
  store i32 %232, ptr %230, align 4
  br label %233

233:                                              ; preds = %212, %189
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  br label %234

234:                                              ; preds = %233, %184, %173, %108, %104, %88, %84, %3
  %235 = phi i32 [ 0, %173 ], [ 0, %184 ], [ 0, %233 ], [ 2, %3 ], [ 2, %84 ], [ 2, %88 ], [ 2, %104 ], [ 2, %108 ]
  ret i32 %235
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bio_attempt_discard_merge(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 17
  %5 = load i16, ptr %4, align 2
  %6 = tail call i16 @llvm.umax.i16(i16 %5, i16 1) #11
  %7 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 23
  %8 = load i16, ptr %7, align 4
  %9 = icmp ult i16 %6, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  br label %153

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 8
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 9
  %17 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 8, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %18, 9
  %20 = add nuw nsw i32 %19, %16
  %21 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 9
  %22 = load i64, ptr %21, align 8
  %23 = load ptr, ptr %1, align 8
  %24 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 254
  %27 = icmp eq i32 %26, 34
  br i1 %27, label %28, label %31

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.request_queue, ptr %23, i32 0, i32 32, i32 3
  %30 = load i32, ptr %29, align 4
  br label %84

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.request_queue, ptr %23, i32 0, i32 32, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  %35 = trunc i32 %25 to i8
  br i1 %34, label %37, label %36

36:                                               ; preds = %31
  switch i8 %35, label %51 [
    i8 5, label %38
    i8 3, label %38
  ], !prof !17

37:                                               ; preds = %31
  switch i8 %35, label %48 [
    i8 5, label %38
    i8 3, label %38
    i8 7, label %42
    i8 9, label %45
  ], !prof !18

38:                                               ; preds = %37, %37, %36, %36
  %39 = getelementptr inbounds %struct.request_queue, ptr %23, i32 0, i32 32, i32 13
  %40 = load i32, ptr %39, align 4
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 8388607) #11
  br label %84

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.request_queue, ptr %23, i32 0, i32 32, i32 15
  %44 = load i32, ptr %43, align 4
  br label %84

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.request_queue, ptr %23, i32 0, i32 32, i32 16
  %47 = load i32, ptr %46, align 4
  br label %84

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.request_queue, ptr %23, i32 0, i32 32, i32 6
  %50 = load i32, ptr %49, align 4
  br label %84

51:                                               ; preds = %36
  %52 = tail call i32 @llvm.ctpop.i32(i32 %33) #11, !range !13
  %53 = icmp ult i32 %52, 2
  br i1 %53, label %54, label %58, !prof !10

54:                                               ; preds = %51
  %55 = add i32 %33, -1
  %56 = trunc i64 %22 to i32
  %57 = and i32 %55, %56
  br label %68

58:                                               ; preds = %51
  %59 = icmp ult i64 %22, 4294967296
  br i1 %59, label %60, label %63, !prof !10

60:                                               ; preds = %58
  %61 = trunc i64 %22 to i32
  %62 = urem i32 %61, %33
  br label %68

63:                                               ; preds = %58
  %64 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %33, i64 %22) #12, !srcloc !11
  %65 = extractvalue { i64, i64 } %64, 0
  %66 = lshr i64 %65, 32
  %67 = trunc i64 %66 to i32
  br label %68

68:                                               ; preds = %63, %60, %54
  %69 = phi i32 [ %57, %54 ], [ %62, %60 ], [ %67, %63 ]
  %70 = sub i32 %33, %69
  %71 = getelementptr inbounds %struct.request_queue, ptr %23, i32 0, i32 32, i32 6
  %72 = load i32, ptr %71, align 4
  %73 = tail call i32 @llvm.umin.i32(i32 %72, i32 %70) #11
  switch i8 %35, label %81 [
    i8 9, label %76
    i8 7, label %74
  ], !prof !19

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.request_queue, ptr %23, i32 0, i32 32, i32 15
  br label %78

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.request_queue, ptr %23, i32 0, i32 32, i32 16
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi ptr [ %77, %76 ], [ %75, %74 ]
  %80 = load i32, ptr %79, align 4
  br label %81

81:                                               ; preds = %78, %68
  %82 = phi i32 [ %72, %68 ], [ %80, %78 ]
  %83 = tail call i32 @llvm.umin.i32(i32 %73, i32 %82) #11
  br label %84

84:                                               ; preds = %81, %48, %45, %42, %38, %28
  %85 = phi i32 [ %30, %28 ], [ %83, %81 ], [ %41, %38 ], [ %44, %42 ], [ %47, %45 ], [ %50, %48 ]
  %86 = icmp ugt i32 %20, %85
  br i1 %86, label %153, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 4
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call void @__rq_qos_merge(ptr noundef nonnull %89, ptr noundef %1, ptr noundef %2) #11
  br label %92

92:                                               ; preds = %91, %87
  %93 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 11
  %94 = load ptr, ptr %93, align 4
  store ptr %2, ptr %94, align 4
  store ptr %2, ptr %93, align 4
  %95 = load i32, ptr %17, align 4
  %96 = load i32, ptr %14, align 8
  %97 = add i32 %96, %95
  store i32 %97, ptr %14, align 8
  %98 = add nuw i16 %6, 1
  store i16 %98, ptr %4, align 2
  %99 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %100 = load i32, ptr %99, align 8
  %101 = and i32 %100, 8192
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %160, label %103

103:                                              ; preds = %92
  %104 = load ptr, ptr %1, align 8
  %105 = getelementptr inbounds %struct.request_queue, ptr %104, i32 0, i32 15
  %106 = load ptr, ptr %105, align 8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %160, label %108

108:                                              ; preds = %103
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %109 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 13
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr inbounds %struct.block_device, ptr %110, i32 0, i32 2
  %112 = load ptr, ptr %111, align 8
  %113 = load i32, ptr %24, align 4
  %114 = and i32 %113, 255
  %115 = icmp eq i32 %114, 3
  %116 = and i32 %113, 1
  %117 = select i1 %115, i32 2, i32 %116
  %118 = getelementptr %struct.disk_stats, ptr %112, i32 0, i32 3, i32 %117
  %119 = ptrtoint ptr %118 to i32
  %120 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %121 = inttoptr i32 %120 to ptr
  %122 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %121) #9, !srcloc !23
  %123 = add i32 %122, %119
  %124 = inttoptr i32 %123 to ptr
  %125 = load i32, ptr %124, align 4
  %126 = add i32 %125, 1
  store i32 %126, ptr %124, align 4
  %127 = load ptr, ptr %109, align 8
  %128 = getelementptr inbounds %struct.block_device, ptr %127, i32 0, i32 15
  %129 = load i8, ptr %128, align 8
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %152, label %131

131:                                              ; preds = %108
  %132 = getelementptr inbounds %struct.block_device, ptr %127, i32 0, i32 17
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr inbounds %struct.gendisk, ptr %133, i32 0, i32 7
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.block_device, ptr %135, i32 0, i32 2
  %137 = load ptr, ptr %136, align 8
  %138 = load i32, ptr %24, align 4
  %139 = and i32 %138, 255
  %140 = icmp eq i32 %139, 3
  %141 = and i32 %138, 1
  %142 = select i1 %140, i32 2, i32 %141
  %143 = getelementptr %struct.disk_stats, ptr %137, i32 0, i32 3, i32 %142
  %144 = ptrtoint ptr %143 to i32
  %145 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %146 = inttoptr i32 %145 to ptr
  %147 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %146) #9, !srcloc !23
  %148 = add i32 %147, %144
  %149 = inttoptr i32 %148 to ptr
  %150 = load i32, ptr %149, align 4
  %151 = add i32 %150, 1
  store i32 %151, ptr %149, align 4
  br label %152

152:                                              ; preds = %131, %108
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  br label %160

153:                                              ; preds = %84, %10
  %154 = phi i32 [ %12, %10 ], [ %25, %84 ]
  %155 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %156 = or i32 %154, 16384
  store i32 %156, ptr %155, align 4
  %157 = load ptr, ptr %0, align 8
  %158 = icmp eq ptr %157, %1
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  store ptr null, ptr %0, align 8
  br label %160

160:                                              ; preds = %159, %153, %152, %103, %92
  %161 = phi i32 [ 0, %92 ], [ 0, %103 ], [ 0, %152 ], [ 2, %153 ], [ 2, %159 ]
  ret i32 %161
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_split(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_split(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @bio_will_gap(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #7 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %157, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 8, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %157, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = trunc i32 %12 to i8
  switch i8 %13, label %14 [
    i8 3, label %157
    i8 5, label %157
    i8 9, label %157
  ]

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %157, label %18

18:                                               ; preds = %14
  %19 = icmp eq ptr %1, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 10
  %22 = load ptr, ptr %21, align 8
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi ptr [ %22, %20 ], [ %2, %18 ]
  %25 = getelementptr inbounds %struct.bio, ptr %24, i32 0, i32 16
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.bio, ptr %24, i32 0, i32 8, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.bio, ptr %24, i32 0, i32 8, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr %struct.bio_vec, ptr %26, i32 %28, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %30
  %34 = and i32 %33, %16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %157

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 8, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 8, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 16
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr %struct.bio_vec, ptr %42, i32 %38
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr %struct.bio_vec, ptr %42, i32 %38, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = sub i32 %46, %40
  %48 = tail call i32 @llvm.umin.i32(i32 %8, i32 %47) #11
  %49 = getelementptr %struct.bio_vec, ptr %42, i32 %38, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, %40
  %52 = icmp ugt i32 %8, %47
  br i1 %52, label %53, label %104

53:                                               ; preds = %36
  %54 = and i32 %12, 255
  %55 = add nsw i32 %54, -3
  %56 = and i32 %55, -7
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %90, label %58

58:                                               ; preds = %53
  %59 = add i32 %40, %8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %81, label %61

61:                                               ; preds = %58
  %62 = icmp ult i32 %59, %46
  br i1 %62, label %63, label %70

63:                                               ; preds = %77, %61
  %64 = phi i32 [ %59, %61 ], [ %74, %77 ]
  %65 = phi i32 [ %38, %61 ], [ %75, %77 ]
  %66 = getelementptr %struct.bio_vec, ptr %42, i32 %65
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds i8, ptr %66, i32 8
  %69 = load i32, ptr %68, align 4
  br label %100

70:                                               ; preds = %77, %61
  %71 = phi i32 [ %75, %77 ], [ %38, %61 ]
  %72 = phi i32 [ %74, %77 ], [ %59, %61 ]
  %73 = phi i32 [ %79, %77 ], [ %46, %61 ]
  %74 = sub i32 %72, %73
  %75 = add i32 %71, 1
  %76 = icmp eq i32 %74, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %70
  %78 = getelementptr %struct.bio_vec, ptr %42, i32 %75, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = icmp ult i32 %74, %79
  br i1 %80, label %63, label %70

81:                                               ; preds = %70, %58
  %82 = phi i32 [ %38, %58 ], [ %75, %70 ]
  %83 = add i32 %82, -1
  %84 = getelementptr %struct.bio_vec, ptr %42, i32 %83
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds i8, ptr %84, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds i8, ptr %84, i32 8
  %89 = load i32, ptr %88, align 4
  br label %104

90:                                               ; preds = %53
  %91 = icmp eq i32 %40, 0
  %92 = sext i1 %91 to i32
  %93 = add i32 %38, %92
  %94 = getelementptr %struct.bio_vec, ptr %42, i32 %93
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds i8, ptr %94, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds i8, ptr %94, i32 8
  %99 = load i32, ptr %98, align 4
  br i1 %91, label %104, label %100

100:                                              ; preds = %90, %63
  %101 = phi ptr [ %95, %90 ], [ %67, %63 ]
  %102 = phi i32 [ %99, %90 ], [ %69, %63 ]
  %103 = phi i32 [ %40, %90 ], [ %64, %63 ]
  br label %104

104:                                              ; preds = %100, %90, %81, %36
  %105 = phi ptr [ %44, %36 ], [ %95, %90 ], [ %101, %100 ], [ %85, %81 ]
  %106 = phi i32 [ %48, %36 ], [ %97, %90 ], [ %103, %100 ], [ %87, %81 ]
  %107 = phi i32 [ %51, %36 ], [ %99, %90 ], [ %102, %100 ], [ %89, %81 ]
  %108 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 16
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 8, i32 2
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr %struct.bio_vec, ptr %109, i32 %111
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 8, i32 3
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr %struct.bio_vec, ptr %109, i32 %111, i32 2
  %117 = load i32, ptr %116, align 4
  %118 = add i32 %117, %115
  %119 = load ptr, ptr @mem_map, align 4
  %120 = ptrtoint ptr %105 to i32
  %121 = ptrtoint ptr %119 to i32
  %122 = sub i32 %120, %121
  %123 = lshr exact i32 %122, 5
  %124 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %125 = add i32 %123, %124
  %126 = shl i32 %125, 12
  %127 = add i32 %126, %107
  %128 = ptrtoint ptr %113 to i32
  %129 = sub i32 %128, %121
  %130 = lshr exact i32 %129, 5
  %131 = add i32 %130, %124
  %132 = shl i32 %131, 12
  %133 = add i32 %132, %118
  %134 = add i32 %127, %106
  %135 = icmp eq i32 %134, %133
  br i1 %135, label %136, label %150

136:                                              ; preds = %104
  %137 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 8, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr %struct.bio_vec, ptr %109, i32 %111, i32 1
  %140 = load i32, ptr %139, align 4
  %141 = sub i32 %140, %115
  %142 = tail call i32 @llvm.umin.i32(i32 %138, i32 %141) #11
  %143 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = or i32 %144, %127
  %146 = add i32 %133, -1
  %147 = add i32 %146, %142
  %148 = or i32 %147, %144
  %149 = icmp eq i32 %145, %148
  br i1 %149, label %157, label %150

150:                                              ; preds = %136, %104
  %151 = and i32 %118, %16
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = add i32 %107, %106
  %155 = and i32 %154, %16
  %156 = icmp ne i32 %155, 0
  br label %157

157:                                              ; preds = %153, %150, %136, %23, %14, %10, %10, %10, %6, %4
  %158 = phi i1 [ false, %14 ], [ true, %23 ], [ false, %136 ], [ false, %4 ], [ false, %6 ], [ false, %10 ], [ false, %10 ], [ false, %10 ], [ true, %150 ], [ %156, %153 ]
  ret i1 %158
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @req_attempt_discard_merge(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 17
  %5 = load i16, ptr %4, align 2
  %6 = tail call i16 @llvm.umax.i16(i16 %5, i16 1) #11
  %7 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 23
  %8 = load i16, ptr %7, align 4
  %9 = icmp ult i16 %6, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  br label %94

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 8
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 9
  %17 = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 10
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.bio, ptr %18, i32 0, i32 8, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %20, 9
  %22 = add nuw nsw i32 %21, %16
  %23 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 9
  %24 = load i64, ptr %23, align 8
  %25 = load ptr, ptr %1, align 8
  %26 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 254
  %29 = icmp eq i32 %28, 34
  br i1 %29, label %30, label %33

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.request_queue, ptr %25, i32 0, i32 32, i32 3
  %32 = load i32, ptr %31, align 4
  br label %86

33:                                               ; preds = %13
  %34 = getelementptr inbounds %struct.request_queue, ptr %25, i32 0, i32 32, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  %37 = trunc i32 %27 to i8
  br i1 %36, label %39, label %38

38:                                               ; preds = %33
  switch i8 %37, label %53 [
    i8 5, label %40
    i8 3, label %40
  ], !prof !17

39:                                               ; preds = %33
  switch i8 %37, label %50 [
    i8 5, label %40
    i8 3, label %40
    i8 7, label %44
    i8 9, label %47
  ], !prof !18

40:                                               ; preds = %39, %39, %38, %38
  %41 = getelementptr inbounds %struct.request_queue, ptr %25, i32 0, i32 32, i32 13
  %42 = load i32, ptr %41, align 4
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 8388607) #11
  br label %86

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.request_queue, ptr %25, i32 0, i32 32, i32 15
  %46 = load i32, ptr %45, align 4
  br label %86

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.request_queue, ptr %25, i32 0, i32 32, i32 16
  %49 = load i32, ptr %48, align 4
  br label %86

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.request_queue, ptr %25, i32 0, i32 32, i32 6
  %52 = load i32, ptr %51, align 4
  br label %86

53:                                               ; preds = %38
  %54 = tail call i32 @llvm.ctpop.i32(i32 %35) #11, !range !13
  %55 = icmp ult i32 %54, 2
  br i1 %55, label %56, label %60, !prof !10

56:                                               ; preds = %53
  %57 = add i32 %35, -1
  %58 = trunc i64 %24 to i32
  %59 = and i32 %57, %58
  br label %70

60:                                               ; preds = %53
  %61 = icmp ult i64 %24, 4294967296
  br i1 %61, label %62, label %65, !prof !10

62:                                               ; preds = %60
  %63 = trunc i64 %24 to i32
  %64 = urem i32 %63, %35
  br label %70

65:                                               ; preds = %60
  %66 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %35, i64 %24) #12, !srcloc !11
  %67 = extractvalue { i64, i64 } %66, 0
  %68 = lshr i64 %67, 32
  %69 = trunc i64 %68 to i32
  br label %70

70:                                               ; preds = %65, %62, %56
  %71 = phi i32 [ %59, %56 ], [ %64, %62 ], [ %69, %65 ]
  %72 = sub i32 %35, %71
  %73 = getelementptr inbounds %struct.request_queue, ptr %25, i32 0, i32 32, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = tail call i32 @llvm.umin.i32(i32 %74, i32 %72) #11
  switch i8 %37, label %83 [
    i8 9, label %78
    i8 7, label %76
  ], !prof !19

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.request_queue, ptr %25, i32 0, i32 32, i32 15
  br label %80

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.request_queue, ptr %25, i32 0, i32 32, i32 16
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi ptr [ %79, %78 ], [ %77, %76 ]
  %82 = load i32, ptr %81, align 4
  br label %83

83:                                               ; preds = %80, %70
  %84 = phi i32 [ %74, %70 ], [ %82, %80 ]
  %85 = tail call i32 @llvm.umin.i32(i32 %75, i32 %84) #11
  br label %86

86:                                               ; preds = %83, %50, %47, %44, %40, %30
  %87 = phi i32 [ %32, %30 ], [ %85, %83 ], [ %43, %40 ], [ %46, %44 ], [ %49, %47 ], [ %52, %50 ]
  %88 = icmp ugt i32 %22, %87
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 17
  %91 = load i16, ptr %90, align 2
  %92 = tail call i16 @llvm.umax.i16(i16 %91, i16 1) #11
  %93 = add i16 %92, %6
  store i16 %93, ptr %4, align 2
  br label %101

94:                                               ; preds = %86, %10
  %95 = phi i32 [ %12, %10 ], [ %27, %86 ]
  %96 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %97 = or i32 %95, 16384
  store i32 %97, ptr %96, align 4
  %98 = load ptr, ptr %0, align 8
  %99 = icmp eq ptr %98, %1
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store ptr null, ptr %0, align 8
  br label %101

101:                                              ; preds = %100, %94, %89
  %102 = phi i1 [ true, %89 ], [ false, %94 ], [ false, %100 ]
  ret i1 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ll_merge_requests_fn(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = tail call fastcc zeroext i1 @bio_will_gap(ptr noundef %5, ptr noundef %0, ptr noundef %7, ptr noundef %4) #11
  br i1 %8, label %101, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 9
  %13 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 8
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 9
  %16 = add nuw nsw i32 %15, %12
  %17 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 9
  %18 = load i64, ptr %17, align 8
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 254
  %23 = icmp eq i32 %22, 34
  br i1 %23, label %24, label %27

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 32, i32 3
  %26 = load i32, ptr %25, align 4
  br label %80

27:                                               ; preds = %9
  %28 = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 32, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  %31 = trunc i32 %21 to i8
  br i1 %30, label %33, label %32

32:                                               ; preds = %27
  switch i8 %31, label %47 [
    i8 5, label %34
    i8 3, label %34
  ], !prof !17

33:                                               ; preds = %27
  switch i8 %31, label %44 [
    i8 5, label %34
    i8 3, label %34
    i8 7, label %38
    i8 9, label %41
  ], !prof !18

34:                                               ; preds = %33, %33, %32, %32
  %35 = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 32, i32 13
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 8388607) #11
  br label %80

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 32, i32 15
  %40 = load i32, ptr %39, align 4
  br label %80

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 32, i32 16
  %43 = load i32, ptr %42, align 4
  br label %80

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 32, i32 6
  %46 = load i32, ptr %45, align 4
  br label %80

47:                                               ; preds = %32
  %48 = tail call i32 @llvm.ctpop.i32(i32 %29) #11, !range !13
  %49 = icmp ult i32 %48, 2
  br i1 %49, label %50, label %54, !prof !10

50:                                               ; preds = %47
  %51 = add i32 %29, -1
  %52 = trunc i64 %18 to i32
  %53 = and i32 %51, %52
  br label %64

54:                                               ; preds = %47
  %55 = icmp ult i64 %18, 4294967296
  br i1 %55, label %56, label %59, !prof !10

56:                                               ; preds = %54
  %57 = trunc i64 %18 to i32
  %58 = urem i32 %57, %29
  br label %64

59:                                               ; preds = %54
  %60 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %29, i64 %18) #12, !srcloc !11
  %61 = extractvalue { i64, i64 } %60, 0
  %62 = lshr i64 %61, 32
  %63 = trunc i64 %62 to i32
  br label %64

64:                                               ; preds = %59, %56, %50
  %65 = phi i32 [ %53, %50 ], [ %58, %56 ], [ %63, %59 ]
  %66 = sub i32 %29, %65
  %67 = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 32, i32 6
  %68 = load i32, ptr %67, align 4
  %69 = tail call i32 @llvm.umin.i32(i32 %68, i32 %66) #11
  switch i8 %31, label %77 [
    i8 9, label %72
    i8 7, label %70
  ], !prof !19

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 32, i32 15
  br label %74

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 32, i32 16
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi ptr [ %73, %72 ], [ %71, %70 ]
  %76 = load i32, ptr %75, align 4
  br label %77

77:                                               ; preds = %74, %64
  %78 = phi i32 [ %68, %64 ], [ %76, %74 ]
  %79 = tail call i32 @llvm.umin.i32(i32 %69, i32 %78) #11
  br label %80

80:                                               ; preds = %77, %44, %41, %38, %34, %24
  %81 = phi i32 [ %26, %24 ], [ %79, %77 ], [ %37, %34 ], [ %40, %38 ], [ %43, %41 ], [ %46, %44 ]
  %82 = icmp ugt i32 %16, %81
  br i1 %82, label %101, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 17
  %85 = load i16, ptr %84, align 2
  %86 = zext i16 %85 to i32
  %87 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 17
  %88 = load i16, ptr %87, align 2
  %89 = zext i16 %88 to i32
  %90 = add nuw nsw i32 %89, %86
  %91 = and i32 %21, 255
  %92 = icmp eq i32 %91, 3
  %93 = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 32, i32 23
  %94 = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 32, i32 21
  %95 = select i1 %92, ptr %93, ptr %94
  %96 = load i16, ptr %95, align 4
  %97 = zext i16 %96 to i32
  %98 = icmp ugt i32 %90, %97
  br i1 %98, label %101, label %99

99:                                               ; preds = %83
  %100 = trunc i32 %90 to i16
  store i16 %100, ptr %84, align 2
  br label %101

101:                                              ; preds = %99, %83, %80, %2
  %102 = phi i32 [ 1, %99 ], [ 0, %2 ], [ 0, %80 ], [ 0, %83 ]
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @elv_merge_requests(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @blk_account_io_merge_request(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 8192
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %57, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %57, label %11

11:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !27
  %12 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 13
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 3
  %20 = and i32 %17, 1
  %21 = select i1 %19, i32 2, i32 %20
  %22 = getelementptr %struct.disk_stats, ptr %15, i32 0, i32 3, i32 %21
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #9, !srcloc !23
  %27 = add i32 %26, %23
  %28 = inttoptr i32 %27 to ptr
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  %31 = load ptr, ptr %12, align 8
  %32 = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 15
  %33 = load i8, ptr %32, align 8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %11
  %36 = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 17
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.gendisk, ptr %37, i32 0, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.block_device, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = load i32, ptr %16, align 4
  %43 = and i32 %42, 255
  %44 = icmp eq i32 %43, 3
  %45 = and i32 %42, 1
  %46 = select i1 %44, i32 2, i32 %45
  %47 = getelementptr %struct.disk_stats, ptr %41, i32 0, i32 3, i32 %46
  %48 = ptrtoint ptr %47 to i32
  %49 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %50 = inttoptr i32 %49 to ptr
  %51 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %50) #9, !srcloc !23
  %52 = add i32 %51, %48
  %53 = inttoptr i32 %52 to ptr
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 4
  br label %56

56:                                               ; preds = %35, %11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !28
  br label %57

57:                                               ; preds = %56, %6, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_block_rq_merge(ptr noundef %0) unnamed_addr #8 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_rq_merge, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #11
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %16 = tail call i32 @__traceiter_block_rq_merge(ptr noundef null, ptr noundef %0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_rq_merge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_bio_backmerge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rq_qos_merge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @elv_latter_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_bio_frontmerge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @elv_former_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inlinehint nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148355274, i64 2148355554, i64 2148355888, i64 2148356222}
!12 = !{!"auto-init"}
!13 = !{i32 0, i32 33}
!14 = !{i64 2153737534}
!15 = !{i64 2153741759}
!16 = !{i64 2153063150, i64 2153063642, i64 2153063187, i64 2153063243, i64 2153063277, i64 2153063301, i64 2153063342, i64 2153063363, i64 2153063391, i64 2153063425}
!17 = !{!"branch_weights", i32 1, i32 1, i32 1}
!18 = !{!"branch_weights", i32 4000000, i32 4004001, i32 4004001, i32 2001, i32 2000}
!19 = !{!"branch_weights", i32 4000000, i32 2000, i32 2001}
!20 = !{i64 2153638298}
!21 = !{i64 2153638454}
!22 = !{i64 2154404908}
!23 = !{i64 353850}
!24 = !{i64 2154424888}
!25 = !{i64 2153654414}
!26 = !{i64 2153654572}
!27 = !{i64 2154380639}
!28 = !{i64 2154400619}
!29 = !{i64 2153586192}
!30 = !{i64 2153586336}
