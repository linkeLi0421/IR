; ModuleID = '/llk/IR/sound/soc/sh/rcar/ssi.c_pt.bc'
source_filename = "../sound/soc/sh/rcar/ssi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rsnd_mod_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rsnd_dai_stream = type { [16 x i8], ptr, [13 x ptr], ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.rsnd_mod = type { i32, i32, ptr, ptr, ptr, i32 }
%struct.rsnd_ssi = type { %struct.rsnd_mod, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rsnd_dai = type { [16 x i8], %struct.rsnd_dai_stream, %struct.rsnd_dai_stream, ptr, %struct.snd_pcm_hw_constraint_list, i32, i32, i32, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
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
%struct.rsnd_priv = type { ptr, %struct.spinlock, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }

@rsnd_ssi_dma_ops = internal global %struct.rsnd_mod_ops { ptr @.str.1, ptr @rsnd_ssi_dma_req, ptr @rsnd_ssi_dma_probe, ptr @rsnd_ssi_common_remove, ptr @rsnd_ssi_init, ptr @rsnd_ssi_quit, ptr @rsnd_ssi_start, ptr @rsnd_ssi_stop, ptr @rsnd_ssi_irq, ptr @rsnd_ssi_pcm_new, ptr @rsnd_ssi_hw_params, ptr null, ptr @rsnd_ssi_fallback, ptr null, ptr null, ptr null, ptr @rsnd_ssi_get_status, ptr null, ptr null, ptr null, ptr @rsnd_ssi_debug_info }, align 4
@.str = private unnamed_addr constant [15 x i8] c"rcar_sound,ssi\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ssi\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"sound/soc/sh/rcar/ssi.c\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"shared-pin\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"no-busif\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"pio-transfer\00", align 1
@rsnd_ssi_pio_ops = internal global %struct.rsnd_mod_ops { ptr @.str.1, ptr null, ptr @rsnd_ssi_common_probe, ptr @rsnd_ssi_common_remove, ptr @rsnd_ssi_pio_init, ptr @rsnd_ssi_quit, ptr @rsnd_ssi_start, ptr @rsnd_ssi_stop, ptr @rsnd_ssi_irq, ptr @rsnd_ssi_pcm_new, ptr @rsnd_ssi_hw_params, ptr @rsnd_ssi_pio_pointer, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_ssi_get_status, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"rxu\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"txu\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"%s err status : 0x%08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"SSI parent/child should use same rate\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"SSI parent/child should use same chan\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"unsupported clock rate\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"unsupported slot width value: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"%s usrcnt error\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.17 = private unnamed_addr constant [24 x i8] c"%s status check failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [57 x i8] c"invalid combination of slot-width and format-data-width\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"%s fallback to PIO mode\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"clock:           %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"consumer\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"bit_clk_inv:     %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"frm_clk_inv:     %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"pin share:       %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"can out clk:     %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"multi secondary: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"tdm:             %d, %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"chan:            %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"user:            %d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_ssi_use_busif(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rsnd_mod, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @rsnd_ssi_dma_ops
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rsnd_ssi, ptr %3, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 1
  %11 = and i32 %10, 1
  %12 = xor i32 %11, 1
  %13 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, i32 %12, i32 1
  br label %17

17:                                               ; preds = %7, %1
  %18 = phi i32 [ %16, %7 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_ssi_is_dma_mode(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @rsnd_ssi_dma_ops
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_ssi_multi_secondaries_runtime(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call i32 @rsnd_runtime_is_multi_ssi(ptr noundef %0) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %29, label %4

4:                                                ; preds = %1
  %5 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %6) #10
  %10 = shl nuw i32 1, %9
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %10, %8 ], [ 0, %4 ]
  %13 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %14) #10
  %18 = shl nuw i32 1, %17
  %19 = or i32 %18, %12
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi i32 [ %19, %16 ], [ %12, %11 ]
  %22 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %23) #10
  %27 = shl nuw i32 1, %26
  %28 = or i32 %27, %21
  br label %29

29:                                               ; preds = %25, %20, %1
  %30 = phi i32 [ 0, %1 ], [ %28, %25 ], [ %21, %20 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_is_multi_ssi(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_ssi_clk_query(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.rsnd_dai, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @rsnd_rdai_width_ctrl(ptr noundef %0, i32 noundef 0) #10
  %8 = mul i32 %2, %1
  %9 = mul i32 %8, %7
  %10 = shl i32 %9, 1
  %11 = tail call i32 @rsnd_adg_clk_query(ptr noundef %6, i32 noundef %10) #10
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %34, %30, %26, %22, %18, %4
  %14 = phi i32 [ 1, %4 ], [ 2, %18 ], [ 3, %22 ], [ 4, %26 ], [ 5, %30 ], [ 6, %34 ]
  %15 = phi i32 [ %10, %4 ], [ %19, %18 ], [ %23, %22 ], [ %27, %26 ], [ %31, %30 ], [ %35, %34 ]
  %16 = icmp eq ptr %3, null
  br i1 %16, label %38, label %17

17:                                               ; preds = %13
  store i32 %14, ptr %3, align 4
  br label %38

18:                                               ; preds = %4
  %19 = shl i32 %9, 2
  %20 = tail call i32 @rsnd_adg_clk_query(ptr noundef %6, i32 noundef %19) #10
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %13

22:                                               ; preds = %18
  %23 = shl i32 %9, 3
  %24 = tail call i32 @rsnd_adg_clk_query(ptr noundef %6, i32 noundef %23) #10
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %13

26:                                               ; preds = %22
  %27 = shl i32 %9, 4
  %28 = tail call i32 @rsnd_adg_clk_query(ptr noundef %6, i32 noundef %27) #10
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %13

30:                                               ; preds = %26
  %31 = mul i32 %9, 6
  %32 = tail call i32 @rsnd_adg_clk_query(ptr noundef %6, i32 noundef %31) #10
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %13

34:                                               ; preds = %30
  %35 = mul i32 %9, 12
  %36 = tail call i32 @rsnd_adg_clk_query(ptr noundef %6, i32 noundef %35) #10
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %13

38:                                               ; preds = %34, %17, %13
  %39 = phi i32 [ %15, %17 ], [ %15, %13 ], [ 0, %34 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_rdai_width_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_adg_clk_query(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rsnd_parse_connect_ssi(ptr noundef %0, ptr noundef readnone %1, ptr noundef readnone %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.rsnd_dai, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @of_get_child_by_name(ptr noundef %8, ptr noundef nonnull @.str) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %90, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @of_get_next_child(ptr noundef nonnull %9, ptr noundef null) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %89, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rsnd_priv, ptr %5, i32 0, i32 7
  %16 = getelementptr inbounds %struct.rsnd_priv, ptr %5, i32 0, i32 6
  %17 = getelementptr inbounds %struct.rsnd_dai, ptr %0, i32 0, i32 1
  %18 = getelementptr inbounds %struct.rsnd_dai, ptr %0, i32 0, i32 1, i32 4
  %19 = getelementptr %struct.rsnd_dai, ptr %0, i32 0, i32 1, i32 2, i32 11
  %20 = getelementptr %struct.rsnd_dai, ptr %0, i32 0, i32 1, i32 2, i32 9
  %21 = getelementptr %struct.rsnd_dai, ptr %0, i32 0, i32 1, i32 2, i32 8
  %22 = getelementptr %struct.rsnd_dai, ptr %0, i32 0, i32 1, i32 2, i32 7
  %23 = getelementptr inbounds %struct.rsnd_dai, ptr %0, i32 0, i32 2
  %24 = getelementptr inbounds %struct.rsnd_dai, ptr %0, i32 0, i32 2, i32 4
  %25 = getelementptr %struct.rsnd_dai, ptr %0, i32 0, i32 2, i32 2, i32 11
  %26 = getelementptr %struct.rsnd_dai, ptr %0, i32 0, i32 2, i32 2, i32 9
  %27 = getelementptr %struct.rsnd_dai, ptr %0, i32 0, i32 2, i32 2, i32 8
  %28 = getelementptr %struct.rsnd_dai, ptr %0, i32 0, i32 2, i32 2, i32 7
  br label %29

29:                                               ; preds = %85, %14
  %30 = phi i32 [ 0, %14 ], [ %86, %85 ]
  %31 = phi ptr [ %12, %14 ], [ %87, %85 ]
  %32 = tail call i32 @rsnd_node_fixed_index(ptr noundef nonnull %31, ptr noundef nonnull @.str.1, i32 noundef %30) #10
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %37, label %34, !prof !8

34:                                               ; preds = %29
  %35 = load i32, ptr %15, align 4
  %36 = icmp sgt i32 %35, %32
  br i1 %36, label %38, label %37, !prof !9

37:                                               ; preds = %34, %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1136, i32 noundef 9, ptr noundef null) #10
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i32 [ 0, %37 ], [ %32, %34 ]
  %40 = load ptr, ptr %16, align 4
  %41 = getelementptr %struct.rsnd_ssi, ptr %40, i32 %39
  %42 = icmp eq ptr %31, %1
  br i1 %42, label %43, label %63

43:                                               ; preds = %38
  %44 = load ptr, ptr %18, align 4
  %45 = load ptr, ptr %19, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %60, %57, %54, %43
  %48 = phi i32 [ 1, %43 ], [ 2, %54 ], [ 3, %57 ], [ 4, %60 ]
  %49 = phi i32 [ 11, %43 ], [ 9, %54 ], [ 8, %57 ], [ 7, %60 ]
  %50 = tail call i32 @rsnd_dai_connect(ptr noundef %41, ptr noundef %17, i32 noundef %49) #10
  %51 = shl nuw nsw i32 %48, 1
  %52 = tail call i32 @rsnd_rdai_channels_ctrl(ptr noundef %44, i32 noundef %51) #10
  %53 = tail call i32 @rsnd_rdai_ssi_lane_ctrl(ptr noundef %44, i32 noundef %48) #10
  br label %63

54:                                               ; preds = %43
  %55 = load ptr, ptr %20, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %47, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %21, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %47, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %22, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %47, label %63

63:                                               ; preds = %60, %47, %38
  %64 = icmp eq ptr %31, %2
  br i1 %64, label %65, label %85

65:                                               ; preds = %63
  %66 = load ptr, ptr %24, align 4
  %67 = load ptr, ptr %25, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %82, %79, %76, %65
  %70 = phi i32 [ 1, %65 ], [ 2, %76 ], [ 3, %79 ], [ 4, %82 ]
  %71 = phi i32 [ 11, %65 ], [ 9, %76 ], [ 8, %79 ], [ 7, %82 ]
  %72 = tail call i32 @rsnd_dai_connect(ptr noundef %41, ptr noundef %23, i32 noundef %71) #10
  %73 = shl nuw nsw i32 %70, 1
  %74 = tail call i32 @rsnd_rdai_channels_ctrl(ptr noundef %66, i32 noundef %73) #10
  %75 = tail call i32 @rsnd_rdai_ssi_lane_ctrl(ptr noundef %66, i32 noundef %70) #10
  br label %85

76:                                               ; preds = %65
  %77 = load ptr, ptr %26, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %69, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %27, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %69, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %28, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %69, label %85

85:                                               ; preds = %82, %69, %63
  %86 = add i32 %32, 1
  %87 = tail call ptr @of_get_next_child(ptr noundef nonnull %9, ptr noundef nonnull %31) #10
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %29

89:                                               ; preds = %85, %11
  tail call void @of_node_put(ptr noundef nonnull %9) #10
  br label %90

90:                                               ; preds = %89, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_node_fixed_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rsnd_ssi_mod_get(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %8, label %4, !prof !8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %9, label %8, !prof !9

8:                                                ; preds = %4, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1136, i32 noundef 9, ptr noundef null) #10
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ 0, %8 ], [ %1, %4 ]
  %11 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.rsnd_ssi, ptr %12, i32 %10
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @__rsnd_ssi_is_pin_sharing(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i32 [ %6, %3 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_ssi_probe(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca [16 x i8], align 1
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !10
  %5 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @of_get_child_by_name(ptr noundef %6, ptr noundef nonnull @.str) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %70, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @rsnd_node_count(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull @.str.1) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %68, label %12

12:                                               ; preds = %9
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 76) #10
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %68, label %15, !prof !11

15:                                               ; preds = %12
  %16 = extractvalue { i32, i1 } %13, 0
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %16, i32 noundef 3520) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %68, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 6
  store ptr %17, ptr %20, align 4
  %21 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 7
  store i32 %10, ptr %21, align 4
  %22 = tail call ptr @of_get_next_child(ptr noundef nonnull %7, ptr noundef null) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %68, label %24

24:                                               ; preds = %61, %19
  %25 = phi i32 [ %63, %61 ], [ 0, %19 ]
  %26 = phi ptr [ %64, %61 ], [ %22, %19 ]
  %27 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %26) #10
  br i1 %27, label %28, label %61

28:                                               ; preds = %24
  %29 = call i32 @rsnd_node_fixed_index(ptr noundef nonnull %26, ptr noundef nonnull @.str.1, i32 noundef %25) #10
  %30 = load ptr, ptr %20, align 4
  %31 = getelementptr %struct.rsnd_ssi, ptr %30, i32 %29
  %32 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %29)
  %33 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull %2) #10
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = ptrtoint ptr %33 to i32
  br label %66

37:                                               ; preds = %28
  %38 = call ptr @of_get_property(ptr noundef nonnull %26, ptr noundef nonnull @.str.4, ptr noundef null) #10
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr %struct.rsnd_ssi, ptr %30, i32 %29, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, 1
  store i32 %43, ptr %41, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = call ptr @of_get_property(ptr noundef nonnull %26, ptr noundef nonnull @.str.5, ptr noundef null) #10
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = getelementptr %struct.rsnd_ssi, ptr %30, i32 %29, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %49, 2
  store i32 %50, ptr %48, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %26, i32 noundef 0) #10
  %53 = getelementptr %struct.rsnd_ssi, ptr %30, i32 %29, i32 9
  store i32 %52, ptr %53, align 4
  %54 = icmp eq i32 %52, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %51
  %56 = call ptr @of_find_property(ptr noundef nonnull %26, ptr noundef nonnull @.str.6, ptr noundef null) #10
  %57 = icmp eq ptr %56, null
  %58 = select i1 %57, ptr @rsnd_ssi_dma_ops, ptr @rsnd_ssi_pio_ops
  %59 = call i32 @rsnd_mod_init(ptr noundef %0, ptr noundef %31, ptr noundef nonnull %58, ptr noundef %33, i32 noundef 11, i32 noundef %29) #10
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55, %24
  %62 = phi i32 [ %29, %55 ], [ %25, %24 ]
  %63 = add i32 %62, 1
  %64 = call ptr @of_get_next_child(ptr noundef nonnull %7, ptr noundef nonnull %26) #10
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %24

66:                                               ; preds = %55, %51, %35
  %67 = phi i32 [ %36, %35 ], [ -22, %51 ], [ %59, %55 ]
  call void @of_node_put(ptr noundef nonnull %26) #10
  br label %68

68:                                               ; preds = %66, %61, %19, %15, %12, %9
  %69 = phi i32 [ -22, %9 ], [ -12, %15 ], [ -12, %12 ], [ 0, %19 ], [ %67, %66 ], [ 0, %61 ]
  call void @of_node_put(ptr noundef nonnull %7) #10
  br label %70

70:                                               ; preds = %68, %1
  %71 = phi i32 [ %69, %68 ], [ -22, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  ret i32 %71
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_node_count(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rsnd_ssi_remove(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %11, %1
  %7 = phi i32 [ %12, %11 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr %struct.rsnd_ssi, ptr %8, i32 %7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  tail call void @rsnd_mod_quit(ptr noundef nonnull %9) #10
  %12 = add nuw nsw i32 %7, 1
  %13 = load i32, ptr %3, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %6, label %15

15:                                               ; preds = %11, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_quit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rsnd_ssi_dma_req(ptr noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.rsnd_mod, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rsnd_dai, ptr %6, i32 0, i32 1
  %8 = icmp eq ptr %7, %0
  %9 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rsnd_mod, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @rsnd_ssi_dma_ops
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = select i1 %8, ptr @.str.9, ptr @.str.10
  br label %29

16:                                               ; preds = %2
  %17 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = select i1 %8, ptr @.str.7, ptr @.str.8
  br label %31

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.rsnd_ssi, ptr %10, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %8, ptr @.str.7, ptr @.str.8
  %28 = select i1 %8, ptr @.str.9, ptr @.str.10
  br i1 %26, label %31, label %29

29:                                               ; preds = %22, %14
  %30 = phi ptr [ %15, %14 ], [ %28, %22 ]
  br label %31

31:                                               ; preds = %29, %22, %20
  %32 = phi ptr [ %30, %29 ], [ %27, %22 ], [ %21, %20 ]
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3, i32 25
  %35 = load ptr, ptr %34, align 8
  %36 = tail call ptr @of_get_child_by_name(ptr noundef %35, ptr noundef nonnull @.str) #10
  %37 = tail call ptr @rsnd_dma_request_channel(ptr noundef %36, ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef nonnull %32) #10
  ret ptr %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_dma_probe(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %5) #10
  %9 = shl nuw i32 1, %8
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %9, %7 ], [ 0, %3 ]
  %12 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %13) #10
  %17 = shl nuw i32 1, %16
  %18 = or i32 %17, %11
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i32 [ %18, %15 ], [ %11, %10 ]
  %21 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %22) #10
  %26 = shl nuw i32 1, %25
  %27 = or i32 %26, %20
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i32 [ %27, %24 ], [ %20, %19 ]
  %30 = tail call i32 @rsnd_mod_id(ptr noundef %0) #10
  %31 = shl nuw i32 1, %30
  %32 = and i32 %31, %29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = tail call i32 @rsnd_ssi_common_probe(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 3
  %39 = tail call i32 @rsnd_dma_attach(ptr noundef %1, ptr noundef %0, ptr noundef %38) #10
  br label %40

40:                                               ; preds = %37, %34, %28
  %41 = phi i32 [ %39, %37 ], [ 0, %28 ], [ %35, %34 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_common_remove(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #3 {
  %4 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @free_irq(i32 noundef %14, ptr noundef %0) #10
  %16 = load i32, ptr %8, align 4
  %17 = and i32 %16, -5
  store i32 %17, ptr %8, align 4
  br label %18

18:                                               ; preds = %12, %7, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #3 {
  %4 = alloca i32, align 4
  %5 = tail call fastcc i32 @rsnd_ssi_run_mods(ptr noundef %1)
  %6 = tail call i32 @rsnd_mod_id(ptr noundef %0) #10
  %7 = shl nuw i32 1, %6
  %8 = and i32 %7, %5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %214, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.rsnd_dai, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %17 = tail call i32 @rsnd_runtime_channel_for_ssi_with_params(ptr noundef %1, ptr noundef null) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !10
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr inbounds %struct.rsnd_dai, ptr %18, i32 0, i32 1
  %20 = icmp ne ptr %19, %1
  %21 = zext i1 %20 to i32
  %22 = tail call i32 @rsnd_src_get_rate(ptr noundef %14, ptr noundef %1, i32 noundef %21) #10
  %23 = getelementptr inbounds %struct.rsnd_dai, ptr %12, i32 0, i32 8
  %24 = load i8, ptr %23, align 4
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %113, label %27

27:                                               ; preds = %10
  %28 = icmp eq ptr %0, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %113

34:                                               ; preds = %29, %27
  %35 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 9
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %36) #10
  %40 = shl nuw i32 1, %39
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi i32 [ %40, %38 ], [ 0, %34 ]
  %43 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 8
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %44) #10
  %48 = shl nuw i32 1, %47
  %49 = or i32 %48, %42
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi i32 [ %49, %46 ], [ %42, %41 ]
  %52 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 7
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %53) #10
  %57 = shl nuw i32 1, %56
  %58 = or i32 %57, %51
  br label %59

59:                                               ; preds = %55, %50
  %60 = phi i32 [ %58, %55 ], [ %51, %50 ]
  %61 = tail call i32 @rsnd_mod_id(ptr noundef %0) #10
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %113

65:                                               ; preds = %59
  %66 = tail call i32 @rsnd_runtime_is_tdm_split(ptr noundef %1) #10
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 7
  %70 = load i32, ptr %69, align 4
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i32 [ %70, %68 ], [ %17, %65 ]
  %73 = tail call i32 @rsnd_channel_normalization(i32 noundef %72) #10
  %74 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 10
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 8
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, %22
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.12) #11
  br label %111

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 7
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, %73
  br i1 %85, label %113, label %86

86:                                               ; preds = %82
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.13) #11
  br label %111

87:                                               ; preds = %71
  %88 = call i32 @rsnd_ssi_clk_query(ptr noundef %12, i32 noundef %22, i32 noundef %73, ptr noundef nonnull %4) #10
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.14) #11
  br label %111

91:                                               ; preds = %87
  %92 = call i32 @rsnd_adg_ssi_clk_try_start(ptr noundef %0, i32 noundef %88) #10
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %111, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr %13, align 4
  %96 = load ptr, ptr %95, align 4
  %97 = call i32 @rsnd_rdai_width_ctrl(ptr noundef %12, i32 noundef 0) #10
  switch i32 %97, label %100 [
    i32 32, label %102
    i32 24, label %98
    i32 16, label %99
  ]

98:                                               ; preds = %94
  br label %102

99:                                               ; preds = %94
  br label %102

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.platform_device, ptr %96, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.15, i32 noundef %97) #11
  br label %102

102:                                              ; preds = %100, %99, %98, %94
  %103 = phi i32 [ -2147434496, %100 ], [ -2147368960, %99 ], [ -2147303424, %98 ], [ -2147237888, %94 ]
  %104 = load i32, ptr %4, align 4
  %105 = shl i32 %104, 4
  %106 = or i32 %103, %105
  %107 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 3
  store i32 %106, ptr %107, align 4
  %108 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 6
  store i32 256, ptr %108, align 4
  %109 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 8
  store i32 %22, ptr %109, align 4
  %110 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 7
  store i32 %73, ptr %110, align 4
  br label %113

111:                                              ; preds = %91, %90, %86, %81
  %112 = phi i32 [ -22, %81 ], [ -22, %86 ], [ -5, %90 ], [ %92, %91 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %214

113:                                              ; preds = %102, %82, %59, %29, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %114 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 10
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %115, 1
  store i32 %116, ptr %114, align 4
  %117 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 4
  %118 = load ptr, ptr %117, align 4
  %119 = call i32 @clk_enable(ptr noundef %118) #10
  %120 = load ptr, ptr %11, align 4
  %121 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %113
  %125 = getelementptr inbounds %struct.snd_pcm_substream, ptr %122, i32 0, i32 11
  %126 = load ptr, ptr %125, align 4
  br label %127

127:                                              ; preds = %124, %113
  %128 = phi ptr [ %126, %124 ], [ null, %113 ]
  %129 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 2
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 4
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 6
  %134 = load i32, ptr %133, align 4
  %135 = call i32 @rsnd_runtime_is_tdm(ptr noundef %1) #10
  %136 = call i32 @rsnd_runtime_is_tdm_split(ptr noundef %1) #10
  %137 = getelementptr inbounds %struct.rsnd_dai, ptr %120, i32 0, i32 3
  %138 = load ptr, ptr %137, align 4
  %139 = load ptr, ptr %138, align 4
  %140 = call i32 @rsnd_rdai_width_ctrl(ptr noundef %120, i32 noundef 0) #10
  switch i32 %140, label %143 [
    i32 32, label %145
    i32 24, label %141
    i32 16, label %142
  ]

141:                                              ; preds = %127
  br label %145

142:                                              ; preds = %127
  br label %145

143:                                              ; preds = %127
  %144 = getelementptr inbounds %struct.platform_device, ptr %139, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.15, i32 noundef %140) #11
  br label %145

145:                                              ; preds = %143, %142, %141, %127
  %146 = phi i32 [ -2147483648, %143 ], [ -2147418112, %142 ], [ -2147352576, %141 ], [ -2147287040, %127 ]
  %147 = or i32 %146, %130
  %148 = getelementptr inbounds %struct.rsnd_dai, ptr %120, i32 0, i32 8
  %149 = load i8, ptr %148, align 4
  %150 = and i8 %149, 2
  %151 = zext i8 %150 to i32
  %152 = shl nuw nsw i32 %151, 12
  %153 = or i32 %147, %152
  %154 = and i8 %149, 4
  %155 = icmp eq i8 %154, 0
  %156 = icmp ne i32 %135, 0
  %157 = select i1 %155, i1 true, i1 %156
  %158 = or i32 %153, 4096
  %159 = select i1 %157, i32 %153, i32 %158
  %160 = and i8 %149, 16
  %161 = zext i8 %160 to i32
  %162 = shl nuw nsw i32 %161, 6
  %163 = and i8 %149, 8
  %164 = zext i8 %163 to i32
  %165 = shl nuw nsw i32 %164, 5
  %166 = or i32 %165, %162
  %167 = or i32 %159, %166
  %168 = icmp ne i32 %136, 0
  %169 = select i1 %156, i1 true, i1 %168
  %170 = or i32 %167, 12582912
  %171 = select i1 %169, i32 %170, i32 %167
  %172 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 10
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, %0
  br i1 %174, label %200, label %175

175:                                              ; preds = %145
  %176 = load ptr, ptr %11, align 4
  %177 = getelementptr inbounds %struct.rsnd_dai, ptr %176, i32 0, i32 1
  %178 = icmp eq ptr %177, %1
  %179 = or i32 %171, 2
  %180 = select i1 %178, i32 %179, i32 %171
  %181 = and i32 %180, -3670017
  %182 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %128, i32 0, i32 12
  %183 = load i32, ptr %182, align 4
  %184 = call i32 @snd_pcm_format_width(i32 noundef %183) #10
  %185 = add i32 %184, -8
  %186 = select i1 %168, i32 24, i32 %185
  %187 = call i32 @llvm.fshl.i32(i32 %186, i32 %186, i32 29) #10
  switch i32 %187, label %194 [
    i32 3, label %192
    i32 1, label %188
    i32 2, label %190
  ]

188:                                              ; preds = %175
  %189 = or i32 %181, 524288
  br label %194

190:                                              ; preds = %175
  %191 = or i32 %181, 2621440
  br label %194

192:                                              ; preds = %175
  %193 = or i32 %181, 3145728
  br label %194

194:                                              ; preds = %192, %190, %188, %175
  %195 = phi i32 [ %193, %192 ], [ %191, %190 ], [ %189, %188 ], [ %181, %175 ]
  %196 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 2
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, @rsnd_ssi_dma_ops
  %199 = select i1 %198, i32 469762048, i32 16777216
  br label %200

200:                                              ; preds = %194, %145
  %201 = phi i32 [ %171, %145 ], [ %195, %194 ]
  %202 = phi i32 [ %132, %145 ], [ %199, %194 ]
  %203 = zext i1 %169 to i32
  %204 = or i32 %134, %203
  store i32 %201, ptr %129, align 4
  store i32 %202, ptr %131, align 4
  store i32 %204, ptr %133, align 4
  call void @rsnd_mod_write(ptr noundef %0, i32 noundef 181, i32 noundef %204) #10
  %205 = load i32, ptr %129, align 4
  %206 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 3
  %207 = load i32, ptr %206, align 4
  %208 = or i32 %207, %205
  %209 = load i32, ptr %131, align 4
  %210 = or i32 %208, %209
  %211 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 5
  %212 = load i32, ptr %211, align 4
  %213 = or i32 %210, %212
  call void @rsnd_mod_write(ptr noundef %0, i32 noundef 177, i32 noundef %213) #10
  call void @rsnd_mod_write(ptr noundef %0, i32 noundef 178, i32 noundef 0) #10
  br label %214

214:                                              ; preds = %200, %111, %3
  %215 = phi i32 [ 0, %200 ], [ 0, %3 ], [ %112, %111 ]
  ret i32 %215
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_quit(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = tail call fastcc i32 @rsnd_ssi_run_mods(ptr noundef %1)
  %7 = tail call i32 @rsnd_mod_id(ptr noundef %0) #10
  %8 = shl nuw i32 1, %7
  %9 = and i32 %8, %6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %50, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call ptr @rsnd_mod_name(ptr noundef %0) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.16, ptr noundef %16) #11
  br label %50

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 8
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %17
  %25 = icmp eq ptr %0, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  %31 = icmp ugt i32 %13, 1
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %40, label %35

33:                                               ; preds = %24
  %34 = icmp ugt i32 %13, 1
  br i1 %34, label %40, label %35

35:                                               ; preds = %33, %26
  %36 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 3
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 8
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 7
  store i32 0, ptr %38, align 4
  %39 = tail call i32 @rsnd_adg_ssi_clk_stop(ptr noundef %0) #10
  br label %40

40:                                               ; preds = %35, %33, %26, %17
  %41 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  tail call void @clk_disable(ptr noundef %42) #10
  %43 = load i32, ptr %12, align 4
  %44 = add i32 %43, -1
  store i32 %44, ptr %12, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 2
  store i32 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 4
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 6
  store i32 0, ptr %49, align 4
  br label %50

50:                                               ; preds = %46, %40, %15, %3
  %51 = phi i32 [ -5, %15 ], [ 0, %3 ], [ 0, %46 ], [ 0, %40 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_start(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #3 {
  %4 = tail call fastcc i32 @rsnd_ssi_run_mods(ptr noundef %1)
  %5 = tail call i32 @rsnd_mod_id(ptr noundef %0) #10
  %6 = shl nuw i32 1, %5
  %7 = and i32 %6, %4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %50, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @rsnd_runtime_is_multi_ssi(ptr noundef %1) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %9
  %13 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %14) #10
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %31

26:                                               ; preds = %18
  %27 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %20) #10
  %28 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %50, label %31

31:                                               ; preds = %26, %22
  %32 = phi ptr [ %29, %26 ], [ %24, %22 ]
  %33 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %32) #10
  br label %50

