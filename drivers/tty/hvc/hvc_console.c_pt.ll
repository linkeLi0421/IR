; ModuleID = '/llk/IR/drivers/tty/hvc/hvc_console.c_pt.bc'
source_filename = "../drivers/tty/hvc/hvc_console.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hvc_instantiate:\09\09\09\09\09"
module asm "\09.asciz \09\22hvc_instantiate\22\09\09\09\09\09"
module asm "__kstrtabns_hvc_instantiate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hvc_kick:\09\09\09\09\09"
module asm "\09.asciz \09\22hvc_kick\22\09\09\09\09\09"
module asm "__kstrtabns_hvc_kick:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hvc_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22hvc_poll\22\09\09\09\09\09"
module asm "__kstrtabns_hvc_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___hvc_resize:\09\09\09\09\09"
module asm "\09.asciz \09\22__hvc_resize\22\09\09\09\09\09"
module asm "__kstrtabns___hvc_resize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hvc_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22hvc_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_hvc_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hvc_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22hvc_remove\22\09\09\09\09\09"
module asm "__kstrtabns_hvc_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tty_port_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hvc_struct = type { %struct.tty_port, %struct.spinlock, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, %struct.winsize, %struct.work_struct, %struct.list_head, i32 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon = type { ptr }
%struct.llist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.hv_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.59, %struct.anon.60, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.anon.59 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.60 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%struct.llist_node = type { ptr }
%union.anon.18 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__initcall__kmod_hvc_console__210_246_hvc_console_initcon = internal global ptr @hvc_console_init, section ".con_initcall.init", align 4
@vtermnos = internal unnamed_addr global [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@cons_ops = internal unnamed_addr global [16 x ptr] zeroinitializer, align 4
@__kstrtab_hvc_instantiate = external dso_local constant [0 x i8], align 1
@__kstrtabns_hvc_instantiate = external dso_local constant [0 x i8], align 1
@__ksymtab_hvc_instantiate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hvc_instantiate to i32), ptr @__kstrtab_hvc_instantiate, ptr @__kstrtabns_hvc_instantiate }, section "___ksymtab_gpl+hvc_instantiate", align 4
@hvc_kicked = internal unnamed_addr global i1 false, align 4
@hvc_task = internal unnamed_addr global ptr null, align 4
@__kstrtab_hvc_kick = external dso_local constant [0 x i8], align 1
@__kstrtabns_hvc_kick = external dso_local constant [0 x i8], align 1
@__ksymtab_hvc_kick = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hvc_kick to i32), ptr @__kstrtab_hvc_kick, ptr @__kstrtabns_hvc_kick }, section "___ksymtab_gpl+hvc_kick", align 4
@__kstrtab_hvc_poll = external dso_local constant [0 x i8], align 1
@__kstrtabns_hvc_poll = external dso_local constant [0 x i8], align 1
@__ksymtab_hvc_poll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hvc_poll to i32), ptr @__kstrtab_hvc_poll, ptr @__kstrtabns_hvc_poll }, section "___ksymtab_gpl+hvc_poll", align 4
@__kstrtab___hvc_resize = external dso_local constant [0 x i8], align 1
@__kstrtabns___hvc_resize = external dso_local constant [0 x i8], align 1
@__ksymtab___hvc_resize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__hvc_resize to i32), ptr @__kstrtab___hvc_resize, ptr @__kstrtabns___hvc_resize }, section "___ksymtab_gpl+__hvc_resize", align 4
@hvc_needs_init = internal global %struct.atomic_t { i32 -1 }, section ".data..read_mostly", align 4
@hvc_port_ops = internal constant %struct.tty_port_operations { ptr null, ptr null, ptr null, ptr null, ptr @hvc_port_destruct }, align 4
@hvc_structs_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @hvc_structs_mutex, i64 12), ptr getelementptr (i8, ptr @hvc_structs_mutex, i64 12) } }, align 4
@last_hvc = internal unnamed_addr global i32 -1, align 4
@hvc_structs = internal global %struct.list_head { ptr @hvc_structs, ptr @hvc_structs }, align 4
@__kstrtab_hvc_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_hvc_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_hvc_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hvc_alloc to i32), ptr @__kstrtab_hvc_alloc, ptr @__kstrtabns_hvc_alloc }, section "___ksymtab_gpl+hvc_alloc", align 4
@__kstrtab_hvc_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_hvc_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_hvc_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hvc_remove to i32), ptr @__kstrtab_hvc_remove, ptr @__kstrtabns_hvc_remove }, section "___ksymtab_gpl+hvc_remove", align 4
@hvc_console = internal global %struct.console { [16 x i8] c"hvc\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hvc_console_print, ptr null, ptr @hvc_console_device, ptr null, ptr @hvc_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr null, ptr null }, align 4
@hvc_driver = internal unnamed_addr global ptr null, align 4
@timeout = internal unnamed_addr global i32 10, align 4
@sysrq_pressed = internal unnamed_addr global i32 0, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"hvc\00", align 1
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@hvc_ops = internal constant %struct.tty_operations { ptr null, ptr @hvc_install, ptr null, ptr @hvc_open, ptr @hvc_close, ptr null, ptr @hvc_cleanup, ptr @hvc_write, ptr null, ptr null, ptr @hvc_write_room, ptr @hvc_chars_in_buffer, ptr null, ptr null, ptr null, ptr null, ptr @hvc_unthrottle, ptr null, ptr null, ptr @hvc_hangup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hvc_tiocmget, ptr @hvc_tiocmset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"khvcd\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"\013Couldn't create kthread for console.\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"\013Couldn't register hvc console driver\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"\013hvc_open: request_irq failed with rc %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"\013hvc_close %X: oops, count is %d\0A\00", align 1
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__initcall__kmod_hvc_console__210_246_hvc_console_initcon, ptr @__ksymtab___hvc_resize, ptr @__ksymtab_hvc_alloc, ptr @__ksymtab_hvc_instantiate, ptr @__ksymtab_hvc_kick, ptr @__ksymtab_hvc_poll, ptr @__ksymtab_hvc_remove], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @hvc_console_init() #0 section ".init.text" {
  tail call void @register_console(ptr noundef nonnull @hvc_console) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hvc_instantiate(i32 noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = icmp ugt i32 %1, 15
  br i1 %4, label %23, label %5

5:                                                ; preds = %3
  %6 = getelementptr [16 x i32], ptr @vtermnos, i32 0, i32 %1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @hvc_get_by_index(i32 noundef %1)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @tty_port_put(ptr noundef nonnull %10) #12
  br label %23

13:                                               ; preds = %9
  store i32 %0, ptr %6, align 4
  %14 = getelementptr [16 x ptr], ptr @cons_ops, i32 0, i32 %1
  store ptr %2, ptr %14, align 4
  %15 = load i16, ptr getelementptr inbounds (%struct.console, ptr @hvc_console, i32 0, i32 8), align 4
  %16 = and i16 %15, 4
  %17 = icmp eq i16 %16, 0
  %18 = load i16, ptr getelementptr inbounds (%struct.console, ptr @hvc_console, i32 0, i32 9), align 2
  %19 = sext i16 %18 to i32
  %20 = icmp eq i32 %19, %1
  %21 = select i1 %17, i1 %20, i1 false
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  tail call void @register_console(ptr noundef nonnull @hvc_console) #12
  br label %23

23:                                               ; preds = %22, %13, %12, %5, %3
  %24 = phi i32 [ -1, %12 ], [ -1, %3 ], [ -1, %5 ], [ 0, %13 ], [ 0, %22 ]
  ret i32 %24
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @hvc_get_by_index(i32 noundef %0) unnamed_addr #1 {
  tail call void @mutex_lock(ptr noundef nonnull @hvc_structs_mutex) #12
  %2 = load ptr, ptr @hvc_structs, align 4
  %3 = icmp eq ptr %2, @hvc_structs
  br i1 %3, label %40, label %4

4:                                                ; preds = %37, %1
  %5 = phi ptr [ %38, %37 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 -64
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #12
  %8 = getelementptr i8, ptr %5, i32 -60
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %11, label %37

11:                                               ; preds = %4
  %12 = getelementptr i8, ptr %5, i32 -276
  %13 = icmp eq ptr %12, null
  br i1 %13, label %36, label %14

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %5, i32 -72
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %28, %14
  %19 = phi i32 [ %26, %28 ], [ %16, %14 ]
  %20 = add i32 %19, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #12, !srcloc !8
  br label %21

21:                                               ; preds = %21, %18
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 %19, i32 %20, ptr elementtype(i32) %15) #12, !srcloc !9
  %23 = extractvalue { i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %21

25:                                               ; preds = %21
  %26 = extractvalue { i32, i32 } %22, 1
  %27 = icmp eq i32 %26, %19
  br i1 %27, label %30, label %28, !prof !10

28:                                               ; preds = %25
  %29 = icmp eq i32 %26, 0
  br i1 %29, label %30, label %18

30:                                               ; preds = %28, %25, %14
  %31 = phi i32 [ 0, %14 ], [ 0, %28 ], [ %19, %25 ]
  %32 = add i32 %31, 1
  %33 = or i32 %32, %31
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %36, label %35, !prof !10

35:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 0) #12
  br label %36

36:                                               ; preds = %35, %30, %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #12
  br label %40

37:                                               ; preds = %4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #12
  %38 = load ptr, ptr %5, align 4
  %39 = icmp eq ptr %38, @hvc_structs
  br i1 %39, label %40, label %4

40:                                               ; preds = %37, %36, %1
  %41 = phi ptr [ %12, %36 ], [ null, %1 ], [ null, %37 ]
  tail call void @mutex_unlock(ptr noundef nonnull @hvc_structs_mutex) #12
  ret ptr %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hvc_kick() #1 {
  store i1 true, ptr @hvc_kicked, align 4
  %1 = load ptr, ptr @hvc_task, align 4
  %2 = tail call i32 @wake_up_process(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hvc_poll(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @__hvc_poll(ptr noundef %0, i1 noundef zeroext false)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__hvc_poll(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #1 {
  %3 = alloca [16 x i8], align 64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !11
  %4 = getelementptr inbounds %struct.hvc_struct, ptr %0, i32 0, i32 1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  %6 = getelementptr inbounds %struct.hvc_struct, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.hvc_struct, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.hv_ops, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.hvc_struct, ptr %0, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.hvc_struct, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %13(i32 noundef %15, ptr noundef %17, i32 noundef %7) #12
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %9
  switch i32 %18, label %21 [
    i32 -11, label %22
    i32 0, label %22
  ]

21:                                               ; preds = %20
  store i32 0, ptr %6, align 4
  br label %31

22:                                               ; preds = %20, %20
  %23 = getelementptr inbounds %struct.hvc_struct, ptr %0, i32 0, i32 3
  store i32 1, ptr %23, align 4
  br label %33

24:                                               ; preds = %9
  %25 = load i32, ptr %6, align 4
  %26 = sub i32 %25, %18
  store i32 %26, ptr %6, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load ptr, ptr %16, align 4
  %30 = getelementptr i8, ptr %29, i32 %18
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %29, ptr align 1 %30, i32 %26, i1 false) #12
  br label %33

31:                                               ; preds = %24, %21
  %32 = getelementptr inbounds %struct.hvc_struct, ptr %0, i32 0, i32 3
  store i32 1, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %28, %22
  %34 = phi i32 [ 1, %28 ], [ %18, %31 ], [ 0, %22 ]
  %35 = load i32, ptr %6, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = icmp eq i32 %34, 0
  %39 = select i1 %38, i32 10, i32 0
  store i32 %39, ptr @timeout, align 4
  br label %40

40:                                               ; preds = %37, %33, %2
  %41 = phi i32 [ 2, %37 ], [ 0, %33 ], [ 0, %2 ]
  br i1 %1, label %42, label %45

42:                                               ; preds = %40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #12
  %43 = tail call i32 @__cond_resched() #12
  %44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi i32 [ %44, %42 ], [ %5, %40 ]
  %47 = tail call ptr @tty_port_tty_get(ptr noundef %0) #12
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %46) #12
  br label %145

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.tty_struct, ptr %47, i32 0, i32 16
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %134

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.hvc_struct, ptr %0, i32 0, i32 9
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  %59 = or i32 %41, 1
  %60 = select i1 %58, i32 %59, i32 %41
  %61 = getelementptr inbounds %struct.hvc_struct, ptr %0, i32 0, i32 8
  %62 = getelementptr inbounds %struct.hvc_struct, ptr %0, i32 0, i32 7
  %63 = getelementptr inbounds %struct.hvc_struct, ptr %0, i32 0, i32 2
  %64 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 8
  br label %65

65:                                               ; preds = %129, %55
  %66 = phi i32 [ %128, %129 ], [ 0, %55 ]
  %67 = phi i32 [ %131, %129 ], [ %46, %55 ]
  br label %68

68:                                               ; preds = %132, %65
  %69 = phi i32 [ %128, %132 ], [ %66, %65 ]
  %70 = call i32 @tty_buffer_request_room(ptr noundef %0, i32 noundef 16) #12
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %134, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %61, align 4
  %74 = load ptr, ptr %73, align 4
  %75 = load i32, ptr %62, align 4
  %76 = call i32 %74(i32 noundef %75, ptr noundef nonnull %3, i32 noundef %70) #12
  %77 = icmp slt i32 %76, 1
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  switch i32 %76, label %134 [
    i32 -32, label %79
    i32 -11, label %81
  ]

79:                                               ; preds = %78
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %67) #12
  call void @tty_hangup(ptr noundef nonnull %47) #12
  %80 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  br label %134

81:                                               ; preds = %78
  br label %134

82:                                               ; preds = %124, %72
  %83 = phi i32 [ %125, %124 ], [ 0, %72 ]
  %84 = load i32, ptr %63, align 4
  %85 = load i16, ptr getelementptr inbounds (%struct.console, ptr @hvc_console, i32 0, i32 9), align 2
  %86 = sext i16 %85 to i32
  %87 = icmp eq i32 %84, %86
  %88 = getelementptr [16 x i8], ptr %3, i32 0, i32 %83
  %89 = load i8, ptr %88, align 1
  br i1 %87, label %90, label %99

90:                                               ; preds = %82
  %91 = zext i8 %89 to i32
  %92 = icmp eq i8 %89, 15
  %93 = load i32, ptr @sysrq_pressed, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %92, label %95, label %97

95:                                               ; preds = %90
  %96 = zext i1 %94 to i32
  store i32 %96, ptr @sysrq_pressed, align 4
  br i1 %94, label %124, label %99

97:                                               ; preds = %90
  br i1 %94, label %99, label %98

98:                                               ; preds = %97
  call void @handle_sysrq(i32 noundef %91) #12
  store i32 0, ptr @sysrq_pressed, align 4
  br label %124

99:                                               ; preds = %97, %95, %82
  %100 = phi i8 [ 15, %95 ], [ %89, %97 ], [ %89, %82 ]
  %101 = load ptr, ptr %64, align 4
  %102 = getelementptr inbounds %struct.tty_buffer, ptr %101, i32 0, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.tty_buffer, ptr %101, i32 0, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.tty_buffer, ptr %101, i32 0, i32 5
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.tty_buffer, ptr %101, i32 0, i32 6
  %114 = getelementptr i8, ptr %113, i32 %103
  %115 = getelementptr i8, ptr %114, i32 %105
  store i8 0, ptr %115, align 1
  %116 = load i32, ptr %102, align 4
  br label %117

117:                                              ; preds = %112, %107
  %118 = phi i32 [ %116, %112 ], [ %103, %107 ]
  %119 = add i32 %118, 1
  store i32 %119, ptr %102, align 4
  %120 = getelementptr inbounds %struct.tty_buffer, ptr %101, i32 0, i32 6
  %121 = getelementptr i8, ptr %120, i32 %118
  store i8 %100, ptr %121, align 1
  br label %124

122:                                              ; preds = %99
  %123 = call i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext %100, i8 noundef zeroext 0) #12
  br label %124

124:                                              ; preds = %122, %117, %98, %95
  %125 = add nuw nsw i32 %83, 1
  %126 = icmp eq i32 %125, %76
  br i1 %126, label %127, label %82

127:                                              ; preds = %124
  %128 = add i32 %76, %69
  br i1 %1, label %129, label %132

129:                                              ; preds = %127
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %67) #12
  %130 = call i32 @__cond_resched() #12
  %131 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  br label %65

