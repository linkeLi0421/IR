; ModuleID = '/llk/IR/drivers/gpu/host1x/hw/host1x07.c_pt.bc'
source_filename = "../drivers/gpu/host1x/hw/host1x07.c"
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
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.iommu_fwspec = type { ptr, ptr, i32, i32, [0 x i32] }
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
@.str.3 = private unnamed_addr constant [45 x i8] c"%s: timeout: %u (%s), HW thresh %d, done %d\0A\00", align 1
@__func__.cdma_timeout_handler = private unnamed_addr constant [21 x i8] c"cdma_timeout_handler\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Already torn down\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"%s failed: id=%u, min=%d, max=%d\0A\00", align 1
@__func__.syncpt_load = private unnamed_addr constant [12 x i8] c"syncpt_load\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"host1x_syncpt\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"drivers/gpu/host1x/hw/intr_hw.c\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"%u-%s: \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"inactive\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"waiting on syncpt\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"active class %02x, offset %04x\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"DMASTART %pad, DMAEND %pad\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"DMAPUT %08x DMAGET %08x DMACTL %08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"CHANNELSTAT %02x\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [62 x i8] c"JOB, syncpt %u: %u timeout: %u num_slots: %u num_handles: %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"[could not mmap]\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"  GATHER at %pad+%#x, %d words\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"[address mismatch]\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"    %pad: %08x: \00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"%08x%s\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"])\0A\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"SETCL(class=%03x, offset=%03x, mask=%02x, [\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"SETCL(class=%03x)\0A\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"INCR(offset=%03x, [\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"NONINCR(offset=%03x, [\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"MASK(offset=%03x, mask=%03x, [\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"IMM(offset=%03x, data=%03x)\0A\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"RESTART(offset=%08x)\0A\00", align 1
@.str.31 = private unnamed_addr constant [59 x i8] c"GATHER(offset=%03x, insert=%d, type=%d, count=%04x, addr=[\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"SETSTRMID(offset=%06x)\0A\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"SETAPPID(appid=%02x)\0A\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"SETPYLD(data=%04x)\0A\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"%s(offset=%06x, \00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"INCR_W\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"NONINCR_W\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"[])\0A\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"unknown)\0A\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"GATHER_W(count=%04x, addr=[\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"ACQUIRE_MLOCK(index=%d)\0A\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"RELEASE_MLOCK(index=%d)\0A\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"EXTEND_UNKNOWN(%08x)\0A\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"UNKNOWN\0A\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"%u: fifo:\0A\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"CMDFIFO_STAT %08x\0A\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"[empty]\0A\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"CMDFIFO_RDATA %08x\0A\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @host1x07_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
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
  %6 = shl i32 %2, 8
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
  br i1 %47, label %48, label %258

48:                                               ; preds = %42
  %49 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %50 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3520, i32 noundef 32) #12
  %51 = icmp eq ptr %50, null
  br i1 %51, label %255, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %8, align 4
  %54 = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 35
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.dev_iommu, ptr %57, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.iommu_fwspec, ptr %61, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 65535
  br label %67

67:                                               ; preds = %63, %59, %52
  %68 = phi i32 [ %66, %63 ], [ 127, %59 ], [ 127, %52 ]
  tail call void @host1x_ch_writel(ptr noundef %3, i32 noundef %68, i32 noundef 132) #11
  %69 = load ptr, ptr %8, align 4
  %70 = getelementptr inbounds %struct.device, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.device, ptr %71, i32 0, i32 8
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.host1x, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %91, label %77

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.host1x_channel, ptr %3, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = lshr i32 %79, 3
  %81 = and i32 %80, 536870908
  %82 = add nuw nsw i32 %81, 8224
  %83 = tail call i32 @host1x_hypervisor_readl(ptr noundef %73, i32 noundef %82) #11
  %84 = load i32, ptr %78, align 4
  %85 = and i32 %84, 31
  %86 = shl nuw i32 1, %85
  %87 = or i32 %86, %83
  %88 = lshr i32 %84, 3
  %89 = and i32 %88, 536870908
  %90 = add nuw nsw i32 %89, 8224
  tail call void @host1x_hypervisor_writel(ptr noundef %73, i32 noundef %87, i32 noundef %90) #11
  br label %91

91:                                               ; preds = %77, %67
  %92 = getelementptr inbounds %struct.host1x_channel, ptr %3, i32 0, i32 6
  %93 = tail call i32 @host1x_cdma_begin(ptr noundef %92, ptr noundef %0) #11
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %255

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 27
  %97 = load i8, ptr %96, align 4, !range !10
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %4, align 4
  %101 = getelementptr inbounds %struct.host1x_syncpt, ptr %100, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = tail call i32 @host1x_syncpt_read_max(ptr noundef %5) #11
  %104 = shl i32 %102, 24
  %105 = and i32 %103, 16777215
  %106 = or i32 %105, %104
  tail call void @host1x_cdma_push(ptr noundef %92, i32 noundef 524353, i32 noundef %106) #11
  br label %107

107:                                              ; preds = %99, %95
  %108 = getelementptr inbounds %struct.host1x_syncpt, ptr %5, i32 0, i32 8
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %122, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr %4, align 4
  %113 = tail call i32 @host1x_syncpt_read_max(ptr noundef %112) #11
  %114 = getelementptr inbounds %struct.host1x_syncpt, ptr %112, i32 0, i32 8
  %115 = load ptr, ptr %114, align 4
  %116 = load i32, ptr %115, align 4
  %117 = load ptr, ptr %2, align 4
  %118 = getelementptr inbounds %struct.host1x_channel, ptr %117, i32 0, i32 6
  %119 = shl i32 %116, 24
  %120 = and i32 %113, 16777215
  %121 = or i32 %119, %120
  tail call void @host1x_cdma_push(ptr noundef %118, i32 noundef 720961, i32 noundef %121) #11
  br label %122

122:                                              ; preds = %111, %107
  %123 = tail call i32 @host1x_syncpt_incr_max(ptr noundef %5, i32 noundef %7) #11
  %124 = getelementptr inbounds %struct.host1x, ptr %13, i32 0, i32 15
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.host1x_syncpt_ops, ptr %125, i32 0, i32 5
  %127 = load ptr, ptr %126, align 4
  tail call void %127(ptr noundef %5, ptr noundef %3) #11
  store i32 %123, ptr %44, align 4
  %128 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 26
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %122
  %132 = shl i32 %129, 6
  tail call void @host1x_cdma_push(ptr noundef %92, i32 noundef %132, i32 noundef 536870912) #11
  br label %133

133:                                              ; preds = %131, %122
  %134 = sub i32 %123, %7
  %135 = load ptr, ptr %2, align 4
  %136 = getelementptr inbounds %struct.host1x_channel, ptr %135, i32 0, i32 6
  %137 = load i32, ptr %21, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %225, label %139

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 4
  %141 = getelementptr %struct.host1x_channel, ptr %135, i32 0, i32 5
  br label %142

142:                                              ; preds = %221, %139
  %143 = phi i32 [ 0, %139 ], [ %222, %221 ]
  %144 = load ptr, ptr %140, align 4
  %145 = getelementptr %struct.host1x_job_cmd, ptr %144, i32 %143
  %146 = load i8, ptr %145, align 4, !range !10
  %147 = icmp eq i8 %146, 0
  %148 = getelementptr %struct.host1x_job_cmd, ptr %144, i32 %143, i32 1
  br i1 %147, label %161, label %149

149:                                              ; preds = %142
  %150 = getelementptr inbounds %struct.host1x_job_wait, ptr %148, i32 0, i32 3
  %151 = load i8, ptr %150, align 4, !range !10
  %152 = icmp eq i8 %151, 0
  %153 = getelementptr inbounds %struct.host1x_job_wait, ptr %148, i32 0, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = select i1 %152, i32 0, i32 %134
  %156 = add i32 %155, %154
  %157 = load i32, ptr %148, align 4
  %158 = getelementptr inbounds %struct.host1x_job_wait, ptr %148, i32 0, i32 2
  %159 = load i32, ptr %158, align 4
  %160 = shl i32 %159, 6
  tail call void @host1x_cdma_push_wide(ptr noundef %136, i32 noundef 5111877, i32 noundef %156, i32 noundef %157, i32 noundef %160) #11
  br label %221

161:                                              ; preds = %142
  %162 = getelementptr inbounds %struct.host1x_job_gather, ptr %148, i32 0, i32 1
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr inbounds %struct.host1x_job_gather, ptr %148, i32 0, i32 3
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds %struct.host1x_job_gather, ptr %148, i32 0, i32 2
  %167 = load ptr, ptr %166, align 4
  %168 = load i32, ptr %148, align 4
  %169 = load ptr, ptr %141, align 4
  %170 = load i32, ptr @host1x_debug_trace_cmdbuf, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %217, label %172

172:                                              ; preds = %161
  %173 = load ptr, ptr %167, align 4
  %174 = getelementptr inbounds %struct.host1x_bo_ops, ptr %173, i32 0, i32 4
  %175 = load ptr, ptr %174, align 4
  %176 = tail call ptr %175(ptr noundef %167) #11
  %177 = icmp eq ptr %176, null
  br i1 %177, label %217, label %178

178:                                              ; preds = %172
  %179 = icmp eq i32 %168, 0
  br i1 %179, label %213, label %180

180:                                              ; preds = %178
  %181 = getelementptr inbounds %struct.device, ptr %169, i32 0, i32 3
  br label %182

182:                                              ; preds = %210, %180
  %183 = phi i32 [ %165, %180 ], [ %188, %210 ]
  %184 = phi i32 [ 0, %180 ], [ %211, %210 ]
  %185 = sub i32 %168, %184
  %186 = tail call i32 @llvm.umin.i32(i32 %185, i32 128) #11
  %187 = shl i32 %184, 2
  %188 = add i32 %187, %183
  %189 = load ptr, ptr %181, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %193

191:                                              ; preds = %182
  %192 = load ptr, ptr %169, align 4
  br label %193

193:                                              ; preds = %191, %182
  %194 = phi ptr [ %192, %191 ], [ %189, %182 ]
  %195 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_push_gather, i32 0, i32 1), align 4
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %210

197:                                              ; preds = %193
  %198 = tail call ptr @llvm.thread.pointer() #11
  %199 = getelementptr inbounds %struct.thread_info, ptr %198, i32 0, i32 2
  %200 = load i32, ptr %199, align 8
  %201 = lshr i32 %200, 5
  %202 = getelementptr i32, ptr @__cpu_online_mask, i32 %201
  %203 = load volatile i32, ptr %202, align 4
  %204 = and i32 %200, 31
  %205 = shl nuw i32 1, %204
  %206 = and i32 %205, %203
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %197
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  %209 = tail call i32 @__traceiter_host1x_cdma_push_gather(ptr noundef null, ptr noundef %194, ptr noundef %167, i32 noundef %186, i32 noundef %188, ptr noundef nonnull %176) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  br label %210

210:                                              ; preds = %208, %197, %193
  %211 = add i32 %184, 128
  %212 = icmp ult i32 %211, %168
  br i1 %212, label %182, label %213

213:                                              ; preds = %210, %178
  %214 = load ptr, ptr %167, align 4
  %215 = getelementptr inbounds %struct.host1x_bo_ops, ptr %214, i32 0, i32 5
  %216 = load ptr, ptr %215, align 4
  tail call void %216(ptr noundef %167, ptr noundef nonnull %176) #11
  br label %217

217:                                              ; preds = %213, %172, %161
  %218 = add i32 %165, %163
  %219 = load i32, ptr %148, align 4
  %220 = or i32 %219, 1610612736
  tail call void @host1x_cdma_push(ptr noundef %136, i32 noundef %220, i32 noundef %218) #11
  br label %221

221:                                              ; preds = %217, %149
  %222 = add nuw i32 %143, 1
  %223 = load i32, ptr %21, align 4
  %224 = icmp ult i32 %222, %223
  br i1 %224, label %142, label %225

225:                                              ; preds = %221, %133
  tail call void @host1x_cdma_end(ptr noundef %92, ptr noundef %0) #11
  %226 = load ptr, ptr %8, align 4
  %227 = getelementptr inbounds %struct.device, ptr %226, i32 0, i32 3
  %228 = load ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %232

230:                                              ; preds = %225
  %231 = load ptr, ptr %226, align 4
  br label %232

232:                                              ; preds = %230, %225
  %233 = phi ptr [ %231, %230 ], [ %228, %225 ]
  %234 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_channel_submitted, i32 0, i32 1), align 4
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %236, label %249

236:                                              ; preds = %232
  %237 = tail call ptr @llvm.thread.pointer() #11
  %238 = getelementptr inbounds %struct.thread_info, ptr %237, i32 0, i32 2
  %239 = load i32, ptr %238, align 8
  %240 = lshr i32 %239, 5
  %241 = getelementptr i32, ptr @__cpu_online_mask, i32 %240
  %242 = load volatile i32, ptr %241, align 4
  %243 = and i32 %239, 31
  %244 = shl nuw i32 1, %243
  %245 = and i32 %244, %242
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %249, label %247

247:                                              ; preds = %236
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %248 = tail call i32 @__traceiter_host1x_channel_submitted(ptr noundef null, ptr noundef %233, i32 noundef %43, i32 noundef %123) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  br label %249

249:                                              ; preds = %247, %236, %232
  %250 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 16
  %251 = tail call i32 @host1x_intr_add_action(ptr noundef %13, ptr noundef %5, i32 noundef %123, i32 noundef 0, ptr noundef %3, ptr noundef nonnull %50, ptr noundef %250) #11
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %254, label %253, !prof !15

253:                                              ; preds = %249
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 263, i32 noundef 9, ptr noundef nonnull @.str.1) #11
  br label %254

254:                                              ; preds = %253, %249
  tail call void @mutex_unlock(ptr noundef %45) #11
  br label %261

255:                                              ; preds = %91, %48
  %256 = phi i32 [ -12, %48 ], [ %93, %91 ]
  %257 = phi ptr [ null, %48 ], [ %50, %91 ]
  tail call void @mutex_unlock(ptr noundef %45) #11
  br label %258

258:                                              ; preds = %255, %42
  %259 = phi i32 [ %46, %42 ], [ %256, %255 ]
  %260 = phi ptr [ null, %42 ], [ %257, %255 ]
  tail call void @kfree(ptr noundef %260) #11
  br label %261

261:                                              ; preds = %258, %254
  %262 = phi i32 [ %259, %258 ], [ 0, %254 ]
  ret i32 %262
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_ch_writel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_hypervisor_readl(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_hypervisor_writel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_cdma_push_wide(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

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
  tail call void @host1x_ch_writel(ptr noundef %6, i32 noundef 1, i32 noundef 32) #11
  tail call void @host1x_ch_writel(ptr noundef %6, i32 noundef %11, i32 noundef 0) #11
  tail call void @host1x_ch_writel(ptr noundef %6, i32 noundef 0, i32 noundef 4) #11
  %15 = load i32, ptr %7, align 8
  tail call void @host1x_ch_writel(ptr noundef %6, i32 noundef %15, i32 noundef 8) #11
  tail call void @host1x_ch_writel(ptr noundef %6, i32 noundef 0, i32 noundef 12) #11
  tail call void @host1x_ch_writel(ptr noundef %6, i32 noundef %14, i32 noundef 24) #11
  tail call void @host1x_ch_writel(ptr noundef %6, i32 noundef 0, i32 noundef 28) #11
  tail call void @host1x_ch_writel(ptr noundef %6, i32 noundef 7, i32 noundef 32) #11
  tail call void @host1x_ch_writel(ptr noundef %6, i32 noundef 0, i32 noundef 32) #11
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
  tail call void @host1x_ch_writel(ptr noundef %6, i32 noundef 1, i32 noundef 32) #11
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
  tail call void @host1x_ch_writel(ptr noundef %8, i32 noundef %3, i32 noundef 8) #11
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.4) #13
  br label %21

19:                                               ; preds = %12, %1
  tail call void @host1x_ch_writel(ptr noundef %2, i32 noundef 1, i32 noundef 72) #11
  tail call void @host1x_ch_writel(ptr noundef %2, i32 noundef 1, i32 noundef 32) #11
  tail call void @host1x_ch_writel(ptr noundef %2, i32 noundef 1, i32 noundef 76) #11
  %20 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 10
  store i8 0, ptr %20, align 8
  store i8 1, ptr %9, align 1
  br label %21

21:                                               ; preds = %19, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdma_resume(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -40
  tail call void @host1x_ch_writel(ptr noundef %3, i32 noundef 0, i32 noundef 72) #11
  %4 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 11
  store i8 0, ptr %4, align 1
  %5 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 10
  %6 = load i8, ptr %5, align 8, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 6
  store i32 %10, ptr %11, align 4
  tail call void @host1x_ch_writel(ptr noundef %3, i32 noundef 1, i32 noundef 32) #11
  %12 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.host1x_cdma, ptr %0, i32 0, i32 7, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 4
  tail call void @host1x_ch_writel(ptr noundef %3, i32 noundef %13, i32 noundef 0) #11
  tail call void @host1x_ch_writel(ptr noundef %3, i32 noundef 0, i32 noundef 4) #11
  tail call void @host1x_ch_writel(ptr noundef %3, i32 noundef %16, i32 noundef 24) #11
  tail call void @host1x_ch_writel(ptr noundef %3, i32 noundef 0, i32 noundef 28) #11
  tail call void @host1x_ch_writel(ptr noundef %3, i32 noundef %1, i32 noundef 8) #11
  tail call void @host1x_ch_writel(ptr noundef %3, i32 noundef 7, i32 noundef 32) #11
  tail call void @host1x_ch_writel(ptr noundef %3, i32 noundef 1, i32 noundef 32) #11
  %17 = load i32, ptr %9, align 8
  tail call void @host1x_ch_writel(ptr noundef %3, i32 noundef %17, i32 noundef 8) #11
  tail call void @host1x_ch_writel(ptr noundef %3, i32 noundef 0, i32 noundef 32) #11
  store i8 1, ptr %5, align 8
  br label %18

18:                                               ; preds = %8, %2
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
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_cdma_wait_locked(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdma_timeout_handler(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -96
  %3 = getelementptr i8, ptr %0, i32 -136
  %4 = getelementptr i8, ptr %0, i32 -100
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  tail call void @host1x_debug_dump(ptr noundef %9) #11
  tail call void @mutex_lock(ptr noundef %2) #11
  %10 = getelementptr inbounds %struct.buffer_timeout, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %1
  tail call void @host1x_ch_writel(ptr noundef %3, i32 noundef 1, i32 noundef 72) #11
  %14 = getelementptr inbounds %struct.buffer_timeout, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @host1x_syncpt_load(ptr noundef %15) #11
  %17 = getelementptr inbounds %struct.buffer_timeout, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %16, %18
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  tail call void @host1x_ch_writel(ptr noundef %3, i32 noundef 0, i32 noundef 72) #11
  br label %35

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.host1x, ptr %9, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %14, align 8
  %26 = getelementptr inbounds %struct.host1x_syncpt, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.host1x_syncpt, ptr %25, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.cdma_timeout_handler, i32 noundef %27, ptr noundef %29, i32 noundef %16, i32 noundef %18) #13
  %30 = getelementptr inbounds %struct.host1x, ptr %9, i32 0, i32 18
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.host1x_cdma_ops, ptr %31, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef %2) #11
  %34 = load ptr, ptr %4, align 4
  tail call void @host1x_cdma_update_sync_queue(ptr noundef %2, ptr noundef %34) #11
  br label %35

35:                                               ; preds = %22, %21, %1
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
  %8 = add i32 %7, 32896
  tail call void @host1x_sync_writel(ptr noundef %4, i32 noundef %2, i32 noundef %8) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @syncpt_restore_wait_base(ptr nocapture noundef %0) #9 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @syncpt_read_wait_base(ptr nocapture noundef %0) #9 {
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
  %10 = add i32 %9, 32896
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.syncpt_load, i32 noundef %30, i32 noundef %31, i32 noundef %32) #13
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
  %23 = add nuw nsw i32 %22, 25600
  tail call void @host1x_sync_writel(ptr noundef %3, i32 noundef %20, i32 noundef %23) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !21
  tail call void @arm_heavy_mb() #11
  br label %24

24:                                               ; preds = %17, %9
  %25 = phi i32 [ 0, %17 ], [ -22, %9 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @syncpt_assign_to_channel(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.host1x, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.host1x_channel, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 8
  %14 = and i32 %13, 16128
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i32 [ %14, %10 ], [ 16128, %8 ]
  %17 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 %18, 2
  %20 = add i32 %19, 42500
  tail call void @host1x_sync_writel(ptr noundef %4, i32 noundef %16, i32 noundef %20) #11
  br label %21

21:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @syncpt_enable_protection(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @host1x_hypervisor_writel(ptr noundef %0, i32 noundef 2, i32 noundef 6852) #11
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_read_min(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_sync_writel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_sync_readl(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

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
  %33 = tail call i32 @devm_request_threaded_irq(ptr noundef %30, i32 noundef %32, ptr noundef nonnull @syncpt_thresh_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.6, ptr noundef %0) #11
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 97, i32 noundef 9, ptr noundef null) #11
  br label %36

36:                                               ; preds = %35, %28
  %37 = phi i32 [ %33, %35 ], [ 0, %28 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @_host1x_intr_set_syncpt_threshold(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = shl i32 %1, 2
  %5 = add i32 %4, 39296
  tail call void @host1x_sync_writel(ptr noundef %0, i32 noundef %2, i32 noundef %5) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @_host1x_intr_enable_syncpt_intr(ptr noundef %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 31
  %4 = shl nuw i32 1, %3
  %5 = lshr i32 %1, 3
  %6 = and i32 %5, 536870908
  %7 = add nuw nsw i32 %6, 25900
  tail call void @host1x_sync_writel(ptr noundef %0, i32 noundef %4, i32 noundef %7) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @_host1x_intr_disable_syncpt_intr(ptr noundef %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 31
  %4 = shl nuw i32 1, %3
  %5 = lshr i32 %1, 3
  %6 = and i32 %5, 536870908
  %7 = add nuw nsw i32 %6, 26000
  tail call void @host1x_sync_writel(ptr noundef %0, i32 noundef %4, i32 noundef %7) #11
  %8 = add nuw nsw i32 %6, 25700
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
  %10 = add nuw nsw i32 %9, 26000
  tail call void @host1x_sync_writel(ptr noundef %0, i32 noundef -1, i32 noundef %10) #11
  %11 = add nuw nsw i32 %9, 25700
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
  %14 = add nuw nsw i32 %13, 25700
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
  %32 = add nuw nsw i32 %31, 26000
  call void @host1x_sync_writel(ptr noundef %27, i32 noundef %29, i32 noundef %32) #11
  %33 = add nuw nsw i32 %31, 25700
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
define internal void @host1x_debug_show_channel_cdma(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %6 = tail call i32 @host1x_ch_readl(ptr noundef %1, i32 noundef 0) #11
  store i32 %6, ptr %4, align 4
  %7 = tail call i32 @host1x_ch_readl(ptr noundef %1, i32 noundef 24) #11
  store i32 %7, ptr %5, align 4
  %8 = tail call i32 @host1x_ch_readl(ptr noundef %1, i32 noundef 8) #11
  %9 = tail call i32 @host1x_ch_readl(ptr noundef %1, i32 noundef 16) #11
  %10 = tail call i32 @host1x_ch_readl(ptr noundef %1, i32 noundef 32) #11
  %11 = tail call i32 @host1x_ch_readl(ptr noundef %1, i32 noundef 48) #11
  %12 = tail call i32 @host1x_ch_readl(ptr noundef %1, i32 noundef 52) #11
  %13 = tail call i32 @host1x_ch_readl(ptr noundef %1, i32 noundef 56) #11
  %14 = getelementptr inbounds %struct.host1x_channel, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.host1x_channel, ptr %1, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load ptr, ptr %17, align 4
  br label %23

23:                                               ; preds = %21, %3
  %24 = phi ptr [ %22, %21 ], [ %19, %3 ]
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %15, ptr noundef %24) #11
  %25 = and i32 %10, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.host1x_channel, ptr %1, i32 0, i32 6, i32 7
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %23
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.9) #11
  br label %117

32:                                               ; preds = %27
  %33 = icmp eq i32 %12, 1
  %34 = icmp eq i32 %11, 8
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.10) #11
  br label %38

37:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %12, i32 noundef %11) #11
  br label %38

38:                                               ; preds = %37, %36
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.12, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %8, i32 noundef %9, i32 noundef %10) #11
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %13) #11
  %39 = getelementptr inbounds %struct.host1x_channel, ptr %1, i32 0, i32 6, i32 8
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %116, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.host1x_channel, ptr %1, i32 0, i32 6, i32 7, i32 1
  br label %47

44:                                               ; preds = %112, %47
  %45 = load ptr, ptr %48, align 4
  %46 = icmp eq ptr %45, %39
  br i1 %46, label %116, label %47

47:                                               ; preds = %44, %42
  %48 = phi ptr [ %40, %42 ], [ %45, %44 ]
  %49 = getelementptr i8, ptr %48, i32 52
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.host1x_syncpt, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr i8, ptr %48, i32 60
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i8, ptr %48, i32 68
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr i8, ptr %48, i32 80
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr i8, ptr %48, i32 36
  %60 = load i32, ptr %59, align 4
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60) #11
  %61 = load i32, ptr %43, align 4
  %62 = getelementptr i8, ptr %48, i32 76
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, %61
  %65 = load i32, ptr %57, align 4
  %66 = shl i32 %65, 1
  %67 = load ptr, ptr %28, align 4
  %68 = getelementptr i8, ptr %67, i32 %63
  call fastcc void @show_gather(ptr noundef %2, i32 noundef %64, i32 noundef %66, i32 noundef %64, ptr noundef %68) #11
  %69 = getelementptr i8, ptr %48, i32 20
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %44, label %72

72:                                               ; preds = %47
  %73 = getelementptr i8, ptr %48, i32 16
  %74 = getelementptr i8, ptr %48, i32 92
  br label %75

75:                                               ; preds = %112, %72
  %76 = phi i32 [ 0, %72 ], [ %113, %112 ]
  %77 = load ptr, ptr %73, align 4
  %78 = getelementptr %struct.host1x_job_cmd, ptr %77, i32 %76
  %79 = load i8, ptr %78, align 4, !range !10
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %75
  %82 = getelementptr %struct.host1x_job_cmd, ptr %77, i32 %76, i32 1
  %83 = load ptr, ptr %74, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.host1x_job_gather, ptr %82, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.host1x_bo_ops, ptr %88, i32 0, i32 4
  %90 = load ptr, ptr %89, align 4
  %91 = call ptr %90(ptr noundef %87) #11
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.17) #11
  br label %112

94:                                               ; preds = %85, %81
  %95 = phi ptr [ %91, %85 ], [ %83, %81 ]
  %96 = getelementptr inbounds %struct.host1x_job_gather, ptr %82, i32 0, i32 1
  %97 = getelementptr inbounds %struct.host1x_job_gather, ptr %82, i32 0, i32 3
  %98 = load i32, ptr %97, align 4
  %99 = load i32, ptr %82, align 4
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.18, ptr noundef %96, i32 noundef %98, i32 noundef %99) #11
  %100 = load i32, ptr %96, align 4
  %101 = load i32, ptr %97, align 4
  %102 = add i32 %101, %100
  %103 = load i32, ptr %82, align 4
  call fastcc void @show_gather(ptr noundef %2, i32 noundef %102, i32 noundef %103, i32 noundef %100, ptr noundef nonnull %95) #11
  %104 = load ptr, ptr %74, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %94
  %107 = getelementptr inbounds %struct.host1x_job_gather, ptr %82, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.host1x_bo_ops, ptr %109, i32 0, i32 5
  %111 = load ptr, ptr %110, align 4
  call void %111(ptr noundef %108, ptr noundef nonnull %95) #11
  br label %112

112:                                              ; preds = %106, %94, %93, %75
  %113 = add nuw i32 %76, 1
  %114 = load i32, ptr %69, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %75, label %44

116:                                              ; preds = %44, %38
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.15) #11
  br label %117

117:                                              ; preds = %116, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @host1x_debug_show_channel_fifo(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.host1x_channel, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.46, i32 noundef %5) #11
  %6 = tail call i32 @host1x_ch_readl(ptr noundef %1, i32 noundef 36) #11
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.47, i32 noundef %6) #11
  %7 = and i32 %6, 8192
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.48) #11
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @host1x_ch_readl(ptr noundef %1, i32 noundef 40) #11
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %2, ptr noundef nonnull @.str.49, i32 noundef %11) #11
  br label %12

12:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @host1x_debug_show_mlocks(ptr nocapture noundef %0, ptr nocapture noundef %1) #9 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_ch_readl(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_debug_output(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @show_gather(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #2 {
  %6 = alloca i32, align 4
  %7 = sub i32 %1, %3
  %8 = icmp ugt i32 %7, 102400
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %103, label %11

11:                                               ; preds = %9
  %12 = lshr i32 %7, 2
  %13 = getelementptr i32, ptr %4, i32 %12
  br label %15

14:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %0, ptr noundef nonnull @.str.19) #11
  br label %103

15:                                               ; preds = %98, %11
  %16 = phi i32 [ 0, %11 ], [ %101, %98 ]
  %17 = phi i32 [ 0, %11 ], [ %100, %98 ]
  %18 = phi i32 [ -1, %11 ], [ %99, %98 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %19 = shl i32 %16, 2
  %20 = add i32 %19, %1
  store i32 %20, ptr %6, align 4
  %21 = getelementptr i32, ptr %13, i32 %16
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %17, 0
  br i1 %23, label %24, label %94

24:                                               ; preds = %15
  call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull %6, i32 noundef %22) #11
  %25 = lshr i32 %22, 28
  switch i32 %25, label %93 [
    i32 0, label %26
    i32 1, label %36
    i32 2, label %42
    i32 3, label %48
    i32 4, label %56
    i32 5, label %60
    i32 6, label %62
    i32 7, label %70
    i32 8, label %72
    i32 9, label %74
    i32 10, label %76
    i32 11, label %76
    i32 12, label %83
    i32 14, label %85
  ]

