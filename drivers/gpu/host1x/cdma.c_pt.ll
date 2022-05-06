; ModuleID = '/llk/IR/drivers/gpu/host1x/cdma.c_pt.bc'
source_filename = "../drivers/gpu/host1x/cdma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.host1x_cdma = type { %struct.mutex, %struct.completion, i32, i32, i32, i32, i32, %struct.push_buffer, %struct.list_head, %struct.buffer_timeout, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.push_buffer = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.buffer_timeout = type { %struct.delayed_work, i8, ptr, i32, i64, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.host1x_job = type { %struct.kref, %struct.list_head, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, ptr, ptr, i8 }
%struct.host1x = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x %struct.reset_control_bulk_data], i32, ptr, ptr, %struct.iova_domain, i32, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.host1x_channel_list, ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.device_dma_parameters, %struct.host1x_bo_cache }
%struct.reset_control_bulk_data = type { ptr, ptr }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.rb_root = type { ptr }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.host1x_channel_list = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.host1x_cdma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.host1x_syncpt = type { %struct.kref, i32, %struct.atomic_t, %struct.atomic_t, i32, ptr, i8, ptr, ptr, %struct.host1x_syncpt_intr, i8 }
%struct.host1x_syncpt_intr = type { %struct.spinlock, %struct.list_head, [12 x i8], %struct.work_struct }
%struct.host1x_channel = type { %struct.kref, i32, %struct.mutex, ptr, ptr, ptr, %struct.host1x_cdma }

@.str = private unnamed_addr constant [26 x i8] c"drivers/gpu/host1x/cdma.c\00", align 1
@host1x_cdma_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&cdma->lock\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"\014%s: CDMA still running\0A\00", align 1
@__func__.host1x_cdma_deinit = private unnamed_addr constant [19 x i8] c"host1x_cdma_deinit\00", align 1
@host1x_debug_trace_cmdbuf = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_host1x_wait_cdma = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@__tracepoint_host1x_cdma_begin = external dso_local global %struct.tracepoint, align 4
@__tracepoint_host1x_cdma_push = external dso_local global %struct.tracepoint, align 4
@__tracepoint_host1x_cdma_push_wide = external dso_local global %struct.tracepoint, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_host1x_cdma_end = external dso_local global %struct.tracepoint, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @host1x_cdma_wait_locked(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 3
  %4 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 4
  %5 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 5
  %6 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 8
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 2
  %9 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 1
  %10 = add i32 %1, -1
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = icmp eq i32 %1, 1
  br label %14

14:                                               ; preds = %63, %12
  br i1 %13, label %15, label %19

15:                                               ; preds = %14
  %16 = load volatile ptr, ptr %6, align 4
  %17 = icmp eq ptr %16, %6
  %18 = zext i1 %17 to i32
  br label %31

19:                                               ; preds = %14
  %20 = load i32, ptr %3, align 4
  %21 = load i32, ptr %4, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, ptr %5, align 4
  %25 = add i32 %24, %20
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i32 [ %25, %23 ], [ %20, %19 ]
  %28 = sub i32 %27, %21
  %29 = lshr i32 %28, 3
  br label %31

30:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 9, ptr noundef null) #5
  br label %64

31:                                               ; preds = %26, %15
  %32 = phi i32 [ %29, %26 ], [ %18, %15 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %31
  %35 = load ptr, ptr %7, align 4
  %36 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load ptr, ptr %35, align 4
  br label %41

41:                                               ; preds = %39, %34
  %42 = phi ptr [ %40, %39 ], [ %37, %34 ]
  %43 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_wait_cdma, i32 0, i32 1), align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = tail call ptr @llvm.thread.pointer() #5
  %47 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = lshr i32 %48, 5
  %50 = getelementptr i32, ptr @__cpu_online_mask, i32 %49
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %48, 31
  %53 = shl nuw i32 1, %52
  %54 = and i32 %53, %51
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %45
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !8
  %57 = tail call i32 @__traceiter_host1x_wait_cdma(ptr noundef null, ptr noundef %42, i32 noundef %1) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !9
  br label %58

58:                                               ; preds = %56, %45, %41
  %59 = load i32, ptr %8, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  tail call void @mutex_unlock(ptr noundef %0) #5
  tail call void @schedule() #5
  br label %63

62:                                               ; preds = %58
  store i32 %1, ptr %8, align 4
  tail call void @mutex_unlock(ptr noundef %0) #5
  tail call void @wait_for_completion(ptr noundef %9) #5
  br label %63

