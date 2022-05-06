; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/mdp5/mdp5_pipe.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp5/mdp5_pipe.c"
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
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.mdp5_hw_pipe = type { i32, ptr, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_pipe.c\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: alloc SMP blocks\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: assign to plane %s for caps %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"%s: assign to right of plane %s for caps %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: release from plane %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"%s: free SMP blocks\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@pipe2name.names = internal unnamed_addr constant [13 x ptr] [ptr null, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"VIG0\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"VIG1\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"VIG2\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"RGB0\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"RGB1\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"RGB2\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"DMA0\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"DMA1\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"VIG3\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"RGB3\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"CURSOR0\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"CURSOR1\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp5_pipe_assign(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.msm_drm_private, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr @mdp5_get_global_state(ptr noundef %0) #3
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = ptrtoint ptr %13 to i32
  br label %144

17:                                               ; preds = %6
  %18 = tail call ptr @mdp5_get_existing_global_state(ptr noundef %12) #3
  %19 = getelementptr inbounds %struct.mdp5_global_state, ptr %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.mdp5_global_state, ptr %13, i32 0, i32 3
  %21 = getelementptr inbounds %struct.mdp5_kms, ptr %12, i32 0, i32 3
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %93, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.drm_plane, ptr %1, i32 0, i32 16
  %26 = xor i32 %2, -1
  %27 = icmp eq ptr %5, null
  br label %28

28:                                               ; preds = %89, %24
  %29 = phi i32 [ 0, %24 ], [ %90, %89 ]
  %30 = getelementptr %struct.mdp5_kms, ptr %12, i32 0, i32 4, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr [13 x ptr], ptr %20, i32 0, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %89

36:                                               ; preds = %28
  %37 = getelementptr [13 x ptr], ptr %19, i32 0, i32 %32
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %89

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %31, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %43, %2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %89

46:                                               ; preds = %40
  %47 = and i32 %42, 64
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %25, align 8
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %89

52:                                               ; preds = %49, %46
  %53 = load ptr, ptr %4, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %52
  %56 = and i32 %42, %26
  %57 = tail call i32 @__sw_hweight32(i32 noundef %56) #3
  %58 = load ptr, ptr %4, align 4
  %59 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %58, i32 0, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, %26
  %62 = tail call i32 @__sw_hweight32(i32 noundef %61) #3
  %63 = icmp ult i32 %57, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %55, %52
  br i1 %27, label %88, label %65

65:                                               ; preds = %64
  %66 = load i32, ptr %21, align 8
  %67 = add nuw i32 %29, 1
  %68 = icmp ult i32 %67, %66
  br i1 %68, label %69, label %89

69:                                               ; preds = %65
  %70 = load i32, ptr %41, align 4
  %71 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %31, i32 0, i32 2
  br label %72

72:                                               ; preds = %85, %69
  %73 = phi i32 [ %67, %69 ], [ %86, %85 ]
  %74 = getelementptr %struct.mdp5_kms, ptr %12, i32 0, i32 4, i32 %73
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %75, i32 0, i32 4
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, %70
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i32, ptr %71, align 4
  %81 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %75, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = icmp ugt i32 %80, %82
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  store ptr %75, ptr %5, align 4
  br label %88

85:                                               ; preds = %79, %72
  %86 = add i32 %73, 1
  %87 = icmp eq i32 %86, %66
  br i1 %87, label %89, label %72

88:                                               ; preds = %84, %64
  store ptr %31, ptr %4, align 4
  br label %89

89:                                               ; preds = %88, %85, %65, %55, %49, %40, %36, %28
  %90 = add nuw i32 %29, 1
  %91 = load i32, ptr %21, align 8
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %28, label %93

93:                                               ; preds = %89, %17
  %94 = load ptr, ptr %4, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %144, label %96

96:                                               ; preds = %93
  %97 = icmp eq ptr %5, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %96
  %99 = load ptr, ptr %5, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %144, label %105

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.mdp5_kms, ptr %12, i32 0, i32 13
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %127, label %111

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.mdp5_kms, ptr %12, i32 0, i32 13
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %127, label %109

109:                                              ; preds = %105
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef null) #3
  %110 = load ptr, ptr %4, align 4
  br label %111

111:                                              ; preds = %109, %101
  %112 = phi ptr [ %110, %109 ], [ %94, %101 ]
  %113 = phi ptr [ %106, %109 ], [ %102, %101 ]
  %114 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %112, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef %115) #3
  %116 = load ptr, ptr %113, align 4
  %117 = getelementptr inbounds %struct.mdp5_global_state, ptr %13, i32 0, i32 5
  %118 = load ptr, ptr %4, align 4
  %119 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %118, i32 0, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = tail call i32 @mdp5_smp_assign(ptr noundef %116, ptr noundef %117, i32 noundef %120, i32 noundef %3) #3
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %144

123:                                              ; preds = %111
  %124 = load ptr, ptr %4, align 4
  %125 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %124, i32 0, i32 6
  store i32 %3, ptr %125, align 4
  %126 = load ptr, ptr %4, align 4
  br label %127

127:                                              ; preds = %123, %105, %101
  %128 = phi ptr [ %94, %105 ], [ %126, %123 ], [ %94, %101 ]
  %129 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %128, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.drm_plane, ptr %1, i32 0, i32 2
  %132 = load ptr, ptr %131, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef %130, ptr noundef %132, i32 noundef %2) #3
  %133 = load ptr, ptr %4, align 4
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr [13 x ptr], ptr %20, i32 0, i32 %134
  store ptr %1, ptr %135, align 4
  br i1 %97, label %144, label %136