34:                                               ; preds = %22
  br i1 %15, label %35, label %50

35:                                               ; preds = %34, %9
  %36 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 10
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %0
  br i1 %38, label %50, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 5
  store i32 1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %42, %44
  %48 = or i32 %47, %46
  %49 = or i32 %48, 1
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 177, i32 noundef %49) #10
  br label %50

50:                                               ; preds = %39, %35, %34, %31, %26, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_stop(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #3 {
  %4 = tail call fastcc i32 @rsnd_ssi_run_mods(ptr noundef %1)
  %5 = tail call i32 @rsnd_mod_id(ptr noundef %0) #10
  %6 = shl nuw i32 1, %5
  %7 = and i32 %6, %4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %86, label %9

9:                                                ; preds = %3
  %10 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %86, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, %15
  %19 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.rsnd_dai, ptr %20, i32 0, i32 1
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %42

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, %18
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 177, i32 noundef %26) #10
  %27 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  br label %31

31:                                               ; preds = %36, %23
  %32 = phi i32 [ 0, %23 ], [ %38, %36 ]
  %33 = tail call i32 @rsnd_mod_read(ptr noundef %0, i32 noundef 178) #10
  %34 = and i32 %33, 16777216
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 1073740) #10
  %38 = add nuw nsw i32 %32, 1
  %39 = icmp eq i32 %38, 1024
  br i1 %39, label %40, label %31

