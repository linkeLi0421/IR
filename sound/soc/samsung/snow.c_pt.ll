; ModuleID = '/llk/IR/sound/soc/samsung/snow.c_pt.bc'
source_filename = "../sound/soc/samsung/snow.c"
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
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24 }
%struct.snow_priv = type { %struct.snd_soc_dai_link, ptr }
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

@snow_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,snow-audio-max98090\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,snow-audio-max98091\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,snow-audio-max98095\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description230 = internal constant [51 x i8] c"description=ALSA SoC Audio machine driver for Snow\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@snow_driver = internal global %struct.platform_driver { ptr @snow_probe, ptr @snow_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @snow_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [11 x i8] c"snow-audio\00", align 1
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@snow_snd = internal global %struct.snd_soc_card { ptr @.str.15, ptr null, ptr null, ptr null, [80 x i8] zeroinitializer, [32 x i8] zeroinitializer, ptr null, ptr null, ptr @__this_module, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr @snow_late_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Primary\00", align 1
@links_cpus = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@links_codecs = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@links_platforms = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@snow_card_ops = internal constant %struct.snd_soc_ops { ptr null, ptr null, ptr @snow_card_hw_params, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"sound-dai\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed parsing cpu/sound-dai property\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"codec\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed parsing codec node\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"i2s_opclk0\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"HiFi\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"samsung,i2s-controller\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"i2s-controller property parse error\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"samsung,audio-codec\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"audio-codec property parse error\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"samsung,model\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"snd_soc_register_card failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Snow-I2S\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Invalid bit-width: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"Unsupported bit-width: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Unsupported RCLK rate: %lu\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"I2S bus clock rate set failed\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_license231], section "llvm.metadata"

@__mod_of__snow_of_match_device_table = dso_local alias [4 x %struct.of_device_id], ptr @snow_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @snow_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @snow_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snow_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 84, i32 noundef 3520) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %95, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 11
  store i32 16385, ptr %9, align 4
  store ptr @.str.1, ptr %6, align 4
  %10 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 1
  store ptr @.str.1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 2
  store ptr @links_cpus, ptr %11, align 4
  %12 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 3
  store i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 4
  store ptr @links_codecs, ptr %13, align 4
  %14 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 5
  store i32 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 6
  store ptr @links_platforms, ptr %15, align 4
  %16 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 7
  store i32 1, ptr %16, align 4
  store ptr %6, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @snow_snd, i32 0, i32 25), align 4
  store i32 1, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @snow_snd, i32 0, i32 26), align 4
  store ptr %5, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @snow_snd, i32 0, i32 6), align 4
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %18 = load ptr, ptr %17, align 8
  %19 = tail call ptr @of_get_child_by_name(ptr noundef %18, ptr noundef nonnull @.str.2) #7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %53, label %21

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 16
  store ptr @snow_card_ops, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #7, !annotation !8
  %23 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %19, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #7
  %24 = icmp eq i32 %23, 0
  %25 = load ptr, ptr %4, align 4
  %26 = select i1 %24, ptr %25, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #7
  %27 = load ptr, ptr %11, align 4
  %28 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  call void @of_node_put(ptr noundef nonnull %19) #7
  %29 = load ptr, ptr %11, align 4
  %30 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4) #8
  br label %95

34:                                               ; preds = %21
  %35 = load ptr, ptr %17, align 8
  %36 = call ptr @of_get_child_by_name(ptr noundef %35, ptr noundef nonnull @.str.5) #7
  %37 = call i32 @snd_soc_of_get_dai_link_codecs(ptr noundef %5, ptr noundef %36, ptr noundef nonnull %6) #7
  call void @of_node_put(ptr noundef %36) #7
  %38 = icmp slt i32 %37, 0
  %39 = load ptr, ptr %11, align 4
  %40 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  br i1 %38, label %42, label %43

42:                                               ; preds = %34
  call void @of_node_put(ptr noundef %41) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6) #8
  br label %95

43:                                               ; preds = %34
  %44 = call ptr @of_clk_get_by_name(ptr noundef %41, ptr noundef nonnull @.str.7) #7
  %45 = getelementptr inbounds %struct.snow_priv, ptr %6, i32 0, i32 1
  store ptr %44, ptr %45, align 4
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %84

47:                                               ; preds = %43
  call void @snd_soc_of_put_dai_link_codecs(ptr noundef nonnull %6) #7
  %48 = load ptr, ptr %11, align 4
  %49 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  call void @of_node_put(ptr noundef %50) #7
  %51 = load ptr, ptr %45, align 4
  %52 = ptrtoint ptr %51 to i32
  br label %95

