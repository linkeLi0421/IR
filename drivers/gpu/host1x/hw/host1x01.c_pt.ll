; ModuleID = '/llk/IR/drivers/gpu/host1x/hw/host1x01.c_pt.bc'
source_filename = "../drivers/gpu/host1x/hw/host1x01.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.host1x_channel_ops = type { ptr, ptr }
%struct.host1x_cdma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.host1x_pushbuffer_ops = type { ptr }
%struct.host1x_syncpt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.host1x_intr_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.host1x_debug_ops = type { ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.host1x = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x %struct.reset_control_bulk_data], i32, ptr, ptr, %struct.iova_domain, i32, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.host1x_channel_list, ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.device_dma_parameters, %struct.host1x_bo_cache }
%struct.reset_control_bulk_data = type { ptr, ptr }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rb_root = type { ptr }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.host1x_channel_list = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.host1x_channel = type { %struct.kref, i32, %struct.mutex, ptr, ptr, ptr, %struct.host1x_cdma }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.host1x_cdma = type { %struct.mutex, %struct.completion, i32, i32, i32, i32, i32, %struct.push_buffer, %struct.list_head, %struct.buffer_timeout, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.push_buffer = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.buffer_timeout = type { %struct.delayed_work, i8, ptr, i32, i64, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.host1x_job = type { %struct.kref, %struct.list_head, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.host1x_syncpt = type { %struct.kref, i32, %struct.atomic_t, %struct.atomic_t, i32, ptr, i8, ptr, ptr, %struct.host1x_syncpt_intr, i8 }
%struct.host1x_syncpt_intr = type { %struct.spinlock, %struct.list_head, [12 x i8], %struct.work_struct }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.host1x_job_cmd = type { i8, %union.anon.64 }
%union.anon.64 = type { %struct.host1x_job_gather }
%struct.host1x_job_gather = type { i32, i32, ptr, i32, i8 }
%struct.host1x_job_wait = type { i32, i32, i32, i8 }
%struct.host1x_bo_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.host1x_info = type { i32, i32, i32, i32, ptr, i32, i64, i8, i8, i32, ptr, i8 }

@host1x_channel_ops = internal constant %struct.host1x_channel_ops { ptr @host1x_channel_init, ptr @channel_submit }, align 4
@host1x_cdma_ops = internal constant %struct.host1x_cdma_ops { ptr @cdma_start, ptr @cdma_stop, ptr @cdma_flush, ptr @cdma_timeout_init, ptr @cdma_timeout_destroy, ptr @cdma_freeze, ptr @cdma_resume, ptr @cdma_timeout_cpu_incr }, align 4
@host1x_pushbuffer_ops = internal constant %struct.host1x_pushbuffer_ops { ptr @push_buffer_init }, align 4
@host1x_syncpt_ops = internal constant %struct.host1x_syncpt_ops { ptr @syncpt_restore, ptr @syncpt_restore_wait_base, ptr @syncpt_read_wait_base, ptr @syncpt_load, ptr @syncpt_cpu_incr, ptr @syncpt_assign_to_channel, ptr @syncpt_enable_protection }, align 4
@host1x_intr_ops = internal constant %struct.host1x_intr_ops { ptr @_host1x_intr_init_host_sync, ptr @_host1x_intr_set_syncpt_threshold, ptr @_host1x_intr_enable_syncpt_intr, ptr @_host1x_intr_disable_syncpt_intr, ptr @_host1x_intr_disable_all_syncpt_intrs, ptr @_host1x_free_syncpt_irq }, align 4
@host1x_debug_ops = internal constant %struct.host1x_debug_ops { ptr null, ptr @host1x_debug_show_channel_cdma, ptr @host1x_debug_show_channel_fifo, ptr @host1x_debug_show_mlocks }, align 4
@.str = private unnamed_addr constant [35 x i8] c"drivers/gpu/host1x/hw/channel_hw.c\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to set submit complete interrupt\00", align 1
@__tracepoint_host1x_channel_submit = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@host1x_debug_trace_cmdbuf = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_host1x_cdma_push_gather = external dso_local global %struct.tracepoint, align 4
@__tracepoint_host1x_channel_submitted = external dso_local global %struct.tracepoint, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"%s: timeout: %u (%s), HW thresh %d, done %d\0A\00", align 1
@__func__.cdma_timeout_handler = private unnamed_addr constant [21 x i8] c"cdma_timeout_handler\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Already torn down\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"%s failed: id=%u, min=%d, max=%d\0A\00", align 1
@__func__.syncpt_load = private unnamed_addr constant [12 x i8] c"syncpt_load\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"host1x_syncpt\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"drivers/gpu/host1x/hw/intr_hw.c\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"%u-%s: \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"inactive\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"waiting on syncpt %d val %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"waiting on syncpt %d val %d (base %d = %d; offset = %d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"active class %02x, offset %04x, val %08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"DMASTART %pad, DMAEND %pad\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"DMAPUT %08x DMAGET %08x DMACTL %08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"CBREAD %08x CBSTAT %08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.18 = private unnamed_addr constant [62 x i8] c"JOB, syncpt %u: %u timeout: %u num_slots: %u num_handles: %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"[could not mmap]\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"  GATHER at %pad+%#x, %d words\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"[address mismatch]\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"    %pad: %08x: \00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"%08x%s\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"])\0A\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"SETCL(class=%03x, offset=%03x, mask=%02x, [\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"SETCL(class=%03x)\0A\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"INCR(offset=%03x, [\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"NONINCR(offset=%03x, [\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"MASK(offset=%03x, mask=%03x, [\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"IMM(offset=%03x, data=%03x)\0A\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"RESTART(offset=%08x)\0A\00", align 1
@.str.33 = private unnamed_addr constant [59 x i8] c"GATHER(offset=%03x, insert=%d, type=%d, count=%04x, addr=[\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"ACQUIRE_MLOCK(index=%d)\0A\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"RELEASE_MLOCK(index=%d)\0A\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"EXTEND_UNKNOWN(%08x)\0A\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"UNKNOWN\0A\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"%u: fifo:\0A\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"FIFOSTAT %08x\0A\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"[empty]\0A\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"%08x: \00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c", ...])\0A\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"---- mlocks ----\0A\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"%u: locked by channel %u\0A\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"%u: locked by cpu\0A\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"%u: unlocked\0A\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @host1x01_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 17
  store ptr @host1x_channel_ops, ptr %2, align 4
  %3 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 18
  store ptr @host1x_cdma_ops, ptr %3, align 4
  %4 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 19
  store ptr @host1x_pushbuffer_ops, ptr %4, align 4
  %5 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 15
  store ptr @host1x_syncpt_ops, ptr %5, align 4
  %6 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 16
  store ptr @host1x_intr_ops, ptr %6, align 4
  %7 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 20
  store ptr @host1x_debug_ops, ptr %7, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @host1x_channel_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.host1x, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %2, 14
  %7 = getelementptr i8, ptr %5, i32 %6
  %8 = getelementptr inbounds %struct.host1x_channel, ptr %0, i32 0, i32 3
  store ptr %7, ptr %8, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @channel_submit(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.host1x_channel, ptr %3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load ptr, ptr %9, align 4
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi ptr [ %18, %17 ], [ %15, %1 ]
  %21 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.host1x_syncpt, ptr %5, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_channel_submit, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %19
  %30 = tail call ptr @llvm.thread.pointer() #11
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %41 = tail call i32 @__traceiter_host1x_channel_submit(ptr noundef null, ptr noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %7) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %42

42:                                               ; preds = %40, %29, %19
  %43 = tail call i32 @host1x_syncpt_read_max(ptr noundef %5) #11
  %44 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 15
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.host1x_channel, ptr %3, i32 0, i32 2
  %46 = tail call i32 @mutex_lock_interruptible(ptr noundef %45) #11
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %222

48:                                               ; preds = %42
  %49 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %50 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3520, i32 noundef 32) #12
  %51 = icmp eq ptr %50, null
  br i1 %51, label %219, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.host1x_channel, ptr %3, i32 0, i32 6
  %54 = tail call i32 @host1x_cdma_begin(ptr noundef %53, ptr noundef %0) #11
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %219

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 27
  %58 = load i8, ptr %57, align 4, !range !10
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %4, align 4
  %62 = getelementptr inbounds %struct.host1x_syncpt, ptr %61, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = tail call i32 @host1x_syncpt_read_max(ptr noundef %5) #11
  %65 = shl i32 %63, 24
  %66 = and i32 %64, 16777215
  %67 = or i32 %66, %65
  tail call void @host1x_cdma_push(ptr noundef %53, i32 noundef 524353, i32 noundef %67) #11
  br label %68

68:                                               ; preds = %60, %56
  %69 = getelementptr inbounds %struct.host1x_syncpt, ptr %5, i32 0, i32 8
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %83, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %4, align 4
  %74 = tail call i32 @host1x_syncpt_read_max(ptr noundef %73) #11
  %75 = getelementptr inbounds %struct.host1x_syncpt, ptr %73, i32 0, i32 8
  %76 = load ptr, ptr %75, align 4
  %77 = load i32, ptr %76, align 4
  %78 = load ptr, ptr %2, align 4
  %79 = getelementptr inbounds %struct.host1x_channel, ptr %78, i32 0, i32 6
  %80 = shl i32 %77, 24
  %81 = and i32 %74, 16777215
  %82 = or i32 %80, %81
  tail call void @host1x_cdma_push(ptr noundef %79, i32 noundef 720961, i32 noundef %82) #11
  br label %83

83:                                               ; preds = %72, %68
  %84 = tail call i32 @host1x_syncpt_incr_max(ptr noundef %5, i32 noundef %7) #11
  %85 = getelementptr inbounds %struct.host1x, ptr %13, i32 0, i32 15
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.host1x_syncpt_ops, ptr %86, i32 0, i32 5
  %88 = load ptr, ptr %87, align 4
  tail call void %88(ptr noundef %5, ptr noundef %3) #11
  store i32 %84, ptr %44, align 4
  %89 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 26
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %83
  %93 = shl i32 %90, 6
  tail call void @host1x_cdma_push(ptr noundef %53, i32 noundef %93, i32 noundef 536870912) #11
  br label %94

94:                                               ; preds = %92, %83
  %95 = sub i32 %84, %7
  %96 = load ptr, ptr %2, align 4
  %97 = getelementptr inbounds %struct.host1x_channel, ptr %96, i32 0, i32 6
  %98 = load i32, ptr %21, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %189, label %100

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 4
  %102 = getelementptr %struct.host1x_channel, ptr %96, i32 0, i32 5
  br label %103

103:                                              ; preds = %185, %100
  %104 = phi i32 [ 0, %100 ], [ %186, %185 ]
  %105 = load ptr, ptr %101, align 4
  %106 = getelementptr %struct.host1x_job_cmd, ptr %105, i32 %104
  %107 = load i8, ptr %106, align 4, !range !10
  %108 = icmp eq i8 %107, 0
  %109 = getelementptr %struct.host1x_job_cmd, ptr %105, i32 %104, i32 1
  br i1 %108, label %125, label %110

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.host1x_job_wait, ptr %109, i32 0, i32 3
  %112 = load i8, ptr %111, align 4, !range !10
  %113 = icmp eq i8 %112, 0
  %114 = getelementptr inbounds %struct.host1x_job_wait, ptr %109, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = select i1 %113, i32 0, i32 %95
  %117 = add i32 %116, %115
  %118 = load i32, ptr %109, align 4
  %119 = getelementptr inbounds %struct.host1x_job_wait, ptr %109, i32 0, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = shl i32 %118, 24
  %122 = and i32 %117, 16777215
  %123 = or i32 %122, %121
  tail call void @host1x_cdma_push(ptr noundef %97, i32 noundef 524353, i32 noundef %123) #11
  %124 = shl i32 %120, 6
  tail call void @host1x_cdma_push(ptr noundef %97, i32 noundef %124, i32 noundef 536870912) #11
  br label %185

125:                                              ; preds = %103
  %126 = getelementptr inbounds %struct.host1x_job_gather, ptr %109, i32 0, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr inbounds %struct.host1x_job_gather, ptr %109, i32 0, i32 3
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.host1x_job_gather, ptr %109, i32 0, i32 2
  %131 = load ptr, ptr %130, align 4
  %132 = load i32, ptr %109, align 4
  %133 = load ptr, ptr %102, align 4
  %134 = load i32, ptr @host1x_debug_trace_cmdbuf, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %181, label %136

136:                                              ; preds = %125
  %137 = load ptr, ptr %131, align 4
  %138 = getelementptr inbounds %struct.host1x_bo_ops, ptr %137, i32 0, i32 4
  %139 = load ptr, ptr %138, align 4
  %140 = tail call ptr %139(ptr noundef %131) #11
  %141 = icmp eq ptr %140, null
  br i1 %141, label %181, label %142

142:                                              ; preds = %136
  %143 = icmp eq i32 %132, 0
  br i1 %143, label %177, label %144

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.device, ptr %133, i32 0, i32 3
  br label %146

146:                                              ; preds = %174, %144
  %147 = phi i32 [ %129, %144 ], [ %152, %174 ]
  %148 = phi i32 [ 0, %144 ], [ %175, %174 ]
  %149 = sub i32 %132, %148
  %150 = tail call i32 @llvm.umin.i32(i32 %149, i32 128) #11
  %151 = shl i32 %148, 2
  %152 = add i32 %151, %147
  %153 = load ptr, ptr %145, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %157

155:                                              ; preds = %146
  %156 = load ptr, ptr %133, align 4
  br label %157

157:                                              ; preds = %155, %146
  %158 = phi ptr [ %156, %155 ], [ %153, %146 ]
  %159 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_push_gather, i32 0, i32 1), align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %157
  %162 = tail call ptr @llvm.thread.pointer() #11
  %163 = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 2
  %164 = load i32, ptr %163, align 8
  %165 = lshr i32 %164, 5
  %166 = getelementptr i32, ptr @__cpu_online_mask, i32 %165
  %167 = load volatile i32, ptr %166, align 4
  %168 = and i32 %164, 31
  %169 = shl nuw i32 1, %168
  %170 = and i32 %169, %167
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %161
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  %173 = tail call i32 @__traceiter_host1x_cdma_push_gather(ptr noundef null, ptr noundef %158, ptr noundef %131, i32 noundef %150, i32 noundef %152, ptr noundef nonnull %140) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  br label %174

