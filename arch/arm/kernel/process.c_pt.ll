; ModuleID = '/llk/IR/arch/arm/kernel/process.c_pt.bc'
source_filename = "../arch/arm/kernel/process.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___stack_chk_guard:\09\09\09\09\09"
module asm "\09.asciz \09\22__stack_chk_guard\22\09\09\09\09\09"
module asm "__kstrtabns___stack_chk_guard:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thread_notify_head:\09\09\09\09\09"
module asm "\09.asciz \09\22thread_notify_head\22\09\09\09\09\09"
module asm "__kstrtabns_thread_notify_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.rb_node, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.vm_special_mapping = type { ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.svc_pt_regs = type { %struct.pt_regs, i32 }
%struct.pt_regs = type { [18 x i32] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.49 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.stackframe = type { i32, i32, i32, i32 }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@__stack_chk_guard = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab___stack_chk_guard = external dso_local constant [0 x i8], align 1
@__kstrtabns___stack_chk_guard = external dso_local constant [0 x i8], align 1
@__ksymtab___stack_chk_guard = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__stack_chk_guard to i32), ptr @__kstrtab___stack_chk_guard, ptr @__kstrtabns___stack_chk_guard }, section "___ksymtab+__stack_chk_guard", align 4
@arm_pm_idle = dso_local local_unnamed_addr global ptr null, align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@.str = private unnamed_addr constant [28 x i8] c"\011Register r%d information:\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"PC is at %pS\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"LR is at %pS\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"pc : [<%08lx>]    lr : [<%08lx>]    psr: %08lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"sp : %08lx  ip : %08lx  fp : %08lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"r10: %08lx  r9 : %08lx  r8 : %08lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"r7 : %08lx  r6 : %08lx  r5 : %08lx  r4 : %08lx\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"r3 : %08lx  r2 : %08lx  r1 : %08lx  r0 : %08lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"Flags: %s  IRQs o%s  FIQs o%s  Mode %s  ISA %s  Segment %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@processor_modes = internal unnamed_addr constant [32 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], align 4
@isa_modes = internal unnamed_addr constant [4 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"  Table: %08x  DAC: %08x\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Control: %08x%s\0A\00", align 1
@thread_notify_head = dso_local global %struct.atomic_notifier_head zeroinitializer, align 4
@__kstrtab_thread_notify_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_thread_notify_head = external dso_local constant [0 x i8], align 1
@__ksymtab_thread_notify_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thread_notify_head to i32), ptr @__kstrtab_thread_notify_head, ptr @__kstrtabns_thread_notify_head }, section "___ksymtab_gpl+thread_notify_head", align 4
@__initcall__kmod_process__236_319_gate_vma_init3 = internal global ptr @gate_vma_init, section ".initcall3.init", align 4
@gate_vma = internal global %struct.vm_area_struct zeroinitializer, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"[vectors]\00", align 1
@signal_page = internal global ptr null, align 4
@vdso_total_pages = external dso_local local_unnamed_addr global i32, align 4
@sigpage_mapping = internal constant %struct.vm_special_mapping { ptr @.str.53, ptr @signal_page, ptr null, ptr @sigpage_mremap }, align 4
@__entry_task = dso_local local_unnamed_addr global ptr null, section ".data..percpu", align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"USER_26\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"FIQ_26\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"IRQ_26\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"SVC_26\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"UK4_26\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"UK5_26\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"UK6_26\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"UK7_26\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"UK8_26\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"UK9_26\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"UK10_26\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"UK11_26\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"UK12_26\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"UK13_26\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"UK14_26\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"UK15_26\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"USER_32\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"FIQ_32\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"IRQ_32\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"SVC_32\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"UK4_32\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"UK5_32\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"MON_32\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"ABT_32\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"UK8_32\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"UK9_32\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"HYP_32\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"UND_32\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"UK12_32\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"UK13_32\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"UK14_32\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"SYS_32\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"ARM\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"Thumb\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"Jazelle\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"ThumbEE\00", align 1
@pgprot_user = external dso_local local_unnamed_addr global i32, align 4
@vma_init.dummy_vm_ops = internal constant %struct.vm_operations_struct zeroinitializer, align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@.str.53 = private unnamed_addr constant [10 x i8] c"[sigpage]\00", align 1
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__initcall__kmod_process__236_319_gate_vma_init3, ptr @__ksymtab___stack_chk_guard, ptr @__ksymtab_thread_notify_head], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arch_cpu_idle() local_unnamed_addr #0 {
  %1 = load ptr, ptr @arm_pm_idle, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void %1() #13
  br label %7

