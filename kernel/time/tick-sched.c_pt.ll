; ModuleID = '/llk/IR/kernel/time/tick-sched.c_pt.bc'
source_filename = "../kernel/time/tick-sched.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_cpu_idle_time_us:\09\09\09\09\09"
module asm "\09.asciz \09\22get_cpu_idle_time_us\22\09\09\09\09\09"
module asm "__kstrtabns_get_cpu_idle_time_us:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_cpu_iowait_time_us:\09\09\09\09\09"
module asm "\09.asciz \09\22get_cpu_iowait_time_us\22\09\09\09\09\09"
module asm "__kstrtabns_get_cpu_iowait_time_us:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.tick_sched = type { %struct.hrtimer, i32, i32, i8, i64, i64, i32, i32, i32, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, %struct.atomic_t }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tick_device = type { ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.irq_cpustat_t = type { i32, [60 x i8] }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }
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
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }

@tick_cpu_sched = internal global %struct.tick_sched zeroinitializer, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@tick_nohz_enabled = dso_local global i8 1, section ".data..read_mostly", align 1
@__setup_str_setup_tick_nohz = internal constant [6 x i8] c"nohz=\00", section ".init.rodata", align 1
@__setup_setup_tick_nohz = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_tick_nohz, ptr @setup_tick_nohz, i32 0 }, section ".init.setup", align 4
@tick_nohz_active = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_get_cpu_idle_time_us = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_cpu_idle_time_us = external dso_local constant [0 x i8], align 1
@__ksymtab_get_cpu_idle_time_us = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_cpu_idle_time_us to i32), ptr @__kstrtab_get_cpu_idle_time_us, ptr @__kstrtabns_get_cpu_idle_time_us }, section "___ksymtab_gpl+get_cpu_idle_time_us", align 4
@__kstrtab_get_cpu_iowait_time_us = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_cpu_iowait_time_us = external dso_local constant [0 x i8], align 1
@__ksymtab_get_cpu_iowait_time_us = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_cpu_iowait_time_us to i32), ptr @__kstrtab_get_cpu_iowait_time_us, ptr @__kstrtabns_get_cpu_iowait_time_us }, section "___ksymtab_gpl+get_cpu_iowait_time_us", align 4
@tick_nohz_idle_enter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [25 x i8] c"kernel/time/tick-sched.c\00", align 1
@tick_cpu_device = external dso_local global %struct.tick_device, section ".data..percpu", align 4
@tick_nohz_get_sleep_length.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tick_nohz_idle_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tick_nohz_idle_exit.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__setup_str_skew_tick = internal constant [10 x i8] c"skew_tick\00", section ".init.rodata", align 1
@__setup_skew_tick = internal global %struct.obs_kernel_param { ptr @__setup_str_skew_tick, ptr @skew_tick, i32 1 }, section ".init.setup", align 4
@sched_skew_tick = internal global i32 0, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@tick_do_timer_cpu = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@tick_nohz_stop_tick.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tick_nohz_stop_tick.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [97 x i8] c"basemono: %llu ts->next_tick: %llu dev->next_event: %llu timer->active: %d timer->expires: %llu\0A\00", align 1
@__tracepoint_tick_stop = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@irq_stat = external dso_local global %struct.irq_cpustat_t, section ".data..percpu..shared_aligned", align 64
@can_stop_idle_tick.ratelimit = internal unnamed_addr global i32 0, align 4
@.str.6 = private unnamed_addr constant [81 x i8] c"\014NOHZ tick-stop error: Non-RCU local softirq work is pending, handler #%02x!!!\0A\00", align 1
@jiffies_seq = external dso_local global %struct.seqcount_raw_spinlock, align 4
@last_jiffies_update = internal unnamed_addr global i64 0, align 8
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@tick_next_period = external dso_local local_unnamed_addr global i64, align 8
@jiffies_lock = external dso_local global %struct.raw_spinlock, align 4
@jiffies_64 = external dso_local local_unnamed_addr global i64, section ".data..cacheline_aligned", align 64
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_get_cpu_idle_time_us, ptr @__ksymtab_get_cpu_iowait_time_us, ptr @__setup_setup_tick_nohz, ptr @__setup_skew_tick], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @tick_get_tick_sched(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_sched to i32)
  %5 = inttoptr i32 %4 to ptr
  ret ptr %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @setup_tick_nohz(ptr noundef %0) #2 section ".init.text" {
  %2 = tail call i32 @kstrtobool(ptr noundef %0, ptr noundef nonnull @tick_nohz_enabled) #12
  %3 = icmp eq i32 %2, 0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @tick_nohz_tick_stopped() local_unnamed_addr #3 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #8, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_sched to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 2
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tick_nohz_tick_stopped_cpu(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_sched to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 2
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @get_cpu_idle_time_us(i32 noundef %0, ptr noundef writeonly %1) #4 {
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @tick_cpu_sched to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load i32, ptr @tick_nohz_active, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %67, label %9

9:                                                ; preds = %2
  %10 = tail call i64 @ktime_get() #12
  %11 = icmp eq ptr %1, null
  %12 = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 3
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 4
  %15 = icmp eq i8 %14, 0
  br i1 %11, label %41, label %16

16:                                               ; preds = %9
  br i1 %15, label %28, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 9
  %19 = load i64, ptr %18, align 8
  %20 = sub i64 %10, %19
  %21 = tail call i32 @nr_iowait_cpu(i32 noundef %0) #12
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 12
  %24 = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 13
  %25 = select i1 %22, ptr %23, ptr %24
  %26 = load i64, ptr %25, align 8
  %27 = add i64 %20, %26
  store i64 %27, ptr %25, align 8
  store i64 %10, ptr %18, align 8
  br label %28

28:                                               ; preds = %17, %16
  %29 = icmp slt i64 %10, 0
  %30 = tail call i64 @llvm.abs.i64(i64 %10, i1 false) #12
  %31 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %30, i32 0) #13, !srcloc !10
  %32 = extractvalue { i64, i32 } %31, 0
  %33 = extractvalue { i64, i32 } %31, 1
  %34 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %30, i64 %32, i32 %33) #13, !srcloc !11
  %35 = extractvalue { i64, i32 } %34, 0
  %36 = lshr i64 %35, 9
  %37 = sub nsw i64 0, %36
  %38 = select i1 %29, i64 %37, i64 %36
  store i64 %38, ptr %1, align 8
  %39 = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 12
  %40 = load i64, ptr %39, align 8
  br label %55

