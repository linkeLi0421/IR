; ModuleID = '/llk/IR/drivers/mmc/core/queue.c_pt.bc'
source_filename = "../drivers/mmc/core/queue.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.mmc_queue = type { ptr, %struct.mmc_ctx, %struct.blk_mq_tag_set, ptr, ptr, %struct.spinlock, [3 x i32], i32, i8, i8, i8, i8, i8, %struct.work_struct, %struct.wait_queue_head, ptr, ptr, %struct.mutex, %struct.work_struct }
%struct.mmc_ctx = type { ptr }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.35, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.36, %union.anon.37, %union.anon.38, %union.anon.43, ptr, ptr }
%union.anon.35 = type { %struct.list_head }
%union.anon.36 = type { %struct.hlist_node }
%union.anon.37 = type { %struct.rb_node }
%union.anon.38 = type { %struct.anon.42 }
%struct.anon.42 = type { i32, %struct.list_head, ptr }
%union.anon.43 = type { i64, [8 x i8] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
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
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mmc_queue_req = type { %struct.mmc_blk_request, ptr, i32, i32, ptr, i32, i32 }
%struct.mmc_blk_request = type { %struct.mmc_request, %struct.mmc_command, %struct.mmc_command, %struct.mmc_command, %struct.mmc_data }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_cqe_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@mmc_mq_ops = internal constant %struct.blk_mq_ops { ptr @mmc_mq_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmc_mq_timed_out, ptr null, ptr @mmc_blk_mq_complete, ptr null, ptr null, ptr @mmc_mq_init_request, ptr @mmc_mq_exit_request, ptr null, ptr null, ptr null, ptr null }, align 4
@mmc_init_queue.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [25 x i8] c"drivers/mmc/core/queue.c\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"merging was advertised but not possible\00", align 1
@mmc_setup_queue.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"&mq->complete_lock\00", align 1
@mmc_setup_queue.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"&mq->wait\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @mmc_cqe_check_busy(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr %struct.mmc_queue, ptr %0, i32 0, i32 6, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = and i32 %3, -2
  store i32 %11, ptr %2, align 4
  br label %12

12:                                               ; preds = %10, %6, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @mmc_issue_type(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 64
  %6 = load i8, ptr %5, align 8, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 66
  %10 = load i8, ptr %9, align 2, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = trunc i32 %14 to i8
  switch i8 %15, label %21 [
    i8 34, label %28
    i8 35, label %28
    i8 3, label %28
    i8 5, label %28
    i8 2, label %16
  ]

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 17
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %18, 24
  %20 = and i32 %19, 1
  br label %28

21:                                               ; preds = %12
  br label %28

22:                                               ; preds = %8, %2
  %23 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 254
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 2, i32 0
  br label %28

28:                                               ; preds = %22, %21, %16, %12, %12, %12, %12
  %29 = phi i32 [ %27, %22 ], [ 2, %21 ], [ %20, %16 ], [ 0, %12 ], [ 0, %12 ], [ 0, %12 ], [ 0, %12 ]
  ret i32 %29
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_cqe_recovery_notifier(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr i8, ptr %0, i32 -168
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 5
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 9
  %9 = load i8, ptr %8, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  store i8 1, ptr %8, align 1
  %12 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 13
  %13 = load ptr, ptr @system_wq, align 4
  %14 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %13, ptr noundef %12) #8
  br label %15

15:                                               ; preds = %11, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mmc_init_queue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %1, align 8
  store ptr %1, ptr %0, align 4
  %4 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 5
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(112) %5, i8 0, i32 112, i1 false)
  %6 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 2, i32 2
  store ptr @mmc_mq_ops, ptr %6, align 4
  %7 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 64
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 66
  %12 = load i8, ptr %11, align 2, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 42
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 63
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.smin.i32(i32 %16, i32 %18)
  br label %20

20:                                               ; preds = %14, %10, %2
  %21 = phi i32 [ %19, %14 ], [ 64, %10 ], [ 64, %2 ]
  %22 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 2, i32 4
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 2, i32 7
  store i32 -1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 2, i32 9
  store i32 33, ptr %24, align 4
  %25 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 2, i32 3
  store i32 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 2, i32 6
  store i32 292, ptr %26, align 4
  %27 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 2, i32 10
  store ptr %0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 17
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 67108864
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 21
  %34 = load i16, ptr %33, align 4
  %35 = icmp ult i16 %34, 512
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load ptr, ptr %3, align 64
  %38 = tail call i32 @dma_get_merge_boundary(ptr noundef %37) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 29
  %42 = load i16, ptr %41, align 8
  %43 = or i16 %42, 256
  store i16 %43, ptr %41, align 8
  br label %48

44:                                               ; preds = %36, %32, %20
  %45 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 29
  %46 = load i16, ptr %45, align 8
  %47 = and i16 %46, -257
  store i16 %47, ptr %45, align 8
  br label %48

48:                                               ; preds = %44, %40
  %49 = tail call i32 @blk_mq_alloc_tag_set(ptr noundef %5) #8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = inttoptr i32 %49 to ptr
  br label %171

53:                                               ; preds = %48
  %54 = tail call ptr @__blk_mq_alloc_disk(ptr noundef %5, ptr noundef %0, ptr noundef nonnull @mmc_init_queue.__key) #8
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  tail call void @blk_mq_free_tag_set(ptr noundef %5) #8
  br label %171

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.gendisk, ptr %54, i32 0, i32 9
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 4
  store ptr %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 29
  %67 = load i16, ptr %66, align 8
  %68 = and i16 %67, 1
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  tail call void @blk_queue_flag_set(i32 noundef 15, ptr noundef %59) #8
  %71 = load ptr, ptr %60, align 4
  br label %72

72:                                               ; preds = %70, %65, %57
  %73 = phi ptr [ %71, %70 ], [ %59, %65 ], [ %59, %57 ]
  tail call void @blk_queue_rq_timeout(ptr noundef %73, i32 noundef 6000) #8
  %74 = load ptr, ptr %1, align 8
  %75 = load ptr, ptr %60, align 4
  tail call void @blk_queue_flag_set(i32 noundef 6, ptr noundef %75) #8
  %76 = load ptr, ptr %60, align 4
  tail call void @blk_queue_flag_clear(i32 noundef 10, ptr noundef %76) #8
  %77 = tail call i32 @mmc_can_erase(ptr noundef %1) #8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %72
  %80 = load ptr, ptr %60, align 4
  %81 = tail call i32 @mmc_calc_max_discard(ptr noundef %1) #8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %79
  tail call void @blk_queue_flag_set(i32 noundef 8, ptr noundef %80) #8
  tail call void @blk_queue_max_discard_sectors(ptr noundef %80, i32 noundef %81) #8
  %84 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 11
  %85 = load i32, ptr %84, align 4
  %86 = shl i32 %85, 9
  %87 = getelementptr inbounds %struct.request_queue, ptr %80, i32 0, i32 32, i32 18
  store i32 %86, ptr %87, align 4
  %88 = load i32, ptr %84, align 4
  %89 = icmp ugt i32 %88, %81
  %90 = select i1 %89, i32 512, i32 %86
  store i32 %90, ptr %87, align 4
  %91 = tail call i32 @mmc_can_secure_erase_trim(ptr noundef %1) #8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %83
  tail call void @blk_queue_flag_set(i32 noundef 11, ptr noundef %80) #8
  br label %94

94:                                               ; preds = %93, %83, %79, %72
  %95 = load ptr, ptr %74, align 64
  %96 = getelementptr inbounds %struct.device, ptr %95, i32 0, i32 16
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i64, ptr %97, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99, %94
  %103 = load ptr, ptr %60, align 4
  tail call void @blk_queue_bounce_limit(ptr noundef %103, i32 noundef 1) #8
  br label %104

104:                                              ; preds = %102, %99
  %105 = load ptr, ptr %60, align 4
  %106 = getelementptr inbounds %struct.mmc_host, ptr %74, i32 0, i32 25
  %107 = load i32, ptr %106, align 8
  %108 = getelementptr inbounds %struct.mmc_host, ptr %74, i32 0, i32 23
  %109 = load i32, ptr %108, align 16
  %110 = lshr i32 %109, 9
  %111 = tail call i32 @llvm.umin.i32(i32 %107, i32 %110) #8
  tail call void @blk_queue_max_hw_sectors(ptr noundef %105, i32 noundef %111) #8
  %112 = getelementptr inbounds %struct.mmc_host, ptr %74, i32 0, i32 29
  %113 = load i16, ptr %112, align 8
  %114 = and i16 %113, 256
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %104
  %117 = load ptr, ptr %60, align 4
  %118 = load ptr, ptr %74, align 64
  %119 = tail call zeroext i1 @blk_queue_can_use_dma_map_merging(ptr noundef %117, ptr noundef %118) #8
  br i1 %119, label %121, label %120, !prof !9

120:                                              ; preds = %116
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 364, i32 noundef 9, ptr noundef nonnull @.str.1) #8
  br label %121