63:                                               ; preds = %62, %61
  tail call void @mutex_lock(ptr noundef %0) #5
  br label %14

64:                                               ; preds = %31, %30
  %65 = phi i32 [ -22, %30 ], [ %32, %31 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_cdma_update_sync_queue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 9, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @host1x_syncpt_load(ptr noundef %10) #5
  %12 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %15, label %18

15:                                               ; preds = %36, %2
  %16 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  br label %96

18:                                               ; preds = %36, %2
  %19 = phi ptr [ %37, %36 ], [ %13, %2 ]
  %20 = getelementptr i8, ptr %19, i32 -4
  %21 = getelementptr i8, ptr %19, i32 60
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, %11
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = getelementptr i8, ptr %19, i32 60
  %26 = load ptr, ptr %19, align 4
  %27 = icmp eq ptr %26, %12
  %28 = getelementptr i8, ptr %26, i32 -4
  %29 = select i1 %27, ptr null, ptr %28
  %30 = icmp eq ptr %29, null
  %31 = getelementptr inbounds %struct.host1x_job, ptr %29, i32 0, i32 19
  %32 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 6
  %33 = select i1 %30, ptr %32, ptr %31
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq ptr %20, null
  br i1 %35, label %96, label %39

36:                                               ; preds = %18
  tail call void @host1x_job_dump(ptr noundef %1, ptr noundef %20) #5
  %37 = load ptr, ptr %19, align 4
  %38 = icmp eq ptr %37, %12
  br i1 %38, label %15, label %18

39:                                               ; preds = %24
  %40 = getelementptr i8, ptr %19, i32 109
  %41 = load i8, ptr %40, align 1, !range !10
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %19, i32 68
  store i32 0, ptr %44, align 4
  %45 = sub i32 %22, %11
  tail call void @host1x_job_dump(ptr noundef %1, ptr noundef nonnull %20) #5
  %46 = getelementptr i8, ptr %19, i32 76
  %47 = load i32, ptr %46, align 4
  %48 = load i32, ptr %25, align 4
  %49 = getelementptr i8, ptr %19, i32 80
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.host1x, ptr %8, i32 0, i32 18
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.host1x_cdma_ops, ptr %52, i32 0, i32 7
  %54 = load ptr, ptr %53, align 4
  tail call void %54(ptr noundef %0, i32 noundef %47, i32 noundef %45, i32 noundef %48, i32 noundef %50) #5
  br label %96

55:                                               ; preds = %39
  tail call void @host1x_job_dump(ptr noundef %1, ptr noundef nonnull %20) #5
  %56 = getelementptr i8, ptr %19, i32 52
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.host1x_syncpt, ptr %57, i32 0, i32 10
  store i8 1, ptr %58, align 4
  %59 = getelementptr i8, ptr %19, i32 72
  store i8 1, ptr %59, align 4
  %60 = load ptr, ptr %19, align 4
  %61 = icmp eq ptr %60, %12
  br i1 %61, label %95, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7
  br label %64

64:                                               ; preds = %92, %62
  %65 = phi ptr [ %60, %62 ], [ %93, %92 ]
  %66 = getelementptr i8, ptr %65, i32 52
  %67 = load ptr, ptr %66, align 4
  %68 = load ptr, ptr %56, align 4
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %64
  %71 = getelementptr i8, ptr %65, i32 80
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %70
  %75 = getelementptr i8, ptr %65, i32 76
  br label %76

76:                                               ; preds = %76, %74
  %77 = phi i32 [ 0, %74 ], [ %87, %76 ]
  %78 = load i32, ptr %75, align 4
  %79 = lshr i32 %78, 3
  %80 = add i32 %79, %77
  %81 = urem i32 %80, 511
  %82 = load ptr, ptr %63, align 8
  %83 = shl nuw nsw i32 %81, 1
  %84 = getelementptr i32, ptr %82, i32 %83
  store i32 464322560, ptr %84, align 4
  %85 = or i32 %83, 1
  %86 = getelementptr i32, ptr %82, i32 %85
  store i32 464322560, ptr %86, align 4
  %87 = add nuw i32 %77, 1
  %88 = load i32, ptr %71, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %76, label %90

90:                                               ; preds = %76, %70
  %91 = getelementptr i8, ptr %65, i32 72
  store i8 1, ptr %91, align 4
  br label %92

92:                                               ; preds = %90, %64
  %93 = load ptr, ptr %65, align 4
  %94 = icmp eq ptr %93, %12
  br i1 %94, label %95, label %64

95:                                               ; preds = %92, %55
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call fastcc void @update_cdma_locked(ptr noundef %0)
  br label %96

96:                                               ; preds = %95, %43, %24, %15
  %97 = phi i32 [ %17, %15 ], [ %34, %43 ], [ %34, %95 ], [ %34, %24 ]
  %98 = getelementptr inbounds %struct.host1x, ptr %8, i32 0, i32 18
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.host1x_cdma_ops, ptr %99, i32 0, i32 6
  %101 = load ptr, ptr %100, align 4
  tail call void %101(ptr noundef %0, i32 noundef %97) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_load(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_job_dump(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @update_cdma_locked(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %80, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 9, i32 5
  %7 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 9
  %8 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 3
  %9 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 5
  %10 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 2
  br label %11

11:                                               ; preds = %68, %5
  %12 = phi i1 [ false, %5 ], [ %69, %68 ]
  %13 = phi ptr [ %3, %5 ], [ %15, %68 ]
  %14 = getelementptr i8, ptr %13, i32 -4
  %15 = load ptr, ptr %13, align 4
  %16 = getelementptr i8, ptr %13, i32 52
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %13, i32 60
  %19 = load i32, ptr %18, align 4
  %20 = tail call zeroext i1 @host1x_syncpt_is_expired(ptr noundef %17, i32 noundef %19) #5
  br i1 %20, label %47, label %21

21:                                               ; preds = %11
  %22 = getelementptr i8, ptr %13, i32 72
  %23 = load i8, ptr %22, align 4, !range !10
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %13, i32 52
  %27 = getelementptr i8, ptr %13, i32 60
  %28 = getelementptr i8, ptr %13, i32 68
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %75, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %6, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %75

34:                                               ; preds = %31
  %35 = getelementptr i8, ptr %13, i32 12
  %36 = load ptr, ptr %35, align 4
  store ptr %36, ptr %6, align 8
  %37 = load ptr, ptr %26, align 4
  %38 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 9, i32 2
  store ptr %37, ptr %38, align 8
  %39 = load i32, ptr %27, align 4
  %40 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 9, i32 3
  store i32 %39, ptr %40, align 4
  %41 = tail call i64 @ktime_get() #5
  %42 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 9, i32 4
  store i64 %41, ptr %42, align 8
  %43 = load i32, ptr %28, align 4
  %44 = tail call i32 @__msecs_to_jiffies(i32 noundef %43) #5
  %45 = load ptr, ptr @system_wq, align 4
  %46 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %45, ptr noundef %7, i32 noundef %44) #5
  br label %75

47:                                               ; preds = %21, %11
  %48 = load ptr, ptr %6, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %7) #5
  store ptr null, ptr %6, align 8
  br label %52

52:                                               ; preds = %50, %47
  tail call void @host1x_job_unpin(ptr noundef %14) #5
  %53 = getelementptr i8, ptr %13, i32 80
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %52
  %57 = shl i32 %54, 3
  %58 = load i32, ptr %8, align 4
  %59 = add i32 %58, %57
  store i32 %59, ptr %8, align 4
  %60 = load i32, ptr %9, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = sub i32 %59, %60
  store i32 %63, ptr %8, align 4
  br label %64

64:                                               ; preds = %62, %56
  %65 = load i32, ptr %10, align 4
  %66 = icmp eq i32 %65, 2
  %67 = select i1 %66, i1 true, i1 %12
  br label %68

68:                                               ; preds = %64, %52
  %69 = phi i1 [ %67, %64 ], [ %12, %52 ]
  %70 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %13, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %71, ptr %73, align 4
  store volatile ptr %72, ptr %71, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %70, align 4
  tail call void @host1x_job_put(ptr noundef %14) #5
  %74 = icmp eq ptr %15, %2
  br i1 %74, label %75, label %11

75:                                               ; preds = %68, %34, %31, %25
  %76 = phi i1 [ %12, %34 ], [ %12, %31 ], [ %12, %25 ], [ %69, %68 ]
  %77 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %84, label %90

80:                                               ; preds = %1
  %81 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %94

84:                                               ; preds = %80, %75
  %85 = phi ptr [ %81, %80 ], [ %77, %75 ]
  %86 = phi i1 [ false, %80 ], [ %76, %75 ]
  %87 = load volatile ptr, ptr %2, align 4
  %88 = icmp eq ptr %87, %2
  %89 = select i1 %88, i1 true, i1 %86
  br i1 %89, label %91, label %94

90:                                               ; preds = %75
  br i1 %76, label %91, label %94

91:                                               ; preds = %90, %84
  %92 = phi ptr [ %85, %84 ], [ %77, %90 ]
  store i32 0, ptr %92, align 4
  %93 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 1
  tail call void @complete(ptr noundef %93) #5
  br label %94

94:                                               ; preds = %91, %90, %84, %80
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @host1x_cdma_init(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @__mutex_init(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @host1x_cdma_init.__key) #5
  %2 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 1
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #5
  %4 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 8
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 8, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 2
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 10
  store i8 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 11
  store i8 0, ptr %8, align 1
  %9 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7
  %10 = getelementptr i8, ptr %9, i32 -60
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  store ptr null, ptr %9, align 4
  %16 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 2
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 5
  store i32 4088, ptr %17, align 4
  %18 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 3
  store i32 4080, ptr %18, align 4
  %19 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 4
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.host1x, ptr %15, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %54, label %23

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.host1x, ptr %15, i32 0, i32 11
  %25 = getelementptr inbounds %struct.host1x, ptr %15, i32 0, i32 11, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 4091
  %28 = sub i32 0, %26
  %29 = and i32 %27, %28
  %30 = getelementptr inbounds %struct.host1x, ptr %15, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = tail call ptr @dma_alloc_attrs(ptr noundef %31, i32 noundef %29, ptr noundef %16, i32 noundef 3264, i32 noundef 4) #5
  store ptr %32, ptr %9, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %74, label %34

34:                                               ; preds = %23
  %35 = load i32, ptr %25, align 4
  %36 = tail call i32 @llvm.cttz.i32(i32 %35, i1 false) #5, !range !12
  %37 = lshr i32 %29, %36
  %38 = getelementptr inbounds %struct.host1x, ptr %15, i32 0, i32 12
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, %36
  %41 = tail call ptr @alloc_iova(ptr noundef %24, i32 noundef %37, i32 noundef %40, i1 noundef zeroext true) #5
  %42 = icmp eq ptr %41, null
  br i1 %42, label %69, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.iova, ptr %41, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = load i32, ptr %25, align 4
  %47 = tail call i32 @llvm.cttz.i32(i32 %46, i1 false) #5, !range !12
  %48 = shl i32 %45, %47
  %49 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 1
  store i32 %48, ptr %49, align 4
  %50 = load ptr, ptr %20, align 4
  %51 = load i32, ptr %16, align 4
  %52 = tail call i32 @iommu_map(ptr noundef %50, i32 noundef %48, i32 noundef %51, i32 noundef %29, i32 noundef 1) #5
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %62, label %68

54:                                               ; preds = %1
  %55 = getelementptr inbounds %struct.host1x, ptr %15, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = tail call ptr @dma_alloc_attrs(ptr noundef %56, i32 noundef 4092, ptr noundef %16, i32 noundef 3264, i32 noundef 4) #5
  store ptr %57, ptr %9, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %74, label %59

59:                                               ; preds = %54
  %60 = load i32, ptr %16, align 4
  %61 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 1
  store i32 %60, ptr %61, align 4
  br label %62

62:                                               ; preds = %59, %43
  %63 = phi i32 [ 4092, %59 ], [ %29, %43 ]
  %64 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 6
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.host1x, ptr %15, i32 0, i32 19
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %66, align 4
  tail call void %67(ptr noundef %9) #5
  br label %74

68:                                               ; preds = %43
  tail call void @__free_iova(ptr noundef %24, ptr noundef nonnull %41) #5
  br label %69

69:                                               ; preds = %68, %34
  %70 = phi i32 [ %52, %68 ], [ -12, %34 ]
  %71 = load ptr, ptr %30, align 4
  %72 = load ptr, ptr %9, align 4
  %73 = load i32, ptr %16, align 4
  tail call void @dma_free_attrs(ptr noundef %71, i32 noundef %29, ptr noundef %72, i32 noundef %73, i32 noundef 4) #5
  br label %74

74:                                               ; preds = %69, %62, %54, %23
  %75 = phi i32 [ %70, %69 ], [ 0, %62 ], [ -12, %54 ], [ -12, %23 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @host1x_cdma_deinit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 10
  %9 = load i8, ptr %8, align 8, !range !10
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.host1x_cdma_deinit) #6
  br label %47

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %42, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.host1x, ptr %7, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @iommu_unmap(ptr noundef nonnull %19, i32 noundef %23, i32 noundef %25) #5
  %27 = getelementptr inbounds %struct.host1x, ptr %7, i32 0, i32 11
  %28 = load i32, ptr %22, align 4
  %29 = getelementptr inbounds %struct.host1x, ptr %7, i32 0, i32 11, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @llvm.cttz.i32(i32 %30, i1 false) #5, !range !12
  %32 = lshr i32 %28, %31
  tail call void @free_iova(ptr noundef %27, i32 noundef %32) #5
  %33 = load ptr, ptr %14, align 4
  br label %34

34:                                               ; preds = %21, %17
  %35 = phi ptr [ %33, %21 ], [ %15, %17 ]
  %36 = getelementptr inbounds %struct.host1x, ptr %7, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 2
  %41 = load i32, ptr %40, align 4
  tail call void @dma_free_attrs(ptr noundef %37, i32 noundef %39, ptr noundef %35, i32 noundef %41, i32 noundef 4) #5
  store ptr null, ptr %14, align 4
  store i32 0, ptr %40, align 4
  br label %42

42:                                               ; preds = %34, %13
  %43 = getelementptr inbounds %struct.host1x, ptr %7, i32 0, i32 18
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.host1x_cdma_ops, ptr %44, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  tail call void %46(ptr noundef %0) #5
  br label %47

47:                                               ; preds = %42, %11
  %48 = phi i32 [ -16, %11 ], [ 0, %42 ]
  ret i32 %48
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @host1x_cdma_begin(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  tail call void @mutex_lock(ptr noundef %0) #5
  %9 = getelementptr inbounds %struct.host1x_job, ptr %1, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.host1x_syncpt, ptr %10, i32 0, i32 10
  %12 = load i8, ptr %11, align 4, !range !10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  tail call void @mutex_unlock(ptr noundef %0) #5
  br label %71

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.host1x_job, ptr %1, i32 0, i32 17
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 9, i32 1
  %21 = load i8, ptr %20, align 4, !range !10
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.host1x, ptr %8, i32 0, i32 18
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.host1x_cdma_ops, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %0) #5
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  tail call void @mutex_unlock(ptr noundef %0) #5
  br label %71

31:                                               ; preds = %23, %19, %15
  %32 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 10
  %33 = load i8, ptr %32, align 8, !range !10
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.host1x, ptr %8, i32 0, i32 18
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %37, align 4
  tail call void %38(ptr noundef %0) #5
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 4
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 3
  store i32 0, ptr %41, align 8
  %42 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 4
  %43 = load i32, ptr %42, align 8
  %44 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 5
  store i32 %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.host1x_job, ptr %1, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.host1x_channel, ptr %46, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load ptr, ptr %48, align 4
  br label %54

54:                                               ; preds = %52, %39
  %55 = phi ptr [ %53, %52 ], [ %50, %39 ]
  %56 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_begin, i32 0, i32 1), align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %54
  %59 = tail call ptr @llvm.thread.pointer() #5
  %60 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 8
  %62 = lshr i32 %61, 5
  %63 = getelementptr i32, ptr @__cpu_online_mask, i32 %62
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %61, 31
  %66 = shl nuw i32 1, %65
  %67 = and i32 %66, %64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %58
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %70 = tail call i32 @__traceiter_host1x_cdma_begin(ptr noundef null, ptr noundef %55) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  br label %71

71:                                               ; preds = %69, %58, %54, %30, %14
  %72 = phi i32 [ -1, %14 ], [ %28, %30 ], [ 0, %54 ], [ 0, %58 ], [ 0, %69 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_cdma_push(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr @host1x_debug_trace_cmdbuf, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load ptr, ptr %5, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi ptr [ %19, %18 ], [ %16, %14 ]
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_push, i32 0, i32 1), align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = tail call ptr @llvm.thread.pointer() #5
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 5
  %29 = getelementptr i32, ptr @__cpu_online_mask, i32 %28
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %27, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %36 = tail call i32 @__traceiter_host1x_cdma_push(ptr noundef null, ptr noundef %21, i32 noundef %1, i32 noundef %2) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  br label %37

37:                                               ; preds = %35, %24, %20, %3
  %38 = icmp eq i32 %11, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.host1x, ptr %9, i32 0, i32 18
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.host1x_cdma_ops, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  tail call void %43(ptr noundef %0) #5
  %44 = tail call i32 @host1x_cdma_wait_locked(ptr noundef %0, i32 noundef 2)
  br label %45

45:                                               ; preds = %39, %37
  %46 = phi i32 [ %44, %39 ], [ %11, %37 ]
  %47 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7
  %48 = add i32 %46, -1
  store i32 %48, ptr %10, align 4
  %49 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 3
  %50 = load i32, ptr %49, align 8
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 8
  %52 = load ptr, ptr %47, align 4
  %53 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i8, ptr %52, i32 %54
  %56 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %60, !prof !17

59:                                               ; preds = %45
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef null) #5
  br label %60

60:                                               ; preds = %59, %45
  %61 = getelementptr i32, ptr %55, i32 1
  store i32 %1, ptr %55, align 4
  store i32 %2, ptr %61, align 4
  %62 = load i32, ptr %53, align 4
  %63 = add i32 %62, 8
  store i32 %63, ptr %53, align 4
  %64 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = icmp ult i32 %63, %65
  br i1 %66, label %69, label %67

67:                                               ; preds = %60
  %68 = sub i32 %63, %65
  store i32 %68, ptr %53, align 4
  br label %69

69:                                               ; preds = %67, %60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_cdma_push_wide(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7
  %13 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 4
  %14 = load i32, ptr @host1x_debug_trace_cmdbuf, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load ptr, ptr %7, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi ptr [ %21, %20 ], [ %18, %16 ]
  %24 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_push_wide, i32 0, i32 1), align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = tail call ptr @llvm.thread.pointer() #5
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = lshr i32 %29, 5
  %31 = getelementptr i32, ptr @__cpu_online_mask, i32 %30
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %29, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %26
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  %38 = tail call i32 @__traceiter_host1x_cdma_push_wide(ptr noundef null, ptr noundef %23, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !19
  br label %39

39:                                               ; preds = %37, %26, %22, %5
  %40 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 16
  %43 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = icmp ugt i32 %42, %44
  %46 = sub i32 %44, %41
  %47 = lshr i32 %46, 3
  %48 = add nuw nsw i32 %47, 2
  %49 = select i1 %45, i32 %48, i32 2
  %50 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 3
  %51 = getelementptr inbounds %struct.host1x, ptr %11, i32 0, i32 18
  %52 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 2
  %53 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 1
  br label %54

54:                                               ; preds = %100, %39
  %55 = phi i32 [ %101, %100 ], [ %41, %39 ]
  %56 = load i32, ptr %50, align 4
  %57 = icmp ult i32 %56, %55
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, ptr %43, align 4
  %60 = add i32 %59, %56
  %61 = sub i32 %60, %55
  %62 = lshr i32 %61, 3
  %63 = icmp ult i32 %62, %49
  br i1 %63, label %68, label %102

64:                                               ; preds = %54
  %65 = sub i32 %56, %55
  %66 = lshr i32 %65, 3
  %67 = icmp ult i32 %66, %49
  br i1 %67, label %68, label %105

68:                                               ; preds = %64, %58
  %69 = load ptr, ptr %6, align 4
  %70 = getelementptr inbounds %struct.device, ptr %69, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load ptr, ptr %69, align 4
  br label %75

75:                                               ; preds = %73, %68
  %76 = phi ptr [ %74, %73 ], [ %71, %68 ]
  %77 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_wait_cdma, i32 0, i32 1), align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %75
  %80 = tail call ptr @llvm.thread.pointer() #5
  %81 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %82 = load i32, ptr %81, align 8
  %83 = lshr i32 %82, 5
  %84 = getelementptr i32, ptr @__cpu_online_mask, i32 %83
  %85 = load volatile i32, ptr %84, align 4
  %86 = and i32 %82, 31
  %87 = shl nuw i32 1, %86
  %88 = and i32 %87, %85
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %79
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !8
  %91 = tail call i32 @__traceiter_host1x_wait_cdma(ptr noundef null, ptr noundef %76, i32 noundef 2) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !9
  br label %92

92:                                               ; preds = %90, %79, %75
  %93 = load ptr, ptr %51, align 4
  %94 = getelementptr inbounds %struct.host1x_cdma_ops, ptr %93, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  tail call void %95(ptr noundef %0) #5
  %96 = load i32, ptr %52, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %92
  tail call void @mutex_unlock(ptr noundef %0) #5
  tail call void @schedule() #5
  br label %100

99:                                               ; preds = %92
  store i32 2, ptr %52, align 4
  tail call void @mutex_unlock(ptr noundef %0) #5
  tail call void @wait_for_completion(ptr noundef %53) #5
  br label %100

100:                                              ; preds = %99, %98
  tail call void @mutex_lock(ptr noundef %0) #5
  %101 = load i32, ptr %40, align 4
  br label %54

102:                                              ; preds = %58
  %103 = load i32, ptr %43, align 4
  %104 = add i32 %103, %56
  br label %105

105:                                              ; preds = %102, %64
  %106 = phi i32 [ %104, %102 ], [ %56, %64 ]
  %107 = sub i32 %106, %55
  %108 = lshr i32 %107, 3
  %109 = sub nsw i32 %108, %49
  store i32 %109, ptr %13, align 4
  %110 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 3
  %111 = load i32, ptr %110, align 8
  %112 = add i32 %111, %49
  store i32 %112, ptr %110, align 8
  %113 = icmp ult i32 %46, 8
  %114 = xor i1 %45, true
  %115 = select i1 %114, i1 true, i1 %113
  br i1 %115, label %137, label %116

116:                                              ; preds = %132, %105
  %117 = phi i32 [ %136, %132 ], [ %56, %105 ]
  %118 = phi i32 [ %133, %132 ], [ %55, %105 ]
  %119 = phi i32 [ %134, %132 ], [ 0, %105 ]
  %120 = load ptr, ptr %12, align 4
  %121 = getelementptr i8, ptr %120, i32 %118
  %122 = icmp eq i32 %118, %117
  br i1 %122, label %123, label %124, !prof !17

123:                                              ; preds = %116
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef null) #5
  br label %124

124:                                              ; preds = %123, %116
  %125 = getelementptr i32, ptr %121, i32 1
  store i32 %4, ptr %121, align 4
  store i32 %4, ptr %125, align 4
  %126 = load i32, ptr %40, align 4
  %127 = add i32 %126, 8
  store i32 %127, ptr %40, align 4
  %128 = load i32, ptr %43, align 4
  %129 = icmp ult i32 %127, %128
  br i1 %129, label %132, label %130

130:                                              ; preds = %124
  %131 = sub i32 %127, %128
  store i32 %131, ptr %40, align 4
  br label %132

132:                                              ; preds = %130, %124
  %133 = phi i32 [ %127, %124 ], [ %131, %130 ]
  %134 = add nuw nsw i32 %119, 1
  %135 = icmp eq i32 %134, %47
  %136 = load i32, ptr %50, align 4
  br i1 %135, label %137, label %116

137:                                              ; preds = %132, %105
  %138 = phi i32 [ %56, %105 ], [ %136, %132 ]
  %139 = phi i32 [ %55, %105 ], [ %133, %132 ]
  %140 = load ptr, ptr %12, align 4
  %141 = getelementptr i8, ptr %140, i32 %139
  %142 = icmp eq i32 %139, %138
  br i1 %142, label %143, label %144, !prof !17

143:                                              ; preds = %137
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef null) #5
  br label %144

