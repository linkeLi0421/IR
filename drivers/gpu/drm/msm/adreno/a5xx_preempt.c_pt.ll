; ModuleID = '/llk/IR/drivers/gpu/drm/msm/adreno/a5xx_preempt.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/a5xx_preempt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.93, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.93 = type { i8, i64 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.68, ptr }
%union.anon.68 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.a5xx_gpu = type { %struct.adreno_gpu, ptr, i64, ptr, i64, ptr, i64, i32, i32, ptr, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [4 x i64], %struct.atomic_t, %struct.timer_list, ptr, i64, ptr, i8 }
%struct.adreno_gpu = type { %struct.msm_gpu, %struct.adreno_rev, ptr, i32, i32, ptr, ptr, i32, [3 x ptr], ptr }
%struct.adreno_rev = type { i8, i8, i8, i8 }
%struct.msm_ringbuffer = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.drm_gpu_scheduler, %struct.list_head, %struct.spinlock, i64, i32, i32, ptr, i64, ptr, %struct.spinlock }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.a5xx_preempt_record = type { i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.79 = type { i32, ptr }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"*ERROR* %s: Preemption failed to complete\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"preempt\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"preempt_counters\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"*ERROR* %s: preemption timed out\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @a5xx_preempt_trigger(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 14
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %100, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #3, !srcloc !9
  br label %7

7:                                                ; preds = %7, %5
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 0, i32 1, ptr elementtype(i32) %6) #3, !srcloc !10
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %7

11:                                               ; preds = %7
  %12 = extractvalue { i32, i32 } %8, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %100

14:                                               ; preds = %11
  %15 = load i32, ptr %2, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %21, label %48

17:                                               ; preds = %21
  %18 = add nuw nsw i32 %22, 1
  %19 = load i32, ptr %2, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %17, %14
  %22 = phi i32 [ %18, %17 ], [ 0, %14 ]
  %23 = getelementptr %struct.msm_gpu, ptr %0, i32 0, i32 13, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.msm_ringbuffer, ptr %24, i32 0, i32 16
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #3
  %27 = getelementptr inbounds %struct.msm_ringbuffer, ptr %24, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.msm_ringbuffer, ptr %24, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = ptrtoint ptr %28 to i32
  %32 = ptrtoint ptr %30 to i32
  %33 = sub i32 %31, %32
  %34 = ashr exact i32 %33, 2
  %35 = srem i32 %34, 8192
  %36 = getelementptr inbounds %struct.msm_ringbuffer, ptr %24, i32 0, i32 13
  %37 = load ptr, ptr %36, align 8
  %38 = load volatile i32, ptr %37, align 8
  %39 = icmp eq i32 %35, %38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #3
  br i1 %39, label %17, label %40

40:                                               ; preds = %21
  %41 = getelementptr inbounds %struct.msm_ringbuffer, ptr %24, i32 0, i32 5
  %42 = getelementptr inbounds %struct.msm_ringbuffer, ptr %24, i32 0, i32 3
  %43 = icmp eq ptr %24, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 9
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, %24
  br i1 %47, label %48, label %68

48:                                               ; preds = %44, %40, %17, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  store volatile i32 2, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !13
  %49 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 9
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %67, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.msm_ringbuffer, ptr %50, i32 0, i32 16
  %54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %53) #3
  %55 = getelementptr inbounds %struct.msm_ringbuffer, ptr %50, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.msm_ringbuffer, ptr %50, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = ptrtoint ptr %56 to i32
  %60 = ptrtoint ptr %58 to i32
  %61 = sub i32 %59, %60
  %62 = ashr exact i32 %61, 2
  %63 = srem i32 %62, 8192
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %54) #3
  %64 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr i8, ptr %65, i32 8220
  tail call void @msm_writel(i32 noundef %63, ptr noundef %66) #3
  br label %67

67:                                               ; preds = %52, %48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  store volatile i32 0, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !13
  br label %100

68:                                               ; preds = %44
  %69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #3
  %70 = load ptr, ptr %41, align 4
  %71 = load ptr, ptr %42, align 4
  %72 = ptrtoint ptr %70 to i32
  %73 = ptrtoint ptr %71 to i32
  %74 = sub i32 %72, %73
  %75 = ashr exact i32 %74, 2
  %76 = srem i32 %75, 8192
  %77 = getelementptr inbounds %struct.msm_ringbuffer, ptr %24, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr %struct.a5xx_gpu, ptr %0, i32 0, i32 13, i32 %78
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.a5xx_preempt_record, ptr %80, i32 0, i32 5
  store i32 %76, ptr %81, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %69) #3
  %82 = load i32, ptr %77, align 4
  %83 = getelementptr %struct.a5xx_gpu, ptr %0, i32 0, i32 14, i32 %82
  %84 = load i64, ptr %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr i8, ptr %87, i32 8432
  tail call void @msm_writel(i32 noundef %85, ptr noundef %88) #3
  %89 = lshr i64 %84, 32
  %90 = trunc i64 %89 to i32
  %91 = load ptr, ptr %86, align 8
  %92 = getelementptr i8, ptr %91, i32 8436
  tail call void @msm_writel(i32 noundef %90, ptr noundef %92) #3
  %93 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 10
  store ptr %24, ptr %93, align 4
  %94 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 16
  %95 = load volatile i32, ptr @jiffies, align 64
  %96 = add i32 %95, 1000
  %97 = tail call i32 @mod_timer(ptr noundef %94, i32 noundef %96) #3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  store volatile i32 3, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %98 = load ptr, ptr %86, align 8
  %99 = getelementptr i8, ptr %98, i32 8428
  tail call void @msm_writel(i32 noundef 1, ptr noundef %99) #3
  br label %100

