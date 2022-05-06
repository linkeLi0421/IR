; ModuleID = '/llk/IR/drivers/mmc/core/sdio_irq.c_pt.bc'
source_filename = "../drivers/mmc/core/sdio_irq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_signal_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_signal_irq\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_signal_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_claim_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_claim_irq\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_claim_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_release_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_release_irq\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_release_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.49 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_sdio_signal_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_signal_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_signal_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_signal_irq to i32), ptr @__kstrtab_sdio_signal_irq, ptr @__kstrtabns_sdio_signal_irq }, section "___ksymtab_gpl+sdio_signal_irq", align 4
@__kstrtab_sdio_claim_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_claim_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_claim_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_claim_irq to i32), ptr @__kstrtab_sdio_claim_irq, ptr @__kstrtabns_sdio_claim_irq }, section "___ksymtab_gpl+sdio_claim_irq", align 4
@__kstrtab_sdio_release_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_release_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_release_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_release_irq to i32), ptr @__kstrtab_sdio_release_irq, ptr @__kstrtabns_sdio_release_irq }, section "___ksymtab_gpl+sdio_release_irq", align 4
@.str = private unnamed_addr constant [45 x i8] c"\014%s: pending IRQ for non-existent function\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"\014%s: pending IRQ with no handler\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"drivers/mmc/core/sdio_irq.c\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"ksdioirqd/%s\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_sdio_claim_irq, ptr @__ksymtab_sdio_release_irq, ptr @__ksymtab_sdio_signal_irq], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdio_irq_work(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -748
  %3 = tail call i32 @__mmc_claim_host(ptr noundef %2, ptr noundef null, ptr noundef null) #5
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @process_sdio_pending_irqs(ptr noundef %2) #5
  %9 = getelementptr i8, ptr %0, i32 44
  %10 = load i8, ptr %9, align 8, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %0, i32 -264
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mmc_host_ops, ptr %14, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef %2) #5
  br label %17

17:                                               ; preds = %12, %7, %1
  tail call void @mmc_release_host(ptr noundef %2) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdio_signal_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 49
  store i8 1, ptr %2, align 8
  %3 = load ptr, ptr @system_wq, align 4
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 48
  %5 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %4, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdio_claim_irq(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  store i8 0, ptr %3, align 1, !annotation !9
  %4 = icmp eq ptr %0, null
  br i1 %4, label %102, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %102

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8
  %11 = call i32 @mmc_io_rw_direct(ptr noundef %10, i32 noundef 0, i32 noundef 0, i32 noundef 4, i8 noundef zeroext 0, ptr noundef nonnull %3) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %102

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = shl nuw i32 1, %15
  %17 = load i8, ptr %3, align 1
  %18 = trunc i32 %16 to i8
  %19 = or i8 %17, %18
  %20 = or i8 %19, 1
  store i8 %20, ptr %3, align 1
  %21 = load ptr, ptr %0, align 8
  %22 = call i32 @mmc_io_rw_direct(ptr noundef %21, i32 noundef 1, i32 noundef 0, i32 noundef 4, i8 noundef zeroext %20, ptr noundef null) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %102

24:                                               ; preds = %13
  store ptr %1, ptr %6, align 8
  %25 = load ptr, ptr %0, align 8
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.mmc_host, ptr %26, i32 0, i32 29
  %28 = load i16, ptr %27, align 8
  %29 = and i16 %28, 2
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %32, !prof !10

31:                                               ; preds = %24
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 228, i32 noundef 9, ptr noundef null) #5
  br label %32

32:                                               ; preds = %31, %24
  %33 = getelementptr inbounds %struct.mmc_host, ptr %26, i32 0, i32 46
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 4
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.mmc_host, ptr %26, i32 0, i32 17
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 131072
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.mmc_host, ptr %26, i32 0, i32 50
  store volatile i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.mmc_host, ptr %26, i32 0, i32 1, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.mmc_host, ptr %26, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %42
  %51 = phi ptr [ %49, %47 ], [ %45, %42 ]
  %52 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @sdio_irq_thread, ptr noundef %26, i32 noundef -1, ptr noundef nonnull @.str.3, ptr noundef %51) #5
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %67, label %54

