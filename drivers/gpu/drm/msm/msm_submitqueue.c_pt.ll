; ModuleID = '/llk/IR/drivers/gpu/drm/msm/msm_submitqueue.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_submitqueue.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.msm_file_private = type { %struct.rwlock_t, %struct.list_head, i32, ptr, %struct.kref, i32, [12 x ptr] }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.77, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.82, ptr, i32, ptr, i8, i32 }
%struct.anon.77 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.82 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.96, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.96 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.95, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.95 = type { i8, i64 }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.19, ptr }
%union.anon.19 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.msm_gpu_submitqueue = type { i32, i32, i32, i32, i32, ptr, %struct.list_head, %struct.idr, %struct.mutex, %struct.kref, ptr }
%struct.msm_ringbuffer = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.drm_gpu_scheduler, %struct.list_head, %struct.spinlock, i64, i32, i32, ptr, i64, ptr, %struct.spinlock }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.drm_msm_submitqueue_query = type { i64, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@msm_submitqueue_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [13 x i8] c"&queue->lock\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@get_sched_entity.entity_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @get_sched_entity.entity_lock, i64 12), ptr getelementptr (i8, ptr @get_sched_entity.entity_lock, i64 12) } }, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"drivers/gpu/drm/msm/msm_submitqueue.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__msm_file_private_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @drm_sched_entity_destroy(ptr noundef nonnull %3) #6
  %6 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %6) #6
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr i8, ptr %0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  tail call void @drm_sched_entity_destroy(ptr noundef nonnull %9) #6
  %12 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %12) #6
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr i8, ptr %0, i32 16
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  tail call void @drm_sched_entity_destroy(ptr noundef nonnull %15) #6
  %18 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %18) #6
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr i8, ptr %0, i32 20
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  tail call void @drm_sched_entity_destroy(ptr noundef nonnull %21) #6
  %24 = load ptr, ptr %20, align 4
  tail call void @kfree(ptr noundef %24) #6
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr i8, ptr %0, i32 24
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  tail call void @drm_sched_entity_destroy(ptr noundef nonnull %27) #6
  %30 = load ptr, ptr %26, align 4
  tail call void @kfree(ptr noundef %30) #6
  br label %31

31:                                               ; preds = %29, %25
  %32 = getelementptr i8, ptr %0, i32 28
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  tail call void @drm_sched_entity_destroy(ptr noundef nonnull %33) #6
  %36 = load ptr, ptr %32, align 4
  tail call void @kfree(ptr noundef %36) #6
  br label %37

37:                                               ; preds = %35, %31
  %38 = getelementptr i8, ptr %0, i32 32
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  tail call void @drm_sched_entity_destroy(ptr noundef nonnull %39) #6
  %42 = load ptr, ptr %38, align 4
  tail call void @kfree(ptr noundef %42) #6
  br label %43

43:                                               ; preds = %41, %37
  %44 = getelementptr i8, ptr %0, i32 36
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  tail call void @drm_sched_entity_destroy(ptr noundef nonnull %45) #6
  %48 = load ptr, ptr %44, align 4
  tail call void @kfree(ptr noundef %48) #6
  br label %49

49:                                               ; preds = %47, %43
  %50 = getelementptr i8, ptr %0, i32 40
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  tail call void @drm_sched_entity_destroy(ptr noundef nonnull %51) #6
  %54 = load ptr, ptr %50, align 4
  tail call void @kfree(ptr noundef %54) #6
  br label %55

55:                                               ; preds = %53, %49
  %56 = getelementptr i8, ptr %0, i32 44
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  tail call void @drm_sched_entity_destroy(ptr noundef nonnull %57) #6
  %60 = load ptr, ptr %56, align 4
  tail call void @kfree(ptr noundef %60) #6
  br label %61

61:                                               ; preds = %59, %55
  %62 = getelementptr i8, ptr %0, i32 48
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  tail call void @drm_sched_entity_destroy(ptr noundef nonnull %63) #6
  %66 = load ptr, ptr %62, align 4
  tail call void @kfree(ptr noundef %66) #6
  br label %67