41:                                               ; preds = %9
  br i1 %15, label %52, label %42

42:                                               ; preds = %41
  %43 = tail call i32 @nr_iowait_cpu(i32 noundef %0) #12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 9
  %47 = load i64, ptr %46, align 8
  %48 = sub i64 %10, %47
  %49 = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 12
  %50 = load i64, ptr %49, align 8
  %51 = add i64 %48, %50
  br label %55

52:                                               ; preds = %42, %41
  %53 = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 12
  %54 = load i64, ptr %53, align 8
  br label %55

55:                                               ; preds = %52, %45, %28
  %56 = phi i64 [ %40, %28 ], [ %54, %52 ], [ %51, %45 ]
  %57 = icmp slt i64 %56, 0
  %58 = tail call i64 @llvm.abs.i64(i64 %56, i1 false) #12
  %59 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %58, i32 0) #13, !srcloc !10
  %60 = extractvalue { i64, i32 } %59, 0
  %61 = extractvalue { i64, i32 } %59, 1
  %62 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %58, i64 %60, i32 %61) #13, !srcloc !11
  %63 = extractvalue { i64, i32 } %62, 0
  %64 = lshr i64 %63, 9
  %65 = sub nsw i64 0, %64
  %66 = select i1 %57, i64 %65, i64 %64
  br label %67

67:                                               ; preds = %55, %2
  %68 = phi i64 [ %66, %55 ], [ -1, %2 ]
  ret i64 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_iowait_cpu(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @get_cpu_iowait_time_us(i32 noundef %0, ptr noundef writeonly %1) #4 {
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @tick_cpu_sched to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load i32, ptr @tick_nohz_active, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %67, label %9

9:                                                ; preds = %2
  %10 = tail call i64 @ktime_get() #12
  %11 = icmp eq ptr %1, null
  %12 = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 3
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 4
  %15 = icmp eq i8 %14, 0
  br i1 %11, label %41, label %16

16:                                               ; preds = %9
  br i1 %15, label %28, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 9
  %19 = load i64, ptr %18, align 8
  %20 = sub i64 %10, %19
  %21 = tail call i32 @nr_iowait_cpu(i32 noundef %0) #12
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 12
  %24 = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 13
  %25 = select i1 %22, ptr %23, ptr %24
  %26 = load i64, ptr %25, align 8
  %27 = add i64 %20, %26
  store i64 %27, ptr %25, align 8
  store i64 %10, ptr %18, align 8
  br label %28

28:                                               ; preds = %17, %16
  %29 = icmp slt i64 %10, 0
  %30 = tail call i64 @llvm.abs.i64(i64 %10, i1 false) #12
  %31 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %30, i32 0) #13, !srcloc !10
  %32 = extractvalue { i64, i32 } %31, 0
  %33 = extractvalue { i64, i32 } %31, 1
  %34 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %30, i64 %32, i32 %33) #13, !srcloc !11
  %35 = extractvalue { i64, i32 } %34, 0
  %36 = lshr i64 %35, 9
  %37 = sub nsw i64 0, %36
  %38 = select i1 %29, i64 %37, i64 %36
  store i64 %38, ptr %1, align 8
  %39 = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 13
  %40 = load i64, ptr %39, align 8
  br label %55

41:                                               ; preds = %9
  br i1 %15, label %52, label %42

42:                                               ; preds = %41
  %43 = tail call i32 @nr_iowait_cpu(i32 noundef %0) #12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 9
  %47 = load i64, ptr %46, align 8
  %48 = sub i64 %10, %47
  %49 = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 13
  %50 = load i64, ptr %49, align 8
  %51 = add i64 %48, %50
  br label %55

52:                                               ; preds = %42, %41
  %53 = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 13
  %54 = load i64, ptr %53, align 8
  br label %55

55:                                               ; preds = %52, %45, %28
  %56 = phi i64 [ %40, %28 ], [ %51, %45 ], [ %54, %52 ]
  %57 = icmp slt i64 %56, 0
  %58 = tail call i64 @llvm.abs.i64(i64 %56, i1 false) #12
  %59 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %58, i32 0) #13, !srcloc !10
  %60 = extractvalue { i64, i32 } %59, 0
  %61 = extractvalue { i64, i32 } %59, 1
  %62 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %58, i64 %60, i32 %61) #13, !srcloc !11
  %63 = extractvalue { i64, i32 } %62, 0
  %64 = lshr i64 %63, 9
  %65 = sub nsw i64 0, %64
  %66 = select i1 %57, i64 %65, i64 %64
  br label %67

67:                                               ; preds = %55, %2
  %68 = phi i64 [ %66, %55 ], [ -1, %2 ]
  ret i64 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_nohz_idle_stop_tick() local_unnamed_addr #4 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #8, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_sched to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call ptr @llvm.thread.pointer() #12
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 16
  %10 = load i64, ptr %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %0
  %13 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 15
  %14 = load i64, ptr %13, align 8
  br label %57

15:                                               ; preds = %0
  %16 = lshr i32 %8, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %8, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29, !prof !12

23:                                               ; preds = %15
  %24 = load i32, ptr @tick_do_timer_cpu, align 4
  %25 = icmp eq i32 %24, %8
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 -1, ptr @tick_do_timer_cpu, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 5
  store i64 0, ptr %28, align 8
  br label %166

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %166, label %33, !prof !12

33:                                               ; preds = %29
  %34 = load volatile i32, ptr %6, align 4
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %166

37:                                               ; preds = %33
  %38 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %39 = inttoptr i32 %38 to ptr
  %40 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %39) #8, !srcloc !9
  %41 = add i32 %40, ptrtoint (ptr @irq_stat to i32)
  %42 = inttoptr i32 %41 to ptr
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %55, label %45, !prof !13

45:                                               ; preds = %37
  %46 = load i32, ptr @can_stop_idle_tick.ratelimit, align 4
  %47 = icmp sgt i32 %46, 9
  %48 = and i32 %43, -513
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %47, i1 true, i1 %49
  br i1 %50, label %166, label %51

51:                                               ; preds = %45
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %43) #14
  %53 = load i32, ptr @can_stop_idle_tick.ratelimit, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr @can_stop_idle_tick.ratelimit, align 4
  br label %166

55:                                               ; preds = %37
  %56 = tail call fastcc i64 @tick_nohz_next_event(ptr noundef %5, i32 noundef %8) #12
  br label %57

