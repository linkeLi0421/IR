; ModuleID = '/llk/IR/arch/arm/mm/fault.c_pt.bc'
source_filename = "../arch/arm/mm/fault.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mm_struct = type { %struct.anon, [0 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.fsr_info = type { ptr, i32, i32, ptr }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.static_key = type { %struct.atomic_t }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.3, %union.anon.65, %struct.atomic_t }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.65 = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.15 }
%struct.llist_node = type { ptr }
%union.anon.15 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.16 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}

@init_mm = external dso_local local_unnamed_addr global %struct.mm_struct, align 8
@.str = private unnamed_addr constant [22 x i8] c"%s[%08lx] *pgd=%08llx\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"\01c(bad)\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"\01c, *pte=%08llx\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"\01c, *ppte=%08llx\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@fsr_info = internal unnamed_addr global [32 x %struct.fsr_info] [%struct.fsr_info { ptr @do_bad, i32 11, i32 0, ptr @.str.14 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 1, ptr @.str.15 }, %struct.fsr_info { ptr @do_bad, i32 9, i32 0, ptr @.str.16 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 1, ptr @.str.15 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.17 }, %struct.fsr_info { ptr @do_translation_fault, i32 11, i32 1, ptr @.str.18 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.17 }, %struct.fsr_info { ptr @do_page_fault, i32 11, i32 1, ptr @.str.19 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.20 }, %struct.fsr_info { ptr @do_bad, i32 11, i32 2, ptr @.str.21 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.20 }, %struct.fsr_info { ptr @do_bad, i32 11, i32 2, ptr @.str.22 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.23 }, %struct.fsr_info { ptr @do_sect_fault, i32 11, i32 2, ptr @.str.24 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.23 }, %struct.fsr_info { ptr @do_page_fault, i32 11, i32 2, ptr @.str.25 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.26 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.27 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.28 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.29 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.30 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.31 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 3, ptr @.str.32 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.33 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.34 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.35 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.36 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.37 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.38 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.39 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.40 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.41 }], align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"\0118<--- cut here ---\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"\011Unhandled fault: %s (0x%03x) at 0x%08lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\011\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ifsr_info = internal unnamed_addr global [32 x %struct.fsr_info] [%struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.43 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.44 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.45 }, %struct.fsr_info { ptr @do_bad, i32 11, i32 2, ptr @.str.46 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.47 }, %struct.fsr_info { ptr @do_translation_fault, i32 11, i32 1, ptr @.str.18 }, %struct.fsr_info { ptr @do_bad, i32 11, i32 2, ptr @.str.48 }, %struct.fsr_info { ptr @do_page_fault, i32 11, i32 1, ptr @.str.19 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.20 }, %struct.fsr_info { ptr @do_bad, i32 11, i32 2, ptr @.str.21 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.49 }, %struct.fsr_info { ptr @do_bad, i32 11, i32 2, ptr @.str.22 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.23 }, %struct.fsr_info { ptr @do_sect_fault, i32 11, i32 2, ptr @.str.24 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.23 }, %struct.fsr_info { ptr @do_page_fault, i32 11, i32 2, ptr @.str.25 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.26 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.27 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.28 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.29 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.50 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.31 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.51 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.33 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.52 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.35 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.36 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.37 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.38 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.39 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.40 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.41 }], align 4
@.str.9 = private unnamed_addr constant [52 x i8] c"\011Unhandled prefetch abort: %s (0x%03x) at 0x%08lx\0A\00", align 1
@__initcall__kmod_fault__256_623_exceptions_init3 = internal global ptr @exceptions_init, section ".initcall3.init", align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@harden_branch_predictor_fn = external dso_local global ptr, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"NULL pointer dereference\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"paging request\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"\011Unable to handle kernel %s at virtual address %08lx\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Oops\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"vector exception\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"alignment exception\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"terminal exception\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"external abort on linefetch\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"section translation fault\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"page translation fault\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"external abort on non-linefetch\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"section domain fault\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"page domain fault\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"external abort on translation\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"section permission fault\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"page permission fault\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"unknown 16\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"unknown 17\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"unknown 18\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"unknown 19\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"lock abort\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"unknown 21\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"imprecise external abort\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"unknown 23\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"dcache parity error\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"unknown 25\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"unknown 26\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"unknown 27\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"unknown 28\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"unknown 29\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"unknown 30\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"unknown 31\00", align 1
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@.str.42 = private unnamed_addr constant [20 x i8] c"execution of memory\00", align 1
@perf_swevent_enabled = external dso_local global [12 x %struct.static_key], align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@.str.43 = private unnamed_addr constant [10 x i8] c"unknown 0\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"unknown 1\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"debug event\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"section access flag fault\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"unknown 4\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"page access flag fault\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"unknown 10\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"unknown 20\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"unknown 22\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"unknown 24\00", align 1
@.str.53 = private unnamed_addr constant [134 x i8] c"\014Hit pending asynchronous external abort (FSR=0x%08x) during first unmask, this is most likely caused by a firmware/bootloader bug.\0A\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c"I-cache maintenance fault\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_fault__256_623_exceptions_init3], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @show_pte(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  %5 = select i1 %4, ptr @init_mm, ptr %1
  %6 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = lshr i32 %2, 21
  %9 = getelementptr [2 x i32], ptr %7, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = zext i32 %10 to i64
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0, i32 noundef %2, i64 noundef %11) #9
  %13 = load i32, ptr %9, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %54, label %15