174:                                              ; preds = %172, %161, %157
  %175 = add i32 %148, 128
  %176 = icmp ult i32 %175, %132
  br i1 %176, label %146, label %177

177:                                              ; preds = %174, %142
  %178 = load ptr, ptr %131, align 4
  %179 = getelementptr inbounds %struct.host1x_bo_ops, ptr %178, i32 0, i32 5
  %180 = load ptr, ptr %179, align 4
  tail call void %180(ptr noundef %131, ptr noundef nonnull %140) #11
  br label %181

181:                                              ; preds = %177, %136, %125
  %182 = add i32 %129, %127
  %183 = load i32, ptr %109, align 4
  %184 = or i32 %183, 1610612736
  tail call void @host1x_cdma_push(ptr noundef %97, i32 noundef %184, i32 noundef %182) #11
  br label %185

185:                                              ; preds = %181, %110
  %186 = add nuw i32 %104, 1
  %187 = load i32, ptr %21, align 4
  %188 = icmp ult i32 %186, %187
  br i1 %188, label %103, label %189

189:                                              ; preds = %185, %94
  tail call void @host1x_cdma_end(ptr noundef %53, ptr noundef %0) #11
  %190 = load ptr, ptr %8, align 4
  %191 = getelementptr inbounds %struct.device, ptr %190, i32 0, i32 3
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = load ptr, ptr %190, align 4
  br label %196