132:                                              ; preds = %127
  %133 = icmp slt i32 %128, 128
  br i1 %133, label %68, label %134

134:                                              ; preds = %132, %81, %79, %78, %68, %50
  %135 = phi i32 [ 0, %50 ], [ %69, %79 ], [ %69, %81 ], [ %69, %78 ], [ %128, %132 ], [ %69, %68 ]
  %136 = phi i32 [ %46, %50 ], [ %80, %79 ], [ %67, %81 ], [ %67, %78 ], [ %67, %68 ], [ %67, %132 ]
  %137 = phi i32 [ %41, %50 ], [ %60, %79 ], [ %59, %81 ], [ %60, %78 ], [ %59, %68 ], [ %59, %132 ]
  %138 = getelementptr inbounds %struct.hvc_struct, ptr %0, i32 0, i32 3
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %134
  store i32 0, ptr %138, align 4
  call void @tty_wakeup(ptr noundef nonnull %47) #12
  br label %142

142:                                              ; preds = %141, %134
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %136) #12
  %143 = icmp eq i32 %135, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %142
  store i32 10, ptr @timeout, align 4
  call void @tty_flip_buffer_push(ptr noundef %0) #12
  br label %145

145:                                              ; preds = %144, %142, %49
  %146 = phi i32 [ %41, %49 ], [ %137, %144 ], [ %137, %142 ]
  call void @tty_kref_put(ptr noundef %47) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__hvc_resize(ptr noundef %0, [2 x i32] %1) #1 {
  %3 = extractvalue [2 x i32] %1, 0
  %4 = extractvalue [2 x i32] %1, 1
  %5 = getelementptr inbounds %struct.hvc_struct, ptr %0, i32 0, i32 11
  store i32 %3, ptr %5, align 4
  %6 = getelementptr inbounds %struct.hvc_struct, ptr %0, i32 0, i32 11, i32 2
  store i32 %4, ptr %6, align 4
  %7 = getelementptr inbounds %struct.hvc_struct, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr @system_wq, align 4
  %9 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %8, ptr noundef %7) #12
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hvc_alloc(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #1 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @hvc_needs_init) #12, !srcloc !8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @hvc_needs_init, ptr nonnull @hvc_needs_init, i32 0, i32 1, ptr nonnull elementtype(i32) @hvc_needs_init) #12, !srcloc !13
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %43, label %8

8:                                                ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %9 = tail call ptr @__tty_alloc_driver(i32 noundef 8, ptr noundef null, i32 noundef 6) #12
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = ptrtoint ptr %9 to i32
  br label %38

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 4
  store ptr @.str.1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 5
  store ptr @.str.1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 7
  store i32 229, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 8
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 10
  store i16 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %19, ptr noundef nonnull align 4 dereferenceable(44) @tty_std_termios, i32 44, i1 false) #12
  %20 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 20
  store ptr @hvc_ops, ptr %20, align 4
  %21 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @khvcd, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.2) #12
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  store ptr %21, ptr @hvc_task, align 4
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13
  %25 = load ptr, ptr @hvc_task, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %36

