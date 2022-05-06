; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/mdp5/mdp5_mixer.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp5/mdp5_mixer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.79 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.82, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.82 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.mdp5_global_state = type { %struct.drm_private_state, ptr, ptr, %struct.mdp5_hw_pipe_state, %struct.mdp5_hw_mixer_state, %struct.mdp5_smp_state }
%struct.drm_private_state = type { ptr }
%struct.mdp5_hw_pipe_state = type { [13 x ptr] }
%struct.mdp5_hw_mixer_state = type { [8 x ptr] }
%struct.mdp5_smp_state = type { [2 x i32], [32 x [2 x i32]], i32, i32 }
%struct.mdp5_kms = type { %struct.mdp_kms, ptr, ptr, i32, [13 x ptr], i32, [8 x ptr], i32, [5 x ptr], ptr, i32, %struct.drm_modeset_lock, %struct.drm_private_obj, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i8, %struct.mdp_irq, i32 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
%struct.mdp5_hw_mixer = type { i32, ptr, i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mdp5_lm_instance = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"assigning Layer Mixer %d to crtc %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"assigning Right Layer Mixer %d to crtc %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_mixer.c\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: release from crtc %s\0A\00", align 1
@mixer_names = internal unnamed_addr constant [6 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], align 4
@lm_right_pair = internal unnamed_addr constant [6 x i32] [i32 1, i32 -1, i32 5, i32 -1, i32 -1, i32 -1], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"LM0\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"LM1\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"LM2\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"LM3\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"LM4\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"LM5\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp5_mixer_assign(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.msm_drm_private, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @mdp5_get_global_state(ptr noundef %0) #3
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = ptrtoint ptr %12 to i32
  br label %104

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.mdp5_global_state, ptr %12, i32 0, i32 4
  %18 = getelementptr inbounds %struct.mdp5_kms, ptr %11, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %80, label %21

21:                                               ; preds = %16
  %22 = icmp eq ptr %4, null
  br label %23

23:                                               ; preds = %76, %21
  %24 = phi i32 [ %19, %21 ], [ %78, %76 ]
  %25 = phi i32 [ 0, %21 ], [ %77, %76 ]
  %26 = getelementptr %struct.mdp5_kms, ptr %11, i32 0, i32 6, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr [8 x ptr], ptr %17, i32 0, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  %32 = icmp eq ptr %30, %1
  %33 = or i1 %31, %32
  br i1 %33, label %34, label %76

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %27, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %37, %2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %76

40:                                               ; preds = %34
  br i1 %22, label %68, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %27, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr [6 x i32], ptr @lm_right_pair, i32 0, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %43, 1073741821
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %104

48:                                               ; preds = %51
  %49 = add nuw i32 %52, 1
  %50 = icmp eq i32 %49, %24
  br i1 %50, label %104, label %51

51:                                               ; preds = %48, %41
  %52 = phi i32 [ %49, %48 ], [ 0, %41 ]
  %53 = getelementptr %struct.mdp5_kms, ptr %11, i32 0, i32 6, i32 %52
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, %45
  br i1 %57, label %58, label %48

58:                                               ; preds = %51
  %59 = load i32, ptr %54, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %104, label %61

61:                                               ; preds = %58
  %62 = getelementptr [8 x ptr], ptr %17, i32 0, i32 %59
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = getelementptr %struct.mdp5_kms, ptr %11, i32 0, i32 6, i32 %59
  %67 = load ptr, ptr %66, align 4
  store ptr %67, ptr %4, align 4
  br label %68

68:                                               ; preds = %65, %40
  %69 = load ptr, ptr %3, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = load i32, ptr %35, align 4
  %73 = and i32 %72, 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71, %68
  store ptr %27, ptr %3, align 4
  br label %76

76:                                               ; preds = %75, %71, %61, %34, %23
  %77 = add nuw i32 %25, 1
  %78 = load i32, ptr %18, align 8
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %23, label %80

80:                                               ; preds = %76, %16
  %81 = load ptr, ptr %3, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %104, label %83

83:                                               ; preds = %80
  %84 = icmp eq ptr %4, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %83
  %86 = load ptr, ptr %4, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %104, label %88

88:                                               ; preds = %85, %83
  %89 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %81, i32 0, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 3
  %92 = load ptr, ptr %91, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %90, ptr noundef %92) #3
  %93 = load ptr, ptr %3, align 4
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr [8 x ptr], ptr %17, i32 0, i32 %94
  store ptr %1, ptr %95, align 4
  br i1 %84, label %104, label %96

96:                                               ; preds = %88
  %97 = load ptr, ptr %4, align 4
  %98 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %97, i32 0, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = load ptr, ptr %91, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %99, ptr noundef %100) #3
  %101 = load ptr, ptr %4, align 4
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr [8 x ptr], ptr %17, i32 0, i32 %102
  store ptr %1, ptr %103, align 4
  br label %104

104:                                              ; preds = %96, %88, %85, %80, %58, %48, %41, %14
  %105 = phi i32 [ %15, %14 ], [ -12, %80 ], [ -12, %85 ], [ 0, %96 ], [ 0, %88 ], [ -22, %48 ], [ -22, %58 ], [ -22, %41 ]
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_get_global_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp5_mixer_release(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @mdp5_get_global_state(ptr noundef %0) #3
  %4 = getelementptr inbounds %struct.mdp5_global_state, ptr %3, i32 0, i32 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr [8 x ptr], ptr %4, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 127, i32 noundef 9, ptr noundef null) #3
  br label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef %14, ptr noundef %16) #3
  %17 = load i32, ptr %1, align 4
  %18 = getelementptr [8 x ptr], ptr %4, i32 0, i32 %17
  store ptr null, ptr %18, align 4
  br label %19

19:                                               ; preds = %12, %11, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp5_mixer_destroy(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mdp5_mixer_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 28) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 4
  %7 = getelementptr [6 x ptr], ptr @mixer_names, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %3, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %3, i32 0, i32 2
  store i32 %6, ptr %10, align 8
  %11 = getelementptr inbounds %struct.mdp5_lm_instance, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %3, i32 0, i32 3
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mdp5_lm_instance, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %3, i32 0, i32 4
  store i32 %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.mdp5_lm_instance, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %3, i32 0, i32 5
  store i32 %18, ptr %19, align 4
  %20 = tail call i32 @mdp_ctl_flush_mask_lm(i32 noundef %6) #3
  %21 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %3, i32 0, i32 6
  store i32 %20, ptr %21, align 8
  br label %22

22:                                               ; preds = %5, %1
  %23 = phi ptr [ %3, %5 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp_ctl_flush_mask_lm(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
