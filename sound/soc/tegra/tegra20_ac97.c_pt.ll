; ModuleID = '/llk/IR/sound/soc/tegra/tegra20_ac97.c_pt.bc'
source_filename = "../sound/soc/tegra/tegra20_ac97.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.tegra20_ac97 = type { ptr, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, ptr, ptr, i32, i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }

@__UNIQUE_ID_author233 = internal constant [19 x i8] c"author=Lucas Stach\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [37 x i8] c"description=Tegra20 AC97 ASoC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias236 = internal constant [28 x i8] c"alias=platform:tegra20-ac97\00", section ".modinfo", align 1
@tegra20_ac97_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-ac97\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@tegra20_ac97_driver = internal global %struct.platform_driver { ptr @tegra20_ac97_platform_probe, ptr @tegra20_ac97_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra20_ac97_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"tegra20-ac97\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ac97\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Can't retrieve ac97 reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Can't retrieve ac97 clock\0A\00", align 1
@tegra20_ac97_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @tegra20_ac97_wr_rd_reg, ptr @tegra20_ac97_wr_rd_reg, ptr @tegra20_ac97_volatile_reg, ptr @tegra20_ac97_precious_reg, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 128, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"regmap init failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"nvidia,codec-reset-gpio\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"codec-reset\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"could not get codec-reset GPIO\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"no codec-reset GPIO supplied\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"nvidia,codec-sync-gpio\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"no codec-sync GPIO supplied\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Failed to assert AC'97 reset: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"clk_enable failed: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Failed to deassert AC'97 reset: %d\0A\00", align 1
@tegra20_ac97_ops = internal global %struct.snd_ac97_bus_ops { ptr @tegra20_ac97_codec_reset, ptr @tegra20_ac97_codec_warm_reset, ptr @tegra20_ac97_codec_write, ptr @tegra20_ac97_codec_read, ptr null, ptr null }, align 4
@.str.14 = private unnamed_addr constant [29 x i8] c"Failed to set AC'97 ops: %d\0A\00", align 1
@tegra20_ac97_component = internal constant %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@tegra20_ac97_dai = internal global %struct.snd_soc_dai_driver { ptr @.str.18, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra20_ac97_probe, ptr null, ptr null, ptr null, ptr @tegra20_ac97_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.19, i64 4, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.20, i64 4, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, align 8
@.str.15 = private unnamed_addr constant [28 x i8] c"Could not register DAI: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Could not register PCM: %d\0A\00", align 1
@workdata = internal unnamed_addr global ptr null, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.17 = private unnamed_addr constant [11 x i8] c"codec-sync\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"tegra-ac97-pcm\00", align 1
@tegra20_ac97_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra20_ac97_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"PCM Capture\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"PCM Playback\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias236, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_license235], section "llvm.metadata"

@__mod_of__tegra20_ac97_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @tegra20_ac97_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra20_ac97_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra20_ac97_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_ac97_platform_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 92, i32 noundef 3520) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %95, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %6, align 8
  %7 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %8 = getelementptr inbounds %struct.tegra20_ac97, ptr %3, i32 0, i32 3
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #8
  %11 = load ptr, ptr %8, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %98

13:                                               ; preds = %5
  %14 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #7
  store ptr %14, ptr %3, align 4
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #8
  %17 = load ptr, ptr %3, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %95

19:                                               ; preds = %13
  %20 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %21 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %20) #7
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = ptrtoint ptr %21 to i32
  br label %95