27:                                               ; preds = %13
  %28 = tail call i32 @wake_up_process(ptr noundef %21) #12
  store ptr %21, ptr @hvc_task, align 4
  %29 = tail call i32 @tty_register_driver(ptr noundef %9) #12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  %33 = load ptr, ptr @hvc_task, align 4
  %34 = tail call i32 @kthread_stop(ptr noundef %33) #12
  store ptr null, ptr @hvc_task, align 4
  br label %36

35:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  store ptr %9, ptr @hvc_driver, align 4
  br label %43

36:                                               ; preds = %31, %23
  %37 = phi i32 [ %26, %23 ], [ %29, %31 ]
  tail call void @tty_driver_kref_put(ptr noundef %9) #12
  br label %38

38:                                               ; preds = %36, %11
  %39 = phi i32 [ %12, %11 ], [ %37, %36 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = inttoptr i32 %39 to ptr
  br label %148

43:                                               ; preds = %38, %35, %4
  %44 = add i32 %3, 288
  %45 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %44, i32 noundef 3520) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %148, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.hvc_struct, ptr %45, i32 0, i32 7
  store i32 %0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.hvc_struct, ptr %45, i32 0, i32 10
  store i32 %1, ptr %49, align 8
  %50 = getelementptr inbounds %struct.hvc_struct, ptr %45, i32 0, i32 8
  store ptr %2, ptr %50, align 16
  %51 = getelementptr inbounds %struct.hvc_struct, ptr %45, i32 0, i32 5
  store i32 %3, ptr %51, align 4
  %52 = getelementptr i8, ptr %45, i32 288
  %53 = getelementptr inbounds %struct.hvc_struct, ptr %45, i32 0, i32 4
  store ptr %52, ptr %53, align 32
  tail call void @tty_port_init(ptr noundef nonnull %45) #12
  %54 = getelementptr inbounds %struct.tty_port, ptr %45, i32 0, i32 3
  store ptr @hvc_port_ops, ptr %54, align 4
  %55 = getelementptr inbounds %struct.hvc_struct, ptr %45, i32 0, i32 12
  store i32 -32, ptr %55, align 4
  %56 = getelementptr inbounds %struct.hvc_struct, ptr %45, i32 0, i32 12, i32 1
  store volatile ptr %56, ptr %56, align 8
  %57 = getelementptr inbounds %struct.hvc_struct, ptr %45, i32 0, i32 12, i32 1, i32 1
  store ptr %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.hvc_struct, ptr %45, i32 0, i32 12, i32 2
  store ptr @hvc_set_winsz, ptr %58, align 16
  %59 = getelementptr inbounds %struct.hvc_struct, ptr %45, i32 0, i32 1
  store i32 0, ptr %59, align 4
  tail call void @mutex_lock(ptr noundef nonnull @hvc_structs_mutex) #12
  %60 = load i32, ptr %48, align 4
  br label %61

