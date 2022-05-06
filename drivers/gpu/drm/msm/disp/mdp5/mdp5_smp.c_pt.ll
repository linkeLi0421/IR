; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/mdp5/mdp5_smp.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp5/mdp5_smp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
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
%struct.drm_format_info = type { i32, i8, i8, %union.anon.74, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.74 = type { [4 x i8] }
%struct.mdp_format = type { %struct.msm_format, i32, i32, i32, i32, [4 x i8], i8, i8, i8, i8, i32, i32, i8 }
%struct.msm_format = type { i32 }
%struct.mdp5_smp = type { ptr, [32 x i8], i32, i32, [22 x i32], [22 x i32], [13 x i32], [13 x i32], [13 x i32] }
%struct.mdp5_cfg_hw = type { ptr, %struct.mdp5_mdp_block, %struct.mdp5_smp_block, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 }
%struct.mdp5_mdp_block = type { i32, [8 x i32], i32 }
%struct.mdp5_smp_block = type { i32, i32, [32 x i32], [2 x i32], [32 x i8] }
%struct.mdp5_ctl_block = type { i32, [8 x i32], i32 }
%struct.mdp5_pipe_block = type { i32, [8 x i32], i32 }
%struct.mdp5_lm_block = type { i32, [8 x i32], [8 x %struct.mdp5_lm_instance], i32, i32, i32 }
%struct.mdp5_lm_instance = type { i32, i32, i32, i32 }
%struct.mdp5_sub_block = type { i32, [8 x i32] }
%struct.mdp5_intf_block = type { [8 x i32], [5 x i32] }
%struct.mdp5_perf_block = type { i32, i32, i32 }
%struct.mdp5_smp_state = type { [2 x i32], [32 x [2 x i32]], i32, i32 }
%struct.mdp5_hw_pipe = type { i32, ptr, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mdp5_global_state = type { %struct.drm_private_state, ptr, ptr, %struct.mdp5_hw_pipe_state, %struct.mdp5_hw_mixer_state, %struct.mdp5_smp_state }
%struct.drm_private_state = type { ptr }
%struct.mdp5_hw_pipe_state = type { [13 x ptr] }
%struct.mdp5_hw_mixer_state = type { [8 x ptr] }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }

@.str = private unnamed_addr constant [31 x i8] c"%s[%d]: request %d SMP blocks\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"*ERROR* Cannot allocate %d SMP blocks: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"assign %s:%u, %u blks\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"release %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"name\09inuse\09plane\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"----\09-----\09-----\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"%s:%d\09%d\09%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"TOTAL:\09%d\09(of %d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"AVAIL:\09%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_smp.c\00", align 1
@mdp5_cfg = external dso_local local_unnamed_addr global ptr, align 4
@pipe2name.names = internal unnamed_addr constant [13 x ptr] [ptr null, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"VIG0\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"VIG1\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"VIG2\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"RGB0\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"RGB1\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"RGB2\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"DMA0\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"DMA1\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"VIG3\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"RGB3\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"CURSOR0\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"CURSOR1\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"%d MMBs allocated (%d reserved)\0A\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"*ERROR* out of blks (req=%d > avail=%d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@switch.table.mdp5_smp_dump.29 = private unnamed_addr constant [7 x i32] [i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 1], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp5_smp_calculate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = load i32, ptr %1, align 4
  %6 = tail call ptr @drm_format_info(i32 noundef %5) #7
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.msm_drm_private, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mdp5_kms, ptr %11, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @mdp5_cfg_get_hw_rev(ptr noundef %13) #7
  %15 = getelementptr inbounds %struct.drm_format_info, ptr %6, i32 0, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.drm_format_info, ptr %6, i32 0, i32 6
  %18 = load i8, ptr %17, align 2
  %19 = zext i8 %18 to i32
  %20 = icmp sgt i32 %14, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.mdp_format, ptr %1, i32 0, i32 11
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = icmp ugt i8 %18, 1
  %27 = select i1 %3, i1 %26, i1 false
  %28 = select i1 %27, i32 1, i32 %19
  br label %32

29:                                               ; preds = %21, %4
  %30 = zext i8 %16 to i32
  %31 = icmp eq i8 %16, 0
  br i1 %31, label %67, label %32

32:                                               ; preds = %29, %25
  %33 = phi i32 [ 2, %25 ], [ %30, %29 ]
  %34 = phi i32 [ %28, %25 ], [ %19, %29 ]
  %35 = getelementptr inbounds %struct.drm_format_info, ptr %6, i32 0, i32 3
  %36 = getelementptr inbounds %struct.mdp5_smp, ptr %0, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, -1
  %39 = icmp eq i32 %14, 0
  br label %40

40:                                               ; preds = %60, %32
  %41 = phi i32 [ 0, %32 ], [ %64, %60 ]
  %42 = phi i32 [ 0, %32 ], [ %65, %60 ]
  %43 = getelementptr [4 x i8], ptr %35, i32 0, i32 %42
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = mul i32 %45, %2
  %47 = icmp eq i32 %42, 0
  %48 = select i1 %47, i32 1, i32 %34
  %49 = udiv i32 %46, %48
  %50 = shl i32 %49, 1
  %51 = add i32 %38, %50
  %52 = sdiv i32 %51, %37
  br i1 %39, label %53, label %60

53:                                               ; preds = %40
  %54 = add i32 %52, -1
  %55 = icmp eq i32 %54, 0
  %56 = tail call i32 @llvm.ctlz.i32(i32 %54, i1 false) #7, !range !8
  %57 = sub nuw nsw i32 32, %56
  %58 = shl nuw i32 1, %57
  %59 = select i1 %55, i32 1, i32 %58
  br label %60

60:                                               ; preds = %53, %40
  %61 = phi i32 [ %52, %40 ], [ %59, %53 ]
  %62 = shl i32 %42, 3
  %63 = shl i32 %61, %62
  %64 = or i32 %63, %41
  %65 = add nuw nsw i32 %42, 1
  %66 = icmp eq i32 %65, %33
  br i1 %66, label %67, label %40

67:                                               ; preds = %60, %29
  %68 = phi i32 [ 0, %29 ], [ %64, %60 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_cfg_get_hw_rev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp5_smp_assign(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_drm_private, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mdp5_kms, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr [13 x ptr], ptr @pipe2name.names, i32 0, i32 %2
  %13 = getelementptr inbounds %struct.mdp5_smp, ptr %0, i32 0, i32 2
  %14 = add i32 %2, -4
  %15 = icmp ult i32 %14, 7
  %16 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_smp_dump.29, i32 0, i32 %14
  %17 = add i32 %2, -4
  %18 = icmp ult i32 %17, 7
  %19 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_smp_dump.29, i32 0, i32 %17
  br label %20

20:                                               ; preds = %79, %4
  %21 = phi i32 [ %3, %4 ], [ %80, %79 ]
  %22 = phi i32 [ 0, %4 ], [ %81, %79 ]
  br i1 %15, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, ptr %16, align 4
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi i32 [ %24, %23 ], [ 3, %20 ]
  %27 = icmp ult i32 %22, %26
  br i1 %27, label %28, label %82

28:                                               ; preds = %25
  br i1 %18, label %29, label %31

29:                                               ; preds = %28
  %30 = load i32, ptr %19, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i32 [ %30, %29 ], [ 3, %28 ]
  %33 = icmp ugt i32 %32, %22
  br i1 %33, label %35, label %34, !prof !9

34:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 43, i32 noundef 9, ptr noundef null) #7
  br label %40

35:                                               ; preds = %31
  %36 = load ptr, ptr @mdp5_cfg, align 4
  %37 = getelementptr %struct.mdp5_cfg_hw, ptr %36, i32 0, i32 2, i32 2, i32 %2
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, %22
  br label %40

40:                                               ; preds = %35, %34
  %41 = phi i32 [ 0, %34 ], [ %39, %35 ]
  %42 = and i32 %21, 255
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %79, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %12, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef %45, i32 noundef %22, i32 noundef %42) #7
  %46 = getelementptr %struct.mdp5_smp_state, ptr %1, i32 0, i32 1, i32 %41
  %47 = load i32, ptr %13, align 4
  %48 = tail call i32 @__bitmap_weight(ptr noundef %46, i32 noundef %47) #7
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %51, !prof !10

50:                                               ; preds = %44
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 71, i32 noundef 9, ptr noundef null) #7
  br label %51

51:                                               ; preds = %50, %44
  %52 = getelementptr %struct.mdp5_smp, ptr %0, i32 0, i32 1, i32 %41
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = zext i8 %53 to i32
  %57 = sub nsw i32 %42, %56
  %58 = tail call i32 @llvm.smax.i32(i32 %57, i32 0) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %58, i32 noundef %56) #7
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %58, %55 ], [ %42, %51 ]
  %61 = tail call i32 @__bitmap_weight(ptr noundef %1, i32 noundef %47) #7
  %62 = sub i32 %47, %61
  %63 = icmp sgt i32 %60, %62
  br i1 %63, label %73, label %64

64:                                               ; preds = %59
  %65 = icmp eq i32 %60, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %66, %64
  %67 = phi i32 [ %69, %66 ], [ 0, %64 ]
  %68 = tail call i32 @_find_first_zero_bit_le(ptr noundef %1, i32 noundef %47) #7
  tail call void @_set_bit(i32 noundef %68, ptr noundef %46) #7
  tail call void @_set_bit(i32 noundef %68, ptr noundef %1) #7
  %69 = add nuw nsw i32 %67, 1
  %70 = icmp eq i32 %69, %60
  br i1 %70, label %71, label %66

71:                                               ; preds = %66, %64
  %72 = lshr i32 %21, 8
  br label %79

73:                                               ; preds = %59
  %74 = load ptr, ptr %0, align 4
  %75 = getelementptr inbounds %struct.drm_device, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %76, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24, i32 noundef %60, i32 noundef %62) #7
  %77 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %78, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %42, i32 noundef -28) #7
  br label %87

