; ModuleID = '/llk/IR/kernel/irq/handle.c_pt.bc'
source_filename = "../kernel/irq/handle.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_handle_bad_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22handle_bad_irq\22\09\09\09\09\09"
module asm "__kstrtabns_handle_bad_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_no_action:\09\09\09\09\09"
module asm "\09.asciz \09\22no_action\22\09\09\09\09\09"
module asm "__kstrtabns_no_action:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kernel_stat = type { i32, [10 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irqaction = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, [12 x i8] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.25, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.5 }
%struct.llist_node = type { ptr }
%union.anon.5 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.6 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.25 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab_handle_bad_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_handle_bad_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_handle_bad_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @handle_bad_irq to i32), ptr @__kstrtab_handle_bad_irq, ptr @__kstrtabns_handle_bad_irq }, section "___ksymtab_gpl+handle_bad_irq", align 4
@__kstrtab_no_action = external dso_local constant [0 x i8], align 1
@__kstrtabns_no_action = external dso_local constant [0 x i8], align 1
@__ksymtab_no_action = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @no_action to i32), ptr @__kstrtab_no_action, ptr @__kstrtabns_no_action }, section "___ksymtab_gpl+no_action", align 4
@__handle_irq_event_percpu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [20 x i8] c"kernel/irq/handle.c\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"irq %u handler %pS enabled interrupts\0A\00", align 1
@handle_arch_irq = dso_local local_unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@print_irq_desc.ratelimit = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 5, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.print_irq_desc = private unnamed_addr constant [15 x i8] c"print_irq_desc\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"irq %d, desc: %p, depth: %d, count: %d, unhandled: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"->handle_irq():  %p, %pS\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"->irq_data.chip(): %p, %pS\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"->action(): %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"->action->handler(): %p, %pS\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%14s set\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"IRQ_LEVEL\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"IRQ_PER_CPU\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"IRQ_NOPROBE\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"IRQ_NOREQUEST\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"IRQ_NOTHREAD\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"IRQ_NOAUTOEN\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"IRQS_AUTODETECT\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"IRQS_REPLAY\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"IRQS_WAITING\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"IRQS_PENDING\00", align 1
@kstat = external dso_local global %struct.kernel_stat, section ".data..percpu", align 4
@irq_err_count = external dso_local local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [38 x i8] c"\012unexpected IRQ trap at vector %02x\0A\00", align 1
@__tracepoint_irq_handler_entry = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_irq_handler_exit = external dso_local global %struct.tracepoint, align 4
@.str.21 = private unnamed_addr constant [78 x i8] c"\014IRQ %d device %s returned IRQ_WAKE_THREAD but no thread function available.\00", align 1
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_handle_bad_irq, ptr @__ksymtab_no_action], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @handle_bad_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = tail call i32 @___ratelimit(ptr noundef nonnull @print_irq_desc.ratelimit, ptr noundef nonnull @__func__.print_irq_desc) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %98, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 12
  %12 = load i32, ptr %11, align 32
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %3, ptr noundef %0, i32 noundef %8, i32 noundef %10, i32 noundef %12) #10
  %14 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %15, ptr noundef %15) #10
  %17 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %18, ptr noundef %18) #10
  %20 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 64
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %21) #10
  %23 = load ptr, ptr %20, align 64
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load ptr, ptr %23, align 64
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %26, ptr noundef %26) #10
  br label %28

28:                                               ; preds = %25, %6
  %29 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 256
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #10
  %35 = load i32, ptr %29, align 4
  br label %36

36:                                               ; preds = %33, %28
  %37 = phi i32 [ %35, %33 ], [ %30, %28 ]
  %38 = and i32 %37, 512
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9) #10
  %42 = load i32, ptr %29, align 4
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i32 [ %42, %40 ], [ %37, %36 ]
  %45 = and i32 %44, 1024
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10) #10
  %49 = load i32, ptr %29, align 4
  br label %50

50:                                               ; preds = %47, %43
  %51 = phi i32 [ %49, %47 ], [ %44, %43 ]
  %52 = and i32 %51, 2048
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11) #10
  %56 = load i32, ptr %29, align 4
  br label %57

57:                                               ; preds = %54, %50
  %58 = phi i32 [ %56, %54 ], [ %51, %50 ]
  %59 = and i32 %58, 65536
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.12) #10
  %63 = load i32, ptr %29, align 4
  br label %64

64:                                               ; preds = %61, %57
  %65 = phi i32 [ %63, %61 ], [ %58, %57 ]
  %66 = and i32 %65, 4096
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.13) #10
  br label %70