57:                                               ; preds = %55, %12
  %58 = phi i64 [ %14, %12 ], [ %56, %55 ]
  %59 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 4
  %62 = icmp sgt i64 %58, 0
  br i1 %62, label %63, label %165

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 3
  %65 = load i8, ptr %64, align 8
  %66 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %67 = inttoptr i32 %66 to ptr
  %68 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %67) #8, !srcloc !9
  %69 = add i32 %68, ptrtoint (ptr @tick_cpu_device to i32)
  %70 = inttoptr i32 %69 to ptr
  %71 = load ptr, ptr %70, align 4
  %72 = load i64, ptr %9, align 8
  %73 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 15
  %74 = load i64, ptr %73, align 8
  store i64 0, ptr %9, align 8
  %75 = load i32, ptr @tick_do_timer_cpu, align 4
  %76 = icmp eq i32 %75, %8
  br i1 %76, label %77, label %79

77:                                               ; preds = %63
  store i32 -1, ptr @tick_do_timer_cpu, align 4
  %78 = or i8 %65, 8
  br label %83

79:                                               ; preds = %63
  %80 = icmp eq i32 %75, -1
  br i1 %80, label %85, label %81

81:                                               ; preds = %79
  %82 = and i8 %65, -9
  br label %83

83:                                               ; preds = %81, %77
  %84 = phi i8 [ %82, %81 ], [ %78, %77 ]
  store i8 %84, ptr %64, align 8
  br label %85

85:                                               ; preds = %83, %79
  %86 = phi i8 [ %65, %79 ], [ %84, %83 ]
  %87 = and i8 %86, 2
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %112, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 5
  %91 = load i64, ptr %90, align 8
  %92 = icmp eq i64 %74, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %89
  %94 = icmp eq i64 %74, 9223372036854775807
  br i1 %94, label %150, label %95

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.timerqueue_node, ptr %5, i32 0, i32 1
  %97 = load i64, ptr %96, align 8
  %98 = icmp eq i64 %74, %97
  br i1 %98, label %150, label %99

99:                                               ; preds = %95
  %100 = load i1, ptr @tick_nohz_stop_tick.__already_done, align 1
  br i1 %100, label %102, label %101, !prof !13

101:                                              ; preds = %99
  store i1 true, ptr @tick_nohz_stop_tick.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 885, i32 noundef 9, ptr noundef null) #12
  br label %102

102:                                              ; preds = %101, %99
  %103 = load i1, ptr @tick_nohz_stop_tick.__already_done.3, align 1
  br i1 %103, label %112, label %104, !prof !13

104:                                              ; preds = %102
  store i1 true, ptr @tick_nohz_stop_tick.__already_done.3, align 1
  %105 = load i64, ptr %90, align 8
  %106 = getelementptr inbounds %struct.clock_event_device, ptr %71, i32 0, i32 3
  %107 = load i64, ptr %106, align 16
  %108 = tail call zeroext i1 @hrtimer_active(ptr noundef %5) #12
  %109 = zext i1 %108 to i32
  %110 = load i64, ptr %96, align 8
  %111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i64 noundef %72, i64 noundef %105, i64 noundef %107, i32 noundef %109, i64 noundef %110) #14
  br label %112

112:                                              ; preds = %104, %102, %89, %85
  %113 = load i8, ptr %64, align 8
  %114 = and i8 %113, 2
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %135

116:                                              ; preds = %112
  tail call void @calc_load_nohz_start() #12
  tail call void @quiet_vmstat() #12
  %117 = getelementptr inbounds %struct.timerqueue_node, ptr %5, i32 0, i32 1
  %118 = load i64, ptr %117, align 8
  %119 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 4
  store i64 %118, ptr %119, align 8
  %120 = load i8, ptr %64, align 8
  %121 = or i8 %120, 2
  store i8 %121, ptr %64, align 8
  %122 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tick_stop, i32 0, i32 1), align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %116
  %125 = load i32, ptr %7, align 8
  %126 = lshr i32 %125, 5
  %127 = getelementptr i32, ptr @__cpu_online_mask, i32 %126
  %128 = load volatile i32, ptr %127, align 4
  %129 = and i32 %125, 31
  %130 = shl nuw i32 1, %129
  %131 = and i32 %130, %128
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %124
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %134 = tail call i32 @__traceiter_tick_stop(ptr noundef null, i32 noundef 1, i32 noundef 0) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %135

135:                                              ; preds = %133, %124, %116, %112
  %136 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 5
  store i64 %74, ptr %136, align 8
  %137 = icmp eq i64 %74, 9223372036854775807
  %138 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 2
  br i1 %137, label %141, label %144, !prof !12

141:                                              ; preds = %135
  br i1 %140, label %142, label %150

142:                                              ; preds = %141
  %143 = tail call i32 @hrtimer_cancel(ptr noundef %5) #12
  br label %150

144:                                              ; preds = %135
  br i1 %140, label %145, label %146

145:                                              ; preds = %144
  tail call void @hrtimer_start_range_ns(ptr noundef %5, i64 noundef %74, i64 noundef 0, i32 noundef 10) #12
  br label %150

146:                                              ; preds = %144
  %147 = getelementptr inbounds %struct.timerqueue_node, ptr %5, i32 0, i32 1
  store i64 %74, ptr %147, align 8
  %148 = getelementptr inbounds %struct.hrtimer, ptr %5, i32 0, i32 1
  store i64 %74, ptr %148, align 8
  %149 = tail call i32 @tick_program_event(i64 noundef %74, i32 noundef 1) #12
  br label %150

150:                                              ; preds = %146, %145, %142, %141, %95, %93
  %151 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 8
  %152 = load i32, ptr %151, align 8
  %153 = add i32 %152, 1
  store i32 %153, ptr %151, align 8
  %154 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 18
  store i64 %58, ptr %154, align 8
  %155 = and i8 %65, 2
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %150
  %158 = load i8, ptr %64, align 8
  %159 = and i8 %158, 2
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 14
  %163 = load i32, ptr %162, align 8
  %164 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 6
  store i32 %163, ptr %164, align 8
  tail call void @nohz_balance_enter_idle(i32 noundef %8) #12
  br label %166

165:                                              ; preds = %57
  store i64 0, ptr %9, align 8
  br label %166

