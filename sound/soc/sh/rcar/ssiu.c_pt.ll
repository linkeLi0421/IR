; ModuleID = '/llk/IR/sound/soc/sh/rcar/ssiu.c_pt.bc'
source_filename = "../sound/soc/sh/rcar/ssiu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rsnd_mod_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rsnd_mod = type { i32, i32, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rsnd_dai = type { [16 x i8], %struct.rsnd_dai_stream, %struct.rsnd_dai_stream, ptr, %struct.snd_pcm_hw_constraint_list, i32, i32, i32, i8 }
%struct.rsnd_dai_stream = type { [16 x i8], ptr, [13 x ptr], ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.rsnd_priv = type { ptr, %struct.spinlock, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32 }
%struct.rsnd_ssiu = type { %struct.rsnd_mod, [8 x i32], i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"%s err status : 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"rcar_sound,ssiu\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ssiu\00", align 1
@rsnd_ssiu_ops_gen1 = internal global %struct.rsnd_mod_ops { ptr @.str.2, ptr null, ptr null, ptr null, ptr @rsnd_ssiu_init, ptr @rsnd_ssiu_quit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_ssiu_get_status, ptr null, ptr null, ptr null, ptr null }, align 4
@rsnd_ssiu_ops_gen2 = internal global %struct.rsnd_mod_ops { ptr @.str.2, ptr @rsnd_ssiu_dma_req, ptr null, ptr null, ptr @rsnd_ssiu_init_gen2, ptr null, ptr @rsnd_ssiu_start_gen2, ptr @rsnd_ssiu_stop_gen2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_ssiu_get_status, ptr null, ptr null, ptr null, ptr @rsnd_ssiu_debug_info }, align 4
@gen2_id = internal unnamed_addr constant [10 x i32] [i32 0, i32 4, i32 8, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18], align 4
@gen3_id = internal unnamed_addr constant [10 x i32] [i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 41, i32 42, i32 43, i32 44], align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"unknown SSIU\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"sound/soc/sh/rcar/ssiu.c\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@__const.rsnd_ssiu_init_gen2.rsnd_ssi_array = private unnamed_addr constant [3 x i32] [i32 9, i32 8, i32 7], align 4
@switch.table.rsnd_ssiu_busif_err_status_clear.7 = private unnamed_addr constant [10 x i32] [i32 135, i32 135, i32 135, i32 135, i32 135, i32 135, i32 135, i32 135, i32 135, i32 136], align 4
@switch.table.rsnd_ssiu_busif_err_irq_ctrl = private unnamed_addr constant [10 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 0, i32 0, i32 0, i32 0, i32 4], align 4
@switch.table.rsnd_ssiu_busif_err_irq_ctrl.8 = private unnamed_addr constant [10 x i32] [i32 143, i32 143, i32 143, i32 143, i32 143, i32 143, i32 143, i32 143, i32 143, i32 144], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @rsnd_ssiu_busif_err_status_clear(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @rsnd_mod_id(ptr noundef %0) #7
  %3 = icmp ult i32 %2, 10
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = getelementptr inbounds [10 x i32], ptr @switch.table.rsnd_ssiu_busif_err_irq_ctrl, i32 0, i32 %2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds [10 x i32], ptr @switch.table.rsnd_ssiu_busif_err_status_clear.7, i32 0, i32 %2
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i32 [ 0, %1 ], [ %6, %4 ]
  %11 = phi i32 [ 135, %1 ], [ %8, %4 ]
  %12 = shl nuw nsw i32 15, %10
  %13 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 3
  %14 = tail call i32 @rsnd_mod_read(ptr noundef %0, i32 noundef %11) #7
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %9
  %18 = load ptr, ptr %13, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  %21 = tail call ptr @rsnd_mod_name(ptr noundef %0) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef %21, i32 noundef %15) #8
  br label %22

22:                                               ; preds = %17, %9
  %23 = xor i1 %16, true
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef %11, i32 noundef %12) #7
  %24 = add nuw nsw i32 %11, 2
  %25 = tail call i32 @rsnd_mod_read(ptr noundef %0, i32 noundef %24) #7
  %26 = and i32 %25, %12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr %13, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  %32 = tail call ptr @rsnd_mod_name(ptr noundef %0) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str, ptr noundef %32, i32 noundef %26) #8
  br label %33

