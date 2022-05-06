; ModuleID = '/llk/IR/drivers/gpu/drm/panfrost/panfrost_job.c_pt.bc'
source_filename = "../drivers/gpu/drm/panfrost/panfrost_job.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_sched_backend_ops = type { ptr, ptr, ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.panfrost_job = type { %struct.drm_sched_job, %struct.kref, ptr, ptr, ptr, i64, i32, i32, ptr, ptr, i32, ptr }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.70, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.70 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.atomic_t = type { i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
%struct.panfrost_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [3 x ptr], i8, %struct.panfrost_features, ptr, %struct.spinlock, i32, i32, i32, %struct.list_head, ptr, [3 x [2 x ptr]], %struct.list_head, ptr, %struct.mutex, %struct.anon.77, %struct.mutex, %struct.list_head, %struct.shrinker, %struct.panfrost_devfreq }
%struct.panfrost_features = type { i16, i16, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [16 x i32], i32, i32, [2 x i32], [2 x i32] }
%struct.anon.77 = type { ptr, %struct.work_struct, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.panfrost_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i8, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.drm_sched_fence = type { %struct.dma_fence, %struct.dma_fence, ptr, ptr, %struct.spinlock, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.1, i64, i64, i32, %struct.kref, i32 }
%union.anon.1 = type { i64 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.panfrost_gem_mapping = type { %struct.list_head, %struct.kref, ptr, %struct.drm_mm_node, ptr, i8 }
%struct.panfrost_gem_object = type { %struct.drm_gem_shmem_object, ptr, %struct.anon.86, %struct.atomic_t, i8 }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, %struct.mutex, ptr, i32, i32, %struct.list_head, i8, ptr, %struct.mutex, ptr, i32, i8 }
%struct.anon.86 = type { %struct.list_head, %struct.mutex }
%struct.panfrost_job_slot = type { [3 x %struct.panfrost_queue_state], %struct.spinlock, i32 }
%struct.panfrost_queue_state = type { %struct.drm_gpu_scheduler, i64, i64 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.panfrost_file_priv = type { ptr, [3 x %struct.drm_sched_entity], ptr }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.panfrost_fence = type { %struct.dma_fence, ptr, i64, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@.str = private unnamed_addr constant [4 x i8] c"job\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"panfrost-job\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to request job irq\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"panfrost-reset\00", align 1
@panfrost_sched_ops = internal constant %struct.drm_sched_backend_ops { ptr null, ptr @panfrost_job_run, ptr @panfrost_job_timedout, ptr @panfrost_job_free }, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"pan_js\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to create scheduler: %d.\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"drivers/gpu/drm/panfrost/panfrost_job.c\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Soft-stop failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"js fault, js=%d, status=%s, head=0x%x, tail=0x%x\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"include/linux/dma-fence.h\00", align 1
@panfrost_fence_ops = internal constant %struct.dma_fence_ops { i8 0, ptr @panfrost_fence_get_driver_name, ptr @panfrost_fence_get_timeline_name, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"panfrost\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"panfrost-js-0\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"panfrost-js-1\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"panfrost-js-2\00", align 1
@.str.14 = private unnamed_addr constant [87 x i8] c"gpu sched timeout, js=%d, config=0x%x, status=0x%x, head=0x%x, tail=0x%x, sched_job=%p\00", align 1
@switch.table.panfrost_fence_get_timeline_name = private unnamed_addr constant [3 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @panfrost_job_get_slot(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.panfrost_job, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 1
  %5 = xor i32 %4, 1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @panfrost_job_push(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.ww_acquire_ctx, align 4
  %3 = getelementptr inbounds %struct.panfrost_job, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.panfrost_job, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.panfrost_job, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 8
  %9 = call i32 @drm_gem_lock_reservations(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %2) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %71

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.panfrost_device, ptr %4, i32 0, i32 22
  call void @mutex_lock(ptr noundef %12) #9
  call void @drm_sched_job_arm(ptr noundef %0) #9
  %13 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.drm_sched_fence, ptr %14, i32 0, i32 1
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.drm_sched_fence, ptr %14, i32 0, i32 1, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #9, !srcloc !9
  %19 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #9, !srcloc !10
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !11

22:                                               ; preds = %17
  %23 = add i32 %20, 1
  %24 = or i32 %23, %20
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %28, label %26, !prof !12

26:                                               ; preds = %22, %17
  %27 = phi i32 [ 2, %17 ], [ 1, %22 ]
  call void @refcount_warn_saturate(ptr noundef %18, i32 noundef %27) #9
  br label %28

28:                                               ; preds = %26, %22, %11
  %29 = getelementptr inbounds %struct.panfrost_job, ptr %0, i32 0, i32 11
  store ptr %15, ptr %29, align 4
  %30 = load ptr, ptr %5, align 4
  %31 = load i32, ptr %7, align 8
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %36, label %43

33:                                               ; preds = %36
  %34 = add nuw nsw i32 %37, 1
  %35 = icmp eq i32 %34, %31
  br i1 %35, label %43, label %36

36:                                               ; preds = %33, %28
  %37 = phi i32 [ %34, %33 ], [ 0, %28 ]
  %38 = getelementptr ptr, ptr %30, i32 %37
  %39 = load ptr, ptr %38, align 4
  %40 = call i32 @drm_sched_job_add_implicit_dependencies(ptr noundef %0, ptr noundef %39, i1 noundef zeroext true) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %33, label %42

42:                                               ; preds = %36
  call void @mutex_unlock(ptr noundef %12) #9
  br label %67

43:                                               ; preds = %33, %28
  %44 = getelementptr inbounds %struct.panfrost_job, ptr %0, i32 0, i32 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #9, !srcloc !9
  %45 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #9, !srcloc !10
  %46 = extractvalue { i32, i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48, !prof !11

48:                                               ; preds = %43
  %49 = add i32 %46, 1
  %50 = or i32 %49, %46
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %54, label %52, !prof !12

52:                                               ; preds = %48, %43
  %53 = phi i32 [ 2, %43 ], [ 1, %48 ]
  call void @refcount_warn_saturate(ptr noundef %44, i32 noundef %53) #9
  br label %54

54:                                               ; preds = %52, %48
  call void @drm_sched_entity_push_job(ptr noundef %0) #9
  call void @mutex_unlock(ptr noundef %12) #9
  %55 = load ptr, ptr %5, align 4
  %56 = load i32, ptr %7, align 8
  %57 = load ptr, ptr %29, align 4
  %58 = icmp sgt i32 %56, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %59, %54
  %60 = phi i32 [ %65, %59 ], [ 0, %54 ]
  %61 = getelementptr ptr, ptr %55, i32 %60
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.drm_gem_object, ptr %62, i32 0, i32 9
  %64 = load ptr, ptr %63, align 8
  call void @dma_resv_add_excl_fence(ptr noundef %64, ptr noundef %57) #9
  %65 = add nuw nsw i32 %60, 1
  %66 = icmp eq i32 %65, %56
  br i1 %66, label %67, label %59

67:                                               ; preds = %59, %54, %42
  %68 = phi i32 [ %40, %42 ], [ 0, %54 ], [ 0, %59 ]
  %69 = load ptr, ptr %5, align 4
  %70 = load i32, ptr %7, align 8
  call void @drm_gem_unlock_reservations(ptr noundef %69, i32 noundef %70, ptr noundef nonnull %2) #9
  br label %71

71:                                               ; preds = %67, %1
  %72 = phi i32 [ %68, %67 ], [ %9, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  ret i32 %72
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_lock_reservations(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_arm(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_push_job(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_unlock_reservations(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_job_put(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.panfrost_job, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #9, !srcloc !9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #9, !srcloc !14
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %93, label %8, !prof !12

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #9
  br label %93

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %10 = getelementptr %struct.panfrost_job, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dma_fence, ptr %11, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #9, !srcloc !9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #9, !srcloc !14
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = icmp sgt i32 %16, 0
  br i1 %19, label %22, label %20, !prof !12

20:                                               ; preds = %18
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef 3) #9
  br label %22

21:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  tail call void @dma_fence_release(ptr noundef %14) #9, !callees !16
  br label %22

22:                                               ; preds = %21, %20, %18, %9
  %23 = getelementptr %struct.panfrost_job, ptr %0, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dma_fence, ptr %24, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #9, !srcloc !9
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #9, !srcloc !14
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = icmp sgt i32 %29, 0
  br i1 %32, label %35, label %33, !prof !12

33:                                               ; preds = %31
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef 3) #9
  br label %35

34:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  tail call void @dma_fence_release(ptr noundef %27) #9, !callees !16
  br label %35

35:                                               ; preds = %34, %33, %31, %22
  %36 = getelementptr %struct.panfrost_job, ptr %0, i32 0, i32 8
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %63, label %39

39:                                               ; preds = %35
  %40 = getelementptr %struct.panfrost_job, ptr %0, i32 0, i32 10
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %49, %39
  %44 = phi ptr [ %60, %49 ], [ %37, %39 ]
  %45 = phi i32 [ %57, %49 ], [ 0, %39 ]
  %46 = getelementptr ptr, ptr %44, i32 %45
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %61, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %47, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.panfrost_gem_object, ptr %51, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #9, !srcloc !9
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #9, !srcloc !17
  %54 = load ptr, ptr %36, align 8
  %55 = getelementptr ptr, ptr %54, i32 %45
  %56 = load ptr, ptr %55, align 4
  tail call void @panfrost_gem_mapping_put(ptr noundef %56) #9
  %57 = add nuw i32 %45, 1
  %58 = load i32, ptr %40, align 8
  %59 = icmp ult i32 %57, %58
  %60 = load ptr, ptr %36, align 8
  br i1 %59, label %43, label %61

61:                                               ; preds = %49, %43, %39
  %62 = phi ptr [ %37, %39 ], [ %44, %43 ], [ %60, %49 ]
  tail call void @kvfree(ptr noundef %62) #9
  br label %63

63:                                               ; preds = %61, %35
  %64 = getelementptr %struct.panfrost_job, ptr %0, i32 0, i32 9
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %92, label %67

67:                                               ; preds = %63
  %68 = getelementptr %struct.panfrost_job, ptr %0, i32 0, i32 10
  %69 = load i32, ptr %68, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %90, label %71

71:                                               ; preds = %85, %67
  %72 = phi ptr [ %89, %85 ], [ %65, %67 ]
  %73 = phi i32 [ %86, %85 ], [ 0, %67 ]
  %74 = getelementptr ptr, ptr %72, i32 %73
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %71
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %75) #9, !srcloc !9
  %78 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %75, ptr nonnull %75, i32 1, ptr nonnull elementtype(i32) %75) #9, !srcloc !14
  %79 = extractvalue { i32, i32, i32 } %78, 0
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = icmp sgt i32 %79, 0
  br i1 %82, label %85, label %83, !prof !12

83:                                               ; preds = %81
  tail call void @refcount_warn_saturate(ptr noundef nonnull %75, i32 noundef 3) #9
  br label %85

84:                                               ; preds = %77
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  tail call void @drm_gem_object_free(ptr noundef nonnull %75) #9, !callees !16
  br label %85

85:                                               ; preds = %84, %83, %81, %71
  %86 = add nuw i32 %73, 1
  %87 = load i32, ptr %68, align 8
  %88 = icmp ult i32 %86, %87
  %89 = load ptr, ptr %64, align 4
  br i1 %88, label %71, label %90

90:                                               ; preds = %85, %67
  %91 = phi ptr [ %65, %67 ], [ %89, %85 ]
  tail call void @kvfree(ptr noundef %91) #9
  br label %92

92:                                               ; preds = %90, %63
  tail call void @kfree(ptr noundef %0) #9
  br label %93

93:                                               ; preds = %92, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_job_enable_interrupts(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %2 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 458759) #9, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 458759) #9, !srcloc !19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @panfrost_job_init(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 23
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 1, i32 2
  %7 = load ptr, ptr %0, align 8
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 704, i32 noundef 3520) #9
  %9 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 18
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %71, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 23
  %13 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 23, i32 1
  store i32 -32, ptr %13, align 4
  %14 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 23, i32 1, i32 1
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 23, i32 1, i32 1, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 23, i32 1, i32 2
  store ptr @panfrost_reset_work, ptr %16, align 4
  %17 = getelementptr inbounds %struct.panfrost_job_slot, ptr %8, i32 0, i32 1
  store i32 0, ptr %17, align 8
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr i8, ptr %18, i32 -16
  %20 = tail call i32 @platform_get_irq_byname(ptr noundef %19, ptr noundef nonnull @.str) #9
  %21 = getelementptr inbounds %struct.panfrost_job_slot, ptr %8, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  %22 = icmp slt i32 %20, 1
  br i1 %22, label %71, label %23

23:                                               ; preds = %11
  %24 = load ptr, ptr %0, align 8
  %25 = tail call i32 @devm_request_threaded_irq(ptr noundef %24, i32 noundef %20, ptr noundef nonnull @panfrost_job_irq_handler, ptr noundef nonnull @panfrost_job_irq_handler_thread, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %0) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.2) #10
  br label %71

29:                                               ; preds = %23
  %30 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.3, i32 noundef 655362, i32 noundef 1) #9
  store ptr %30, ptr %12, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %71, label %32

32:                                               ; preds = %29
  %33 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #9
  %34 = getelementptr [3 x %struct.panfrost_queue_state], ptr %8, i32 0, i32 0, i32 1
  store i64 %33, ptr %34, align 8
  %35 = load ptr, ptr %12, align 8
  %36 = tail call i32 @drm_sched_init(ptr noundef nonnull %8, ptr noundef nonnull @panfrost_sched_ops, i32 noundef %6, i32 noundef 0, i32 noundef 50, ptr noundef %35, ptr noundef null, ptr noundef nonnull @.str.4) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.5, i32 noundef %36) #10
  br label %68

40:                                               ; preds = %52, %45
  %41 = phi i32 [ 1, %52 ], [ 0, %45 ]
  %42 = phi i32 [ %57, %52 ], [ %50, %45 ]
  %43 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.5, i32 noundef %42) #10
  %44 = getelementptr [3 x %struct.panfrost_queue_state], ptr %8, i32 0, i32 %41
  tail call void @drm_sched_fini(ptr noundef %44) #9
  br i1 %51, label %65, label %68

45:                                               ; preds = %32
  %46 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #9
  %47 = getelementptr [3 x %struct.panfrost_queue_state], ptr %8, i32 0, i32 1
  %48 = getelementptr [3 x %struct.panfrost_queue_state], ptr %8, i32 0, i32 1, i32 1
  store i64 %46, ptr %48, align 8
  %49 = load ptr, ptr %12, align 8
  %50 = tail call i32 @drm_sched_init(ptr noundef %47, ptr noundef nonnull @panfrost_sched_ops, i32 noundef %6, i32 noundef 0, i32 noundef 50, ptr noundef %49, ptr noundef null, ptr noundef nonnull @.str.4) #9
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %40

52:                                               ; preds = %45
  %53 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #9
  %54 = getelementptr [3 x %struct.panfrost_queue_state], ptr %8, i32 0, i32 2
  %55 = getelementptr [3 x %struct.panfrost_queue_state], ptr %8, i32 0, i32 2, i32 1
  store i64 %53, ptr %55, align 8
  %56 = load ptr, ptr %12, align 8
  %57 = tail call i32 @drm_sched_init(ptr noundef %54, ptr noundef nonnull @panfrost_sched_ops, i32 noundef %6, i32 noundef 0, i32 noundef 50, ptr noundef %56, ptr noundef null, ptr noundef nonnull @.str.4) #9
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %40

59:                                               ; preds = %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %60 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 458759) #9, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  %63 = load ptr, ptr %60, align 4
  %64 = getelementptr i8, ptr %63, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 458759) #9, !srcloc !19
  br label %71

65:                                               ; preds = %40
  %66 = add nsw i32 %41, -1
  %67 = getelementptr [3 x %struct.panfrost_queue_state], ptr %8, i32 0, i32 %66
  tail call void @drm_sched_fini(ptr noundef %67) #9
  br label %68

68:                                               ; preds = %65, %40, %38
  %69 = phi i32 [ %36, %38 ], [ %42, %65 ], [ %42, %40 ]
  %70 = load ptr, ptr %12, align 8
  tail call void @destroy_workqueue(ptr noundef %70) #9
  br label %71

71:                                               ; preds = %68, %59, %29, %27, %11, %1
  %72 = phi i32 [ %25, %27 ], [ %69, %68 ], [ 0, %59 ], [ -12, %1 ], [ -19, %11 ], [ -12, %29 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @panfrost_reset_work(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -356
  tail call fastcc void @panfrost_reset(ptr noundef %2, ptr noundef null)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panfrost_job_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4108
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !23
  tail call void @arm_heavy_mb() #9
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %9, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #9, !srcloc !19
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ 2, %8 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panfrost_job_irq_handler_thread(i32 noundef %0, ptr noundef %1) #1 {
  tail call fastcc void @panfrost_job_handle_irqs(ptr noundef %1)
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  tail call void @arm_heavy_mb() #9
  %3 = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 458759) #9, !srcloc !19
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_job_fini(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !25
  tail call void @arm_heavy_mb() #9
  %4 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #9, !srcloc !19
  tail call void @drm_sched_fini(ptr noundef %3) #9
  %7 = getelementptr [3 x %struct.panfrost_queue_state], ptr %3, i32 0, i32 1
  tail call void @drm_sched_fini(ptr noundef %7) #9
  %8 = getelementptr [3 x %struct.panfrost_queue_state], ptr %3, i32 0, i32 2
  tail call void @drm_sched_fini(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 23
  %10 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 23, i32 1
  %11 = tail call zeroext i1 @cancel_work_sync(ptr noundef %10) #9
  %12 = load ptr, ptr %9, align 8
  tail call void @destroy_workqueue(ptr noundef %12) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @panfrost_job_open(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca ptr, align 4
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.panfrost_device, ptr %3, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store ptr %5, ptr %2, align 4
  %6 = getelementptr %struct.panfrost_file_priv, ptr %0, i32 0, i32 1, i32 0
  %7 = call i32 @drm_sched_entity_init(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, i32 noundef 1, ptr noundef null) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19, !prof !12

9:                                                ; preds = %1
  %10 = getelementptr [3 x %struct.panfrost_queue_state], ptr %5, i32 0, i32 1
  store ptr %10, ptr %2, align 4
  %11 = getelementptr %struct.panfrost_file_priv, ptr %0, i32 0, i32 1, i32 1
  %12 = call i32 @drm_sched_entity_init(ptr noundef %11, i32 noundef 1, ptr noundef nonnull %2, i32 noundef 1, ptr noundef null) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19, !prof !12

14:                                               ; preds = %9
  %15 = getelementptr [3 x %struct.panfrost_queue_state], ptr %5, i32 0, i32 2
  store ptr %15, ptr %2, align 4
  %16 = getelementptr %struct.panfrost_file_priv, ptr %0, i32 0, i32 1, i32 2
  %17 = call i32 @drm_sched_entity_init(ptr noundef %16, i32 noundef 1, ptr noundef nonnull %2, i32 noundef 1, ptr noundef null) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19, !prof !12

19:                                               ; preds = %14, %9, %1
  %20 = phi i32 [ %7, %1 ], [ %12, %9 ], [ %17, %14 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 861, i32 noundef 9, ptr noundef null) #9
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi i32 [ %20, %19 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_entity_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_job_close(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr %struct.panfrost_file_priv, ptr %0, i32 0, i32 1, i32 0
  tail call void @drm_sched_entity_destroy(ptr noundef %3) #9
  %4 = getelementptr %struct.panfrost_file_priv, ptr %0, i32 0, i32 1, i32 1
  tail call void @drm_sched_entity_destroy(ptr noundef %4) #9
  %5 = getelementptr %struct.panfrost_file_priv, ptr %0, i32 0, i32 1, i32 2
  tail call void @drm_sched_entity_destroy(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.panfrost_device, ptr %2, i32 0, i32 18
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.panfrost_job_slot, ptr %7, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.panfrost_device, ptr %2, i32 0, i32 3
  %10 = getelementptr inbounds %struct.panfrost_device, ptr %2, i32 0, i32 11, i32 23
  br label %11

11:                                               ; preds = %81, %1
  %12 = phi i32 [ 0, %1 ], [ %82, %81 ]
  %13 = getelementptr %struct.panfrost_file_priv, ptr %0, i32 0, i32 1, i32 %12
  %14 = shl i32 %12, 7
  %15 = add nuw nsw i32 %14, 6240
  %16 = add nuw nsw i32 %14, 6176
  %17 = getelementptr %struct.panfrost_device, ptr %2, i32 0, i32 19, i32 %12, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %50, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.drm_sched_job, ptr %18, i32 0, i32 8
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, %13
  br i1 %23, label %24, label %50

24:                                               ; preds = %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !26
  tail call void @arm_heavy_mb() #9
  %25 = load ptr, ptr %9, align 4
  %26 = getelementptr i8, ptr %25, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #9, !srcloc !19
  %27 = getelementptr inbounds %struct.panfrost_job, ptr %18, i32 0, i32 5
  store i64 0, ptr %27, align 8
  %28 = load volatile i32, ptr %10, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.panfrost_job, ptr %18, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.panfrost_job, ptr %18, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.panfrost_device, ptr %35, i32 0, i32 11, i32 23
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.panfrost_fence, ptr %33, i32 0, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 1
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %31
  br label %46

46:                                               ; preds = %45, %40, %24
  %47 = phi i32 [ 3, %24 ], [ 5, %45 ], [ 7, %40 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !27
  tail call void @arm_heavy_mb() #9
  %48 = load ptr, ptr %9, align 4
  %49 = getelementptr i8, ptr %48, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #9, !srcloc !19
  br label %50

50:                                               ; preds = %46, %20, %11
  %51 = getelementptr %struct.panfrost_device, ptr %2, i32 0, i32 19, i32 %12, i32 0
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %81, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.drm_sched_job, ptr %52, i32 0, i32 8
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, %13
  br i1 %57, label %58, label %81

58:                                               ; preds = %54
  %59 = load volatile i32, ptr %10, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.panfrost_job, ptr %52, i32 0, i32 4
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.panfrost_job, ptr %52, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.panfrost_device, ptr %66, i32 0, i32 11, i32 23
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.panfrost_fence, ptr %64, i32 0, i32 2
  %73 = load i64, ptr %72, align 8
  %74 = and i64 %73, 1
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %62
  br label %77

77:                                               ; preds = %76, %71, %58
  %78 = phi i32 [ 3, %58 ], [ 5, %76 ], [ 7, %71 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !27
  tail call void @arm_heavy_mb() #9
  %79 = load ptr, ptr %9, align 4
  %80 = getelementptr i8, ptr %79, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #9, !srcloc !19
  br label %81

81:                                               ; preds = %77, %54, %50
  %82 = add nuw nsw i32 %12, 1
  %83 = icmp eq i32 %82, 3
  br i1 %83, label %84, label %11

84:                                               ; preds = %81
  %85 = load ptr, ptr %6, align 4
  %86 = getelementptr inbounds %struct.panfrost_job_slot, ptr %85, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  %87 = load i16, ptr %86, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr %86, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @panfrost_job_is_idle(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr [3 x %struct.panfrost_queue_state], ptr %3, i32 0, i32 0, i32 0, i32 7
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = getelementptr [3 x %struct.panfrost_queue_state], ptr %3, i32 0, i32 1, i32 0, i32 7
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr [3 x %struct.panfrost_queue_state], ptr %3, i32 0, i32 2, i32 0, i32 7
  %13 = load volatile i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %11, %7, %1
  %17 = phi i32 [ 0, %1 ], [ 0, %7 ], [ %15, %11 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_add_implicit_dependencies(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_excl_fence(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gem_mapping_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @panfrost_reset(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 23, i32 2
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %195, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 18
  %8 = load ptr, ptr %7, align 4
  tail call void @drm_sched_stop(ptr noundef %8, ptr noundef %1) #9
  %9 = load ptr, ptr %7, align 4
  %10 = getelementptr [3 x %struct.panfrost_queue_state], ptr %9, i32 0, i32 1
  tail call void @drm_sched_stop(ptr noundef %10, ptr noundef %1) #9
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr [3 x %struct.panfrost_queue_state], ptr %11, i32 0, i32 2
  tail call void @drm_sched_stop(ptr noundef %12, ptr noundef %1) #9
  %13 = icmp eq ptr %1, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %6
  tail call void @drm_sched_increase_karma(ptr noundef nonnull %1) #9
  br label %15

15:                                               ; preds = %14, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !32
  tail call void @arm_heavy_mb() #9
  %16 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #9, !srcloc !19
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr inbounds %struct.panfrost_job_slot, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  tail call void @synchronize_irq(i32 noundef %21) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr i8, ptr %22, i32 6240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #9, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %24 = load ptr, ptr %16, align 4
  %25 = getelementptr i8, ptr %24, i32 6176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 2) #9, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %26 = load ptr, ptr %16, align 4
  %27 = getelementptr i8, ptr %26, i32 6368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #9, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %28 = load ptr, ptr %16, align 4
  %29 = getelementptr i8, ptr %28, i32 6304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 2) #9, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %30 = load ptr, ptr %16, align 4
  %31 = getelementptr i8, ptr %30, i32 6496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #9, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %32 = load ptr, ptr %16, align 4
  %33 = getelementptr i8, ptr %32, i32 6432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 2) #9, !srcloc !19
  %34 = tail call i64 @ktime_get() #9
  %35 = add i64 %34, 10000000
  %36 = load ptr, ptr %16, align 4
  %37 = getelementptr i8, ptr %36, i32 4112
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #9, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %77, label %40

40:                                               ; preds = %71, %15
  %41 = phi i32 [ %74, %71 ], [ %38, %15 ]
  %42 = phi i32 [ %61, %71 ], [ -1, %15 ]
  %43 = load ptr, ptr %16, align 4
  %44 = getelementptr i8, ptr %43, i32 4096
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !36
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %40
  %48 = and i32 %45, 65537
  %49 = icmp eq i32 %48, 0
  %50 = and i32 %42, -65538
  %51 = select i1 %49, i32 %42, i32 %50
  %52 = and i32 %45, 131074
  %53 = icmp eq i32 %52, 0
  %54 = and i32 %51, -131075
  %55 = select i1 %53, i32 %51, i32 %54
  %56 = and i32 %45, 262148
  %57 = icmp eq i32 %56, 0
  %58 = and i32 %55, -262149
  %59 = select i1 %57, i32 %55, i32 %58
  br label %60

60:                                               ; preds = %47, %40
  %61 = phi i32 [ %42, %40 ], [ %59, %47 ]
  %62 = and i32 %61, %41
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %60
  %65 = tail call i64 @ktime_get() #9
  %66 = icmp sgt i64 %65, %35
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load ptr, ptr %16, align 4
  %69 = getelementptr i8, ptr %68, i32 4112
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #9, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !37
  br label %77

71:                                               ; preds = %64
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #9
  %72 = load ptr, ptr %16, align 4
  %73 = getelementptr i8, ptr %72, i32 4112
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #9, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !35
  %75 = and i32 %74, %61
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %40

77:                                               ; preds = %71, %67, %60, %15
  %78 = phi i32 [ %61, %67 ], [ -1, %15 ], [ %61, %71 ], [ %61, %60 ]
  %79 = phi i32 [ %70, %67 ], [ 0, %15 ], [ %41, %60 ], [ %74, %71 ]
  %80 = and i32 %79, %78
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %104, label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr %16, align 4
  %84 = getelementptr i8, ptr %83, i32 4096
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #9, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !36
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %82
  %88 = and i32 %85, 65537
  %89 = icmp eq i32 %88, 0
  %90 = and i32 %78, -65538
  %91 = select i1 %89, i32 %78, i32 %90
  %92 = and i32 %85, 131074
  %93 = icmp eq i32 %92, 0
  %94 = and i32 %91, -131075
  %95 = select i1 %93, i32 %91, i32 %94
  %96 = and i32 %85, 262148
  %97 = icmp eq i32 %96, 0
  %98 = and i32 %95, -262149
  %99 = select i1 %97, i32 %95, i32 %98
  %100 = and i32 %99, %79
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %87, %82
  %103 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.7) #10
  br label %104

104:                                              ; preds = %102, %87, %77
  tail call fastcc void @panfrost_job_handle_irqs(ptr noundef %0)
  %105 = load ptr, ptr %7, align 4
  %106 = getelementptr inbounds %struct.panfrost_job_slot, ptr %105, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %106) #9
  %107 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 27
  %108 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 19, i32 0, i32 0
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %130, label %111

111:                                              ; preds = %104
  %112 = load ptr, ptr %0, align 8
  %113 = getelementptr inbounds %struct.device, ptr %112, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %113) #9, !srcloc !9
  %114 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %113, ptr %113, i32 0, i32 -1, ptr elementtype(i32) %113) #9, !srcloc !39
  %115 = extractvalue { i32, i32, i32 } %114, 0
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %111
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !40
  br label %118

118:                                              ; preds = %117, %111
  tail call void @panfrost_devfreq_record_idle(ptr noundef %107) #9
  %119 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 19, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %130, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %0, align 8
  %124 = getelementptr inbounds %struct.device, ptr %123, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %124) #9, !srcloc !9
  %125 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %124, ptr %124, i32 0, i32 -1, ptr elementtype(i32) %124) #9, !srcloc !39
  %126 = extractvalue { i32, i32, i32 } %125, 0
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %122
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !40
  br label %129

129:                                              ; preds = %128, %122
  tail call void @panfrost_devfreq_record_idle(ptr noundef %107) #9
  br label %130

130:                                              ; preds = %129, %118, %104
  %131 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 19, i32 1, i32 0
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %153, label %134

134:                                              ; preds = %130
  %135 = load ptr, ptr %0, align 8
  %136 = getelementptr inbounds %struct.device, ptr %135, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %136) #9, !srcloc !9
  %137 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %136, ptr %136, i32 0, i32 -1, ptr elementtype(i32) %136) #9, !srcloc !39
  %138 = extractvalue { i32, i32, i32 } %137, 0
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %134
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !40
  br label %141

141:                                              ; preds = %140, %134
  tail call void @panfrost_devfreq_record_idle(ptr noundef %107) #9
  %142 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 19, i32 1, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %153, label %145

145:                                              ; preds = %141
  %146 = load ptr, ptr %0, align 8
  %147 = getelementptr inbounds %struct.device, ptr %146, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %147) #9, !srcloc !9
  %148 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %147, ptr %147, i32 0, i32 -1, ptr elementtype(i32) %147) #9, !srcloc !39
  %149 = extractvalue { i32, i32, i32 } %148, 0
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %145
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !40
  br label %152

152:                                              ; preds = %151, %145
  tail call void @panfrost_devfreq_record_idle(ptr noundef %107) #9
  br label %153

153:                                              ; preds = %152, %141, %130
  %154 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 19, i32 2, i32 0
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %176, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr %0, align 8
  %159 = getelementptr inbounds %struct.device, ptr %158, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %159) #9, !srcloc !9
  %160 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %159, ptr %159, i32 0, i32 -1, ptr elementtype(i32) %159) #9, !srcloc !39
  %161 = extractvalue { i32, i32, i32 } %160, 0
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %157
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !40
  br label %164

164:                                              ; preds = %163, %157
  tail call void @panfrost_devfreq_record_idle(ptr noundef %107) #9
  %165 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 19, i32 2, i32 1
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %176, label %168

168:                                              ; preds = %164
  %169 = load ptr, ptr %0, align 8
  %170 = getelementptr inbounds %struct.device, ptr %169, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %170) #9, !srcloc !9
  %171 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %170, ptr %170, i32 0, i32 -1, ptr elementtype(i32) %170) #9, !srcloc !39
  %172 = extractvalue { i32, i32, i32 } %171, 0
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %168
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !40
  br label %175