25:                                               ; preds = %19
  %26 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %2, ptr noundef null, ptr noundef %21, ptr noundef nonnull @tegra20_ac97_regmap_config, ptr noundef null, ptr noundef null) #7
  %27 = getelementptr inbounds %struct.tegra20_ac97, ptr %3, i32 0, i32 4
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #8
  %30 = load ptr, ptr %27, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %95

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %34 = load ptr, ptr %33, align 8
  %35 = tail call i32 @of_get_named_gpio_flags(ptr noundef %34, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef null) #7
  %36 = getelementptr inbounds %struct.tegra20_ac97, ptr %3, i32 0, i32 5
  store i32 %35, ptr %36, align 4
  %37 = icmp ult i32 %35, 2048
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = tail call i32 @devm_gpio_request_one(ptr noundef %2, i32 noundef %35, i32 noundef 2, ptr noundef nonnull @.str.6) #7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #8
  br label %95

42:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #8
  br label %95

43:                                               ; preds = %38
  %44 = load ptr, ptr %33, align 8
  %45 = tail call i32 @of_get_named_gpio_flags(ptr noundef %44, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef null) #7
  %46 = getelementptr inbounds %struct.tegra20_ac97, ptr %3, i32 0, i32 6
  store i32 %45, ptr %46, align 4
  %47 = icmp ult i32 %45, 2048
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #8
  br label %95

49:                                               ; preds = %43
  %50 = load i32, ptr %20, align 4
  %51 = add i32 %50, 128
  %52 = getelementptr inbounds %struct.tegra20_ac97, ptr %3, i32 0, i32 1
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.tegra20_ac97, ptr %3, i32 0, i32 1, i32 1
  store i32 4, ptr %53, align 4
  %54 = getelementptr inbounds %struct.tegra20_ac97, ptr %3, i32 0, i32 1, i32 2
  store i32 4, ptr %54, align 4
  %55 = load i32, ptr %20, align 4
  %56 = add i32 %55, 64
  %57 = getelementptr inbounds %struct.tegra20_ac97, ptr %3, i32 0, i32 2
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.tegra20_ac97, ptr %3, i32 0, i32 2, i32 1
  store i32 4, ptr %58, align 4
  %59 = getelementptr inbounds %struct.tegra20_ac97, ptr %3, i32 0, i32 2, i32 2
  store i32 4, ptr %59, align 4
  %60 = load ptr, ptr %8, align 4
  %61 = tail call i32 @reset_control_assert(ptr noundef %60) #7
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %49
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %61) #8
  br label %95

64:                                               ; preds = %49
  %65 = load ptr, ptr %3, align 4
  %66 = tail call i32 @clk_prepare(ptr noundef %65) #7
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = tail call i32 @clk_enable(ptr noundef %65) #7
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  tail call void @clk_unprepare(ptr noundef %65) #7
  br label %72

72:                                               ; preds = %71, %64
  %73 = phi i32 [ %69, %71 ], [ %66, %64 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %73) #8
  br label %95

74:                                               ; preds = %68
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #7
  %75 = load ptr, ptr %8, align 4
  %76 = tail call i32 @reset_control_deassert(ptr noundef %75) #7
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %76) #8
  br label %92

79:                                               ; preds = %74
  %80 = tail call i32 @snd_soc_set_ac97_ops(ptr noundef nonnull @tegra20_ac97_ops) #7
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %80) #8
  br label %92

83:                                               ; preds = %79
  %84 = tail call i32 @snd_soc_register_component(ptr noundef %2, ptr noundef nonnull @tegra20_ac97_component, ptr noundef nonnull @tegra20_ac97_dai, i32 noundef 1) #7
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef %84) #8
  br label %92

87:                                               ; preds = %83
  %88 = tail call i32 @tegra_pcm_platform_register(ptr noundef %2) #7
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %88) #8
  tail call void @snd_soc_unregister_component(ptr noundef %2) #7
  br label %92

91:                                               ; preds = %87
  store ptr %3, ptr @workdata, align 4
  br label %98

92:                                               ; preds = %90, %86, %82, %78
  %93 = phi i32 [ %76, %78 ], [ %80, %82 ], [ -12, %86 ], [ %88, %90 ]
  %94 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %94) #7
  tail call void @clk_unprepare(ptr noundef %94) #7
  br label %95

