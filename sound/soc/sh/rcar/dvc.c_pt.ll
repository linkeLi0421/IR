; ModuleID = '/llk/IR/sound/soc/sh/rcar/dvc.c_pt.bc'
source_filename = "../sound/soc/sh/rcar/dvc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rsnd_mod_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rsnd_priv = type { ptr, %struct.spinlock, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rsnd_dvc = type { %struct.rsnd_mod, %struct.rsnd_kctrl_cfg_m, %struct.rsnd_kctrl_cfg_m, %struct.rsnd_kctrl_cfg_s, %struct.rsnd_kctrl_cfg_s, %struct.rsnd_kctrl_cfg_s }
%struct.rsnd_mod = type { i32, i32, ptr, ptr, ptr, i32 }
%struct.rsnd_kctrl_cfg_m = type { %struct.rsnd_kctrl_cfg, [8 x i32] }
%struct.rsnd_kctrl_cfg = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rsnd_kctrl_cfg_s = type { %struct.rsnd_kctrl_cfg, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rsnd_dai_stream = type { [16 x i8], ptr, [13 x ptr], ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.rsnd_dai = type { [16 x i8], %struct.rsnd_dai_stream, %struct.rsnd_dai_stream, ptr, %struct.snd_pcm_hw_constraint_list, i32, i32, i32, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"sound/soc/sh/rcar/dvc.c\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"rcar_sound,dvc\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"dvc\00", align 1
@rsnd_dvc_ops = internal global %struct.rsnd_mod_ops { ptr @.str.3, ptr @rsnd_dvc_dma_req, ptr @rsnd_dvc_probe_, ptr null, ptr @rsnd_dvc_init, ptr @rsnd_dvc_quit, ptr null, ptr null, ptr null, ptr @rsnd_dvc_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_mod_get_status, ptr null, ptr null, ptr null, ptr @rsnd_dvc_debug_info }, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"DVC Out Playback Volume\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"DVC In Capture Volume\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"DVC Out Mute Switch\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"DVC In Mute Switch\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"DVC Out Ramp Switch\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"DVC In Ramp Switch\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"DVC Out Ramp Up Rate\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"DVC In Ramp Up Rate\00", align 1
@volume_ramp_rate = external dso_local constant [0 x ptr], align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"DVC Out Ramp Down Rate\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"DVC In Ramp Down Rate\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rsnd_dvc_mod_get(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %8, label %4, !prof !8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %9, label %8, !prof !9

8:                                                ; preds = %4, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 314, i32 noundef 9, ptr noundef null) #6
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ 0, %8 ], [ %1, %4 ]
  %11 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 16
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.rsnd_dvc, ptr %12, i32 %10
  ret ptr %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_dvc_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [16 x i8], align 1
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !10
  %5 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 15
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %58, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @of_get_child_by_name(ptr noundef %11, ptr noundef nonnull @.str.1) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %58, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @of_get_next_child(ptr noundef nonnull %12, ptr noundef null) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %56, label %17

17:                                               ; preds = %17, %14
  %18 = phi i32 [ %20, %17 ], [ 0, %14 ]
  %19 = phi ptr [ %21, %17 ], [ %15, %14 ]
  %20 = add i32 %18, 1
  %21 = tail call ptr @of_get_next_child(ptr noundef nonnull %12, ptr noundef nonnull %19) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %17

23:                                               ; preds = %17
  %24 = icmp eq i32 %20, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %23
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 300) #6
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %56, label %28, !prof !11

28:                                               ; preds = %25
  %29 = extractvalue { i32, i1 } %26, 0
  %30 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %29, i32 noundef 3520) #6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %56, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 17
  store i32 %20, ptr %33, align 4
  %34 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 16
  store ptr %30, ptr %34, align 4
  %35 = tail call ptr @of_get_next_child(ptr noundef nonnull %12, ptr noundef null) #6
  %36 = icmp eq ptr %35, null
  br i1 %36, label %56, label %37