79:                                               ; preds = %71, %40
  %80 = phi i32 [ %21, %40 ], [ %72, %71 ]
  %81 = add nuw nsw i32 %22, 1
  br label %20

82:                                               ; preds = %25
  %83 = shl nuw i32 1, %2
  %84 = getelementptr inbounds %struct.mdp5_smp_state, ptr %1, i32 0, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = or i32 %85, %83
  store i32 %86, ptr %84, align 4
  br label %87

87:                                               ; preds = %82, %73
  %88 = phi i32 [ -28, %73 ], [ 0, %82 ]
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp5_smp_release(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mdp5_smp, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 31
  %7 = lshr i32 %6, 3
  %8 = and i32 %7, 536870908
  %9 = add i32 %2, -4
  %10 = icmp ult i32 %9, 7
  %11 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_smp_dump.29, i32 0, i32 %9
  %12 = add i32 %2, -4
  %13 = icmp ult i32 %12, 7
  %14 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_smp_dump.29, i32 0, i32 %12
  br label %15

15:                                               ; preds = %34, %3
  %16 = phi i32 [ 0, %3 ], [ %38, %34 ]
  br i1 %10, label %17, label %19

17:                                               ; preds = %15
  %18 = load i32, ptr %11, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %18, %17 ], [ 3, %15 ]
  %21 = icmp ult i32 %16, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  br i1 %13, label %23, label %25