175:                                              ; preds = %174, %168
  tail call void @panfrost_devfreq_record_idle(ptr noundef %107) #9
  br label %176

176:                                              ; preds = %175, %164, %153
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %108, i8 0, i32 24, i1 false)
  %177 = load ptr, ptr %7, align 4
  %178 = getelementptr inbounds %struct.panfrost_job_slot, ptr %177, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  %179 = load i16, ptr %178, align 4
  %180 = add i16 %179, 1
  store i16 %180, ptr %178, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  tail call void @panfrost_device_reset(ptr noundef %0) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !41
  tail call void @arm_heavy_mb() #9
  %181 = load ptr, ptr %16, align 4
  %182 = getelementptr i8, ptr %181, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 0) #9, !srcloc !19
  store volatile i32 0, ptr %3, align 4
  %183 = load ptr, ptr %7, align 4
  tail call void @drm_sched_resubmit_jobs(ptr noundef %183) #9
  %184 = load ptr, ptr %7, align 4
  %185 = getelementptr [3 x %struct.panfrost_queue_state], ptr %184, i32 0, i32 1
  tail call void @drm_sched_resubmit_jobs(ptr noundef %185) #9
  %186 = load ptr, ptr %7, align 4
  %187 = getelementptr [3 x %struct.panfrost_queue_state], ptr %186, i32 0, i32 2
  tail call void @drm_sched_resubmit_jobs(ptr noundef %187) #9
  %188 = load ptr, ptr %7, align 4
  tail call void @drm_sched_start(ptr noundef %188, i1 noundef zeroext true) #9
  %189 = load ptr, ptr %7, align 4
  %190 = getelementptr [3 x %struct.panfrost_queue_state], ptr %189, i32 0, i32 1
  tail call void @drm_sched_start(ptr noundef %190, i1 noundef zeroext true) #9
  %191 = load ptr, ptr %7, align 4
  %192 = getelementptr [3 x %struct.panfrost_queue_state], ptr %191, i32 0, i32 2
  tail call void @drm_sched_start(ptr noundef %192, i1 noundef zeroext true) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !42
  tail call void @arm_heavy_mb() #9
  %193 = load ptr, ptr %16, align 4
  %194 = getelementptr i8, ptr %193, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %194, i32 458759) #9, !srcloc !19
  br label %195

