; ModuleID = '/llk/IR/sound/soc/sh/rcar/ctu.c_pt.bc'
source_filename = "../sound/soc/sh/rcar/ctu.c"
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
%struct.rsnd_ctu = type { %struct.rsnd_mod, %struct.rsnd_kctrl_cfg_m, [4 x %struct.rsnd_kctrl_cfg_m], %struct.rsnd_kctrl_cfg_s, i32, i32 }
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

@.str = private unnamed_addr constant [24 x i8] c"sound/soc/sh/rcar/ctu.c\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"rcar_sound,ctu\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ctu\00", align 1
@rsnd_ctu_ops = internal global %struct.rsnd_mod_ops { ptr @.str.3, ptr null, ptr @rsnd_ctu_probe_, ptr null, ptr @rsnd_ctu_init, ptr @rsnd_ctu_quit, ptr null, ptr null, ptr null, ptr @rsnd_ctu_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_mod_get_status, ptr @rsnd_ctu_id, ptr @rsnd_ctu_id_sub, ptr @rsnd_mod_id_raw, ptr @rsnd_ctu_debug_info }, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"CTU Pass\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"CTU SV0\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"CTU SV1\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"CTU SV2\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"CTU SV3\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"CTU Reset\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rsnd_ctu_mod_get(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %8, label %4, !prof !8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %9, label %8, !prof !9

8:                                                ; preds = %4, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 306, i32 noundef 9, ptr noundef null) #8
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ 0, %8 ], [ %1, %4 ]
  %11 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.rsnd_ctu, ptr %12, i32 %10
  ret ptr %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_ctu_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [16 x i8], align 1
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !10
  %5 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 15
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %59, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @of_get_child_by_name(ptr noundef %11, ptr noundef nonnull @.str.1) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %59, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @of_get_next_child(ptr noundef nonnull %12, ptr noundef null) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %57, label %17

17:                                               ; preds = %17, %14
  %18 = phi i32 [ %20, %17 ], [ 0, %14 ]
  %19 = phi ptr [ %21, %17 ], [ %15, %14 ]
  %20 = add i32 %18, 1
  %21 = tail call ptr @of_get_next_child(ptr noundef nonnull %12, ptr noundef nonnull %19) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %17

23:                                               ; preds = %17
  %24 = icmp eq i32 %20, 0
  br i1 %24, label %57, label %25

25:                                               ; preds = %23
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 436) #8
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %57, label %28, !prof !11

28:                                               ; preds = %25
  %29 = extractvalue { i32, i1 } %26, 0
  %30 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %29, i32 noundef 3520) #8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %57, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 13
  store i32 %20, ptr %33, align 4
  %34 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 12
  store ptr %30, ptr %34, align 4
  %35 = tail call ptr @of_get_next_child(ptr noundef nonnull %12, ptr noundef null) #8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %57, label %37

37:                                               ; preds = %51, %32
  %38 = phi i32 [ %52, %51 ], [ 0, %32 ]
  %39 = phi ptr [ %53, %51 ], [ %35, %32 ]
  %40 = load ptr, ptr %34, align 4
  %41 = sdiv i32 %38, 4
  %42 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %41)
  %43 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull %2) #8
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = ptrtoint ptr %43 to i32
  br label %55

47:                                               ; preds = %37
  %48 = getelementptr %struct.rsnd_ctu, ptr %40, i32 %38
  %49 = call i32 @rsnd_mod_init(ptr noundef %0, ptr noundef %48, ptr noundef nonnull @rsnd_ctu_ops, ptr noundef %43, i32 noundef 4, i32 noundef %38) #8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = add i32 %38, 1
  %53 = call ptr @of_get_next_child(ptr noundef nonnull %12, ptr noundef nonnull %39) #8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %37

55:                                               ; preds = %47, %45
  %56 = phi i32 [ %46, %45 ], [ %49, %47 ]
  call void @of_node_put(ptr noundef nonnull %39) #8
  br label %57