144:                                              ; preds = %143, %137
  %145 = getelementptr i32, ptr %141, i32 1
  store i32 %1, ptr %141, align 4
  store i32 %2, ptr %145, align 4
  %146 = load i32, ptr %40, align 4
  %147 = add i32 %146, 8
  store i32 %147, ptr %40, align 4
  %148 = load i32, ptr %43, align 4
  %149 = icmp ult i32 %147, %148
  br i1 %149, label %152, label %150

150:                                              ; preds = %144
  %151 = sub i32 %147, %148
  store i32 %151, ptr %40, align 4
  br label %152

152:                                              ; preds = %150, %144
  %153 = phi i32 [ %147, %144 ], [ %151, %150 ]
  %154 = load ptr, ptr %12, align 4
  %155 = getelementptr i8, ptr %154, i32 %153
  %156 = load i32, ptr %50, align 4
  %157 = icmp eq i32 %153, %156
  br i1 %157, label %158, label %159, !prof !17

158:                                              ; preds = %152
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef null) #5
  br label %159

159:                                              ; preds = %158, %152
  %160 = getelementptr i32, ptr %155, i32 1
  store i32 %3, ptr %155, align 4
  store i32 %4, ptr %160, align 4
  %161 = load i32, ptr %40, align 4
  %162 = add i32 %161, 8
  store i32 %162, ptr %40, align 4
  %163 = load i32, ptr %43, align 4
  %164 = icmp ult i32 %162, %163
  br i1 %164, label %167, label %165