195:                                              ; preds = %176, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_stop(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_increase_karma(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @panfrost_job_handle_irqs(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca [3 x [2 x ptr]], align 4
  %3 = alloca [3 x ptr], align 4
  %4 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4096
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !43
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %285, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 18
  %11 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 27
  %12 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 23, i32 2
  br label %13

13:                                               ; preds = %276, %9
  %14 = phi i32 [ %7, %9 ], [ %283, %276 ]
  %15 = load ptr, ptr %0, align 8
  %16 = tail call i64 @ktime_get_mono_fast_ns() #9
  %17 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 11, i32 22
  store volatile i64 %16, ptr %17, align 8
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr inbounds %struct.panfrost_job_slot, ptr %18, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %19) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false) #9
  br label %20

20:                                               ; preds = %75, %13
  %21 = phi i32 [ %14, %13 ], [ %88, %75 ]
  %22 = phi i32 [ 0, %13 ], [ %84, %75 ]
  %23 = phi i32 [ 0, %13 ], [ %85, %75 ]
  br label %24

24:                                               ; preds = %72, %20
  %25 = phi i32 [ 0, %20 ], [ %73, %72 ]
  %26 = phi i32 [ 0, %20 ], [ %31, %72 ]
  %27 = shl nuw nsw i32 65537, %25
  %28 = and i32 %27, %21
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 0, i32 %27
  %31 = or i32 %30, %26
  %32 = shl nuw nsw i32 1, %25
  %33 = and i32 %32, %21
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %24
  %36 = getelementptr [3 x [2 x ptr]], ptr %2, i32 0, i32 %25
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  %39 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 19, i32 %25
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %38, label %48, label %42

42:                                               ; preds = %35
  br i1 %41, label %43, label %44, !prof !11

43:                                               ; preds = %42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 160, i32 noundef 9, ptr noundef null) #9
  br label %44

