; ModuleID = '/llk/IR/sound/soc/sh/rcar/src.c_pt.bc'
source_filename = "../sound/soc/sh/rcar/src.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rsnd_mod_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rsnd_dai_stream = type { [16 x i8], ptr, [13 x ptr], ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rsnd_dai = type { [16 x i8], %struct.rsnd_dai_stream, %struct.rsnd_dai_stream, ptr, %struct.snd_pcm_hw_constraint_list, i32, i32, i32, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.rsnd_src = type { %struct.rsnd_mod, ptr, %struct.rsnd_kctrl_cfg_s, %struct.rsnd_kctrl_cfg_s, i32 }
%struct.rsnd_mod = type { i32, i32, ptr, ptr, ptr, i32 }
%struct.rsnd_kctrl_cfg_s = type { %struct.rsnd_kctrl_cfg, i32 }
%struct.rsnd_kctrl_cfg = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rsnd_priv = type { ptr, %struct.spinlock, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = private unnamed_addr constant [24 x i8] c"sound/soc/sh/rcar/src.c\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"rcar_sound,src\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"src\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@rsnd_src_ops = internal global %struct.rsnd_mod_ops { ptr @.str.2, ptr @rsnd_src_dma_req, ptr @rsnd_src_probe_, ptr null, ptr @rsnd_src_init, ptr @rsnd_src_quit, ptr @rsnd_src_start, ptr @rsnd_src_stop, ptr @rsnd_src_irq, ptr @rsnd_src_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_mod_get_status, ptr null, ptr null, ptr null, ptr @rsnd_src_debug_info }, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%s err status : 0x%08x, 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"FSO/FSI ratio error\0A\00", align 1
@chan288888 = internal unnamed_addr constant [6 x i32] [i32 6, i32 510, i32 510, i32 510, i32 510, i32 510], align 4
@bsdsr_table_pattern1 = internal unnamed_addr constant [6 x i32] [i32 25165824, i32 16777216, i32 12582912, i32 8388608, i32 6291456, i32 4194304], align 4
@chan244888 = internal unnamed_addr constant [6 x i32] [i32 6, i32 30, i32 30, i32 510, i32 510, i32 510], align 4
@chan222222 = internal unnamed_addr constant [6 x i32] [i32 6, i32 6, i32 6, i32 6, i32 6, i32 6], align 4
@bsdsr_table_pattern2 = internal unnamed_addr constant [6 x i32] [i32 37748736, i32 25165824, i32 18874368, i32 12582912, i32 9437184, i32 6291456], align 4
@bsisr_table = internal unnamed_addr constant [6 x i32] [i32 1048672, i32 1048640, i32 1048624, i32 1048608, i32 1048608, i32 1048608], align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"unknown BSDSR/BSDIR settings\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"SRC Out Rate Switch\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"SRC In Rate Switch\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"SRC Out Rate\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"SRC In Rate\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@switch.table.rsnd_src_set_convert_rate = private unnamed_addr constant [10 x ptr] [ptr @bsdsr_table_pattern1, ptr @bsdsr_table_pattern1, ptr @bsdsr_table_pattern1, ptr @bsdsr_table_pattern1, ptr @bsdsr_table_pattern1, ptr @bsdsr_table_pattern2, ptr @bsdsr_table_pattern2, ptr @bsdsr_table_pattern2, ptr @bsdsr_table_pattern2, ptr @bsdsr_table_pattern1], align 4
@switch.table.rsnd_src_set_convert_rate.14 = private unnamed_addr constant [10 x ptr] [ptr @chan288888, ptr @chan244888, ptr @chan222222, ptr @chan244888, ptr @chan244888, ptr @chan222222, ptr @chan222222, ptr @chan222222, ptr @chan222222, ptr @chan222222], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_src_get_rate(ptr nocapture readnone %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %7, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi ptr [ %11, %9 ], [ null, %3 ]
  %14 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.rsnd_dai, ptr %15, i32 0, i32 1
  %17 = icmp eq ptr %16, %1
  %18 = zext i1 %17 to i32
  %19 = icmp eq i32 %18, %2
  %20 = icmp eq ptr %5, null
  %21 = select i1 %19, i1 true, i1 %20
  %22 = select i1 %21, i1 true, i1 %8
  br i1 %22, label %47, label %23

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.snd_pcm_substream, ptr %7, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.rsnd_src, ptr %5, i32 0, i32 2, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 6
  br label %43

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.rsnd_src, ptr %5, i32 0, i32 3, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 14
  br label %43

43:                                               ; preds = %41, %31
  %44 = phi ptr [ %42, %41 ], [ %32, %31 ]
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %23, %12
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 14
  %49 = load i32, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %43, %37, %33
  %51 = phi i32 [ %45, %43 ], [ %35, %33 ], [ %39, %37 ], [ %49, %47 ]
  ret i32 %51
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rsnd_src_mod_get(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %8, label %4, !prof !8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 11
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %9, label %8, !prof !9

8:                                                ; preds = %4, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 635, i32 noundef 9, ptr noundef null) #8
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ 0, %8 ], [ %1, %4 ]
  %11 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.rsnd_src, ptr %12, i32 %10
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_src_probe(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca [16 x i8], align 1
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !10
  %5 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 15
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %58, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @of_get_child_by_name(ptr noundef %11, ptr noundef nonnull @.str.1) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %58, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @rsnd_node_count(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull @.str.2) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %56, label %17

17:                                               ; preds = %14
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 120) #8
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %56, label %20, !prof !11

20:                                               ; preds = %17
  %21 = extractvalue { i32, i1 } %18, 0
  %22 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %21, i32 noundef 3520) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %56, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 11
  store i32 %15, ptr %25, align 4
  %26 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 10
  store ptr %22, ptr %26, align 4
  %27 = tail call ptr @of_get_next_child(ptr noundef nonnull %12, ptr noundef null) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %56, label %29