165:                                              ; preds = %159
  %166 = sub i32 %162, %163
  store i32 %166, ptr %40, align 4
  br label %167

167:                                              ; preds = %165, %159
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_cdma_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 8
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp ne ptr %10, %9
  %12 = getelementptr inbounds %struct.host1x, ptr %8, i32 0, i32 18
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.host1x_cdma_ops, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %0) #5
  %16 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.host1x_job, ptr %1, i32 0, i32 19
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.host1x_job, ptr %1, i32 0, i32 20
  store i32 %20, ptr %21, align 4
  %22 = tail call ptr @host1x_job_get(ptr noundef %1) #5
  %23 = getelementptr inbounds %struct.host1x_job, ptr %1, i32 0, i32 1
  %24 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 8, i32 1
  %25 = load ptr, ptr %24, align 4
  store ptr %23, ptr %24, align 4
  store ptr %9, ptr %23, align 4
  %26 = getelementptr inbounds %struct.host1x_job, ptr %1, i32 0, i32 1, i32 1
  store ptr %25, ptr %26, align 4
  store volatile ptr %23, ptr %25, align 4
  %27 = getelementptr inbounds %struct.host1x_job, ptr %1, i32 0, i32 17
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i1 true, i1 %11
  br i1 %30, label %51, label %31

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 9, i32 5
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 9
  %37 = getelementptr inbounds %struct.host1x_job, ptr %1, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  store ptr %38, ptr %32, align 8
  %39 = getelementptr inbounds %struct.host1x_job, ptr %1, i32 0, i32 13
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 9, i32 2
  store ptr %40, ptr %41, align 8
  %42 = getelementptr inbounds %struct.host1x_job, ptr %1, i32 0, i32 15
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 9, i32 3
  store i32 %43, ptr %44, align 4
  %45 = tail call i64 @ktime_get() #5
  %46 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 9, i32 4
  store i64 %45, ptr %46, align 8
  %47 = load i32, ptr %27, align 4
  %48 = tail call i32 @__msecs_to_jiffies(i32 noundef %47) #5
  %49 = load ptr, ptr @system_wq, align 4
  %50 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %49, ptr noundef %36, i32 noundef %48) #5
  br label %51