196:                                              ; preds = %194, %189
  %197 = phi ptr [ %195, %194 ], [ %192, %189 ]
  %198 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_channel_submitted, i32 0, i32 1), align 4
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %213

200:                                              ; preds = %196
  %201 = tail call ptr @llvm.thread.pointer() #11
  %202 = getelementptr inbounds %struct.thread_info, ptr %201, i32 0, i32 2
  %203 = load i32, ptr %202, align 8
  %204 = lshr i32 %203, 5
  %205 = getelementptr i32, ptr @__cpu_online_mask, i32 %204
  %206 = load volatile i32, ptr %205, align 4
  %207 = and i32 %203, 31
  %208 = shl nuw i32 1, %207
  %209 = and i32 %208, %206
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %200
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %212 = tail call i32 @__traceiter_host1x_channel_submitted(ptr noundef null, ptr noundef %197, i32 noundef %43, i32 noundef %84) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  br label %213

213:                                              ; preds = %211, %200, %196
  %214 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 16
  %215 = tail call i32 @host1x_intr_add_action(ptr noundef %13, ptr noundef %5, i32 noundef %84, i32 noundef 0, ptr noundef %3, ptr noundef nonnull %50, ptr noundef %214) #11
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %218, label %217, !prof !15

217:                                              ; preds = %213
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 263, i32 noundef 9, ptr noundef nonnull @.str.1) #11
  br label %218

218:                                              ; preds = %217, %213
  tail call void @mutex_unlock(ptr noundef %45) #11
  br label %225

219:                                              ; preds = %52, %48
  %220 = phi i32 [ -12, %48 ], [ %54, %52 ]
  %221 = phi ptr [ null, %48 ], [ %50, %52 ]
  tail call void @mutex_unlock(ptr noundef %45) #11
  br label %222

222:                                              ; preds = %219, %42
  %223 = phi i32 [ %46, %42 ], [ %220, %219 ]
  %224 = phi ptr [ null, %42 ], [ %221, %219 ]
  tail call void @kfree(ptr noundef %224) #11
  br label %225