100:                                              ; preds = %68, %67, %11, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @a5xx_preempt_irq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #3, !srcloc !9
  br label %5

5:                                                ; preds = %5, %1
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 3, i32 5, ptr elementtype(i32) %4) #3, !srcloc !10
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %5

9:                                                ; preds = %5
  %10 = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !11
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %48

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 16
  %14 = tail call i32 @del_timer(ptr noundef %13) #3
  %15 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %16, i32 8428
  %18 = tail call i32 @msm_readl(ptr noundef %17) #3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20, !prof !15

20:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  store volatile i32 4, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !13
  %21 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %23) #3
  %24 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 39
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 36
  %27 = tail call zeroext i1 @kthread_queue_work(ptr noundef %25, ptr noundef %26) #3
  br label %48

28:                                               ; preds = %12
  %29 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 10
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 9
  store ptr %30, ptr %31, align 8
  store ptr null, ptr %29, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %47, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.msm_ringbuffer, ptr %30, i32 0, i32 16
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #3
  %36 = getelementptr inbounds %struct.msm_ringbuffer, ptr %30, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.msm_ringbuffer, ptr %30, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = ptrtoint ptr %37 to i32
  %41 = ptrtoint ptr %39 to i32
  %42 = sub i32 %40, %41
  %43 = ashr exact i32 %42, 2
  %44 = srem i32 %43, 8192
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %35) #3
  %45 = load ptr, ptr %15, align 8
  %46 = getelementptr i8, ptr %45, i32 8220
  tail call void @msm_writel(i32 noundef %44, ptr noundef %46) #3
  br label %47

47:                                               ; preds = %33, %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  store volatile i32 0, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !13
  br label %48

48:                                               ; preds = %47, %20, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @a5xx_preempt_hw_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 9
  store ptr %3, ptr %4, align 8
  %5 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %33, label %8

8:                                                ; preds = %1
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %10, %8
  %11 = phi i32 [ %23, %10 ], [ 0, %8 ]
  %12 = getelementptr %struct.a5xx_gpu, ptr %0, i32 0, i32 13, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.a5xx_preempt_record, ptr %13, i32 0, i32 5
  store i32 0, ptr %14, align 4
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.a5xx_preempt_record, ptr %15, i32 0, i32 4
  store i32 0, ptr %16, align 8
  %17 = getelementptr %struct.msm_gpu, ptr %0, i32 0, i32 13, i32 %11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.msm_ringbuffer, ptr %18, i32 0, i32 10
  %20 = load i64, ptr %19, align 8
  %21 = load ptr, ptr %12, align 4
  %22 = getelementptr inbounds %struct.a5xx_preempt_record, ptr %21, i32 0, i32 7
  store i64 %20, ptr %22, align 8
  %23 = add nuw nsw i32 %11, 1
  %24 = load i32, ptr %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %10, label %26

26:                                               ; preds = %10, %8
  %27 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr i8, ptr %28, i32 8448
  tail call void @msm_writel(i32 noundef 0, ptr noundef %29) #3
  %30 = load ptr, ptr %27, align 8
  %31 = getelementptr i8, ptr %30, i32 8452
  tail call void @msm_writel(i32 noundef 0, ptr noundef %31) #3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  %32 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 15
  store volatile i32 0, ptr %32, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !13
  br label %33

33:                                               ; preds = %26, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @a5xx_preempt_fini(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 14
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 24
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %15, %7 ]
  %9 = getelementptr %struct.a5xx_gpu, ptr %0, i32 0, i32 11, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %6, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %10, ptr noundef %11) #3
  %12 = getelementptr %struct.a5xx_gpu, ptr %0, i32 0, i32 12, i32 %8
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %6, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %13, ptr noundef %14) #3
  %15 = add nuw nsw i32 %8, 1
  %16 = load i32, ptr %2, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %7, label %18

18:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_kernel_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @a5xx_preempt_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %74, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 24
  %12 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 18
  br label %13

13:                                               ; preds = %29, %9
  %14 = phi i32 [ 0, %9 ], [ %54, %29 ]
  %15 = getelementptr %struct.msm_gpu, ptr %0, i32 0, i32 13, i32 %14
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  store ptr null, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store ptr null, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #3
  store i64 0, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #3
  store i64 0, ptr %5, align 8
  %17 = load ptr, ptr %10, align 4
  %18 = load ptr, ptr %11, align 8
  %19 = call ptr @msm_gem_kernel_new(ptr noundef %17, i32 noundef 65600, i32 noundef 537001984, ptr noundef %18, ptr noundef nonnull %2, ptr noundef nonnull %4) #3
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %57, label %21