121:                                              ; preds = %120, %116, %104
  %122 = load ptr, ptr %60, align 4
  %123 = load i16, ptr %112, align 8
  %124 = and i16 %123, 256
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.mmc_host, ptr %74, i32 0, i32 21
  %128 = load i16, ptr %127, align 4
  br label %129

129:                                              ; preds = %126, %121
  %130 = phi i16 [ %128, %126 ], [ 512, %121 ]
  tail call void @blk_queue_max_segments(ptr noundef %122, i16 noundef zeroext %130) #8
  %131 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 4
  %132 = load i32, ptr %131, align 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 35
  %136 = load i32, ptr %135, align 4
  switch i32 %136, label %137 [
    i32 0, label %139
    i32 4096, label %138
    i32 512, label %138
  ]

137:                                              ; preds = %134
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 369, i32 noundef 9, ptr noundef null) #8
  br label %139

138:                                              ; preds = %134, %134
  br label %139

139:                                              ; preds = %138, %137, %134, %129
  %140 = phi i32 [ 512, %134 ], [ 512, %129 ], [ %136, %137 ], [ %136, %138 ]
  %141 = load ptr, ptr %60, align 4
  tail call void @blk_queue_logical_block_size(ptr noundef %141, i32 noundef %140) #8
  %142 = load i16, ptr %112, align 8
  %143 = and i16 %142, 256
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %139
  %146 = load ptr, ptr %60, align 4
  %147 = getelementptr inbounds %struct.mmc_host, ptr %74, i32 0, i32 20
  %148 = load i32, ptr %147, align 8
  %149 = sub i32 0, %140
  %150 = and i32 %148, %149
  tail call void @blk_queue_max_segment_size(ptr noundef %146, i32 noundef %150) #8
  br label %151

