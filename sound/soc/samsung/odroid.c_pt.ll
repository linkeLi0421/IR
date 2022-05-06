; ModuleID = '/llk/IR/sound/soc/samsung/odroid.c_pt.bc'
source_filename = "../sound/soc/samsung/odroid.c"
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.85, ptr }
%union.anon.85 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [80 x i8], [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.odroid_priv = type { %struct.snd_soc_card, ptr, ptr, %struct.spinlock, i32, i8 }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@odroid_audio_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hardkernel,odroid-xu3-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hardkernel,odroid-xu4-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,odroid-xu3-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,odroid-xu4-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author230 = internal constant [51 x i8] c"author=Sylwester Nawrocki <s.nawrocki@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [41 x i8] c"description=Odroid XU3/XU4 audio support\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@odroid_audio_driver = internal global %struct.platform_driver { ptr @odroid_audio_probe, ptr @odroid_audio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @odroid_audio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"odroid-audio\00", align 1
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"samsung,audio-widgets\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"samsung,audio-routing\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"codec\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"sound-dai\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"#sound-dai-cells\00", align 1
@odroid_dapm_routes = internal constant [2 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.20, ptr null, ptr @.str.21, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.22, ptr null, ptr @.str.21, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"sound-dai property parse error: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"i2s_opclk1\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"iis\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"snd_soc_register_card() failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Primary\00", align 1
@primary_cpus = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@primary_codecs = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.16, ptr null, ptr @.str.17 }], align 4
@primary_platforms = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.18, ptr null, ptr null }], align 4
@odroid_card_fe_ops = internal constant %struct.snd_soc_ops { ptr @odroid_card_fe_startup, ptr null, ptr @odroid_card_fe_hw_params, ptr null, ptr null, ptr null }, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"I2S Mixer\00", align 1
@mixer_cpus = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.16, ptr null, ptr @.str.17 }], align 4
@mixer_codecs = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@mixer_platforms = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.16, ptr null, ptr @.str.17 }], align 4
@odroid_card_be_ops = internal constant %struct.snd_soc_ops { ptr null, ptr null, ptr @odroid_card_be_hw_params, ptr null, ptr null, ptr @odroid_card_be_trigger }, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"Secondary\00", align 1
@secondary_cpus = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@secondary_codecs = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.16, ptr null, ptr @.str.17 }], align 4
@secondary_platforms = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.19, ptr null, ptr null }], align 4
@odroid_card_dais = internal global [3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 } { ptr @.str.12, ptr @.str.12, ptr @primary_cpus, i32 1, ptr @primary_codecs, i32 1, ptr @primary_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @odroid_card_fe_ops, ptr null, i8 0, i8 5, i8 0 }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 } { ptr @.str.13, ptr null, ptr @mixer_cpus, i32 1, ptr @mixer_codecs, i32 1, ptr @mixer_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @odroid_card_be_ops, ptr null, i8 -128, i8 4, i8 0 }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 } { ptr @.str.14, ptr @.str.14, ptr @secondary_cpus, i32 1, ptr @secondary_codecs, i32 1, ptr @secondary_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @odroid_card_fe_ops, ptr null, i8 2, i8 5, i8 0 }], align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"snd-soc-dummy\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"snd-soc-dummy-dai\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"3830000.i2s\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"3830000.i2s-sec\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"I2S Playback\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"Mixer DAI TX\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"HiFi Playback\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_license232], section "llvm.metadata"
@switch.table.odroid_card_be_trigger = private unnamed_addr constant [7 x i8] c"\00\01\01\00\01\00\01", align 1

@__mod_of__odroid_audio_of_match_device_table = dso_local alias [5 x %struct.of_device_id], ptr @odroid_audio_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @odroid_audio_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @odroid_audio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @odroid_audio_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false)
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 504, i32 noundef 3520) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %127, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 6
  store ptr %4, ptr %8, align 4
  %9 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 8
  store ptr @__this_module, ptr %9, align 4
  %10 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 57
  %11 = load i8, ptr %10, align 4
  %12 = or i8 %11, 4
  store i8 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.odroid_priv, ptr %5, i32 0, i32 3
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 58
  store ptr %5, ptr %14, align 4
  %15 = tail call i32 @snd_soc_of_parse_card_name(ptr noundef nonnull %5, ptr noundef nonnull @.str.1) #6
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %127, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %19 = load ptr, ptr %18, align 8
  %20 = tail call ptr @of_find_property(ptr noundef %19, ptr noundef nonnull @.str.2, ptr noundef null) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @snd_soc_of_parse_audio_simple_widgets(ptr noundef nonnull %5, ptr noundef nonnull @.str.2) #6
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %127, label %25

25:                                               ; preds = %22, %17
  %26 = phi i32 [ %23, %22 ], [ %15, %17 ]
  %27 = load ptr, ptr %18, align 8
  %28 = tail call ptr @of_find_property(ptr noundef %27, ptr noundef nonnull @.str.3, ptr noundef null) #6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = tail call i32 @snd_soc_of_parse_audio_routing(ptr noundef nonnull %5, ptr noundef nonnull @.str.3) #6
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %127, label %33