4:                                                ; preds = %0
  %5 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %6 = tail call i32 %5() #13
  br label %7

7:                                                ; preds = %4, %3
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arch_cpu_idle_prepare() local_unnamed_addr #0 {
  tail call void asm sideeffect "cpsie f\09@ __stf", "~{memory},~{cc}"() #13, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arch_cpu_idle_enter() local_unnamed_addr #0 {
  tail call void @ledtrig_cpu(i32 noundef 0) #13
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ledtrig_cpu(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arch_cpu_idle_exit() local_unnamed_addr #0 {
  tail call void @ledtrig_cpu(i32 noundef 1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__show_regs_alloc_free(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 0) #14
  %3 = load i32, ptr %0, align 4
  %4 = inttoptr i32 %3 to ptr
  tail call void @mem_dump_obj(ptr noundef %4) #13
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 1) #14
  %6 = getelementptr [18 x i32], ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = inttoptr i32 %7 to ptr
  tail call void @mem_dump_obj(ptr noundef %8) #13
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 2) #14
  %10 = getelementptr [18 x i32], ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = inttoptr i32 %11 to ptr
  tail call void @mem_dump_obj(ptr noundef %12) #13
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 3) #14
  %14 = getelementptr [18 x i32], ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = inttoptr i32 %15 to ptr
  tail call void @mem_dump_obj(ptr noundef %16) #13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 4) #14
  %18 = getelementptr [18 x i32], ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = inttoptr i32 %19 to ptr
  tail call void @mem_dump_obj(ptr noundef %20) #13
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 5) #14
  %22 = getelementptr [18 x i32], ptr %0, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = inttoptr i32 %23 to ptr
  tail call void @mem_dump_obj(ptr noundef %24) #13
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 6) #14
  %26 = getelementptr [18 x i32], ptr %0, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = inttoptr i32 %27 to ptr
  tail call void @mem_dump_obj(ptr noundef %28) #13
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 7) #14
  %30 = getelementptr [18 x i32], ptr %0, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = inttoptr i32 %31 to ptr
  tail call void @mem_dump_obj(ptr noundef %32) #13
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 8) #14
  %34 = getelementptr [18 x i32], ptr %0, i32 0, i32 8
  %35 = load i32, ptr %34, align 4
  %36 = inttoptr i32 %35 to ptr
  tail call void @mem_dump_obj(ptr noundef %36) #13
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 9) #14
  %38 = getelementptr [18 x i32], ptr %0, i32 0, i32 9
  %39 = load i32, ptr %38, align 4
  %40 = inttoptr i32 %39 to ptr
  tail call void @mem_dump_obj(ptr noundef %40) #13
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 10) #14
  %42 = getelementptr [18 x i32], ptr %0, i32 0, i32 10
  %43 = load i32, ptr %42, align 4
  %44 = inttoptr i32 %43 to ptr
  tail call void @mem_dump_obj(ptr noundef %44) #13
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 11) #14
  %46 = getelementptr [18 x i32], ptr %0, i32 0, i32 11
  %47 = load i32, ptr %46, align 4
  %48 = inttoptr i32 %47 to ptr
  tail call void @mem_dump_obj(ptr noundef %48) #13
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 12) #14
  %50 = getelementptr [18 x i32], ptr %0, i32 0, i32 12
  %51 = load i32, ptr %50, align 4
  %52 = inttoptr i32 %51 to ptr
  tail call void @mem_dump_obj(ptr noundef %52) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_dump_obj(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__show_regs(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  %3 = getelementptr inbounds i8, ptr %2, i32 5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %3, i8 0, i32 59, i1 false), !annotation !12
  %4 = getelementptr [18 x i32], ptr %0, i32 0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.svc_pt_regs, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i32 [ %10, %8 ], [ 85, %1 ]
  tail call void @show_regs_print_info(ptr noundef nonnull @.str.1) #13
  %13 = getelementptr [18 x i32], ptr %0, i32 0, i32 15
  %14 = load i32, ptr %13, align 4
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %15) #14
  %17 = getelementptr [18 x i32], ptr %0, i32 0, i32 14
  %18 = load i32, ptr %17, align 4
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %19) #14
  %21 = load i32, ptr %13, align 4
  %22 = load i32, ptr %17, align 4
  %23 = load i32, ptr %4, align 4
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %21, i32 noundef %22, i32 noundef %23) #14
  %25 = getelementptr [18 x i32], ptr %0, i32 0, i32 13
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr [18 x i32], ptr %0, i32 0, i32 12
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr [18 x i32], ptr %0, i32 0, i32 11
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %26, i32 noundef %28, i32 noundef %30) #14
  %32 = getelementptr [18 x i32], ptr %0, i32 0, i32 10
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr [18 x i32], ptr %0, i32 0, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr [18 x i32], ptr %0, i32 0, i32 8
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %33, i32 noundef %35, i32 noundef %37) #14
  %39 = getelementptr [18 x i32], ptr %0, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr [18 x i32], ptr %0, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr [18 x i32], ptr %0, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr [18 x i32], ptr %0, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46) #14
  %48 = getelementptr [18 x i32], ptr %0, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr [18 x i32], ptr %0, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr [18 x i32], ptr %0, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = load i32, ptr %0, align 4
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %54) #14
  %56 = load i32, ptr %4, align 4
  %57 = icmp sgt i32 %56, -1
  %58 = select i1 %57, i8 110, i8 78
  store i8 %58, ptr %2, align 1
  %59 = and i32 %56, 1073741824
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i8 122, i8 90
  %62 = getelementptr inbounds [64 x i8], ptr %2, i32 0, i32 1
  store i8 %61, ptr %62, align 1
  %63 = and i32 %56, 536870912
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i8 99, i8 67
  %66 = getelementptr inbounds [64 x i8], ptr %2, i32 0, i32 2
  store i8 %65, ptr %66, align 1
  %67 = and i32 %56, 268435456
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, i8 118, i8 86
  %70 = getelementptr inbounds [64 x i8], ptr %2, i32 0, i32 3
  store i8 %69, ptr %70, align 1
  %71 = getelementptr inbounds [64 x i8], ptr %2, i32 0, i32 4
  store i8 0, ptr %71, align 1
  %72 = and i32 %12, 12
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, ptr @.str.9, ptr @.str.10
  %75 = and i32 %56, 128
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %76, ptr @.str.12, ptr @.str.13
  %78 = and i32 %56, 64
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %79, ptr @.str.12, ptr @.str.13
  %81 = and i32 %56, 31
  %82 = getelementptr [32 x ptr], ptr @processor_modes, i32 0, i32 %81
  %83 = load ptr, ptr %82, align 4
  %84 = lshr i32 %56, 23
  %85 = and i32 %84, 2
  %86 = lshr i32 %56, 5
  %87 = and i32 %86, 1
  %88 = or i32 %85, %87
  %89 = getelementptr [4 x ptr], ptr @isa_modes, i32 0, i32 %88
  %90 = load ptr, ptr %89, align 4
  %91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %2, ptr noundef nonnull %77, ptr noundef nonnull %80, ptr noundef %83, ptr noundef %90, ptr noundef nonnull %74) #14
  store i8 0, ptr %2, align 1
  %92 = tail call i32 asm "mrc p15, 0, $0, c2, c0\0A\09", "=r"() #15, !srcloc !13
  %93 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 64, ptr noundef nonnull @.str.14, i32 noundef %92, i32 noundef %12)
  %94 = tail call i32 asm "mrc p15, 0, $0, c1, c0\0A", "=r"() #15, !srcloc !14
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %94, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_regs_print_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @show_regs(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @__show_regs(ptr noundef %0)
  tail call void @dump_stack() #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exit_thread(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @atomic_notifier_call_chain(ptr noundef nonnull @thread_notify_head, i32 noundef 1, ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flush_thread() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #13
  tail call void @flush_ptrace_hw_breakpoint(ptr noundef %1) #13
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 6
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 152, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(128) %3, i8 0, i32 128, i1 false)
  %4 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 9
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(152) %4, i8 0, i32 152, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c13, c0, 2", "r"(i32 0) #13, !srcloc !16
  %5 = tail call i32 @atomic_notifier_call_chain(ptr noundef nonnull @thread_notify_head, i32 noundef 0, ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_ptrace_hw_breakpoint(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @release_thread(ptr nocapture noundef %0) local_unnamed_addr #6 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @copy_thread(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 8112
  %9 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(48) %9, i8 0, i32 48, i1 false)
  %10 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 2097168
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21, !prof !17

14:                                               ; preds = %5
  %15 = tail call i32 @llvm.read_register.i32(metadata !0)
  %16 = or i32 %15, 8191
  %17 = add nsw i32 %16, -7
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr %struct.pt_regs, ptr %18, i32 -1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(72) %8, ptr noundef align 16 dereferenceable(72) %19, i32 72, i1 false)
  store i32 0, ptr %8, align 4
  %20 = icmp eq i32 %1, 0
  br i1 %20, label %27, label %23