29:                                               ; preds = %49, %24
  %30 = phi i32 [ %51, %49 ], [ 0, %24 ]
  %31 = phi ptr [ %52, %49 ], [ %27, %24 ]
  %32 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %31) #8
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = call i32 @rsnd_node_fixed_index(ptr noundef nonnull %31, ptr noundef nonnull @.str.2, i32 noundef %30) #8
  %35 = load ptr, ptr %26, align 4
  %36 = getelementptr %struct.rsnd_src, ptr %35, i32 %34
  %37 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef %34)
  %38 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %31, i32 noundef 0) #8
  %39 = getelementptr %struct.rsnd_src, ptr %35, i32 %34, i32 4
  store i32 %38, ptr %39, align 4
  %40 = icmp eq i32 %38, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %33
  %42 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull %2) #8
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = ptrtoint ptr %42 to i32
  br label %54

46:                                               ; preds = %41
  %47 = call i32 @rsnd_mod_init(ptr noundef %0, ptr noundef %36, ptr noundef nonnull @rsnd_src_ops, ptr noundef %42, i32 noundef 6, i32 noundef %34) #8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46, %29
  %50 = phi i32 [ %34, %46 ], [ %30, %29 ]
  %51 = add i32 %50, 1
  %52 = call ptr @of_get_next_child(ptr noundef nonnull %12, ptr noundef nonnull %31) #8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %29

54:                                               ; preds = %46, %44, %33
  %55 = phi i32 [ %45, %44 ], [ -22, %33 ], [ %47, %46 ]
  call void @of_node_put(ptr noundef nonnull %31) #8
  br label %56

56:                                               ; preds = %54, %49, %24, %20, %17, %14
  %57 = phi i32 [ -22, %14 ], [ -12, %20 ], [ -12, %17 ], [ 0, %24 ], [ %55, %54 ], [ 0, %49 ]
  call void @of_node_put(ptr noundef nonnull %12) #8
  br label %58