40:                                               ; preds = %36
  %41 = tail call ptr @rsnd_mod_name(ptr noundef %0) #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.17, ptr noundef %41) #11
  br label %42

42:                                               ; preds = %40, %31, %13
  %43 = tail call i32 @rsnd_runtime_is_multi_ssi(ptr noundef %1) #10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %68, label %45

45:                                               ; preds = %42
  %46 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 9
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %47) #10
  br label %51

51:                                               ; preds = %49, %45
  %52 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 8
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 7
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %67, label %64

59:                                               ; preds = %51
  %60 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %53) #10
  %61 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 7
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %86, label %64

64:                                               ; preds = %59, %55
  %65 = phi ptr [ %62, %59 ], [ %57, %55 ]
  %66 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %65) #10
  br label %86

67:                                               ; preds = %55
  br i1 %48, label %68, label %86

68:                                               ; preds = %67, %42
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 177, i32 noundef %18) #10
  %69 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.platform_device, ptr %71, i32 0, i32 3
  br label %73

73:                                               ; preds = %78, %68
  %74 = phi i32 [ 0, %68 ], [ %80, %78 ]
  %75 = tail call i32 @rsnd_mod_read(ptr noundef %0, i32 noundef 178) #10
  %76 = and i32 %75, 33554432
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 1073740) #10
  %80 = add nuw nsw i32 %74, 1
  %81 = icmp eq i32 %80, 1024
  br i1 %81, label %82, label %73