70:                                               ; preds = %68, %64
  %71 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.14) #10
  %77 = load i32, ptr %71, align 8
  br label %78

78:                                               ; preds = %75, %70
  %79 = phi i32 [ %77, %75 ], [ %72, %70 ]
  %80 = and i32 %79, 64
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.15) #10
  %84 = load i32, ptr %71, align 8
  br label %85

85:                                               ; preds = %82, %78
  %86 = phi i32 [ %84, %82 ], [ %79, %78 ]
  %87 = and i32 %86, 128
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.16) #10
  %91 = load i32, ptr %71, align 8
  br label %92

92:                                               ; preds = %89, %85
  %93 = phi i32 [ %91, %89 ], [ %86, %85 ]
  %94 = and i32 %93, 512
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.17) #10
  br label %98

98:                                               ; preds = %96, %92, %1
  %99 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 2
  %100 = load ptr, ptr %99, align 8
  %101 = ptrtoint ptr %100 to i32
  %102 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %103 = inttoptr i32 %102 to ptr
  %104 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %103) #7, !srcloc !9
  %105 = add i32 %104, %101
  %106 = inttoptr i32 %105 to ptr
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, 1
  store i32 %108, ptr %106, align 4
  %109 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %110 = inttoptr i32 %109 to ptr
  %111 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %110) #7, !srcloc !9
  %112 = add i32 %111, ptrtoint (ptr @kstat to i32)
  %113 = inttoptr i32 %112 to ptr
  %114 = load i32, ptr %113, align 4
  %115 = add i32 %114, 1
  store i32 %115, ptr %113, align 4
  %116 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 9
  %117 = load i32, ptr %116, align 4
  %118 = add i32 %117, 1
  store i32 %118, ptr %116, align 4
  %119 = load i32, ptr @irq_err_count, align 4
  %120 = add i32 %119, 1
  store i32 %120, ptr @irq_err_count, align 4
  %121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %3) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @no_action(i32 %0, ptr nocapture readnone %1) #1 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__irq_wake_thread(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.irqaction, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.irqaction, ptr %1, i32 0, i32 9
  %11 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %10) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.irqaction, ptr %1, i32 0, i32 10
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 20
  %17 = load i32, ptr %16, align 64
  %18 = or i32 %17, %15
  store i32 %18, ptr %16, align 64
  %19 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #9, !srcloc !10
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #9, !srcloc !11
  %21 = load ptr, ptr %3, align 4
  %22 = tail call i32 @wake_up_process(ptr noundef %21) #9
  br label %23

23:                                               ; preds = %13, %9, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__handle_irq_event_percpu(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %90, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 20
  %9 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 21
  br label %10

10:                                               ; preds = %85, %7
  %11 = phi ptr [ %5, %7 ], [ %88, %85 ]
  %12 = phi i32 [ 0, %7 ], [ %86, %85 ]
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_handler_entry, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = tail call ptr @llvm.thread.pointer() #9
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 5
  %20 = getelementptr i32, ptr @__cpu_online_mask, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %18, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %27 = tail call i32 @__traceiter_irq_handler_entry(ptr noundef null, i32 noundef %3, ptr noundef nonnull %11) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  br label %28

28:                                               ; preds = %26, %15, %10
  %29 = load ptr, ptr %11, align 64
  %30 = getelementptr inbounds %struct.irqaction, ptr %11, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %29(i32 noundef %3, ptr noundef %31) #9
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_handler_exit, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %28
  %36 = tail call ptr @llvm.thread.pointer() #9
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 5
  %40 = getelementptr i32, ptr @__cpu_online_mask, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %38, 31
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %47 = tail call i32 @__traceiter_irq_handler_exit(ptr noundef null, i32 noundef %3, ptr noundef nonnull %11, i32 noundef %32) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %48

48:                                               ; preds = %46, %35, %28
  %49 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !16
  %50 = and i32 %49, 128
  %51 = icmp eq i32 %50, 0
  %52 = load i1, ptr @__handle_irq_event_percpu.__already_done, align 1
  %53 = xor i1 %52, true
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %57, !prof !17

55:                                               ; preds = %48
  store i1 true, ptr @__handle_irq_event_percpu.__already_done, align 1
  %56 = load ptr, ptr %11, align 64
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 162, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %3, ptr noundef %56) #9
  br label %57

57:                                               ; preds = %55, %48
  br i1 %51, label %58, label %59