53:                                               ; preds = %8
  %54 = load ptr, ptr %13, align 4
  %55 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %54, i32 0, i32 2
  store ptr @.str.8, ptr %55, align 4
  %56 = load ptr, ptr %17, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #7, !annotation !8
  %57 = call i32 @__of_parse_phandle_with_args(ptr noundef %56, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #7
  %58 = icmp eq i32 %57, 0
  %59 = load ptr, ptr %3, align 4
  %60 = select i1 %58, ptr %59, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #7
  %61 = load ptr, ptr %11, align 4
  %62 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %61, i32 0, i32 1
  store ptr %60, ptr %62, align 4
  %63 = load ptr, ptr %11, align 4
  %64 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.10) #8
  br label %95

68:                                               ; preds = %53
  %69 = load ptr, ptr %17, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #7, !annotation !8
  %70 = call i32 @__of_parse_phandle_with_args(ptr noundef %69, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #7
  %71 = icmp eq i32 %70, 0
  %72 = load ptr, ptr %2, align 4
  %73 = select i1 %71, ptr %72, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #7
  %74 = load ptr, ptr %13, align 4
  %75 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %74, i32 0, i32 1
  store ptr %73, ptr %75, align 4
  %76 = load ptr, ptr %13, align 4
  %77 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %76, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %68
  %81 = load ptr, ptr %11, align 4
  %82 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %81, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  call void @of_node_put(ptr noundef %83) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.12) #8
  br label %95

84:                                               ; preds = %68, %43
  %85 = load ptr, ptr %11, align 4
  %86 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %85, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = load ptr, ptr %15, align 4
  %89 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %88, i32 0, i32 1
  store ptr %87, ptr %89, align 4
  %90 = call i32 @snd_soc_of_parse_card_name(ptr noundef nonnull @snow_snd, ptr noundef nonnull @.str.13) #7
  store ptr %6, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @snow_snd, i32 0, i32 58), align 4
  %91 = call i32 @devm_snd_soc_register_card(ptr noundef %5, ptr noundef nonnull @snow_snd) #7
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %84
  %94 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %5, i32 noundef %91, ptr noundef nonnull @.str.14) #7
  br label %95

95:                                               ; preds = %93, %84, %80, %67, %47, %42, %33, %1
  %96 = phi i32 [ %37, %42 ], [ %52, %47 ], [ %94, %93 ], [ -22, %33 ], [ -22, %80 ], [ -22, %67 ], [ -12, %1 ], [ 0, %84 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snow_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @of_node_put(ptr noundef %7) #7
  %8 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %3, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void @of_node_put(ptr noundef %11) #7
  tail call void @snd_soc_of_put_dai_link_codecs(ptr noundef %3) #7
  %12 = getelementptr inbounds %struct.snow_priv, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_put(ptr noundef %13) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_get_dai_link_codecs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_of_put_dai_link_codecs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snow_late_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @snd_soc_get_pcm_runtime(ptr noundef %0, ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 11
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr ptr, ptr %6, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %10, i32 noundef 0, i32 noundef 24000000, i32 noundef 0) #7
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_get_pcm_runtime(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snow_card_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_card, ptr %6, i32 0, i32 58
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %17, %2
  %13 = phi i32 [ 0, %2 ], [ 32, %17 ]
  %14 = phi i32 [ %10, %2 ], [ %19, %17 ]
  %15 = tail call i32 @llvm.cttz.i32(i32 %14, i1 true) #7, !range !9
  %16 = or i32 %15, %13
  br label %21

17:                                               ; preds = %2
  %18 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %12

21:                                               ; preds = %17, %12
  %22 = phi i32 [ %16, %12 ], [ 0, %17 ]
  %23 = tail call i32 @snd_pcm_format_width(i32 noundef %22) #7
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr inbounds %struct.snd_soc_card, ptr %26, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.16, i32 noundef %23) #8
  br label %106

29:                                               ; preds = %21
  %30 = and i32 %23, -9
  %31 = icmp eq i32 %30, 16
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr inbounds %struct.snd_soc_card, ptr %33, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.17, i32 noundef %23) #8
  br label %106

36:                                               ; preds = %29
  %37 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %38 = load i32, ptr %37, align 4
  switch i32 %38, label %106 [
    i32 16000, label %39
    i32 22050, label %39
    i32 24000, label %39
    i32 32000, label %39
    i32 44100, label %39
    i32 48000, label %39
    i32 88200, label %39
    i32 96000, label %39
    i32 64000, label %43
    i32 8000, label %41
    i32 11025, label %41
    i32 12000, label %41
  ]