82:                                               ; preds = %78
  %83 = tail call ptr @rsnd_mod_name(ptr noundef %0) #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %72, ptr noundef nonnull @.str.17, ptr noundef %83) #11
  br label %84

84:                                               ; preds = %82, %73
  %85 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 5
  store i32 0, ptr %85, align 4
  br label %86

86:                                               ; preds = %84, %67, %64, %59, %9, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_irq(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #3 {
  %5 = tail call i32 @rsnd_mod_id(ptr noundef %0) #10
  %6 = tail call i32 @rsnd_runtime_is_tdm(ptr noundef %1) #10
  %7 = tail call i32 @rsnd_runtime_is_tdm_split(ptr noundef %1) #10
  %8 = getelementptr inbounds %struct.rsnd_priv, ptr %2, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 15
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %39, label %12

12:                                               ; preds = %4
  %13 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %39, label %16

16:                                               ; preds = %12
  %17 = tail call fastcc i32 @rsnd_ssi_run_mods(ptr noundef %1)
  %18 = tail call i32 @rsnd_mod_id(ptr noundef %0) #10
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %16
  %23 = icmp eq i32 %3, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, @rsnd_ssi_dma_ops
  %28 = select i1 %27, i32 234881024, i32 251658240
  br label %29

29:                                               ; preds = %24, %22
  %30 = phi i32 [ %28, %24 ], [ 0, %22 ]
  %31 = icmp ne i32 %6, 0
  %32 = icmp ne i32 %7, 0
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  switch i32 %5, label %37 [
    i32 0, label %35
    i32 1, label %35
    i32 2, label %35
    i32 3, label %35
    i32 4, label %35
    i32 9, label %35
  ]

35:                                               ; preds = %34, %34, %34, %34, %34, %34
  %36 = or i32 %30, 65280
  br label %37

37:                                               ; preds = %35, %34, %29
  %38 = phi i32 [ %30, %34 ], [ %36, %35 ], [ %30, %29 ]
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 134, i32 noundef %38) #10
  br label %39