37:                                               ; preds = %50, %32
  %38 = phi i32 [ %51, %50 ], [ 0, %32 ]
  %39 = phi ptr [ %52, %50 ], [ %35, %32 ]
  %40 = load ptr, ptr %34, align 4
  %41 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %38)
  %42 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull %2) #6
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = ptrtoint ptr %42 to i32
  br label %54

46:                                               ; preds = %37
  %47 = getelementptr %struct.rsnd_dvc, ptr %40, i32 %38
  %48 = call i32 @rsnd_mod_init(ptr noundef %0, ptr noundef %47, ptr noundef nonnull @rsnd_dvc_ops, ptr noundef %42, i32 noundef 2, i32 noundef %38) #6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = add i32 %38, 1
  %52 = call ptr @of_get_next_child(ptr noundef nonnull %12, ptr noundef nonnull %39) #6
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %37

54:                                               ; preds = %46, %44
  %55 = phi i32 [ %45, %44 ], [ %48, %46 ]
  call void @of_node_put(ptr noundef nonnull %39) #6
  br label %56

56:                                               ; preds = %54, %50, %32, %28, %25, %23, %14
  %57 = phi i32 [ -22, %23 ], [ -12, %28 ], [ -22, %14 ], [ -12, %25 ], [ 0, %32 ], [ %55, %54 ], [ 0, %50 ]
  call void @of_node_put(ptr noundef nonnull %12) #6
  br label %58