58:                                               ; preds = %56, %9, %1
  %59 = phi i32 [ %57, %56 ], [ 0, %1 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  ret i32 %59
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_node_count(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_node_fixed_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rsnd_src_remove(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 10
  %3 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 11
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %11, %1
  %7 = phi i32 [ %12, %11 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr %struct.rsnd_src, ptr %8, i32 %7
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
declare dso_local void @rsnd_mod_quit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rsnd_src_dma_req(ptr noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.rsnd_mod, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rsnd_dai, ptr %6, i32 0, i32 1
  %8 = icmp eq ptr %7, %0
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @of_get_child_by_name(ptr noundef %11, ptr noundef nonnull @.str.1) #8
  %13 = select i1 %8, ptr @.str.4, ptr @.str.5
  %14 = tail call ptr @rsnd_dma_request_channel(ptr noundef %12, ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef nonnull %13) #8
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_src_probe_(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.rsnd_src, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = load ptr, ptr %9, align 4
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %14, %13 ], [ %11, %7 ]
  %17 = tail call i32 @devm_request_threaded_irq(ptr noundef %9, i32 noundef %5, ptr noundef nonnull @rsnd_src_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %16, ptr noundef %0) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %3
  %20 = getelementptr inbounds %struct.rsnd_src, ptr %0, i32 0, i32 1
  %21 = tail call i32 @rsnd_dma_attach(ptr noundef %1, ptr noundef %0, ptr noundef %20) #8
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i32 [ %21, %19 ], [ %17, %15 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_src_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.rsnd_src, ptr %0, i32 0, i32 3, i32 1
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_enable(ptr noundef %6) #8
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 3, i32 noundef 0) #8
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 3, i32 noundef 1) #8
  tail call void @rsnd_src_set_convert_rate(ptr noundef %1, ptr noundef %0)
  %8 = tail call i32 @rsnd_mod_id(ptr noundef %0) #8
  %9 = add i32 %8, 16
  %10 = shl nuw i32 1, %9
  %11 = tail call i32 @rsnd_mod_id(ptr noundef %0) #8
  %12 = shl nuw i32 1, %11
  %13 = or i32 %10, %12
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 24, i32 noundef %13) #8
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 25, i32 noundef %13) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_src_quit(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #2 {
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 4, i32 noundef 1) #8
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 3, i32 noundef 0) #8
  %4 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.rsnd_src, ptr %0, i32 0, i32 3, i32 1
  store i32 0, ptr %6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_src_start(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rsnd_src, ptr %0, i32 0, i32 2, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 1, i32 17
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ 17, %3 ], [ %11, %7 ]
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 9, i32 noundef %13) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_src_stop(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #2 {
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 9, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_src_irq(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.rsnd_src, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @rsnd_mod_id(ptr noundef %0) #8
  %8 = add i32 %7, 16
  %9 = shl nuw i32 1, %8
  %10 = shl nuw i32 1, %7
  %11 = or i32 %9, %10
  %12 = icmp sgt i32 %6, 0
  %13 = icmp ne i32 %3, 0
  %14 = and i1 %13, %12
  %15 = select i1 %14, i32 13056, i32 0
  %16 = select i1 %14, i32 %11, i32 0
  %17 = getelementptr inbounds %struct.rsnd_src, ptr %0, i32 0, i32 2, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %16, 65535
  %21 = select i1 %19, i32 %16, i32 %20
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 12, i32 noundef %15) #8
  tail call void @rsnd_mod_bset(ptr noundef %0, i32 noundef 26, i32 noundef %11, i32 noundef %21) #8
  tail call void @rsnd_mod_bset(ptr noundef %0, i32 noundef 27, i32 noundef %11, i32 noundef %21) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_src_pcm_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rsnd_dai, ptr %8, i32 0, i32 1
  %10 = icmp eq ptr %9, %1
  %11 = select i1 %6, i1 true, i1 %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.rsnd_dai, ptr %8, i32 0, i32 1
  %14 = icmp eq ptr %13, %1
  %15 = select i1 %14, ptr @.str.9, ptr @.str.10
  %16 = getelementptr inbounds %struct.rsnd_src, ptr %0, i32 0, i32 2
  %17 = tail call ptr @rsnd_kctrl_init_s(ptr noundef %16) #8
  %18 = tail call i32 @rsnd_kctrl_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %15, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef nonnull @rsnd_src_set_convert_rate, ptr noundef %17, ptr noundef null, i32 noundef 1, i32 noundef 1) #8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.rsnd_dai, ptr %22, i32 0, i32 1
  %24 = icmp eq ptr %23, %1
  %25 = select i1 %24, ptr @.str.11, ptr @.str.12
  %26 = getelementptr inbounds %struct.rsnd_src, ptr %0, i32 0, i32 3
  %27 = tail call ptr @rsnd_kctrl_init_s(ptr noundef %26) #8
  %28 = tail call i32 @rsnd_kctrl_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %25, ptr noundef nonnull @rsnd_kctrl_accept_runtime, ptr noundef nonnull @rsnd_src_set_convert_rate, ptr noundef %27, ptr noundef null, i32 noundef 1, i32 noundef 192000) #8
  br label %29