39:                                               ; preds = %37, %16, %12, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_pcm_new(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #3 {
  %4 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %83, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %83, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.rsnd_dai, ptr %5, i32 0, i32 8
  %16 = load i8, ptr %15, align 4
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %83, label %19

19:                                               ; preds = %14
  %20 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 9
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %21) #10
  %25 = shl nuw i32 1, %24
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i32 [ %25, %23 ], [ 0, %19 ]
  %28 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %29) #10
  %33 = shl nuw i32 1, %32
  %34 = or i32 %33, %27
  br label %35

35:                                               ; preds = %31, %26
  %36 = phi i32 [ %34, %31 ], [ %27, %26 ]
  %37 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %38) #10
  %42 = shl nuw i32 1, %41
  %43 = or i32 %42, %36
  br label %44

44:                                               ; preds = %40, %35
  %45 = phi i32 [ %43, %40 ], [ %36, %35 ]
  %46 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %0) #10
  %47 = shl nuw i32 1, %46
  %48 = and i32 %47, %45
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %44
  %51 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %0) #10
  switch i32 %51, label %83 [
    i32 1, label %52
    i32 2, label %52
    i32 9, label %52
    i32 4, label %60
    i32 8, label %70
  ]

52:                                               ; preds = %50, %50, %50
  %53 = getelementptr inbounds %struct.rsnd_priv, ptr %7, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %57, label %56, !prof !9