23:                                               ; preds = %22
  %24 = load i32, ptr %14, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ %24, %23 ], [ 3, %22 ]
  %27 = icmp ugt i32 %26, %16
  br i1 %27, label %29, label %28, !prof !9

28:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 43, i32 noundef 9, ptr noundef null) #7
  br label %34

29:                                               ; preds = %25
  %30 = load ptr, ptr @mdp5_cfg, align 4
  %31 = getelementptr %struct.mdp5_cfg_hw, ptr %30, i32 0, i32 2, i32 2, i32 %2
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %16
  br label %34

34:                                               ; preds = %29, %28
  %35 = phi i32 [ 0, %28 ], [ %33, %29 ]
  %36 = getelementptr %struct.mdp5_smp_state, ptr %1, i32 0, i32 1, i32 %35
  %37 = tail call i32 @__bitmap_andnot(ptr noundef %1, ptr noundef %1, ptr noundef %36, i32 noundef %5) #7
  tail call void @llvm.memset.p0.i32(ptr align 4 %36, i8 0, i32 %8, i1 false) #7
  %38 = add nuw nsw i32 %16, 1
  br label %15

39:                                               ; preds = %19
  %40 = shl nuw i32 1, %2
  %41 = getelementptr inbounds %struct.mdp5_smp_state, ptr %1, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, ptr %41, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp5_smp_prepare_commit(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mdp5_smp_state, ptr %1, i32 0, i32 2
  %4 = tail call i32 @_find_next_bit_le(ptr noundef %3, i32 noundef 32, i32 noundef 0) #7
  %5 = icmp ult i32 %4, 32
  br i1 %5, label %6, label %93

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mdp5_smp, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.mdp5_smp, ptr %0, i32 0, i32 3
  br label %9

9:                                                ; preds = %80, %6
  %10 = phi i32 [ %4, %6 ], [ %91, %80 ]
  %11 = getelementptr [13 x ptr], ptr @pipe2name.names, i32 0, i32 %10
  %12 = add i32 %10, -4
  %13 = icmp ult i32 %12, 7
  %14 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_smp_dump.29, i32 0, i32 %12
  %15 = add i32 %10, -4
  %16 = icmp ult i32 %15, 7
  %17 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_smp_dump.29, i32 0, i32 %15
  br label %18

18:                                               ; preds = %75, %9
  %19 = phi i32 [ %77, %75 ], [ 0, %9 ]
  %20 = phi i32 [ %79, %75 ], [ 0, %9 ]
  br i1 %13, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, ptr %14, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %22, %21 ], [ 3, %18 ]
  %25 = icmp ult i32 %20, %24
  br i1 %25, label %26, label %80

26:                                               ; preds = %23
  br i1 %16, label %27, label %29

27:                                               ; preds = %26
  %28 = load i32, ptr %17, align 4
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i32 [ %28, %27 ], [ 3, %26 ]
  %31 = icmp ugt i32 %30, %20
  br i1 %31, label %33, label %32, !prof !9

32:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 43, i32 noundef 9, ptr noundef null) #7
  br label %38

33:                                               ; preds = %29
  %34 = load ptr, ptr @mdp5_cfg, align 4
  %35 = getelementptr %struct.mdp5_cfg_hw, ptr %34, i32 0, i32 2, i32 2, i32 %10
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, %20
  br label %38

38:                                               ; preds = %33, %32
  %39 = phi i32 [ 0, %32 ], [ %37, %33 ]
  %40 = getelementptr %struct.mdp5_smp_state, ptr %1, i32 0, i32 1, i32 %39
  %41 = load i32, ptr %7, align 4
  %42 = tail call i32 @_find_next_bit_le(ptr noundef %40, i32 noundef %41, i32 noundef 0) #7
  %43 = icmp ult i32 %42, %41
  br i1 %43, label %44, label %75

44:                                               ; preds = %38
  %45 = shl i32 %39, 16
  %46 = and i32 %45, 16711680
  %47 = shl i32 %39, 8
  %48 = and i32 %47, 65280
  %49 = and i32 %39, 255
  br label %50