33:                                               ; preds = %30, %25
  %34 = phi i32 [ %31, %30 ], [ %26, %25 ]
  %35 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 25
  store ptr @odroid_card_dais, ptr %35, align 4
  %36 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 26
  store i32 3, ptr %36, align 4
  %37 = load ptr, ptr %18, align 8
  %38 = tail call ptr @of_get_child_by_name(ptr noundef %37, ptr noundef nonnull @.str.4) #6
  %39 = load ptr, ptr %18, align 8
  %40 = tail call ptr @of_get_child_by_name(ptr noundef %39, ptr noundef nonnull @.str.5) #6
  %41 = load ptr, ptr %35, align 4
  %42 = getelementptr %struct.snd_soc_dai_link, ptr %41, i32 1
  %43 = tail call i32 @of_count_phandle_with_args(ptr noundef %38, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #6
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 38
  store ptr @odroid_dapm_routes, ptr %46, align 4
  %47 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 39
  store i32 2, ptr %47, align 4
  %48 = load i32, ptr %36, align 4
  %49 = add i32 %48, -1
  store i32 %49, ptr %36, align 4
  br label %52

50:                                               ; preds = %33
  %51 = icmp sgt i32 %43, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %50, %45
  br label %53

53:                                               ; preds = %69, %52
  %54 = phi i32 [ %70, %69 ], [ 0, %52 ]
  %55 = phi ptr [ %71, %69 ], [ %41, %52 ]
  %56 = call i32 @__of_parse_phandle_with_args(ptr noundef %38, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef -1, i32 noundef %54, ptr noundef nonnull %3) #6
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %82, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %3, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %56) #7
  br label %82

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %55, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %64, i32 0, i32 2
  %66 = call i32 @snd_soc_get_dai_name(ptr noundef nonnull %3, ptr noundef %65) #6
  %67 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %67) #6
  %68 = icmp slt i32 %66, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %62
  %70 = add nuw nsw i32 %54, 1
  %71 = getelementptr %struct.snd_soc_dai_link, ptr %55, i32 2
  %72 = icmp eq i32 %70, %43
  br i1 %72, label %73, label %53

73:                                               ; preds = %69, %50
  %74 = phi i32 [ %34, %50 ], [ %66, %69 ]
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #6, !annotation !8
  %77 = call i32 @__of_parse_phandle_with_args(ptr noundef %38, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #6
  %78 = icmp ne i32 %77, 0
  %79 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #6
  %80 = icmp eq ptr %79, null
  %81 = select i1 %78, i1 true, i1 %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76, %62, %61, %53
  %83 = phi i32 [ -22, %61 ], [ -22, %76 ], [ %56, %53 ], [ %66, %62 ]
  call void @of_node_put(ptr noundef %38) #6
  br label %125

84:                                               ; preds = %76, %73
  %85 = phi ptr [ null, %73 ], [ %79, %76 ]
  call void @of_node_put(ptr noundef %38) #6
  %86 = call i32 @snd_soc_of_get_dai_link_codecs(ptr noundef %4, ptr noundef %40, ptr noundef %42) #6
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %123, label %88

88:                                               ; preds = %84
  %89 = getelementptr %struct.snd_soc_dai_link, ptr %41, i32 1, i32 5
  %90 = load i32, ptr %89, align 4
  %91 = icmp ugt i32 %90, 1
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load ptr, ptr %35, align 4
  %94 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %93, i32 0, i32 18
  %95 = load i32, ptr %94, align 4
  %96 = or i32 %95, 512
  store i32 %96, ptr %94, align 4
  %97 = load ptr, ptr %35, align 4
  %98 = getelementptr %struct.snd_soc_dai_link, ptr %97, i32 1, i32 18
  %99 = load i32, ptr %98, align 4
  %100 = or i32 %99, 512
  store i32 %100, ptr %98, align 4
  br label %101

101:                                              ; preds = %92, %88
  %102 = call ptr @of_clk_get_by_name(ptr noundef %85, ptr noundef nonnull @.str.9) #6
  %103 = getelementptr inbounds %struct.odroid_priv, ptr %5, i32 0, i32 2
  store ptr %102, ptr %103, align 4
  %104 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = ptrtoint ptr %102 to i32
  br label %123

107:                                              ; preds = %101
  %108 = call ptr @of_clk_get_by_name(ptr noundef %85, ptr noundef nonnull @.str.10) #6
  %109 = getelementptr inbounds %struct.odroid_priv, ptr %5, i32 0, i32 1
  store ptr %108, ptr %109, align 4
  %110 = icmp ugt ptr %108, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = ptrtoint ptr %108 to i32
  br label %120

113:                                              ; preds = %107
  %114 = call i32 @devm_snd_soc_register_card(ptr noundef %4, ptr noundef nonnull %5) #6
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %114, ptr noundef nonnull @.str.11) #6
  %118 = load ptr, ptr %109, align 4
  call void @clk_put(ptr noundef %118) #6
  br label %120