58:                                               ; preds = %56, %9, %1
  %59 = phi i32 [ %57, %56 ], [ 0, %1 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  ret i32 %59
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rsnd_dvc_remove(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 16
  %3 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 17
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %11, %1
  %7 = phi i32 [ %12, %11 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr %struct.rsnd_dvc, ptr %8, i32 %7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  tail call void @rsnd_mod_quit(ptr noundef nonnull %9) #6
  %12 = add nuw nsw i32 %7, 1
  %13 = load i32, ptr %3, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %6, label %15

15:                                               ; preds = %11, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_quit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rsnd_dvc_dma_req(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rsnd_mod, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @of_get_child_by_name(ptr noundef %7, ptr noundef nonnull @.str.1) #6
  %9 = tail call ptr @rsnd_dma_request_channel(ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef nonnull @.str.4) #6
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_dvc_probe_(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call i32 @rsnd_mod_id(ptr noundef %0) #6
  %5 = tail call i32 @rsnd_cmd_attach(ptr noundef %1, i32 noundef %4) #6
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_dvc_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #6
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 80, i32 noundef 0) #6
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 80, i32 noundef 1) #6
  %7 = tail call i32 @rsnd_get_adinr_bit(ptr noundef %0, ptr noundef %1) #6
  %8 = tail call i32 @rsnd_runtime_channel_after_ctu_with_params(ptr noundef %1, ptr noundef null) #6
  %9 = getelementptr inbounds %struct.rsnd_dvc, ptr %0, i32 0, i32 3, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.rsnd_dvc, ptr %0, i32 0, i32 4, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %14, 8
  %16 = getelementptr inbounds %struct.rsnd_dvc, ptr %0, i32 0, i32 5, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %15, %17
  %19 = getelementptr inbounds %struct.rsnd_dvc, ptr %0, i32 0, i32 1, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %20, 13
  %22 = sub nsw i32 1023, %21
  br label %23

23:                                               ; preds = %12, %3
  %24 = phi i32 [ 273, %12 ], [ 257, %3 ]
  %25 = phi i32 [ 255, %12 ], [ 0, %3 ]
  %26 = phi i32 [ %18, %12 ], [ 0, %3 ]
  %27 = phi i32 [ %22, %12 ], [ 0, %3 ]
  %28 = or i32 %8, %7
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 81, i32 noundef 1) #6
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 82, i32 noundef %28) #6
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 83, i32 noundef %24) #6
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 94, i32 noundef %25) #6
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 95, i32 noundef %26) #6
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 96, i32 noundef %27) #6
  tail call fastcc void @rsnd_dvc_volume_parameter(ptr noundef %0) #6
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 81, i32 noundef 0) #6
  tail call void @rsnd_dvc_volume_update(ptr noundef %1, ptr noundef %0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_dvc_quit(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 81, i32 noundef 1) #6
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 80, i32 noundef 0) #6
  %4 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_dvc_pcm_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rsnd_dai, ptr %5, i32 0, i32 1
  %7 = icmp eq ptr %6, %1
  %8 = tail call i32 @rsnd_rdai_channels_ctrl(ptr noundef %5, i32 noundef 0) #6
  %9 = select i1 %7, ptr @.str.5, ptr @.str.6
  %10 = getelementptr inbounds %struct.rsnd_dvc, ptr %0, i32 0, i32 1
  %11 = tail call ptr @rsnd_kctrl_init_m(ptr noundef %10) #6
  %12 = tail call i32 @rsnd_kctrl_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef nonnull @rsnd_dvc_volume_update, ptr noundef %11, ptr noundef null, i32 noundef %8, i32 noundef 8388607) #6
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %3
  %15 = select i1 %7, ptr @.str.7, ptr @.str.8
  %16 = getelementptr inbounds %struct.rsnd_dvc, ptr %0, i32 0, i32 2
  %17 = tail call ptr @rsnd_kctrl_init_m(ptr noundef %16) #6
  %18 = tail call i32 @rsnd_kctrl_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %15, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef nonnull @rsnd_dvc_volume_update, ptr noundef %17, ptr noundef null, i32 noundef %8, i32 noundef 1) #6
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %14
  %21 = select i1 %7, ptr @.str.9, ptr @.str.10
  %22 = getelementptr inbounds %struct.rsnd_dvc, ptr %0, i32 0, i32 3
  %23 = tail call ptr @rsnd_kctrl_init_s(ptr noundef %22) #6
  %24 = tail call i32 @rsnd_kctrl_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %21, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef nonnull @rsnd_dvc_volume_update, ptr noundef %23, ptr noundef null, i32 noundef 1, i32 noundef 1) #6
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = select i1 %7, ptr @.str.11, ptr @.str.12
  %28 = getelementptr inbounds %struct.rsnd_dvc, ptr %0, i32 0, i32 4
  %29 = tail call ptr @rsnd_kctrl_init_s(ptr noundef %28) #6
  %30 = tail call i32 @rsnd_kctrl_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %27, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef nonnull @rsnd_dvc_volume_update, ptr noundef %29, ptr noundef nonnull @volume_ramp_rate, i32 noundef 1, i32 noundef 24) #6
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = select i1 %7, ptr @.str.13, ptr @.str.14
  %34 = getelementptr inbounds %struct.rsnd_dvc, ptr %0, i32 0, i32 5
  %35 = tail call ptr @rsnd_kctrl_init_s(ptr noundef %34) #6
  %36 = tail call i32 @rsnd_kctrl_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %33, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef nonnull @rsnd_dvc_volume_update, ptr noundef %35, ptr noundef nonnull @volume_ramp_rate, i32 noundef 1, i32 noundef 24) #6
  %37 = tail call i32 @llvm.smin.i32(i32 %36, i32 0)
  br label %38