21:                                               ; preds = %5
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(72) %8, i8 0, i32 72, i1 false)
  store i32 %2, ptr %9, align 8
  %22 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4, i32 1
  store i32 %1, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %14
  %24 = phi i32 [ 8176, %21 ], [ 8164, %14 ]
  %25 = phi i32 [ 19, %21 ], [ %1, %14 ]
  %26 = getelementptr i8, ptr %7, i32 %24
  store i32 %25, ptr %26, align 4
  br label %27

27:                                               ; preds = %23, %14
  %28 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4, i32 9
  store i32 ptrtoint (ptr @ret_from_fork to i32), ptr %28, align 4
  %29 = ptrtoint ptr %8 to i32
  %30 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4, i32 8
  store i32 %29, ptr %30, align 8
  tail call void @clear_ptrace_hw_breakpoint(ptr noundef %3) #13
  %31 = and i32 %0, 524288
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 7
  store i32 %4, ptr %34, align 4
  br label %35

35:                                               ; preds = %33, %27
  %36 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 2", "=r"() #15, !srcloc !18
  %37 = getelementptr %struct.thread_info, ptr %3, i32 0, i32 7, i32 1
  store i32 %36, ptr %37, align 4
  %38 = tail call i32 @atomic_notifier_call_chain(ptr noundef nonnull @thread_notify_head, i32 noundef 3, ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @ret_from_fork() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_ptrace_hw_breakpoint(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__get_wchan(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.stackframe, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  %3 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 4, i32 7
  %4 = load i32, ptr %3, align 4
  store i32 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 4, i32 8
  %6 = load i32, ptr %5, align 16
  %7 = getelementptr inbounds %struct.stackframe, ptr %2, i32 0, i32 1
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.stackframe, ptr %2, i32 0, i32 2
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 4, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.stackframe, ptr %2, i32 0, i32 3
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = add i32 %14, 8192
  %16 = icmp uge i32 %6, %14
  %17 = icmp ult i32 %6, %15
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %32, %1
  %20 = phi i32 [ %30, %32 ], [ 0, %1 ]
  %21 = call i32 @unwind_frame(ptr noundef nonnull %2) #13
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %11, align 4
  %25 = call i32 @in_sched_functions(i32 noundef %24) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, ptr %11, align 4
  br label %37

29:                                               ; preds = %23
  %30 = add nuw nsw i32 %20, 1
  %31 = icmp eq i32 %30, 17
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %7, align 4
  %34 = icmp uge i32 %33, %14
  %35 = icmp ult i32 %33, %15
  %36 = and i1 %34, %35
  br i1 %36, label %19, label %37

37:                                               ; preds = %32, %29, %27, %19, %1
  %38 = phi i32 [ %28, %27 ], [ 0, %1 ], [ 0, %29 ], [ 0, %32 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unwind_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_sched_functions(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @gate_vma_init() #9 section ".init.text" {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) getelementptr inbounds (%struct.vm_area_struct, ptr @gate_vma, i32 0, i32 2), i8 0, i64 84, i1 false) #13
  store ptr @vma_init.dummy_vm_ops, ptr getelementptr inbounds (%struct.vm_area_struct, ptr @gate_vma, i32 0, i32 12), align 4
  store volatile ptr getelementptr inbounds (%struct.vm_area_struct, ptr @gate_vma, i32 0, i32 10), ptr getelementptr inbounds (%struct.vm_area_struct, ptr @gate_vma, i32 0, i32 10), align 4
  store ptr getelementptr inbounds (%struct.vm_area_struct, ptr @gate_vma, i32 0, i32 10), ptr getelementptr inbounds (%struct.vm_area_struct, ptr @gate_vma, i32 0, i32 10, i32 1), align 4
  %1 = load i32, ptr @pgprot_user, align 4
  %2 = or i32 %1, 384
  store i32 %2, ptr getelementptr inbounds (%struct.vm_area_struct, ptr @gate_vma, i32 0, i32 7), align 4
  store i32 -65536, ptr @gate_vma, align 4
  store i32 -61440, ptr getelementptr inbounds (%struct.vm_area_struct, ptr @gate_vma, i32 0, i32 1), align 4
  store i32 85, ptr getelementptr inbounds (%struct.vm_area_struct, ptr @gate_vma, i32 0, i32 8), align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @get_gate_vma(ptr nocapture noundef readnone %0) local_unnamed_addr #6 {
  ret ptr @gate_vma
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @in_gate_area(ptr nocapture readnone %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = load i32, ptr @gate_vma, align 4
  %4 = icmp ule i32 %3, %1
  %5 = load i32, ptr getelementptr inbounds (%struct.vm_area_struct, ptr @gate_vma, i32 0, i32 1), align 4
  %6 = icmp ugt i32 %5, %1
  %7 = select i1 %4, i1 %6, i1 false
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @in_gate_area_no_mm(i32 noundef %0) local_unnamed_addr #10 {
  %2 = load i32, ptr @gate_vma, align 4
  %3 = icmp ule i32 %2, %0
  %4 = load i32, ptr getelementptr inbounds (%struct.vm_area_struct, ptr @gate_vma, i32 0, i32 1), align 4
  %5 = icmp ugt i32 %4, %0
  %6 = select i1 %3, i1 %5, i1 false
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @arch_vma_name(ptr noundef readnone %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, @gate_vma
  %3 = select i1 %2, ptr @.str.16, ptr null
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @arch_setup_additional_pages(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #13
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 37
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr @signal_page, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = tail call ptr @get_signal_page() #13
  store ptr %9, ptr @signal_page, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %63, label %11

11:                                               ; preds = %8, %2
  %12 = load i32, ptr @vdso_total_pages, align 4
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext true) #13
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 15
  %18 = tail call i32 @down_write_killable(ptr noundef %17) #13
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = icmp eq i32 %18, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext %22) #13
  br label %23

23:                                               ; preds = %21, %16
  %24 = icmp eq i32 %18, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %23
  %26 = add i32 %12, 1
  %27 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 34
  %28 = load i32, ptr %27, align 8
  %29 = add i32 %28, 4095
  %30 = and i32 %29, -4096
  %31 = mul i32 %26, -4096
  %32 = add i32 %31, -1090519040
  %33 = icmp ult i32 %32, %30
  br i1 %33, label %44, label %34

34:                                               ; preds = %25
  %35 = icmp eq i32 %32, %30
  br i1 %35, label %44, label %36

36:                                               ; preds = %34
  %37 = sub i32 %32, %30
  %38 = lshr exact i32 %37, 12
  %39 = add nuw nsw i32 %38, 1
  %40 = tail call i32 @get_random_u32() #13
  %41 = urem i32 %40, %39
  %42 = shl nuw i32 %41, 12
  %43 = add i32 %42, %30
  br label %44

44:                                               ; preds = %36, %34, %25
  %45 = phi i32 [ %43, %36 ], [ 0, %25 ], [ %30, %34 ]
  %46 = shl i32 %26, 12
  %47 = tail call i32 @get_unmapped_area(ptr noundef null, i32 noundef %45, i32 noundef %46, i32 noundef 0, i32 noundef 0) #13
  %48 = icmp ugt i32 %47, -4096
  br i1 %48, label %57, label %49, !prof !19

49:                                               ; preds = %44
  %50 = tail call ptr @_install_special_mapping(ptr noundef %5, i32 noundef %47, i32 noundef 4096, i32 noundef 117, ptr noundef nonnull @sigpage_mapping) #13
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = ptrtoint ptr %50 to i32
  br label %57

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 42, i32 2
  store i32 %47, ptr %55, align 4
  %56 = add i32 %47, 4096
  tail call void @arm_install_vdso(ptr noundef %5, i32 noundef %56) #13
  br label %57

57:                                               ; preds = %54, %52, %44
  %58 = phi i32 [ %53, %52 ], [ 0, %54 ], [ %47, %44 ]
  %59 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  tail call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext true) #13
  br label %62

62:                                               ; preds = %61, %57
  tail call void @up_write(ptr noundef %17) #13
  br label %63

63:                                               ; preds = %62, %23, %8
  %64 = phi i32 [ %58, %62 ], [ -12, %8 ], [ -4, %23 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_signal_page() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unmapped_area(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_install_special_mapping(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_install_vdso(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @sigpage_mremap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #12 {
  %3 = load i32, ptr %1, align 4
  %4 = tail call ptr @llvm.thread.pointer() #13
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 42, i32 2
  store i32 %3, ptr %7, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

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
!9 = !{i64 559624}
!10 = !{i64 2153621605}
!11 = !{i64 2153621730}
!12 = !{!"auto-init"}
!13 = !{i64 4479, i64 4504}
!14 = !{i64 4635}
!15 = !{i64 2153613748}
!16 = !{i64 6129702}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 6129447}
!19 = !{!"branch_weights", i32 1, i32 2000}