44:                                               ; preds = %43, %42
  %45 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 19, i32 %25, i32 1
  %46 = load ptr, ptr %45, align 4
  store ptr %46, ptr %39, align 8
  store ptr null, ptr %45, align 4
  %47 = getelementptr [3 x [2 x ptr]], ptr %2, i32 0, i32 %25, i32 1
  br label %53

48:                                               ; preds = %35
  br i1 %41, label %49, label %50, !prof !11

49:                                               ; preds = %48
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 160, i32 noundef 9, ptr noundef null) #9
  br label %50

50:                                               ; preds = %49, %48
  %51 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 19, i32 %25, i32 1
  %52 = load ptr, ptr %51, align 4
  store ptr %52, ptr %39, align 8
  store ptr null, ptr %51, align 4
  br label %53

53:                                               ; preds = %50, %44
  %54 = phi ptr [ %47, %44 ], [ %36, %50 ]
  store ptr %40, ptr %54, align 4
  br label %55

55:                                               ; preds = %53, %24
  %56 = shl i32 65536, %25
  %57 = and i32 %56, %21
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %55
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !44
  tail call void @arm_heavy_mb() #9
  %60 = load ptr, ptr %4, align 4
  %61 = shl nuw nsw i32 %25, 7
  %62 = add nuw nsw i32 %61, 6240
  %63 = getelementptr i8, ptr %60, i32 %62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 0) #9, !srcloc !19
  %64 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 19, i32 %25
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68, !prof !11