67:                                               ; preds = %65, %61
  %68 = getelementptr i8, ptr %0, i32 52
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  tail call void @drm_sched_entity_destroy(ptr noundef nonnull %69) #6
  %72 = load ptr, ptr %68, align 4
  tail call void @kfree(ptr noundef %72) #6
  br label %73

73:                                               ; preds = %71, %67
  %74 = getelementptr i8, ptr %0, i32 -20
  %75 = getelementptr i8, ptr %0, i32 -4
  %76 = load ptr, ptr %75, align 4
  tail call void @msm_gem_address_space_put(ptr noundef %76) #6
  tail call void @kfree(ptr noundef %74) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_address_space_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_submitqueue_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -40
  tail call void @idr_destroy(ptr noundef %2) #6
  %3 = getelementptr i8, ptr %0, i32 -52
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_file_private, ptr %4, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #6, !srcloc !9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #6, !srcloc !10
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %13, label %11, !prof !11

11:                                               ; preds = %9
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef 3) #6
  br label %13

12:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  tail call void @__msm_file_private_destroy(ptr noundef %5) #6, !callees !13
  br label %13

13:                                               ; preds = %12, %11, %9
  %14 = getelementptr i8, ptr %0, i32 -72
  tail call void @kfree(ptr noundef %14) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_submitqueue_get(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %2
  tail call void @_raw_read_lock(ptr noundef nonnull %0) #6
  %5 = getelementptr inbounds %struct.msm_file_private, ptr %0, i32 0, i32 1
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %32, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %8, i32 -24
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %6

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %8, i32 -24
  %16 = getelementptr i8, ptr %8, i32 48
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #6, !srcloc !9
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #6, !srcloc !14
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !15

20:                                               ; preds = %14
  %21 = add i32 %18, 1
  %22 = or i32 %21, %18
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %26, label %24, !prof !11

24:                                               ; preds = %20, %14
  %25 = phi i32 [ 2, %14 ], [ 1, %20 ]
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef %25) #6
  br label %26

26:                                               ; preds = %24, %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #6, !srcloc !9
  %27 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull %0) #6, !srcloc !17
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !19
  br label %31

31:                                               ; preds = %30, %26
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  br label %38

32:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #6, !srcloc !9
  %33 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull %0) #6, !srcloc !17
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !19
  br label %37

37:                                               ; preds = %36, %32
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  br label %38

38:                                               ; preds = %37, %31, %2
  %39 = phi ptr [ %15, %31 ], [ null, %37 ], [ null, %2 ]
  ret ptr %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_submitqueue_close(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.msm_file_private, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %38, label %7

7:                                                ; preds = %36, %3
  %8 = phi ptr [ %10, %36 ], [ %5, %3 ]
  %9 = getelementptr i8, ptr %8, i32 -24
  %10 = load ptr, ptr %8, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  store volatile ptr %10, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  %14 = icmp eq ptr %9, null
  br i1 %14, label %36, label %15

15:                                               ; preds = %7
  %16 = getelementptr i8, ptr %8, i32 48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #6, !srcloc !9
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #6, !srcloc !10
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = icmp sgt i32 %18, 0
  br i1 %21, label %36, label %22, !prof !11

22:                                               ; preds = %20
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef 3) #6
  br label %36

23:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %24 = getelementptr i8, ptr %8, i32 8
  tail call void @idr_destroy(ptr noundef %24) #6
  %25 = getelementptr i8, ptr %8, i32 -4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.msm_file_private, ptr %26, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #6, !srcloc !9
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #6, !srcloc !10
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = icmp sgt i32 %29, 0
  br i1 %32, label %35, label %33, !prof !11

33:                                               ; preds = %31
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef 3) #6
  br label %35

34:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  tail call void @__msm_file_private_destroy(ptr noundef %27) #6, !callees !13
  br label %35

35:                                               ; preds = %34, %33, %31
  tail call void @kfree(ptr noundef nonnull %9) #6
  br label %36

36:                                               ; preds = %35, %22, %20, %7
  %37 = icmp eq ptr %10, %4
  br i1 %37, label %38, label %7

