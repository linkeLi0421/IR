; ModuleID = '/llk/IR/sound/soc/stm/stm32_adfsdm.c_pt.bc'
source_filename = "../sound/soc/stm/stm32_adfsdm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.85, ptr }
%union.anon.85 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type {}
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.stm32_adfsdm_priv = type { %struct.snd_soc_dai_driver, ptr, ptr, ptr, ptr, i8, ptr, i32, %struct.mutex }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@stm32_adfsdm_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-dfsdm-dai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description231 = internal constant [35 x i8] c"description=stm32 DFSDM DAI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [50 x i8] c"author=Arnaud Pouliquen <arnaud.pouliquen@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias234 = internal constant [28 x i8] c"alias=platform:stm32-adfsdm\00", section ".modinfo", align 1
@stm32_adfsdm_driver = internal global %struct.platform_driver { ptr @stm32_adfsdm_probe, ptr @stm32_adfsdm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_adfsdm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"stm32-adfsdm\00", align 1
@stm32_adfsdm_dai = internal unnamed_addr constant %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @stm32_adfsdm_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1028, i32 1073741824, i32 8000, i32 48000, i32 1, i32 1, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, align 8
@stm32_adfsdm_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&priv->lock\00", align 1
@stm32_adfsdm_dai_component = internal constant %struct.snd_soc_component_driver { ptr @.str.9, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@stm32_adfsdm_soc_platform = internal global %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_adfsdm_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_adfsdm_pcm_open, ptr @stm32_adfsdm_pcm_close, ptr null, ptr @stm32_adfsdm_pcm_hw_params, ptr null, ptr null, ptr @stm32_adfsdm_trigger, ptr null, ptr @stm32_adfsdm_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"%s: Failed to register PCM platform\0A\00", align 1
@__func__.stm32_adfsdm_probe = private unnamed_addr constant [19 x i8] c"stm32_adfsdm_probe\00", align 1
@stm32_adfsdm_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr @stm32_adfsdm_set_sysclk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_adfsdm_shutdown, ptr null, ptr null, ptr @stm32_adfsdm_dai_prepare, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"spi_clk_freq\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"%s: Failed to set SPI clock\0A\00", align 1
@__func__.stm32_adfsdm_set_sysclk = private unnamed_addr constant [24 x i8] c"stm32_adfsdm_set_sysclk\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"%s: Failed to set %d sampling rate\0A\00", align 1
@__func__.stm32_adfsdm_dai_prepare = private unnamed_addr constant [25 x i8] c"stm32_adfsdm_dai_prepare\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"%s: IIO channel start failed (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"stm32_dfsdm_audio\00", align 1
@stm32_adfsdm_pcm_hw = internal constant %struct.snd_pcm_hardware { i32 590081, i64 1028, i32 0, i32 0, i32 0, i32 1, i32 1, i32 12288, i32 0, i32 2048, i32 2, i32 6, i32 0 }, align 8
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias234, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_license233], section "llvm.metadata"

@__mod_of__stm32_adfsdm_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @stm32_adfsdm_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_adfsdm_driver, ptr noundef nonnull @__this_module) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_adfsdm_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adfsdm_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 216, i32 noundef 3520) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %3, i32 0, i32 2
  store ptr %2, ptr %6, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(168) %3, ptr noundef nonnull align 8 dereferenceable(168) @stm32_adfsdm_dai, i32 168, i1 false)
  %7 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %3, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @stm32_adfsdm_probe.__key) #11
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %8, align 8
  tail call void @pm_runtime_enable(ptr noundef %2) #11
  %9 = tail call i32 @devm_snd_soc_register_component(ptr noundef %2, ptr noundef nonnull @stm32_adfsdm_dai_component, ptr noundef nonnull %3, i32 noundef 1) #11
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %5
  %12 = tail call ptr @devm_iio_channel_get_all(ptr noundef %2) #11
  %13 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %3, i32 0, i32 3
  store ptr %12, ptr %13, align 8
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = ptrtoint ptr %12 to i32
  br label %34

17:                                               ; preds = %11
  %18 = tail call ptr @iio_channel_get_all_cb(ptr noundef %2, ptr noundef nonnull @stm32_adfsdm_dummy_cb, ptr noundef null) #11
  %19 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %3, i32 0, i32 4
  store ptr %18, ptr %19, align 4
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = ptrtoint ptr %18 to i32
  br label %34

