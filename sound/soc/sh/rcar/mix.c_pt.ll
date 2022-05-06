; ModuleID = '/llk/IR/sound/soc/sh/rcar/mix.c_pt.bc'
source_filename = "../sound/soc/sh/rcar/mix.c"
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
%struct.rsnd_mix = type { %struct.rsnd_mod, %struct.rsnd_kctrl_cfg_s, %struct.rsnd_kctrl_cfg_s, %struct.rsnd_kctrl_cfg_s, %struct.rsnd_kctrl_cfg_s, %struct.rsnd_kctrl_cfg_s, %struct.rsnd_kctrl_cfg_s, %struct.rsnd_kctrl_cfg_s, i32 }
%struct.rsnd_mod = type { i32, i32, ptr, ptr, ptr, i32 }
%struct.rsnd_kctrl_cfg_s = type { %struct.rsnd_kctrl_cfg, i32 }
%struct.rsnd_kctrl_cfg = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@.str = private unnamed_addr constant [24 x i8] c"sound/soc/sh/rcar/mix.c\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"rcar_sound,mix\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"mix\00", align 1
@rsnd_mix_ops = internal global %struct.rsnd_mod_ops { ptr @.str.3, ptr null, ptr @rsnd_mix_probe_, ptr null, ptr @rsnd_mix_init, ptr @rsnd_mix_quit, ptr null, ptr null, ptr null, ptr @rsnd_mix_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_mod_get_status, ptr null, ptr null, ptr null, ptr @rsnd_mix_debug_info }, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"unknown SRC is connected\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"MIX Playback Volume\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"MIX Ramp Switch\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"MIX Ramp Up Rate\00", align 1
@volume_ramp_rate = external dso_local constant [0 x ptr], align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"MIX Ramp Down Rate\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rsnd_mix_mod_get(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %8, label %4, !prof !8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %9, label %8, !prof !9

8:                                                ; preds = %4, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 278, i32 noundef 9, ptr noundef null) #7
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ 0, %8 ], [ %1, %4 ]
  %11 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.rsnd_mix, ptr %12, i32 %10
  ret ptr %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_mix_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [16 x i8], align 1
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !10
  %5 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 15
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %58, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @of_get_child_by_name(ptr noundef %11, ptr noundef nonnull @.str.1) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %58, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @of_get_next_child(ptr noundef nonnull %12, ptr noundef null) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %56, label %17

17:                                               ; preds = %17, %14
  %18 = phi i32 [ %20, %17 ], [ 0, %14 ]
  %19 = phi ptr [ %21, %17 ], [ %15, %14 ]
  %20 = add i32 %18, 1
  %21 = tail call ptr @of_get_next_child(ptr noundef nonnull %12, ptr noundef nonnull %19) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %17

23:                                               ; preds = %17
  %24 = icmp eq i32 %20, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %23
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 336) #7
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %56, label %28, !prof !11

28:                                               ; preds = %25
  %29 = extractvalue { i32, i1 } %26, 0
  %30 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %29, i32 noundef 3520) #7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %56, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 15
  store i32 %20, ptr %33, align 4
  %34 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 14
  store ptr %30, ptr %34, align 4
  %35 = tail call ptr @of_get_next_child(ptr noundef nonnull %12, ptr noundef null) #7
  %36 = icmp eq ptr %35, null
  br i1 %36, label %56, label %37

37:                                               ; preds = %50, %32
  %38 = phi i32 [ %51, %50 ], [ 0, %32 ]
  %39 = phi ptr [ %52, %50 ], [ %35, %32 ]
  %40 = load ptr, ptr %34, align 4
  %41 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %38)
  %42 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull %2) #7
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = ptrtoint ptr %42 to i32
  br label %54

46:                                               ; preds = %37
  %47 = getelementptr %struct.rsnd_mix, ptr %40, i32 %38
  %48 = call i32 @rsnd_mod_init(ptr noundef %0, ptr noundef %47, ptr noundef nonnull @rsnd_mix_ops, ptr noundef %42, i32 noundef 3, i32 noundef %38) #7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = add i32 %38, 1
  %52 = call ptr @of_get_next_child(ptr noundef nonnull %12, ptr noundef nonnull %39) #7
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %37