50:                                               ; preds = %68, %44
  %51 = phi i32 [ %42, %44 ], [ %73, %68 ]
  %52 = phi i32 [ 0, %44 ], [ %71, %68 ]
  %53 = freeze i32 %51
  %54 = udiv i32 %53, 3
  %55 = mul i32 %54, 3
  %56 = sub i32 %53, %55
  %57 = getelementptr %struct.mdp5_smp, ptr %0, i32 0, i32 4, i32 %54
  %58 = load i32, ptr %57, align 4
  switch i32 %56, label %68 [
    i32 0, label %59
    i32 1, label %62
    i32 2, label %65
  ]

59:                                               ; preds = %50
  %60 = and i32 %58, -256
  %61 = or i32 %60, %49
  br label %68

62:                                               ; preds = %50
  %63 = and i32 %58, -65281
  %64 = or i32 %63, %48
  br label %68

65:                                               ; preds = %50
  %66 = and i32 %58, -16711681
  %67 = or i32 %66, %46
  br label %68

68:                                               ; preds = %65, %62, %59, %50
  %69 = phi i32 [ %58, %50 ], [ %67, %65 ], [ %64, %62 ], [ %61, %59 ]
  store i32 %69, ptr %57, align 4
  %70 = getelementptr %struct.mdp5_smp, ptr %0, i32 0, i32 5, i32 %54
  store i32 %69, ptr %70, align 4
  %71 = add i32 %52, 1
  %72 = add nuw i32 %51, 1
  %73 = tail call i32 @_find_next_bit_le(ptr noundef %40, i32 noundef %41, i32 noundef %72) #7
  %74 = icmp ult i32 %73, %41
  br i1 %74, label %50, label %75

75:                                               ; preds = %68, %38
  %76 = phi i32 [ 0, %38 ], [ %71, %68 ]
  %77 = add i32 %76, %19
  %78 = load ptr, ptr %11, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef %78, i32 noundef %20, i32 noundef %77) #7
  %79 = add nuw nsw i32 %20, 1
  br label %18

80:                                               ; preds = %23
  %81 = load i32, ptr %8, align 4
  %82 = sdiv i32 %81, 16
  %83 = mul i32 %82, %19
  %84 = lshr i32 %83, 2
  %85 = getelementptr %struct.mdp5_smp, ptr %0, i32 0, i32 6, i32 %10
  store i32 %84, ptr %85, align 4
  %86 = shl nuw nsw i32 %84, 1
  %87 = getelementptr %struct.mdp5_smp, ptr %0, i32 0, i32 7, i32 %10
  store i32 %86, ptr %87, align 4
  %88 = mul nuw i32 %84, 3
  %89 = getelementptr %struct.mdp5_smp, ptr %0, i32 0, i32 8, i32 %10
  store i32 %88, ptr %89, align 4
  %90 = add i32 %10, 1
  %91 = tail call i32 @_find_next_bit_le(ptr noundef %3, i32 noundef 32, i32 noundef %90) #7
  %92 = icmp ult i32 %91, 32
  br i1 %92, label %9, label %93

93:                                               ; preds = %80, %2
  %94 = getelementptr inbounds %struct.mdp5_smp, ptr %0, i32 0, i32 2
  %95 = load i32, ptr %94, align 4
  %96 = icmp slt i32 %95, -2
  br i1 %96, label %129, label %97

97:                                               ; preds = %93
  %98 = sdiv i32 %95, 3
  %99 = load ptr, ptr %0, align 4
  %100 = getelementptr inbounds %struct.drm_device, ptr %99, i32 0, i32 5
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.msm_drm_private, ptr %101, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.mdp5_kms, ptr %103, i32 0, i32 26
  %105 = getelementptr inbounds %struct.mdp5_kms, ptr %103, i32 0, i32 15
  br label %106

106:                                              ; preds = %124, %97
  %107 = phi i32 [ 0, %97 ], [ %127, %124 ]
  %108 = shl i32 %107, 2
  %109 = add i32 %108, 128
  %110 = getelementptr %struct.mdp5_smp, ptr %0, i32 0, i32 4, i32 %107
  %111 = load i32, ptr %110, align 4
  %112 = load i32, ptr %104, align 8
  %113 = icmp slt i32 %112, 1
  br i1 %113, label %114, label %115, !prof !10

114:                                              ; preds = %106
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %115

115:                                              ; preds = %114, %106
  %116 = load ptr, ptr %105, align 4
  %117 = getelementptr i8, ptr %116, i32 %109
  tail call void @msm_writel(i32 noundef %111, ptr noundef %117) #7
  %118 = add i32 %108, 304
  %119 = getelementptr %struct.mdp5_smp, ptr %0, i32 0, i32 5, i32 %107
  %120 = load i32, ptr %119, align 4
  %121 = load i32, ptr %104, align 8
  %122 = icmp slt i32 %121, 1
  br i1 %122, label %123, label %124, !prof !10

123:                                              ; preds = %115
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %124

124:                                              ; preds = %123, %115
  %125 = load ptr, ptr %105, align 4
  %126 = getelementptr i8, ptr %125, i32 %118
  tail call void @msm_writel(i32 noundef %120, ptr noundef %126) #7
  %127 = add nuw nsw i32 %107, 1
  %128 = icmp eq i32 %107, %98
  br i1 %128, label %129, label %106