166:                                              ; preds = %165, %161, %157, %150, %51, %45, %33, %29, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_nohz_idle_retain_tick() local_unnamed_addr #4 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #8, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_sched to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 16
  store i64 0, ptr %6, align 8
  tail call void @timer_clear_idle() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @timer_clear_idle() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_nohz_idle_enter() local_unnamed_addr #4 {
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !16
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #8, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_sched to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 16
  %7 = load i64, ptr %6, align 8
  %8 = icmp ne i64 %7, 0
  %9 = load i1, ptr @tick_nohz_idle_enter.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !12

12:                                               ; preds = %0
  store i1 true, ptr @tick_nohz_idle_enter.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1111, i32 noundef 9, ptr noundef null) #12
  br label %13

13:                                               ; preds = %12, %0
  %14 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 3
  %15 = load i8, ptr %14, align 8
  %16 = or i8 %15, 1
  store i8 %16, ptr %14, align 8
  %17 = tail call i64 @ktime_get() #12
  %18 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 9
  store i64 %17, ptr %18, align 8
  %19 = load i8, ptr %14, align 8
  %20 = or i8 %19, 4
  store i8 %20, ptr %14, align 8
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_nohz_irq_exit() local_unnamed_addr #4 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #8, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_sched to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %0
  %11 = tail call i64 @ktime_get() #12
  %12 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 9
  store i64 %11, ptr %12, align 8
  %13 = load i8, ptr %6, align 8
  %14 = or i8 %13, 4
  store i8 %14, ptr %6, align 8
  br label %15

15:                                               ; preds = %10, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @tick_nohz_idle_got_tick() local_unnamed_addr #4 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #8, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_sched to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = and i8 %7, -17
  store i8 %11, ptr %6, align 8
  br label %12

12:                                               ; preds = %10, %0
  %13 = xor i1 %9, true
  ret i1 %13
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i64 @tick_nohz_get_next_hrtimer() local_unnamed_addr #3 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #8, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_device to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clock_event_device, ptr %6, i32 0, i32 3
  %8 = load i64, ptr %7, align 16
  ret i64 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @tick_nohz_get_sleep_length(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #8, !srcloc !9
  %5 = add i32 %4, ptrtoint (ptr @tick_cpu_device to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load ptr, ptr %6, align 4
  %8 = add i32 %4, ptrtoint (ptr @tick_cpu_sched to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call ptr @llvm.thread.pointer() #12
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.tick_sched, ptr %9, i32 0, i32 9
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.tick_sched, ptr %9, i32 0, i32 3
  %16 = load i8, ptr %15, align 8
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  %19 = load i1, ptr @tick_nohz_get_sleep_length.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !12

22:                                               ; preds = %1
  store i1 true, ptr @tick_nohz_get_sleep_length.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1185, i32 noundef 9, ptr noundef null) #12
  br label %23

23:                                               ; preds = %22, %1
  %24 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 3
  %25 = load i64, ptr %24, align 16
  %26 = sub i64 %25, %14
  store i64 %26, ptr %0, align 8
  %27 = lshr i32 %12, 5
  %28 = getelementptr i32, ptr @__cpu_online_mask, i32 %27
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %12, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40, !prof !12

34:                                               ; preds = %23
  %35 = load i32, ptr @tick_do_timer_cpu, align 4
  %36 = icmp eq i32 %35, %12
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 -1, ptr @tick_do_timer_cpu, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = getelementptr inbounds %struct.tick_sched, ptr %9, i32 0, i32 5
  store i64 0, ptr %39, align 8
  br label %66

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.tick_sched, ptr %9, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %66, label %44, !prof !12

44:                                               ; preds = %40
  %45 = load volatile i32, ptr %10, align 4
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %50 = inttoptr i32 %49 to ptr
  %51 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %50) #8, !srcloc !9
  %52 = add i32 %51, ptrtoint (ptr @irq_stat to i32)
  %53 = inttoptr i32 %52 to ptr
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %68, label %56, !prof !13

56:                                               ; preds = %48
  %57 = load i32, ptr @can_stop_idle_tick.ratelimit, align 4
  %58 = icmp sgt i32 %57, 9
  %59 = and i32 %54, -513
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %58, i1 true, i1 %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %54) #14
  %64 = load i32, ptr @can_stop_idle_tick.ratelimit, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr @can_stop_idle_tick.ratelimit, align 4
  br label %66

66:                                               ; preds = %62, %56, %44, %40, %38
  %67 = load i64, ptr %0, align 8
  br label %77

68:                                               ; preds = %48
  %69 = tail call fastcc i64 @tick_nohz_next_event(ptr noundef %9, i32 noundef %12)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i64, ptr %0, align 8
  br label %77

73:                                               ; preds = %68
  %74 = tail call i64 @hrtimer_next_event_without(ptr noundef %9) #12
  %75 = tail call i64 @llvm.umin.i64(i64 %69, i64 %74)
  %76 = sub i64 %75, %14
  br label %77