56:                                               ; preds = %52
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1136, i32 noundef 9, ptr noundef null) #10
  br label %57

57:                                               ; preds = %56, %52
  %58 = getelementptr inbounds %struct.rsnd_priv, ptr %7, i32 0, i32 6
  %59 = load ptr, ptr %58, align 4
  br label %80

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.rsnd_priv, ptr %7, i32 0, i32 7
  %62 = load i32, ptr %61, align 4
  %63 = icmp sgt i32 %62, 3
  br i1 %63, label %65, label %64, !prof !9

64:                                               ; preds = %60
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1136, i32 noundef 9, ptr noundef null) #10
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi i32 [ 0, %64 ], [ 3, %60 ]
  %67 = getelementptr inbounds %struct.rsnd_priv, ptr %7, i32 0, i32 6
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr %struct.rsnd_ssi, ptr %68, i32 %66
  br label %80

70:                                               ; preds = %50
  %71 = getelementptr inbounds %struct.rsnd_priv, ptr %7, i32 0, i32 7
  %72 = load i32, ptr %71, align 4
  %73 = icmp sgt i32 %72, 7
  br i1 %73, label %75, label %74, !prof !9

74:                                               ; preds = %70
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1136, i32 noundef 9, ptr noundef null) #10
  br label %75

75:                                               ; preds = %74, %70
  %76 = phi i32 [ 0, %74 ], [ 7, %70 ]
  %77 = getelementptr inbounds %struct.rsnd_priv, ptr %7, i32 0, i32 6
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr %struct.rsnd_ssi, ptr %78, i32 %76
  br label %80