67:                                               ; preds = %59
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 160, i32 noundef 9, ptr noundef null) #9
  br label %68

68:                                               ; preds = %67, %59
  %69 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 19, i32 %25, i32 1
  %70 = load ptr, ptr %69, align 4
  store ptr %70, ptr %64, align 8
  store ptr null, ptr %69, align 4
  %71 = getelementptr [3 x ptr], ptr %3, i32 0, i32 %25
  store ptr %65, ptr %71, align 4
  br label %72

72:                                               ; preds = %68, %55
  %73 = add nuw nsw i32 %25, 1
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %75, label %24

75:                                               ; preds = %72
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !45
  tail call void @arm_heavy_mb() #9
  %76 = load ptr, ptr %4, align 4
  %77 = getelementptr i8, ptr %76, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %21) #9, !srcloc !19
  %78 = xor i32 %31, -1
  %79 = and i32 %22, %78
  %80 = load ptr, ptr %4, align 4
  %81 = getelementptr i8, ptr %80, i32 4112
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #9, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !46
  %83 = and i32 %82, %31
  %84 = or i32 %83, %79
  %85 = or i32 %23, %21
  %86 = load ptr, ptr %4, align 4
  %87 = getelementptr i8, ptr %86, i32 4096
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #9, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !47
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %20

90:                                               ; preds = %225, %75
  %91 = phi i32 [ %226, %225 ], [ 0, %75 ]
  %92 = shl nuw nsw i32 65537, %91
  %93 = and i32 %92, %85
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %225, label %95

95:                                               ; preds = %90
  %96 = getelementptr [3 x ptr], ptr %3, i32 0, i32 %91
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %174, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %4, align 4
  %101 = shl nuw nsw i32 %91, 7
  %102 = add nuw nsw i32 %101, 6180
  %103 = getelementptr i8, ptr %100, i32 %102
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #9, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !48
  %105 = tail call ptr @panfrost_exception_name(i32 noundef %104) #9
  %106 = icmp ugt i32 %104, 63
  br i1 %106, label %107, label %117

107:                                              ; preds = %99
  %108 = add nuw nsw i32 %101, 6144
  %109 = load ptr, ptr %0, align 8
  %110 = load ptr, ptr %4, align 4
  %111 = getelementptr i8, ptr %110, i32 %108
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #9, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !49
  %113 = load ptr, ptr %4, align 4
  %114 = add nuw nsw i32 %101, 6152
  %115 = getelementptr i8, ptr %113, i32 %114
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #9, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !50
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.8, i32 noundef %91, ptr noundef %105, i32 noundef %112, i32 noundef %116) #10
  br label %117

117:                                              ; preds = %107, %99
  switch i32 %104, label %143 [
    i32 3, label %118
    i32 4, label %136
  ]

118:                                              ; preds = %117
  %119 = load ptr, ptr %4, align 4
  %120 = add nuw nsw i32 %101, 6152
  %121 = getelementptr i8, ptr %119, i32 %120
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #9, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !51
  %123 = zext i32 %122 to i64
  %124 = load ptr, ptr %4, align 4
  %125 = add nuw nsw i32 %101, 6156
  %126 = getelementptr i8, ptr %124, i32 %125
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #9, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !52
  %128 = zext i32 %127 to i64
  %129 = shl nuw i64 %128, 32
  %130 = or i64 %129, %123
  %131 = getelementptr inbounds %struct.panfrost_job, ptr %97, i32 0, i32 5
  store i64 %130, ptr %131, align 8
  %132 = getelementptr inbounds %struct.panfrost_job, ptr %97, i32 0, i32 3
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr inbounds %struct.panfrost_file_priv, ptr %133, i32 0, i32 2
  %135 = load ptr, ptr %134, align 8
  tail call void @panfrost_mmu_as_put(ptr noundef %0, ptr noundef %135) #9
  tail call void @panfrost_devfreq_record_idle(ptr noundef %11) #9
  br label %167

136:                                              ; preds = %117
  %137 = getelementptr inbounds %struct.panfrost_job, ptr %97, i32 0, i32 4
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.dma_fence, ptr %138, i32 0, i32 5
  %140 = load volatile i32, ptr %139, align 4
  %141 = and i32 %140, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %154, label %151, !prof !12

143:                                              ; preds = %117
  br i1 %106, label %144, label %159

144:                                              ; preds = %143
  %145 = getelementptr inbounds %struct.panfrost_job, ptr %97, i32 0, i32 4
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.dma_fence, ptr %146, i32 0, i32 5
  %148 = load volatile i32, ptr %147, align 4
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %154, label %151, !prof !12

151:                                              ; preds = %144, %136
  %152 = phi ptr [ %138, %136 ], [ %146, %144 ]
  %153 = phi i32 [ -125, %136 ], [ -22, %144 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 545, i32 noundef 9, ptr noundef null) #9
  br label %154