77:                                               ; preds = %73, %71, %66
  %78 = phi i64 [ %76, %73 ], [ %72, %71 ], [ %67, %66 ]
  ret i64 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @tick_nohz_next_event(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 0, ptr %3, align 8, !annotation !18
  br label %4

4:                                                ; preds = %12, %2
  %5 = load volatile i32, ptr @jiffies_seq, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %8, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !20
  %9 = load volatile i32, ptr @jiffies_seq, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %5, %4 ], [ %9, %8 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  %14 = load i64, ptr @last_jiffies_update, align 8
  %15 = load volatile i32, ptr @jiffies, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  %16 = load volatile i32, ptr @jiffies_seq, align 4
  %17 = icmp eq i32 %16, %13
  br i1 %17, label %18, label %4

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.tick_sched, ptr %0, i32 0, i32 14
  store i32 %15, ptr %19, align 8
  %20 = getelementptr inbounds %struct.tick_sched, ptr %0, i32 0, i32 16
  store i64 %14, ptr %20, align 8
  %21 = call i32 @rcu_needs_cpu(i64 noundef %14, ptr noundef nonnull %3) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = call zeroext i1 @irq_work_needs_cpu() #12
  br i1 %24, label %34, label %25

25:                                               ; preds = %23
  %26 = call i32 @llvm.read_register.i32(metadata !0) #12
  %27 = inttoptr i32 %26 to ptr
  %28 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #8, !srcloc !9
  %29 = add i32 %28, ptrtoint (ptr @irq_stat to i32)
  %30 = inttoptr i32 %29 to ptr
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %25, %23, %18
  %35 = add i64 %14, 10000000
  br label %41

36:                                               ; preds = %25
  %37 = call i64 @get_next_timer_interrupt(i32 noundef %15, i64 noundef %14) #12
  %38 = getelementptr inbounds %struct.tick_sched, ptr %0, i32 0, i32 17
  store i64 %37, ptr %38, align 8
  %39 = load i64, ptr %3, align 8
  %40 = call i64 @llvm.umin.i64(i64 %39, i64 %37)
  br label %41

41:                                               ; preds = %36, %34
  %42 = phi i64 [ %35, %34 ], [ %40, %36 ]
  %43 = sub i64 %42, %14
  %44 = icmp ult i64 %43, 10000001
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  call void @timer_clear_idle() #12
  %46 = getelementptr inbounds %struct.tick_sched, ptr %0, i32 0, i32 3
  %47 = load i8, ptr %46, align 8
  %48 = and i8 %47, 2
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %69, label %50

50:                                               ; preds = %45, %41
  %51 = call i64 @timekeeping_max_deferment() #12
  %52 = load i32, ptr @tick_do_timer_cpu, align 4
  %53 = icmp eq i32 %52, %1
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = icmp eq i32 %52, -1
  br i1 %55, label %56, label %61

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.tick_sched, ptr %0, i32 0, i32 3
  %58 = load i8, ptr %57, align 8
  %59 = and i8 %58, 8
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56, %54
  br label %62

62:                                               ; preds = %61, %56, %50
  %63 = phi i64 [ 9223372036854775807, %61 ], [ %51, %56 ], [ %51, %50 ]
  %64 = sub i64 9223372036854775807, %14
  %65 = icmp ult i64 %63, %64
  %66 = add i64 %63, %14
  %67 = select i1 %65, i64 %66, i64 9223372036854775807
  %68 = call i64 @llvm.umin.i64(i64 %67, i64 %42)
  br label %69

69:                                               ; preds = %62, %45
  %70 = phi i64 [ %68, %62 ], [ 0, %45 ]
  %71 = getelementptr inbounds %struct.tick_sched, ptr %0, i32 0, i32 15
  store i64 %70, ptr %71, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i64 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_next_event_without(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @tick_nohz_get_idle_calls_cpu(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_sched to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @tick_nohz_get_idle_calls() local_unnamed_addr #3 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #8, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_sched to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_nohz_idle_restart_tick() local_unnamed_addr #4 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #8, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_sched to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %0
  %11 = tail call i64 @ktime_get() #12
  tail call fastcc void @tick_nohz_restart_sched_tick(ptr noundef %5, i64 noundef %11)
  %12 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 11
  store i64 %11, ptr %12, align 8
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 6
  %15 = load i32, ptr %14, align 8
  %16 = sub i32 %13, %15
  %17 = icmp ne i32 %13, %15
  %18 = icmp ult i32 %16, 2147483647
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  tail call void @account_idle_ticks(i32 noundef %16) #12
  br label %21

21:                                               ; preds = %20, %10, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tick_nohz_restart_sched_tick(ptr noundef %0, i64 noundef %1) unnamed_addr #4 {
  tail call fastcc void @tick_do_update_jiffies64(i64 noundef %1)
  tail call void @timer_clear_idle() #12
  tail call void @calc_load_nohz_stop() #12
  %3 = getelementptr inbounds %struct.tick_sched, ptr %0, i32 0, i32 3
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, -3
  store i8 %5, ptr %3, align 8
  %6 = tail call i32 @hrtimer_cancel(ptr noundef %0) #12
  %7 = getelementptr inbounds %struct.tick_sched, ptr %0, i32 0, i32 4
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.timerqueue_node, ptr %0, i32 0, i32 1
  store i64 %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 1
  store i64 %8, ptr %10, align 8
  %11 = tail call i64 @hrtimer_forward(ptr noundef %0, i64 noundef %1, i64 noundef 10000000) #12
  %12 = getelementptr inbounds %struct.tick_sched, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i64, ptr %10, align 8
  %17 = load i64, ptr %9, align 8
  %18 = sub i64 %17, %16
  tail call void @hrtimer_start_range_ns(ptr noundef %0, i64 noundef %16, i64 noundef %18, i32 noundef 10) #12
  br label %22

19:                                               ; preds = %2
  %20 = load i64, ptr %9, align 8
  %21 = tail call i32 @tick_program_event(i64 noundef %20, i32 noundef 1) #12
  br label %22

22:                                               ; preds = %19, %15
  %23 = getelementptr inbounds %struct.tick_sched, ptr %0, i32 0, i32 5
  store i64 0, ptr %23, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_nohz_idle_exit() local_unnamed_addr #4 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #8, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_sched to i32)
  %5 = inttoptr i32 %4 to ptr
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !16
  %6 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  %10 = load i1, ptr @tick_nohz_idle_exit.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !12

13:                                               ; preds = %0
  store i1 true, ptr @tick_nohz_idle_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1289, i32 noundef 9, ptr noundef null) #12
  br label %14

14:                                               ; preds = %13, %0
  %15 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 16
  %16 = load i64, ptr %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = load i1, ptr @tick_nohz_idle_exit.__already_done.2, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !12

21:                                               ; preds = %14
  store i1 true, ptr @tick_nohz_idle_exit.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1290, i32 noundef 9, ptr noundef null) #12
  br label %22

22:                                               ; preds = %21, %14
  %23 = load i8, ptr %6, align 8
  %24 = and i8 %23, -2
  store i8 %24, ptr %6, align 8
  %25 = and i8 %23, 4
  %26 = icmp eq i8 %25, 0
  %27 = and i8 %23, 2
  %28 = icmp eq i8 %27, 0
  %29 = and i8 %23, 6
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  %32 = tail call i64 @ktime_get() #12
  br label %33

33:                                               ; preds = %31, %22
  %34 = phi i64 [ %32, %31 ], [ 0, %22 ]
  br i1 %26, label %57, label %35

35:                                               ; preds = %33
  %36 = load i8, ptr %6, align 8
  %37 = and i8 %36, 4
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @llvm.thread.pointer() #12
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 9
  %44 = load i64, ptr %43, align 8
  %45 = sub i64 %34, %44
  %46 = tail call i32 @nr_iowait_cpu(i32 noundef %42) #12
  %47 = icmp eq i32 %46, 0
  %48 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 12
  %49 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 13
  %50 = select i1 %47, ptr %48, ptr %49
  %51 = load i64, ptr %50, align 8
  %52 = add i64 %45, %51
  store i64 %52, ptr %50, align 8
  store i64 %34, ptr %43, align 8
  %53 = load i8, ptr %6, align 8
  br label %54

54:                                               ; preds = %39, %35
  %55 = phi i8 [ %36, %35 ], [ %53, %39 ]
  %56 = and i8 %55, -5
  store i8 %56, ptr %6, align 8
  br label %57

57:                                               ; preds = %54, %33
  br i1 %28, label %68, label %58

58:                                               ; preds = %57
  tail call fastcc void @tick_nohz_restart_sched_tick(ptr noundef %5, i64 noundef %34) #12
  %59 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 11
  store i64 %34, ptr %59, align 8
  %60 = load volatile i32, ptr @jiffies, align 64
  %61 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 6
  %62 = load i32, ptr %61, align 8
  %63 = sub i32 %60, %62
  %64 = icmp ne i32 %60, %62
  %65 = icmp ult i32 %63, 2147483647
  %66 = and i1 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  tail call void @account_idle_ticks(i32 noundef %63) #12
  br label %68

68:                                               ; preds = %67, %58, %57
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_irq_enter() local_unnamed_addr #4 {
  tail call void @tick_check_oneshot_broadcast_this_cpu() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #8, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_sched to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 6
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %0
  %11 = tail call i64 @ktime_get() #12
  %12 = load i8, ptr %6, align 8
  %13 = and i8 %12, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %10
  %16 = tail call ptr @llvm.thread.pointer() #12
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 9
  %20 = load i64, ptr %19, align 8
  %21 = sub i64 %11, %20
  %22 = tail call i32 @nr_iowait_cpu(i32 noundef %18) #12
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 12
  %25 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 13
  %26 = select i1 %23, ptr %24, ptr %25
  %27 = load i64, ptr %26, align 8
  %28 = add i64 %21, %27
  store i64 %28, ptr %26, align 8
  store i64 %11, ptr %19, align 8
  %29 = load i8, ptr %6, align 8
  %30 = and i8 %29, -5
  store i8 %30, ptr %6, align 8
  br label %31

31:                                               ; preds = %15, %10
  %32 = phi i8 [ %30, %15 ], [ %12, %10 ]
  %33 = and i8 %32, 2
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %37 = inttoptr i32 %36 to ptr
  %38 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %37) #8, !srcloc !9
  %39 = add i32 %38, ptrtoint (ptr getelementptr inbounds (%struct.tick_sched, ptr @tick_cpu_sched, i32 0, i32 10) to i32)
  %40 = inttoptr i32 %39 to ptr
  store i64 %11, ptr %40, align 8
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !23
  tail call fastcc void @tick_do_update_jiffies64(i64 noundef %11) #12
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %41) #12, !srcloc !24
  br label %42