23:                                               ; preds = %17
  %24 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 184, i32 noundef 3520) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @snd_soc_component_initialize(ptr noundef nonnull %24, ptr noundef nonnull @stm32_adfsdm_soc_platform, ptr noundef %2) #11
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.snd_soc_component, ptr %24, i32 0, i32 26
  store ptr @.str.2, ptr %30, align 4
  %31 = tail call i32 @snd_soc_add_component(ptr noundef nonnull %24, ptr noundef null, i32 noundef 0) #11
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.stm32_adfsdm_probe) #12
  br label %34

34:                                               ; preds = %33, %29, %26, %23, %21, %15, %5, %1
  %35 = phi i32 [ %16, %15 ], [ %22, %21 ], [ -12, %1 ], [ %9, %5 ], [ -12, %23 ], [ %27, %26 ], [ %31, %33 ], [ %31, %29 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adfsdm_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @snd_soc_unregister_component(ptr noundef %2) #11
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_channel_get_all_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stm32_adfsdm_dummy_cb(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_initialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adfsdm_set_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca [10 x i8], align 1
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %5, i8 0, i32 10, i1 false), !annotation !8
  %10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 10, ptr noundef nonnull @.str.4, i32 noundef %2)
  %11 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %9, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @iio_write_channel_ext_info(ptr noundef %12, ptr noundef nonnull @.str.5, ptr noundef nonnull %5, i32 noundef 10) #11
  %14 = icmp eq i32 %13, 10
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.stm32_adfsdm_set_sysclk) #12
  br label %17

17:                                               ; preds = %15, %4
  %18 = phi i32 [ -22, %15 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #11
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_adfsdm_shutdown(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %6, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %6, i32 0, i32 5
  %9 = load i8, ptr %8, align 8, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %6, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  tail call void @iio_channel_stop_all_cb(ptr noundef %13) #11
  store i8 0, ptr %8, align 8
  br label %14

14:                                               ; preds = %11, %2
  tail call void @mutex_unlock(ptr noundef %7) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adfsdm_dai_prepare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %6, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %6, i32 0, i32 5
  %9 = load i8, ptr %8, align 8, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %6, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  tail call void @iio_channel_stop_all_cb(ptr noundef %13) #11
  store i8 0, ptr %8, align 8
  br label %14

14:                                               ; preds = %11, %2
  %15 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %6, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 14
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @iio_write_channel_attribute(ptr noundef %16, i32 noundef %20, i32 noundef 0, i32 noundef 12) #11
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load ptr, ptr %3, align 4
  %25 = load ptr, ptr %17, align 4
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 14
  %27 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stm32_adfsdm_dai_prepare, i32 noundef %27) #12
  br label %39

28:                                               ; preds = %14
  %29 = load i8, ptr %8, align 8, !range !9
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %6, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @iio_channel_start_all_cb(ptr noundef %33) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i8 1, ptr %8, align 8
  br label %39

37:                                               ; preds = %31
  %38 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stm32_adfsdm_dai_prepare, i32 noundef %34) #12
  br label %39