57:                                               ; preds = %55, %51, %32, %28, %25, %23, %14
  %58 = phi i32 [ -22, %23 ], [ -12, %28 ], [ -22, %14 ], [ -12, %25 ], [ 0, %32 ], [ %56, %55 ], [ 0, %51 ]
  call void @of_node_put(ptr noundef nonnull %12) #8
  br label %59

59:                                               ; preds = %57, %9, %1
  %60 = phi i32 [ %58, %57 ], [ 0, %1 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  ret i32 %60
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
define dso_local void @rsnd_ctu_remove(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 12
  %3 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %11, %1
  %7 = phi i32 [ %12, %11 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr %struct.rsnd_ctu, ptr %8, i32 %7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  tail call void @rsnd_mod_quit(ptr noundef nonnull %9) #8
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
define internal i32 @rsnd_ctu_probe_(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call i32 @rsnd_mod_id(ptr noundef %0) #8
  %5 = tail call i32 @rsnd_cmd_attach(ptr noundef %1, i32 noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_ctu_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #8
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 33, i32 noundef 0) #8
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 33, i32 noundef 1) #8
  %7 = getelementptr %struct.rsnd_ctu, ptr %0, i32 0, i32 1, i32 1, i32 0
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 28
  %10 = tail call i32 @llvm.usub.sat.i32(i32 %8, i32 8) #8
  %11 = getelementptr %struct.rsnd_ctu, ptr %0, i32 0, i32 1, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 24
  %14 = or i32 %13, %9
  %15 = icmp ugt i32 %12, 8
  %16 = add i32 %12, -8
  %17 = tail call i32 @llvm.umax.i32(i32 %10, i32 %16) #8
  %18 = select i1 %15, i32 %17, i32 %10
  %19 = getelementptr %struct.rsnd_ctu, ptr %0, i32 0, i32 1, i32 1, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = shl i32 %20, 20
  %22 = or i32 %14, %21
  %23 = icmp ugt i32 %20, 8
  %24 = add i32 %20, -8
  %25 = tail call i32 @llvm.umax.i32(i32 %18, i32 %24) #8
  %26 = select i1 %23, i32 %25, i32 %18
  %27 = getelementptr %struct.rsnd_ctu, ptr %0, i32 0, i32 1, i32 1, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 %28, 16
  %30 = or i32 %22, %29
  %31 = icmp ugt i32 %28, 8
  %32 = add i32 %28, -8
  %33 = tail call i32 @llvm.umax.i32(i32 %26, i32 %32) #8
  %34 = select i1 %31, i32 %33, i32 %26
  %35 = getelementptr %struct.rsnd_ctu, ptr %0, i32 0, i32 1, i32 1, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = shl i32 %36, 12
  %38 = or i32 %30, %37
  %39 = icmp ugt i32 %36, 8
  %40 = add i32 %36, -8
  %41 = tail call i32 @llvm.umax.i32(i32 %34, i32 %40) #8
  %42 = select i1 %39, i32 %41, i32 %34
  %43 = getelementptr %struct.rsnd_ctu, ptr %0, i32 0, i32 1, i32 1, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = shl i32 %44, 8
  %46 = or i32 %38, %45
  %47 = icmp ugt i32 %44, 8
  %48 = add i32 %44, -8
  %49 = tail call i32 @llvm.umax.i32(i32 %42, i32 %48) #8
  %50 = select i1 %47, i32 %49, i32 %42
  %51 = getelementptr %struct.rsnd_ctu, ptr %0, i32 0, i32 1, i32 1, i32 6
  %52 = load i32, ptr %51, align 4
  %53 = shl i32 %52, 4
  %54 = or i32 %46, %53
  %55 = icmp ugt i32 %52, 8
  %56 = add i32 %52, -8
  %57 = tail call i32 @llvm.umax.i32(i32 %50, i32 %56) #8
  %58 = select i1 %55, i32 %57, i32 %50
  %59 = getelementptr %struct.rsnd_ctu, ptr %0, i32 0, i32 1, i32 1, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = or i32 %54, %60
  %62 = icmp ugt i32 %60, 8
  %63 = add i32 %60, -8
  %64 = tail call i32 @llvm.umax.i32(i32 %58, i32 %63) #8
  %65 = select i1 %62, i32 %64, i32 %58
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 34, i32 noundef 1) #8
  %66 = tail call i32 @rsnd_runtime_channel_original_with_params(ptr noundef %1, ptr noundef null) #8
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 35, i32 noundef %66) #8
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 36, i32 noundef %61) #8
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 37, i32 noundef %65) #8
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %100, label %68