129:                                              ; preds = %124, %93
  tail call fastcc void @write_smp_fifo_regs(ptr noundef %0)
  store i32 0, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @write_smp_fifo_regs(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_drm_private, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mdp5_kms, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %170, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.mdp5_kms, ptr %6, i32 0, i32 26
  %12 = getelementptr inbounds %struct.mdp5_kms, ptr %6, i32 0, i32 15
  br label %13

13:                                               ; preds = %164, %10
  %14 = phi i32 [ 0, %10 ], [ %167, %164 ]
  %15 = getelementptr %struct.mdp5_kms, ptr %6, i32 0, i32 4, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %56 [
    i32 0, label %19
    i32 1, label %20
    i32 2, label %23
    i32 3, label %26
    i32 4, label %29
    i32 5, label %32
    i32 6, label %35
    i32 7, label %38
    i32 8, label %41
    i32 9, label %44
    i32 10, label %47
    i32 11, label %50
    i32 12, label %53
  ]

19:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 550, 0\0A.popsection", ""() #7, !srcloc !11
  unreachable

20:                                               ; preds = %13
  %21 = load ptr, ptr @mdp5_cfg, align 4
  %22 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %21, i32 0, i32 4, i32 1
  br label %57

23:                                               ; preds = %13
  %24 = load ptr, ptr @mdp5_cfg, align 4
  %25 = getelementptr %struct.mdp5_cfg_hw, ptr %24, i32 0, i32 4, i32 1, i32 1
  br label %57

26:                                               ; preds = %13
  %27 = load ptr, ptr @mdp5_cfg, align 4
  %28 = getelementptr %struct.mdp5_cfg_hw, ptr %27, i32 0, i32 4, i32 1, i32 2
  br label %57

29:                                               ; preds = %13
  %30 = load ptr, ptr @mdp5_cfg, align 4
  %31 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %30, i32 0, i32 5, i32 1
  br label %57

32:                                               ; preds = %13
  %33 = load ptr, ptr @mdp5_cfg, align 4
  %34 = getelementptr %struct.mdp5_cfg_hw, ptr %33, i32 0, i32 5, i32 1, i32 1
  br label %57

35:                                               ; preds = %13
  %36 = load ptr, ptr @mdp5_cfg, align 4
  %37 = getelementptr %struct.mdp5_cfg_hw, ptr %36, i32 0, i32 5, i32 1, i32 2
  br label %57

38:                                               ; preds = %13
  %39 = load ptr, ptr @mdp5_cfg, align 4
  %40 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %39, i32 0, i32 6, i32 1
  br label %57

41:                                               ; preds = %13
  %42 = load ptr, ptr @mdp5_cfg, align 4
  %43 = getelementptr %struct.mdp5_cfg_hw, ptr %42, i32 0, i32 6, i32 1, i32 1
  br label %57

44:                                               ; preds = %13
  %45 = load ptr, ptr @mdp5_cfg, align 4
  %46 = getelementptr %struct.mdp5_cfg_hw, ptr %45, i32 0, i32 4, i32 1, i32 3
  br label %57

47:                                               ; preds = %13
  %48 = load ptr, ptr @mdp5_cfg, align 4
  %49 = getelementptr %struct.mdp5_cfg_hw, ptr %48, i32 0, i32 5, i32 1, i32 3
  br label %57

50:                                               ; preds = %13
  %51 = load ptr, ptr @mdp5_cfg, align 4
  %52 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %51, i32 0, i32 7, i32 1
  br label %57

53:                                               ; preds = %13
  %54 = load ptr, ptr @mdp5_cfg, align 4
  %55 = getelementptr %struct.mdp5_cfg_hw, ptr %54, i32 0, i32 7, i32 1, i32 1
  br label %57

56:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #7, !srcloc !12
  unreachable

57:                                               ; preds = %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20
  %58 = phi ptr [ %55, %53 ], [ %52, %50 ], [ %49, %47 ], [ %46, %44 ], [ %43, %41 ], [ %40, %38 ], [ %37, %35 ], [ %34, %32 ], [ %31, %29 ], [ %28, %26 ], [ %25, %23 ], [ %22, %20 ]
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, 80
  %61 = getelementptr %struct.mdp5_smp, ptr %0, i32 0, i32 6, i32 %18
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %11, align 8
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %65, label %66, !prof !10

65:                                               ; preds = %57
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %66

66:                                               ; preds = %65, %57
  %67 = load ptr, ptr %12, align 4
  %68 = getelementptr i8, ptr %67, i32 %60
  tail call void @msm_writel(i32 noundef %62, ptr noundef %68) #7
  switch i32 %18, label %105 [
    i32 12, label %102
    i32 1, label %69
    i32 2, label %72
    i32 3, label %75
    i32 4, label %78
    i32 5, label %81
    i32 6, label %84
    i32 7, label %87
    i32 8, label %90
    i32 9, label %93
    i32 10, label %96
    i32 11, label %99
  ]

69:                                               ; preds = %66
  %70 = load ptr, ptr @mdp5_cfg, align 4
  %71 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %70, i32 0, i32 4, i32 1
  br label %106

72:                                               ; preds = %66
  %73 = load ptr, ptr @mdp5_cfg, align 4
  %74 = getelementptr %struct.mdp5_cfg_hw, ptr %73, i32 0, i32 4, i32 1, i32 1
  br label %106

75:                                               ; preds = %66
  %76 = load ptr, ptr @mdp5_cfg, align 4
  %77 = getelementptr %struct.mdp5_cfg_hw, ptr %76, i32 0, i32 4, i32 1, i32 2
  br label %106

78:                                               ; preds = %66
  %79 = load ptr, ptr @mdp5_cfg, align 4
  %80 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %79, i32 0, i32 5, i32 1
  br label %106

81:                                               ; preds = %66
  %82 = load ptr, ptr @mdp5_cfg, align 4
  %83 = getelementptr %struct.mdp5_cfg_hw, ptr %82, i32 0, i32 5, i32 1, i32 1
  br label %106

84:                                               ; preds = %66
  %85 = load ptr, ptr @mdp5_cfg, align 4
  %86 = getelementptr %struct.mdp5_cfg_hw, ptr %85, i32 0, i32 5, i32 1, i32 2
  br label %106

87:                                               ; preds = %66
  %88 = load ptr, ptr @mdp5_cfg, align 4
  %89 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %88, i32 0, i32 6, i32 1
  br label %106

90:                                               ; preds = %66
  %91 = load ptr, ptr @mdp5_cfg, align 4
  %92 = getelementptr %struct.mdp5_cfg_hw, ptr %91, i32 0, i32 6, i32 1, i32 1
  br label %106

93:                                               ; preds = %66
  %94 = load ptr, ptr @mdp5_cfg, align 4
  %95 = getelementptr %struct.mdp5_cfg_hw, ptr %94, i32 0, i32 4, i32 1, i32 3
  br label %106

96:                                               ; preds = %66
  %97 = load ptr, ptr @mdp5_cfg, align 4
  %98 = getelementptr %struct.mdp5_cfg_hw, ptr %97, i32 0, i32 5, i32 1, i32 3
  br label %106

99:                                               ; preds = %66
  %100 = load ptr, ptr @mdp5_cfg, align 4
  %101 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %100, i32 0, i32 7, i32 1
  br label %106

102:                                              ; preds = %66
  %103 = load ptr, ptr @mdp5_cfg, align 4
  %104 = getelementptr %struct.mdp5_cfg_hw, ptr %103, i32 0, i32 7, i32 1, i32 1
  br label %106

105:                                              ; preds = %66
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #7, !srcloc !12
  unreachable

106:                                              ; preds = %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %72, %69
  %107 = phi ptr [ %104, %102 ], [ %101, %99 ], [ %98, %96 ], [ %95, %93 ], [ %92, %90 ], [ %89, %87 ], [ %86, %84 ], [ %83, %81 ], [ %80, %78 ], [ %77, %75 ], [ %74, %72 ], [ %71, %69 ]
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, 84
  %110 = getelementptr %struct.mdp5_smp, ptr %0, i32 0, i32 7, i32 %18
  %111 = load i32, ptr %110, align 4
  %112 = load i32, ptr %11, align 8
  %113 = icmp slt i32 %112, 1
  br i1 %113, label %114, label %115, !prof !10

114:                                              ; preds = %106
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %115

115:                                              ; preds = %114, %106
  %116 = load ptr, ptr %12, align 4
  %117 = getelementptr i8, ptr %116, i32 %109
  tail call void @msm_writel(i32 noundef %111, ptr noundef %117) #7
  switch i32 %18, label %154 [
    i32 12, label %151
    i32 1, label %118
    i32 2, label %121
    i32 3, label %124
    i32 4, label %127
    i32 5, label %130
    i32 6, label %133
    i32 7, label %136
    i32 8, label %139
    i32 9, label %142
    i32 10, label %145
    i32 11, label %148
  ]

118:                                              ; preds = %115
  %119 = load ptr, ptr @mdp5_cfg, align 4
  %120 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %119, i32 0, i32 4, i32 1
  br label %155

121:                                              ; preds = %115
  %122 = load ptr, ptr @mdp5_cfg, align 4
  %123 = getelementptr %struct.mdp5_cfg_hw, ptr %122, i32 0, i32 4, i32 1, i32 1
  br label %155

124:                                              ; preds = %115
  %125 = load ptr, ptr @mdp5_cfg, align 4
  %126 = getelementptr %struct.mdp5_cfg_hw, ptr %125, i32 0, i32 4, i32 1, i32 2
  br label %155

127:                                              ; preds = %115
  %128 = load ptr, ptr @mdp5_cfg, align 4
  %129 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %128, i32 0, i32 5, i32 1
  br label %155

130:                                              ; preds = %115
  %131 = load ptr, ptr @mdp5_cfg, align 4
  %132 = getelementptr %struct.mdp5_cfg_hw, ptr %131, i32 0, i32 5, i32 1, i32 1
  br label %155

133:                                              ; preds = %115
  %134 = load ptr, ptr @mdp5_cfg, align 4
  %135 = getelementptr %struct.mdp5_cfg_hw, ptr %134, i32 0, i32 5, i32 1, i32 2
  br label %155

136:                                              ; preds = %115
  %137 = load ptr, ptr @mdp5_cfg, align 4
  %138 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %137, i32 0, i32 6, i32 1
  br label %155

139:                                              ; preds = %115
  %140 = load ptr, ptr @mdp5_cfg, align 4
  %141 = getelementptr %struct.mdp5_cfg_hw, ptr %140, i32 0, i32 6, i32 1, i32 1
  br label %155

142:                                              ; preds = %115
  %143 = load ptr, ptr @mdp5_cfg, align 4
  %144 = getelementptr %struct.mdp5_cfg_hw, ptr %143, i32 0, i32 4, i32 1, i32 3
  br label %155

145:                                              ; preds = %115
  %146 = load ptr, ptr @mdp5_cfg, align 4
  %147 = getelementptr %struct.mdp5_cfg_hw, ptr %146, i32 0, i32 5, i32 1, i32 3
  br label %155

148:                                              ; preds = %115
  %149 = load ptr, ptr @mdp5_cfg, align 4
  %150 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %149, i32 0, i32 7, i32 1
  br label %155

151:                                              ; preds = %115
  %152 = load ptr, ptr @mdp5_cfg, align 4
  %153 = getelementptr %struct.mdp5_cfg_hw, ptr %152, i32 0, i32 7, i32 1, i32 1
  br label %155

154:                                              ; preds = %115
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #7, !srcloc !12
  unreachable

155:                                              ; preds = %151, %148, %145, %142, %139, %136, %133, %130, %127, %124, %121, %118
  %156 = phi ptr [ %153, %151 ], [ %150, %148 ], [ %147, %145 ], [ %144, %142 ], [ %141, %139 ], [ %138, %136 ], [ %135, %133 ], [ %132, %130 ], [ %129, %127 ], [ %126, %124 ], [ %123, %121 ], [ %120, %118 ]
  %157 = load i32, ptr %156, align 4
  %158 = add i32 %157, 88
  %159 = getelementptr %struct.mdp5_smp, ptr %0, i32 0, i32 8, i32 %18
  %160 = load i32, ptr %159, align 4
  %161 = load i32, ptr %11, align 8
  %162 = icmp slt i32 %161, 1
  br i1 %162, label %163, label %164, !prof !10

163:                                              ; preds = %155
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 169, i32 noundef 9, ptr noundef null) #7
  br label %164