15:                                               ; preds = %3
  %16 = and i32 %13, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %54

20:                                               ; preds = %15
  %21 = load ptr, ptr @mem_map, align 4
  %22 = lshr i32 %13, 12
  %23 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %24 = sub i32 %22, %23
  %25 = getelementptr %struct.page, ptr %21, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 30
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %54, label %29

29:                                               ; preds = %20
  %30 = icmp ne i32 %27, 3
  %31 = load i32, ptr @movable_zone, align 4
  %32 = icmp ne i32 %31, 2
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = load i32, ptr @pgprot_kernel, align 4
  %36 = or i32 %35, 512
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %37 = tail call ptr @llvm.thread.pointer() #10
  %38 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 149
  %39 = load i32, ptr %38, align 8
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %41 = tail call ptr @__kmap_local_page_prot(ptr noundef %25, i32 noundef %36) #10
  %42 = lshr i32 %2, 12
  %43 = and i32 %42, 511
  %44 = getelementptr i32, ptr %41, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = zext i32 %45 to i64
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i64 noundef %46) #9
  %48 = getelementptr i32, ptr %44, i32 512
  %49 = load i32, ptr %48, align 4
  %50 = zext i32 %49 to i64
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i64 noundef %50) #9
  tail call void @kunmap_local_indexed(ptr noundef %44) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %52 = load i32, ptr %38, align 8
  %53 = add i32 %52, -1
  store i32 %53, ptr %38, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %54