61:                                               ; preds = %71, %47
  %62 = phi i32 [ 0, %47 ], [ %72, %71 ]
  %63 = getelementptr [16 x i32], ptr @vtermnos, i32 0, i32 %62
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, %60
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = getelementptr [16 x ptr], ptr @cons_ops, i32 0, i32 %62
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %50, align 16
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %122, label %71

71:                                               ; preds = %66, %61
  %72 = add nuw nsw i32 %62, 1
  %73 = icmp eq i32 %72, 16
  br i1 %73, label %74, label %61

74:                                               ; preds = %71
  %75 = load i32, ptr @vtermnos, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %122, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 1), align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %122, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 2), align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %122, label %83

83:                                               ; preds = %80
  %84 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 3), align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %122, label %86

86:                                               ; preds = %83
  %87 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 4), align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %122, label %89

89:                                               ; preds = %86
  %90 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 5), align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %122, label %92

92:                                               ; preds = %89
  %93 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 6), align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %122, label %95

95:                                               ; preds = %92
  %96 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 7), align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %122, label %98

98:                                               ; preds = %95
  %99 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 8), align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %122, label %101

101:                                              ; preds = %98
  %102 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 9), align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %122, label %104

104:                                              ; preds = %101
  %105 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 10), align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %122, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 11), align 4
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %122, label %110