164:                                              ; preds = %163, %155
  %165 = load ptr, ptr %12, align 4
  %166 = getelementptr i8, ptr %165, i32 %158
  tail call void @msm_writel(i32 noundef %160, ptr noundef %166) #7
  %167 = add nuw i32 %14, 1
  %168 = load i32, ptr %7, align 8
  %169 = icmp ult i32 %167, %168
  br i1 %169, label %13, label %170

170:                                              ; preds = %164, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp5_smp_complete_commit(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mdp5_smp_state, ptr %1, i32 0, i32 3
  %4 = tail call i32 @_find_next_bit_le(ptr noundef %3, i32 noundef 32, i32 noundef 0) #7
  %5 = icmp ult i32 %4, 32
  br i1 %5, label %6, label %16

6:                                                ; preds = %6, %2
  %7 = phi i32 [ %14, %6 ], [ %4, %2 ]
  %8 = getelementptr [13 x ptr], ptr @pipe2name.names, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef %9) #7
  %10 = getelementptr %struct.mdp5_smp, ptr %0, i32 0, i32 6, i32 %7
  store i32 0, ptr %10, align 4
  %11 = getelementptr %struct.mdp5_smp, ptr %0, i32 0, i32 7, i32 %7
  store i32 0, ptr %11, align 4
  %12 = getelementptr %struct.mdp5_smp, ptr %0, i32 0, i32 8, i32 %7
  store i32 0, ptr %12, align 4
  %13 = add nuw nsw i32 %7, 1
  %14 = tail call i32 @_find_next_bit_le(ptr noundef %3, i32 noundef 32, i32 noundef %13) #7
  %15 = icmp ult i32 %14, 32
  br i1 %15, label %6, label %16