33:                                               ; preds = %28, %22
  %34 = phi i1 [ true, %28 ], [ %23, %22 ]
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef %24, i32 noundef %12) #7
  %35 = add nuw nsw i32 %11, 4
  %36 = tail call i32 @rsnd_mod_read(ptr noundef %0, i32 noundef %35) #7
  %37 = and i32 %36, %12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %13, align 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  %43 = tail call ptr @rsnd_mod_name(ptr noundef %0) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str, ptr noundef %43, i32 noundef %37) #8
  br label %44

44:                                               ; preds = %39, %33
  %45 = phi i1 [ true, %39 ], [ %34, %33 ]
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef %35, i32 noundef %12) #7
  %46 = add nuw nsw i32 %11, 6
  %47 = tail call i32 @rsnd_mod_read(ptr noundef %0, i32 noundef %46) #7
  %48 = and i32 %47, %12
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr %13, align 4
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.platform_device, ptr %52, i32 0, i32 3
  %54 = tail call ptr @rsnd_mod_name(ptr noundef %0) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %53, ptr noundef nonnull @.str, ptr noundef %54, i32 noundef %48) #8
  br label %55

55:                                               ; preds = %50, %44
  %56 = phi i1 [ true, %50 ], [ %45, %44 ]
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef %46, i32 noundef %12) #7
  ret i1 %56
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rsnd_parse_connect_ssiu(ptr noundef %0, ptr noundef readnone %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rsnd_dai, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @of_get_child_by_name(ptr noundef %8, ptr noundef nonnull @.str.1) #7
  %10 = getelementptr inbounds %struct.rsnd_dai, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.rsnd_dai, ptr %0, i32 0, i32 2
  %12 = icmp eq ptr %9, null
  br i1 %12, label %48, label %13

13:                                               ; preds = %3
  %14 = tail call ptr @of_get_next_child(ptr noundef nonnull %9, ptr noundef null) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %47, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.rsnd_priv, ptr %5, i32 0, i32 9
  %18 = getelementptr inbounds %struct.rsnd_priv, ptr %5, i32 0, i32 8
  br label %19

19:                                               ; preds = %43, %16
  %20 = phi i32 [ 0, %16 ], [ %44, %43 ]
  %21 = phi ptr [ %14, %16 ], [ %45, %43 ]
  %22 = tail call i32 @rsnd_node_fixed_index(ptr noundef nonnull %21, ptr noundef nonnull @.str.2, i32 noundef %20) #7
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %27, label %24, !prof !8

24:                                               ; preds = %19
  %25 = load i32, ptr %17, align 4
  %26 = icmp sgt i32 %25, %22
  br i1 %26, label %28, label %27, !prof !9

27:                                               ; preds = %24, %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 426, i32 noundef 9, ptr noundef null) #7
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i32 [ 0, %27 ], [ %22, %24 ]
  %30 = load ptr, ptr %18, align 4
  %31 = getelementptr %struct.rsnd_ssiu, ptr %30, i32 %29
  %32 = icmp eq ptr %21, %1
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.rsnd_mod, ptr %31, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 @rsnd_dai_connect(ptr noundef %31, ptr noundef %10, i32 noundef %35) #7
  br label %37

37:                                               ; preds = %33, %28
  %38 = icmp eq ptr %21, %2
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.rsnd_mod, ptr %31, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 @rsnd_dai_connect(ptr noundef %31, ptr noundef %11, i32 noundef %41) #7
  br label %43