68:                                               ; preds = %3
  %69 = add i32 %65, -1
  %70 = tail call i32 @llvm.umin.i32(i32 %69, i32 3) #8
  br label %71

71:                                               ; preds = %71, %68
  %72 = phi i32 [ %98, %71 ], [ 0, %68 ]
  %73 = shl i32 %72, 3
  %74 = add nuw nsw i32 %73, 38
  %75 = getelementptr %struct.rsnd_ctu, ptr %0, i32 0, i32 2, i32 %72, i32 1, i32 0
  %76 = load i32, ptr %75, align 4
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef %74, i32 noundef %76) #8
  %77 = add nuw nsw i32 %73, 39
  %78 = getelementptr %struct.rsnd_ctu, ptr %0, i32 0, i32 2, i32 %72, i32 1, i32 1
  %79 = load i32, ptr %78, align 4
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef %77, i32 noundef %79) #8
  %80 = add nuw nsw i32 %73, 40
  %81 = getelementptr %struct.rsnd_ctu, ptr %0, i32 0, i32 2, i32 %72, i32 1, i32 2
  %82 = load i32, ptr %81, align 4
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef %80, i32 noundef %82) #8
  %83 = add nuw nsw i32 %73, 41
  %84 = getelementptr %struct.rsnd_ctu, ptr %0, i32 0, i32 2, i32 %72, i32 1, i32 3
  %85 = load i32, ptr %84, align 4
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef %83, i32 noundef %85) #8
  %86 = add nuw nsw i32 %73, 42
  %87 = getelementptr %struct.rsnd_ctu, ptr %0, i32 0, i32 2, i32 %72, i32 1, i32 4
  %88 = load i32, ptr %87, align 4
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef %86, i32 noundef %88) #8
  %89 = add nuw nsw i32 %73, 43
  %90 = getelementptr %struct.rsnd_ctu, ptr %0, i32 0, i32 2, i32 %72, i32 1, i32 5
  %91 = load i32, ptr %90, align 4
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef %89, i32 noundef %91) #8
  %92 = add nuw nsw i32 %73, 44
  %93 = getelementptr %struct.rsnd_ctu, ptr %0, i32 0, i32 2, i32 %72, i32 1, i32 6
  %94 = load i32, ptr %93, align 4
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef %92, i32 noundef %94) #8
  %95 = add nuw nsw i32 %73, 45
  %96 = getelementptr %struct.rsnd_ctu, ptr %0, i32 0, i32 2, i32 %72, i32 1, i32 7
  %97 = load i32, ptr %96, align 4
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef %95, i32 noundef %97) #8
  %98 = add nuw nsw i32 %72, 1
  %99 = icmp eq i32 %72, %70
  br i1 %99, label %100, label %71