110:                                              ; preds = %107
  %111 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 12), align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %122, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 13), align 4
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %122, label %116

116:                                              ; preds = %113
  %117 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 14), align 4
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @vtermnos, i32 0, i32 15), align 4
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %125

122:                                              ; preds = %119, %116, %113, %110, %107, %104, %101, %98, %95, %92, %89, %86, %83, %80, %77, %74, %66
  %123 = phi i32 [ 0, %74 ], [ 1, %77 ], [ 2, %80 ], [ 3, %83 ], [ 4, %86 ], [ 5, %89 ], [ 6, %92 ], [ 7, %95 ], [ 8, %98 ], [ 9, %101 ], [ 10, %104 ], [ 11, %107 ], [ 12, %110 ], [ 13, %113 ], [ 14, %116 ], [ 15, %119 ], [ %62, %66 ]
  %124 = getelementptr inbounds %struct.hvc_struct, ptr %45, i32 0, i32 2
  store i32 %123, ptr %124, align 8
  br label %131

125:                                              ; preds = %119
  %126 = load i32, ptr @last_hvc, align 4
  %127 = add i32 %126, 1
  store i32 %127, ptr @last_hvc, align 4
  %128 = add i32 %126, 17
  %129 = getelementptr inbounds %struct.hvc_struct, ptr %45, i32 0, i32 2
  store i32 %128, ptr %129, align 8
  %130 = icmp slt i32 %128, 16
  br i1 %130, label %131, label %135

131:                                              ; preds = %125, %122
  %132 = phi i32 [ %123, %122 ], [ %128, %125 ]
  %133 = getelementptr [16 x ptr], ptr @cons_ops, i32 0, i32 %132
  store ptr %2, ptr %133, align 4
  %134 = getelementptr [16 x i32], ptr @vtermnos, i32 0, i32 %132
  store i32 %0, ptr %134, align 4
  br label %135

135:                                              ; preds = %131, %125
  %136 = phi i32 [ %132, %131 ], [ %128, %125 ]
  %137 = getelementptr inbounds %struct.hvc_struct, ptr %45, i32 0, i32 13
  %138 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hvc_structs, i32 0, i32 1), align 4
  store ptr %137, ptr getelementptr inbounds (%struct.list_head, ptr @hvc_structs, i32 0, i32 1), align 4
  store ptr @hvc_structs, ptr %137, align 4
  %139 = getelementptr inbounds %struct.hvc_struct, ptr %45, i32 0, i32 13, i32 1
  store ptr %138, ptr %139, align 8
  store volatile ptr %137, ptr %138, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @hvc_structs_mutex) #12
  %140 = load i16, ptr getelementptr inbounds (%struct.console, ptr @hvc_console, i32 0, i32 8), align 4
  %141 = and i16 %140, 4
  %142 = icmp eq i16 %141, 0
  %143 = load i16, ptr getelementptr inbounds (%struct.console, ptr @hvc_console, i32 0, i32 9), align 2
  %144 = sext i16 %143 to i32
  %145 = icmp eq i32 %136, %144
  %146 = select i1 %142, i1 %145, i1 false
  br i1 %146, label %147, label %148

147:                                              ; preds = %135
  tail call void @register_console(ptr noundef nonnull @hvc_console) #12
  br label %148

148:                                              ; preds = %147, %135, %43, %41
  %149 = phi ptr [ %42, %41 ], [ inttoptr (i32 -12 to ptr), %43 ], [ %45, %135 ], [ %45, %147 ]
  ret ptr %149
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hvc_set_winsz(ptr noundef %0) #1 {
  %2 = alloca %struct.winsize, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %3 = getelementptr i8, ptr %0, i32 -260
  %4 = tail call ptr @tty_port_tty_get(ptr noundef %3) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -48
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #12
  %9 = getelementptr i8, ptr %0, i32 -8
  %10 = load i64, ptr %9, align 4
  store i64 %10, ptr %2, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #12
  %11 = call i32 @tty_do_resize(ptr noundef nonnull %4, ptr noundef nonnull %2) #12
  call void @tty_kref_put(ptr noundef nonnull %4) #12
  br label %12

12:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hvc_remove(ptr noundef %0) #1 {
  %2 = tail call ptr @tty_port_tty_get(ptr noundef %0) #12
  tail call void @console_lock() #12
  %3 = getelementptr inbounds %struct.hvc_struct, ptr %0, i32 0, i32 1
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %5 = getelementptr inbounds %struct.hvc_struct, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 16
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = getelementptr [16 x i32], ptr @vtermnos, i32 0, i32 %6
  store i32 -1, ptr %9, align 4
  %10 = getelementptr [16 x ptr], ptr @cons_ops, i32 0, i32 %6
  store ptr null, ptr %10, align 4
  br label %11

11:                                               ; preds = %8, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #12
  tail call void @console_unlock() #12
  tail call void @tty_port_put(ptr noundef %0) #12
  %12 = icmp eq ptr %2, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  tail call void @tty_vhangup(ptr noundef nonnull %2) #12
  tail call void @tty_kref_put(ptr noundef nonnull %2) #12
  br label %14