154:                                              ; preds = %151, %144, %136
  %155 = phi ptr [ %138, %136 ], [ %146, %144 ], [ %152, %151 ]
  %156 = phi i32 [ -125, %136 ], [ -22, %144 ], [ %153, %151 ]
  %157 = getelementptr inbounds %struct.dma_fence, ptr %155, i32 0, i32 7
  store i32 %156, ptr %157, align 8
  %158 = getelementptr inbounds %struct.panfrost_job, ptr %97, i32 0, i32 5
  store i64 0, ptr %158, align 8
  br label %159

159:                                              ; preds = %154, %143
  %160 = getelementptr inbounds %struct.panfrost_job, ptr %97, i32 0, i32 3
  %161 = load ptr, ptr %160, align 8
  %162 = getelementptr inbounds %struct.panfrost_file_priv, ptr %161, i32 0, i32 2
  %163 = load ptr, ptr %162, align 8
  tail call void @panfrost_mmu_as_put(ptr noundef %0, ptr noundef %163) #9
  tail call void @panfrost_devfreq_record_idle(ptr noundef %11) #9
  %164 = getelementptr inbounds %struct.panfrost_job, ptr %97, i32 0, i32 4
  %165 = load ptr, ptr %164, align 4
  %166 = tail call i32 @dma_fence_signal_locked(ptr noundef %165) #9
  br label %167

167:                                              ; preds = %159, %118
  %168 = load ptr, ptr %0, align 8
  %169 = tail call i32 @__pm_runtime_suspend(ptr noundef %168, i32 noundef 13) #9
  %170 = tail call zeroext i1 @panfrost_exception_needs_reset(ptr noundef %0, i32 noundef %104) #9
  br i1 %170, label %171, label %196

171:                                              ; preds = %167
  store volatile i32 1, ptr %12, align 4
  %172 = load ptr, ptr %10, align 4
  %173 = getelementptr [3 x %struct.panfrost_queue_state], ptr %172, i32 0, i32 %91
  tail call void @drm_sched_fault(ptr noundef %173) #9
  br label %196

174:                                              ; preds = %95
  %175 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 19, i32 %91
  %176 = load ptr, ptr %175, align 8
  %177 = icmp ne ptr %176, null
  %178 = and i32 %92, %84
  %179 = icmp eq i32 %178, 0
  %180 = select i1 %177, i1 %179, i1 false
  br i1 %180, label %181, label %196

181:                                              ; preds = %174
  %182 = getelementptr [3 x [2 x ptr]], ptr %2, i32 0, i32 %91
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %192, !prof !11

185:                                              ; preds = %181
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 530, i32 noundef 9, ptr noundef null) #9
  %186 = load ptr, ptr %175, align 8
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %189, !prof !11

188:                                              ; preds = %185
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 160, i32 noundef 9, ptr noundef null) #9
  br label %189

189:                                              ; preds = %188, %185
  %190 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 19, i32 %91, i32 1
  %191 = load ptr, ptr %190, align 4
  store ptr %191, ptr %175, align 8
  store ptr null, ptr %190, align 4
  store ptr %186, ptr %182, align 4
  br label %196

192:                                              ; preds = %181
  %193 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 19, i32 %91, i32 1
  %194 = load ptr, ptr %193, align 4
  store ptr %194, ptr %175, align 8
  store ptr null, ptr %193, align 4
  %195 = getelementptr [3 x [2 x ptr]], ptr %2, i32 0, i32 %91, i32 1
  store ptr %176, ptr %195, align 4
  br label %196

196:                                              ; preds = %192, %189, %174, %171, %167
  %197 = getelementptr [3 x [2 x ptr]], ptr %2, i32 0, i32 %91, i32 0
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %225, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.panfrost_job, ptr %198, i32 0, i32 5
  store i64 0, ptr %201, align 8
  %202 = getelementptr inbounds %struct.panfrost_job, ptr %198, i32 0, i32 3
  %203 = load ptr, ptr %202, align 8
  %204 = getelementptr inbounds %struct.panfrost_file_priv, ptr %203, i32 0, i32 2
  %205 = load ptr, ptr %204, align 8
  tail call void @panfrost_mmu_as_put(ptr noundef %0, ptr noundef %205) #9
  tail call void @panfrost_devfreq_record_idle(ptr noundef %11) #9
  %206 = getelementptr inbounds %struct.panfrost_job, ptr %198, i32 0, i32 4
  %207 = load ptr, ptr %206, align 4
  %208 = tail call i32 @dma_fence_signal_locked(ptr noundef %207) #9
  %209 = load ptr, ptr %0, align 8
  %210 = tail call i32 @__pm_runtime_suspend(ptr noundef %209, i32 noundef 13) #9
  %211 = getelementptr [3 x [2 x ptr]], ptr %2, i32 0, i32 %91, i32 1
  %212 = load ptr, ptr %211, align 4
  %213 = icmp eq ptr %212, null
  br i1 %213, label %225, label %214

214:                                              ; preds = %200
  %215 = getelementptr inbounds %struct.panfrost_job, ptr %212, i32 0, i32 5
  store i64 0, ptr %215, align 8
  %216 = getelementptr inbounds %struct.panfrost_job, ptr %212, i32 0, i32 3
  %217 = load ptr, ptr %216, align 8
  %218 = getelementptr inbounds %struct.panfrost_file_priv, ptr %217, i32 0, i32 2
  %219 = load ptr, ptr %218, align 8
  tail call void @panfrost_mmu_as_put(ptr noundef %0, ptr noundef %219) #9
  tail call void @panfrost_devfreq_record_idle(ptr noundef %11) #9
  %220 = getelementptr inbounds %struct.panfrost_job, ptr %212, i32 0, i32 4
  %221 = load ptr, ptr %220, align 4
  %222 = tail call i32 @dma_fence_signal_locked(ptr noundef %221) #9
  %223 = load ptr, ptr %0, align 8
  %224 = tail call i32 @__pm_runtime_suspend(ptr noundef %223, i32 noundef 13) #9
  br label %225

225:                                              ; preds = %214, %200, %196, %90
  %226 = add nuw nsw i32 %91, 1
  %227 = icmp eq i32 %226, 3
  br i1 %227, label %228, label %90

228:                                              ; preds = %273, %225
  %229 = phi i32 [ %274, %273 ], [ 0, %225 ]
  %230 = shl nuw nsw i32 65537, %229
  %231 = and i32 %230, %85
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %273, label %233

233:                                              ; preds = %228
  %234 = getelementptr [3 x ptr], ptr %3, i32 0, i32 %229
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %273, label %237

237:                                              ; preds = %233
  %238 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 19, i32 %229
  %239 = load ptr, ptr %238, align 8
  %240 = icmp eq ptr %239, null
  br i1 %240, label %273, label %241

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.panfrost_job, ptr %239, i32 0, i32 5
  %243 = load i64, ptr %242, align 8
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %265

245:                                              ; preds = %241
  %246 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 19, i32 %229, i32 1
  %247 = load ptr, ptr %246, align 4
  store ptr %247, ptr %238, align 8
  store ptr null, ptr %246, align 4
  %248 = getelementptr inbounds %struct.panfrost_job, ptr %239, i32 0, i32 4
  %249 = load ptr, ptr %248, align 4
  %250 = getelementptr inbounds %struct.dma_fence, ptr %249, i32 0, i32 5
  %251 = load volatile i32, ptr %250, align 4
  %252 = and i32 %251, 1
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %255, label %254, !prof !12

254:                                              ; preds = %245
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 545, i32 noundef 9, ptr noundef null) #9
  br label %255

255:                                              ; preds = %254, %245
  %256 = getelementptr inbounds %struct.dma_fence, ptr %249, i32 0, i32 7
  store i32 -125, ptr %256, align 8
  store i64 0, ptr %242, align 8
  %257 = getelementptr inbounds %struct.panfrost_job, ptr %239, i32 0, i32 3
  %258 = load ptr, ptr %257, align 8
  %259 = getelementptr inbounds %struct.panfrost_file_priv, ptr %258, i32 0, i32 2
  %260 = load ptr, ptr %259, align 8
  tail call void @panfrost_mmu_as_put(ptr noundef %0, ptr noundef %260) #9
  tail call void @panfrost_devfreq_record_idle(ptr noundef %11) #9
  %261 = load ptr, ptr %248, align 4
  %262 = tail call i32 @dma_fence_signal_locked(ptr noundef %261) #9
  %263 = load ptr, ptr %0, align 8
  %264 = tail call i32 @__pm_runtime_suspend(ptr noundef %263, i32 noundef 13) #9
  br label %273