42:                                               ; preds = %35, %31, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_check_oneshot_broadcast_this_cpu() local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @skew_tick(ptr noundef %0) #2 section ".init.text" {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = call i32 @get_option(ptr noundef nonnull %2, ptr noundef nonnull @sched_skew_tick) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_setup_sched_timer() local_unnamed_addr #4 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #8, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_sched to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i64 @ktime_get() #12
  tail call void @hrtimer_init(ptr noundef %5, i32 noundef 1, i32 noundef 8) #12
  %7 = getelementptr inbounds %struct.hrtimer, ptr %5, i32 0, i32 2
  store ptr @tick_sched_timer, ptr %7, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @jiffies_lock) #12
  %8 = load i32, ptr @jiffies_seq, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr @jiffies_seq, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !25
  %10 = load i64, ptr @last_jiffies_update, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i64, ptr @tick_next_period, align 8
  store i64 %13, ptr @last_jiffies_update, align 8
  br label %14

14:                                               ; preds = %12, %0
  %15 = phi i64 [ %13, %12 ], [ %10, %0 ]
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !26
  %16 = load i32, ptr @jiffies_seq, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr @jiffies_seq, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !27
  %18 = load i16, ptr @jiffies_lock, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr @jiffies_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !30
  %20 = getelementptr inbounds %struct.timerqueue_node, ptr %5, i32 0, i32 1
  store i64 %15, ptr %20, align 8
  %21 = getelementptr inbounds %struct.hrtimer, ptr %5, i32 0, i32 1
  store i64 %15, ptr %21, align 8
  %22 = load i32, ptr @sched_skew_tick, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %14
  %25 = load i32, ptr @__cpu_possible_mask, align 4
  %26 = and i32 %25, 65535
  %27 = tail call i32 @__sw_hweight32(i32 noundef %26) #12
  %28 = udiv i32 5000000, %27
  %29 = zext i32 %28 to i64
  %30 = tail call ptr @llvm.thread.pointer() #12
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = zext i32 %32 to i64
  %34 = mul nuw nsw i64 %29, %33
  %35 = load i64, ptr %20, align 8
  %36 = add i64 %34, %35
  store i64 %36, ptr %20, align 8
  %37 = load i64, ptr %21, align 8
  %38 = add i64 %37, %34
  store i64 %38, ptr %21, align 8
  br label %39

39:                                               ; preds = %24, %14
  %40 = tail call i64 @hrtimer_forward(ptr noundef %5, i64 noundef %6, i64 noundef 10000000) #12
  %41 = load i64, ptr %21, align 8
  %42 = load i64, ptr %20, align 8
  %43 = sub i64 %42, %41
  tail call void @hrtimer_start_range_ns(ptr noundef %5, i64 noundef %41, i64 noundef %43, i32 noundef 10) #12
  %44 = load i8, ptr @tick_nohz_enabled, align 1, !range !31
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 2
  store i32 2, ptr %47, align 4
  %48 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @tick_nohz_active) #12
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call void @timers_update_nohz() #12
  br label %51