21:                                               ; preds = %13
  %22 = load ptr, ptr %10, align 4
  %23 = load ptr, ptr %11, align 8
  %24 = call ptr @msm_gem_kernel_new(ptr noundef %22, i32 noundef 64, i32 noundef 131072, ptr noundef %23, ptr noundef nonnull %3, ptr noundef nonnull %5) #3
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  %26 = load ptr, ptr %2, align 4
  br i1 %25, label %27, label %29

27:                                               ; preds = %21
  %28 = load ptr, ptr %11, align 8
  call void @msm_gem_kernel_put(ptr noundef %26, ptr noundef %28) #3
  br label %57

29:                                               ; preds = %21
  call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %26, ptr noundef nonnull @.str.2) #3
  %30 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %30, ptr noundef nonnull @.str.3) #3
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr inbounds %struct.msm_ringbuffer, ptr %16, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr %struct.a5xx_gpu, ptr %0, i32 0, i32 11, i32 %33
  store ptr %31, ptr %34, align 4
  %35 = load ptr, ptr %3, align 4
  %36 = load i32, ptr %32, align 4
  %37 = getelementptr %struct.a5xx_gpu, ptr %0, i32 0, i32 12, i32 %36
  store ptr %35, ptr %37, align 4
  %38 = load i64, ptr %4, align 8
  %39 = load i32, ptr %32, align 4
  %40 = getelementptr %struct.a5xx_gpu, ptr %0, i32 0, i32 14, i32 %39
  store i64 %38, ptr %40, align 8
  %41 = load i32, ptr %32, align 4
  %42 = getelementptr %struct.a5xx_gpu, ptr %0, i32 0, i32 13, i32 %41
  store ptr %19, ptr %42, align 4
  store i32 667204348, ptr %19, align 8
  %43 = getelementptr inbounds %struct.a5xx_preempt_record, ptr %19, i32 0, i32 1
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.a5xx_preempt_record, ptr %19, i32 0, i32 2
  store i32 0, ptr %44, align 8
  %45 = getelementptr inbounds %struct.a5xx_preempt_record, ptr %19, i32 0, i32 3
  store i32 134218252, ptr %45, align 4
  %46 = load i64, ptr %12, align 8
  %47 = load i32, ptr %32, align 4
  %48 = shl i32 %47, 2
  %49 = zext i32 %48 to i64
  %50 = add i64 %46, %49
  %51 = getelementptr inbounds %struct.a5xx_preempt_record, ptr %19, i32 0, i32 6
  store i64 %50, ptr %51, align 8
  %52 = load i64, ptr %5, align 8
  %53 = getelementptr inbounds %struct.a5xx_preempt_record, ptr %19, i32 0, i32 8
  store i64 %52, ptr %53, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  %54 = add nuw nsw i32 %14, 1
  %55 = load i32, ptr %6, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %13, label %72

57:                                               ; preds = %27, %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  %58 = load i32, ptr %6, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %60, %57
  %61 = phi i32 [ %68, %60 ], [ 0, %57 ]
  %62 = getelementptr %struct.a5xx_gpu, ptr %0, i32 0, i32 11, i32 %61
  %63 = load ptr, ptr %62, align 4
  %64 = load ptr, ptr %11, align 8
  call void @msm_gem_kernel_put(ptr noundef %63, ptr noundef %64) #3
  %65 = getelementptr %struct.a5xx_gpu, ptr %0, i32 0, i32 12, i32 %61
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %11, align 8
  call void @msm_gem_kernel_put(ptr noundef %66, ptr noundef %67) #3
  %68 = add nuw nsw i32 %61, 1
  %69 = load i32, ptr %6, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %60, label %71

71:                                               ; preds = %60, %57
  store i32 1, ptr %6, align 4
  br label %74

72:                                               ; preds = %29
  %73 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 16
  call void @init_timer_key(ptr noundef %73, ptr noundef nonnull @a5xx_preempt_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #3
  br label %74

74:                                               ; preds = %72, %71, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @a5xx_preempt_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -808
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #3, !srcloc !9
  br label %5

5:                                                ; preds = %5, %1
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 3, i32 4, ptr elementtype(i32) %4) #3, !srcloc !10
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %5

9:                                                ; preds = %5
  %10 = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !11
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %0, i32 -812
  %14 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, ptr noundef %16) #3
  %17 = getelementptr i8, ptr %0, i32 -468
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %0, i32 -520
  %20 = tail call zeroext i1 @kthread_queue_work(ptr noundef %18, ptr noundef %19) #3
  br label %21

21:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_kernel_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_object_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
!8 = !{i64 2148287727}
!9 = !{i64 672915, i64 2148162886, i64 2148162912, i64 2148162959, i64 2148162981, i64 2148163009, i64 2148163029}
!10 = !{i64 658978, i64 659002, i64 659023, i64 659040, i64 659057}
!11 = !{i64 2148287927}
!12 = !{i64 2156132692}
!13 = !{i64 2156132843}
!14 = !{i64 2156138161}
!15 = !{!"branch_weights", i32 2000, i32 1}