225:                                              ; preds = %222, %218
  %226 = phi i32 [ %223, %222 ], [ 0, %218 ]
  ret i32 %226
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_read_max(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_cdma_begin(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_cdma_push(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_incr_max(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_cdma_end(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_intr_add_action(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_host1x_channel_submit(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_host1x_cdma_push_gather(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_host1x_channel_submitted(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdma_start(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 10
  %3 = load i8, ptr %2, align 8, !range !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -40
  %7 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 6
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 4
  tail call void @host1x_ch_writel(ptr noundef %6, i32 noundef 1, i32 noundef 36) #11
  tail call void @host1x_ch_writel(ptr noundef %6, i32 noundef %11, i32 noundef 20) #11
  %15 = load i32, ptr %7, align 8
  tail call void @host1x_ch_writel(ptr noundef %6, i32 noundef %15, i32 noundef 24) #11
  tail call void @host1x_ch_writel(ptr noundef %6, i32 noundef %14, i32 noundef 32) #11
  tail call void @host1x_ch_writel(ptr noundef %6, i32 noundef 7, i32 noundef 36) #11
  tail call void @host1x_ch_writel(ptr noundef %6, i32 noundef 0, i32 noundef 36) #11
  store i8 1, ptr %2, align 8
  br label %16

16:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdma_stop(ptr noundef %0) #2 {
  tail call void @mutex_lock(ptr noundef %0) #11
  %2 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 10
  %3 = load i8, ptr %2, align 8, !range !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -40
  %7 = tail call i32 @host1x_cdma_wait_locked(ptr noundef %0, i32 noundef 1) #11
  tail call void @host1x_ch_writel(ptr noundef %6, i32 noundef 1, i32 noundef 36) #11
  store i8 0, ptr %2, align 8
  br label %8

8:                                                ; preds = %5, %1
  tail call void @mutex_unlock(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdma_flush(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -40
  tail call void @host1x_ch_writel(ptr noundef %8, i32 noundef %3, i32 noundef 24) #11
  %9 = load i32, ptr %2, align 8
  store i32 %9, ptr %4, align 4
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdma_timeout_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 9
  store i32 -32, ptr %2, align 8
  %3 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 9, i32 0, i32 0, i32 1
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 9, i32 0, i32 0, i32 1, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 9, i32 0, i32 0, i32 2
  store ptr @cdma_timeout_handler, ptr %5, align 4
  %6 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 9, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %6, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #11
  %7 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 9, i32 1
  store i8 1, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdma_timeout_destroy(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 9, i32 1
  %3 = load i8, ptr %2, align 4, !range !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 9
  %7 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %6) #11
  br label %8

8:                                                ; preds = %5, %1
  store i8 0, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdma_freeze(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -40
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 11
  %10 = load i8, ptr %9, align 1, !range !10
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 10
  %14 = load i8, ptr %13, align 8, !range !10
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.host1x, ptr %8, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.5) #13
  br label %28

19:                                               ; preds = %12, %1
  %20 = tail call i32 @host1x_sync_readl(ptr noundef %8, i32 noundef 172) #11
  %21 = getelementptr i8, ptr %0, i32 -36
  %22 = load i32, ptr %21, align 4
  %23 = shl nuw i32 1, %22
  %24 = or i32 %23, %20
  tail call void @host1x_sync_writel(ptr noundef %8, i32 noundef %24, i32 noundef 172) #11
  tail call void @host1x_ch_writel(ptr noundef %2, i32 noundef 1, i32 noundef 36) #11
  %25 = load i32, ptr %21, align 4
  %26 = shl nuw i32 1, %25
  tail call void @host1x_sync_writel(ptr noundef %8, i32 noundef %26, i32 noundef 176) #11
  %27 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 10
  store i8 0, ptr %27, align 8
  store i8 1, ptr %9, align 1
  br label %28

28:                                               ; preds = %19, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdma_resume(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @host1x_sync_readl(ptr noundef %8, i32 noundef 172) #11
  %10 = getelementptr i8, ptr %0, i32 -36
  %11 = load i32, ptr %10, align 4
  %12 = shl nuw i32 1, %11
  %13 = xor i32 %12, -1
  %14 = and i32 %9, %13
  tail call void @host1x_sync_writel(ptr noundef %8, i32 noundef %14, i32 noundef 172) #11
  %15 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 11
  store i8 0, ptr %15, align 1
  %16 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 10
  %17 = load i8, ptr %16, align 8, !range !10
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = getelementptr i8, ptr %0, i32 -40
  %21 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 4
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 6
  store i32 %22, ptr %23, align 4
  tail call void @host1x_ch_writel(ptr noundef %20, i32 noundef 1, i32 noundef 36) #11
  %24 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 4
  tail call void @host1x_ch_writel(ptr noundef %20, i32 noundef %25, i32 noundef 20) #11
  tail call void @host1x_ch_writel(ptr noundef %20, i32 noundef %28, i32 noundef 32) #11
  tail call void @host1x_ch_writel(ptr noundef %20, i32 noundef %1, i32 noundef 24) #11
  tail call void @host1x_ch_writel(ptr noundef %20, i32 noundef 7, i32 noundef 36) #11
  tail call void @host1x_ch_writel(ptr noundef %20, i32 noundef 1, i32 noundef 36) #11
  %29 = load i32, ptr %21, align 8
  tail call void @host1x_ch_writel(ptr noundef %20, i32 noundef %29, i32 noundef 24) #11
  tail call void @host1x_ch_writel(ptr noundef %20, i32 noundef 0, i32 noundef 36) #11
  store i8 1, ptr %16, align 8
  br label %30

30:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdma_timeout_cpu_incr(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 9, i32 2
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ 0, %7 ], [ %13, %9 ]
  %11 = load ptr, ptr %8, align 8
  %12 = tail call i32 @host1x_syncpt_incr(ptr noundef %11) #11
  %13 = add nuw i32 %10, 1
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %15, label %9

15:                                               ; preds = %9, %5
  %16 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 9, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 @host1x_syncpt_load(ptr noundef %17) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_ch_writel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_cdma_wait_locked(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdma_timeout_handler(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -96
  %3 = getelementptr i8, ptr %0, i32 -100
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  tail call void @host1x_debug_dump(ptr noundef %8) #11
  tail call void @mutex_lock(ptr noundef %2) #11
  %9 = getelementptr inbounds %struct.buffer_timeout, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %44, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @host1x_sync_readl(ptr noundef %8, i32 noundef 172) #11
  %14 = getelementptr i8, ptr %0, i32 -132
  %15 = load i32, ptr %14, align 4
  %16 = shl nuw i32 1, %15
  %17 = or i32 %16, %13
  tail call void @host1x_sync_writel(ptr noundef %8, i32 noundef %17, i32 noundef 172) #11
  %18 = getelementptr inbounds %struct.buffer_timeout, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 @host1x_syncpt_load(ptr noundef %19) #11
  %21 = getelementptr inbounds %struct.buffer_timeout, ptr %0, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %20, %22
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %31

25:                                               ; preds = %12
  %26 = tail call i32 @host1x_sync_readl(ptr noundef %8, i32 noundef 172) #11
  %27 = load i32, ptr %14, align 4
  %28 = shl nuw i32 1, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %26, %29
  tail call void @host1x_sync_writel(ptr noundef %8, i32 noundef %30, i32 noundef 172) #11
  br label %44

31:                                               ; preds = %12
  %32 = getelementptr inbounds %struct.host1x, ptr %8, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %18, align 8
  %35 = getelementptr inbounds %struct.host1x_syncpt, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.host1x_syncpt, ptr %34, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.cdma_timeout_handler, i32 noundef %36, ptr noundef %38, i32 noundef %20, i32 noundef %22) #13
  %39 = getelementptr inbounds %struct.host1x, ptr %8, i32 0, i32 18
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.host1x_cdma_ops, ptr %40, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef %2) #11
  %43 = load ptr, ptr %3, align 4
  tail call void @host1x_cdma_update_sync_queue(ptr noundef %2, ptr noundef %43) #11
  br label %44

44:                                               ; preds = %31, %25, %1
  tail call void @mutex_unlock(ptr noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_debug_dump(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_load(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_cdma_update_sync_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_sync_readl(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_sync_writel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_incr(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @push_buffer_init(ptr nocapture noundef readonly %0) #8 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.push_buffer, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %2, i32 %4
  store i32 1342177280, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @syncpt_restore(ptr noundef %0) #2 {
  %2 = tail call i32 @host1x_syncpt_read_min(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 %6, 2
  %8 = add i32 %7, 1024
  tail call void @host1x_sync_writel(ptr noundef %4, i32 noundef %2, i32 noundef %8) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @syncpt_restore_wait_base(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 2
  %9 = add i32 %8, 1536
  tail call void @host1x_sync_writel(ptr noundef %3, i32 noundef %5, i32 noundef %9) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @syncpt_read_wait_base(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 2
  %7 = add i32 %6, 1536
  %8 = tail call i32 @host1x_sync_readl(ptr noundef %3, i32 noundef %7) #11
  %9 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 4
  store i32 %8, ptr %9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @syncpt_load(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 2
  br label %6

6:                                                ; preds = %16, %1
  %7 = tail call i32 @host1x_syncpt_read_min(ptr noundef %0) #11
  %8 = load i32, ptr %4, align 4
  %9 = shl i32 %8, 2
  %10 = add i32 %9, 1024
  %11 = tail call i32 @host1x_sync_readl(ptr noundef %3, i32 noundef %10) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #11, !srcloc !17
  br label %12

12:                                               ; preds = %12, %6
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 %7, i32 %11, ptr elementtype(i32) %5) #11, !srcloc !18
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %12

16:                                               ; preds = %12
  %17 = extractvalue { i32, i32 } %13, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !19
  %18 = icmp eq i32 %17, %7
  br i1 %18, label %19, label %6

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 6
  %21 = load i8, ptr %20, align 4, !range !10
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = tail call i32 @host1x_syncpt_read_max(ptr noundef %0) #11
  %25 = sub i32 %24, %11
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.host1x, ptr %3, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %4, align 4
  %31 = tail call i32 @host1x_syncpt_read_min(ptr noundef %0) #11
  %32 = tail call i32 @host1x_syncpt_read_max(ptr noundef %0) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.syncpt_load, i32 noundef %30, i32 noundef %31, i32 noundef %32) #13
  br label %33

33:                                               ; preds = %27, %23, %19
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @syncpt_cpu_incr(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 6
  %7 = load i8, ptr %6, align 4, !range !10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %10 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 2
  %11 = load volatile i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 3
  %13 = load volatile i32, ptr %12, align 4
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %9
  %16 = load i32, ptr %4, align 4
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi i32 [ %16, %15 ], [ %5, %1 ]
  %19 = and i32 %18, 31
  %20 = shl nuw i32 1, %19
  %21 = lshr i32 %5, 3
  %22 = and i32 %21, 536870908
  %23 = add nuw nsw i32 %22, 1792
  tail call void @host1x_sync_writel(ptr noundef %3, i32 noundef %20, i32 noundef %23) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !21
  tail call void @arm_heavy_mb() #11
  br label %24

24:                                               ; preds = %17, %9
  %25 = phi i32 [ 0, %17 ], [ -22, %9 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @syncpt_assign_to_channel(ptr nocapture noundef %0, ptr nocapture noundef %1) #9 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @syncpt_enable_protection(ptr nocapture noundef %0) #9 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_read_min(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_host1x_intr_init_host_sync(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.host1x_intr_ops, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0) #11
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.host1x_info, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 3
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ 0, %12 ], [ %23, %14 ]
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr %struct.host1x_syncpt, ptr %16, i32 %15, i32 9, i32 3
  store i32 -32, ptr %17, align 4
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr %struct.host1x_syncpt, ptr %18, i32 %15, i32 9, i32 3, i32 1
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr %struct.host1x_syncpt, ptr %18, i32 %15, i32 9, i32 3, i32 1, i32 1
  store ptr %19, ptr %20, align 4
  %21 = load ptr, ptr %13, align 4
  %22 = getelementptr %struct.host1x_syncpt, ptr %21, i32 %15, i32 9, i32 3, i32 2
  store ptr %2, ptr %22, align 4
  %23 = add nuw i32 %15, 1
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr inbounds %struct.host1x_info, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %14, label %28

28:                                               ; preds = %14, %3
  %29 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 14
  %32 = load i32, ptr %31, align 4
  %33 = tail call i32 @devm_request_threaded_irq(ptr noundef %30, i32 noundef %32, ptr noundef nonnull @syncpt_thresh_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.7, ptr noundef %0) #11
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 97, i32 noundef 9, ptr noundef null) #11
  br label %37

36:                                               ; preds = %28
  tail call void @host1x_sync_writel(ptr noundef %0, i32 noundef 0, i32 noundef 444) #11
  tail call void @host1x_sync_writel(ptr noundef %0, i32 noundef 255, i32 noundef 424) #11
  tail call void @host1x_sync_writel(ptr noundef %0, i32 noundef %1, i32 noundef 420) #11
  br label %37

37:                                               ; preds = %36, %35
  %38 = phi i32 [ %33, %35 ], [ 0, %36 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @_host1x_intr_set_syncpt_threshold(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = shl i32 %1, 2
  %5 = add i32 %4, 1280
  tail call void @host1x_sync_writel(ptr noundef %0, i32 noundef %2, i32 noundef %5) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @_host1x_intr_enable_syncpt_intr(ptr noundef %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 31
  %4 = shl nuw i32 1, %3
  %5 = lshr i32 %1, 3
  %6 = and i32 %5, 536870908
  %7 = add nuw nsw i32 %6, 104
  tail call void @host1x_sync_writel(ptr noundef %0, i32 noundef %4, i32 noundef %7) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @_host1x_intr_disable_syncpt_intr(ptr noundef %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 31
  %4 = shl nuw i32 1, %3
  %5 = lshr i32 %1, 3
  %6 = and i32 %5, 536870908
  %7 = add nuw nsw i32 %6, 96
  tail call void @host1x_sync_writel(ptr noundef %0, i32 noundef %4, i32 noundef %7) #11
  %8 = add nuw nsw i32 %6, 64
  tail call void @host1x_sync_writel(ptr noundef %0, i32 noundef %4, i32 noundef %8) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @_host1x_intr_disable_all_syncpt_intrs(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.host1x_info, ptr %2, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 31
  %6 = icmp ult i32 %5, 32
  br i1 %6, label %19, label %7

7:                                                ; preds = %7, %1
  %8 = phi i32 [ %12, %7 ], [ 0, %1 ]
  %9 = shl i32 %8, 2
  %10 = add nuw nsw i32 %9, 96
  tail call void @host1x_sync_writel(ptr noundef %0, i32 noundef -1, i32 noundef %10) #11
  %11 = add nuw nsw i32 %9, 64
  tail call void @host1x_sync_writel(ptr noundef %0, i32 noundef -1, i32 noundef %11) #11
  %12 = add nuw nsw i32 %8, 1
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.host1x_info, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 31
  %17 = lshr i32 %16, 5
  %18 = icmp ult i32 %12, %17
  br i1 %18, label %7, label %19

19:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_host1x_free_syncpt_irq(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 4
  tail call void @devm_free_irq(ptr noundef %3, i32 noundef %5, ptr noundef %0) #11
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.host1x_info, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 3
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ 0, %10 ], [ %17, %12 ]
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr %struct.host1x_syncpt, ptr %14, i32 %13, i32 9, i32 3
  %16 = tail call zeroext i1 @cancel_work_sync(ptr noundef %15) #11
  %17 = add nuw i32 %13, 1
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.host1x_info, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %12, label %22

22:                                               ; preds = %12, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @syncpt_thresh_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !22
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.host1x_info, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 31
  %8 = icmp ult i32 %7, 32
  br i1 %8, label %48, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.host1x, ptr %1, i32 0, i32 3
  br label %11

11:                                               ; preds = %40, %9
  %12 = phi i32 [ 0, %9 ], [ %41, %40 ]
  %13 = shl i32 %12, 2
  %14 = add nuw nsw i32 %13, 64
  %15 = call i32 @host1x_sync_readl(ptr noundef %1, i32 noundef %14) #11
  store i32 %15, ptr %3, align 4
  %16 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef 0) #11
  %17 = icmp ult i32 %16, 32
  br i1 %17, label %18, label %40

18:                                               ; preds = %11
  %19 = shl i32 %12, 5
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i32 [ %16, %18 ], [ %38, %20 ]
  %22 = load ptr, ptr %10, align 4
  %23 = add nuw i32 %21, %19
  %24 = getelementptr %struct.host1x_syncpt, ptr %22, i32 %23, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.host1x_syncpt, ptr %22, i32 %23, i32 7
  %27 = load ptr, ptr %26, align 4
  %28 = and i32 %25, 31
  %29 = shl nuw i32 1, %28
  %30 = lshr i32 %25, 3
  %31 = and i32 %30, 536870908
  %32 = add nuw nsw i32 %31, 96
  call void @host1x_sync_writel(ptr noundef %27, i32 noundef %29, i32 noundef %32) #11
  %33 = add nuw nsw i32 %31, 64
  call void @host1x_sync_writel(ptr noundef %27, i32 noundef %29, i32 noundef %33) #11
  %34 = getelementptr %struct.host1x_syncpt, ptr %22, i32 %23, i32 9, i32 3
  %35 = load ptr, ptr @system_wq, align 4
  %36 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %35, ptr noundef %34) #11
  %37 = add nuw nsw i32 %21, 1
  %38 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef %37) #11
  %39 = icmp ult i32 %38, 32
  br i1 %39, label %20, label %40

40:                                               ; preds = %20, %11
  %41 = add nuw nsw i32 %12, 1
  %42 = load ptr, ptr %1, align 4
  %43 = getelementptr inbounds %struct.host1x_info, ptr %42, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 31
  %46 = lshr i32 %45, 5
  %47 = icmp ult i32 %41, %46
  br i1 %47, label %11, label %48

48:                                               ; preds = %40, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @host1x_debug_show_channel_cdma(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %8 = tail call i32 @host1x_ch_readl(ptr noundef %1, i32 noundef 20) #11
  store i32 %8, ptr %6, align 4
  %9 = tail call i32 @host1x_ch_readl(ptr noundef %1, i32 noundef 32) #11
  store i32 %9, ptr %7, align 4
  %10 = tail call i32 @host1x_ch_readl(ptr noundef %1, i32 noundef 24) #11
  %11 = tail call i32 @host1x_ch_readl(ptr noundef %1, i32 noundef 28) #11
  %12 = tail call i32 @host1x_ch_readl(ptr noundef %1, i32 noundef 36) #11
  %13 = getelementptr inbounds %struct.host1x_channel, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %14, 2
  %16 = add i32 %15, 1824
  %17 = tail call i32 @host1x_sync_readl(ptr noundef %0, i32 noundef %16) #11
  %18 = load i32, ptr %13, align 4
  %19 = shl i32 %18, 2
  %20 = add i32 %19, 1880
  %21 = tail call i32 @host1x_sync_readl(ptr noundef %0, i32 noundef %20) #11
  %22 = load i32, ptr %13, align 4
  %23 = getelementptr inbounds %struct.host1x_channel, ptr %1, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load ptr, ptr %24, align 4
  br label %30

30:                                               ; preds = %28, %3
  %31 = phi ptr [ %29, %28 ], [ %26, %3 ]
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %22, ptr noundef %31) #11
  %32 = and i32 %12, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.host1x_channel, ptr %1, i32 0, i32 6, i32 7
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %30
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.10) #11
  br label %184

39:                                               ; preds = %34
  %40 = lshr i32 %21, 16
  %41 = and i32 %40, 1023
  %42 = icmp eq i32 %41, 1
  %43 = and i32 %21, 65535
  br i1 %42, label %44, label %58

44:                                               ; preds = %39
  %45 = trunc i32 %21 to i16
  switch i16 %45, label %58 [
    i16 8, label %46
    i16 9, label %49
  ]

46:                                               ; preds = %44
  %47 = lshr i32 %17, 24
  %48 = and i32 %17, 16777215
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %47, i32 noundef %48) #11
  br label %59

49:                                               ; preds = %44
  %50 = lshr i32 %17, 16
  %51 = and i32 %50, 255
  %52 = shl nuw nsw i32 %51, 2
  %53 = add nuw nsw i32 %52, 1536
  %54 = tail call i32 @host1x_sync_readl(ptr noundef %0, i32 noundef %53) #11
  %55 = and i32 %17, 65535
  %56 = lshr i32 %17, 24
  %57 = add i32 %54, %55
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %56, i32 noundef %57, i32 noundef %51, i32 noundef %54, i32 noundef %55) #11
  br label %59

58:                                               ; preds = %44, %39
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %41, i32 noundef %43, i32 noundef %17) #11
  br label %59

59:                                               ; preds = %58, %49, %46
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef %10, i32 noundef %11, i32 noundef %12) #11
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %17, i32 noundef %21) #11
  %60 = getelementptr inbounds %struct.host1x_channel, ptr %1, i32 0, i32 6, i32 8
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %183, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.host1x_channel, ptr %1, i32 0, i32 6, i32 7, i32 1
  br label %68

65:                                               ; preds = %179, %109
  %66 = load ptr, ptr %69, align 4
  %67 = icmp eq ptr %66, %60
  br i1 %67, label %183, label %68

68:                                               ; preds = %65, %63
  %69 = phi ptr [ %61, %63 ], [ %66, %65 ]
  %70 = getelementptr i8, ptr %69, i32 52
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.host1x_syncpt, ptr %71, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr i8, ptr %69, i32 60
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr i8, ptr %69, i32 68
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr i8, ptr %69, i32 80
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr i8, ptr %69, i32 36
  %81 = load i32, ptr %80, align 4
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79, i32 noundef %81) #11
  %82 = load i32, ptr %64, align 4
  %83 = getelementptr i8, ptr %69, i32 76
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, %82
  %86 = load i32, ptr %78, align 4
  %87 = shl i32 %86, 1
  %88 = load ptr, ptr %35, align 4
  %89 = getelementptr i8, ptr %88, i32 %84
  %90 = icmp eq i32 %87, 0
  br i1 %90, label %109, label %91

91:                                               ; preds = %105, %68
  %92 = phi i32 [ %107, %105 ], [ 0, %68 ]
  %93 = phi i32 [ %106, %105 ], [ 0, %68 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %94 = shl i32 %92, 2
  %95 = add i32 %85, %94
  store i32 %95, ptr %5, align 4
  %96 = getelementptr i32, ptr %89, i32 %92
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %93, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.22, ptr noundef nonnull %5, i32 noundef %97) #11
  %100 = call fastcc i32 @show_channel_command(ptr noundef %2, i32 noundef %97) #11
  br label %105

101:                                              ; preds = %91
  %102 = icmp eq i32 %93, 1
  %103 = select i1 %102, ptr @.str.25, ptr @.str.24
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef %97, ptr noundef nonnull %103) #11
  %104 = add i32 %93, -1
  br label %105

105:                                              ; preds = %101, %99
  %106 = phi i32 [ %104, %101 ], [ %100, %99 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  %107 = add nuw i32 %92, 1
  %108 = icmp eq i32 %107, %87
  br i1 %108, label %109, label %91

109:                                              ; preds = %105, %68
  %110 = getelementptr i8, ptr %69, i32 20
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %65, label %113

113:                                              ; preds = %109
  %114 = getelementptr i8, ptr %69, i32 16
  %115 = getelementptr i8, ptr %69, i32 92
  br label %116

116:                                              ; preds = %179, %113
  %117 = phi i32 [ 0, %113 ], [ %180, %179 ]
  %118 = load ptr, ptr %114, align 4
  %119 = getelementptr %struct.host1x_job_cmd, ptr %118, i32 %117
  %120 = load i8, ptr %119, align 4, !range !10
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %179

122:                                              ; preds = %116
  %123 = getelementptr %struct.host1x_job_cmd, ptr %118, i32 %117, i32 1
  %124 = load ptr, ptr %115, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.host1x_job_gather, ptr %123, i32 0, i32 2
  %128 = load ptr, ptr %127, align 4
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.host1x_bo_ops, ptr %129, i32 0, i32 4
  %131 = load ptr, ptr %130, align 4
  %132 = call ptr %131(ptr noundef %128) #11
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.19) #11
  br label %179

135:                                              ; preds = %126, %122
  %136 = phi ptr [ %132, %126 ], [ %124, %122 ]
  %137 = getelementptr inbounds %struct.host1x_job_gather, ptr %123, i32 0, i32 1
  %138 = getelementptr inbounds %struct.host1x_job_gather, ptr %123, i32 0, i32 3
  %139 = load i32, ptr %138, align 4
  %140 = load i32, ptr %123, align 4
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.20, ptr noundef %137, i32 noundef %139, i32 noundef %140) #11
  %141 = load i32, ptr %137, align 4
  %142 = load i32, ptr %138, align 4
  %143 = add i32 %142, %141
  %144 = load i32, ptr %123, align 4
  %145 = icmp ugt i32 %142, 102400
  br i1 %145, label %151, label %146

146:                                              ; preds = %135
  %147 = icmp eq i32 %144, 0
  br i1 %147, label %170, label %148

148:                                              ; preds = %146
  %149 = lshr i32 %142, 2
  %150 = getelementptr i32, ptr %136, i32 %149
  br label %152

151:                                              ; preds = %135
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.21) #11
  br label %170

152:                                              ; preds = %166, %148
  %153 = phi i32 [ 0, %148 ], [ %168, %166 ]
  %154 = phi i32 [ 0, %148 ], [ %167, %166 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %155 = shl i32 %153, 2
  %156 = add i32 %143, %155
  store i32 %156, ptr %4, align 4
  %157 = getelementptr i32, ptr %150, i32 %153
  %158 = load i32, ptr %157, align 4
  %159 = icmp eq i32 %154, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.22, ptr noundef nonnull %4, i32 noundef %158) #11
  %161 = call fastcc i32 @show_channel_command(ptr noundef %2, i32 noundef %158) #11
  br label %166

162:                                              ; preds = %152
  %163 = icmp eq i32 %154, 1
  %164 = select i1 %163, ptr @.str.25, ptr @.str.24
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef %158, ptr noundef nonnull %164) #11
  %165 = add i32 %154, -1
  br label %166

166:                                              ; preds = %162, %160
  %167 = phi i32 [ %165, %162 ], [ %161, %160 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %168 = add nuw i32 %153, 1
  %169 = icmp eq i32 %168, %144
  br i1 %169, label %170, label %152

170:                                              ; preds = %166, %151, %146
  %171 = load ptr, ptr %115, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %179

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.host1x_job_gather, ptr %123, i32 0, i32 2
  %175 = load ptr, ptr %174, align 4
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr inbounds %struct.host1x_bo_ops, ptr %176, i32 0, i32 5
  %178 = load ptr, ptr %177, align 4
  call void %178(ptr noundef %175, ptr noundef %136) #11
  br label %179

179:                                              ; preds = %173, %170, %134, %116
  %180 = add nuw i32 %117, 1
  %181 = load i32, ptr %110, align 4
  %182 = icmp ult i32 %180, %181
  br i1 %182, label %116, label %65

183:                                              ; preds = %65, %59
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.17) #11
  br label %184

184:                                              ; preds = %183, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @host1x_debug_show_channel_fifo(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.host1x_channel, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.38, i32 noundef %5) #11
  %6 = tail call i32 @host1x_ch_readl(ptr noundef %1, i32 noundef 0) #11
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.39, i32 noundef %6) #11
  %7 = and i32 %6, 1024
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.40) #11
  br label %53

10:                                               ; preds = %3
  tail call void @host1x_sync_writel(ptr noundef %0, i32 noundef 0, i32 noundef 1868) #11
  %11 = load i32, ptr %4, align 4
  %12 = shl i32 %11, 16
  %13 = and i32 %12, 458752
  %14 = or i32 %13, -2147483648
  tail call void @host1x_sync_writel(ptr noundef %0, i32 noundef %14, i32 noundef 1868) #11
  %15 = tail call i32 @host1x_sync_readl(ptr noundef %0, i32 noundef 1876) #11
  %16 = and i32 %15, 511
  %17 = lshr i32 %15, 16
  %18 = and i32 %17, 511
  %19 = load i32, ptr %4, align 4
  %20 = shl i32 %19, 2
  %21 = add i32 %20, 128
  %22 = tail call i32 @host1x_sync_readl(ptr noundef %0, i32 noundef %21) #11
  %23 = and i32 %22, 511
  %24 = lshr i32 %22, 16
  %25 = and i32 %24, 511
  br label %26

26:                                               ; preds = %43, %10
  %27 = phi i32 [ %16, %10 ], [ %47, %43 ]
  %28 = phi i32 [ 0, %10 ], [ %44, %43 ]
  tail call void @host1x_sync_writel(ptr noundef %0, i32 noundef 0, i32 noundef 1868) #11
  %29 = load i32, ptr %4, align 4
  %30 = shl i32 %29, 16
  %31 = and i32 %30, 458752
  %32 = and i32 %27, 511
  %33 = or i32 %32, %31
  %34 = or i32 %33, -2147483648
  tail call void @host1x_sync_writel(ptr noundef %0, i32 noundef %34, i32 noundef 1868) #11
  %35 = tail call i32 @host1x_sync_readl(ptr noundef %0, i32 noundef 1872) #11
  %36 = icmp eq i32 %28, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.41, i32 noundef %35) #11
  %38 = tail call fastcc i32 @show_channel_command(ptr noundef %2, i32 noundef %35)
  br label %43

39:                                               ; preds = %26
  %40 = icmp eq i32 %28, 1
  %41 = select i1 %40, ptr @.str.25, ptr @.str.24
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef %35, ptr noundef nonnull %41) #11
  %42 = add i32 %28, -1
  br label %43

43:                                               ; preds = %39, %37
  %44 = phi i32 [ %42, %39 ], [ %38, %37 ]
  %45 = icmp eq i32 %27, %25
  %46 = add i32 %27, 1
  %47 = select i1 %45, i32 %23, i32 %46
  %48 = icmp eq i32 %47, %18
  br i1 %48, label %49, label %26

49:                                               ; preds = %43
  %50 = icmp eq i32 %44, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %2, ptr noundef nonnull @.str.42) #11
  br label %52

52:                                               ; preds = %51, %49
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.17) #11
  tail call void @host1x_sync_writel(ptr noundef %0, i32 noundef 0, i32 noundef 1868) #11
  br label %53

53:                                               ; preds = %52, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @host1x_debug_show_mlocks(ptr noundef %0, ptr noundef %1) #2 {
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %1, ptr noundef nonnull @.str.43) #11
  %3 = tail call i32 @host1x_syncpt_nb_mlocks(ptr noundef %0) #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %20, %2
  %6 = phi i32 [ %21, %20 ], [ 0, %2 ]
  %7 = shl i32 %6, 2
  %8 = add i32 %7, 832
  %9 = tail call i32 @host1x_sync_readl(ptr noundef %0, i32 noundef %8) #11
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = lshr i32 %9, 8
  %14 = and i32 %13, 15
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %6, i32 noundef %14) #11
  br label %20

15:                                               ; preds = %5
  %16 = and i32 %9, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %6) #11
  br label %20

19:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %1, ptr noundef nonnull @.str.46, i32 noundef %6) #11
  br label %20

20:                                               ; preds = %19, %18, %12
  %21 = add nuw i32 %6, 1
  %22 = tail call i32 @host1x_syncpt_nb_mlocks(ptr noundef %0) #11
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %5, label %24

24:                                               ; preds = %20, %2
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %1, ptr noundef nonnull @.str.17) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_ch_readl(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_debug_output(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @show_channel_command(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = lshr i32 %1, 28
  switch i32 %3, label %56 [
    i32 0, label %4
    i32 1, label %14
    i32 2, label %20
    i32 3, label %26
    i32 4, label %34
    i32 5, label %38
    i32 6, label %40
    i32 14, label %48
  ]

4:                                                ; preds = %2
  %5 = and i32 %1, 63
  %6 = icmp eq i32 %5, 0
  %7 = lshr i32 %1, 6
  %8 = and i32 %7, 1023
  br i1 %6, label %13, label %9

9:                                                ; preds = %4
  %10 = lshr i32 %1, 16
  %11 = and i32 %10, 4095
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %8, i32 noundef %11, i32 noundef %5) #11
  %12 = tail call i32 @__sw_hweight8(i32 noundef %5) #11
  br label %57

13:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %8) #11
  br label %57

14:                                               ; preds = %2
  %15 = and i32 %1, 65535
  %16 = lshr i32 %1, 16
  %17 = and i32 %16, 4095
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %17) #11
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.25) #11
  br label %57