54:                                               ; preds = %46, %44
  %55 = phi i32 [ %45, %44 ], [ %48, %46 ]
  call void @of_node_put(ptr noundef nonnull %39) #7
  br label %56

56:                                               ; preds = %54, %50, %32, %28, %25, %23, %14
  %57 = phi i32 [ -22, %23 ], [ -12, %28 ], [ -22, %14 ], [ -12, %25 ], [ 0, %32 ], [ %55, %54 ], [ 0, %50 ]
  call void @of_node_put(ptr noundef nonnull %12) #7
  br label %58

58:                                               ; preds = %56, %9, %1
  %59 = phi i32 [ %57, %56 ], [ 0, %1 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
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
define dso_local void @rsnd_mix_remove(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 14
  %3 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 15
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %11, %1
  %7 = phi i32 [ %12, %11 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr %struct.rsnd_mix, ptr %8, i32 %7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  tail call void @rsnd_mod_quit(ptr noundef nonnull %9) #7
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
define internal i32 @rsnd_mix_probe_(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call i32 @rsnd_mod_id(ptr noundef %0) #7
  %5 = tail call i32 @rsnd_cmd_attach(ptr noundef %1, i32 noundef %4) #7
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_mix_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #7
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 70, i32 noundef 0) #7
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 70, i32 noundef 1) #7
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 71, i32 noundef 1) #7
  %7 = tail call i32 @rsnd_runtime_channel_after_ctu_with_params(ptr noundef %1, ptr noundef null) #7
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 72, i32 noundef %7) #7
  %8 = getelementptr inbounds %struct.rsnd_mix, ptr %0, i32 0, i32 5, i32 1
  %9 = load i32, ptr %8, align 4
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 73, i32 noundef %9) #7
  %10 = getelementptr inbounds %struct.rsnd_mix, ptr %0, i32 0, i32 6, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %11, 8
  %13 = getelementptr inbounds %struct.rsnd_mix, ptr %0, i32 0, i32 7, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %12, %14
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 74, i32 noundef %15) #7
  tail call fastcc void @rsnd_mix_volume_parameter(ptr noundef %0) #7
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 71, i32 noundef 0) #7
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 79, i32 noundef 0) #7
  tail call fastcc void @rsnd_mix_volume_parameter(ptr noundef %0) #7
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 79, i32 noundef 1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_mix_quit(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 71, i32 noundef 1) #7
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 70, i32 noundef 0) #7
  %4 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_mix_pcm_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @rsnd_mod_id(ptr noundef %8) #7
  switch i32 %9, label %18 [
    i32 3, label %10
    i32 6, label %10
    i32 4, label %12
    i32 9, label %12
    i32 0, label %14
    i32 1, label %14
    i32 2, label %16
    i32 5, label %16
  ]

10:                                               ; preds = %3, %3
  %11 = getelementptr inbounds %struct.rsnd_mix, ptr %0, i32 0, i32 1
  br label %20

12:                                               ; preds = %3, %3
  %13 = getelementptr inbounds %struct.rsnd_mix, ptr %0, i32 0, i32 2
  br label %20

14:                                               ; preds = %3, %3
  %15 = getelementptr inbounds %struct.rsnd_mix, ptr %0, i32 0, i32 3
  br label %20

16:                                               ; preds = %3, %3
  %17 = getelementptr inbounds %struct.rsnd_mix, ptr %0, i32 0, i32 4
  br label %20

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.4) #8
  br label %51