16:                                               ; preds = %6, %2
  tail call fastcc void @write_smp_fifo_regs(ptr noundef %0)
  store i32 0, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp5_smp_dump(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef nonnull @.str.5) #7
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef nonnull @.str.6) #7
  %8 = tail call ptr @llvm.thread.pointer() #7
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !13
  %14 = and i32 %13, 128
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 11
  %18 = tail call i32 @drm_modeset_lock(ptr noundef %17, ptr noundef null) #7
  br label %19

19:                                               ; preds = %16, %12, %2
  %20 = tail call ptr @mdp5_get_existing_global_state(ptr noundef %7) #7
  %21 = getelementptr inbounds %struct.mdp5_global_state, ptr %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.mdp5_global_state, ptr %20, i32 0, i32 5
  %23 = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 3
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %83, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.mdp5_smp, ptr %0, i32 0, i32 2
  br label %28

28:                                               ; preds = %79, %26
  %29 = phi i32 [ 0, %26 ], [ %80, %79 ]
  %30 = phi i32 [ 0, %26 ], [ %48, %79 ]
  %31 = getelementptr %struct.mdp5_kms, ptr %7, i32 0, i32 4, i32 %29
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr [13 x ptr], ptr %21, i32 0, i32 %33
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %32, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr [13 x ptr], ptr @pipe2name.names, i32 0, i32 %37
  %39 = icmp eq ptr %35, null
  %40 = getelementptr inbounds %struct.drm_plane, ptr %35, i32 0, i32 2
  %41 = add i32 %37, -4
  %42 = icmp ult i32 %41, 7
  %43 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_smp_dump.29, i32 0, i32 %41
  %44 = add i32 %37, -4
  %45 = icmp ult i32 %44, 7
  %46 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_smp_dump.29, i32 0, i32 %44
  br label %47