38:                                               ; preds = %36, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_submitqueue_create(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 4
  %7 = icmp eq ptr %1, null
  br i1 %7, label %92, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.msm_drm_private, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %92, label %14

14:                                               ; preds = %8
  %15 = sext i32 %2 to i64
  %16 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %15, i64 6148914691236517205) #7, !srcloc !21
  %17 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %15, i64 %16) #7, !srcloc !22
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.msm_gpu, ptr %12, i32 0, i32 14
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, %18
  br i1 %21, label %22, label %92

22:                                               ; preds = %14
  %23 = mul i32 %18, 3
  %24 = sub i32 2, %2
  %25 = add i32 %23, %24
  %26 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %27 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 80) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %92, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %27, i32 0, i32 9
  store volatile i32 1, ptr %30, align 8
  %31 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %27, i32 0, i32 1
  store i32 %3, ptr %31, align 4
  %32 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %27, i32 0, i32 2
  store i32 %18, ptr %32, align 8
  %33 = load ptr, ptr %11, align 8
  %34 = getelementptr %struct.msm_gpu, ptr %33, i32 0, i32 13, i32 %18
  %35 = load ptr, ptr %34, align 4
  %36 = add i32 %25, %23
  %37 = icmp ugt i32 %36, 11
  br i1 %37, label %38, label %40, !prof !15

38:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 90, i32 noundef 9, ptr noundef null) #6
  %39 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %27, i32 0, i32 10
  store ptr inttoptr (i32 -22 to ptr), ptr %39, align 4
  br label %59

40:                                               ; preds = %29
  tail call void @mutex_lock(ptr noundef nonnull @get_sched_entity.entity_lock) #6
  %41 = getelementptr %struct.msm_file_private, ptr %1, i32 0, i32 6, i32 %36
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  %45 = getelementptr inbounds %struct.msm_ringbuffer, ptr %35, i32 0, i32 7
  store ptr %45, ptr %6, align 4
  %46 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %47 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 104) #8
  %48 = call i32 @drm_sched_entity_init(ptr noundef %47, i32 noundef %25, ptr noundef nonnull %6, i32 noundef 1, ptr noundef null) #6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store ptr %47, ptr %41, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %53

51:                                               ; preds = %44
  call void @mutex_unlock(ptr noundef nonnull @get_sched_entity.entity_lock) #6
  call void @kfree(ptr noundef %47) #6
  %52 = inttoptr i32 %48 to ptr
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %55

53:                                               ; preds = %50, %40
  call void @mutex_unlock(ptr noundef nonnull @get_sched_entity.entity_lock) #6
  %54 = load ptr, ptr %41, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi ptr [ %54, %53 ], [ %52, %51 ]
  %57 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %27, i32 0, i32 10
  store ptr %56, ptr %57, align 4
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %62

59:                                               ; preds = %55, %38
  %60 = phi ptr [ inttoptr (i32 -22 to ptr), %38 ], [ %56, %55 ]
  %61 = ptrtoint ptr %60 to i32
  call void @kfree(ptr noundef nonnull %27) #6
  br label %92

62:                                               ; preds = %55
  call void @_raw_write_lock(ptr noundef nonnull %1) #6
  %63 = getelementptr inbounds %struct.msm_file_private, ptr %1, i32 0, i32 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #6, !srcloc !9
  %64 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 1, ptr elementtype(i32) %63) #6, !srcloc !14
  %65 = extractvalue { i32, i32, i32 } %64, 0
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67, !prof !15

67:                                               ; preds = %62
  %68 = add i32 %65, 1
  %69 = or i32 %68, %65
  %70 = icmp sgt i32 %69, -1
  br i1 %70, label %73, label %71, !prof !11

71:                                               ; preds = %67, %62
  %72 = phi i32 [ 2, %62 ], [ 1, %67 ]
  call void @refcount_warn_saturate(ptr noundef %63, i32 noundef %72) #6
  br label %73

73:                                               ; preds = %71, %67
  %74 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %27, i32 0, i32 5
  store ptr %1, ptr %74, align 4
  %75 = getelementptr inbounds %struct.msm_file_private, ptr %1, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, 1
  store i32 %77, ptr %75, align 4
  store i32 %76, ptr %27, align 8
  %78 = icmp eq ptr %4, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  store i32 %76, ptr %4, align 4
  br label %80