29:                                               ; preds = %20, %12, %3
  %30 = phi i32 [ %28, %20 ], [ %18, %12 ], [ 0, %3 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_get_status(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rsnd_src_debug_info(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call i32 @rsnd_mod_id(ptr noundef %2) #8
  %5 = shl i32 %4, 5
  tail call void @rsnd_debugfs_mod_reg_show(ptr noundef %0, ptr noundef %2, i32 noundef 0, i32 noundef %5, i32 noundef 32) #8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.13) #8
  tail call void @rsnd_debugfs_mod_reg_show(ptr noundef %0, ptr noundef %2, i32 noundef 0, i32 noundef 448, i32 noundef 32) #8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.13) #8
  %6 = tail call i32 @rsnd_mod_id(ptr noundef %2) #8
  %7 = shl i32 %6, 6
  %8 = add i32 %7, 512
  tail call void @rsnd_debugfs_mod_reg_show(ptr noundef %0, ptr noundef %2, i32 noundef 0, i32 noundef %8, i32 noundef 64) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_src_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  tail call void @rsnd_mod_interrupt(ptr noundef %1, ptr noundef nonnull @__rsnd_src_interrupt) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_dma_attach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_interrupt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__rsnd_src_interrupt(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rsnd_priv, ptr %4, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %5) #8
  %6 = tail call i32 @rsnd_io_is_working(ptr noundef %1) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @rsnd_mod_id(ptr noundef %0) #8
  %12 = add i32 %11, 16
  %13 = shl nuw i32 1, %12
  %14 = tail call i32 @rsnd_mod_id(ptr noundef %0) #8
  %15 = shl nuw i32 1, %14
  %16 = or i32 %13, %15
  %17 = getelementptr inbounds %struct.rsnd_src, ptr %0, i32 0, i32 2, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %16, 65535
  %21 = select i1 %19, i32 %16, i32 %20
  %22 = tail call i32 @rsnd_mod_read(ptr noundef %0, i32 noundef 24) #8
  %23 = tail call i32 @rsnd_mod_read(ptr noundef %0, i32 noundef 25) #8
  %24 = and i32 %21, %22
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %23, %16
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %32, label %29

29:                                               ; preds = %8
  %30 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %31 = tail call ptr @rsnd_mod_name(ptr noundef %0) #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.6, ptr noundef %31, i32 noundef %22, i32 noundef %23) #9
  br label %32

32:                                               ; preds = %29, %8
  %33 = tail call i32 @rsnd_mod_id(ptr noundef %0) #8
  %34 = add i32 %33, 16
  %35 = shl nuw i32 1, %34
  %36 = tail call i32 @rsnd_mod_id(ptr noundef %0) #8
  %37 = shl nuw i32 1, %36
  %38 = or i32 %35, %37
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 24, i32 noundef %38) #8
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 25, i32 noundef %38) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %39 = load i16, ptr %5, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br i1 %28, label %48, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @snd_pcm_stop_xrun(ptr noundef %43) #8
  br label %48

45:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %46 = load i16, ptr %5, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br label %48

48:                                               ; preds = %45, %41, %32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_io_is_working(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rsnd_src_set_convert_rate(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.rsnd_mod, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %178, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.snd_pcm_substream, ptr %8, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rsnd_dai, ptr %14, i32 0, i32 1
  %16 = icmp eq ptr %15, %0
  %17 = icmp eq ptr %12, null
  br i1 %17, label %178, label %18

18:                                               ; preds = %10
  %19 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = select i1 %16, i1 true, i1 %21
  br i1 %22, label %43, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.rsnd_src, ptr %20, i32 0, i32 2, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 6
  br label %39

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.rsnd_src, ptr %20, i32 0, i32 3, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 14
  br label %39

39:                                               ; preds = %37, %27
  %40 = phi ptr [ %38, %37 ], [ %28, %27 ]
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %18
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 14
  %45 = load i32, ptr %44, align 4
  br label %46

46:                                               ; preds = %43, %39, %33, %29
  %47 = phi i32 [ %41, %39 ], [ %31, %29 ], [ %35, %33 ], [ %45, %43 ]
  %48 = xor i1 %16, true
  %49 = select i1 %48, i1 true, i1 %21
  br i1 %49, label %70, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.rsnd_src, ptr %20, i32 0, i32 2, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 6
  br label %66

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.rsnd_src, ptr %20, i32 0, i32 3, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 6
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 14
  br label %66

66:                                               ; preds = %64, %54
  %67 = phi ptr [ %65, %64 ], [ %55, %54 ]
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66, %46
  %71 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 14
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %70, %66, %60, %56
  %74 = phi i32 [ %68, %66 ], [ %58, %56 ], [ %62, %60 ], [ %72, %70 ]
  %75 = tail call i32 @rsnd_runtime_channel_original_with_params(ptr noundef %0, ptr noundef null) #8
  %76 = icmp eq i32 %47, %74
  br i1 %76, label %84, label %77

77:                                               ; preds = %73
  %78 = call i32 @llvm.umax.i32(i32 %47, i32 %74)
  %79 = call i32 @llvm.umin.i32(i32 %47, i32 %74)
  %80 = mul i32 %78, 100
  %81 = udiv i32 %80, %79
  %82 = icmp ugt i32 %81, 600
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7) #9
  br label %178

84:                                               ; preds = %77, %73
  %85 = icmp ne i32 %47, %74
  %86 = zext i1 %85 to i32
  %87 = getelementptr inbounds %struct.rsnd_src, ptr %1, i32 0, i32 2, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = or i32 %88, %86
  %90 = tail call i32 @rsnd_get_adinr_bit(ptr noundef %1, ptr noundef %0) #8
  %91 = or i32 %90, %75
  %92 = icmp eq i32 %89, 0
  br i1 %92, label %113, label %93

93:                                               ; preds = %84
  %94 = zext i32 %47 to i64
  %95 = shl nuw nsw i64 %94, 22
  %96 = icmp ult i32 %47, 1024
  br i1 %96, label %97, label %100, !prof !9

97:                                               ; preds = %93
  %98 = trunc i64 %95 to i32
  %99 = udiv i32 %98, %74
  br label %104

100:                                              ; preds = %93
  %101 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %74, i64 %95) #10, !srcloc !16
  %102 = extractvalue { i64, i64 } %101, 1
  %103 = trunc i64 %102 to i32
  br label %104

104:                                              ; preds = %100, %97
  %105 = phi i32 [ %99, %97 ], [ %103, %100 ]
  %106 = load i32, ptr %87, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %13, align 4
  %110 = getelementptr inbounds %struct.rsnd_dai, ptr %109, i32 0, i32 1
  %111 = icmp eq ptr %110, %0
  %112 = select i1 %111, i32 16777217, i32 33554433
  br label %113

113:                                              ; preds = %108, %104, %84
  %114 = phi i32 [ %105, %108 ], [ %105, %104 ], [ 0, %84 ]
  %115 = phi i32 [ 1, %108 ], [ 1, %104 ], [ 0, %84 ]
  %116 = phi i32 [ 69905, %108 ], [ 69904, %104 ], [ 69904, %84 ]
  %117 = phi i32 [ %112, %108 ], [ 1, %104 ], [ 0, %84 ]
  %118 = tail call i32 @rsnd_mod_id(ptr noundef %1) #8
  %119 = icmp ult i32 %118, 10
  br i1 %119, label %120, label %177

120:                                              ; preds = %113
  %121 = getelementptr inbounds [10 x ptr], ptr @switch.table.rsnd_src_set_convert_rate, i32 0, i32 %118
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds [10 x ptr], ptr @switch.table.rsnd_src_set_convert_rate.14, i32 0, i32 %118
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.rsnd_priv, ptr %4, i32 0, i32 2
  %126 = load i32, ptr %125, align 4
  %127 = and i32 %126, 4095
  %128 = icmp eq i32 %127, 19
  br i1 %128, label %129, label %132

129:                                              ; preds = %120
  %130 = tail call i32 @rsnd_mod_id(ptr noundef %1) #8
  switch i32 %130, label %132 [
    i32 0, label %131
    i32 4, label %131
  ]

131:                                              ; preds = %129, %129
  br label %132

132:                                              ; preds = %131, %129, %120
  %133 = phi ptr [ %124, %129 ], [ @chan222222, %131 ], [ %124, %120 ]
  %134 = shl nuw i32 1, %75
  %135 = load i32, ptr %133, align 4
  %136 = and i32 %135, %134
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %163

138:                                              ; preds = %132
  %139 = getelementptr i32, ptr %133, i32 1
  %140 = load i32, ptr %139, align 4
  %141 = and i32 %140, %134
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %163

143:                                              ; preds = %138
  %144 = getelementptr i32, ptr %133, i32 2
  %145 = load i32, ptr %144, align 4
  %146 = and i32 %145, %134
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %143
  %149 = getelementptr i32, ptr %133, i32 3
  %150 = load i32, ptr %149, align 4
  %151 = and i32 %150, %134
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %148
  %154 = getelementptr i32, ptr %133, i32 4
  %155 = load i32, ptr %154, align 4
  %156 = and i32 %155, %134
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = getelementptr i32, ptr %133, i32 5
  %160 = load i32, ptr %159, align 4
  %161 = and i32 %160, %134
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %177, label %163

163:                                              ; preds = %158, %153, %148, %143, %138, %132
  %164 = phi i32 [ 0, %132 ], [ 1, %138 ], [ 2, %143 ], [ 3, %148 ], [ 4, %153 ], [ 5, %158 ]
  %165 = icmp sgt i32 %75, 8
  br i1 %165, label %177, label %166

166:                                              ; preds = %163
  %167 = tail call i32 @rsnd_get_busif_shift(ptr noundef %0, ptr noundef %1) #8
  %168 = or i32 %167, 1
  %169 = select i1 %16, i32 %168, i32 1
  %170 = select i1 %16, i32 1, i32 %168
  tail call void @rsnd_mod_write(ptr noundef %1, i32 noundef 2, i32 noundef %117) #8
  tail call void @rsnd_mod_write(ptr noundef %1, i32 noundef 4, i32 noundef 1) #8
  tail call void @rsnd_mod_write(ptr noundef %1, i32 noundef 5, i32 noundef %91) #8
  tail call void @rsnd_mod_write(ptr noundef %1, i32 noundef 6, i32 noundef %115) #8
  tail call void @rsnd_mod_write(ptr noundef %1, i32 noundef 7, i32 noundef %114) #8
  tail call void @rsnd_mod_write(ptr noundef %1, i32 noundef 8, i32 noundef %116) #8
  %171 = getelementptr i32, ptr %122, i32 %164
  %172 = load i32, ptr %171, align 4
  tail call void @rsnd_mod_write(ptr noundef %1, i32 noundef 10, i32 noundef %172) #8
  %173 = getelementptr [6 x i32], ptr @bsisr_table, i32 0, i32 %164
  %174 = load i32, ptr %173, align 4
  tail call void @rsnd_mod_write(ptr noundef %1, i32 noundef 11, i32 noundef %174) #8
  tail call void @rsnd_mod_write(ptr noundef %1, i32 noundef 4, i32 noundef 0) #8
  tail call void @rsnd_mod_write(ptr noundef %1, i32 noundef 0, i32 noundef %169) #8
  tail call void @rsnd_mod_write(ptr noundef %1, i32 noundef 1, i32 noundef %170) #8
  %175 = tail call i32 @rsnd_get_dalign(ptr noundef %1, ptr noundef %0) #8
  tail call void @rsnd_mod_write(ptr noundef %1, i32 noundef 13, i32 noundef %175) #8
  %176 = tail call i32 @rsnd_adg_set_src_timesel_gen2(ptr noundef %1, ptr noundef %0, i32 noundef %47, i32 noundef %74) #8
  br label %178

177:                                              ; preds = %163, %158, %113
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.8) #9
  br label %178

178:                                              ; preds = %177, %166, %83, %10, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_channel_original_with_params(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_get_adinr_bit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_get_busif_shift(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_get_dalign(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_adg_set_src_timesel_gen2(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_bset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_kctrl_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_kctrl_accept_anytime(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_kctrl_init_s(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_kctrl_accept_runtime(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_debugfs_mod_reg_show(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

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
!12 = !{i64 2148918146}
!13 = !{i64 2148913970}
!14 = !{i64 2148914045, i64 2148914072, i64 2148914119, i64 2148914141, i64 2148914169, i64 2148914189}
!15 = !{i64 2148941149}
!16 = !{i64 2148395341, i64 2148395621, i64 2148395955, i64 2148396289}