26:                                               ; preds = %24
  %27 = and i32 %22, 63
  %28 = icmp eq i32 %27, 0
  %29 = lshr i32 %22, 6
  %30 = and i32 %29, 1023
  br i1 %28, label %35, label %31

31:                                               ; preds = %26
  %32 = lshr i32 %22, 16
  %33 = and i32 %32, 4095
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %30, i32 noundef %33, i32 noundef %27) #11
  %34 = call i32 @__sw_hweight8(i32 noundef %27) #11
  br label %98

35:                                               ; preds = %26
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %30) #11
  br label %98

36:                                               ; preds = %24
  %37 = and i32 %22, 65535
  %38 = lshr i32 %22, 16
  %39 = and i32 %38, 4095
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %39) #11
  %40 = icmp eq i32 %37, 0
  br i1 %40, label %41, label %98

41:                                               ; preds = %36
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.23) #11
  br label %98

42:                                               ; preds = %24
  %43 = and i32 %22, 65535
  %44 = lshr i32 %22, 16
  %45 = and i32 %44, 4095
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %45) #11
  %46 = icmp eq i32 %43, 0
  br i1 %46, label %47, label %98

47:                                               ; preds = %42
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.23) #11
  br label %98

48:                                               ; preds = %24
  %49 = and i32 %22, 65535
  %50 = lshr i32 %22, 16
  %51 = and i32 %50, 4095
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %51, i32 noundef %49) #11
  %52 = icmp eq i32 %49, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.23) #11
  br label %54