54:                                               ; preds = %34, %29, %20, %18, %3
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_bad_area(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @llvm.thread.pointer() #10
  %5 = getelementptr [18 x i32], ptr %2, i32 0, i32 16
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %3
  %10 = icmp ugt i32 %0, -1090519040
  br i1 %10, label %11, label %21

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, ptrtoint (ptr @harden_branch_predictor_fn to i32)
  %17 = inttoptr i32 %16 to ptr
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  tail call void %18() #10
  br label %21

21:                                               ; preds = %20, %11, %9
  %22 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 152
  store i32 %0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 152, i32 2
  store i32 %1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 152, i32 1
  store i32 14, ptr %24, align 4
  %25 = inttoptr i32 %0 to ptr
  %26 = tail call i32 @force_sig_fault(i32 noundef 11, i32 noundef 1, ptr noundef %25) #10
  br label %30

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 38
  %29 = load ptr, ptr %28, align 8
  tail call fastcc void @__do_kernel_fault(ptr noundef %29, i32 noundef %0, i32 noundef %1, ptr noundef %2)
  br label %30

30:                                               ; preds = %27, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__do_user_fault(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @llvm.thread.pointer() #10
  %6 = icmp ugt i32 %0, -1090519040
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, ptrtoint (ptr @harden_branch_predictor_fn to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %7
  tail call void %14() #10
  br label %17

17:                                               ; preds = %16, %7, %4
  %18 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 152
  store i32 %0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 152, i32 2
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 152, i32 1
  store i32 14, ptr %20, align 4
  %21 = inttoptr i32 %0 to ptr
  %22 = tail call i32 @force_sig_fault(i32 noundef %2, i32 noundef %3, ptr noundef %21) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__do_kernel_fault(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call i32 @fixup_exception(ptr noundef %3) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = icmp ult i32 %1, 4096
  %9 = select i1 %8, ptr @.str.10, ptr @.str.11
  tail call void @bust_spinlocks(i32 noundef 1) #10
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull %9, i32 noundef %1) #9
  tail call void @show_pte(ptr noundef nonnull @.str.7, ptr noundef %0, i32 noundef %1) #10
  tail call void @die(ptr noundef nonnull @.str.13, ptr noundef %3, i32 noundef %2) #10
  tail call void @bust_spinlocks(i32 noundef 0) #10
  tail call void @make_task_dead(i32 noundef 9) #11
  unreachable

12:                                               ; preds = %4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @hook_fault_code(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 section ".init.text" {
  %6 = icmp ugt i32 %0, 31
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/fault.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 523, 0\0A.popsection", ""() #10, !srcloc !12
  unreachable

8:                                                ; preds = %5
  %9 = getelementptr [32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 %0
  store ptr %1, ptr %9, align 4
  %10 = getelementptr [32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 %0, i32 1
  store i32 %2, ptr %10, align 4
  %11 = getelementptr [32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 %0, i32 2
  store i32 %3, ptr %11, align 4
  %12 = getelementptr [32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 %0, i32 3
  store ptr %4, ptr %12, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_DataAbort(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %1, 15
  %5 = lshr i32 %1, 6
  %6 = and i32 %5, 16
  %7 = or i32 %6, %4
  %8 = getelementptr %struct.fsr_info, ptr @fsr_info, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = and i32 %1, 2147483647
  %11 = tail call i32 %9(i32 noundef %0, i32 noundef %10, ptr noundef %2) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %3
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  %15 = getelementptr %struct.fsr_info, ptr @fsr_info, i32 %7, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %16, i32 noundef %1, i32 noundef %0) #9
  %18 = tail call ptr @llvm.thread.pointer() #10
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 37
  %20 = load ptr, ptr %19, align 4
  tail call void @show_pte(ptr noundef nonnull @.str.7, ptr noundef %20, i32 noundef %0)
  %21 = getelementptr %struct.fsr_info, ptr @fsr_info, i32 %7, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.fsr_info, ptr @fsr_info, i32 %7, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = inttoptr i32 %0 to ptr
  tail call void @arm_notify_die(ptr noundef nonnull @.str.8, ptr noundef %2, i32 noundef %22, i32 noundef %24, ptr noundef %25, i32 noundef %1, i32 noundef 0) #10
  br label %26

26:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_notify_die(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @hook_ifault_code(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 section ".init.text" {
  %6 = icmp ugt i32 %0, 31
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/fault.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 556, 0\0A.popsection", ""() #10, !srcloc !13
  unreachable

8:                                                ; preds = %5
  %9 = getelementptr [32 x %struct.fsr_info], ptr @ifsr_info, i32 0, i32 %0
  store ptr %1, ptr %9, align 4
  %10 = getelementptr [32 x %struct.fsr_info], ptr @ifsr_info, i32 0, i32 %0, i32 1
  store i32 %2, ptr %10, align 4
  %11 = getelementptr [32 x %struct.fsr_info], ptr @ifsr_info, i32 0, i32 %0, i32 2
  store i32 %3, ptr %11, align 4
  %12 = getelementptr [32 x %struct.fsr_info], ptr @ifsr_info, i32 0, i32 %0, i32 3
  store ptr %4, ptr %12, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_PrefetchAbort(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %1, 15
  %5 = lshr i32 %1, 6
  %6 = and i32 %5, 16
  %7 = or i32 %6, %4
  %8 = getelementptr %struct.fsr_info, ptr @ifsr_info, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = or i32 %1, -2147483648
  %11 = tail call i32 %9(i32 noundef %0, i32 noundef %10, ptr noundef %2) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %3
  %14 = getelementptr %struct.fsr_info, ptr @ifsr_info, i32 %7, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %15, i32 noundef %1, i32 noundef %0) #9
  %17 = getelementptr %struct.fsr_info, ptr @ifsr_info, i32 %7, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr %struct.fsr_info, ptr @ifsr_info, i32 %7, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = inttoptr i32 %0 to ptr
  tail call void @arm_notify_die(ptr noundef nonnull @.str.8, ptr noundef %2, i32 noundef %18, i32 noundef %20, ptr noundef %21, i32 noundef %1, i32 noundef 0) #10
  br label %22

22:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @early_abt_enable() local_unnamed_addr #2 section ".init.text" {
  store ptr @early_abort_handler, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 22), align 4
  tail call void asm sideeffect "cpsie a\09@ __sta", "~{memory},~{cc}"() #10, !srcloc !14
  store ptr @do_bad, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 22), align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @early_abort_handler(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 section ".init.text" {
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %1) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @do_bad(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #4 {
  ret i32 1
}

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @exceptions_init() #5 section ".init.text" {
  %1 = tail call i32 @cpu_architecture() #12
  %2 = icmp sgt i32 %1, 7
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store ptr @do_translation_fault, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 4), align 4
  store i32 11, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 4, i32 1), align 4
  store i32 1, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 4, i32 2), align 4
  store ptr @.str.54, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 4, i32 3), align 4
  br label %4

4:                                                ; preds = %3, %0
  %5 = tail call i32 @cpu_architecture() #12
  %6 = icmp sgt i32 %5, 8
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store ptr @do_bad, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 3), align 4
  store i32 11, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 3, i32 1), align 4
  store i32 1, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 3, i32 2), align 4
  store ptr @.str.46, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 3, i32 3), align 4
  store ptr @do_bad, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 6), align 4
  store i32 11, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 6, i32 1), align 4
  store i32 1, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 6, i32 2), align 4
  store ptr @.str.46, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 6, i32 3), align 4
  br label %8