39:                                               ; preds = %37, %36, %28, %23
  %40 = phi i32 [ %21, %23 ], [ %21, %28 ], [ %34, %37 ], [ 0, %36 ]
  tail call void @mutex_unlock(ptr noundef %7) #11
  ret i32 %40
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_write_channel_ext_info(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_channel_stop_all_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_write_channel_attribute(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_channel_start_all_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adfsdm_pcm_new(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %4, i32 noundef 2, ptr noundef %13, i32 noundef 12288, i32 noundef 12288) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adfsdm_pcm_open(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %1, ptr noundef nonnull @stm32_adfsdm_pcm_hw) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %11, i32 0, i32 1
  store ptr %1, ptr %15, align 8
  br label %16

16:                                               ; preds = %14, %2
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stm32_adfsdm_pcm_close(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %11, i32 0, i32 1
  store ptr null, ptr %12, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adfsdm_pcm_hw_params(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_dai, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 50
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %12, i32 0, i32 6
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %12, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 3, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @iio_channel_cb_set_buffer_watermark(ptr noundef %19, i32 noundef %21) #11
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adfsdm_trigger(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_dai, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  switch i32 %2, label %24 [
    i32 1, label %13
    i32 6, label %13
    i32 5, label %19
    i32 0, label %19
  ]

13:                                               ; preds = %3, %3
  %14 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %12, i32 0, i32 7
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %12, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @stm32_dfsdm_get_buff_cb(ptr noundef %17, ptr noundef nonnull @stm32_afsdm_pcm_cb, ptr noundef %12) #11
  br label %24

19:                                               ; preds = %3, %3
  %20 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %12, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @stm32_dfsdm_release_buff_cb(ptr noundef %22) #11
  br label %24

24:                                               ; preds = %19, %13, %3
  %25 = phi i32 [ %23, %19 ], [ %18, %13 ], [ -22, %3 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @stm32_adfsdm_pcm_pointer(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %11, i32 0, i32 7
  %15 = load i32, ptr %14, align 8
  %16 = shl i32 %15, 3
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 21
  %18 = load i32, ptr %17, align 8
  %19 = udiv i32 %16, %18
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_channel_cb_set_buffer_watermark(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stm32_dfsdm_get_buff_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_afsdm_pcm_cb(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) #2 {
  %4 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %2, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32_adfsdm_priv, ptr %2, i32 0, i32 7
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 18
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 21
  %15 = load i32, ptr %14, align 8
  %16 = mul i32 %15, %13
  %17 = lshr i32 %16, 3
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 16
  %19 = load i32, ptr %18, align 4
  %20 = mul i32 %19, %15
  %21 = lshr i32 %20, 3
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 12
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 2
  %25 = zext i1 %24 to i32
  %26 = lshr i32 %1, %25
  %27 = add i32 %26, %9
  %28 = icmp ugt i32 %27, %17
  br i1 %28, label %29, label %53

29:                                               ; preds = %3
  br i1 %24, label %30, label %46

30:                                               ; preds = %29
  %31 = sub i32 %17, %9
  %32 = icmp ult i32 %31, 2
  br i1 %32, label %49, label %33

33:                                               ; preds = %30
  %34 = getelementptr i8, ptr %7, i32 %9
  %35 = lshr i32 %31, 1
  br label %36

36:                                               ; preds = %36, %33
  %37 = phi ptr [ %41, %36 ], [ %0, %33 ]
  %38 = phi ptr [ %43, %36 ], [ %34, %33 ]
  %39 = phi i32 [ %44, %36 ], [ %35, %33 ]
  %40 = getelementptr i16, ptr %37, i32 1
  %41 = getelementptr i16, ptr %37, i32 2
  %42 = load i16, ptr %40, align 2
  %43 = getelementptr i16, ptr %38, i32 1
  store i16 %42, ptr %38, align 2
  %44 = add nsw i32 %39, -1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %36

46:                                               ; preds = %29
  %47 = getelementptr i8, ptr %7, i32 %9
  %48 = sub i32 %17, %9
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %47, ptr align 1 %0, i32 %48, i1 false)
  br label %49

49:                                               ; preds = %46, %36, %30
  %50 = load i32, ptr %8, align 8
  %51 = sub i32 %26, %17
  %52 = add i32 %51, %50
  store i32 0, ptr %8, align 8
  br label %53

53:                                               ; preds = %49, %3
  %54 = phi i32 [ 0, %49 ], [ %9, %3 ]
  %55 = phi i32 [ %52, %49 ], [ %26, %3 ]
  br i1 %24, label %56, label %73

56:                                               ; preds = %53
  %57 = icmp ult i32 %55, 2
  br i1 %57, label %77, label %58

58:                                               ; preds = %56
  %59 = sub i32 %26, %55
  %60 = getelementptr i8, ptr %0, i32 %59
  %61 = getelementptr i8, ptr %7, i32 %54
  %62 = lshr i32 %55, 1
  br label %63

63:                                               ; preds = %63, %58
  %64 = phi ptr [ %68, %63 ], [ %60, %58 ]
  %65 = phi ptr [ %70, %63 ], [ %61, %58 ]
  %66 = phi i32 [ %71, %63 ], [ %62, %58 ]
  %67 = getelementptr i16, ptr %64, i32 1
  %68 = getelementptr i16, ptr %64, i32 2
  %69 = load i16, ptr %67, align 2
  %70 = getelementptr i16, ptr %65, i32 1
  store i16 %69, ptr %65, align 2
  %71 = add nsw i32 %66, -1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %63

73:                                               ; preds = %53
  %74 = getelementptr i8, ptr %7, i32 %54
  %75 = sub i32 %26, %55
  %76 = getelementptr i8, ptr %0, i32 %75
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %74, ptr align 1 %76, i32 %55, i1 false)
  br label %77

77:                                               ; preds = %73, %63, %56
  %78 = load i32, ptr %8, align 8
  %79 = add i32 %78, %55
  %80 = urem i32 %79, %17
  store i32 %80, ptr %8, align 8
  %81 = icmp eq i32 %26, %55
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = icmp eq i32 %9, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %82
  %85 = urem i32 %9, %21
  %86 = icmp ult i32 %85, %1
  br i1 %86, label %87, label %89

87:                                               ; preds = %84, %77
  %88 = load ptr, ptr %4, align 8
  tail call void @snd_pcm_period_elapsed(ptr noundef %88) #11
  br label %89

89:                                               ; preds = %87, %84, %82
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stm32_dfsdm_release_buff_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