43:                                               ; preds = %39, %37
  %44 = add i32 %22, 1
  %45 = tail call ptr @of_get_next_child(ptr noundef nonnull %9, ptr noundef nonnull %21) #7
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %19

47:                                               ; preds = %43, %13
  tail call void @of_node_put(ptr noundef nonnull %9) #7
  br label %48

48:                                               ; preds = %47, %3
  %49 = getelementptr %struct.rsnd_dai, ptr %0, i32 0, i32 1, i32 2, i32 12
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  tail call fastcc void @rsnd_parse_connect_ssiu_compatible(ptr noundef %5, ptr noundef %10)
  br label %53

53:                                               ; preds = %52, %48
  %54 = getelementptr %struct.rsnd_dai, ptr %0, i32 0, i32 2, i32 2, i32 12
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  tail call fastcc void @rsnd_parse_connect_ssiu_compatible(ptr noundef %5, ptr noundef %11)
  br label %58

58:                                               ; preds = %57, %53
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_node_fixed_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_dai_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rsnd_parse_connect_ssiu_compatible(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @rsnd_ssi_is_dma_mode(ptr noundef nonnull %4) #7
  %8 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 8
  %13 = icmp eq i32 %7, 0
  br label %14

14:                                               ; preds = %31, %11
  %15 = phi i32 [ 0, %11 ], [ %32, %31 ]
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr %struct.rsnd_ssiu, ptr %16, i32 %15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %14
  br i1 %13, label %31, label %20

20:                                               ; preds = %19
  %21 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %4) #7
  %22 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %17) #7
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = tail call i32 @rsnd_mod_id_sub(ptr noundef nonnull %17) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.rsnd_mod, ptr %17, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @rsnd_dai_connect(ptr noundef nonnull %17, ptr noundef %1, i32 noundef %29) #7
  br label %35

31:                                               ; preds = %24, %20, %19
  %32 = add nuw nsw i32 %15, 1
  %33 = load i32, ptr %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %14, label %35

35:                                               ; preds = %31, %27, %14, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_ssiu_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_get_child_by_name(ptr noundef %5, ptr noundef nonnull @.str.1) #7
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = tail call i32 @rsnd_node_count(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull @.str.2) #7
  br label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi i32 [ %9, %8 ], [ %12, %10 ]
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %74, label %16

16:                                               ; preds = %13
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 68) #7
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %74, label %19, !prof !10

19:                                               ; preds = %16
  %20 = extractvalue { i32, i1 } %17, 0
  %21 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %20, i32 noundef 3520) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %74, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 8
  store ptr %21, ptr %24, align 4
  %25 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 9
  store i32 %14, ptr %25, align 4
  %26 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 15
  %29 = icmp eq i32 %28, 1
  %30 = select i1 %29, ptr @rsnd_ssiu_ops_gen1, ptr @rsnd_ssiu_ops_gen2
  %31 = xor i1 %29, true
  %32 = select i1 %7, i1 %31, i1 false
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  store ptr @rsnd_ssiu_id, ptr getelementptr inbounds (%struct.rsnd_mod_ops, ptr @rsnd_ssiu_ops_gen2, i32 0, i32 17), align 4
  store ptr @rsnd_ssiu_id_sub, ptr getelementptr inbounds (%struct.rsnd_mod_ops, ptr @rsnd_ssiu_ops_gen2, i32 0, i32 18), align 4
  %34 = load i32, ptr %26, align 4
  %35 = and i32 %34, 15
  switch i32 %35, label %37 [
    i32 2, label %38
    i32 3, label %36
  ]

36:                                               ; preds = %33
  br label %38

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #8
  br label %74

38:                                               ; preds = %36, %33, %23
  %39 = phi ptr [ @gen3_id, %36 ], [ null, %23 ], [ @gen2_id, %33 ]
  %40 = phi i32 [ 10, %36 ], [ 0, %23 ], [ 10, %33 ]
  %41 = load i32, ptr %25, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %74