151:                                              ; preds = %145, %139
  %152 = load ptr, ptr %74, align 64
  %153 = getelementptr inbounds %struct.device, ptr %152, i32 0, i32 20
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %151
  %157 = load ptr, ptr %60, align 4
  %158 = getelementptr inbounds %struct.request_queue, ptr %157, i32 0, i32 32, i32 7
  %159 = load i32, ptr %158, align 4
  store i32 %159, ptr %154, align 4
  br label %160

160:                                              ; preds = %156, %151
  %161 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 13
  store i32 -32, ptr %161, align 4
  %162 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 13, i32 1
  store volatile ptr %162, ptr %162, align 4
  %163 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 13, i32 1, i32 1
  store ptr %162, ptr %163, align 4
  %164 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 13, i32 2
  store ptr @mmc_mq_recovery_handler, ptr %164, align 4
  %165 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 18
  store i32 -32, ptr %165, align 4
  %166 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 18, i32 1
  store volatile ptr %166, ptr %166, align 4
  %167 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 18, i32 1, i32 1
  store ptr %166, ptr %167, align 4
  %168 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 18, i32 2
  store ptr @mmc_blk_mq_complete_work, ptr %168, align 4
  %169 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %169, ptr noundef nonnull @.str.2, ptr noundef nonnull @mmc_setup_queue.__key) #8
  %170 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 14
  tail call void @__init_waitqueue_head(ptr noundef %170, ptr noundef nonnull @.str.4, ptr noundef nonnull @mmc_setup_queue.__key.3) #8
  br label %171