265:                                              ; preds = %241
  %266 = load volatile i32, ptr %12, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %265
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !53
  tail call void @arm_heavy_mb() #9
  %269 = load ptr, ptr %4, align 4
  %270 = shl nuw nsw i32 %229, 7
  %271 = add nuw nsw i32 %270, 6240
  %272 = getelementptr i8, ptr %269, i32 %271
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %272, i32 1) #9, !srcloc !19
  br label %273

273:                                              ; preds = %268, %265, %255, %237, %233, %228
  %274 = add nuw nsw i32 %229, 1
  %275 = icmp eq i32 %274, 3
  br i1 %275, label %276, label %228

276:                                              ; preds = %273
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #9
  %277 = load ptr, ptr %10, align 4
  %278 = getelementptr inbounds %struct.panfrost_job_slot, ptr %277, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  %279 = load i16, ptr %278, align 4
  %280 = add i16 %279, 1
  store i16 %280, ptr %278, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  %281 = load ptr, ptr %4, align 4
  %282 = getelementptr i8, ptr %281, i32 4096
  %283 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %282) #9, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !54
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %13

285:                                              ; preds = %276, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_devfreq_record_idle(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_device_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_resubmit_jobs(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_start(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @panfrost_exception_name(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_mmu_as_put(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal_locked(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @panfrost_exception_needs_reset(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fault(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @panfrost_job_run(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.panfrost_job, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.panfrost_job, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 1
  %7 = xor i32 %6, 1
  %8 = getelementptr inbounds %struct.drm_sched_job, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.drm_sched_fence, ptr %9, i32 0, i32 1, i32 7
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %202, !prof !12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.panfrost_job, ptr %0, i32 0, i32 5
  %15 = load i64, ptr %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %202, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.panfrost_device, ptr %3, i32 0, i32 18
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 72) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %202, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.panfrost_device, ptr %3, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.panfrost_fence, ptr %21, i32 0, i32 1
  store ptr %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.panfrost_fence, ptr %21, i32 0, i32 3
  store i32 %7, ptr %27, align 8
  %28 = getelementptr [3 x %struct.panfrost_queue_state], ptr %19, i32 0, i32 %7, i32 2
  %29 = load i64, ptr %28, align 8
  %30 = add i64 %29, 1
  store i64 %30, ptr %28, align 8
  %31 = getelementptr inbounds %struct.panfrost_fence, ptr %21, i32 0, i32 2
  store i64 %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.panfrost_job_slot, ptr %19, i32 0, i32 1
  %33 = getelementptr [3 x %struct.panfrost_queue_state], ptr %19, i32 0, i32 %7, i32 1
  %34 = load i64, ptr %33, align 8
  tail call void @dma_fence_init(ptr noundef nonnull %21, ptr noundef nonnull @panfrost_fence_ops, ptr noundef %32, i64 noundef %34, i64 noundef %30) #9
  %35 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %202, label %36

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.panfrost_job, ptr %0, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.dma_fence, ptr %38, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #9, !srcloc !9
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #9, !srcloc !14
  %43 = extractvalue { i32, i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = icmp sgt i32 %43, 0
  br i1 %46, label %49, label %47, !prof !12

47:                                               ; preds = %45
  tail call void @refcount_warn_saturate(ptr noundef %41, i32 noundef 3) #9
  br label %49

48:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  tail call void @dma_fence_release(ptr noundef %41) #9, !callees !16
  br label %49

49:                                               ; preds = %48, %47, %45, %36
  %50 = getelementptr inbounds %struct.dma_fence, ptr %21, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #9, !srcloc !9
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #9, !srcloc !10
  %52 = extractvalue { i32, i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54, !prof !11

54:                                               ; preds = %49
  %55 = add i32 %52, 1
  %56 = or i32 %55, %52
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %60, label %58, !prof !12

58:                                               ; preds = %54, %49
  %59 = phi i32 [ 2, %49 ], [ 1, %54 ]
  tail call void @refcount_warn_saturate(ptr noundef %50, i32 noundef %59) #9
  br label %60

60:                                               ; preds = %58, %54
  store ptr %21, ptr %37, align 4
  %61 = load ptr, ptr %2, align 4
  %62 = load i64, ptr %14, align 8
  %63 = getelementptr inbounds %struct.panfrost_device, ptr %61, i32 0, i32 27
  tail call void @panfrost_devfreq_record_busy(ptr noundef %63) #9
  %64 = load ptr, ptr %61, align 8
  %65 = tail call i32 @__pm_runtime_resume(ptr noundef %64, i32 noundef 4) #9
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %202, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.panfrost_device, ptr %61, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = shl nuw nsw i32 %7, 7
  %71 = or i32 %70, 6240
  %72 = getelementptr i8, ptr %69, i32 %71
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #9, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !55
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75, !prof !12

75:                                               ; preds = %67
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 200, i32 noundef 9, ptr noundef null) #9
  br label %202

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.panfrost_job, ptr %0, i32 0, i32 3
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.panfrost_file_priv, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8
  %81 = tail call i32 @panfrost_mmu_as_get(ptr noundef %61, ptr noundef %80) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !56
  tail call void @arm_heavy_mb() #9
  %82 = trunc i64 %62 to i32
  %83 = load ptr, ptr %68, align 4
  %84 = or i32 %70, 6208
  %85 = getelementptr i8, ptr %83, i32 %84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %82) #9, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !57
  tail call void @arm_heavy_mb() #9
  %86 = lshr i64 %62, 32
  %87 = trunc i64 %86 to i32
  %88 = load ptr, ptr %68, align 4
  %89 = or i32 %70, 6212
  %90 = getelementptr i8, ptr %88, i32 %89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %87) #9, !srcloc !19
  %91 = getelementptr inbounds %struct.panfrost_device, ptr %61, i32 0, i32 11, i32 2
  %92 = load i64, ptr %91, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !58
  tail call void @arm_heavy_mb() #9
  %93 = trunc i64 %92 to i32
  %94 = load ptr, ptr %68, align 4
  %95 = or i32 %70, 6224
  %96 = getelementptr i8, ptr %94, i32 %95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %93) #9, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !59
  tail call void @arm_heavy_mb() #9
  %97 = lshr i64 %92, 32
  %98 = trunc i64 %97 to i32
  %99 = load ptr, ptr %68, align 4
  %100 = or i32 %70, 6228
  %101 = getelementptr i8, ptr %99, i32 %100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %98) #9, !srcloc !19
  %102 = load ptr, ptr %37, align 4
  %103 = load ptr, ptr %2, align 4
  %104 = getelementptr inbounds %struct.panfrost_device, ptr %103, i32 0, i32 11, i32 23
  %105 = load volatile i32, ptr %104, align 4
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %76
  %109 = getelementptr inbounds %struct.panfrost_fence, ptr %102, i32 0, i32 2
  %110 = load i64, ptr %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = shl i32 %111, 11
  %113 = and i32 %112, 2048
  %114 = or i32 %113, 537344
  br label %115

115:                                              ; preds = %108, %76
  %116 = phi i32 [ %114, %108 ], [ 537344, %76 ]
  %117 = or i32 %116, %81
  %118 = getelementptr inbounds %struct.panfrost_device, ptr %61, i32 0, i32 11, i32 23
  %119 = load volatile i32, ptr %118, align 4
  %120 = lshr i32 %119, 8
  %121 = and i32 %120, 16384
  %122 = or i32 %117, %121
  %123 = getelementptr inbounds %struct.panfrost_device, ptr %61, i32 0, i32 11, i32 24
  %124 = load volatile i32, ptr %123, align 4
  %125 = lshr i32 %124, 4
  %126 = and i32 %125, 1024
  %127 = or i32 %122, %126
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !60
  tail call void @arm_heavy_mb() #9
  %128 = load ptr, ptr %68, align 4
  %129 = or i32 %70, 6232
  %130 = getelementptr i8, ptr %128, i32 %129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %127) #9, !srcloc !19
  %131 = load volatile i32, ptr %118, align 4
  %132 = and i32 %131, 4194304
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %115
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !61
  tail call void @arm_heavy_mb() #9
  %135 = getelementptr inbounds %struct.panfrost_job, ptr %0, i32 0, i32 7
  %136 = load i32, ptr %135, align 4
  %137 = load ptr, ptr %68, align 4
  %138 = or i32 %70, 6256
  %139 = getelementptr i8, ptr %137, i32 %138
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %136) #9, !srcloc !19
  br label %140

140:                                              ; preds = %134, %115
  %141 = getelementptr inbounds %struct.panfrost_device, ptr %61, i32 0, i32 18
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.panfrost_job_slot, ptr %142, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %143) #9
  %144 = icmp eq ptr %0, null
  br i1 %144, label %145, label %146, !prof !11

145:                                              ; preds = %140
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 171, i32 noundef 9, ptr noundef null) #9
  br label %190

146:                                              ; preds = %140
  %147 = getelementptr %struct.panfrost_device, ptr %61, i32 0, i32 19, i32 %7
  %148 = load ptr, ptr %147, align 8
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  store ptr %0, ptr %147, align 8
  br label %190

151:                                              ; preds = %146
  %152 = getelementptr %struct.panfrost_device, ptr %61, i32 0, i32 19, i32 %7, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %156, label %155, !prof !12

155:                                              ; preds = %151
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 179, i32 noundef 9, ptr noundef null) #9
  br label %156