95:                                               ; preds = %92, %72, %63, %48, %42, %41, %29, %23, %16, %1
  %96 = phi i32 [ %18, %16 ], [ %24, %23 ], [ %31, %29 ], [ %39, %41 ], [ %61, %63 ], [ %73, %72 ], [ %93, %92 ], [ 0, %48 ], [ 0, %42 ], [ -12, %1 ]
  %97 = tail call i32 @snd_soc_set_ac97_ops(ptr noundef null) #7
  br label %98

98:                                               ; preds = %95, %91, %10
  %99 = phi i32 [ %12, %10 ], [ %96, %95 ], [ 0, %91 ]
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_ac97_platform_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void @tegra_pcm_platform_unregister(ptr noundef %2) #7
  tail call void @snd_soc_unregister_component(ptr noundef %2) #7
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  %6 = tail call i32 @snd_soc_set_ac97_ops(ptr noundef null) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_ac97_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_pcm_platform_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra20_ac97_wr_rd_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  switch i32 %1, label %3 [
    i32 0, label %4
    i32 4, label %4
    i32 8, label %4
    i32 28, label %4
    i32 64, label %4
    i32 128, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra20_ac97_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  switch i32 %1, label %3 [
    i32 8, label %4
    i32 28, label %4
    i32 64, label %4
    i32 128, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra20_ac97_precious_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = add i32 %1, -64
  %4 = and i32 %3, -65
  %5 = icmp eq i32 %4, 0
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra20_ac97_codec_reset(ptr nocapture noundef readnone %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = load ptr, ptr @workdata, align 4
  %4 = getelementptr inbounds %struct.tegra20_ac97, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = tail call ptr @gpio_to_desc(i32 noundef %5) #7
  tail call void @gpiod_set_raw_value(ptr noundef %6, i32 noundef 0) #7
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 429496) #7
  %8 = load ptr, ptr @workdata, align 4
  %9 = getelementptr inbounds %struct.tegra20_ac97, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @gpio_to_desc(i32 noundef %10) #7
  tail call void @gpiod_set_raw_value(ptr noundef %11, i32 noundef 1) #7
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 429496) #7
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = add i32 %13, 10
  br label %15

15:                                               ; preds = %23, %1
  %16 = load ptr, ptr @workdata, align 4
  %17 = getelementptr inbounds %struct.tegra20_ac97, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @regmap_read(ptr noundef %18, i32 noundef 8, ptr noundef nonnull %2) #7
  %20 = load i32, ptr %2, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %24 = load volatile i32, ptr @jiffies, align 64
  %25 = sub i32 %14, %24
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %15, label %27

27:                                               ; preds = %23, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra20_ac97_codec_warm_reset(ptr nocapture noundef readnone %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = load ptr, ptr @workdata, align 4
  %4 = getelementptr inbounds %struct.tegra20_ac97, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @gpio_request(i32 noundef %5, ptr noundef nonnull @.str.17) #7
  %7 = load ptr, ptr @workdata, align 4
  %8 = getelementptr inbounds %struct.tegra20_ac97, ptr %7, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @gpio_to_desc(i32 noundef %9) #7
  %11 = tail call i32 @gpiod_direction_output_raw(ptr noundef %10, i32 noundef 1) #7
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 429496) #7
  %13 = load ptr, ptr @workdata, align 4
  %14 = getelementptr inbounds %struct.tegra20_ac97, ptr %13, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @gpio_to_desc(i32 noundef %15) #7
  tail call void @gpiod_set_raw_value(ptr noundef %16, i32 noundef 0) #7
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 429496) #7
  %18 = load ptr, ptr @workdata, align 4
  %19 = getelementptr inbounds %struct.tegra20_ac97, ptr %18, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  tail call void @gpio_free(i32 noundef %20) #7
  %21 = load volatile i32, ptr @jiffies, align 64
  %22 = add i32 %21, 10
  br label %23