54:                                               ; preds = %53, %48
  %55 = call i32 @__sw_hweight16(i32 noundef %49) #11
  br label %98

56:                                               ; preds = %24
  %57 = lshr i32 %22, 16
  %58 = and i32 %57, 4095
  %59 = and i32 %22, 65535
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %58, i32 noundef %59) #11
  br label %98

60:                                               ; preds = %24
  %61 = shl i32 %22, 4
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %61) #11
  br label %98

62:                                               ; preds = %24
  %63 = lshr i32 %22, 16
  %64 = and i32 %63, 4095
  %65 = lshr i32 %22, 15
  %66 = and i32 %65, 1
  %67 = lshr i32 %22, 14
  %68 = and i32 %67, 1
  %69 = and i32 %22, 16383
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %69) #11
  br label %98

70:                                               ; preds = %24
  %71 = and i32 %22, 4194303
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %71) #11
  br label %98

72:                                               ; preds = %24
  %73 = and i32 %22, 255
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %73) #11
  br label %98

74:                                               ; preds = %24
  %75 = and i32 %22, 65535
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %75) #11
  br label %98

76:                                               ; preds = %24, %24
  %77 = icmp eq i32 %25, 10
  %78 = select i1 %77, ptr @.str.36, ptr @.str.37
  %79 = and i32 %22, 4194303
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull %78, i32 noundef %79) #11
  switch i32 %18, label %82 [
    i32 0, label %80
    i32 -1, label %81
  ]