80:                                               ; preds = %75, %65, %57
  %81 = phi ptr [ %59, %57 ], [ %69, %65 ], [ %79, %75 ]
  %82 = tail call i32 @rsnd_dai_connect(ptr noundef %81, ptr noundef %1, i32 noundef 10) #10
  br label %83

83:                                               ; preds = %80, %50, %44, %14, %9, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_hw_params(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) #3 {
  %5 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.snd_pcm_hw_params, ptr %3, i32 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %15, %4
  %11 = phi i32 [ 0, %4 ], [ 32, %15 ]
  %12 = phi i32 [ %8, %4 ], [ %17, %15 ]
  %13 = tail call i32 @llvm.cttz.i32(i32 %12, i1 true) #10, !range !12
  %14 = or i32 %13, %11
  br label %19

15:                                               ; preds = %4
  %16 = getelementptr %struct.snd_pcm_hw_params, ptr %3, i32 0, i32 1, i32 1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %10

19:                                               ; preds = %15, %10
  %20 = phi i32 [ %14, %10 ], [ 0, %15 ]
  %21 = tail call i32 @snd_pcm_format_width(i32 noundef %20) #10
  %22 = getelementptr inbounds %struct.rsnd_dai, ptr %6, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %21, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr inbounds %struct.rsnd_dai, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.18) #11
  br label %31

31:                                               ; preds = %25, %19
  %32 = phi i32 [ -22, %25 ], [ 0, %19 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_fallback(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #3 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 2
  store ptr @rsnd_ssi_pio_ops, ptr %6, align 4
  %7 = tail call ptr @rsnd_mod_name(ptr noundef %0) #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.19, ptr noundef %7) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rsnd_ssi_get_status(ptr noundef %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = icmp eq i32 %2, 10
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 8
  br label %9

7:                                                ; preds = %3
  %8 = tail call ptr @rsnd_mod_get_status(ptr noundef %0, ptr noundef %1, i32 noundef %2) #10
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rsnd_ssi_debug_info(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rsnd_dai, ptr %5, i32 0, i32 8
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr @.str.22, ptr @.str.21
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull %10) #10
  %11 = load i8, ptr %6, align 4
  %12 = lshr i8 %11, 1
  %13 = and i8 %12, 1
  %14 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %14) #10
  %15 = load i8, ptr %6, align 4
  %16 = lshr i8 %15, 2
  %17 = and i8 %16, 1
  %18 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %18) #10
  %19 = icmp eq ptr %2, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef 0) #10
  br label %28

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.rsnd_ssi, ptr %2, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %24) #10
  %25 = load i32, ptr %22, align 4
  %26 = and i32 %25, 1
  %27 = xor i32 %26, 1
  br label %28

28:                                               ; preds = %21, %20
  %29 = phi i32 [ %27, %21 ], [ 1, %20 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %29) #10
  %30 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 9
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %31) #10
  %35 = shl nuw i32 1, %34
  br label %36

36:                                               ; preds = %33, %28
  %37 = phi i32 [ %35, %33 ], [ 0, %28 ]
  %38 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %39) #10
  %43 = shl nuw i32 1, %42
  %44 = or i32 %43, %37
  br label %45

45:                                               ; preds = %41, %36
  %46 = phi i32 [ %44, %41 ], [ %37, %36 ]
  %47 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 7
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %48) #10
  %52 = shl nuw i32 1, %51
  %53 = or i32 %52, %46
  br label %54

54:                                               ; preds = %50, %45
  %55 = phi i32 [ %53, %50 ], [ %46, %45 ]
  %56 = tail call i32 @rsnd_mod_id(ptr noundef %2) #10
  %57 = shl nuw i32 1, %56
  %58 = and i32 %57, %55
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %58) #10
  %59 = tail call i32 @rsnd_runtime_is_tdm(ptr noundef %1) #10
  %60 = tail call i32 @rsnd_runtime_is_tdm_split(ptr noundef %1) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %59, i32 noundef %60) #10
  %61 = getelementptr inbounds %struct.rsnd_ssi, ptr %2, i32 0, i32 7
  %62 = load i32, ptr %61, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %62) #10
  %63 = getelementptr inbounds %struct.rsnd_ssi, ptr %2, i32 0, i32 10
  %64 = load i32, ptr %63, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %64) #10
  %65 = tail call i32 @rsnd_mod_id(ptr noundef %2) #10
  %66 = shl i32 %65, 6
  tail call void @rsnd_debugfs_mod_reg_show(ptr noundef %0, ptr noundef %2, i32 noundef 3, i32 noundef %66, i32 noundef 64) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_common_probe(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #3 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %7) #10
  %11 = shl nuw i32 1, %10
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %11, %9 ], [ 0, %3 ]
  %14 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %15) #10
  %19 = shl nuw i32 1, %18
  %20 = or i32 %19, %13
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i32 [ %20, %17 ], [ %13, %12 ]
  %23 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %24) #10
  %28 = shl nuw i32 1, %27
  %29 = or i32 %28, %22
  br label %30

30:                                               ; preds = %26, %21
  %31 = phi i32 [ %29, %26 ], [ %22, %21 ]
  %32 = tail call i32 @rsnd_mod_id(ptr noundef %0) #10
  %33 = shl nuw i32 1, %32
  %34 = and i32 %33, %31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 9
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load ptr, ptr %5, align 4
  br label %49

49:                                               ; preds = %47, %41
  %50 = phi ptr [ %48, %47 ], [ %45, %41 ]
  %51 = tail call i32 @request_threaded_irq(i32 noundef %43, ptr noundef nonnull @rsnd_ssi_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %50, ptr noundef %0) #10
  %52 = load i32, ptr %37, align 4
  %53 = or i32 %52, 4
  store i32 %53, ptr %37, align 4
  br label %54