51:                                               ; preds = %50, %46, %39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tick_sched_timer(ptr noundef %0) #4 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #8, !srcloc !9
  %5 = add i32 %4, ptrtoint (ptr @__irq_regs to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i64 @ktime_get() #12
  %9 = tail call ptr @llvm.thread.pointer() #12
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = load i32, ptr @tick_do_timer_cpu, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15, !prof !12

14:                                               ; preds = %1
  store i32 %11, ptr @tick_do_timer_cpu, align 4
  br label %17

15:                                               ; preds = %1
  %16 = icmp eq i32 %12, %11
  br i1 %16, label %17, label %18

17:                                               ; preds = %15, %14
  tail call fastcc void @tick_do_update_jiffies64(i64 noundef %8) #12
  br label %18

18:                                               ; preds = %17, %15
  %19 = getelementptr inbounds %struct.tick_sched, ptr %0, i32 0, i32 3
  %20 = load i8, ptr %19, align 8
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = or i8 %20, 16
  store i8 %24, ptr %19, align 8
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi i8 [ %20, %18 ], [ %24, %23 ]
  %27 = icmp eq ptr %7, null
  br i1 %27, label %49, label %28

28:                                               ; preds = %25
  %29 = and i8 %26, 2
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.tick_sched, ptr %0, i32 0, i32 6
  %38 = load i32, ptr %37, align 8
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 8
  br label %40

40:                                               ; preds = %36, %31
  %41 = getelementptr inbounds %struct.tick_sched, ptr %0, i32 0, i32 5
  store i64 0, ptr %41, align 8
  br label %42

42:                                               ; preds = %40, %28
  %43 = getelementptr [18 x i32], ptr %7, i32 0, i32 16
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 15
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  tail call void @update_process_times(i32 noundef %47) #12
  %48 = load i8, ptr %19, align 8
  br label %51

49:                                               ; preds = %25
  %50 = getelementptr inbounds %struct.tick_sched, ptr %0, i32 0, i32 5
  store i64 0, ptr %50, align 8
  br label %51

51:                                               ; preds = %49, %42
  %52 = phi i8 [ %26, %49 ], [ %48, %42 ]
  %53 = and i8 %52, 2
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %57, !prof !13

55:                                               ; preds = %51
  %56 = tail call i64 @hrtimer_forward(ptr noundef %0, i64 noundef %8, i64 noundef 10000000) #12
  br label %57

57:                                               ; preds = %55, %51
  %58 = phi i32 [ 1, %55 ], [ 0, %51 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_cancel_sched_timer(i32 noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_sched to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.hrtimer, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @hrtimer_cancel(ptr noundef %5) #12
  br label %11

11:                                               ; preds = %9, %1
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(184) %5, i8 0, i32 184, i1 false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_clock_notify() local_unnamed_addr #4 {
  %1 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ult i32 %1, %2
  br i1 %3, label %4, label %14

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %11, %4 ], [ %1, %0 ]
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @tick_cpu_sched to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.tick_sched, ptr %9, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %10) #12
  %11 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #15
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %4, label %14

14:                                               ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_oneshot_notify() local_unnamed_addr #4 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #8, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_sched to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.tick_sched, ptr %5, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %6) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tick_check_oneshot_change(i32 noundef %0) local_unnamed_addr #4 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #8, !srcloc !9
  %5 = add i32 %4, ptrtoint (ptr @tick_cpu_sched to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 1
  %8 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %7) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %63, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %63

14:                                               ; preds = %10
  %15 = tail call i32 @timekeeping_valid_for_hres() #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %63, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @tick_is_oneshot_available() #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %63, label %20

20:                                               ; preds = %17
  %21 = icmp eq i32 %0, 0
  br i1 %21, label %63, label %22

22:                                               ; preds = %20
  %23 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %24 = inttoptr i32 %23 to ptr
  %25 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %24) #8, !srcloc !9
  %26 = add i32 %25, ptrtoint (ptr @tick_cpu_sched to i32)
  %27 = inttoptr i32 %26 to ptr
  %28 = load i8, ptr @tick_nohz_enabled, align 1, !range !31
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %63, label %30

30:                                               ; preds = %22
  %31 = tail call i32 @tick_switch_to_oneshot(ptr noundef nonnull @tick_nohz_handler) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %30
  tail call void @hrtimer_init(ptr noundef %27, i32 noundef 1, i32 noundef 8) #12
  tail call void @_raw_spin_lock(ptr noundef nonnull @jiffies_lock) #12
  %34 = load i32, ptr @jiffies_seq, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr @jiffies_seq, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !25
  %36 = load i64, ptr @last_jiffies_update, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, ptr @tick_next_period, align 8
  store i64 %39, ptr @last_jiffies_update, align 8
  br label %40

40:                                               ; preds = %38, %33
  %41 = phi i64 [ %39, %38 ], [ %36, %33 ]
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !26
  %42 = load i32, ptr @jiffies_seq, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr @jiffies_seq, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !27
  %44 = load i16, ptr @jiffies_lock, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr @jiffies_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !30
  %46 = getelementptr inbounds %struct.timerqueue_node, ptr %27, i32 0, i32 1
  store i64 %41, ptr %46, align 8
  %47 = getelementptr inbounds %struct.hrtimer, ptr %27, i32 0, i32 1
  store i64 %41, ptr %47, align 8
  %48 = getelementptr inbounds %struct.hrtimer, ptr %27, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %49, i32 0, i32 6
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i64 %51() #12
  %53 = tail call i64 @hrtimer_forward(ptr noundef %27, i64 noundef %52, i64 noundef 10000000) #12
  %54 = load i64, ptr %46, align 8
  %55 = tail call i32 @tick_program_event(i64 noundef %54, i32 noundef 1) #12
  %56 = load i8, ptr @tick_nohz_enabled, align 1, !range !31
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %40
  %59 = getelementptr inbounds %struct.tick_sched, ptr %27, i32 0, i32 2
  store i32 1, ptr %59, align 4
  %60 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @tick_nohz_active) #12
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  tail call void @timers_update_nohz() #12
  br label %63