14:                                               ; preds = %13, %11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_vhangup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hvc_console_print(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = alloca [16 x i8], align 64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !11
  %5 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %6 = load i16, ptr %5, align 2
  %7 = sext i16 %6 to i32
  %8 = icmp sgt i16 %6, 15
  br i1 %8, label %78, label %9

9:                                                ; preds = %3
  %10 = getelementptr [16 x i32], ptr @vtermnos, i32 0, i32 %7
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %78, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %69, label %15

15:                                               ; preds = %13
  %16 = getelementptr [16 x ptr], ptr @cons_ops, i32 0, i32 %7
  br label %17

17:                                               ; preds = %61, %15
  %18 = phi i1 [ true, %15 ], [ %66, %61 ]
  %19 = phi i32 [ 0, %15 ], [ %65, %61 ]
  %20 = phi i32 [ 0, %15 ], [ %64, %61 ]
  %21 = phi i32 [ 0, %15 ], [ %63, %61 ]
  %22 = phi i32 [ %2, %15 ], [ %62, %61 ]
  %23 = icmp ult i32 %21, 16
  %24 = select i1 %18, i1 %23, i1 false
  br i1 %24, label %25, label %39

25:                                               ; preds = %17
  %26 = getelementptr i8, ptr %1, i32 %20
  %27 = load i8, ptr %26, align 1
  %28 = icmp ne i8 %27, 10
  %29 = icmp ne i32 %19, 0
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = add nuw nsw i32 %21, 1
  %33 = getelementptr [16 x i8], ptr %4, i32 0, i32 %21
  store i8 13, ptr %33, align 1
  br label %61

34:                                               ; preds = %25
  %35 = add i32 %20, 1
  %36 = add nuw nsw i32 %21, 1
  %37 = getelementptr [16 x i8], ptr %4, i32 0, i32 %21
  store i8 %27, ptr %37, align 1
  %38 = add i32 %22, -1
  br label %61

39:                                               ; preds = %17
  %40 = load ptr, ptr %16, align 4
  %41 = getelementptr inbounds %struct.hv_ops, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load i32, ptr %10, align 4
  %44 = call i32 %42(i32 noundef %43, ptr noundef nonnull %4, i32 noundef %21) #12
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = icmp eq i32 %44, -11
  br i1 %47, label %48, label %61

48:                                               ; preds = %46
  %49 = load ptr, ptr %16, align 4
  %50 = getelementptr inbounds %struct.hv_ops, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %48
  %54 = load i32, ptr %10, align 4
  %55 = call i32 %51(i32 noundef %54, i1 noundef zeroext false) #12
  br label %61

56:                                               ; preds = %39
  %57 = sub i32 %21, %44
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = getelementptr i8, ptr %4, i32 %44
  call void @llvm.memmove.p0.p0.i32(ptr nonnull align 64 %4, ptr align 1 %60, i32 %57, i1 false)
  br label %61

61:                                               ; preds = %59, %56, %53, %48, %46, %34, %31
  %62 = phi i32 [ %38, %34 ], [ %22, %31 ], [ %22, %59 ], [ %22, %56 ], [ %22, %46 ], [ %22, %48 ], [ %22, %53 ]
  %63 = phi i32 [ %36, %34 ], [ %32, %31 ], [ %57, %59 ], [ 0, %56 ], [ 0, %46 ], [ %21, %48 ], [ %21, %53 ]
  %64 = phi i32 [ %35, %34 ], [ %20, %31 ], [ %20, %59 ], [ %20, %56 ], [ %20, %46 ], [ %20, %48 ], [ %20, %53 ]
  %65 = phi i32 [ 0, %34 ], [ 1, %31 ], [ %19, %59 ], [ %19, %56 ], [ %19, %46 ], [ %19, %48 ], [ %19, %53 ]
  %66 = icmp ne i32 %62, 0
  %67 = icmp ne i32 %63, 0
  %68 = select i1 %66, i1 true, i1 %67
  br i1 %68, label %17, label %69

69:                                               ; preds = %61, %13
  %70 = getelementptr [16 x ptr], ptr @cons_ops, i32 0, i32 %7
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.hv_ops, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = load i32, ptr %10, align 4
  %77 = call i32 %73(i32 noundef %76, i1 noundef zeroext false) #12
  br label %78

78:                                               ; preds = %75, %69, %9, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @hvc_console_device(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %4 = load i16, ptr %3, align 2
  %5 = sext i16 %4 to i32
  %6 = getelementptr [16 x i32], ptr @vtermnos, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  store i32 %5, ptr %1, align 4
  %10 = load ptr, ptr @hvc_driver, align 4
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi ptr [ %10, %9 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @hvc_console_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #6 {
  %3 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %4 = load i16, ptr %3, align 2
  %5 = icmp ugt i16 %4, 15
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = zext i16 %4 to i32
  %8 = getelementptr [16 x i32], ptr @vtermnos, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, -1
  %11 = select i1 %10, i32 -19, i32 0
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ -19, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_buffer_request_room(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_hangup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wakeup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hvc_port_destruct(ptr noundef %0) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @hvc_structs_mutex) #12
  %2 = getelementptr inbounds %struct.hvc_struct, ptr %0, i32 0, i32 1
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #12
  %4 = getelementptr inbounds %struct.hvc_struct, ptr %0, i32 0, i32 13
  %5 = getelementptr inbounds %struct.hvc_struct, ptr %0, i32 0, i32 13, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #12
  tail call void @mutex_unlock(ptr noundef nonnull @hvc_structs_mutex) #12
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_do_resize(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @khvcd(ptr nocapture noundef readnone %0) #1 {
  %2 = tail call zeroext i1 @set_freezable() #12
  br label %3

3:                                                ; preds = %46, %1
  store i1 false, ptr @hvc_kicked, align 4
  %4 = load volatile i32, ptr @system_freezing_cnt, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6, !prof !10

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #12
  %8 = tail call zeroext i1 @freezing_slow_path(ptr noundef %7) #12
  br i1 %8, label %9, label %11, !prof !16

9:                                                ; preds = %6
  %10 = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #12
  br label %11

11:                                               ; preds = %9, %6, %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !17
  tail call void @arm_heavy_mb() #12
  tail call void @mutex_lock(ptr noundef nonnull @hvc_structs_mutex) #12
  %12 = load ptr, ptr @hvc_structs, align 4
  %13 = icmp eq ptr %12, @hvc_structs
  br i1 %13, label %23, label %14

14:                                               ; preds = %14, %11
  %15 = phi ptr [ %21, %14 ], [ %12, %11 ]
  %16 = phi i32 [ %19, %14 ], [ 0, %11 ]
  %17 = getelementptr i8, ptr %15, i32 -276
  %18 = tail call fastcc i32 @__hvc_poll(ptr noundef %17, i1 noundef zeroext true)
  %19 = or i32 %18, %16
  %20 = tail call i32 @__cond_resched() #12
  %21 = load ptr, ptr %15, align 4
  %22 = icmp eq ptr %21, @hvc_structs
  br i1 %22, label %23, label %14

23:                                               ; preds = %14, %11
  %24 = phi i32 [ 0, %11 ], [ %19, %14 ]
  tail call void @mutex_unlock(ptr noundef nonnull @hvc_structs_mutex) #12
  %25 = load i1, ptr @hvc_kicked, align 4
  br i1 %25, label %46, label %26

26:                                               ; preds = %23
  %27 = tail call ptr @llvm.thread.pointer() #12
  %28 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 1
  store volatile i32 1, ptr %28, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %29 = load i1, ptr @hvc_kicked, align 4
  br i1 %29, label %45, label %30

30:                                               ; preds = %26
  %31 = icmp eq i32 %24, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  tail call void @schedule() #12
  br label %45

33:                                               ; preds = %30
  %34 = load i32, ptr @timeout, align 4
  %35 = icmp ult i32 %34, 2000
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = lshr i32 %34, 6
  %38 = add nuw nsw i32 %34, 1
  %39 = add nuw nsw i32 %38, %37
  store i32 %39, ptr @timeout, align 4
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i32 [ %39, %36 ], [ %34, %33 ]
  %42 = tail call i32 @__msecs_to_jiffies(i32 noundef %41) #12
  %43 = add i32 %42, 1
  %44 = tail call i32 @schedule_timeout_interruptible(i32 noundef %43) #12
  br label %45

45:                                               ; preds = %40, %32, %26
  store volatile i32 0, ptr %28, align 8
  br label %46

46:                                               ; preds = %45, %23
  %47 = tail call zeroext i1 @kthread_should_stop() #12
  br i1 %47, label %48, label %3

48:                                               ; preds = %46
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hvc_install(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = tail call fastcc ptr @hvc_get_by_index(i32 noundef %4)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 30
  store ptr %5, ptr %8, align 4
  %9 = tail call i32 @tty_port_install(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @tty_port_put(ptr noundef nonnull %5) #12
  br label %12

12:                                               ; preds = %11, %7, %2
  %13 = phi i32 [ -19, %2 ], [ %9, %11 ], [ 0, %7 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hvc_open(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 5
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #12
  %7 = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  %10 = icmp sgt i32 %8, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #12
  br i1 %10, label %37, label %11

11:                                               ; preds = %2
  tail call void @tty_port_tty_set(ptr noundef %4, ptr noundef %0) #12
  %12 = getelementptr inbounds %struct.hvc_struct, ptr %4, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.hv_ops, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.hvc_struct, ptr %4, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 %15(ptr noundef %4, i32 noundef %19) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %20) #13
  br label %37

24:                                               ; preds = %17, %11
  %25 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 4111
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %12, align 4
  %31 = getelementptr inbounds %struct.hv_ops, ptr %30, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  tail call void %32(ptr noundef %4, i32 noundef 1) #12
  br label %35

35:                                               ; preds = %34, %29, %24
  %36 = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %36) #12
  br label %37

37:                                               ; preds = %35, %22, %2
  %38 = phi i32 [ 0, %2 ], [ 0, %35 ], [ %20, %22 ]
  store i1 true, ptr @hvc_kicked, align 4
  %39 = load ptr, ptr @hvc_task, align 4
  %40 = tail call i32 @wake_up_process(ptr noundef %39) #12
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hvc_close(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @tty_hung_up_p(ptr noundef %1) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %50

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 5
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #12
  %10 = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  store i32 %12, ptr %10, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #12
  tail call void @tty_port_tty_set(ptr noundef %4, ptr noundef null) #12
  %15 = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 11
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %50, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1024
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.hvc_struct, ptr %4, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.hv_ops, ptr %26, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  tail call void %28(ptr noundef %4, i32 noundef 0) #12
  br label %31

31:                                               ; preds = %30, %24, %19
  %32 = getelementptr inbounds %struct.hvc_struct, ptr %4, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.hv_ops, ptr %33, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.hvc_struct, ptr %4, i32 0, i32 10
  %39 = load i32, ptr %38, align 4
  tail call void %35(ptr noundef %4, i32 noundef %39) #12
  br label %40

40:                                               ; preds = %37, %31
  %41 = getelementptr inbounds %struct.hvc_struct, ptr %4, i32 0, i32 12
  %42 = tail call zeroext i1 @cancel_work_sync(ptr noundef %41) #12
  tail call void @tty_wait_until_sent(ptr noundef %0, i32 noundef 1) #12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %15) #12
  br label %50

43:                                               ; preds = %7
  %44 = icmp slt i32 %12, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.hvc_struct, ptr %4, i32 0, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %47, i32 noundef %12) #13
  br label %49

49:                                               ; preds = %45, %43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #12
  br label %50

50:                                               ; preds = %49, %40, %14, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hvc_cleanup(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  tail call void @tty_port_put(ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hvc_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %89, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %89, label %11

11:                                               ; preds = %7
  %12 = icmp sgt i32 %2, 0
  br i1 %12, label %13, label %81

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.hvc_struct, ptr %5, i32 0, i32 1
  %15 = getelementptr inbounds %struct.hvc_struct, ptr %5, i32 0, i32 5
  %16 = getelementptr inbounds %struct.hvc_struct, ptr %5, i32 0, i32 6
  %17 = getelementptr inbounds %struct.hvc_struct, ptr %5, i32 0, i32 4
  %18 = getelementptr inbounds %struct.hvc_struct, ptr %5, i32 0, i32 8
  %19 = getelementptr inbounds %struct.hvc_struct, ptr %5, i32 0, i32 7
  %20 = getelementptr inbounds %struct.hvc_struct, ptr %5, i32 0, i32 3
  br label %21

21:                                               ; preds = %78, %13
  %22 = phi ptr [ %1, %13 ], [ %43, %78 ]
  %23 = phi i32 [ 0, %13 ], [ %42, %78 ]
  %24 = phi i32 [ %2, %13 ], [ %41, %78 ]
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #12
  %26 = load i32, ptr %15, align 4
  %27 = load i32, ptr %16, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %39, label %29

29:                                               ; preds = %21
  %30 = sub i32 %26, %27
  %31 = tail call i32 @llvm.smin.i32(i32 %30, i32 %24)
  %32 = load ptr, ptr %17, align 4
  %33 = getelementptr i8, ptr %32, i32 %27
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %33, ptr align 1 %22, i32 %31, i1 false)
  %34 = sub i32 %24, %31
  %35 = getelementptr i8, ptr %22, i32 %31
  %36 = load i32, ptr %16, align 4
  %37 = add i32 %36, %31
  store i32 %37, ptr %16, align 4
  %38 = add i32 %31, %23
  br label %39

39:                                               ; preds = %29, %21
  %40 = phi i32 [ %37, %29 ], [ %26, %21 ]
  %41 = phi i32 [ %34, %29 ], [ %24, %21 ]
  %42 = phi i32 [ %38, %29 ], [ %23, %21 ]
  %43 = phi ptr [ %35, %29 ], [ %22, %21 ]
  %44 = icmp sgt i32 %40, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %39
  %46 = load ptr, ptr %18, align 4
  %47 = getelementptr inbounds %struct.hv_ops, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load i32, ptr %19, align 4
  %50 = load ptr, ptr %17, align 4
  %51 = tail call i32 %48(i32 noundef %49, ptr noundef %50, i32 noundef %40) #12
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  switch i32 %51, label %54 [
    i32 -11, label %55
    i32 0, label %55
  ]

54:                                               ; preds = %53
  store i32 0, ptr %16, align 4
  br label %63

55:                                               ; preds = %53, %53
  store i32 1, ptr %20, align 4
  br label %64

56:                                               ; preds = %45
  %57 = load i32, ptr %16, align 4
  %58 = sub i32 %57, %51
  store i32 %58, ptr %16, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load ptr, ptr %17, align 4
  %62 = getelementptr i8, ptr %61, i32 %51
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %61, ptr align 1 %62, i32 %58, i1 false) #12
  br label %65

63:                                               ; preds = %56, %54
  store i32 1, ptr %20, align 4
  br label %65

64:                                               ; preds = %55, %39
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %25) #12
  br label %81

65:                                               ; preds = %63, %60
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %25) #12
  %66 = icmp eq i32 %41, 0
  br i1 %66, label %81, label %67

67:                                               ; preds = %65
  %68 = load i32, ptr %16, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load ptr, ptr %18, align 4
  %72 = getelementptr inbounds %struct.hv_ops, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = load i32, ptr %19, align 4
  %77 = tail call i32 %73(i32 noundef %76, i1 noundef zeroext true) #12
  br label %78

78:                                               ; preds = %75, %70, %67
  %79 = tail call i32 @__cond_resched() #12
  %80 = icmp sgt i32 %41, 0
  br i1 %80, label %21, label %81

81:                                               ; preds = %78, %65, %64, %11
  %82 = phi i32 [ %42, %64 ], [ 0, %11 ], [ %42, %78 ], [ %42, %65 ]
  %83 = getelementptr inbounds %struct.hvc_struct, ptr %5, i32 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  store i1 true, ptr @hvc_kicked, align 4
  %87 = load ptr, ptr @hvc_task, align 4
  %88 = tail call i32 @wake_up_process(ptr noundef %87) #12
  br label %89

89:                                               ; preds = %86, %81, %7, %3
  %90 = phi i32 [ -32, %3 ], [ -5, %7 ], [ %82, %86 ], [ %82, %81 ]
  ret i32 %90
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @hvc_write_room(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hvc_struct, ptr %3, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.hvc_struct, ptr %3, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %7, %9
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i32 [ %10, %5 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @hvc_chars_in_buffer(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hvc_struct, ptr %3, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hvc_unthrottle(ptr nocapture noundef readnone %0) #1 {
  store i1 true, ptr @hvc_kicked, align 4
  %2 = load ptr, ptr @hvc_task, align 4
  %3 = tail call i32 @wake_up_process(ptr noundef %2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hvc_hangup(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hvc_struct, ptr %3, i32 0, i32 12
  %7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %6) #12
  %8 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 5
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #12
  %10 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #12
  br label %24

14:                                               ; preds = %5
  store i32 0, ptr %10, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #12
  tail call void @tty_port_tty_set(ptr noundef nonnull %3, ptr noundef null) #12
  %15 = getelementptr inbounds %struct.hvc_struct, ptr %3, i32 0, i32 6
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.hvc_struct, ptr %3, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.hv_ops, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.hvc_struct, ptr %3, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  tail call void %19(ptr noundef nonnull %3, i32 noundef %23) #12
  br label %24

24:                                               ; preds = %21, %14, %13, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hvc_tiocmget(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hvc_struct, ptr %3, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.hv_ops, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call i32 %9(ptr noundef nonnull %3) #12
  br label %13

13:                                               ; preds = %11, %5, %1
  %14 = phi i32 [ %12, %11 ], [ -22, %5 ], [ -22, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hvc_tiocmset(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hvc_struct, ptr %5, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.hv_ops, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call i32 %11(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2) #12
  br label %15

15:                                               ; preds = %13, %7, %3
  %16 = phi i32 [ %14, %13 ], [ -22, %7 ], [ -22, %3 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_install(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_hung_up_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wait_until_sent(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

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
!8 = !{i64 277546, i64 2147779112, i64 2147779138, i64 2147779185, i64 2147779207, i64 2147779235, i64 2147779255}
!9 = !{i64 226698, i64 226722, i64 226743, i64 226760, i64 226777}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"auto-init"}
!12 = !{i64 2147852320}
!13 = !{i64 227204, i64 227229, i64 227251, i64 227267, i64 227279, i64 227299, i64 227323, i64 227339, i64 227351}
!14 = !{i64 2147852446}
!15 = !{i64 2152574306}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2152560136}
!18 = !{i64 2152566229}