43:                                               ; preds = %38
  %44 = call i32 @llvm.umax.i32(i32 %40, i32 1)
  br label %49

45:                                               ; preds = %71
  %46 = add nuw nsw i32 %50, 1
  %47 = load i32, ptr %25, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %45, %43
  %50 = phi i32 [ 0, %43 ], [ %46, %45 ]
  %51 = load ptr, ptr %24, align 4
  %52 = getelementptr %struct.rsnd_ssiu, ptr %51, i32 %50
  %53 = icmp eq ptr %52, null
  br i1 %53, label %74, label %54

54:                                               ; preds = %49
  br i1 %7, label %55, label %69

55:                                               ; preds = %54
  br i1 %32, label %56, label %71

56:                                               ; preds = %55
  %57 = getelementptr %struct.rsnd_ssiu, ptr %51, i32 %50, i32 3
  %58 = getelementptr %struct.rsnd_ssiu, ptr %51, i32 %50, i32 4
  br label %59

59:                                               ; preds = %64, %56
  %60 = phi i32 [ 0, %56 ], [ %67, %64 ]
  %61 = getelementptr i32, ptr %39, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = icmp sgt i32 %62, %50
  br i1 %63, label %71, label %64

64:                                               ; preds = %59
  store i32 %60, ptr %57, align 4
  %65 = load i32, ptr %61, align 4
  %66 = sub i32 %50, %65
  store i32 %66, ptr %58, align 4
  %67 = add nuw nsw i32 %60, 1
  %68 = icmp eq i32 %67, %44
  br i1 %68, label %71, label %59

69:                                               ; preds = %54
  %70 = getelementptr %struct.rsnd_ssiu, ptr %51, i32 %50, i32 3
  store i32 %50, ptr %70, align 4
  br label %71

71:                                               ; preds = %69, %64, %59, %55
  %72 = tail call i32 @rsnd_mod_init(ptr noundef %0, ptr noundef nonnull %52, ptr noundef nonnull %30, ptr noundef null, i32 noundef 12, i32 noundef %50) #7
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %45, label %74