63:                                               ; preds = %62, %58, %40, %30, %22, %20, %17, %14, %10, %1
  %64 = phi i32 [ 0, %1 ], [ 0, %10 ], [ 0, %17 ], [ 0, %14 ], [ 1, %20 ], [ 0, %22 ], [ 0, %30 ], [ 0, %40 ], [ 0, %58 ], [ 0, %62 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timekeeping_valid_for_hres() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_is_oneshot_available() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @nohz_balance_enter_idle(i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hrtimer_active(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @calc_load_nohz_start() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @quiet_vmstat() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_program_event(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tick_stop(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_needs_cpu(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_needs_cpu() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_next_timer_interrupt(i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timekeeping_max_deferment() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tick_do_update_jiffies64(i64 noundef %0) unnamed_addr #4 {
  br label %2

2:                                                ; preds = %10, %1
  %3 = load volatile i32, ptr @jiffies_seq, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %6, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !32
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !33
  %7 = load volatile i32, ptr @jiffies_seq, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %6

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %3, %2 ], [ %7, %6 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !34
  %12 = load i64, ptr @tick_next_period, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  %13 = load volatile i32, ptr @jiffies_seq, align 4
  %14 = icmp eq i32 %13, %11
  br i1 %14, label %15, label %2

15:                                               ; preds = %10
  %16 = icmp sgt i64 %12, %0
  br i1 %16, label %54, label %17

17:                                               ; preds = %15
  tail call void @_raw_spin_lock(ptr noundef nonnull @jiffies_lock) #12
  %18 = load i64, ptr @tick_next_period, align 8
  %19 = icmp sgt i64 %18, %0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !27
  %21 = load i16, ptr @jiffies_lock, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr @jiffies_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !30
  br label %54

23:                                               ; preds = %17
  %24 = load i32, ptr @jiffies_seq, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr @jiffies_seq, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !25
  %26 = load i64, ptr @tick_next_period, align 8
  %27 = sub i64 %0, %26
  %28 = icmp sgt i64 %27, 9999999
  br i1 %28, label %29, label %40, !prof !12

29:                                               ; preds = %23
  %30 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %27) #13, !srcloc !35
  %31 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %27, i64 %30, i32 0) #13, !srcloc !11
  %32 = extractvalue { i64, i32 } %31, 0
  %33 = lshr i64 %32, 23
  %34 = trunc i64 %33 to i32
  %35 = add i32 %34, 1
  %36 = load i64, ptr @last_jiffies_update, align 8
  %37 = zext i32 %35 to i64
  %38 = mul nuw nsw i64 %37, 10000000
  %39 = add i64 %38, %36
  br label %43

40:                                               ; preds = %23
  %41 = load i64, ptr @last_jiffies_update, align 8
  %42 = add i64 %41, 10000000
  br label %43

43:                                               ; preds = %40, %29
  %44 = phi i64 [ %42, %40 ], [ %39, %29 ]
  %45 = phi i32 [ 1, %40 ], [ %35, %29 ]
  store i64 %44, ptr @last_jiffies_update, align 8
  %46 = zext i32 %45 to i64
  %47 = load i64, ptr @jiffies_64, align 64
  %48 = add i64 %47, %46
  store i64 %48, ptr @jiffies_64, align 64
  %49 = add i64 %44, 10000000
  store i64 %49, ptr @tick_next_period, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !26
  %50 = load i32, ptr @jiffies_seq, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr @jiffies_seq, align 4
  tail call void @calc_global_load() #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !27
  %52 = load i16, ptr @jiffies_lock, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr @jiffies_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !30
  tail call void @update_wall_time() #12
  br label %54

54:                                               ; preds = %43, %20, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @calc_load_nohz_stop() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @calc_global_load() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_wall_time() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @account_idle_ticks(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_process_times(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @timers_update_nohz() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_switch_to_oneshot(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tick_nohz_handler(ptr nocapture noundef writeonly %0) #4 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #8, !srcloc !9
  %5 = add i32 %4, ptrtoint (ptr @tick_cpu_sched to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = add i32 %4, ptrtoint (ptr @__irq_regs to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i64 @ktime_get() #12
  %11 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 3
  store i64 9223372036854775807, ptr %11, align 16
  %12 = tail call ptr @llvm.thread.pointer() #12
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = load i32, ptr @tick_do_timer_cpu, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18, !prof !12

17:                                               ; preds = %1
  store i32 %14, ptr @tick_do_timer_cpu, align 4
  br label %20

18:                                               ; preds = %1
  %19 = icmp eq i32 %15, %14
  br i1 %19, label %20, label %21

20:                                               ; preds = %18, %17
  tail call fastcc void @tick_do_update_jiffies64(i64 noundef %10) #12
  br label %21

21:                                               ; preds = %20, %18
  %22 = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 3
  %23 = load i8, ptr %22, align 8
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = or i8 %23, 16
  store i8 %27, ptr %22, align 8
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi i8 [ %23, %21 ], [ %27, %26 ]
  %30 = and i8 %29, 2
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 6
  %39 = load i32, ptr %38, align 8
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 8
  br label %41

41:                                               ; preds = %37, %32
  %42 = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 5
  store i64 0, ptr %42, align 8
  br label %43

43:                                               ; preds = %41, %28
  %44 = getelementptr [18 x i32], ptr %9, i32 0, i32 16
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 15
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  tail call void @update_process_times(i32 noundef %48) #12
  %49 = load i8, ptr %22, align 8
  %50 = and i8 %49, 2
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %57, !prof !13

52:                                               ; preds = %43
  %53 = tail call i64 @hrtimer_forward(ptr noundef %6, i64 noundef %10, i64 noundef 10000000) #12
  %54 = getelementptr inbounds %struct.timerqueue_node, ptr %6, i32 0, i32 1
  %55 = load i64, ptr %54, align 8
  %56 = tail call i32 @tick_program_event(i64 noundef %55, i32 noundef 1) #12
  br label %57

57:                                               ; preds = %52, %43
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readonly willreturn }

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
!9 = !{i64 658243}
!10 = !{i64 1181898, i64 1181925, i64 1181947, i64 1181975}
!11 = !{i64 1182306, i64 1182333, i64 1182366, i64 1182387, i64 1182414, i64 1182440}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2153290734}
!15 = !{i64 2153290902}
!16 = !{i64 651573}
!17 = !{i64 651383}
!18 = !{!"auto-init"}
!19 = !{i64 2153364037}
!20 = !{i64 2153363879}
!21 = !{i64 2153364181}
!22 = !{i64 2149678395}
!23 = !{i64 651138, i64 651199}
!24 = !{i64 654155}
!25 = !{i64 2149678694}
!26 = !{i64 2149678995}
!27 = !{i64 2149259332}
!28 = !{i64 2149255156}
!29 = !{i64 2149255231, i64 2149255258, i64 2149255305, i64 2149255327, i64 2149255355, i64 2149255375}
!30 = !{i64 2149282335}
!31 = !{i8 0, i8 2}
!32 = !{i64 2153313959}
!33 = !{i64 2153313801}
!34 = !{i64 2153314103}
!35 = !{i64 1181611, i64 1181638}