54:                                               ; preds = %50
  %55 = call i32 @wake_up_process(ptr noundef %52) #5
  %56 = getelementptr inbounds %struct.mmc_host, ptr %26, i32 0, i32 47
  store ptr %52, ptr %56, align 8
  br label %72

57:                                               ; preds = %37
  %58 = getelementptr inbounds %struct.mmc_host, ptr %26, i32 0, i32 16
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.mmc_host, ptr %26, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.mmc_host_ops, ptr %64, i32 0, i32 7
  %66 = load ptr, ptr %65, align 4
  call void %66(ptr noundef %26, i32 noundef 1) #5
  br label %72

67:                                               ; preds = %50
  %68 = getelementptr inbounds %struct.mmc_host, ptr %26, i32 0, i32 47
  store ptr %52, ptr %68, align 8
  %69 = load i32, ptr %33, align 4
  %70 = add i32 %69, -1
  store i32 %70, ptr %33, align 4
  %71 = ptrtoint ptr %52 to i32
  store ptr null, ptr %6, align 8
  br label %72

72:                                               ; preds = %67, %62, %57, %54, %32
  %73 = phi i32 [ %71, %67 ], [ 0, %54 ], [ 0, %62 ], [ 0, %57 ], [ 0, %32 ]
  %74 = load ptr, ptr %0, align 8
  %75 = getelementptr inbounds %struct.mmc_card, ptr %74, i32 0, i32 32
  store ptr null, ptr %75, align 4
  %76 = load ptr, ptr %74, align 8
  %77 = getelementptr inbounds %struct.mmc_host, ptr %76, i32 0, i32 16
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %102, label %81

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.mmc_host, ptr %76, i32 0, i32 46
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %102

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.mmc_card, ptr %74, i32 0, i32 27
  %87 = load i32, ptr %86, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %99, %85
  %90 = phi i32 [ %100, %99 ], [ 0, %85 ]
  %91 = getelementptr %struct.mmc_card, ptr %74, i32 0, i32 31, i32 %90
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.sdio_func, ptr %92, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  store ptr %92, ptr %75, align 4
  br label %102

99:                                               ; preds = %94, %89
  %100 = add nuw i32 %90, 1
  %101 = icmp eq i32 %100, %87
  br i1 %101, label %102, label %89