156:                                              ; preds = %155, %151
  store ptr %0, ptr %152, align 4
  %157 = load ptr, ptr %37, align 4
  %158 = load ptr, ptr %2, align 4
  %159 = getelementptr inbounds %struct.panfrost_device, ptr %158, i32 0, i32 11, i32 23
  %160 = load volatile i32, ptr %159, align 4
  %161 = and i32 %160, 1
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %156
  %164 = getelementptr inbounds %struct.panfrost_fence, ptr %157, i32 0, i32 2
  %165 = load i64, ptr %164, align 8
  %166 = trunc i64 %165 to i32
  %167 = shl i32 %166, 11
  %168 = and i32 %167, 2048
  br label %169

169:                                              ; preds = %163, %156
  %170 = phi i32 [ %168, %163 ], [ 0, %156 ]
  %171 = load ptr, ptr %147, align 8
  %172 = getelementptr inbounds %struct.panfrost_job, ptr %171, i32 0, i32 4
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.panfrost_job, ptr %171, i32 0, i32 2
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.panfrost_device, ptr %175, i32 0, i32 11, i32 23
  %177 = load volatile i32, ptr %176, align 4
  %178 = and i32 %177, 1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %169
  %181 = getelementptr inbounds %struct.panfrost_fence, ptr %173, i32 0, i32 2
  %182 = load i64, ptr %181, align 8
  %183 = trunc i64 %182 to i32
  %184 = shl i32 %183, 11
  %185 = and i32 %184, 2048
  br label %186

186:                                              ; preds = %180, %169
  %187 = phi i32 [ %185, %180 ], [ 0, %169 ]
  %188 = icmp eq i32 %170, %187
  br i1 %188, label %189, label %190, !prof !11

189:                                              ; preds = %186
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 182, i32 noundef 9, ptr noundef null) #9
  br label %190

190:                                              ; preds = %189, %186, %150, %145
  %191 = getelementptr inbounds %struct.panfrost_device, ptr %61, i32 0, i32 23, i32 2
  %192 = load volatile i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %190
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !62
  tail call void @arm_heavy_mb() #9
  %195 = load ptr, ptr %68, align 4
  %196 = getelementptr i8, ptr %195, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 1) #9, !srcloc !19
  br label %197

197:                                              ; preds = %194, %190
  %198 = load ptr, ptr %141, align 4
  %199 = getelementptr inbounds %struct.panfrost_job_slot, ptr %198, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  %200 = load i16, ptr %199, align 4
  %201 = add i16 %200, 1
  store i16 %201, ptr %199, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  br label %202

202:                                              ; preds = %197, %75, %60, %23, %17, %13, %1
  %203 = phi ptr [ null, %1 ], [ null, %13 ], [ %21, %23 ], [ %21, %60 ], [ %21, %75 ], [ %21, %197 ], [ inttoptr (i32 -12 to ptr), %17 ]
  ret ptr %203
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panfrost_job_timedout(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.panfrost_job, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.panfrost_job, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 1
  %7 = xor i32 %6, 1
  %8 = getelementptr inbounds %struct.panfrost_job, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 5
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dma_fence_ops, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = tail call zeroext i1 %18(ptr noundef %9) #9
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = tail call i32 @dma_fence_signal(ptr noundef %9) #9
  br label %45

24:                                               ; preds = %20, %14
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds %struct.panfrost_device, ptr %3, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = shl nuw nsw i32 %7, 7
  %29 = or i32 %28, 6144
  %30 = or i32 %28, 6168
  %31 = getelementptr i8, ptr %27, i32 %30
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !63
  %33 = load ptr, ptr %26, align 4
  %34 = or i32 %28, 6180
  %35 = getelementptr i8, ptr %33, i32 %34
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #9, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !64
  %37 = load ptr, ptr %26, align 4
  %38 = getelementptr i8, ptr %37, i32 %29
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #9, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !65
  %40 = load ptr, ptr %26, align 4
  %41 = or i32 %28, 6152
  %42 = getelementptr i8, ptr %40, i32 %41
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #9, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !66
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.14, i32 noundef %7, i32 noundef %32, i32 noundef %36, i32 noundef %39, i32 noundef %43, ptr noundef %0) #10
  %44 = getelementptr inbounds %struct.panfrost_device, ptr %3, i32 0, i32 23, i32 2
  store volatile i32 1, ptr %44, align 4
  tail call fastcc void @panfrost_reset(ptr noundef %3, ptr noundef %0)
  br label %45

45:                                               ; preds = %24, %22, %1
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @panfrost_job_free(ptr noundef %0) #1 {
  tail call void @drm_sched_job_cleanup(ptr noundef %0) #9
  tail call void @panfrost_job_put(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @panfrost_fence_get_driver_name(ptr nocapture noundef readnone %0) #8 {
  ret ptr @.str.10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @panfrost_fence_get_timeline_name(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.panfrost_fence, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 8
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds [3 x ptr], ptr @switch.table.panfrost_fence_get_timeline_name, i32 0, i32 %3
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_devfreq_record_busy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_mmu_as_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_cleanup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!8 = !{!"auto-init"}
!9 = !{i64 412142, i64 2147902113, i64 2147902139, i64 2147902186, i64 2147902208, i64 2147902236, i64 2147902256}
!10 = !{i64 2147915783, i64 2147915815, i64 2147915844, i64 2147915878, i64 2147915909, i64 2147915932}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148015981}
!14 = !{i64 2147918140, i64 2147918172, i64 2147918201, i64 2147918235, i64 2147918266, i64 2147918289}
!15 = !{i64 2149263499}
!16 = distinct !{ptr @dma_fence_release, ptr @drm_gem_object_free, null}
!17 = !{i64 2147916682, i64 2147916708, i64 2147916737, i64 2147916771, i64 2147916802, i64 2147916825}
!18 = !{i64 2154215191}
!19 = !{i64 3080097}
!20 = !{i64 2154215600}
!21 = !{i64 3080515}
!22 = !{i64 2154244337}
!23 = !{i64 2154244584}
!24 = !{i64 2154242572}
!25 = !{i64 2154248765}
!26 = !{i64 2154250175}
!27 = !{i64 2154250696}
!28 = !{i64 2149189584}
!29 = !{i64 2149185408}
!30 = !{i64 2149185483, i64 2149185510, i64 2149185557, i64 2149185579, i64 2149185607, i64 2149185627}
!31 = !{i64 2149212587}
!32 = !{i64 2154226313}
!33 = !{i64 2154226795}
!34 = !{i64 2154227308}
!35 = !{i64 2154229041}
!36 = !{i64 2154226024}
!37 = !{i64 2154229387}
!38 = !{i64 2147913832}
!39 = !{i64 398711, i64 398736, i64 398758, i64 398774, i64 398786, i64 398806, i64 398830, i64 398846, i64 398858}
!40 = !{i64 2147913958}
!41 = !{i64 2154230556}
!42 = !{i64 2154233601}
!43 = !{i64 2154225210}
!44 = !{i64 2154221988}
!45 = !{i64 2154222412}
!46 = !{i64 2154222963}
!47 = !{i64 2154223370}
!48 = !{i64 2154216302}
!49 = !{i64 2154219745}
!50 = !{i64 2154220299}
!51 = !{i64 2154220853}
!52 = !{i64 2154221407}
!53 = !{i64 2154224636}
!54 = !{i64 2154225617}
!55 = !{i64 2154209283}
!56 = !{i64 2154210082}
!57 = !{i64 2154210747}
!58 = !{i64 2154205254}
!59 = !{i64 2154205924}
!60 = !{i64 2154211520}
!61 = !{i64 2154212048}
!62 = !{i64 2154212583}
!63 = !{i64 2154236741}
!64 = !{i64 2154237295}
!65 = !{i64 2154237849}
!66 = !{i64 2154238403}