74:                                               ; preds = %71, %49, %45, %38, %37, %19, %16, %13
  %75 = phi i32 [ -19, %37 ], [ -22, %13 ], [ -12, %19 ], [ -12, %16 ], [ 0, %38 ], [ %72, %71 ], [ 0, %45 ], [ 0, %49 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_node_count(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @rsnd_ssiu_id(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.rsnd_ssiu, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @rsnd_ssiu_id_sub(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.rsnd_ssiu, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rsnd_ssiu_remove(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 8
  %3 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %11, %1
  %7 = phi i32 [ %12, %11 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr %struct.rsnd_ssiu, ptr %8, i32 %7
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_ssi_is_dma_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id_sub(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_ssiu_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @rsnd_ssi_multi_secondaries_runtime(ptr noundef %1) #7
  %7 = tail call i32 @rsnd_ssi_use_busif(ptr noundef %1) #7
  %8 = tail call i32 @rsnd_mod_id(ptr noundef %0) #7
  %9 = getelementptr inbounds %struct.rsnd_dai, ptr %5, i32 0, i32 8
  %10 = load i8, ptr %9, align 4
  %11 = tail call zeroext i1 @rsnd_ssiu_busif_err_status_clear(ptr noundef %0)
  %12 = shl nuw i32 1, %8
  %13 = icmp eq i32 %7, 0
  %14 = zext i1 %13 to i32
  %15 = shl nuw i32 %14, %8
  tail call void @rsnd_mod_bset(ptr noundef %0, i32 noundef 105, i32 noundef %12, i32 noundef %15) #7
  %16 = tail call i32 @rsnd_mod_read(ptr noundef %0, i32 noundef 106) #7
  %17 = tail call i32 @rsnd_mod_read(ptr noundef %0, i32 noundef 107) #7
  %18 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 11
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @__rsnd_ssi_is_pin_sharing(ptr noundef %19) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = or i32 %12, %6
  br label %36

24:                                               ; preds = %3
  %25 = icmp eq i32 %6, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %24
  %27 = shl i32 %6, 16
  %28 = and i32 %27, 1048576
  %29 = or i32 %16, %28
  %30 = icmp eq i32 %6, 6
  %31 = or i32 %29, 16
  %32 = select i1 %30, i32 %31, i32 %29
  %33 = icmp eq i32 %6, 518
  %34 = or i32 %17, 16
  %35 = select i1 %33, i32 %34, i32 %17
  br label %36

36:                                               ; preds = %26, %24, %22
  %37 = phi i32 [ %23, %22 ], [ 0, %24 ], [ %6, %26 ]
  %38 = phi i32 [ %16, %22 ], [ %16, %24 ], [ %32, %26 ]
  %39 = phi i32 [ %17, %22 ], [ %17, %24 ], [ %35, %26 ]
  %40 = and i8 %10, 1
  %41 = and i32 %37, 2
  %42 = icmp eq i32 %41, 0
  %43 = icmp eq i8 %40, 0
  %44 = select i1 %43, i32 1, i32 2
  %45 = select i1 %42, i32 0, i32 %44
  %46 = or i32 %45, %38
  %47 = and i32 %37, 4
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %43, i32 4, i32 8
  %50 = select i1 %48, i32 0, i32 %49
  %51 = or i32 %46, %50
  %52 = and i32 %37, 16
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %43, i32 65536, i32 131072
  %55 = select i1 %53, i32 0, i32 %54
  %56 = or i32 %51, %55
  %57 = and i32 %37, 512
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i32 0, i32 %44
  %60 = or i32 %59, %39
  tail call void @rsnd_mod_bset(ptr noundef %0, i32 noundef 106, i32 noundef 1245215, i32 noundef %56) #7
  tail call void @rsnd_mod_bset(ptr noundef %0, i32 noundef 107, i32 noundef 23, i32 noundef %60) #7
  tail call fastcc void @rsnd_ssiu_busif_err_irq_ctrl(ptr noundef %0, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_ssiu_quit(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  tail call fastcc void @rsnd_ssiu_busif_err_irq_ctrl(ptr noundef %0, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rsnd_ssiu_get_status(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = tail call i32 @rsnd_mod_id_sub(ptr noundef %0) #7
  %5 = getelementptr %struct.rsnd_ssiu, ptr %0, i32 0, i32 1, i32 %4
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_ssi_multi_secondaries_runtime(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_ssi_use_busif(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_bset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rsnd_ssi_is_pin_sharing(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rsnd_ssiu_busif_err_irq_ctrl(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @rsnd_mod_id(ptr noundef %0) #7
  %4 = icmp ult i32 %3, 10
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = getelementptr inbounds [10 x i32], ptr @switch.table.rsnd_ssiu_busif_err_irq_ctrl, i32 0, i32 %3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds [10 x i32], ptr @switch.table.rsnd_ssiu_busif_err_irq_ctrl.8, i32 0, i32 %3
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ 0, %2 ], [ %7, %5 ]
  %12 = phi i32 [ 143, %2 ], [ %9, %5 ]
  %13 = shl nuw nsw i32 15, %11
  %14 = icmp eq i32 %1, 0
  %15 = xor i32 %13, -1
  %16 = tail call i32 @rsnd_mod_read(ptr noundef %0, i32 noundef %12) #7
  %17 = or i32 %16, %13
  %18 = and i32 %16, %15
  %19 = select i1 %14, i32 %18, i32 %17
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef %12, i32 noundef %19) #7
  %20 = add nuw nsw i32 %12, 2
  %21 = tail call i32 @rsnd_mod_read(ptr noundef %0, i32 noundef %20) #7
  %22 = or i32 %21, %13
  %23 = and i32 %21, %15
  %24 = select i1 %14, i32 %23, i32 %22
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef %20, i32 noundef %24) #7
  %25 = add nuw nsw i32 %12, 4
  %26 = tail call i32 @rsnd_mod_read(ptr noundef %0, i32 noundef %25) #7
  %27 = or i32 %26, %13
  %28 = and i32 %26, %15
  %29 = select i1 %14, i32 %28, i32 %27
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef %25, i32 noundef %29) #7
  %30 = add nuw nsw i32 %12, 6
  %31 = tail call i32 @rsnd_mod_read(ptr noundef %0, i32 noundef %30) #7
  %32 = or i32 %31, %13
  %33 = and i32 %31, %15
  %34 = select i1 %14, i32 %33, i32 %32
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef %30, i32 noundef %34) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rsnd_ssiu_dma_req(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rsnd_mod, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rsnd_dai, ptr %6, i32 0, i32 1
  %8 = icmp eq ptr %7, %0
  %9 = select i1 %8, ptr @.str.5, ptr @.str.6
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = tail call ptr @of_get_child_by_name(ptr noundef %12, ptr noundef nonnull @.str.1) #7
  %14 = tail call ptr @rsnd_dma_request_channel(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef nonnull %9) #7
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_ssiu_init_gen2(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = and i32 %7, 2
  %10 = tail call i32 @rsnd_ssiu_init(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %11 = getelementptr inbounds %struct.rsnd_ssiu, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = tail call i32 @rsnd_runtime_is_tdm(ptr noundef %1) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = tail call i32 @rsnd_runtime_is_tdm_split(ptr noundef %1) #7
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 0, i32 256
  br label %20

20:                                               ; preds = %16, %3
  %21 = phi i32 [ 1, %3 ], [ %19, %16 ]
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 104, i32 noundef %21) #7
  %22 = tail call i32 @rsnd_ssi_use_busif(ptr noundef %1) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %51, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @rsnd_mod_id(ptr noundef %0) #7
  %26 = tail call i32 @rsnd_mod_id_sub(ptr noundef %0) #7
  %27 = icmp eq i32 %25, 9
  %28 = icmp sgt i32 %26, 3
  %29 = select i1 %27, i1 %28, i1 false
  %30 = select i1 %29, i32 161, i32 118
  %31 = select i1 %29, i32 153, i32 110
  %32 = select i1 %29, i32 169, i32 126
  %33 = add i32 %26, %30
  %34 = add i32 %26, %31
  %35 = add i32 %26, %32
  %36 = tail call i32 @rsnd_get_adinr_bit(ptr noundef %0, ptr noundef %1) #7
  %37 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.rsnd_dai, ptr %38, i32 0, i32 1
  %40 = icmp eq ptr %39, %1
  br i1 %40, label %41, label %43

41:                                               ; preds = %24
  %42 = tail call i32 @rsnd_runtime_channel_after_ctu_with_params(ptr noundef %1, ptr noundef null) #7
  br label %45

43:                                               ; preds = %24
  %44 = tail call i32 @rsnd_runtime_channel_original_with_params(ptr noundef %1, ptr noundef null) #7
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = or i32 %46, %36
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef %33, i32 noundef %47) #7
  %48 = tail call i32 @rsnd_get_busif_shift(ptr noundef %1, ptr noundef %0) #7
  %49 = or i32 %48, 1
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef %34, i32 noundef %49) #7
  %50 = tail call i32 @rsnd_get_dalign(ptr noundef %0, ptr noundef %1) #7
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef %35, i32 noundef %50) #7
  br label %51

51:                                               ; preds = %45, %20
  %52 = icmp eq i32 %8, 0
  %53 = icmp eq i32 %9, 0
  %54 = and i32 %7, 3
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %92, label %56

56:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) @__const.rsnd_ssiu_init_gen2.rsnd_ssi_array, i32 12, i1 false)
  %57 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 11
  %58 = load ptr, ptr %57, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %59 = tail call i32 @rsnd_mod_id(ptr noundef %58) #7
  %60 = shl i32 %59, 16
  %61 = shl i32 %59, 20
  %62 = shl i32 %59, 24
  %63 = shl i32 %59, 28
  %64 = or i32 %61, %59
  %65 = or i32 %64, %60
  %66 = or i32 %65, %62
  %67 = or i32 %66, %63
  store i32 0, ptr %5, align 4
  %68 = call ptr @rsnd_mod_next(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 3) #7
  %69 = icmp eq ptr %68, null
  br i1 %69, label %86, label %70

70:                                               ; preds = %70, %56
  %71 = phi ptr [ %84, %70 ], [ %68, %56 ]
  %72 = phi i32 [ %81, %70 ], [ %67, %56 ]
  %73 = load i32, ptr %5, align 4
  %74 = shl i32 %73, 2
  %75 = add i32 %74, 20
  %76 = shl i32 15, %75
  %77 = xor i32 %76, -1
  %78 = and i32 %72, %77
  %79 = call i32 @rsnd_mod_id(ptr noundef nonnull %71) #7
  %80 = shl i32 %79, %75
  %81 = or i32 %78, %80
  %82 = load i32, ptr %5, align 4
  %83 = add i32 %82, 1
  store i32 %83, ptr %5, align 4
  %84 = call ptr @rsnd_mod_next(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 3) #7
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %70

86:                                               ; preds = %70, %56
  %87 = phi i32 [ %67, %56 ], [ %81, %70 ]
  br i1 %52, label %89, label %88

88:                                               ; preds = %86
  call void @rsnd_mod_write(ptr noundef %0, i32 noundef 151, i32 noundef %87) #7
  br label %89

89:                                               ; preds = %88, %86
  br i1 %53, label %91, label %90

90:                                               ; preds = %89
  call void @rsnd_mod_write(ptr noundef %0, i32 noundef 152, i32 noundef %87) #7
  br label %91

91:                                               ; preds = %90, %89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #7
  br label %92

92:                                               ; preds = %91, %51
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_ssiu_start_gen2(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call i32 @rsnd_mod_id_sub(ptr noundef %0) #7
  %5 = tail call i32 @rsnd_ssi_use_busif(ptr noundef %1) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = shl i32 %4, 2
  %9 = shl nuw i32 1, %8
  tail call void @rsnd_mod_bset(ptr noundef %0, i32 noundef 109, i32 noundef %9, i32 noundef %9) #7
  %10 = tail call i32 @rsnd_ssi_multi_secondaries_runtime(ptr noundef %1) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 108, i32 noundef 1) #7
  br label %13

13:                                               ; preds = %12, %7, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_ssiu_stop_gen2(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call i32 @rsnd_mod_id_sub(ptr noundef %0) #7
  %5 = tail call i32 @rsnd_ssi_use_busif(ptr noundef %1) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = shl i32 %4, 2
  %9 = shl nuw i32 1, %8
  tail call void @rsnd_mod_bset(ptr noundef %0, i32 noundef 109, i32 noundef %9, i32 noundef 0) #7
  %10 = getelementptr inbounds %struct.rsnd_ssiu, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  store i32 %12, ptr %10, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = tail call i32 @rsnd_ssi_multi_secondaries_runtime(ptr noundef %1) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 108, i32 noundef 0) #7
  br label %18

18:                                               ; preds = %17, %14, %7, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rsnd_ssiu_debug_info(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rsnd_mod_id(ptr noundef %2) #7
  %5 = shl i32 %4, 7
  tail call void @rsnd_debugfs_mod_reg_show(ptr noundef %0, ptr noundef %2, i32 noundef 2, i32 noundef %5, i32 noundef 128) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_is_tdm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_is_tdm_split(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_get_adinr_bit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_channel_after_ctu_with_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_channel_original_with_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_get_busif_shift(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_get_dalign(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_next(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_debugfs_mod_reg_show(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
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
!10 = !{!"branch_weights", i32 1, i32 2000}