119:                                              ; preds = %113
  call void @of_node_put(ptr noundef %85) #6
  br label %125

120:                                              ; preds = %116, %111
  %121 = phi i32 [ %112, %111 ], [ %114, %116 ]
  %122 = load ptr, ptr %103, align 4
  call void @clk_put(ptr noundef %122) #6
  br label %123

123:                                              ; preds = %120, %105, %84
  %124 = phi i32 [ %86, %84 ], [ %106, %105 ], [ %121, %120 ]
  call void @of_node_put(ptr noundef %85) #6
  call void @snd_soc_of_put_dai_link_codecs(ptr noundef %42) #6
  br label %125

125:                                              ; preds = %123, %119, %82
  %126 = phi i32 [ 0, %119 ], [ %124, %123 ], [ %83, %82 ]
  call void @of_node_put(ptr noundef %40) #6
  br label %127

127:                                              ; preds = %125, %30, %22, %7, %1
  %128 = phi i32 [ -12, %1 ], [ %15, %7 ], [ %23, %22 ], [ %31, %30 ], [ %126, %125 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #6
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @odroid_audio_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.snd_soc_dai_link, ptr %5, i32 1
  tail call void @snd_soc_of_put_dai_link_codecs(ptr noundef %6) #6
  %7 = getelementptr inbounds %struct.odroid_priv, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_put(ptr noundef %8) #6
  %9 = getelementptr inbounds %struct.odroid_priv, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_put(ptr noundef %10) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_audio_simple_widgets(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_audio_routing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_dai_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_get_dai_link_codecs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_of_put_dai_link_codecs(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @odroid_card_fe_startup(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 10, i32 noundef 2, i32 noundef 2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @odroid_card_fe_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_card, ptr %6, i32 0, i32 58
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.odroid_priv, ptr %8, i32 0, i32 3
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #6
  %11 = getelementptr inbounds %struct.odroid_priv, ptr %8, i32 0, i32 5
  %12 = load i8, ptr %11, align 4, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.odroid_priv, ptr %8, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, %18
  %20 = select i1 %19, i32 0, i32 -22
  br label %21

21:                                               ; preds = %14, %2
  %22 = phi i32 [ 0, %2 ], [ %20, %14 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #6
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @odroid_card_be_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_card, ptr %6, i32 0, i32 58
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %47 [
    i32 64000, label %13
    i32 44100, label %11
    i32 88200, label %11
    i32 32000, label %12
    i32 48000, label %12
    i32 96000, label %12
  ]

11:                                               ; preds = %2, %2
  br label %13

12:                                               ; preds = %2, %2, %2
  br label %13

13:                                               ; preds = %12, %11, %2
  %14 = phi i32 [ 98304001, %12 ], [ 90316805, %11 ], [ 98304001, %2 ]
  %15 = phi i32 [ 512, %12 ], [ 512, %11 ], [ 384, %2 ]
  %16 = getelementptr inbounds %struct.odroid_priv, ptr %8, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @clk_set_rate(ptr noundef %17, i32 noundef %14) #6
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %47, label %20

20:                                               ; preds = %13
  %21 = load i32, ptr %9, align 4
  %22 = mul i32 %21, %15
  %23 = or i32 %22, 2
  %24 = getelementptr inbounds %struct.odroid_priv, ptr %8, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @clk_set_rate(ptr noundef %25, i32 noundef %23) #6
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %47, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 10
  %30 = load i32, ptr %29, align 4
  %31 = icmp ugt i32 %30, 1
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 9
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 11
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  %38 = getelementptr ptr, ptr %34, i32 %37
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %39, i32 noundef 0, i32 noundef %23, i32 noundef 0) #6
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %32, %28
  %43 = getelementptr inbounds %struct.odroid_priv, ptr %8, i32 0, i32 3
  %44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %43) #6
  %45 = load i32, ptr %9, align 4
  %46 = getelementptr inbounds %struct.odroid_priv, ptr %8, i32 0, i32 4
  store i32 %45, ptr %46, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %43, i32 noundef %44) #6
  br label %47

47:                                               ; preds = %42, %32, %20, %13, %2
  %48 = phi i32 [ 0, %42 ], [ %40, %32 ], [ -22, %2 ], [ %18, %13 ], [ %26, %20 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @odroid_card_be_trigger(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_card, ptr %6, i32 0, i32 58
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.odroid_priv, ptr %8, i32 0, i32 3
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #6
  %11 = icmp ult i32 %1, 7
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = trunc i32 %1 to i8
  %14 = lshr i8 123, %13
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds [7 x i8], ptr @switch.table.odroid_card_be_trigger, i32 0, i32 %1
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr inbounds %struct.odroid_priv, ptr %8, i32 0, i32 5
  store i8 %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %17, %12, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