23:                                               ; preds = %31, %1
  %24 = load ptr, ptr @workdata, align 4
  %25 = getelementptr inbounds %struct.tegra20_ac97, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 @regmap_read(ptr noundef %26, i32 noundef 8, ptr noundef nonnull %2) #7
  %28 = load i32, ptr %2, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %32 = load volatile i32, ptr @jiffies, align 64
  %33 = sub i32 %22, %32
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %23, label %35

35:                                               ; preds = %31, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra20_ac97_codec_write(ptr nocapture noundef readnone %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = load ptr, ptr @workdata, align 4
  %6 = getelementptr inbounds %struct.tegra20_ac97, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = zext i16 %1 to i32
  %9 = shl i32 %8, 24
  %10 = zext i16 %2 to i32
  %11 = shl nuw nsw i32 %10, 8
  %12 = or i32 %11, %9
  %13 = or i32 %12, 1
  %14 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 4, i32 noundef %13) #7
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = add i32 %15, 10
  br label %17

17:                                               ; preds = %25, %3
  %18 = load ptr, ptr @workdata, align 4
  %19 = getelementptr inbounds %struct.tegra20_ac97, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 @regmap_read(ptr noundef %20, i32 noundef 4, ptr noundef nonnull %4) #7
  %22 = load i32, ptr %4, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %26 = load volatile i32, ptr @jiffies, align 64
  %27 = sub i32 %16, %26
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %17, label %29

29:                                               ; preds = %25, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @tegra20_ac97_codec_read(ptr nocapture noundef readnone %0, i16 noundef zeroext %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = load ptr, ptr @workdata, align 4
  %5 = getelementptr inbounds %struct.tegra20_ac97, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = or i16 %1, 128
  %8 = zext i16 %7 to i32
  %9 = shl i32 %8, 24
  %10 = or i32 %9, 1
  %11 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 4, i32 noundef %10) #7
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = add i32 %12, 10
  br label %14

14:                                               ; preds = %22, %2
  %15 = load ptr, ptr @workdata, align 4
  %16 = getelementptr inbounds %struct.tegra20_ac97, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 @regmap_read(ptr noundef %17, i32 noundef 8, ptr noundef nonnull %3) #7
  %19 = load i32, ptr %3, align 4
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = sub i32 %13, %23
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %14, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %3, align 4
  br label %28

28:                                               ; preds = %26, %14
  %29 = phi i32 [ %27, %26 ], [ %19, %14 ]
  %30 = lshr i32 %29, 8
  %31 = trunc i32 %30 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i16 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tegra20_ac97_probe(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tegra20_ac97, ptr %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 8
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.tegra20_ac97, ptr %5, i32 0, i32 2
  %9 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 7
  store ptr %8, ptr %9, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_ac97_trigger(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  switch i32 %1, label %32 [
    i32 1, label %8
    i32 4, label %8
    i32 6, label %8
    i32 0, label %20
    i32 3, label %20
    i32 5, label %20
  ]

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.tegra20_ac97, ptr %7, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  br i1 %11, label %14, label %18

14:                                               ; preds = %8
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 28, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %16 = load ptr, ptr %12, align 4
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 0, i32 noundef 9, i32 noundef 9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %32

18:                                               ; preds = %8
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 28, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %32

20:                                               ; preds = %3, %3, %3
  %21 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.tegra20_ac97, ptr %7, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  br i1 %23, label %26, label %30

26:                                               ; preds = %20
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 28, i32 noundef 1024, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %28 = load ptr, ptr %24, align 4
  %29 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 0, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %32

30:                                               ; preds = %20
  %31 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 28, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %32

32:                                               ; preds = %30, %26, %18, %14, %3
  %33 = phi i32 [ -22, %3 ], [ 0, %26 ], [ 0, %30 ], [ 0, %14 ], [ 0, %18 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_pcm_platform_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