102:                                              ; preds = %99, %98, %85, %81, %72, %13, %9, %5, %2
  %103 = phi i32 [ -22, %2 ], [ -16, %5 ], [ %11, %9 ], [ %22, %13 ], [ %73, %72 ], [ %73, %81 ], [ %73, %85 ], [ %73, %98 ], [ %73, %99 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  ret i32 %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_io_rw_direct(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdio_release_irq(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #5
  store i8 0, ptr %2, align 1, !annotation !9
  %3 = icmp eq ptr %0, null
  br i1 %3, label %88, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %72, label %8

8:                                                ; preds = %4
  store ptr null, ptr %5, align 8
  %9 = load ptr, ptr %0, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 29
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %16, !prof !10

15:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 253, i32 noundef 9, ptr noundef null) #5
  br label %16

16:                                               ; preds = %15, %8
  %17 = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 46
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %16
  %21 = add i32 %18, -1
  store i32 %21, ptr %17, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 17
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 131072
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 50
  store volatile i32 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 47
  %31 = load ptr, ptr %30, align 8
  %32 = tail call i32 @kthread_stop(ptr noundef %31) #5
  br label %43

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 16
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.mmc_host_ops, ptr %40, i32 0, i32 7
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef %10, i32 noundef 0) #5
  br label %43

43:                                               ; preds = %38, %33, %28, %20, %16
  %44 = load ptr, ptr %0, align 8
  %45 = getelementptr inbounds %struct.mmc_card, ptr %44, i32 0, i32 32
  store ptr null, ptr %45, align 4
  %46 = load ptr, ptr %44, align 8
  %47 = getelementptr inbounds %struct.mmc_host, ptr %46, i32 0, i32 16
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %72, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.mmc_host, ptr %46, i32 0, i32 46
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.mmc_card, ptr %44, i32 0, i32 27
  %57 = load i32, ptr %56, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %69, %55
  %60 = phi i32 [ %70, %69 ], [ 0, %55 ]
  %61 = getelementptr %struct.mmc_card, ptr %44, i32 0, i32 31, i32 %60
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.sdio_func, ptr %62, i32 0, i32 2
  %66 = load ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  store ptr %62, ptr %45, align 4
  br label %72

69:                                               ; preds = %64, %59
  %70 = add nuw i32 %60, 1
  %71 = icmp eq i32 %70, %57
  br i1 %71, label %72, label %59

72:                                               ; preds = %69, %68, %55, %51, %43, %4
  %73 = load ptr, ptr %0, align 8
  %74 = call i32 @mmc_io_rw_direct(ptr noundef %73, i32 noundef 0, i32 noundef 0, i32 noundef 4, i8 noundef zeroext 0, ptr noundef nonnull %2) #5
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = shl nuw i32 1, %78
  %80 = load i8, ptr %2, align 1
  %81 = trunc i32 %79 to i8
  %82 = xor i8 %81, -1
  %83 = and i8 %80, %82
  %84 = icmp ult i8 %83, 2
  %85 = select i1 %84, i8 0, i8 %83
  store i8 %85, ptr %2, align 1
  %86 = load ptr, ptr %0, align 8
  %87 = call i32 @mmc_io_rw_direct(ptr noundef %86, i32 noundef 1, i32 noundef 0, i32 noundef 4, i8 noundef zeroext %85, ptr noundef null) #5
  br label %88

88:                                               ; preds = %76, %72, %1
  %89 = phi i32 [ -22, %1 ], [ %74, %72 ], [ %87, %76 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #5
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @process_sdio_pending_irqs(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 49
  %7 = load i8, ptr %6, align 8, !range !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  store i8 0, ptr %3, align 1, !annotation !9
  %8 = getelementptr inbounds %struct.mmc_card, ptr %5, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %94

12:                                               ; preds = %1
  %13 = icmp eq i8 %7, 0
  store i8 0, ptr %6, align 8
  %14 = getelementptr inbounds %struct.mmc_card, ptr %5, i32 0, i32 32
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, i1 true, i1 %13
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.sdio_func, ptr %15, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull %15) #5
  br label %94

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %23 = load i16, ptr %22, align 8
  %24 = and i16 %23, 2
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %27, !prof !10

26:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 35, i32 noundef 9, ptr noundef null) #5
  br label %27

27:                                               ; preds = %26, %21
  %28 = call i32 @mmc_io_rw_direct(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 5, i8 noundef zeroext 0, ptr noundef nonnull %3) #5
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %94

30:                                               ; preds = %27
  %31 = load i8, ptr %3, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.mmc_card, ptr %5, i32 0, i32 6
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 2048
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #5
  store i8 0, ptr %2, align 1, !annotation !9
  %44 = call i32 @mmc_io_rw_direct(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 255, i8 noundef zeroext 0, ptr noundef nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #5
  br label %45

45:                                               ; preds = %43, %38, %33, %30
  %46 = getelementptr inbounds %struct.mmc_card, ptr %5, i32 0, i32 1, i32 3
  %47 = getelementptr inbounds %struct.mmc_card, ptr %5, i32 0, i32 1
  br label %48

48:                                               ; preds = %86, %45
  %49 = phi i32 [ 0, %45 ], [ %88, %86 ]
  %50 = phi i32 [ 0, %45 ], [ %87, %86 ]
  %51 = phi i32 [ 1, %45 ], [ %89, %86 ]
  %52 = load i8, ptr %3, align 1
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 1, %51
  %55 = and i32 %54, %53
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %86, label %57

57:                                               ; preds = %48
  %58 = add nsw i32 %51, -1
  %59 = getelementptr %struct.mmc_card, ptr %5, i32 0, i32 31, i32 %58
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load ptr, ptr %46, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load ptr, ptr %47, align 4
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi ptr [ %66, %65 ], [ %63, %62 ]
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %68) #6
  br label %86

70:                                               ; preds = %57
  %71 = getelementptr inbounds %struct.sdio_func, ptr %60, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  call void %72(ptr noundef nonnull %60) #5
  %75 = add i32 %49, 1
  br label %86

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.sdio_func, ptr %60, i32 0, i32 1, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.sdio_func, ptr %60, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  br label %83

83:                                               ; preds = %80, %76
  %84 = phi ptr [ %82, %80 ], [ %78, %76 ]
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %84) #6
  br label %86