47:                                               ; preds = %75, %28
  %48 = phi i32 [ %30, %28 ], [ %77, %75 ]
  %49 = phi i32 [ 0, %28 ], [ %78, %75 ]
  br i1 %42, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, ptr %43, align 4
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i32 [ %51, %50 ], [ 3, %47 ]
  %54 = icmp ult i32 %49, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %52
  br i1 %45, label %56, label %58

56:                                               ; preds = %55
  %57 = load i32, ptr %46, align 4
  br label %58

58:                                               ; preds = %56, %55
  %59 = phi i32 [ %57, %56 ], [ 3, %55 ]
  %60 = icmp ugt i32 %59, %49
  br i1 %60, label %62, label %61, !prof !9

61:                                               ; preds = %58
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 43, i32 noundef 9, ptr noundef null) #7
  br label %67

62:                                               ; preds = %58
  %63 = load ptr, ptr @mdp5_cfg, align 4
  %64 = getelementptr %struct.mdp5_cfg_hw, ptr %63, i32 0, i32 2, i32 2, i32 %37
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, %49
  br label %67

67:                                               ; preds = %62, %61
  %68 = phi i32 [ 0, %61 ], [ %66, %62 ]
  %69 = load i32, ptr %27, align 4
  %70 = getelementptr %struct.mdp5_global_state, ptr %20, i32 0, i32 5, i32 1, i32 %68
  %71 = tail call i32 @__bitmap_weight(ptr noundef %70, i32 noundef %69) #7
  %72 = load ptr, ptr %38, align 4
  br i1 %39, label %75, label %73

73:                                               ; preds = %67
  %74 = load ptr, ptr %40, align 4
  br label %75

75:                                               ; preds = %73, %67
  %76 = phi ptr [ %74, %73 ], [ null, %67 ]
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef %72, i32 noundef %49, i32 noundef %71, ptr noundef %76) #7
  %77 = add i32 %71, %48
  %78 = add nuw nsw i32 %49, 1
  br label %47

79:                                               ; preds = %52
  %80 = add nuw i32 %29, 1
  %81 = load i32, ptr %23, align 8
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %28, label %83

83:                                               ; preds = %79, %19
  %84 = phi i32 [ 0, %19 ], [ %48, %79 ]
  %85 = getelementptr inbounds %struct.mdp5_smp, ptr %0, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %84, i32 noundef %86) #7
  %87 = load i32, ptr %85, align 4
  %88 = tail call i32 @__bitmap_weight(ptr noundef %22, i32 noundef %87) #7
  %89 = sub i32 %87, %88
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %89) #7
  %90 = load volatile i32, ptr %9, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %83
  %93 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !13
  %94 = and i32 %93, 128
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 11
  tail call void @drm_modeset_unlock(ptr noundef %97) #7
  br label %98

98:                                               ; preds = %96, %92, %83
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_get_existing_global_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp5_smp_destroy(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mdp5_smp_init(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 376) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6, !prof !10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mdp5_kms, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %4, align 8
  %9 = load i32, ptr %1, align 4
  %10 = getelementptr inbounds %struct.mdp5_smp, ptr %4, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mdp5_smp_block, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mdp5_smp, ptr %4, i32 0, i32 3
  store i32 %12, ptr %13, align 8
  %14 = tail call ptr @mdp5_get_existing_global_state(ptr noundef %0) #7
  %15 = getelementptr inbounds %struct.mdp5_global_state, ptr %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.mdp5_smp_block, ptr %1, i32 0, i32 3
  %17 = add i32 %9, 31
  %18 = lshr i32 %17, 3
  %19 = and i32 %18, 536870908
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 4 %16, i32 %19, i1 false) #7
  %20 = getelementptr inbounds %struct.mdp5_smp, ptr %4, i32 0, i32 1
  %21 = getelementptr inbounds %struct.mdp5_smp_block, ptr %1, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %20, ptr noundef align 4 dereferenceable(32) %21, i32 32, i1 false)
  br label %22

22:                                               ; preds = %6, %2
  %23 = phi ptr [ %4, %6 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %23
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_andnot(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!8 = !{i32 0, i32 33}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2155647325, i64 2155647830, i64 2155647362, i64 2155647418, i64 2155647452, i64 2155647476, i64 2155647517, i64 2155647538, i64 2155647566, i64 2155647600}
!12 = !{i64 2155648316, i64 2155648821, i64 2155648353, i64 2155648409, i64 2155648443, i64 2155648467, i64 2155648508, i64 2155648529, i64 2155648557, i64 2155648591}
!13 = !{i64 532358}