20:                                               ; preds = %2
  %21 = and i32 %1, 65535
  %22 = lshr i32 %1, 16
  %23 = and i32 %22, 4095
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %23) #11
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.25) #11
  br label %57

26:                                               ; preds = %2
  %27 = and i32 %1, 65535
  %28 = lshr i32 %1, 16
  %29 = and i32 %28, 4095
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %29, i32 noundef %27) #11
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.25) #11
  br label %32

32:                                               ; preds = %31, %26
  %33 = tail call i32 @__sw_hweight16(i32 noundef %27) #11
  br label %57

34:                                               ; preds = %2
  %35 = lshr i32 %1, 16
  %36 = and i32 %35, 4095
  %37 = and i32 %1, 65535
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %36, i32 noundef %37) #11
  br label %57

38:                                               ; preds = %2
  %39 = shl i32 %1, 4
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %39) #11
  br label %57

40:                                               ; preds = %2
  %41 = lshr i32 %1, 16
  %42 = and i32 %41, 4095
  %43 = lshr i32 %1, 15
  %44 = and i32 %43, 1
  %45 = lshr i32 %1, 14
  %46 = and i32 %45, 1
  %47 = and i32 %1, 16383
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %47) #11
  br label %57

48:                                               ; preds = %2
  %49 = lshr i32 %1, 24
  %50 = and i32 %49, 15
  switch i32 %50, label %55 [
    i32 0, label %51
    i32 1, label %53
  ]

