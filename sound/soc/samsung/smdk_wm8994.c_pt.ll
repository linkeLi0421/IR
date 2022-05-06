; ModuleID = '/llk/IR/sound/soc/samsung/smdk_wm8994.c_pt.bc'
source_filename = "../sound/soc/samsung/smdk_wm8994.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.smdk_wm8994_data = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [80 x i8], [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }

@samsung_wm8994_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,smdk-wm8994\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @smdk_board_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description230 = internal constant [33 x i8] c"description=ALSA SoC SMDK WM8994\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [33 x i8] c"alias=platform:smdk-audio-wm8994\00", section ".modinfo", align 1
@smdk_board_data = internal global %struct.smdk_wm8994_data { i32 16934000 }, align 4
@smdk_audio_driver = internal global %struct.platform_driver { ptr @smdk_audio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @samsung_wm8994_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [18 x i8] c"smdk-audio-wm8994\00", align 1
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@smdk = internal global %struct.snd_soc_card { ptr @.str.4, ptr null, ptr null, ptr null, [80 x i8] zeroinitializer, [32 x i8] zeroinitializer, ptr null, ptr null, ptr @__this_module, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @smdk_dai, i32 2, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"samsung,i2s-controller\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Property 'samsung,i2s-controller' missing or invalid\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"snd_soc_register_card() failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"SMDK-I2S\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"WM8994 AIF1\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Pri_Dai\00", align 1
@aif1_cpus = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.10 }], align 4
@aif1_codecs = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.11, ptr null, ptr @.str.12 }], align 4
@aif1_platforms = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.10, ptr null, ptr null }], align 4
@smdk_ops = internal constant %struct.snd_soc_ops { ptr null, ptr null, ptr @smdk_hw_params, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"Sec_FIFO TX\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Sec_Dai\00", align 1
@fifo_tx_cpus = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.27 }], align 4
@fifo_tx_codecs = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.11, ptr null, ptr @.str.12 }], align 4
@fifo_tx_platforms = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.27, ptr null, ptr null }], align 4
@smdk_dai = internal global [2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 } { ptr @.str.5, ptr @.str.6, ptr @aif1_cpus, i32 1, ptr @aif1_codecs, i32 1, ptr @aif1_platforms, i32 1, i32 0, ptr null, i32 0, i32 4097, [2 x i32] zeroinitializer, ptr @smdk_wm8994_init_paiftx, ptr null, ptr null, ptr @smdk_ops, ptr null, i8 0, i8 0, i8 0 }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 } { ptr @.str.7, ptr @.str.8, ptr @fifo_tx_cpus, i32 1, ptr @fifo_tx_codecs, i32 1, ptr @fifo_tx_platforms, i32 1, i32 0, ptr null, i32 0, i32 4097, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @smdk_ops, ptr null, i8 0, i8 0, i8 0 }], align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"samsung-i2s.0\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"wm8994-codec\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"wm8994-aif1\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"HPOUT2P\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"HPOUT2N\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"SPKOUTLN\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"SPKOUTLP\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"SPKOUTRP\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"SPKOUTRN\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"LINEOUT1N\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"LINEOUT1P\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"LINEOUT2N\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"LINEOUT2P\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"IN1LP\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"IN2LP:VXRN\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"IN1RP\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"IN2RP:VXRP\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"samsung-i2s-sec\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_license231], section "llvm.metadata"

@__mod_of__samsung_wm8994_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @samsung_wm8994_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @smdk_audio_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @smdk_audio_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smdk_audio_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  store ptr %3, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @smdk, i32 0, i32 6), align 4
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 4, i32 noundef 3520) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %1
  %9 = icmp eq ptr %5, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }], ptr @smdk_dai, i32 0, i32 0, i32 2), align 4
  %12 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %11, i32 0, i32 2
  store ptr null, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #7, !annotation !8
  %13 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #7
  %14 = icmp eq i32 %13, 0
  %15 = load ptr, ptr %2, align 4
  %16 = select i1 %14, ptr %15, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #7
  %17 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }], ptr @smdk_dai, i32 0, i32 0, i32 2), align 4
  %18 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  %19 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }], ptr @smdk_dai, i32 0, i32 0, i32 2), align 4
  %20 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #8
  br label %44

24:                                               ; preds = %10
  %25 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }], ptr @smdk_dai, i32 0, i32 0, i32 6), align 4
  store ptr null, ptr %25, align 4
  %26 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }], ptr @smdk_dai, i32 0, i32 0, i32 2), align 4
  %27 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr getelementptr inbounds ([2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }], ptr @smdk_dai, i32 0, i32 0, i32 6), align 4
  %30 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  br label %31