8:                                                ; preds = %7, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @force_sig_fault(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fixup_exception(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bust_spinlocks(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @die(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @make_task_dead(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @do_translation_fault(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = icmp ult i32 %0, -1090519040
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 @do_page_fault(i32 noundef %0, i32 noundef %1, ptr noundef %2)
  br label %55

7:                                                ; preds = %3
  %8 = getelementptr [18 x i32], ptr %2, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %7
  %13 = lshr i32 %0, 21
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c2, c0, 0", "=r,~{cc}"() #13, !srcloc !15
  %15 = and i32 %14, -16384
  %16 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %15, i32 -2130706432, i32 8454144) #13, !srcloc !16
  %17 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %18 = getelementptr [2 x i32], ptr %17, i32 %13
  %19 = lshr i32 %0, 20
  %20 = and i32 %19, 1
  %21 = getelementptr i32, ptr %18, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %51, label %24

24:                                               ; preds = %12
  %25 = inttoptr i32 %16 to ptr
  %26 = getelementptr [2 x i32], ptr %25, i32 %13
  %27 = load i32, ptr %18, align 4
  store i32 %27, ptr %26, align 4
  %28 = getelementptr i32, ptr %18, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr i32, ptr %26, i32 1
  store i32 %29, ptr %30, align 4
  %31 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %26, i32 %31, i32 1073741824) #10, !srcloc !17
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !18
  br label %55

32:                                               ; preds = %7
  %33 = tail call ptr @llvm.thread.pointer() #10
  %34 = icmp ugt i32 %0, -1090519040
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, ptrtoint (ptr @harden_branch_predictor_fn to i32)
  %41 = inttoptr i32 %40 to ptr
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  tail call void %42() #10
  br label %45

45:                                               ; preds = %44, %35, %32
  %46 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 152
  store i32 %0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 152, i32 2
  store i32 %1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 152, i32 1
  store i32 14, ptr %48, align 4
  %49 = inttoptr i32 %0 to ptr
  %50 = tail call i32 @force_sig_fault(i32 noundef 11, i32 noundef 1, ptr noundef nonnull %49) #10
  br label %55

51:                                               ; preds = %12
  %52 = tail call ptr @llvm.thread.pointer() #10
  %53 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 38
  %54 = load ptr, ptr %53, align 8
  tail call fastcc void @__do_kernel_fault(ptr noundef %54, i32 noundef %0, i32 noundef %1, ptr noundef %2) #10
  br label %55

55:                                               ; preds = %51, %45, %24, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @do_page_fault(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @llvm.thread.pointer() #10
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr [18 x i32], ptr %2, i32 0, i32 16
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !19
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 149
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %159

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %18 = load volatile i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = icmp ne ptr %6, null
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %159

22:                                               ; preds = %16
  %23 = load i32, ptr %7, align 4
  %24 = and i32 %23, 15
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 596, i32 532
  %27 = and i32 %1, 10240
  %28 = icmp eq i32 %27, 2048
  %29 = zext i1 %28 to i32
  %30 = or i32 %26, %29
  %31 = select i1 %28, i32 2, i32 7
  %32 = icmp sgt i32 %1, -1
  br i1 %32, label %43, label %33

33:                                               ; preds = %22
  %34 = and i32 %1, 13
  %35 = lshr i32 %1, 6
  %36 = and i32 %35, 16
  %37 = or i32 %36, %34
  %38 = icmp ne i32 %37, 13
  %39 = select i1 %38, i1 true, i1 %25
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  tail call void @bust_spinlocks(i32 noundef 1) #10
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.42, i32 noundef %0) #9
  tail call void @show_pte(ptr noundef nonnull @.str.7, ptr noundef nonnull %6, i32 noundef %0) #10
  tail call void @die(ptr noundef nonnull @.str.13, ptr noundef %2, i32 noundef %1) #10
  tail call void @bust_spinlocks(i32 noundef 0) #10
  tail call void @make_task_dead(i32 noundef 9) #11
  unreachable

43:                                               ; preds = %33, %22
  %44 = phi i32 [ 4, %33 ], [ %31, %22 ]
  %45 = load volatile i32, ptr getelementptr inbounds ([12 x %struct.static_key], ptr @perf_swevent_enabled, i32 0, i32 2), align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = zext i32 %0 to i64
  tail call void @__perf_sw_event(i32 noundef 2, i64 noundef 1, ptr noundef %2, i64 noundef %48) #10
  br label %49

49:                                               ; preds = %47, %43
  %50 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %6, i1 noundef zeroext false) #10
  br label %53

53:                                               ; preds = %52, %49
  %54 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 15
  %55 = tail call i32 @down_read_trylock(ptr noundef %54) #10
  %56 = icmp ne i32 %55, 0
  %57 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %6, i1 noundef zeroext false, i1 noundef zeroext %56) #10
  br label %60

60:                                               ; preds = %59, %53
  br i1 %56, label %79, label %61

61:                                               ; preds = %60
  %62 = load i32, ptr %7, align 4
  %63 = and i32 %62, 15
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = getelementptr [18 x i32], ptr %2, i32 0, i32 15
  %67 = load i32, ptr %66, align 4
  %68 = tail call ptr @search_exception_tables(i32 noundef %67) #10
  %69 = icmp eq ptr %68, null
  br i1 %69, label %159, label %70

70:                                               ; preds = %134, %65, %61
  %71 = phi i32 [ %135, %134 ], [ %30, %61 ], [ %30, %65 ]
  %72 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %6, i1 noundef zeroext false) #10
  br label %75

75:                                               ; preds = %74, %70
  tail call void @down_read(ptr noundef %54) #10
  %76 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %6, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %79

79:                                               ; preds = %78, %75, %60
  %80 = phi i32 [ %30, %60 ], [ %71, %75 ], [ %71, %78 ]
  %81 = tail call ptr @find_vma(ptr noundef nonnull %6, i32 noundef %0) #10
  %82 = icmp eq ptr %81, null
  br i1 %82, label %136, label %83, !prof !20

83:                                               ; preds = %79
  %84 = load i32, ptr %81, align 4
  %85 = icmp ugt i32 %84, %0
  br i1 %85, label %86, label %96, !prof !20

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.vm_area_struct, ptr %81, i32 0, i32 8
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 256
  %90 = icmp eq i32 %89, 0
  %91 = icmp ult i32 %0, 8192
  %92 = or i1 %91, %90
  br i1 %92, label %136, label %93

93:                                               ; preds = %86
  %94 = tail call i32 @expand_stack(ptr noundef nonnull %81, i32 noundef %0) #10
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %136

96:                                               ; preds = %93, %83
  %97 = getelementptr inbounds %struct.vm_area_struct, ptr %81, i32 0, i32 8
  %98 = load i32, ptr %97, align 4
  %99 = and i32 %98, %44
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %136, label %101

101:                                              ; preds = %96
  %102 = and i32 %0, -4096
  %103 = tail call i32 @handle_mm_fault(ptr noundef nonnull %81, i32 noundef %102, i32 noundef %80, ptr noundef %2) #10
  %104 = and i32 %103, 1024
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %136, label %106

106:                                              ; preds = %101
  %107 = load volatile i32, ptr %4, align 4
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 98, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %112, 256
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %110, %106
  %116 = load i32, ptr %7, align 4
  %117 = and i32 %116, 15
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %115
  %120 = load volatile i32, ptr %4, align 4
  %121 = and i32 %120, 256
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %160, !prof !21

123:                                              ; preds = %119
  %124 = load volatile i32, ptr %4, align 4
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %131, label %160

127:                                              ; preds = %110
  %128 = load i32, ptr %7, align 4
  %129 = and i32 %128, 15
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %160, label %159

131:                                              ; preds = %123, %115
  %132 = and i32 %103, 2163
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = or i32 %80, 32
  br label %70

136:                                              ; preds = %131, %101, %96, %93, %86, %79
  %137 = phi i32 [ %103, %131 ], [ 65536, %79 ], [ 65536, %86 ], [ 65536, %93 ], [ 131072, %96 ], [ %103, %101 ]
  %138 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  tail call void @__mmap_lock_do_trace_released(ptr noundef nonnull %6, i1 noundef zeroext false) #10
  br label %141

141:                                              ; preds = %140, %136
  tail call void @up_read(ptr noundef %54) #10
  %142 = and i32 %137, 198771
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %160, label %144, !prof !21

144:                                              ; preds = %141
  %145 = load i32, ptr %7, align 4
  %146 = and i32 %145, 15
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %159

148:                                              ; preds = %144
  %149 = and i32 %137, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %148
  tail call void @pagefault_out_of_memory() #10
  br label %160

152:                                              ; preds = %148
  %153 = and i32 %137, 2
  %154 = icmp eq i32 %153, 0
  %155 = icmp eq i32 %137, 131072
  %156 = select i1 %155, i32 2, i32 1
  %157 = select i1 %154, i32 11, i32 7
  %158 = select i1 %154, i32 %156, i32 2
  tail call fastcc void @__do_user_fault(i32 noundef %0, i32 noundef %1, i32 noundef %157, i32 noundef %158)
  br label %160

159:                                              ; preds = %144, %127, %65, %16, %12
  tail call fastcc void @__do_kernel_fault(ptr noundef %6, i32 noundef %0, i32 noundef %1, ptr noundef %2)
  br label %160

160:                                              ; preds = %159, %152, %151, %141, %127, %123, %119
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @do_sect_fault(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @llvm.thread.pointer() #10
  %5 = getelementptr [18 x i32], ptr %2, i32 0, i32 16
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %3
  %10 = icmp ugt i32 %0, -1090519040
  br i1 %10, label %11, label %21

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, ptrtoint (ptr @harden_branch_predictor_fn to i32)
  %17 = inttoptr i32 %16 to ptr
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  tail call void %18() #10
  br label %21

21:                                               ; preds = %20, %11, %9
  %22 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 152
  store i32 %0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 152, i32 2
  store i32 %1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 152, i32 1
  store i32 14, ptr %24, align 4
  %25 = inttoptr i32 %0 to ptr
  %26 = tail call i32 @force_sig_fault(i32 noundef 11, i32 noundef 1, ptr noundef %25) #10
  br label %30

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 38
  %29 = load ptr, ptr %28, align 8
  tail call fastcc void @__do_kernel_fault(ptr noundef %29, i32 noundef %0, i32 noundef %1, ptr noundef %2) #10
  br label %30

30:                                               ; preds = %27, %21
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @search_exception_tables(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pagefault_out_of_memory() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__perf_sw_event(i32 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @expand_stack(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @handle_mm_fault(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpu_architecture() local_unnamed_addr #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { nounwind readnone }

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
!8 = !{i64 2152778822}
!9 = !{i64 2151518421}
!10 = !{i64 2151518628}
!11 = !{i64 2152781447}
!12 = !{i64 2153574497, i64 2153574981, i64 2153574534, i64 2153574590, i64 2153574624, i64 2153574648, i64 2153574689, i64 2153574710, i64 2153574738, i64 2153574772}
!13 = !{i64 2153576963, i64 2153577447, i64 2153577000, i64 2153577056, i64 2153577090, i64 2153577114, i64 2153577155, i64 2153577176, i64 2153577204, i64 2153577238}
!14 = !{i64 2153579720}
!15 = !{i64 2153569232}
!16 = !{i64 2148852126, i64 2148852149, i64 2148852181, i64 2148852213, i64 2148852251, i64 2148852281}
!17 = !{i64 2150931822, i64 2150931835}
!18 = !{i64 2150936323}
!19 = !{i64 547055}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{!"branch_weights", i32 2000, i32 1}