80:                                               ; preds = %76
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.38) #11
  br label %98

81:                                               ; preds = %76
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.39) #11
  br label %98

82:                                               ; preds = %76
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.40) #11
  br label %98

83:                                               ; preds = %24
  %84 = and i32 %22, 16383
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %84) #11
  br label %98

85:                                               ; preds = %24
  %86 = lshr i32 %22, 24
  %87 = and i32 %86, 15
  switch i32 %87, label %92 [
    i32 0, label %88
    i32 1, label %90
  ]

88:                                               ; preds = %85
  %89 = and i32 %22, 255
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %89) #11
  br label %98

90:                                               ; preds = %85
  %91 = and i32 %22, 255
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef %91) #11
  br label %98

92:                                               ; preds = %85
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef %22) #11
  br label %98

93:                                               ; preds = %24
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.45) #11
  br label %98

94:                                               ; preds = %15
  %95 = icmp eq i32 %17, 1
  %96 = select i1 %95, ptr @.str.23, ptr @.str.22
  call void (ptr, ptr, ...) @host1x_debug_cont(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %22, ptr noundef nonnull %96) #11
  %97 = add i32 %17, -1
  br label %98

98:                                               ; preds = %94, %93, %92, %90, %88, %83, %82, %81, %80, %74, %72, %70, %62, %60, %56, %54, %47, %42, %41, %36, %35, %31
  %99 = phi i32 [ %18, %94 ], [ %18, %93 ], [ %18, %92 ], [ %18, %90 ], [ %18, %88 ], [ %18, %83 ], [ %18, %82 ], [ -1, %81 ], [ 0, %80 ], [ %75, %74 ], [ %18, %72 ], [ %18, %70 ], [ %18, %62 ], [ %18, %60 ], [ %18, %56 ], [ %18, %54 ], [ %18, %47 ], [ %18, %42 ], [ %18, %41 ], [ %18, %36 ], [ %18, %35 ], [ %18, %31 ]
  %100 = phi i32 [ %97, %94 ], [ 0, %93 ], [ 0, %92 ], [ 0, %90 ], [ 0, %88 ], [ 2, %83 ], [ %18, %82 ], [ 0, %81 ], [ 0, %80 ], [ 0, %74 ], [ 0, %72 ], [ 0, %70 ], [ 1, %62 ], [ 0, %60 ], [ 0, %56 ], [ %55, %54 ], [ 0, %47 ], [ %43, %42 ], [ 0, %41 ], [ %37, %36 ], [ 0, %35 ], [ %34, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  %101 = add nuw i32 %16, 1
  %102 = icmp eq i32 %101, %2
  br i1 %102, label %103, label %15

103:                                              ; preds = %98, %14, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_debug_cont(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight16(i32 noundef) local_unnamed_addr #4

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
!8 = !{i64 2153354289}
!9 = !{i64 2153354535}
!10 = !{i8 0, i8 2}
!11 = !{i64 2153336312}
!12 = !{i64 2153336532}
!13 = !{i64 2153375906}
!14 = !{i64 2153376124}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2147981274}
!17 = !{i64 365689, i64 2147855660, i64 2147855686, i64 2147855733, i64 2147855755, i64 2147855783, i64 2147855803}
!18 = !{i64 351752, i64 351776, i64 351797, i64 351814, i64 351831}
!19 = !{i64 2147981474}
!20 = !{i64 2153076841}
!21 = !{i64 2153492595}
!22 = !{!"auto-init"}