31:                                               ; preds = %24, %8
  %32 = call ptr @of_match_device(ptr noundef nonnull @samsung_wm8994_of_match, ptr noundef %3) #7
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.of_device_id, ptr %32, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %6, align 4
  br label %38

38:                                               ; preds = %34, %31
  %39 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %39, align 8
  %40 = call i32 @devm_snd_soc_register_card(ptr noundef %3, ptr noundef nonnull @smdk) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %40, ptr noundef nonnull @.str.3) #7
  br label %44

44:                                               ; preds = %42, %38, %23, %1
  %45 = phi i32 [ -22, %23 ], [ -12, %1 ], [ %40, %42 ], [ 0, %38 ]
  ret i32 %45
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smdk_wm8994_init_paiftx(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 51
  %5 = tail call i32 @snd_soc_dapm_nc_pin(ptr noundef %4, ptr noundef nonnull @.str.13) #7
  %6 = tail call i32 @snd_soc_dapm_nc_pin(ptr noundef %4, ptr noundef nonnull @.str.14) #7
  %7 = tail call i32 @snd_soc_dapm_nc_pin(ptr noundef %4, ptr noundef nonnull @.str.15) #7
  %8 = tail call i32 @snd_soc_dapm_nc_pin(ptr noundef %4, ptr noundef nonnull @.str.16) #7
  %9 = tail call i32 @snd_soc_dapm_nc_pin(ptr noundef %4, ptr noundef nonnull @.str.17) #7
  %10 = tail call i32 @snd_soc_dapm_nc_pin(ptr noundef %4, ptr noundef nonnull @.str.18) #7
  %11 = tail call i32 @snd_soc_dapm_nc_pin(ptr noundef %4, ptr noundef nonnull @.str.19) #7
  %12 = tail call i32 @snd_soc_dapm_nc_pin(ptr noundef %4, ptr noundef nonnull @.str.20) #7
  %13 = tail call i32 @snd_soc_dapm_nc_pin(ptr noundef %4, ptr noundef nonnull @.str.21) #7
  %14 = tail call i32 @snd_soc_dapm_nc_pin(ptr noundef %4, ptr noundef nonnull @.str.22) #7
  %15 = tail call i32 @snd_soc_dapm_nc_pin(ptr noundef %4, ptr noundef nonnull @.str.23) #7
  %16 = tail call i32 @snd_soc_dapm_nc_pin(ptr noundef %4, ptr noundef nonnull @.str.24) #7
  %17 = tail call i32 @snd_soc_dapm_nc_pin(ptr noundef %4, ptr noundef nonnull @.str.25) #7
  %18 = tail call i32 @snd_soc_dapm_nc_pin(ptr noundef %4, ptr noundef nonnull @.str.26) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_nc_pin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smdk_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 11
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr ptr, ptr %6, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %19, %2
  %15 = phi i32 [ 0, %2 ], [ 32, %19 ]
  %16 = phi i32 [ %12, %2 ], [ %21, %19 ]
  %17 = tail call i32 @llvm.cttz.i32(i32 %16, i1 true) #7, !range !9
  %18 = or i32 %17, %15
  br label %23

19:                                               ; preds = %2
  %20 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %14

23:                                               ; preds = %19, %14
  %24 = phi i32 [ %18, %14 ], [ 0, %19 ]
  %25 = tail call i32 @snd_pcm_format_width(i32 noundef %24) #7
  %26 = icmp eq i32 %25, 24
  %27 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %28 = load i32, ptr %27, align 4
  br i1 %26, label %29, label %31

29:                                               ; preds = %23
  %30 = mul i32 %28, 384
  br label %36

31:                                               ; preds = %23
  switch i32 %28, label %34 [
    i32 8000, label %32
    i32 11025, label %32
  ]

32:                                               ; preds = %31, %31
  %33 = shl nuw nsw i32 %28, 9
  br label %36

34:                                               ; preds = %31
  %35 = shl i32 %28, 8
  br label %36

36:                                               ; preds = %34, %32, %29
  %37 = phi i32 [ %30, %29 ], [ %33, %32 ], [ %35, %34 ]
  %38 = tail call i32 @snd_soc_dai_set_pll(ptr noundef %10, i32 noundef 1, i32 noundef 1, i32 noundef 16934000, i32 noundef %37) #7
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %10, i32 noundef 3, i32 noundef %37, i32 noundef 0) #7
  %42 = tail call i32 @llvm.smin.i32(i32 %41, i32 0)
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i32 [ %38, %36 ], [ %42, %40 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_pll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"auto-init"}
!9 = !{i32 0, i32 33}