171:                                              ; preds = %160, %56, %51
  %172 = phi ptr [ %52, %51 ], [ %54, %56 ], [ %54, %160 ]
  ret ptr %172
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_merge_boundary(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_mq_alloc_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_rq_timeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_queue_suspend(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @blk_mq_quiesce_queue(ptr noundef %3) #8
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @__mmc_claim_host(ptr noundef %5, ptr noundef null, ptr noundef null) #8
  %7 = load ptr, ptr %0, align 4
  %8 = load ptr, ptr %7, align 8
  tail call void @mmc_release_host(ptr noundef %8) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_quiesce_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_release_host(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_queue_resume(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @blk_mq_unquiesce_queue(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unquiesce_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_cleanup_queue(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 11
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 16777216
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @blk_mq_unquiesce_queue(ptr noundef %3) #8
  br label %9

9:                                                ; preds = %8, %1
  tail call void @blk_cleanup_queue(ptr noundef %3) #8
  %10 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 2
  tail call void @blk_mq_free_tag_set(ptr noundef %10) #8
  %11 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 18
  %12 = tail call zeroext i1 @flush_work(ptr noundef %11) #8
  store ptr null, ptr %0, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_queue_map_sg(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca ptr, align 4
  %4 = getelementptr i8, ptr %1, i32 -168
  %5 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mmc_queue_req, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4
  %9 = call i32 @__blk_rq_map_sg(ptr noundef %6, ptr noundef %4, ptr noundef %8, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @mmc_mq_queue_rq(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load ptr, ptr %1, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %7, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mmc_card, ptr %7, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = or i32 %17, 2048
  store i32 %18, ptr %16, align 8
  br label %123

19:                                               ; preds = %10, %2
  %20 = tail call i32 @mmc_issue_type(ptr noundef %6, ptr noundef %3)
  %21 = getelementptr inbounds %struct.mmc_queue, ptr %6, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %21) #8
  %22 = getelementptr inbounds %struct.mmc_queue, ptr %6, i32 0, i32 9
  %23 = load i8, ptr %22, align 1, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.mmc_queue, ptr %6, i32 0, i32 8
  %27 = load i8, ptr %26, align 4, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %30 = load i16, ptr %21, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %123

32:                                               ; preds = %25
  switch i32 %20, label %54 [
    i32 1, label %33
    i32 2, label %43
  ]

33:                                               ; preds = %32
  %34 = getelementptr %struct.mmc_queue, ptr %6, i32 0, i32 6, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.mmc_queue, ptr %6, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %39, 1
  store i32 %40, ptr %38, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %41 = load i16, ptr %21, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %123

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 66
  %45 = load i8, ptr %44, align 2, !range !8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = getelementptr %struct.mmc_queue, ptr %6, i32 0, i32 6, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = icmp sgt i32 %49, 2
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %52 = load i16, ptr %21, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %123

54:                                               ; preds = %32
  %55 = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 7
  store i32 60000, ptr %55, align 4
  br label %56

56:                                               ; preds = %54, %47, %43, %33
  store i8 1, ptr %26, align 4
  %57 = getelementptr %struct.mmc_queue, ptr %6, i32 0, i32 6, i32 %20
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 4
  %60 = getelementptr inbounds %struct.mmc_queue, ptr %6, i32 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr %struct.mmc_queue, ptr %6, i32 0, i32 6, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr %struct.mmc_queue, ptr %6, i32 0, i32 6, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, %63
  %67 = add i32 %66, %61
  %68 = icmp eq i32 %67, 1
  %69 = icmp ne i32 %66, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %70 = load i16, ptr %21, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %72 = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 4
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 128
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %56
  %77 = getelementptr %struct.request, ptr %3, i32 2, i32 24, i32 0, i32 1
  store i32 0, ptr %77, align 4
  %78 = or i32 %73, 128
  store i32 %78, ptr %72, align 8
  br label %79

79:                                               ; preds = %76, %56
  br i1 %68, label %80, label %82

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.mmc_queue, ptr %6, i32 0, i32 1
  tail call void @mmc_get_card(ptr noundef %7, ptr noundef %81) #8
  br label %82

82:                                               ; preds = %80, %79
  %83 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 64
  %84 = load i8, ptr %83, align 8, !range !8
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %102, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 32
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i1 true, i1 %69
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 33
  %93 = load i32, ptr %92, align 8
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i16 32, i16 0
  br label %96

96:                                               ; preds = %91, %86
  %97 = phi i16 [ 0, %86 ], [ %95, %91 ]
  %98 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 29
  %99 = load i16, ptr %98, align 8
  %100 = and i16 %99, -33
  %101 = or i16 %100, %97
  store i16 %101, ptr %98, align 8
  br label %102

102:                                              ; preds = %96, %82
  tail call void @blk_mq_start_request(ptr noundef %3) #8
  %103 = tail call i32 @mmc_blk_mq_issue_rq(ptr noundef %6, ptr noundef %3) #8
  %104 = icmp eq i32 %103, 2
  %105 = select i1 %104, i8 10, i8 0
  %106 = icmp eq i32 %103, 1
  %107 = select i1 %106, i8 9, i8 %105
  %108 = icmp eq i32 %103, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %102
  tail call void @_raw_spin_lock_irq(ptr noundef %21) #8
  %110 = load i32, ptr %57, align 4
  %111 = add i32 %110, -1
  store i32 %111, ptr %57, align 4
  %112 = load i32, ptr %60, align 4
  %113 = load i32, ptr %62, align 4
  %114 = add i32 %113, %112
  %115 = load i32, ptr %64, align 4
  %116 = sub i32 0, %115
  %117 = icmp eq i32 %114, %116
  store i8 0, ptr %26, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %118 = load i16, ptr %21, align 4
  %119 = add i16 %118, 1
  store i16 %119, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br i1 %117, label %120, label %123

120:                                              ; preds = %109
  %121 = getelementptr inbounds %struct.mmc_queue, ptr %6, i32 0, i32 1
  tail call void @mmc_put_card(ptr noundef %7, ptr noundef %121) #8
  br label %123

122:                                              ; preds = %102
  store volatile i8 0, ptr %26, align 4
  br label %123

123:                                              ; preds = %122, %120, %109, %51, %37, %29, %15
  %124 = phi i8 [ 10, %15 ], [ 9, %29 ], [ 9, %51 ], [ 9, %37 ], [ %107, %109 ], [ %107, %120 ], [ %107, %122 ]
  ret i8 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_mq_timed_out(ptr noundef %0, i1 noundef zeroext %1) #3 {
  %3 = alloca i8, align 1
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.mmc_queue, ptr %6, i32 0, i32 5
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #8
  %11 = getelementptr inbounds %struct.mmc_queue, ptr %6, i32 0, i32 9
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %58

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 64
  %16 = load i8, ptr %15, align 8, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %57, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 66
  %20 = load i8, ptr %19, align 2, !range !8
  %21 = icmp eq i8 %20, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #8
  br i1 %21, label %22, label %59

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds %struct.request_queue, ptr %23, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 @mmc_issue_type(ptr noundef %25, ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1
  %29 = add i32 %28, -1
  %30 = icmp ult i32 %29, 2
  br i1 %30, label %31, label %55

31:                                               ; preds = %22
  %32 = getelementptr %struct.request, ptr %0, i32 1
  %33 = getelementptr inbounds %struct.mmc_host, ptr %27, i32 0, i32 61
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.mmc_cqe_ops, ptr %34, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = call zeroext i1 %36(ptr noundef %27, ptr noundef %32, ptr noundef nonnull %3) #8
  br i1 %37, label %38, label %55

38:                                               ; preds = %31
  %39 = load i8, ptr %3, align 1, !range !8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %0, align 8
  %43 = getelementptr inbounds %struct.request_queue, ptr %42, i32 0, i32 10
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.mmc_queue, ptr %44, i32 0, i32 5
  %46 = call i32 @_raw_spin_lock_irqsave(ptr noundef %45) #8
  %47 = getelementptr inbounds %struct.mmc_queue, ptr %44, i32 0, i32 9
  %48 = load i8, ptr %47, align 1, !range !8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  store i8 1, ptr %47, align 1
  %51 = getelementptr inbounds %struct.mmc_queue, ptr %44, i32 0, i32 13
  %52 = load ptr, ptr @system_wq, align 4
  %53 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %52, ptr noundef %51) #8
  br label %54

54:                                               ; preds = %50, %41
  call void @_raw_spin_unlock_irqrestore(ptr noundef %45, i32 noundef %46) #8
  br label %55

55:                                               ; preds = %54, %38, %31, %22
  %56 = phi i32 [ 1, %54 ], [ 1, %38 ], [ 0, %31 ], [ 1, %22 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  br label %59

57:                                               ; preds = %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #8
  br label %59

58:                                               ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #8
  br label %59

59:                                               ; preds = %58, %57, %55, %18
  %60 = phi i32 [ %56, %55 ], [ 1, %18 ], [ 1, %57 ], [ 1, %58 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_blk_mq_complete(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_mq_init_request(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #3 {
  %5 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 29
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, 256
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 21
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  br label %17

17:                                               ; preds = %13, %4
  %18 = phi i32 [ %16, %13 ], [ 512, %4 ]
  %19 = mul nuw nsw i32 %18, 20
  %20 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %19, i32 noundef 3264) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void @sg_init_table(ptr noundef nonnull %20, i32 noundef %18) #8
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi ptr [ %20, %22 ], [ null, %17 ]
  %25 = getelementptr %struct.request, ptr %1, i32 2, i32 21
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  %27 = select i1 %26, i32 -12, i32 0
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_mq_exit_request(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr %struct.request, ptr %1, i32 2, i32 21
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #8
  store ptr null, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_get_card(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_blk_mq_issue_rq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_put_card(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_can_erase(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_bounce_limit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_queue_can_use_dma_map_merging(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segments(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_logical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segment_size(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_mq_recovery_handler(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -156
  %3 = getelementptr i8, ptr %0, i32 -32
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %0, i32 -152
  tail call void @mmc_get_card(ptr noundef %5, ptr noundef %7) #8
  %8 = getelementptr i8, ptr %0, i32 -6
  store i8 1, ptr %8, align 2
  %9 = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 64
  %10 = load i8, ptr %9, align 8, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 66
  %14 = load i8, ptr %13, align 2, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @mmc_blk_cqe_recovery(ptr noundef %2) #8
  br label %18

17:                                               ; preds = %12, %1
  tail call void @mmc_blk_mq_recovery(ptr noundef %2) #8
  br label %18

18:                                               ; preds = %17, %16
  store i8 0, ptr %8, align 2
  %19 = getelementptr i8, ptr %0, i32 -28
  tail call void @_raw_spin_lock_irq(ptr noundef %19) #8
  %20 = getelementptr i8, ptr %0, i32 -7
  store i8 0, ptr %20, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %21 = load i16, ptr %19, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %23 = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 66
  %24 = load i8, ptr %23, align 2, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 61
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.mmc_cqe_ops, ptr %28, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  tail call void %30(ptr noundef %6) #8
  br label %31

31:                                               ; preds = %26, %18
  %32 = load ptr, ptr %2, align 4
  tail call void @mmc_put_card(ptr noundef %32, ptr noundef %7) #8
  tail call void @blk_mq_run_hw_queues(ptr noundef %4, i1 noundef zeroext true) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_blk_mq_complete_work(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_calc_max_discard(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_discard_sectors(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_can_secure_erase_trim(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_blk_cqe_recovery(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_blk_mq_recovery(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_run_hw_queues(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_claim_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_rq_map_sg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148935562}
!11 = !{i64 2148931386}
!12 = !{i64 2148931461, i64 2148931488, i64 2148931535, i64 2148931557, i64 2148931585, i64 2148931605}
!13 = !{i64 672881}
!14 = !{i64 2148959706}