86:                                               ; preds = %83, %74, %67, %48
  %87 = phi i32 [ %50, %74 ], [ -22, %83 ], [ -22, %67 ], [ %50, %48 ]
  %88 = phi i32 [ %75, %74 ], [ %49, %83 ], [ %49, %67 ], [ %49, %48 ]
  %89 = add nuw nsw i32 %51, 1
  %90 = icmp eq i32 %89, 8
  br i1 %90, label %91, label %48

91:                                               ; preds = %86
  %92 = icmp eq i32 %88, 0
  %93 = select i1 %92, i32 %87, i32 %88
  br label %94

94:                                               ; preds = %91, %27, %18, %1
  %95 = phi i32 [ 1, %18 ], [ 0, %1 ], [ %93, %91 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_release_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_claim_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdio_irq_thread(ptr noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #5
  tail call void @sched_set_fifo_low(ptr noundef %2) #5
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 1, i32 2147483647
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 50
  %9 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 1
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  br label %11

11:                                               ; preds = %42, %1
  %12 = phi i32 [ %7, %1 ], [ %30, %42 ]
  %13 = tail call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef %8) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @process_sdio_pending_irqs(ptr noundef %0)
  tail call void @mmc_release_host(ptr noundef %0) #5
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  store volatile i32 1, ptr %9, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  %19 = tail call zeroext i1 @kthread_should_stop() #5
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = tail call i32 @schedule_timeout(i32 noundef 100) #5
  br label %22

22:                                               ; preds = %20, %18
  store volatile i32 0, ptr %9, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  br label %23

23:                                               ; preds = %22, %15
  %24 = load i32, ptr %3, align 8
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  %27 = lshr i32 %12, 1
  %28 = icmp slt i32 %16, 1
  %29 = select i1 %28, i32 1, i32 %27
  %30 = select i1 %26, i32 %29, i32 %12
  store volatile i32 1, ptr %9, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %31 = load i32, ptr %3, align 8
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %23
  %35 = load ptr, ptr %10, align 4
  %36 = getelementptr inbounds %struct.mmc_host_ops, ptr %35, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef %0, i32 noundef 1) #5
  br label %38

38:                                               ; preds = %34, %23
  %39 = tail call zeroext i1 @kthread_should_stop() #5
  br i1 %39, label %42, label %40

40:                                               ; preds = %38
  %41 = tail call i32 @schedule_timeout(i32 noundef %30) #5
  br label %42

42:                                               ; preds = %40, %38
  store volatile i32 0, ptr %9, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  %43 = tail call zeroext i1 @kthread_should_stop() #5
  br i1 %43, label %44, label %11

44:                                               ; preds = %42, %11
  %45 = phi i32 [ %13, %11 ], [ %16, %42 ]
  %46 = load i32, ptr %3, align 8
  %47 = and i32 %46, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %10, align 4
  %51 = getelementptr inbounds %struct.mmc_host_ops, ptr %50, i32 0, i32 7
  %52 = load ptr, ptr %51, align 4
  tail call void %52(ptr noundef %0, i32 noundef 0) #5
  br label %53

53:                                               ; preds = %49, %44
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo_low(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2153124429}
!12 = !{i64 2153127267}
!13 = !{i64 2153130100}
!14 = !{i64 2153132933}