51:                                               ; preds = %48
  %52 = and i32 %1, 255
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %52) #11
  br label %57

53:                                               ; preds = %48
  %54 = and i32 %1, 255
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef %54) #11
  br label %57

55:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %1) #11
  br label %57

56:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.37) #11
  br label %57

57:                                               ; preds = %56, %55, %53, %51, %40, %38, %34, %32, %25, %20, %19, %14, %13, %9
  %58 = phi i32 [ 0, %56 ], [ 1, %40 ], [ 0, %38 ], [ 0, %34 ], [ 0, %13 ], [ %12, %9 ], [ 0, %19 ], [ %15, %14 ], [ 0, %25 ], [ %21, %20 ], [ %33, %32 ], [ 0, %53 ], [ 0, %55 ], [ 0, %51 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_debug_cont(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight16(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_nb_mlocks(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

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
!8 = !{i64 2153368167}
!9 = !{i64 2153368413}
!10 = !{i8 0, i8 2}
!11 = !{i64 2153350190}
!12 = !{i64 2153350410}
!13 = !{i64 2153389784}
!14 = !{i64 2153390002}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2147981234}
!17 = !{i64 365649, i64 2147855620, i64 2147855646, i64 2147855693, i64 2147855715, i64 2147855743, i64 2147855763}
!18 = !{i64 351712, i64 351736, i64 351757, i64 351774, i64 351791}
!19 = !{i64 2147981434}
!20 = !{i64 2153090687}
!21 = !{i64 2153508791}
!22 = !{!"auto-init"}