54:                                               ; preds = %49, %36, %30
  %55 = phi i32 [ 0, %30 ], [ 0, %36 ], [ %51, %49 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_dma_attach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_interrupt(i32 noundef %0, ptr noundef %1) #3 {
  tail call void @rsnd_mod_interrupt(ptr noundef %1, ptr noundef nonnull @__rsnd_ssi_interrupt) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_interrupt(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__rsnd_ssi_interrupt(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rsnd_priv, ptr %4, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %9) #10
  %10 = tail call i32 @rsnd_io_is_working(ptr noundef %1) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %81, label %12

12:                                               ; preds = %2
  %13 = icmp ne ptr %8, @rsnd_ssi_dma_ops
  %14 = tail call i32 @rsnd_mod_read(ptr noundef %0, i32 noundef 178) #10
  %15 = xor i1 %13, true
  %16 = and i32 %14, 16777216
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %68, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.snd_pcm_substream, ptr %21, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi ptr [ %25, %23 ], [ null, %19 ]
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %27, i32 0, i32 50
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 11
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %29, i32 %31
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %27, i32 0, i32 12
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 @snd_pcm_format_width(i32 noundef %34) #10
  %36 = icmp eq i32 %35, 24
  %37 = select i1 %36, i32 8, i32 0
  %38 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.rsnd_dai, ptr %39, i32 0, i32 1
  %41 = icmp eq ptr %40, %1
  br i1 %41, label %42, label %45

42:                                               ; preds = %26
  %43 = load i32, ptr %32, align 4
  %44 = shl i32 %43, %37
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 179, i32 noundef %44) #10
  br label %48

45:                                               ; preds = %26
  %46 = tail call i32 @rsnd_mod_read(ptr noundef %0, i32 noundef 180) #10
  %47 = lshr i32 %46, %37
  store i32 %47, ptr %32, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, ptr %30, align 4
  %50 = add i32 %49, 4
  %51 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 13
  %52 = load i32, ptr %51, align 4
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %65, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 12
  %56 = load i32, ptr %55, align 4
  %57 = sdiv i32 %50, %56
  %58 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %27, i32 0, i32 17
  %59 = load i32, ptr %58, align 8
  %60 = icmp ult i32 %57, %59
  %61 = select i1 %60, i32 %50, i32 0
  %62 = add nuw i32 %57, 1
  %63 = select i1 %60, i32 %62, i32 1
  %64 = mul i32 %63, %56
  store i32 %64, ptr %51, align 4
  br label %65

65:                                               ; preds = %54, %48
  %66 = phi i32 [ %61, %54 ], [ %50, %48 ]
  %67 = xor i1 %53, true
  store volatile i32 %66, ptr %30, align 4
  br label %68

68:                                               ; preds = %65, %12
  %69 = phi i1 [ false, %12 ], [ %67, %65 ]
  %70 = and i32 %14, 201326592
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %13, i1 true, i1 %71
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = tail call ptr @rsnd_mod_name(ptr noundef %0) #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.11, ptr noundef %74, i32 noundef %14) #11
  br label %75

75:                                               ; preds = %73, %68
  %76 = phi i32 [ 1, %73 ], [ 0, %68 ]
  %77 = tail call zeroext i1 @rsnd_ssiu_busif_err_status_clear(ptr noundef %0) #10
  %78 = zext i1 %77 to i32
  %79 = or i32 %76, %78
  %80 = icmp ne i32 %79, 0
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 178, i32 noundef 0) #10
  br label %81

81:                                               ; preds = %75, %2
  %82 = phi i1 [ %69, %75 ], [ false, %2 ]
  %83 = phi i1 [ %80, %75 ], [ false, %2 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %84 = load i16, ptr %9, align 4
  %85 = add i16 %84, 1
  store i16 %85, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br i1 %82, label %86, label %87

86:                                               ; preds = %81
  tail call void @rsnd_dai_period_elapsed(ptr noundef %1) #10
  br label %87

87:                                               ; preds = %86, %81
  br i1 %83, label %88, label %92

88:                                               ; preds = %87
  %89 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = tail call i32 @snd_pcm_stop_xrun(ptr noundef %90) #10
  br label %92

92:                                               ; preds = %88, %87
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_io_is_working(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rsnd_ssiu_busif_err_status_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_dai_period_elapsed(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rsnd_ssi_run_mods(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @rsnd_runtime_is_multi_ssi(ptr noundef %0) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %1
  %9 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %10) #10
  %14 = shl nuw i32 1, %13
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i32 [ %14, %12 ], [ 0, %8 ]
  %17 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %18) #10
  %22 = shl nuw i32 1, %21
  %23 = or i32 %22, %16
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i32 [ %23, %20 ], [ %16, %15 ]
  %26 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 7
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %27) #10
  %31 = shl nuw i32 1, %30
  %32 = or i32 %31, %25
  br label %33

33:                                               ; preds = %29, %24, %1
  %34 = phi i32 [ 0, %1 ], [ %32, %29 ], [ %25, %24 ]
  %35 = tail call i32 @rsnd_mod_id(ptr noundef %3) #10
  %36 = shl nuw i32 1, %35
  %37 = or i32 %36, %34
  %38 = icmp eq ptr %5, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %5) #10
  %41 = shl nuw i32 1, %40
  %42 = or i32 %41, %37
  br label %43

43:                                               ; preds = %39, %33
  %44 = phi i32 [ %42, %39 ], [ %37, %33 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_channel_for_ssi_with_params(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_src_get_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_is_tdm_split(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_channel_normalization(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_adg_ssi_clk_try_start(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_is_tdm(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_adg_ssi_clk_stop(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_dai_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_get_status(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_debugfs_mod_reg_show(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_rdai_channels_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_rdai_ssi_lane_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_pio_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #3 {
  %4 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ null, %3 ]
  %12 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 11
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 16
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 15
  %20 = load i32, ptr %19, align 8
  %21 = mul i32 %20, %18
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 22
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %23, 3
  %25 = mul i32 %21, %24
  %26 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 12
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 13
  store i32 %25, ptr %27, align 4
  br label %28

28:                                               ; preds = %15, %10
  %29 = tail call i32 @rsnd_ssi_init(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rsnd_ssi_pio_pointer(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ null, %3 ]
  %12 = getelementptr inbounds %struct.rsnd_ssi, ptr %0, i32 0, i32 11
  %13 = load volatile i32, ptr %12, align 4
  %14 = shl i32 %13, 3
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 21
  %16 = load i32, ptr %15, align 8
  %17 = udiv i32 %14, %16
  store i32 %17, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!12 = !{i32 0, i32 33}
!13 = !{i64 2148913343}
!14 = !{i64 2148909167}
!15 = !{i64 2148909242, i64 2148909269, i64 2148909316, i64 2148909338, i64 2148909366, i64 2148909386}
!16 = !{i64 2148936346}