38:                                               ; preds = %32, %26, %20, %14, %3
  %39 = phi i32 [ %12, %3 ], [ %18, %14 ], [ %24, %20 ], [ %30, %26 ], [ %37, %32 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_get_status(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rsnd_dvc_debug_info(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rsnd_mod_id(ptr noundef %2) #6
  %5 = shl i32 %4, 8
  %6 = add i32 %5, 3584
  tail call void @rsnd_debugfs_mod_reg_show(ptr noundef %0, ptr noundef %2, i32 noundef 0, i32 noundef %6, i32 noundef 96) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_cmd_attach(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rsnd_dvc_volume_update(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rsnd_dvc, ptr %1, i32 0, i32 2, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %6, %2
  %7 = phi i32 [ %15, %6 ], [ 0, %2 ]
  %8 = phi i32 [ %14, %6 ], [ 0, %2 ]
  %9 = getelementptr %struct.rsnd_dvc, ptr %1, i32 0, i32 2, i32 1, i32 %7
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = shl nuw i32 %12, %7
  %14 = or i32 %13, %8
  %15 = add nuw i32 %7, 1
  %16 = icmp eq i32 %15, %4
  br i1 %16, label %17, label %6

17:                                               ; preds = %6, %2
  %18 = phi i32 [ 0, %2 ], [ %14, %6 ]
  %19 = getelementptr inbounds %struct.rsnd_dvc, ptr %1, i32 0, i32 3, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rsnd_dvc, ptr %1, i32 0, i32 4, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 %24, 8
  %26 = getelementptr inbounds %struct.rsnd_dvc, ptr %1, i32 0, i32 5, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %25, %27
  %29 = getelementptr inbounds %struct.rsnd_dvc, ptr %1, i32 0, i32 1, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = lshr i32 %30, 13
  %32 = sub nsw i32 1023, %31
  br label %33

33:                                               ; preds = %22, %17
  %34 = phi i32 [ %28, %22 ], [ 0, %17 ]
  %35 = phi i32 [ %32, %22 ], [ 0, %17 ]
  tail call void @rsnd_mod_write(ptr noundef %1, i32 noundef 93, i32 noundef 0) #6
  tail call void @rsnd_mod_write(ptr noundef %1, i32 noundef 84, i32 noundef %18) #6
  tail call void @rsnd_mod_write(ptr noundef %1, i32 noundef 95, i32 noundef %34) #6
  tail call void @rsnd_mod_write(ptr noundef %1, i32 noundef 96, i32 noundef %35) #6
  tail call fastcc void @rsnd_dvc_volume_parameter(ptr noundef %1)
  tail call void @rsnd_mod_write(ptr noundef %1, i32 noundef 93, i32 noundef 1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_get_adinr_bit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_channel_after_ctu_with_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rsnd_dvc_volume_parameter(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rsnd_dvc, ptr %0, i32 0, i32 3, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 64
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 68
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 72
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 76
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %0, i32 80
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %0, i32 84
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %0, i32 88
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %0, i32 92
  %21 = load i32, ptr %20, align 4
  br label %25

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.rsnd_dvc, ptr %0, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %5
  %26 = phi i32 [ %7, %5 ], [ %24, %22 ]
  %27 = phi i32 [ %9, %5 ], [ %24, %22 ]
  %28 = phi i32 [ %11, %5 ], [ %24, %22 ]
  %29 = phi i32 [ %13, %5 ], [ %24, %22 ]
  %30 = phi i32 [ %15, %5 ], [ %24, %22 ]
  %31 = phi i32 [ %17, %5 ], [ %24, %22 ]
  %32 = phi i32 [ %19, %5 ], [ %24, %22 ]
  %33 = phi i32 [ %21, %5 ], [ %24, %22 ]
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 85, i32 noundef %26) #6
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 86, i32 noundef %27) #6
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 87, i32 noundef %28) #6
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 88, i32 noundef %29) #6
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 89, i32 noundef %30) #6
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 90, i32 noundef %31) #6
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 91, i32 noundef %32) #6
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 92, i32 noundef %33) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_rdai_channels_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_kctrl_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_kctrl_accept_anytime(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_kctrl_init_m(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_kctrl_init_s(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_debugfs_mod_reg_show(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!8 = !{!"branch_weights", i32 1073205, i32 2146410443}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 1, i32 2000}