51:                                               ; preds = %35, %31, %2
  %52 = getelementptr inbounds %struct.host1x_job, ptr %1, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.host1x_channel, ptr %53, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load ptr, ptr %55, align 4
  br label %61

61:                                               ; preds = %59, %51
  %62 = phi ptr [ %60, %59 ], [ %57, %51 ]
  %63 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_end, i32 0, i32 1), align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = tail call ptr @llvm.thread.pointer() #5
  %67 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %68 = load i32, ptr %67, align 8
  %69 = lshr i32 %68, 5
  %70 = getelementptr i32, ptr @__cpu_online_mask, i32 %69
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %68, 31
  %73 = shl nuw i32 1, %72
  %74 = and i32 %73, %71
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %65
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !20
  %77 = tail call i32 @__traceiter_host1x_cdma_end(ptr noundef null, ptr noundef %62) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !21
  br label %78

78:                                               ; preds = %76, %65, %61
  tail call void @mutex_unlock(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_job_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_cdma_update(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef %0) #5
  tail call fastcc void @update_cdma_locked(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_host1x_wait_cdma(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @host1x_syncpt_is_expired(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_job_unpin(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_job_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_iova(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_map(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_iova(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_unmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_iova(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_host1x_cdma_begin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_host1x_cdma_push(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_host1x_cdma_push_wide(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_host1x_cdma_end(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 2153151547}
!9 = !{i64 2153151717}
!10 = !{i8 0, i8 2}
!11 = !{i64 2153506612}
!12 = !{i32 0, i32 33}
!13 = !{i64 2153006832}
!14 = !{i64 2153006986}
!15 = !{i64 2153038806}
!16 = !{i64 2153038978}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2153059692}
!19 = !{i64 2153059894}
!20 = !{i64 2153022683}
!21 = !{i64 2153022833}