39:                                               ; preds = %36, %36, %36, %36, %36, %36, %36, %36
  %40 = shl nuw nsw i32 %23, 4
  br label %43

41:                                               ; preds = %36, %36, %36
  %42 = shl nuw nsw i32 %23, 5
  br label %43

43:                                               ; preds = %41, %39, %36
  %44 = phi i32 [ %42, %41 ], [ %40, %39 ], [ 384, %36 ]
  %45 = mul nuw nsw i32 %44, %38
  %46 = shl nuw nsw i32 %45, 3
  switch i32 %46, label %47 [
    i32 73728000, label %56
    i32 67737600, label %54
    i32 49152000, label %55
  ]

47:                                               ; preds = %43
  %48 = add nsw i32 %46, -45158399
  %49 = icmp ult i32 %48, 3
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = add nsw i32 %46, -32767999
  %52 = icmp ult i32 %51, 3
  %53 = select i1 %52, i32 32768001, i32 -22
  br label %56

54:                                               ; preds = %43
  br label %56

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55, %54, %50, %47, %43
  %57 = phi i32 [ %46, %43 ], [ 45158401, %47 ], [ 67737602, %54 ], [ 49152000, %55 ], [ %53, %50 ]
  %58 = shl nuw nsw i32 %45, 2
  switch i32 %58, label %59 [
    i32 73728000, label %68
    i32 67737600, label %66
    i32 49152000, label %67
  ]

59:                                               ; preds = %56
  %60 = add nsw i32 %58, -45158399
  %61 = icmp ult i32 %60, 3
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = add nsw i32 %58, -32767999
  %64 = icmp ult i32 %63, 3
  %65 = select i1 %64, i32 32768001, i32 %57
  br label %68

66:                                               ; preds = %56
  br label %68

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %66, %62, %59, %56
  %69 = phi i32 [ %58, %56 ], [ 45158401, %59 ], [ 67737602, %66 ], [ 49152000, %67 ], [ %65, %62 ]
  %70 = shl nuw nsw i32 %45, 1
  switch i32 %70, label %71 [
    i32 73728000, label %80
    i32 67737600, label %78
    i32 49152000, label %79
  ]

71:                                               ; preds = %68
  %72 = add nsw i32 %70, -45158399
  %73 = icmp ult i32 %72, 3
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = add nsw i32 %70, -32767999
  %76 = icmp ult i32 %75, 3
  %77 = select i1 %76, i32 32768001, i32 %69
  br label %80

78:                                               ; preds = %68
  br label %80

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79, %78, %74, %71, %68
  %81 = phi i32 [ %70, %68 ], [ 45158401, %71 ], [ 67737602, %78 ], [ 49152000, %79 ], [ %77, %74 ]
  switch i32 %45, label %82 [
    i32 73728000, label %96
    i32 67737600, label %94
    i32 49152000, label %95
  ]

82:                                               ; preds = %80
  %83 = add nsw i32 %45, -45158399
  %84 = icmp ult i32 %83, 3
  br i1 %84, label %96, label %85

85:                                               ; preds = %82
  %86 = add nsw i32 %45, -32767999
  %87 = icmp ult i32 %86, 3
  br i1 %87, label %96, label %88

88:                                               ; preds = %85
  %89 = icmp slt i32 %81, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %88
  %91 = load ptr, ptr %5, align 4
  %92 = getelementptr inbounds %struct.snd_soc_card, ptr %91, i32 0, i32 6
  %93 = load ptr, ptr %92, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.18, i32 noundef %45) #8
  br label %106

94:                                               ; preds = %80
  br label %96

95:                                               ; preds = %80
  br label %96

96:                                               ; preds = %95, %94, %88, %85, %82, %80
  %97 = phi i32 [ %81, %88 ], [ 32768001, %85 ], [ 45158401, %82 ], [ %45, %80 ], [ 67737602, %94 ], [ 49152000, %95 ]
  %98 = getelementptr inbounds %struct.snow_priv, ptr %8, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = tail call i32 @clk_set_rate(ptr noundef %99, i32 noundef %97) #7
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load ptr, ptr %5, align 4
  %104 = getelementptr inbounds %struct.snd_soc_card, ptr %103, i32 0, i32 6
  %105 = load ptr, ptr %104, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.19) #8
  br label %106

106:                                              ; preds = %102, %96, %90, %36, %32, %25
  %107 = phi i32 [ %23, %25 ], [ -22, %32 ], [ -22, %90 ], [ %100, %102 ], [ -22, %36 ], [ 0, %96 ]
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

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