20:                                               ; preds = %16, %14, %12, %10
  %21 = phi i32 [ 16, %16 ], [ 8, %14 ], [ 4, %12 ], [ 2, %10 ]
  %22 = phi ptr [ %17, %16 ], [ %15, %14 ], [ %13, %12 ], [ %11, %10 ]
  %23 = getelementptr inbounds %struct.rsnd_mix, ptr %0, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, ptr %23, align 4
  %26 = tail call ptr @rsnd_kctrl_init_s(ptr noundef %22) #7
  %27 = tail call i32 @rsnd_kctrl_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef nonnull @rsnd_mix_volume_update, ptr noundef %26, ptr noundef null, i32 noundef 1, i32 noundef 1023) #7
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.rsnd_kctrl_cfg_s, ptr %22, i32 0, i32 1
  store i32 1023, ptr %30, align 4
  %31 = getelementptr inbounds %struct.rsnd_mix, ptr %0, i32 0, i32 8
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.rsnd_mix, ptr %0, i32 0, i32 5
  %37 = tail call ptr @rsnd_kctrl_init_s(ptr noundef %36) #7
  %38 = tail call i32 @rsnd_kctrl_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef nonnull @rsnd_mix_volume_update, ptr noundef %37, ptr noundef null, i32 noundef 1, i32 noundef 1) #7
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.rsnd_mix, ptr %0, i32 0, i32 6
  %42 = tail call ptr @rsnd_kctrl_init_s(ptr noundef %41) #7
  %43 = tail call i32 @rsnd_kctrl_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef nonnull @rsnd_mix_volume_update, ptr noundef %42, ptr noundef nonnull @volume_ramp_rate, i32 noundef 1, i32 noundef 11) #7
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.rsnd_mix, ptr %0, i32 0, i32 7
  %47 = tail call ptr @rsnd_kctrl_init_s(ptr noundef %46) #7
  %48 = tail call i32 @rsnd_kctrl_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef nonnull @rsnd_mix_volume_update, ptr noundef %47, ptr noundef nonnull @volume_ramp_rate, i32 noundef 1, i32 noundef 11) #7
  %49 = load i32, ptr %31, align 4
  %50 = or i32 %49, 1
  store i32 %50, ptr %31, align 4
  br label %51

51:                                               ; preds = %45, %40, %35, %29, %20, %18
  %52 = phi i32 [ -22, %18 ], [ %48, %45 ], [ %27, %20 ], [ %27, %29 ], [ %38, %35 ], [ %43, %40 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_get_status(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rsnd_mix_debug_info(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rsnd_mod_id(ptr noundef %2) #7
  %5 = shl i32 %4, 6
  %6 = add i32 %5, 3328
  tail call void @rsnd_debugfs_mod_reg_show(ptr noundef %0, ptr noundef %2, i32 noundef 0, i32 noundef %6, i32 noundef 48) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_cmd_attach(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rsnd_mix_volume_update(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @rsnd_mod_write(ptr noundef %1, i32 noundef 79, i32 noundef 0) #7
  tail call fastcc void @rsnd_mix_volume_parameter(ptr noundef %1)
  tail call void @rsnd_mod_write(ptr noundef %1, i32 noundef 79, i32 noundef 1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_channel_after_ctu_with_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rsnd_mix_volume_parameter(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rsnd_mix, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rsnd_mix, ptr %0, i32 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 1023, %8
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ %9, %6 ], [ 0, %1 ]
  %12 = and i32 %3, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rsnd_mix, ptr %0, i32 0, i32 2, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 1023, %16
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i32 [ %17, %14 ], [ 0, %10 ]
  %20 = and i32 %3, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rsnd_mix, ptr %0, i32 0, i32 3, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 1023, %24
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i32 [ %25, %22 ], [ 0, %18 ]
  %28 = and i32 %3, 16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.rsnd_mix, ptr %0, i32 0, i32 4, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = sub i32 1023, %32
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i32 [ %33, %30 ], [ 0, %26 ]
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 75, i32 noundef %11) #7
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 76, i32 noundef %19) #7
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 77, i32 noundef %27) #7
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 78, i32 noundef %35) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_kctrl_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_kctrl_accept_anytime(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_kctrl_init_s(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_debugfs_mod_reg_show(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