80:                                               ; preds = %79, %73
  %81 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %27, i32 0, i32 7
  store i32 0, ptr %81, align 8
  %82 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %27, i32 0, i32 7, i32 0, i32 1
  store i32 33554436, ptr %82, align 4
  %83 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %27, i32 0, i32 7, i32 0, i32 2
  store ptr null, ptr %83, align 8
  %84 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %27, i32 0, i32 7, i32 1
  store i32 0, ptr %84, align 4
  %85 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %27, i32 0, i32 7, i32 2
  store i32 0, ptr %85, align 8
  %86 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %27, i32 0, i32 8
  call void @__mutex_init(ptr noundef %86, ptr noundef nonnull @.str, ptr noundef nonnull @msm_submitqueue_create.__key) #6
  %87 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %27, i32 0, i32 6
  %88 = getelementptr inbounds %struct.msm_file_private, ptr %1, i32 0, i32 1
  %89 = getelementptr inbounds %struct.msm_file_private, ptr %1, i32 0, i32 1, i32 1
  %90 = load ptr, ptr %89, align 4
  store ptr %87, ptr %89, align 4
  store ptr %88, ptr %87, align 8
  %91 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %27, i32 0, i32 6, i32 1
  store ptr %90, ptr %91, align 4
  store volatile ptr %87, ptr %90, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull %1, i32 0) #6, !srcloc !24
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !25
  br label %92