136:                                              ; preds = %127
  %137 = load ptr, ptr %5, align 4
  %138 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %137, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = load ptr, ptr %131, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef %139, ptr noundef %140, i32 noundef %2) #3
  %141 = load ptr, ptr %5, align 4
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr [13 x ptr], ptr %20, i32 0, i32 %142
  store ptr %1, ptr %143, align 4
  br label %144

144:                                              ; preds = %136, %127, %111, %98, %93, %15
  %145 = phi i32 [ %16, %15 ], [ -12, %93 ], [ -12, %98 ], [ 0, %136 ], [ 0, %127 ], [ -12, %111 ]
  ret i32 %145
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_get_global_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_get_existing_global_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_smp_assign(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp5_pipe_release(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @mdp5_get_global_state(ptr noundef %0) #3
  %10 = getelementptr inbounds %struct.mdp5_global_state, ptr %9, i32 0, i32 3
  %11 = icmp eq ptr %1, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr %1, align 4
  %14 = getelementptr [13 x ptr], ptr %10, i32 0, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef null) #3
  br label %35

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.drm_plane, ptr %15, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef %20, ptr noundef %22) #3
  %23 = getelementptr inbounds %struct.mdp5_kms, ptr %8, i32 0, i32 13
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = load ptr, ptr %19, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, ptr noundef %27) #3
  %28 = load ptr, ptr %23, align 4
  %29 = getelementptr inbounds %struct.mdp5_global_state, ptr %9, i32 0, i32 5
  %30 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %1, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  tail call void @mdp5_smp_release(ptr noundef %28, ptr noundef %29, i32 noundef %31) #3
  br label %32

32:                                               ; preds = %26, %18
  %33 = load i32, ptr %1, align 4
  %34 = getelementptr [13 x ptr], ptr %10, i32 0, i32 %33
  store ptr null, ptr %34, align 4
  br label %35

35:                                               ; preds = %32, %17, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_smp_release(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp5_pipe_destroy(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mdp5_pipe_init(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 28) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr [13 x ptr], ptr @pipe2name.names, i32 0, i32 %0
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %5, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %5, i32 0, i32 2
  store i32 %0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %5, i32 0, i32 3
  store i32 %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %5, i32 0, i32 4
  store i32 %2, ptr %13, align 8
  %14 = tail call i32 @mdp_ctl_flush_mask_pipe(i32 noundef %0) #3
  %15 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %5, i32 0, i32 5
  store i32 %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %7, %3
  %17 = phi ptr [ %5, %7 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp_ctl_flush_mask_pipe(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

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