58:                                               ; preds = %57
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #9, !srcloc !18
  br label %59

59:                                               ; preds = %58, %57
  %60 = icmp eq i32 %32, 2
  br i1 %60, label %61, label %85

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.irqaction, ptr %11, i32 0, i32 4
  %63 = load ptr, ptr %62, align 16
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %66, !prof !17

65:                                               ; preds = %61
  tail call fastcc void @warn_no_thread(i32 noundef %3, ptr noundef nonnull %11)
  br label %85

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.irqaction, ptr %11, i32 0, i32 5
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.irqaction, ptr %11, i32 0, i32 9
  %75 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %74) #9
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.irqaction, ptr %11, i32 0, i32 10
  %79 = load i32, ptr %78, align 8
  %80 = load i32, ptr %8, align 64
  %81 = or i32 %80, %79
  store i32 %81, ptr %8, align 64
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #9, !srcloc !10
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #9, !srcloc !11
  %83 = load ptr, ptr %67, align 4
  %84 = tail call i32 @wake_up_process(ptr noundef %83) #9
  br label %85

85:                                               ; preds = %77, %73, %66, %65, %59
  %86 = or i32 %32, %12
  %87 = getelementptr inbounds %struct.irqaction, ptr %11, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %10

90:                                               ; preds = %85, %1
  %91 = phi i32 [ 0, %1 ], [ %86, %85 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @warn_no_thread(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.irqaction, ptr %1, i32 0, i32 9
  %4 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %3) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.irqaction, ptr %1, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %0, ptr noundef %8) #10
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @handle_irq_event_percpu(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @__handle_irq_event_percpu(ptr noundef %0)
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %4 = load i32, ptr %3, align 4
  tail call void @add_interrupt_randomness(i32 noundef %4) #9
  %5 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2097152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void @note_interrupt(ptr noundef %0, i32 noundef %2) #9
  br label %10

10:                                               ; preds = %9, %1
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_interrupt_randomness(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @note_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @handle_irq_event(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, -513
  store i32 %4, ptr %2, align 8
  %5 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, 262144
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %10 = load i16, ptr %9, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !22
  %12 = tail call i32 @__handle_irq_event_percpu(ptr noundef %0) #9
  %13 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 4
  tail call void @add_interrupt_randomness(i32 noundef %14) #9
  %15 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2097152
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  tail call void @note_interrupt(ptr noundef %0, i32 noundef %12) #9
  br label %20

20:                                               ; preds = %19, %1
  tail call void @_raw_spin_lock(ptr noundef %9) #9
  %21 = load ptr, ptr %5, align 4
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, -262145
  store i32 %23, ptr %21, align 4
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define dso_local i32 @set_handle_irq(ptr noundef %0) local_unnamed_addr #3 section ".init.text" {
  %2 = load ptr, ptr @handle_arch_irq, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store ptr %0, ptr @handle_arch_irq, align 4
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi i32 [ 0, %4 ], [ -16, %1 ]
  ret i32 %6
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @generic_handle_arch_irq(ptr noundef %0) local_unnamed_addr #4 section ".noinstr.text" {
  tail call void @irq_enter() #9
  %2 = tail call fastcc ptr @set_irq_regs(ptr noundef %0)
  %3 = load ptr, ptr @handle_arch_irq, align 4
  tail call void %3(ptr noundef %0) #9
  %4 = tail call fastcc ptr @set_irq_regs(ptr noundef %2)
  tail call void @irq_exit() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_enter() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @set_irq_regs(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #7, !srcloc !9
  %5 = add i32 %4, ptrtoint (ptr @__irq_regs to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load ptr, ptr %6, align 4
  store ptr %0, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_irq_handler_entry(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_irq_handler_exit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { noinline noprofile nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!9 = !{i64 623930}
!10 = !{i64 699552, i64 2148189523, i64 2148189549, i64 2148189596, i64 2148189618, i64 2148189646, i64 2148189666}
!11 = !{i64 2148200938, i64 2148200964, i64 2148200993, i64 2148201027, i64 2148201058, i64 2148201081}
!12 = !{i64 2151625965}
!13 = !{i64 2151626133}
!14 = !{i64 2151642411}
!15 = !{i64 2151642587}
!16 = !{i64 607962}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 605665}
!19 = !{i64 2148868156}
!20 = !{i64 2148863980}
!21 = !{i64 2148864055, i64 2148864082, i64 2148864129, i64 2148864151, i64 2148864179, i64 2148864199}
!22 = !{i64 2148891159}