100:                                              ; preds = %71, %3
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 34, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_ctu_quit(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 34, i32 noundef 1) #8
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 33, i32 noundef 0) #8
  %4 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_ctu_pcm_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.rsnd_ctu, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rsnd_ctu, ptr %0, i32 0, i32 1
  %10 = tail call ptr @rsnd_kctrl_init_m(ptr noundef %9) #8
  %11 = tail call i32 @rsnd_kctrl_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef null, ptr noundef %10, ptr noundef null, i32 noundef 8, i32 noundef 12) #8
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.rsnd_ctu, ptr %0, i32 0, i32 2
  %15 = tail call ptr @rsnd_kctrl_init_m(ptr noundef %14) #8
  %16 = tail call i32 @rsnd_kctrl_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef null, ptr noundef %15, ptr noundef null, i32 noundef 8, i32 noundef 16777215) #8
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %13
  %19 = getelementptr %struct.rsnd_ctu, ptr %0, i32 0, i32 2, i32 1
  %20 = tail call ptr @rsnd_kctrl_init_m(ptr noundef %19) #8
  %21 = tail call i32 @rsnd_kctrl_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef null, ptr noundef %20, ptr noundef null, i32 noundef 8, i32 noundef 16777215) #8
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %18
  %24 = getelementptr %struct.rsnd_ctu, ptr %0, i32 0, i32 2, i32 2
  %25 = tail call ptr @rsnd_kctrl_init_m(ptr noundef %24) #8
  %26 = tail call i32 @rsnd_kctrl_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef null, ptr noundef %25, ptr noundef null, i32 noundef 8, i32 noundef 16777215) #8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %23
  %29 = getelementptr %struct.rsnd_ctu, ptr %0, i32 0, i32 2, i32 3
  %30 = tail call ptr @rsnd_kctrl_init_m(ptr noundef %29) #8
  %31 = tail call i32 @rsnd_kctrl_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef null, ptr noundef %30, ptr noundef null, i32 noundef 8, i32 noundef 16777215) #8
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.rsnd_ctu, ptr %0, i32 0, i32 3
  %35 = tail call ptr @rsnd_kctrl_init_s(ptr noundef %34) #8
  %36 = tail call i32 @rsnd_kctrl_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.9, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef nonnull @rsnd_ctu_value_reset, ptr noundef %35, ptr noundef null, i32 noundef 1, i32 noundef 1) #8
  %37 = load i32, ptr %4, align 4
  %38 = or i32 %37, 1
  store i32 %38, ptr %4, align 4
  br label %39

39:                                               ; preds = %33, %28, %23, %18, %13, %8, %3
  %40 = phi i32 [ %36, %33 ], [ 0, %3 ], [ %11, %8 ], [ %16, %13 ], [ %21, %18 ], [ %26, %23 ], [ %31, %28 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_get_status(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @rsnd_ctu_id(ptr nocapture noundef readonly %0) #6 {
  %2 = load i32, ptr %0, align 4
  %3 = sdiv i32 %2, 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @rsnd_ctu_id_sub(ptr nocapture noundef readonly %0) #6 {
  %2 = load i32, ptr %0, align 4
  %3 = srem i32 %2, 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id_raw(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rsnd_ctu_debug_info(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rsnd_mod_id_raw(ptr noundef %2) #8
  %5 = shl i32 %4, 8
  %6 = add i32 %5, 1280
  tail call void @rsnd_debugfs_mod_reg_show(ptr noundef %0, ptr noundef %2, i32 noundef 0, i32 noundef %6, i32 noundef 256) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_cmd_attach(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_channel_original_with_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_kctrl_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_kctrl_accept_anytime(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_kctrl_init_m(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rsnd_ctu_value_reset(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #7 {
  %3 = getelementptr inbounds %struct.rsnd_ctu, ptr %1, i32 0, i32 3, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.rsnd_ctu, ptr %1, i32 0, i32 1, i32 1, i32 0
  %8 = getelementptr %struct.rsnd_ctu, ptr %1, i32 0, i32 2, i32 0, i32 1, i32 0
  %9 = getelementptr %struct.rsnd_ctu, ptr %1, i32 0, i32 2, i32 1, i32 1, i32 0
  %10 = getelementptr %struct.rsnd_ctu, ptr %1, i32 0, i32 2, i32 2, i32 1, i32 0
  %11 = getelementptr %struct.rsnd_ctu, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 0
  store i32 0, ptr %3, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  br label %12

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_kctrl_init_s(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_debugfs_mod_reg_show(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }

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