92:                                               ; preds = %80, %59, %22, %14, %8, %5
  %93 = phi i32 [ %61, %59 ], [ 0, %80 ], [ -19, %5 ], [ -19, %8 ], [ -12, %22 ], [ -22, %14 ]
  ret i32 %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_submitqueue_init(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_drm_private, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.msm_gpu, ptr %6, i32 0, i32 14
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, 3
  %12 = sdiv i32 %11, 2
  %13 = tail call i32 @msm_submitqueue_create(ptr noundef %0, ptr noundef %1, i32 noundef %12, i32 noundef 0, ptr noundef null)
  br label %14

14:                                               ; preds = %8, %2
  %15 = phi i32 [ %13, %8 ], [ -19, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_submitqueue_query(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_msm_submitqueue_query, ptr %2, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %61

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_msm_submitqueue_query, ptr %2, i32 0, i32 1
  %9 = load i32, ptr %8, align 8
  %10 = tail call ptr @msm_submitqueue_get(ptr noundef %1, i32 noundef %9)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %61, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.drm_msm_submitqueue_query, ptr %2, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.drm_msm_submitqueue_query, ptr %2, i32 0, i32 3
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 4, ptr %17, align 8
  br label %39

21:                                               ; preds = %16
  %22 = tail call i32 @llvm.umin.i32(i32 %18, i32 4) #6
  store i32 %22, ptr %17, align 8
  %23 = load i64, ptr %2, align 8
  %24 = trunc i64 %23 to i32
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i32 %22, i32 -1090519040) #7, !srcloc !26
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %10, i32 0, i32 3
  %31 = tail call ptr @llvm.thread.pointer() #6
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %33 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %32) #9, !srcloc !27
  %34 = and i32 %33, -13
  %35 = or i32 %34, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #6, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !29
  %36 = tail call i32 @arm_copy_to_user(ptr noundef %25, ptr noundef %30, i32 noundef %22) #6
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #6, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !29
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 0, i32 -14
  br label %39

39:                                               ; preds = %29, %21, %20, %12
  %40 = phi i32 [ -22, %12 ], [ 0, %20 ], [ -14, %21 ], [ %38, %29 ]
  %41 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %10, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #6, !srcloc !9
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #6, !srcloc !10
  %43 = extractvalue { i32, i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = icmp sgt i32 %43, 0
  br i1 %46, label %61, label %47, !prof !11

47:                                               ; preds = %45
  tail call void @refcount_warn_saturate(ptr noundef %41, i32 noundef 3) #6
  br label %61

48:                                               ; preds = %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %49 = getelementptr %struct.msm_gpu_submitqueue, ptr %10, i32 0, i32 7
  tail call void @idr_destroy(ptr noundef %49) #6
  %50 = getelementptr %struct.msm_gpu_submitqueue, ptr %10, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.msm_file_private, ptr %51, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #6, !srcloc !9
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #6, !srcloc !10
  %54 = extractvalue { i32, i32, i32 } %53, 0
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = icmp sgt i32 %54, 0
  br i1 %57, label %60, label %58, !prof !11

58:                                               ; preds = %56
  tail call void @refcount_warn_saturate(ptr noundef %52, i32 noundef 3) #6
  br label %60

59:                                               ; preds = %48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  tail call void @__msm_file_private_destroy(ptr noundef %52) #6, !callees !13
  br label %60

60:                                               ; preds = %59, %58, %56
  tail call void @kfree(ptr noundef nonnull %10) #6
  br label %61

61:                                               ; preds = %60, %47, %45, %7, %3
  %62 = phi i32 [ -22, %3 ], [ -2, %7 ], [ %40, %45 ], [ %40, %47 ], [ %40, %60 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_submitqueue_remove(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %45, label %4

4:                                                ; preds = %2
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %45, label %6

6:                                                ; preds = %4
  tail call void @_raw_write_lock(ptr noundef nonnull %0) #6
  %7 = getelementptr inbounds %struct.msm_file_private, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %12, %6
  %9 = phi ptr [ %7, %6 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %44, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %10, i32 -24
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %8

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %10, i32 -24
  %18 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %10, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull %0, i32 0) #6, !srcloc !24
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !25
  %22 = icmp eq ptr %17, null
  br i1 %22, label %45, label %23

23:                                               ; preds = %16
  %24 = getelementptr i8, ptr %10, i32 48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #6, !srcloc !9
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #6, !srcloc !10
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = icmp sgt i32 %26, 0
  br i1 %29, label %45, label %30, !prof !11

30:                                               ; preds = %28
  tail call void @refcount_warn_saturate(ptr noundef %24, i32 noundef 3) #6
  br label %45

31:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %32 = getelementptr i8, ptr %10, i32 8
  tail call void @idr_destroy(ptr noundef %32) #6
  %33 = getelementptr i8, ptr %10, i32 -4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.msm_file_private, ptr %34, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #6, !srcloc !9
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #6, !srcloc !10
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = icmp sgt i32 %37, 0
  br i1 %40, label %43, label %41, !prof !11

41:                                               ; preds = %39
  tail call void @refcount_warn_saturate(ptr noundef %35, i32 noundef 3) #6
  br label %43

42:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  tail call void @__msm_file_private_destroy(ptr noundef %35) #6, !callees !13
  br label %43

43:                                               ; preds = %42, %41, %39
  tail call void @kfree(ptr noundef nonnull %17) #6
  br label %45

44:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull %0, i32 0) #6, !srcloc !24
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !25
  br label %45

45:                                               ; preds = %44, %43, %30, %28, %16, %4, %2
  %46 = phi i32 [ -2, %44 ], [ 0, %2 ], [ -2, %4 ], [ 0, %16 ], [ 0, %28 ], [ 0, %30 ], [ 0, %43 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_entity_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind readonly }

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
!8 = !{i64 2148262080}
!9 = !{i64 659014, i64 2148148985, i64 2148149011, i64 2148149058, i64 2148149080, i64 2148149108, i64 2148149128}
!10 = !{i64 2148164215, i64 2148164247, i64 2148164276, i64 2148164310, i64 2148164341, i64 2148164364}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148895606}
!13 = !{ptr @__msm_file_private_destroy, ptr @msm_submitqueue_destroy}
!14 = !{i64 2148161858, i64 2148161890, i64 2148161919, i64 2148161953, i64 2148161984, i64 2148162007}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2148835500}
!17 = !{i64 1338924, i64 1338947, i64 1338967, i64 1338991, i64 1339007}
!18 = !{i64 2148823442}
!19 = !{i64 2148823517, i64 2148823544, i64 2148823591, i64 2148823613, i64 2148823641, i64 2148823661}
!20 = !{i64 2148873103}
!21 = !{i64 524136, i64 524163}
!22 = !{i64 524476, i64 524503, i64 524537, i64 524558}
!23 = !{i64 2148834695}
!24 = !{i64 1337909}
!25 = !{i64 2148872664}
!26 = !{i64 2149913307, i64 2149913332}
!27 = !{i64 2408841}
!28 = !{i64 2409038}
!29 = !{i64 2149894317}
