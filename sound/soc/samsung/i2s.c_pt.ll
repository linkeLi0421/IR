; ModuleID = '/llk/IR/sound/soc/samsung/i2s.c_pt.bc'
source_filename = "../sound/soc/samsung/i2s.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.samsung_i2s_dai_data = type { i32, i32, ptr }
%struct.samsung_i2s_variant_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.88, ptr }
%union.anon.88 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
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
%struct.s3c_audio_pdata = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.samsung_i2s_type }
%struct.samsung_i2s_type = type { i32, i32 }
%struct.samsung_i2s_priv = type { ptr, ptr, %struct.spinlock, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, [3 x ptr], %struct.clk_onecell_data, %struct.spinlock, ptr, i8 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.i2s_dai = type { ptr, i32, i32, i32, ptr, ptr, i32, ptr, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, ptr, ptr }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }

@samsung_i2s_driver_ids = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"samsung-i2s\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @i2sv3_dai_type to i32) }, %struct.platform_device_id zeroinitializer], align 4
@exynos_i2s_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c6410-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @i2sv3_dai_type }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @i2sv5_dai_type }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @i2sv6_dai_type }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @i2sv7_dai_type }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-i2s1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @i2sv5_dai_type_i2s1 }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author233 = internal constant [51 x i8] c"author=Jaswinder Singh, <jassisinghbrar@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [34 x i8] c"description=Samsung I2S Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_alias235 = internal constant [27 x i8] c"alias=platform:samsung-i2s\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@i2sv3_dai_type = internal constant %struct.samsung_i2s_dai_data { i32 4, i32 2046, ptr @i2sv3_regs }, align 4
@i2sv3_regs = internal constant %struct.samsung_i2s_variant_regs { i32 1, i32 3, i32 5, i32 8, i32 10, i32 11, i32 12, i32 7, i32 3, i32 3, i32 8 }, align 4
@i2sv5_dai_type = internal constant %struct.samsung_i2s_dai_data { i32 43, i32 2046, ptr @i2sv3_regs }, align 4
@i2sv6_dai_type = internal constant %struct.samsung_i2s_dai_data { i32 59, i32 2046, ptr @i2sv6_regs }, align 4
@i2sv7_dai_type = internal constant %struct.samsung_i2s_dai_data { i32 27, i32 8190, ptr @i2sv7_regs }, align 4
@i2sv5_dai_type_i2s1 = internal constant %struct.samsung_i2s_dai_data { i32 9, i32 2046, ptr @i2sv5_i2s1_regs }, align 4
@i2sv6_regs = internal constant %struct.samsung_i2s_variant_regs { i32 0, i32 4, i32 6, i32 8, i32 10, i32 11, i32 12, i32 15, i32 15, i32 3, i32 8 }, align 4
@i2sv7_regs = internal constant %struct.samsung_i2s_variant_regs { i32 0, i32 4, i32 7, i32 9, i32 11, i32 12, i32 22, i32 15, i32 15, i32 7, i32 0 }, align 4
@i2sv5_i2s1_regs = internal constant %struct.samsung_i2s_variant_regs { i32 0, i32 3, i32 6, i32 8, i32 10, i32 11, i32 12, i32 15, i32 7, i32 7, i32 8 }, align 4
@samsung_i2s_driver = internal global %struct.platform_driver { ptr @samsung_i2s_probe, ptr @samsung_i2s_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_i2s_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_i2s_pm, ptr null, ptr null }, ptr @samsung_i2s_driver_ids, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"samsung-i2s\00", align 1
@samsung_i2s_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2s_runtime_suspend, ptr @i2s_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Missing platform data\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"samsung,idma-addr\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"idma address is notspecified\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"iis\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed to get iis clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to enable clock: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"tx-sec\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Unable to configure gpio\0A\00", align 1
@samsung_i2s_component = internal constant %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr @samsung_i2s_widgets, i32 3, ptr @samsung_i2s_dapm_routes, i32 4, ptr null, ptr null, ptr @i2s_suspend, ptr @i2s_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@i2s_alloc_dais.dai_names = internal unnamed_addr constant [2 x ptr] [ptr @.str, ptr @.str.11], align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"samsung-i2s-sec\00", align 1
@i2s_alloc_dais.stream_names = internal unnamed_addr constant [2 x ptr] [ptr @.str.12, ptr @.str.13], align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"Primary Playback\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Secondary Playback\00", align 1
@samsung_i2s_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr @i2s_set_sysclk, ptr null, ptr @i2s_set_clkdiv, ptr null, ptr @i2s_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2s_startup, ptr @i2s_shutdown, ptr @i2s_hw_params, ptr null, ptr null, ptr @i2s_trigger, ptr null, ptr @i2s_delay, ptr null, i32 0, i8 0 }, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"Primary Capture\00", align 1
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [22 x i8] c"%s:%d Other DAI busy\0A\00", align 1
@__func__.i2s_set_sysclk = private unnamed_addr constant [15 x i8] c"i2s_set_sysclk\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"i2s_opclk1\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"i2s_opclk0\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"sound/soc/samsung/i2s.c\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"We don't serve that!\0A\00", align 1
@__func__.i2s_set_clkdiv = private unnamed_addr constant [15 x i8] c"i2s_set_clkdiv\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"Invalid clock divider(%d)\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Format not supported\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"Polarity not supported\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"master/slave format not supported\0A\00", align 1
@__func__.i2s_set_fmt = private unnamed_addr constant [12 x i8] c"i2s_set_fmt\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"%d channels not supported\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"Format(%d) not supported\0A\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"%d-RFS not supported for 24-blc\0A\00", align 1
@__func__.config_setup = private unnamed_addr constant [13 x i8] c"config_setup\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"Unsupported BCLK divider\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"Wrong BCLK Divider!\0A\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"%s-sec\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"device_attach() failed\0A\00", align 1
@samsung_i2s_dapm_routes = internal constant [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.33, ptr null, ptr @.str.12, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.33, ptr null, ptr @.str.13, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.31, ptr null, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str.31 = private unnamed_addr constant [13 x i8] c"Mixer DAI TX\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"Mixer DAI RX\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"Playback Mixer\00", align 1
@samsung_i2s_widgets = internal constant [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.31, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.32, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.33, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.35 = private unnamed_addr constant [6 x i8] c"cdclk\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"rclk_src\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"prescaler\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"%s_%s\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"failed to add clock provider: %d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias235, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_license236], section "llvm.metadata"
@switch.table.i2s_trigger = private unnamed_addr constant [7 x i32] [i32 512, i32 384, i32 768, i32 64, i32 128, i32 96, i32 192], align 4
@switch.table.i2s_trigger.41 = private unnamed_addr constant [8 x i32] [i32 48, i32 16, i32 24, i32 64, i32 96, i32 128, i32 192, i32 256], align 4

@__mod_platform__samsung_i2s_driver_ids_device_table = dso_local alias [2 x %struct.platform_device_id], ptr @samsung_i2s_driver_ids
@__mod_of__exynos_i2s_match_device_table = dso_local alias [6 x %struct.of_device_id], ptr @exynos_i2s_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @samsung_i2s_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @samsung_i2s_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_i2s_probe(ptr noundef %0) #2 {
  %2 = alloca [2 x ptr], align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store ptr null, ptr %4, align 4, !annotation !8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %359, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.platform_device_id, ptr %13, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 88, i32 noundef 3520) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %359, label %25

21:                                               ; preds = %1
  %22 = tail call ptr @of_device_get_match_data(ptr noundef %5) #6
  %23 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 88, i32 noundef 3520) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %359, label %30

25:                                               ; preds = %15
  %26 = icmp eq ptr %7, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #7
  br label %359

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.s3c_audio_pdata, ptr %7, i32 0, i32 6
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi ptr [ %29, %28 ], [ %22, %21 ]
  %32 = phi ptr [ %19, %28 ], [ %23, %21 ]
  %33 = phi ptr [ %18, %28 ], [ %22, %21 ]
  %34 = load i32, ptr %31, align 4
  %35 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %32, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %32, i32 0, i32 13
  %37 = and i32 %34, 2
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 1, i32 2
  store ptr %0, ptr %32, align 4
  %40 = getelementptr inbounds %struct.samsung_i2s_dai_data, ptr %33, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %32, i32 0, i32 12
  store ptr %41, ptr %42, align 4
  %43 = mul nuw nsw i32 %39, 148
  %44 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %43, i32 noundef 3520) #6
  %45 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %32, i32 0, i32 3
  store ptr %44, ptr %45, align 4
  %46 = icmp eq ptr %44, null
  br i1 %46, label %359, label %47

47:                                               ; preds = %30
  %48 = mul nuw nsw i32 %39, 168
  %49 = load ptr, ptr %32, align 4
  %50 = getelementptr inbounds %struct.platform_device, ptr %49, i32 0, i32 3
  %51 = tail call noalias ptr @devm_kmalloc(ptr noundef %50, i32 noundef %48, i32 noundef 3520) #6
  %52 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %32, i32 0, i32 4
  store ptr %51, ptr %52, align 4
  %53 = icmp eq ptr %51, null
  br i1 %53, label %359, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.samsung_i2s_dai_data, ptr %33, i32 0, i32 1
  br label %56

56:                                               ; preds = %56, %54
  %57 = phi ptr [ %51, %54 ], [ %86, %56 ]
  %58 = phi i32 [ 0, %54 ], [ %74, %56 ]
  %59 = getelementptr %struct.snd_soc_dai_driver, ptr %57, i32 %58
  %60 = getelementptr %struct.snd_soc_dai_driver, ptr %57, i32 %58, i32 4
  store ptr @samsung_i2s_dai_probe, ptr %60, align 8
  %61 = getelementptr %struct.snd_soc_dai_driver, ptr %57, i32 %58, i32 5
  store ptr @samsung_i2s_dai_remove, ptr %61, align 4
  %62 = getelementptr %struct.snd_soc_dai_driver, ptr %57, i32 %58, i32 12
  %63 = load i8, ptr %62, align 8
  %64 = or i8 %63, 1
  store i8 %64, ptr %62, align 8
  %65 = getelementptr %struct.snd_soc_dai_driver, ptr %57, i32 %58, i32 8
  store ptr @samsung_i2s_dai_ops, ptr %65, align 8
  %66 = getelementptr %struct.snd_soc_dai_driver, ptr %57, i32 %58, i32 11
  %67 = getelementptr %struct.snd_soc_dai_driver, ptr %57, i32 %58, i32 11, i32 5
  store i32 1, ptr %67, align 4
  %68 = getelementptr %struct.snd_soc_dai_driver, ptr %57, i32 %58, i32 11, i32 6
  store i32 2, ptr %68, align 8
  %69 = load i32, ptr %55, align 4
  %70 = getelementptr %struct.snd_soc_dai_driver, ptr %57, i32 %58, i32 11, i32 2
  store i32 %69, ptr %70, align 8
  %71 = getelementptr %struct.snd_soc_dai_driver, ptr %57, i32 %58, i32 11, i32 1
  store i64 69, ptr %71, align 8
  %72 = getelementptr [2 x ptr], ptr @i2s_alloc_dais.stream_names, i32 0, i32 %58
  %73 = load ptr, ptr %72, align 4
  store ptr %73, ptr %66, align 8
  %74 = add nuw nsw i32 %58, 1
  %75 = getelementptr %struct.snd_soc_dai_driver, ptr %57, i32 %58, i32 1
  store i32 %74, ptr %75, align 4
  %76 = getelementptr [2 x ptr], ptr @i2s_alloc_dais.dai_names, i32 0, i32 %58
  %77 = load ptr, ptr %76, align 4
  store ptr %77, ptr %59, align 8
  %78 = load ptr, ptr %52, align 4
  %79 = getelementptr %struct.snd_soc_dai_driver, ptr %78, i32 %58
  %80 = load ptr, ptr %45, align 4
  %81 = getelementptr %struct.i2s_dai, ptr %80, i32 %58, i32 7
  store ptr %79, ptr %81, align 4
  %82 = load ptr, ptr %32, align 4
  %83 = load ptr, ptr %45, align 4
  %84 = getelementptr %struct.i2s_dai, ptr %83, i32 %58
  store ptr %82, ptr %84, align 4
  %85 = icmp eq i32 %74, %39
  %86 = load ptr, ptr %52, align 4
  br i1 %85, label %87, label %56

87:                                               ; preds = %56
  %88 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %86, i32 0, i32 10
  %89 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %86, i32 0, i32 10, i32 5
  store i32 1, ptr %89, align 4
  %90 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %86, i32 0, i32 10, i32 6
  store i32 2, ptr %90, align 8
  %91 = load i32, ptr %55, align 4
  %92 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %86, i32 0, i32 10, i32 2
  store i32 %91, ptr %92, align 8
  %93 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %86, i32 0, i32 10, i32 1
  store i64 69, ptr %93, align 8
  store ptr @.str.14, ptr %88, align 8
  %94 = load ptr, ptr %45, align 4
  %95 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %32, i32 0, i32 16
  store i32 0, ptr %95, align 4
  %96 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %32, i32 0, i32 2
  store i32 0, ptr %96, align 4
  br i1 %10, label %97, label %109

97:                                               ; preds = %87
  %98 = getelementptr inbounds %struct.s3c_audio_pdata, ptr %7, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.i2s_dai, ptr %94, i32 0, i32 8, i32 3
  store ptr %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.s3c_audio_pdata, ptr %7, i32 0, i32 3
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.i2s_dai, ptr %94, i32 0, i32 9, i32 3
  store ptr %102, ptr %103, align 4
  %104 = getelementptr inbounds %struct.s3c_audio_pdata, ptr %7, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.i2s_dai, ptr %94, i32 0, i32 11
  store ptr %105, ptr %106, align 4
  %107 = getelementptr inbounds %struct.s3c_audio_pdata, ptr %7, i32 0, i32 6, i32 1
  %108 = load i32, ptr %107, align 4
  store i32 %108, ptr %3, align 4
  br label %117

109:                                              ; preds = %87
  %110 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.2, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #6
  %111 = icmp sgt i32 %110, -1
  br i1 %111, label %117, label %112

112:                                              ; preds = %109
  %113 = load i32, ptr %36, align 4
  %114 = and i32 %113, 32
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.3) #7
  br label %117

117:                                              ; preds = %116, %112, %109, %97
  %118 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #6
  %119 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %32, i32 0, i32 17
  store ptr %118, ptr %119, align 4
  %120 = icmp ugt ptr %118, inttoptr (i32 -4096 to ptr)
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = ptrtoint ptr %118 to i32
  br label %359

123:                                              ; preds = %117
  %124 = load ptr, ptr %4, align 4
  %125 = load i32, ptr %124, align 4
  %126 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.4) #6
  %127 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %32, i32 0, i32 6
  store ptr %126, ptr %127, align 4
  %128 = icmp ugt ptr %126, inttoptr (i32 -4096 to ptr)
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5) #7
  %130 = load ptr, ptr %127, align 4
  %131 = ptrtoint ptr %130 to i32
  br label %359

132:                                              ; preds = %123
  %133 = call i32 @clk_prepare(ptr noundef %126) #6
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = call i32 @clk_enable(ptr noundef %126) #6
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  call void @clk_unprepare(ptr noundef %126) #6
  br label %139

139:                                              ; preds = %138, %132
  %140 = phi i32 [ %136, %138 ], [ %133, %132 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %140) #7
  br label %359

141:                                              ; preds = %135
  %142 = add i32 %125, 16
  %143 = getelementptr inbounds %struct.i2s_dai, ptr %94, i32 0, i32 8
  store i32 %142, ptr %143, align 4
  %144 = add i32 %125, 20
  %145 = getelementptr inbounds %struct.i2s_dai, ptr %94, i32 0, i32 9
  store i32 %144, ptr %145, align 4
  %146 = getelementptr inbounds %struct.i2s_dai, ptr %94, i32 0, i32 8, i32 4
  store ptr @.str.7, ptr %146, align 4
  %147 = getelementptr inbounds %struct.i2s_dai, ptr %94, i32 0, i32 9, i32 4
  store ptr @.str.8, ptr %147, align 4
  %148 = getelementptr inbounds %struct.i2s_dai, ptr %94, i32 0, i32 8, i32 1
  store i32 4, ptr %148, align 4
  %149 = getelementptr inbounds %struct.i2s_dai, ptr %94, i32 0, i32 9, i32 1
  store i32 4, ptr %149, align 4
  %150 = getelementptr inbounds %struct.i2s_dai, ptr %94, i32 0, i32 12
  store ptr %32, ptr %150, align 4
  %151 = load i32, ptr %36, align 4
  %152 = and i32 %151, 1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %141
  %155 = getelementptr inbounds %struct.i2s_dai, ptr %94, i32 0, i32 7
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %156, i32 0, i32 11, i32 6
  store i32 6, ptr %157, align 8
  br label %158

158:                                              ; preds = %154, %141
  %159 = getelementptr inbounds %struct.i2s_dai, ptr %94, i32 0, i32 11
  %160 = load ptr, ptr %159, align 4
  %161 = call i32 @samsung_asoc_dma_platform_register(ptr noundef %5, ptr noundef %160, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef null) #6
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %356, label %163

163:                                              ; preds = %158
  %164 = load i32, ptr %36, align 4
  %165 = and i32 %164, 2
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %225, label %167

167:                                              ; preds = %163
  %168 = load ptr, ptr %45, align 4
  %169 = getelementptr %struct.i2s_dai, ptr %168, i32 1
  %170 = add i32 %125, 28
  %171 = getelementptr %struct.i2s_dai, ptr %168, i32 1, i32 8
  store i32 %170, ptr %171, align 4
  %172 = getelementptr %struct.i2s_dai, ptr %168, i32 1, i32 8, i32 4
  store ptr @.str.9, ptr %172, align 4
  br i1 %10, label %173, label %180

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.s3c_audio_pdata, ptr %7, i32 0, i32 4
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr %struct.i2s_dai, ptr %168, i32 1, i32 8, i32 3
  store ptr %175, ptr %176, align 4
  %177 = getelementptr inbounds %struct.s3c_audio_pdata, ptr %7, i32 0, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr %struct.i2s_dai, ptr %168, i32 1, i32 11
  store ptr %178, ptr %179, align 4
  br label %180

180:                                              ; preds = %173, %167
  %181 = getelementptr %struct.i2s_dai, ptr %168, i32 1, i32 8, i32 1
  store i32 4, ptr %181, align 4
  %182 = load i32, ptr %3, align 4
  %183 = getelementptr %struct.i2s_dai, ptr %168, i32 1, i32 10
  store i32 %182, ptr %183, align 4
  %184 = getelementptr %struct.i2s_dai, ptr %168, i32 1, i32 4
  store ptr %94, ptr %184, align 4
  %185 = getelementptr %struct.i2s_dai, ptr %168, i32 1, i32 12
  store ptr %32, ptr %185, align 4
  %186 = getelementptr inbounds %struct.i2s_dai, ptr %94, i32 0, i32 5
  store ptr %169, ptr %186, align 4
  %187 = load ptr, ptr %32, align 4
  %188 = getelementptr inbounds %struct.platform_device, ptr %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.platform_device, ptr %187, i32 0, i32 3, i32 3
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %194

192:                                              ; preds = %180
  %193 = load ptr, ptr %188, align 4
  br label %194

194:                                              ; preds = %192, %180
  %195 = phi ptr [ %193, %192 ], [ %190, %180 ]
  %196 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %188, i32 noundef 3264, ptr noundef nonnull @.str.29, ptr noundef %195) #6
  %197 = icmp eq ptr %196, null
  br i1 %197, label %356, label %198

198:                                              ; preds = %194
  %199 = call ptr @platform_device_alloc(ptr noundef nonnull %196, i32 noundef -1) #6
  %200 = icmp eq ptr %199, null
  br i1 %200, label %356, label %201

201:                                              ; preds = %198
  %202 = call noalias ptr @kstrdup(ptr noundef nonnull @.str, i32 noundef 3264) #6
  %203 = getelementptr inbounds %struct.platform_device, ptr %199, i32 0, i32 9
  store ptr %202, ptr %203, align 8
  %204 = call i32 @platform_device_add(ptr noundef nonnull %199) #6
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  call void @platform_device_put(ptr noundef nonnull %199) #6
  br label %356

207:                                              ; preds = %201
  %208 = getelementptr inbounds %struct.platform_device, ptr %199, i32 0, i32 3
  %209 = call i32 @device_attach(ptr noundef %208) #6
  %210 = icmp slt i32 %209, 1
  %211 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %32, i32 0, i32 1
  br i1 %210, label %213, label %212

212:                                              ; preds = %207
  store ptr %199, ptr %211, align 4
  br label %218

213:                                              ; preds = %207
  %214 = load ptr, ptr %211, align 4
  call void @platform_device_unregister(ptr noundef %214) #6
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %208, ptr noundef nonnull @.str.30) #7
  %215 = icmp slt i32 %209, 0
  br i1 %215, label %356, label %216

216:                                              ; preds = %213
  %217 = load ptr, ptr %211, align 4
  br label %218

218:                                              ; preds = %216, %212
  %219 = phi ptr [ %217, %216 ], [ %199, %212 ]
  %220 = getelementptr inbounds %struct.platform_device, ptr %219, i32 0, i32 3
  %221 = getelementptr %struct.i2s_dai, ptr %168, i32 1, i32 11
  %222 = load ptr, ptr %221, align 4
  %223 = call i32 @samsung_asoc_dma_platform_register(ptr noundef %220, ptr noundef %222, ptr noundef nonnull @.str.9, ptr noundef null, ptr noundef %5) #6
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %352, label %225

225:                                              ; preds = %218, %163
  %226 = icmp eq ptr %7, null
  br i1 %226, label %234, label %227

227:                                              ; preds = %225
  %228 = load ptr, ptr %7, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %234, label %230

230:                                              ; preds = %227
  %231 = call i32 %228(ptr noundef %0) #6
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %230
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.10) #7
  br label %352

234:                                              ; preds = %230, %227, %225
  %235 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %32, ptr %235, align 8
  %236 = load ptr, ptr %52, align 4
  %237 = call i32 @devm_snd_soc_register_component(ptr noundef %5, ptr noundef nonnull @samsung_i2s_component, ptr noundef %236, i32 noundef %39) #6
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %352, label %239

239:                                              ; preds = %234
  %240 = call i32 @__pm_runtime_set_status(ptr noundef %5, i32 noundef 0) #6
  call void @pm_runtime_enable(ptr noundef %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  store i64 0, ptr %2, align 8
  %241 = load ptr, ptr %32, align 4
  %242 = getelementptr inbounds %struct.platform_device, ptr %241, i32 0, i32 3
  %243 = load ptr, ptr %42, align 4
  %244 = getelementptr inbounds %struct.platform_device, ptr %241, i32 0, i32 3, i32 25
  %245 = load ptr, ptr %244, align 8
  %246 = call ptr @of_find_property(ptr noundef %245, ptr noundef nonnull @.str.38, ptr noundef null) #6
  %247 = icmp eq ptr %246, null
  br i1 %247, label %345, label %248

248:                                              ; preds = %239
  %249 = call ptr @clk_get(ptr noundef %242, ptr noundef nonnull @.str.17) #6
  %250 = icmp ugt ptr %249, inttoptr (i32 -4096 to ptr)
  br i1 %250, label %253, label %251

251:                                              ; preds = %248
  %252 = call ptr @__clk_get_name(ptr noundef %249) #6
  store ptr %252, ptr %2, align 8
  call void @clk_put(ptr noundef %249) #6
  br label %253

253:                                              ; preds = %251, %248
  %254 = phi ptr [ null, %248 ], [ %252, %251 ]
  %255 = call ptr @clk_get(ptr noundef %242, ptr noundef nonnull @.str.16) #6
  %256 = icmp ugt ptr %255, inttoptr (i32 -4096 to ptr)
  br i1 %256, label %260, label %257

257:                                              ; preds = %253
  %258 = call ptr @__clk_get_name(ptr noundef %255) #6
  %259 = getelementptr inbounds [2 x ptr], ptr %2, i32 0, i32 1
  store ptr %258, ptr %259, align 4
  call void @clk_put(ptr noundef %255) #6
  br label %260

260:                                              ; preds = %257, %253
  %261 = getelementptr inbounds %struct.platform_device, ptr %241, i32 0, i32 3, i32 3
  %262 = load ptr, ptr %261, align 4
  %263 = icmp eq ptr %262, null
  br i1 %263, label %286, label %288

264:                                              ; preds = %288
  %265 = load ptr, ptr %261, align 4
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %269

267:                                              ; preds = %264
  %268 = load ptr, ptr %242, align 4
  br label %269

269:                                              ; preds = %267, %264
  %270 = phi ptr [ %268, %267 ], [ %265, %264 ]
  %271 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %242, i32 noundef 3264, ptr noundef nonnull @.str.39, ptr noundef %270, ptr noundef nonnull @.str.36) #6
  %272 = icmp eq ptr %271, null
  br i1 %272, label %342, label %273

273:                                              ; preds = %269
  %274 = load ptr, ptr %261, align 4
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %278

276:                                              ; preds = %273
  %277 = load ptr, ptr %242, align 4
  br label %278

278:                                              ; preds = %276, %273
  %279 = phi ptr [ %277, %276 ], [ %274, %273 ]
  %280 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %242, i32 noundef 3264, ptr noundef nonnull @.str.39, ptr noundef %279, ptr noundef nonnull @.str.37) #6
  %281 = icmp eq ptr %280, null
  br i1 %281, label %342, label %282

282:                                              ; preds = %278
  %283 = load i32, ptr %36, align 4
  %284 = and i32 %283, 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %292, label %311

286:                                              ; preds = %260
  %287 = load ptr, ptr %242, align 4
  br label %288

288:                                              ; preds = %286, %260
  %289 = phi ptr [ %287, %286 ], [ %262, %260 ]
  %290 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %242, i32 noundef 3264, ptr noundef nonnull @.str.39, ptr noundef %289, ptr noundef nonnull @.str.35) #6
  %291 = icmp eq ptr %290, null
  br i1 %291, label %342, label %264

292:                                              ; preds = %282
  %293 = load ptr, ptr %119, align 4
  %294 = getelementptr i8, ptr %293, i32 12
  %295 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %294) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  %296 = or i32 %295, 32768
  %297 = load ptr, ptr %119, align 4
  %298 = getelementptr i8, ptr %297, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %298, i32 %296) #6, !srcloc !12
  %299 = load ptr, ptr %119, align 4
  %300 = getelementptr i8, ptr %299, i32 4
  %301 = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %243, i32 0, i32 4
  %302 = load i32, ptr %301, align 4
  %303 = trunc i32 %302 to i8
  %304 = call ptr @clk_register_mux_table(ptr noundef %242, ptr noundef nonnull %271, ptr noundef nonnull %2, i8 noundef zeroext 2, i32 noundef 132, ptr noundef %300, i8 noundef zeroext %303, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef %95) #6
  %305 = getelementptr %struct.samsung_i2s_priv, ptr %32, i32 0, i32 14, i32 1
  store ptr %304, ptr %305, align 4
  %306 = load ptr, ptr %119, align 4
  %307 = getelementptr i8, ptr %306, i32 12
  %308 = call ptr @clk_register_divider_table(ptr noundef %242, ptr noundef nonnull %280, ptr noundef nonnull %271, i32 noundef 4, ptr noundef %307, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef %95) #6
  %309 = getelementptr %struct.samsung_i2s_priv, ptr %32, i32 0, i32 14, i32 2
  store ptr %308, ptr %309, align 4
  store ptr %280, ptr %2, align 8
  %310 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %32, i32 0, i32 15, i32 1
  store i32 2, ptr %310, align 4
  br label %311

311:                                              ; preds = %292, %282
  %312 = phi ptr [ %280, %292 ], [ %254, %282 ]
  %313 = load ptr, ptr %119, align 4
  %314 = getelementptr i8, ptr %313, i32 4
  %315 = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %243, i32 0, i32 6
  %316 = load i32, ptr %315, align 4
  %317 = trunc i32 %316 to i8
  %318 = call ptr @clk_register_gate(ptr noundef %242, ptr noundef nonnull %290, ptr noundef %312, i32 noundef 4, ptr noundef %314, i8 noundef zeroext %317, i8 noundef zeroext 1, ptr noundef %95) #6
  %319 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %32, i32 0, i32 14
  store ptr %318, ptr %319, align 4
  %320 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %32, i32 0, i32 15
  %321 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %32, i32 0, i32 15, i32 1
  %322 = load i32, ptr %321, align 4
  %323 = add i32 %322, 1
  store i32 %323, ptr %321, align 4
  store ptr %319, ptr %320, align 4
  %324 = load ptr, ptr %244, align 8
  %325 = call i32 @of_clk_add_provider(ptr noundef %324, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %320) #6
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %327, label %345

327:                                              ; preds = %311
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %242, ptr noundef nonnull @.str.40, i32 noundef %325) #7
  %328 = load i32, ptr %321, align 4
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %342, label %330

330:                                              ; preds = %338, %327
  %331 = phi i32 [ %339, %338 ], [ %328, %327 ]
  %332 = phi i32 [ %340, %338 ], [ 0, %327 ]
  %333 = getelementptr %struct.samsung_i2s_priv, ptr %32, i32 0, i32 14, i32 %332
  %334 = load ptr, ptr %333, align 4
  %335 = icmp ugt ptr %334, inttoptr (i32 -4096 to ptr)
  br i1 %335, label %338, label %336

336:                                              ; preds = %330
  call void @clk_unregister(ptr noundef %334) #6
  %337 = load i32, ptr %321, align 4
  br label %338

338:                                              ; preds = %336, %330
  %339 = phi i32 [ %331, %330 ], [ %337, %336 ]
  %340 = add nuw i32 %332, 1
  %341 = icmp ult i32 %340, %339
  br i1 %341, label %330, label %344

342:                                              ; preds = %327, %288, %278, %269
  %343 = phi i32 [ -12, %288 ], [ -12, %269 ], [ -12, %278 ], [ %325, %327 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  br label %350

344:                                              ; preds = %338
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  br label %350

345:                                              ; preds = %311, %239
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  %346 = getelementptr %struct.samsung_i2s_priv, ptr %32, i32 0, i32 14, i32 1
  %347 = load ptr, ptr %346, align 4
  %348 = call ptr @clk_get_parent(ptr noundef %347) #6
  %349 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %32, i32 0, i32 7
  store ptr %348, ptr %349, align 4
  br label %359

350:                                              ; preds = %344, %342
  %351 = phi i32 [ %343, %342 ], [ %325, %344 ]
  call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #6
  br label %352

352:                                              ; preds = %350, %234, %233, %218
  %353 = phi i32 [ %223, %218 ], [ -22, %233 ], [ %237, %234 ], [ %351, %350 ]
  %354 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %32, i32 0, i32 1
  %355 = load ptr, ptr %354, align 4
  call void @platform_device_unregister(ptr noundef %355) #6
  store ptr null, ptr %354, align 4
  br label %356

356:                                              ; preds = %352, %213, %206, %198, %194, %158
  %357 = phi i32 [ %161, %158 ], [ %209, %213 ], [ %353, %352 ], [ -12, %198 ], [ -12, %194 ], [ %204, %206 ]
  %358 = load ptr, ptr %127, align 4
  call void @clk_disable(ptr noundef %358) #6
  call void @clk_unprepare(ptr noundef %358) #6
  br label %359

359:                                              ; preds = %356, %345, %139, %129, %121, %47, %30, %27, %21, %15, %11
  %360 = phi i32 [ %122, %121 ], [ %131, %129 ], [ %140, %139 ], [ %357, %356 ], [ 0, %345 ], [ -22, %27 ], [ 0, %11 ], [ -12, %15 ], [ -12, %21 ], [ -12, %30 ], [ -12, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %360
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_i2s_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %36, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #6
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #6
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  tail call void @of_clk_del_provider(ptr noundef %10) #6
  %11 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 15, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %22, %5
  %15 = phi i32 [ %23, %22 ], [ %12, %5 ]
  %16 = phi i32 [ %24, %22 ], [ 0, %5 ]
  %17 = getelementptr %struct.samsung_i2s_priv, ptr %3, i32 0, i32 14, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  tail call void @clk_unregister(ptr noundef %18) #6
  %21 = load i32, ptr %11, align 4
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %15, %14 ], [ %21, %20 ]
  %24 = add nuw i32 %16, 1
  %25 = icmp ult i32 %24, %23
  br i1 %25, label %14, label %26

26:                                               ; preds = %22, %5
  %27 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void @platform_device_unregister(ptr noundef %28) #6
  store ptr null, ptr %27, align 4
  %29 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  tail call void @clk_disable(ptr noundef %30) #6
  tail call void @clk_unprepare(ptr noundef %30) #6
  %31 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #6, !srcloc !14
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 0, i32 -1, ptr elementtype(i32) %31) #6, !srcloc !15
  %33 = extractvalue { i32, i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  br label %36

36:                                               ; preds = %35, %26, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @samsung_asoc_dma_platform_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_i2s_dai_probe(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = getelementptr %struct.i2s_dai, ptr %7, i32 %10
  %12 = getelementptr %struct.i2s_dai, ptr %7, i32 %10, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = getelementptr %struct.i2s_dai, ptr %7, i32 %10, i32 5
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %1
  %19 = phi ptr [ %17, %15 ], [ %13, %1 ]
  %20 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #6
  %21 = getelementptr %struct.i2s_dai, ptr %7, i32 %10, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 2
  %26 = getelementptr %struct.i2s_dai, ptr %7, i32 %10, i32 8
  br i1 %25, label %27, label %30

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 7
  store ptr %26, ptr %28, align 4
  %29 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 8
  store ptr null, ptr %29, align 4
  br label %51

30:                                               ; preds = %18
  %31 = getelementptr %struct.i2s_dai, ptr %7, i32 %10, i32 9
  %32 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 7
  store ptr %26, ptr %32, align 4
  %33 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 8
  store ptr %31, ptr %33, align 4
  %34 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %5, i32 0, i32 13
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  %39 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %5, i32 0, i32 17
  %40 = load ptr, ptr %39, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 -2147483648) #6, !srcloc !12
  %41 = load i32, ptr %34, align 4
  br label %42

42:                                               ; preds = %38, %30
  %43 = phi i32 [ %41, %38 ], [ %35, %30 ]
  %44 = and i32 %43, 32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %5, i32 0, i32 17
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.i2s_dai, ptr %19, i32 0, i32 10
  %50 = load i32, ptr %49, align 4
  tail call void @idma_reg_addr_init(ptr noundef %48, i32 noundef %50) #6
  br label %51

51:                                               ; preds = %46, %42, %27
  %52 = getelementptr %struct.i2s_dai, ptr %7, i32 %10, i32 2
  store i32 0, ptr %52, align 4
  %53 = getelementptr %struct.i2s_dai, ptr %7, i32 %10, i32 3
  store i32 0, ptr %53, align 4
  %54 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %5, i32 0, i32 16
  %55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %54) #6
  tail call fastcc void @i2s_txctrl(ptr noundef %11, i32 noundef 0)
  tail call fastcc void @i2s_rxctrl(ptr noundef %11, i32 noundef 0)
  %56 = icmp eq ptr %11, null
  br i1 %56, label %81, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr %21, align 4
  %59 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %58, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 2
  %62 = getelementptr %struct.i2s_dai, ptr %7, i32 %10, i32 12
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %63, i32 0, i32 17
  %65 = load ptr, ptr %64, align 4
  %66 = select i1 %61, i32 24, i32 8
  %67 = getelementptr i8, ptr %65, i32 %66
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %69 = or i32 %68, 32768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %69) #6, !srcloc !12
  %70 = load i32, ptr @loops_per_jiffy, align 4
  %71 = udiv i32 %70, 10000
  %72 = add nsw i32 %71, -1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %74, %57
  %75 = phi i32 [ %76, %74 ], [ %72, %57 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !21
  %76 = add i32 %75, -1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %74

78:                                               ; preds = %74, %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !23
  %80 = and i32 %79, -32769
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %80) #6, !srcloc !12
  br label %81

81:                                               ; preds = %78, %51
  %82 = icmp eq ptr %19, null
  br i1 %82, label %108, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.i2s_dai, ptr %19, i32 0, i32 7
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %85, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 2
  %89 = getelementptr inbounds %struct.i2s_dai, ptr %19, i32 0, i32 12
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %90, i32 0, i32 17
  %92 = load ptr, ptr %91, align 4
  %93 = select i1 %88, i32 24, i32 8
  %94 = getelementptr i8, ptr %92, i32 %93
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %96 = or i32 %95, 32768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %96) #6, !srcloc !12
  %97 = load i32, ptr @loops_per_jiffy, align 4
  %98 = udiv i32 %97, 10000
  %99 = add nsw i32 %98, -1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %101, %83
  %102 = phi i32 [ %103, %101 ], [ %99, %83 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !21
  %103 = add i32 %102, -1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %101

105:                                              ; preds = %101, %83
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !23
  %107 = and i32 %106, -32769
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %107) #6, !srcloc !12
  br label %108

108:                                              ; preds = %105, %81
  br i1 %56, label %133, label %109

109:                                              ; preds = %108
  %110 = load ptr, ptr %21, align 4
  %111 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %110, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 2
  %114 = getelementptr %struct.i2s_dai, ptr %7, i32 %10, i32 12
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %115, i32 0, i32 17
  %117 = load ptr, ptr %116, align 4
  %118 = select i1 %113, i32 24, i32 8
  %119 = getelementptr i8, ptr %117, i32 %118
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %121 = or i32 %120, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %121) #6, !srcloc !12
  %122 = load i32, ptr @loops_per_jiffy, align 4
  %123 = udiv i32 %122, 10000
  %124 = add nsw i32 %123, -1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %126, %109
  %127 = phi i32 [ %128, %126 ], [ %124, %109 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !21
  %128 = add i32 %127, -1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %126

130:                                              ; preds = %126, %109
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !23
  %132 = and i32 %131, -129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %132) #6, !srcloc !12
  br label %133

133:                                              ; preds = %130, %108
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %54, i32 noundef %55) #6
  br i1 %82, label %139, label %134

134:                                              ; preds = %133
  %135 = getelementptr inbounds %struct.i2s_dai, ptr %19, i32 0, i32 6
  %136 = load i32, ptr %135, align 4
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134, %133
  %140 = tail call i32 @i2s_set_sysclk(ptr noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 0)
  br label %141

141:                                              ; preds = %139, %134
  %142 = load ptr, ptr %2, align 4
  %143 = tail call i32 @__pm_runtime_idle(ptr noundef %142, i32 noundef 5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_i2s_dai_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #6
  %12 = getelementptr %struct.i2s_dai, ptr %7, i32 %10, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %27, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %5, i32 0, i32 13
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %5, i32 0, i32 16
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %25 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %5, i32 0, i32 17
  %26 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #6, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #6
  br label %27

27:                                               ; preds = %22, %17, %1
  %28 = load ptr, ptr %2, align 4
  %29 = tail call i32 @__pm_runtime_idle(ptr noundef %28, i32 noundef 5) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @idma_reg_addr_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @i2s_txctrl(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.i2s_dai, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %4, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %4, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !25
  %12 = getelementptr i8, ptr %6, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !26
  %14 = shl i32 3, %10
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = icmp eq i32 %1, 0
  %18 = getelementptr inbounds %struct.i2s_dai, ptr %0, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %17, label %57, label %23

23:                                               ; preds = %2
  %24 = and i32 %11, -1310738
  %25 = or i32 %24, 262145
  %26 = and i32 %11, -86
  %27 = or i32 %26, 5
  %28 = select i1 %22, i32 %25, i32 %27
  %29 = icmp eq ptr %0, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %31, i32 0, i32 17
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %30, %23
  %38 = getelementptr inbounds %struct.i2s_dai, ptr %0, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.i2s_dai, ptr %0, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %117, label %45

45:                                               ; preds = %41, %37
  %46 = phi ptr [ %43, %41 ], [ %39, %37 ]
  %47 = getelementptr inbounds %struct.i2s_dai, ptr %46, i32 0, i32 12
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %48, i32 0, i32 17
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %52 = and i32 %51, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %117, label %54

54:                                               ; preds = %45, %30
  %55 = shl i32 2, %10
  %56 = or i32 %16, %55
  br label %117

57:                                               ; preds = %2
  %58 = and i32 %11, -1310721
  %59 = or i32 %58, 1048576
  %60 = and i32 %11, -69
  %61 = or i32 %60, 64
  %62 = select i1 %22, i32 %59, i32 %61
  %63 = getelementptr inbounds %struct.i2s_dai, ptr %0, i32 0, i32 4
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.i2s_dai, ptr %0, i32 0, i32 5
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %86, label %70

70:                                               ; preds = %66, %57
  %71 = phi ptr [ %68, %66 ], [ %64, %57 ]
  %72 = getelementptr inbounds %struct.i2s_dai, ptr %71, i32 0, i32 12
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %73, i32 0, i32 17
  %75 = load ptr, ptr %74, align 4
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  %77 = getelementptr inbounds %struct.i2s_dai, ptr %71, i32 0, i32 7
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %78, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 2
  %82 = select i1 %81, i32 262144, i32 4
  %83 = and i32 %82, %76
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %70
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %62) #6, !srcloc !12
  br label %120

86:                                               ; preds = %70, %66
  %87 = or i32 %62, 16
  %88 = icmp eq ptr %0, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %3, align 4
  %91 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %90, i32 0, i32 17
  %92 = load ptr, ptr %91, align 4
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %94 = and i32 %93, 2
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %89, %86
  %97 = load ptr, ptr %63, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.i2s_dai, ptr %0, i32 0, i32 5
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %115, label %103

103:                                              ; preds = %99, %96
  %104 = phi ptr [ %101, %99 ], [ %97, %96 ]
  %105 = getelementptr inbounds %struct.i2s_dai, ptr %104, i32 0, i32 12
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %106, i32 0, i32 17
  %108 = load ptr, ptr %107, align 4
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %110 = and i32 %109, 2
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %103, %89
  %113 = shl nuw i32 1, %10
  %114 = or i32 %16, %113
  br label %117

115:                                              ; preds = %103, %99
  %116 = and i32 %87, -2
  br label %117

117:                                              ; preds = %115, %112, %54, %45, %41
  %118 = phi i32 [ %56, %54 ], [ %114, %112 ], [ %16, %115 ], [ %16, %45 ], [ %16, %41 ]
  %119 = phi i32 [ %28, %54 ], [ %87, %112 ], [ %116, %115 ], [ %28, %45 ], [ %28, %41 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %118) #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %119) #6, !srcloc !12
  br label %120

120:                                              ; preds = %117, %85
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @i2s_rxctrl(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.i2s_dai, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %4, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %4, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !32
  %12 = getelementptr i8, ptr %6, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !33
  %14 = shl i32 3, %10
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %64, label %18

18:                                               ; preds = %2
  %19 = and i32 %11, -44
  %20 = or i32 %19, 3
  %21 = icmp eq ptr %0, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %23, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  %27 = getelementptr inbounds %struct.i2s_dai, ptr %0, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 2
  %32 = select i1 %31, i32 262144, i32 4
  %33 = and i32 %32, %26
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %22, %18
  %36 = getelementptr inbounds %struct.i2s_dai, ptr %0, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.i2s_dai, ptr %0, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %61, label %43

43:                                               ; preds = %39, %35
  %44 = phi ptr [ %41, %39 ], [ %37, %35 ]
  %45 = getelementptr inbounds %struct.i2s_dai, ptr %44, i32 0, i32 12
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %46, i32 0, i32 17
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  %50 = getelementptr inbounds %struct.i2s_dai, ptr %44, i32 0, i32 7
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %51, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 2
  %55 = select i1 %54, i32 262144, i32 4
  %56 = and i32 %55, %49
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %43, %22
  %59 = shl i32 2, %10
  %60 = or i32 %16, %59
  br label %108

61:                                               ; preds = %43, %39
  %62 = shl nuw i32 1, %10
  %63 = or i32 %16, %62
  br label %108

64:                                               ; preds = %2
  %65 = and i32 %11, -43
  %66 = or i32 %65, 40
  %67 = icmp eq ptr %0, null
  br i1 %67, label %81, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %3, align 4
  %70 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %69, i32 0, i32 17
  %71 = load ptr, ptr %70, align 4
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  %73 = getelementptr inbounds %struct.i2s_dai, ptr %0, i32 0, i32 7
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %74, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 2
  %78 = select i1 %77, i32 262144, i32 4
  %79 = and i32 %78, %72
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %107

81:                                               ; preds = %68, %64
  %82 = getelementptr inbounds %struct.i2s_dai, ptr %0, i32 0, i32 4
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.i2s_dai, ptr %0, i32 0, i32 5
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = and i32 %66, -4
  br label %108

91:                                               ; preds = %85, %81
  %92 = phi ptr [ %87, %85 ], [ %83, %81 ]
  %93 = getelementptr inbounds %struct.i2s_dai, ptr %92, i32 0, i32 12
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %94, i32 0, i32 17
  %96 = load ptr, ptr %95, align 4
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  %98 = getelementptr inbounds %struct.i2s_dai, ptr %92, i32 0, i32 7
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %99, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 2
  %103 = select i1 %102, i32 262144, i32 4
  %104 = and i32 %103, %97
  %105 = icmp eq i32 %104, 0
  %106 = and i32 %66, -4
  br i1 %105, label %108, label %107

107:                                              ; preds = %91, %68
  br label %108

108:                                              ; preds = %107, %91, %89, %61, %58
  %109 = phi i32 [ %60, %58 ], [ %63, %61 ], [ %16, %89 ], [ %16, %91 ], [ %16, %107 ]
  %110 = phi i32 [ %20, %58 ], [ %20, %61 ], [ %90, %89 ], [ %106, %91 ], [ %66, %107 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %109) #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %110) #6, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2s_set_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  %14 = getelementptr %struct.i2s_dai, ptr %10, i32 %13
  %15 = getelementptr %struct.i2s_dai, ptr %10, i32 %13, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = getelementptr %struct.i2s_dai, ptr %10, i32 %13, i32 5
  %20 = load ptr, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %4
  %22 = phi ptr [ %20, %18 ], [ %16, %4 ]
  %23 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %8, i32 0, i32 12
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %24, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = shl nuw i32 1, %26
  %28 = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %24, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = shl nuw i32 1, %29
  %31 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #6
  %32 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %8, i32 0, i32 16
  %33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %32) #6
  %34 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %8, i32 0, i32 17
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !36
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %33) #6
  switch i32 %1, label %255 [
    i32 3, label %38
    i32 2, label %40
    i32 0, label %133
    i32 1, label %133
  ]

38:                                               ; preds = %21
  %39 = shl i32 %3, 30
  br label %258

40:                                               ; preds = %21
  %41 = load i32, ptr %25, align 4
  %42 = shl nuw i32 1, %41
  %43 = icmp eq i32 %3, 0
  %44 = select i1 %43, i32 0, i32 %2
  %45 = icmp ne i32 %44, 0
  %46 = icmp ne ptr %22, null
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.i2s_dai, ptr %22, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  %52 = icmp eq i32 %50, %44
  %53 = or i1 %51, %52
  br i1 %53, label %54, label %123

54:                                               ; preds = %48, %40
  %55 = icmp eq ptr %14, null
  br i1 %55, label %77, label %56

56:                                               ; preds = %54
  %57 = getelementptr %struct.i2s_dai, ptr %10, i32 %13, i32 12
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %58, i32 0, i32 17
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  %62 = getelementptr %struct.i2s_dai, ptr %10, i32 %13, i32 7
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %63, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 2
  %67 = select i1 %66, i32 262144, i32 4
  %68 = and i32 %67, %61
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %115

70:                                               ; preds = %56
  %71 = load ptr, ptr %57, align 4
  %72 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %71, i32 0, i32 17
  %73 = load ptr, ptr %72, align 4
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %75 = and i32 %74, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %115

77:                                               ; preds = %70, %54
  %78 = load ptr, ptr %15, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = getelementptr %struct.i2s_dai, ptr %10, i32 %13, i32 5
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %126, label %84

84:                                               ; preds = %80, %77
  %85 = phi ptr [ %82, %80 ], [ %78, %77 ]
  %86 = getelementptr inbounds %struct.i2s_dai, ptr %85, i32 0, i32 12
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %87, i32 0, i32 17
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %91 = and i32 %90, 2
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %115

93:                                               ; preds = %84
  %94 = load ptr, ptr %15, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = getelementptr %struct.i2s_dai, ptr %10, i32 %13, i32 5
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %126, label %100

100:                                              ; preds = %96, %93
  %101 = phi ptr [ %98, %96 ], [ %94, %93 ]
  %102 = getelementptr inbounds %struct.i2s_dai, ptr %101, i32 0, i32 12
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %103, i32 0, i32 17
  %105 = load ptr, ptr %104, align 4
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  %107 = getelementptr inbounds %struct.i2s_dai, ptr %101, i32 0, i32 7
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %108, i32 0, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 2
  %112 = select i1 %111, i32 262144, i32 4
  %113 = and i32 %112, %106
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %100, %84, %70, %56
  %116 = and i32 %37, %27
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %43, i1 %117, i1 false
  %119 = xor i1 %118, true
  %120 = icmp ne i32 %3, 1
  %121 = select i1 %120, i1 true, i1 %117
  %122 = select i1 %119, i1 %121, i1 false
  br i1 %122, label %126, label %123

123:                                              ; preds = %115, %48
  %124 = load ptr, ptr %14, align 4
  %125 = getelementptr inbounds %struct.platform_device, ptr %124, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.i2s_set_sysclk, i32 noundef 534) #7
  br label %270

126:                                              ; preds = %115, %100, %96, %80
  br i1 %43, label %127, label %130

127:                                              ; preds = %126
  %128 = load i32, ptr %25, align 4
  %129 = shl nuw i32 1, %128
  br label %130

130:                                              ; preds = %127, %126
  %131 = phi i32 [ %129, %127 ], [ 0, %126 ]
  %132 = getelementptr %struct.i2s_dai, ptr %10, i32 %13, i32 2
  store i32 %44, ptr %132, align 4
  br label %258

133:                                              ; preds = %21, %21
  %134 = load i32, ptr %28, align 4
  %135 = shl nuw i32 1, %134
  %136 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %8, i32 0, i32 13
  %137 = load i32, ptr %136, align 4
  %138 = and i32 %137, 4
  %139 = icmp ne i32 %138, 0
  %140 = icmp eq i32 %1, 0
  %141 = or i1 %140, %139
  %142 = icmp eq ptr %14, null
  br i1 %142, label %164, label %143

143:                                              ; preds = %133
  %144 = getelementptr %struct.i2s_dai, ptr %10, i32 %13, i32 12
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %145, i32 0, i32 17
  %147 = load ptr, ptr %146, align 4
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %147) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  %149 = getelementptr %struct.i2s_dai, ptr %10, i32 %13, i32 7
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %150, i32 0, i32 1
  %152 = load i32, ptr %151, align 4
  %153 = icmp eq i32 %152, 2
  %154 = select i1 %153, i32 262144, i32 4
  %155 = and i32 %154, %148
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %245

157:                                              ; preds = %143
  %158 = load ptr, ptr %144, align 4
  %159 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %158, i32 0, i32 17
  %160 = load ptr, ptr %159, align 4
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %162 = and i32 %161, 2
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %245

164:                                              ; preds = %157, %133
  %165 = load ptr, ptr %15, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = getelementptr %struct.i2s_dai, ptr %10, i32 %13, i32 5
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %202, label %171

171:                                              ; preds = %167, %164
  %172 = phi ptr [ %169, %167 ], [ %165, %164 ]
  %173 = getelementptr inbounds %struct.i2s_dai, ptr %172, i32 0, i32 12
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %174, i32 0, i32 17
  %176 = load ptr, ptr %175, align 4
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %176) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %178 = and i32 %177, 2
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %245

180:                                              ; preds = %171
  %181 = load ptr, ptr %15, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = getelementptr %struct.i2s_dai, ptr %10, i32 %13, i32 5
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %202, label %187

187:                                              ; preds = %183, %180
  %188 = phi ptr [ %185, %183 ], [ %181, %180 ]
  %189 = getelementptr inbounds %struct.i2s_dai, ptr %188, i32 0, i32 12
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %190, i32 0, i32 17
  %192 = load ptr, ptr %191, align 4
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  %194 = getelementptr inbounds %struct.i2s_dai, ptr %188, i32 0, i32 7
  %195 = load ptr, ptr %194, align 4
  %196 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %195, i32 0, i32 1
  %197 = load i32, ptr %196, align 4
  %198 = icmp eq i32 %197, 2
  %199 = select i1 %198, i32 262144, i32 4
  %200 = and i32 %199, %193
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %245

202:                                              ; preds = %187, %183, %167
  %203 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %8, i32 0, i32 7
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  %206 = icmp ugt ptr %204, inttoptr (i32 -4096 to ptr)
  %207 = or i1 %205, %206
  br i1 %207, label %222, label %208

208:                                              ; preds = %202
  %209 = or i1 %140, %139
  %210 = xor i1 %209, true
  %211 = and i32 %37, %30
  %212 = icmp eq i32 %211, 0
  %213 = xor i1 %212, true
  %214 = select i1 %141, i1 true, i1 %213
  %215 = select i1 %210, i1 true, i1 %212
  %216 = select i1 %214, i1 %215, i1 false
  br i1 %216, label %219, label %217

217:                                              ; preds = %208
  tail call void @clk_disable(ptr noundef nonnull %204) #6
  tail call void @clk_unprepare(ptr noundef nonnull %204) #6
  %218 = load ptr, ptr %203, align 4
  tail call void @clk_put(ptr noundef %218) #6
  br label %222

219:                                              ; preds = %208
  %220 = tail call i32 @clk_get_rate(ptr noundef nonnull %204) #6
  %221 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %8, i32 0, i32 8
  store i32 %220, ptr %221, align 4
  br label %270

222:                                              ; preds = %217, %202
  %223 = load ptr, ptr %14, align 4
  %224 = getelementptr inbounds %struct.platform_device, ptr %223, i32 0, i32 3
  %225 = select i1 %141, ptr @.str.17, ptr @.str.16
  %226 = tail call ptr @clk_get(ptr noundef %224, ptr noundef nonnull %225) #6
  store ptr %226, ptr %203, align 4
  %227 = icmp ugt ptr %226, inttoptr (i32 -4096 to ptr)
  br i1 %227, label %228, label %231, !prof !37

228:                                              ; preds = %222
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 575, i32 noundef 9, ptr noundef null) #6
  %229 = load ptr, ptr %203, align 4
  %230 = ptrtoint ptr %229 to i32
  store ptr null, ptr %203, align 4
  br label %270

231:                                              ; preds = %222
  %232 = tail call i32 @clk_prepare(ptr noundef %226) #6
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %231
  %235 = tail call i32 @clk_enable(ptr noundef %226) #6
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %234
  tail call void @clk_unprepare(ptr noundef %226) #6
  br label %238

238:                                              ; preds = %237, %231
  %239 = phi i32 [ %235, %237 ], [ %232, %231 ]
  %240 = load ptr, ptr %203, align 4
  tail call void @clk_put(ptr noundef %240) #6
  store ptr null, ptr %203, align 4
  br label %270

241:                                              ; preds = %234
  %242 = load ptr, ptr %203, align 4
  %243 = tail call i32 @clk_get_rate(ptr noundef %242) #6
  %244 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %8, i32 0, i32 8
  store i32 %243, ptr %244, align 4
  br i1 %141, label %258, label %252

245:                                              ; preds = %187, %171, %157, %143
  %246 = and i32 %37, %30
  %247 = icmp eq i32 %246, 0
  %248 = xor i1 %247, %141
  br i1 %248, label %249, label %270

249:                                              ; preds = %245
  %250 = load ptr, ptr %14, align 4
  %251 = getelementptr inbounds %struct.platform_device, ptr %250, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %251, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.i2s_set_sysclk, i32 noundef 592) #7
  br label %270

252:                                              ; preds = %241
  %253 = load i32, ptr %28, align 4
  %254 = shl nuw i32 1, %253
  br label %258

255:                                              ; preds = %21
  %256 = load ptr, ptr %14, align 4
  %257 = getelementptr inbounds %struct.platform_device, ptr %256, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %257, ptr noundef nonnull @.str.19) #7
  br label %270

258:                                              ; preds = %252, %241, %130, %38
  %259 = phi i32 [ %254, %252 ], [ 0, %241 ], [ %131, %130 ], [ %39, %38 ]
  %260 = phi i32 [ %135, %252 ], [ %135, %241 ], [ %42, %130 ], [ -1073741824, %38 ]
  %261 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %32) #6
  %262 = load ptr, ptr %34, align 4
  %263 = getelementptr i8, ptr %262, i32 4
  %264 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %263) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !38
  %265 = xor i32 %260, -1
  %266 = and i32 %264, %265
  %267 = or i32 %266, %259
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %268 = load ptr, ptr %34, align 4
  %269 = getelementptr i8, ptr %268, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %269, i32 %267) #6, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %261) #6
  br label %270

270:                                              ; preds = %258, %255, %249, %245, %238, %228, %219, %123
  %271 = phi i32 [ 0, %245 ], [ 0, %258 ], [ 0, %219 ], [ -22, %255 ], [ -11, %249 ], [ %230, %228 ], [ %239, %238 ], [ -11, %123 ]
  %272 = load ptr, ptr %5, align 4
  %273 = tail call i32 @__pm_runtime_idle(ptr noundef %272, i32 noundef 5) #6
  ret i32 %271
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2s_set_clkdiv(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  %13 = getelementptr %struct.i2s_dai, ptr %9, i32 %12
  %14 = getelementptr %struct.i2s_dai, ptr %9, i32 %12, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = getelementptr %struct.i2s_dai, ptr %9, i32 %12, i32 5
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %3
  %21 = phi ptr [ %19, %17 ], [ %15, %3 ]
  %22 = icmp eq i32 %1, 1
  br i1 %22, label %23, label %128

23:                                               ; preds = %20
  %24 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #6
  %25 = icmp eq ptr %13, null
  br i1 %25, label %47, label %26

26:                                               ; preds = %23
  %27 = getelementptr %struct.i2s_dai, ptr %9, i32 %12, i32 12
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %28, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  %32 = getelementptr %struct.i2s_dai, ptr %9, i32 %12, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 2
  %37 = select i1 %36, i32 262144, i32 4
  %38 = and i32 %37, %31
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %85

40:                                               ; preds = %26
  %41 = load ptr, ptr %27, align 4
  %42 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %41, i32 0, i32 17
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %45 = and i32 %44, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %85

47:                                               ; preds = %40, %23
  %48 = load ptr, ptr %14, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = getelementptr %struct.i2s_dai, ptr %9, i32 %12, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %111, label %54

54:                                               ; preds = %50, %47
  %55 = phi ptr [ %52, %50 ], [ %48, %47 ]
  %56 = getelementptr inbounds %struct.i2s_dai, ptr %55, i32 0, i32 12
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %57, i32 0, i32 17
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %61 = and i32 %60, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %54
  %64 = load ptr, ptr %14, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = getelementptr %struct.i2s_dai, ptr %9, i32 %12, i32 5
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %111, label %70

70:                                               ; preds = %66, %63
  %71 = phi ptr [ %68, %66 ], [ %64, %63 ]
  %72 = getelementptr inbounds %struct.i2s_dai, ptr %71, i32 0, i32 12
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %73, i32 0, i32 17
  %75 = load ptr, ptr %74, align 4
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  %77 = getelementptr inbounds %struct.i2s_dai, ptr %71, i32 0, i32 7
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %78, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 2
  %82 = select i1 %81, i32 262144, i32 4
  %83 = and i32 %82, %76
  %84 = icmp ne i32 %83, 0
  br label %85

85:                                               ; preds = %70, %54, %40, %26
  %86 = phi i1 [ true, %40 ], [ true, %54 ], [ %84, %70 ], [ true, %26 ]
  %87 = icmp ne i32 %2, 0
  %88 = and i1 %87, %86
  br i1 %88, label %89, label %111

89:                                               ; preds = %85
  %90 = getelementptr %struct.i2s_dai, ptr %9, i32 %12, i32 12
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %91, i32 0, i32 17
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr i8, ptr %93, i32 4
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !40
  %96 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %91, i32 0, i32 12
  %97 = load ptr, ptr %96, align 4
  %98 = load i32, ptr %97, align 4
  %99 = lshr i32 %95, %98
  %100 = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %97, i32 0, i32 8
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %99, %101
  %103 = add i32 %102, -1
  %104 = icmp ult i32 %103, 8
  br i1 %104, label %105, label %108

105:                                              ; preds = %89
  %106 = getelementptr inbounds [8 x i32], ptr @switch.table.i2s_trigger.41, i32 0, i32 %103
  %107 = load i32, ptr %106, align 4
  br label %108

108:                                              ; preds = %105, %89
  %109 = phi i32 [ %107, %105 ], [ 32, %89 ]
  %110 = icmp eq i32 %109, %2
  br i1 %110, label %111, label %119

111:                                              ; preds = %108, %85, %66, %50
  %112 = icmp eq ptr %21, null
  br i1 %112, label %124, label %113

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.i2s_dai, ptr %21, i32 0, i32 3
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  %117 = icmp eq i32 %115, %2
  %118 = or i1 %116, %117
  br i1 %118, label %124, label %119

119:                                              ; preds = %113, %108
  %120 = load ptr, ptr %4, align 4
  %121 = tail call i32 @__pm_runtime_idle(ptr noundef %120, i32 noundef 5) #6
  %122 = load ptr, ptr %13, align 4
  %123 = getelementptr inbounds %struct.platform_device, ptr %122, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.i2s_set_clkdiv, i32 noundef 991) #7
  br label %131

124:                                              ; preds = %113, %111
  %125 = getelementptr %struct.i2s_dai, ptr %9, i32 %12, i32 3
  store i32 %2, ptr %125, align 4
  %126 = load ptr, ptr %4, align 4
  %127 = tail call i32 @__pm_runtime_idle(ptr noundef %126, i32 noundef 5) #6
  br label %131

128:                                              ; preds = %20
  %129 = load ptr, ptr %13, align 4
  %130 = getelementptr inbounds %struct.platform_device, ptr %129, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.20, i32 noundef %1) #7
  br label %131

131:                                              ; preds = %128, %124, %119
  %132 = phi i32 [ -11, %119 ], [ 0, %124 ], [ -22, %128 ]
  ret i32 %132
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2s_set_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  %12 = getelementptr %struct.i2s_dai, ptr %8, i32 %11
  %13 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %6, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %14, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %14, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %14, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = shl nuw i32 1, %20
  %22 = shl i32 3, %18
  %23 = shl nuw i32 1, %16
  %24 = and i32 %1, 15
  switch i32 %24, label %31 [
    i32 2, label %25
    i32 3, label %28
    i32 1, label %34
  ]

25:                                               ; preds = %2
  %26 = shl nuw i32 1, %18
  %27 = or i32 %26, %23
  br label %34

28:                                               ; preds = %2
  %29 = shl i32 2, %18
  %30 = or i32 %29, %23
  br label %34

31:                                               ; preds = %2
  %32 = load ptr, ptr %12, align 4
  %33 = getelementptr inbounds %struct.platform_device, ptr %32, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.21) #7
  br label %163

34:                                               ; preds = %28, %25, %2
  %35 = phi i32 [ %30, %28 ], [ %27, %25 ], [ 0, %2 ]
  %36 = and i32 %1, 3840
  switch i32 %36, label %45 [
    i32 0, label %48
    i32 512, label %37
  ]

37:                                               ; preds = %34
  %38 = and i32 %35, %23
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = xor i32 %23, -1
  %42 = and i32 %35, %41
  br label %48

43:                                               ; preds = %37
  %44 = or i32 %35, %23
  br label %48

45:                                               ; preds = %34
  %46 = load ptr, ptr %12, align 4
  %47 = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.22) #7
  br label %163

48:                                               ; preds = %43, %40, %34
  %49 = phi i32 [ %42, %40 ], [ %44, %43 ], [ %35, %34 ]
  %50 = trunc i32 %1 to i16
  %51 = and i16 %50, -4096
  switch i16 %51, label %65 [
    i16 4096, label %52
    i16 16384, label %54
  ]

52:                                               ; preds = %48
  %53 = or i32 %49, %21
  br label %68

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %6, i32 0, i32 8
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %6, i32 0, i32 15
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = tail call i32 @i2s_set_sysclk(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %64 = load ptr, ptr %3, align 4
  br label %68

65:                                               ; preds = %48
  %66 = load ptr, ptr %12, align 4
  %67 = getelementptr inbounds %struct.platform_device, ptr %66, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.23) #7
  br label %163

68:                                               ; preds = %62, %58, %54, %52
  %69 = phi ptr [ %64, %62 ], [ %4, %58 ], [ %4, %54 ], [ %4, %52 ]
  %70 = phi i32 [ %49, %62 ], [ %49, %58 ], [ %49, %54 ], [ %53, %52 ]
  %71 = tail call i32 @__pm_runtime_resume(ptr noundef %69, i32 noundef 4) #6
  %72 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %6, i32 0, i32 16
  %73 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %72) #6
  %74 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %6, i32 0, i32 17
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !41
  %78 = icmp eq ptr %12, null
  br i1 %78, label %100, label %79

79:                                               ; preds = %68
  %80 = getelementptr %struct.i2s_dai, ptr %8, i32 %11, i32 12
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %81, i32 0, i32 17
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  %85 = getelementptr %struct.i2s_dai, ptr %8, i32 %11, i32 7
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %86, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 2
  %90 = select i1 %89, i32 262144, i32 4
  %91 = and i32 %90, %84
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %139

93:                                               ; preds = %79
  %94 = load ptr, ptr %80, align 4
  %95 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %94, i32 0, i32 17
  %96 = load ptr, ptr %95, align 4
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %98 = and i32 %97, 2
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %139

100:                                              ; preds = %93, %68
  %101 = getelementptr %struct.i2s_dai, ptr %8, i32 %11, i32 4
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = getelementptr %struct.i2s_dai, ptr %8, i32 %11, i32 5
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %149, label %108

108:                                              ; preds = %104, %100
  %109 = phi ptr [ %106, %104 ], [ %102, %100 ]
  %110 = getelementptr inbounds %struct.i2s_dai, ptr %109, i32 0, i32 12
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %111, i32 0, i32 17
  %113 = load ptr, ptr %112, align 4
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %115 = and i32 %114, 2
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %139

117:                                              ; preds = %108
  %118 = load ptr, ptr %101, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = getelementptr %struct.i2s_dai, ptr %8, i32 %11, i32 5
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %149, label %124

124:                                              ; preds = %120, %117
  %125 = phi ptr [ %122, %120 ], [ %118, %117 ]
  %126 = getelementptr inbounds %struct.i2s_dai, ptr %125, i32 0, i32 12
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %127, i32 0, i32 17
  %129 = load ptr, ptr %128, align 4
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %129) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  %131 = getelementptr inbounds %struct.i2s_dai, ptr %125, i32 0, i32 7
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %132, i32 0, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, 2
  %136 = select i1 %135, i32 262144, i32 4
  %137 = and i32 %136, %130
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %149, label %139

139:                                              ; preds = %124, %108, %93, %79
  %140 = or i32 %22, %23
  %141 = or i32 %140, %21
  %142 = and i32 %77, %141
  %143 = icmp eq i32 %142, %70
  br i1 %143, label %149, label %144

144:                                              ; preds = %139
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %72, i32 noundef %73) #6
  %145 = load ptr, ptr %3, align 4
  %146 = tail call i32 @__pm_runtime_idle(ptr noundef %145, i32 noundef 5) #6
  %147 = load ptr, ptr %12, align 4
  %148 = getelementptr inbounds %struct.platform_device, ptr %147, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.i2s_set_fmt, i32 noundef 705) #7
  br label %163

149:                                              ; preds = %139, %124, %120, %104
  %150 = or i32 %22, %23
  %151 = or i32 %150, %21
  %152 = xor i32 %151, -1
  %153 = and i32 %77, %152
  %154 = or i32 %153, %70
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  %155 = load ptr, ptr %74, align 4
  %156 = getelementptr i8, ptr %155, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %154) #6, !srcloc !12
  %157 = and i32 %70, %21
  %158 = icmp ne i32 %157, 0
  %159 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %6, i32 0, i32 18
  %160 = zext i1 %158 to i8
  store i8 %160, ptr %159, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %72, i32 noundef %73) #6
  %161 = load ptr, ptr %3, align 4
  %162 = tail call i32 @__pm_runtime_idle(ptr noundef %161, i32 noundef 5) #6
  br label %163

163:                                              ; preds = %149, %144, %65, %45, %31
  %164 = phi i32 [ -22, %31 ], [ -22, %45 ], [ -22, %65 ], [ -11, %144 ], [ 0, %149 ]
  ret i32 %164
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2s_startup(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  %12 = getelementptr %struct.i2s_dai, ptr %8, i32 %11
  %13 = getelementptr %struct.i2s_dai, ptr %8, i32 %11, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = getelementptr %struct.i2s_dai, ptr %8, i32 %11, i32 5
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = phi ptr [ %18, %16 ], [ %14, %2 ]
  %21 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #6
  %22 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %6, i32 0, i32 2
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #6
  %24 = getelementptr %struct.i2s_dai, ptr %8, i32 %11, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, 1
  store i32 %26, ptr %24, align 4
  %27 = icmp eq ptr %20, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.i2s_dai, ptr %20, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 3
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = and i32 %26, -3
  br label %37

35:                                               ; preds = %28, %19
  %36 = or i32 %25, 3
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %36, %35 ], [ %34, %33 ]
  store i32 %38, ptr %24, align 4
  %39 = icmp eq ptr %12, null
  br i1 %39, label %61, label %40

40:                                               ; preds = %37
  %41 = getelementptr %struct.i2s_dai, ptr %8, i32 %11, i32 12
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %42, i32 0, i32 17
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  %46 = getelementptr %struct.i2s_dai, ptr %8, i32 %11, i32 7
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 2
  %51 = select i1 %50, i32 262144, i32 4
  %52 = and i32 %51, %45
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %109

54:                                               ; preds = %40
  %55 = load ptr, ptr %41, align 4
  %56 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %55, i32 0, i32 17
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %59 = and i32 %58, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %109

61:                                               ; preds = %54, %37
  %62 = load ptr, ptr %13, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = getelementptr %struct.i2s_dai, ptr %8, i32 %11, i32 5
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %99, label %68

68:                                               ; preds = %64, %61
  %69 = phi ptr [ %66, %64 ], [ %62, %61 ]
  %70 = getelementptr inbounds %struct.i2s_dai, ptr %69, i32 0, i32 12
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %71, i32 0, i32 17
  %73 = load ptr, ptr %72, align 4
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %75 = and i32 %74, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %109

77:                                               ; preds = %68
  %78 = load ptr, ptr %13, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = getelementptr %struct.i2s_dai, ptr %8, i32 %11, i32 5
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %99, label %84

84:                                               ; preds = %80, %77
  %85 = phi ptr [ %82, %80 ], [ %78, %77 ]
  %86 = getelementptr inbounds %struct.i2s_dai, ptr %85, i32 0, i32 12
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %87, i32 0, i32 17
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  %91 = getelementptr inbounds %struct.i2s_dai, ptr %85, i32 0, i32 7
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %92, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 2
  %96 = select i1 %95, i32 262144, i32 4
  %97 = and i32 %96, %90
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %84, %80, %64
  %100 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %6, i32 0, i32 13
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %105 = getelementptr %struct.i2s_dai, ptr %8, i32 %11, i32 12
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %106, i32 0, i32 17
  %108 = load ptr, ptr %107, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 -2147483648) #6, !srcloc !12
  br label %109

109:                                              ; preds = %104, %99, %84, %68, %54, %40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %23) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @i2s_shutdown(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  %12 = getelementptr %struct.i2s_dai, ptr %8, i32 %11, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = getelementptr %struct.i2s_dai, ptr %8, i32 %11, i32 5
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %2
  %19 = phi ptr [ %17, %15 ], [ %13, %2 ]
  %20 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %6, i32 0, i32 2
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #6
  %22 = getelementptr %struct.i2s_dai, ptr %8, i32 %11, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, -4
  store i32 %24, ptr %22, align 4
  %25 = icmp eq ptr %19, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.i2s_dai, ptr %19, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = or i32 %28, 2
  store i32 %32, ptr %27, align 4
  br label %33

33:                                               ; preds = %31, %26, %18
  %34 = getelementptr %struct.i2s_dai, ptr %8, i32 %11, i32 2
  store i32 0, ptr %34, align 4
  %35 = getelementptr %struct.i2s_dai, ptr %8, i32 %11, i32 3
  store i32 0, ptr %35, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #6
  %36 = load ptr, ptr %3, align 4
  %37 = tail call i32 @__pm_runtime_idle(ptr noundef %36, i32 noundef 5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2s_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  %13 = getelementptr %struct.i2s_dai, ptr %9, i32 %12
  %14 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 18
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 15
  %19 = load i16, ptr %18, align 8
  %20 = and i16 %19, 7
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %23, !prof !37

22:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 728, i32 noundef 9, ptr noundef null) #6
  br label %23

23:                                               ; preds = %22, %17, %3
  %24 = getelementptr %struct.i2s_dai, ptr %9, i32 %12, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 2
  %29 = select i1 %28, i32 0, i32 196608
  %30 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %31 = load i32, ptr %30, align 4
  switch i32 %31, label %49 [
    i32 6, label %32
    i32 4, label %52
    i32 2, label %33
    i32 1, label %41
  ]

32:                                               ; preds = %23
  br label %52

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = getelementptr %struct.i2s_dai, ptr %9, i32 %12, i32 8, i32 1
  store i32 4, ptr %38, align 4
  br label %52

39:                                               ; preds = %33
  %40 = getelementptr %struct.i2s_dai, ptr %9, i32 %12, i32 9, i32 1
  store i32 4, ptr %40, align 4
  br label %52

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = getelementptr %struct.i2s_dai, ptr %9, i32 %12, i32 8, i32 1
  store i32 2, ptr %46, align 4
  br label %52

47:                                               ; preds = %41
  %48 = getelementptr %struct.i2s_dai, ptr %9, i32 %12, i32 9, i32 1
  store i32 2, ptr %48, align 4
  br label %52

49:                                               ; preds = %23
  %50 = load ptr, ptr %13, align 4
  %51 = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.24, i32 noundef %31) #7
  br label %155

52:                                               ; preds = %47, %45, %39, %37, %32, %23
  %53 = phi i32 [ 0, %45 ], [ 0, %47 ], [ 0, %37 ], [ 0, %39 ], [ 65536, %23 ], [ 196608, %32 ]
  %54 = load i32, ptr %26, align 4
  %55 = icmp eq i32 %54, 2
  %56 = select i1 %55, i32 201326592, i32 50331648
  %57 = or i32 %56, %29
  %58 = icmp eq ptr %13, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = getelementptr %struct.i2s_dai, ptr %9, i32 %12, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 3
  %63 = icmp eq i32 %62, 3
  %64 = or i32 %57, 24576
  %65 = select i1 %63, i32 %64, i32 %57
  br label %66

66:                                               ; preds = %59, %52
  %67 = phi i32 [ %57, %52 ], [ %65, %59 ]
  %68 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %76, %66
  %72 = phi i32 [ 0, %66 ], [ 32, %76 ]
  %73 = phi i32 [ %69, %66 ], [ %78, %76 ]
  %74 = tail call i32 @llvm.cttz.i32(i32 %73, i1 true) #6, !range !44
  %75 = or i32 %74, %72
  br label %80

76:                                               ; preds = %66
  %77 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %71

80:                                               ; preds = %76, %71
  %81 = phi i32 [ %75, %71 ], [ 0, %76 ]
  %82 = tail call i32 @snd_pcm_format_width(i32 noundef %81) #6
  switch i32 %82, label %111 [
    i32 8, label %83
    i32 16, label %127
    i32 24, label %97
  ]

83:                                               ; preds = %80
  %84 = load ptr, ptr %24, align 4
  %85 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %84, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 2
  %88 = select i1 %87, i32 67108864, i32 16777216
  %89 = or i32 %88, %53
  br i1 %58, label %127, label %90

90:                                               ; preds = %83
  %91 = getelementptr %struct.i2s_dai, ptr %9, i32 %12, i32 6
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, 3
  %94 = icmp eq i32 %93, 3
  %95 = or i32 %89, 8192
  %96 = select i1 %94, i32 %95, i32 %89
  br label %127

97:                                               ; preds = %80
  %98 = load ptr, ptr %24, align 4
  %99 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %98, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 2
  %102 = select i1 %101, i32 134217728, i32 33554432
  %103 = or i32 %102, %53
  br i1 %58, label %127, label %104

104:                                              ; preds = %97
  %105 = getelementptr %struct.i2s_dai, ptr %9, i32 %12, i32 6
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, 3
  %108 = icmp eq i32 %107, 3
  %109 = or i32 %103, 16384
  %110 = select i1 %108, i32 %109, i32 %103
  br label %127

111:                                              ; preds = %80
  %112 = load ptr, ptr %13, align 4
  %113 = getelementptr inbounds %struct.platform_device, ptr %112, i32 0, i32 3
  %114 = load i32, ptr %68, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %121, %111
  %117 = phi i32 [ 0, %111 ], [ 32, %121 ]
  %118 = phi i32 [ %114, %111 ], [ %123, %121 ]
  %119 = tail call i32 @llvm.cttz.i32(i32 %118, i1 true) #6, !range !44
  %120 = or i32 %119, %117
  br label %125

121:                                              ; preds = %111
  %122 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %116

125:                                              ; preds = %121, %116
  %126 = phi i32 [ %120, %116 ], [ 0, %121 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.25, i32 noundef %126) #7
  br label %155

127:                                              ; preds = %104, %97, %90, %83, %80
  %128 = phi i32 [ %89, %83 ], [ %53, %80 ], [ %103, %97 ], [ %96, %90 ], [ %110, %104 ]
  %129 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %7, i32 0, i32 16
  %130 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %129) #6
  %131 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %7, i32 0, i32 17
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr i8, ptr %132, i32 4
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !45
  %135 = xor i32 %67, -1
  %136 = and i32 %134, %135
  %137 = or i32 %136, %128
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %138 = load ptr, ptr %131, align 4
  %139 = getelementptr i8, ptr %138, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %137) #6, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %129, i32 noundef %130) #6
  %140 = getelementptr %struct.i2s_dai, ptr %9, i32 %12, i32 8
  %141 = getelementptr %struct.i2s_dai, ptr %9, i32 %12, i32 9
  %142 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 7
  store ptr %140, ptr %142, align 4
  %143 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 8
  store ptr %141, ptr %143, align 4
  %144 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr %struct.i2s_dai, ptr %9, i32 %12, i32 1
  store i32 %145, ptr %146, align 4
  %147 = getelementptr %struct.samsung_i2s_priv, ptr %7, i32 0, i32 14, i32 1
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  %150 = icmp ugt ptr %148, inttoptr (i32 -4096 to ptr)
  %151 = or i1 %149, %150
  br i1 %151, label %155, label %152

152:                                              ; preds = %127
  %153 = tail call i32 @clk_get_rate(ptr noundef nonnull %148) #6
  %154 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %7, i32 0, i32 8
  store i32 %153, ptr %154, align 4
  br label %155

155:                                              ; preds = %152, %127, %125, %49
  %156 = phi i32 [ -22, %49 ], [ -22, %125 ], [ 0, %152 ], [ 0, %127 ]
  ret i32 %156
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2s_trigger(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  %11 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %12, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.snd_soc_dai, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.snd_soc_dai, ptr %15, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, -1
  %25 = getelementptr %struct.i2s_dai, ptr %21, i32 %24
  switch i32 %1, label %370 [
    i32 1, label %26
    i32 6, label %26
    i32 4, label %26
    i32 0, label %310
    i32 5, label %310
    i32 3, label %310
  ]

26:                                               ; preds = %3, %3, %3
  %27 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #6
  %28 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %7, i32 0, i32 16
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #6
  %30 = getelementptr %struct.i2s_dai, ptr %21, i32 %24, i32 12
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr %struct.i2s_dai, ptr %21, i32 %24, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = getelementptr %struct.i2s_dai, ptr %21, i32 %24, i32 5
  %37 = load ptr, ptr %36, align 4
  br label %38

38:                                               ; preds = %35, %26
  %39 = phi ptr [ %37, %35 ], [ %33, %26 ]
  %40 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %31, i32 0, i32 17
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !47
  %44 = lshr i32 %43, 13
  %45 = and i32 %44, 3
  %46 = icmp eq i32 %45, 1
  %47 = select i1 %46, i32 16, i32 32
  %48 = icmp eq i32 %45, 2
  %49 = select i1 %48, i32 48, i32 %47
  %50 = getelementptr %struct.i2s_dai, ptr %21, i32 %24, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  %53 = icmp ne ptr %39, null
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %55, label %58

55:                                               ; preds = %38
  %56 = getelementptr inbounds %struct.i2s_dai, ptr %39, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  br label %58

58:                                               ; preds = %55, %38
  %59 = phi i32 [ %57, %55 ], [ %51, %38 ]
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i32 %49, i32 %59
  %62 = getelementptr %struct.i2s_dai, ptr %21, i32 %24, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i1 %53, i1 false
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.i2s_dai, ptr %39, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  br label %69

69:                                               ; preds = %66, %58
  %70 = phi i32 [ %68, %66 ], [ %63, %58 ]
  %71 = icmp eq i32 %70, 256
  %72 = icmp eq i32 %70, 512
  %73 = or i1 %71, %72
  %74 = select i1 %73, i1 %48, i1 false
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load ptr, ptr %25, align 4
  %77 = getelementptr inbounds %struct.platform_device, ptr %76, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.26, i32 noundef %70) #7
  br label %305

78:                                               ; preds = %69
  %79 = icmp eq i32 %70, 0
  %80 = add i32 %61, -16
  %81 = and i32 %80, -17
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %82, i32 256, i32 384
  %84 = select i1 %79, i32 %83, i32 %70
  %85 = icmp eq ptr %25, null
  br i1 %85, label %106, label %86

86:                                               ; preds = %78
  %87 = load ptr, ptr %30, align 4
  %88 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %87, i32 0, i32 17
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  %91 = getelementptr %struct.i2s_dai, ptr %21, i32 %24, i32 7
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %92, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 2
  %96 = select i1 %95, i32 262144, i32 4
  %97 = and i32 %96, %90
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %144

99:                                               ; preds = %86
  %100 = load ptr, ptr %30, align 4
  %101 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %100, i32 0, i32 17
  %102 = load ptr, ptr %101, align 4
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %104 = and i32 %103, 2
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %144

106:                                              ; preds = %99, %78
  %107 = load ptr, ptr %32, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = getelementptr %struct.i2s_dai, ptr %21, i32 %24, i32 5
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %190, label %113

113:                                              ; preds = %109, %106
  %114 = phi ptr [ %111, %109 ], [ %107, %106 ]
  %115 = getelementptr inbounds %struct.i2s_dai, ptr %114, i32 0, i32 12
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %116, i32 0, i32 17
  %118 = load ptr, ptr %117, align 4
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %120 = and i32 %119, 2
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %144

122:                                              ; preds = %113
  %123 = load ptr, ptr %32, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = getelementptr %struct.i2s_dai, ptr %21, i32 %24, i32 5
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %190, label %129

129:                                              ; preds = %125, %122
  %130 = phi ptr [ %127, %125 ], [ %123, %122 ]
  %131 = getelementptr inbounds %struct.i2s_dai, ptr %130, i32 0, i32 12
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %132, i32 0, i32 17
  %134 = load ptr, ptr %133, align 4
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  %136 = getelementptr inbounds %struct.i2s_dai, ptr %130, i32 0, i32 7
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %137, i32 0, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 2
  %141 = select i1 %140, i32 262144, i32 4
  %142 = and i32 %141, %135
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %190, label %144

144:                                              ; preds = %129, %113, %99, %86
  %145 = load ptr, ptr %30, align 4
  %146 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %145, i32 0, i32 17
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr i8, ptr %147, i32 4
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !48
  %150 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %145, i32 0, i32 12
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %151, i32 0, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = lshr i32 %149, %153
  %155 = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %151, i32 0, i32 9
  %156 = load i32, ptr %155, align 4
  %157 = and i32 %154, %156
  %158 = add i32 %157, -1
  %159 = icmp ult i32 %158, 7
  br i1 %159, label %160, label %163

160:                                              ; preds = %144
  %161 = getelementptr inbounds [7 x i32], ptr @switch.table.i2s_trigger, i32 0, i32 %158
  %162 = load i32, ptr %161, align 4
  br label %163

163:                                              ; preds = %160, %144
  %164 = phi i32 [ %162, %160 ], [ 256, %144 ]
  %165 = icmp eq i32 %164, %84
  br i1 %165, label %166, label %187

166:                                              ; preds = %163
  %167 = load ptr, ptr %30, align 4
  %168 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %167, i32 0, i32 17
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr i8, ptr %169, i32 4
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !40
  %172 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %167, i32 0, i32 12
  %173 = load ptr, ptr %172, align 4
  %174 = load i32, ptr %173, align 4
  %175 = lshr i32 %171, %174
  %176 = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %173, i32 0, i32 8
  %177 = load i32, ptr %176, align 4
  %178 = and i32 %175, %177
  %179 = add i32 %178, -1
  %180 = icmp ult i32 %179, 8
  br i1 %180, label %181, label %184

181:                                              ; preds = %166
  %182 = getelementptr inbounds [8 x i32], ptr @switch.table.i2s_trigger.41, i32 0, i32 %179
  %183 = load i32, ptr %182, align 4
  br label %184

184:                                              ; preds = %181, %166
  %185 = phi i32 [ %183, %181 ], [ 32, %166 ]
  %186 = icmp eq i32 %185, %61
  br i1 %186, label %190, label %187

187:                                              ; preds = %184, %163
  %188 = load ptr, ptr %25, align 4
  %189 = getelementptr inbounds %struct.platform_device, ptr %188, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.config_setup, i32 noundef 907) #7
  br label %305

190:                                              ; preds = %184, %129, %125, %109
  %191 = load ptr, ptr %30, align 4
  %192 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %191, i32 0, i32 17
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr i8, ptr %193, i32 4
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %194) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !49
  %196 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %191, i32 0, i32 13
  %197 = load i32, ptr %196, align 4
  %198 = and i32 %197, 16
  %199 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %191, i32 0, i32 12
  %200 = load ptr, ptr %199, align 4
  %201 = load i32, ptr %200, align 4
  %202 = icmp eq i32 %198, 0
  %203 = icmp ugt i32 %61, 48
  %204 = and i1 %203, %202
  br i1 %204, label %205, label %208

205:                                              ; preds = %190
  %206 = load ptr, ptr %25, align 4
  %207 = getelementptr inbounds %struct.platform_device, ptr %206, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %207, ptr noundef nonnull @.str.27) #7
  br label %245

208:                                              ; preds = %190
  %209 = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %200, i32 0, i32 8
  %210 = load i32, ptr %209, align 4
  %211 = shl i32 %210, %201
  %212 = xor i32 %211, -1
  %213 = and i32 %195, %212
  switch i32 %61, label %238 [
    i32 48, label %214
    i32 32, label %241
    i32 24, label %217
    i32 16, label %220
    i32 64, label %223
    i32 96, label %226
    i32 128, label %229
    i32 192, label %232
    i32 256, label %235
  ]

214:                                              ; preds = %208
  %215 = shl nuw i32 1, %201
  %216 = or i32 %213, %215
  br label %241

217:                                              ; preds = %208
  %218 = shl i32 3, %201
  %219 = or i32 %213, %218
  br label %241

220:                                              ; preds = %208
  %221 = shl i32 2, %201
  %222 = or i32 %213, %221
  br label %241

223:                                              ; preds = %208
  %224 = shl i32 4, %201
  %225 = or i32 %213, %224
  br label %241

226:                                              ; preds = %208
  %227 = shl i32 5, %201
  %228 = or i32 %213, %227
  br label %241

229:                                              ; preds = %208
  %230 = shl i32 6, %201
  %231 = or i32 %213, %230
  br label %241

232:                                              ; preds = %208
  %233 = shl i32 7, %201
  %234 = or i32 %213, %233
  br label %241

235:                                              ; preds = %208
  %236 = shl i32 8, %201
  %237 = or i32 %213, %236
  br label %241

238:                                              ; preds = %208
  %239 = load ptr, ptr %25, align 4
  %240 = getelementptr inbounds %struct.platform_device, ptr %239, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %240, ptr noundef nonnull @.str.28) #7
  br label %245

241:                                              ; preds = %235, %232, %229, %226, %223, %220, %217, %214, %208
  %242 = phi i32 [ %237, %235 ], [ %234, %232 ], [ %231, %229 ], [ %228, %226 ], [ %225, %223 ], [ %222, %220 ], [ %219, %217 ], [ %216, %214 ], [ %213, %208 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %243 = load ptr, ptr %192, align 4
  %244 = getelementptr i8, ptr %243, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 %242) #6, !srcloc !12
  br label %245

245:                                              ; preds = %241, %238, %205
  %246 = load ptr, ptr %30, align 4
  %247 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %246, i32 0, i32 17
  %248 = load ptr, ptr %247, align 4
  %249 = getelementptr i8, ptr %248, i32 4
  %250 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %249) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !51
  %251 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %246, i32 0, i32 12
  %252 = load ptr, ptr %251, align 4
  %253 = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %252, i32 0, i32 1
  %254 = load i32, ptr %253, align 4
  %255 = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %252, i32 0, i32 9
  %256 = load i32, ptr %255, align 4
  %257 = shl i32 %256, %254
  %258 = xor i32 %257, -1
  %259 = and i32 %250, %258
  switch i32 %84, label %281 [
    i32 192, label %260
    i32 96, label %263
    i32 128, label %266
    i32 64, label %269
    i32 768, label %272
    i32 512, label %275
    i32 384, label %278
  ]

260:                                              ; preds = %245
  %261 = shl i32 7, %254
  %262 = or i32 %259, %261
  br label %281

263:                                              ; preds = %245
  %264 = shl i32 6, %254
  %265 = or i32 %259, %264
  br label %281

266:                                              ; preds = %245
  %267 = shl i32 5, %254
  %268 = or i32 %259, %267
  br label %281

269:                                              ; preds = %245
  %270 = shl i32 4, %254
  %271 = or i32 %259, %270
  br label %281

272:                                              ; preds = %245
  %273 = shl i32 3, %254
  %274 = or i32 %259, %273
  br label %281

275:                                              ; preds = %245
  %276 = shl nuw i32 1, %254
  %277 = or i32 %259, %276
  br label %281

278:                                              ; preds = %245
  %279 = shl i32 2, %254
  %280 = or i32 %259, %279
  br label %281

281:                                              ; preds = %278, %275, %272, %269, %266, %263, %260, %245
  %282 = phi i32 [ %280, %278 ], [ %277, %275 ], [ %274, %272 ], [ %271, %269 ], [ %268, %266 ], [ %265, %263 ], [ %262, %260 ], [ %259, %245 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %283 = load ptr, ptr %247, align 4
  %284 = getelementptr i8, ptr %283, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %284, i32 %282) #6, !srcloc !12
  %285 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %31, i32 0, i32 18
  %286 = load i8, ptr %285, align 4, !range !53
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %288, label %306

288:                                              ; preds = %281
  %289 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %31, i32 0, i32 13
  %290 = load i32, ptr %289, align 4
  %291 = and i32 %290, 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %306

293:                                              ; preds = %288
  %294 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %31, i32 0, i32 8
  %295 = load i32, ptr %294, align 4
  %296 = getelementptr %struct.i2s_dai, ptr %21, i32 %24, i32 1
  %297 = load i32, ptr %296, align 4
  %298 = udiv i32 %295, %297
  %299 = udiv i32 %298, %84
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %300 = shl i32 %299, 8
  %301 = add i32 %300, -256
  %302 = or i32 %301, 32768
  %303 = load ptr, ptr %40, align 4
  %304 = getelementptr i8, ptr %303, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %304, i32 %302) #6, !srcloc !12
  br label %306

305:                                              ; preds = %187, %75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %29) #6
  br label %370

306:                                              ; preds = %293, %288, %281
  br i1 %10, label %307, label %308

307:                                              ; preds = %306
  tail call fastcc void @i2s_rxctrl(ptr noundef %25, i32 noundef 1)
  br label %309

308:                                              ; preds = %306
  tail call fastcc void @i2s_txctrl(ptr noundef %25, i32 noundef 1)
  br label %309

309:                                              ; preds = %308, %307
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %29) #6
  br label %370

310:                                              ; preds = %3, %3, %3
  %311 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %7, i32 0, i32 16
  %312 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %311) #6
  br i1 %10, label %313, label %340

313:                                              ; preds = %310
  tail call fastcc void @i2s_rxctrl(ptr noundef %25, i32 noundef 0)
  %314 = icmp eq ptr %25, null
  br i1 %314, label %367, label %315

315:                                              ; preds = %313
  %316 = getelementptr %struct.i2s_dai, ptr %21, i32 %24, i32 7
  %317 = load ptr, ptr %316, align 4
  %318 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %317, i32 0, i32 1
  %319 = load i32, ptr %318, align 4
  %320 = icmp eq i32 %319, 2
  %321 = getelementptr %struct.i2s_dai, ptr %21, i32 %24, i32 12
  %322 = load ptr, ptr %321, align 4
  %323 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %322, i32 0, i32 17
  %324 = load ptr, ptr %323, align 4
  %325 = select i1 %320, i32 24, i32 8
  %326 = getelementptr i8, ptr %324, i32 %325
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %327 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %326) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %328 = or i32 %327, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %326, i32 %328) #6, !srcloc !12
  %329 = load i32, ptr @loops_per_jiffy, align 4
  %330 = udiv i32 %329, 10000
  %331 = add nsw i32 %330, -1
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %337, label %333

333:                                              ; preds = %333, %315
  %334 = phi i32 [ %335, %333 ], [ %331, %315 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !21
  %335 = add i32 %334, -1
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %333

337:                                              ; preds = %333, %315
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %338 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %326) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !23
  %339 = and i32 %338, -129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %326, i32 %339) #6, !srcloc !12
  br label %367

340:                                              ; preds = %310
  tail call fastcc void @i2s_txctrl(ptr noundef %25, i32 noundef 0)
  %341 = icmp eq ptr %25, null
  br i1 %341, label %367, label %342

342:                                              ; preds = %340
  %343 = getelementptr %struct.i2s_dai, ptr %21, i32 %24, i32 7
  %344 = load ptr, ptr %343, align 4
  %345 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %344, i32 0, i32 1
  %346 = load i32, ptr %345, align 4
  %347 = icmp eq i32 %346, 2
  %348 = getelementptr %struct.i2s_dai, ptr %21, i32 %24, i32 12
  %349 = load ptr, ptr %348, align 4
  %350 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %349, i32 0, i32 17
  %351 = load ptr, ptr %350, align 4
  %352 = select i1 %347, i32 24, i32 8
  %353 = getelementptr i8, ptr %351, i32 %352
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %354 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %353) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %355 = or i32 %354, 32768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %353, i32 %355) #6, !srcloc !12
  %356 = load i32, ptr @loops_per_jiffy, align 4
  %357 = udiv i32 %356, 10000
  %358 = add nsw i32 %357, -1
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %364, label %360

360:                                              ; preds = %360, %342
  %361 = phi i32 [ %362, %360 ], [ %358, %342 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !21
  %362 = add i32 %361, -1
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %360

364:                                              ; preds = %360, %342
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %365 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %353) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !23
  %366 = and i32 %365, -32769
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %353, i32 %366) #6, !srcloc !12
  br label %367

367:                                              ; preds = %364, %340, %337, %313
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %311, i32 noundef %312) #6
  %368 = load ptr, ptr %4, align 4
  %369 = tail call i32 @__pm_runtime_idle(ptr noundef %368, i32 noundef 5) #6
  br label %370

370:                                              ; preds = %367, %309, %305, %3
  %371 = phi i32 [ -22, %305 ], [ 0, %3 ], [ 0, %367 ], [ 0, %309 ]
  ret i32 %371
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2s_delay(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  %12 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %6, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !55
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 11, i32 18
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 11, i32 15
  %22 = load i16, ptr %21, align 8
  %23 = and i16 %22, 7
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %26, !prof !37

25:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 1014, i32 noundef 9, ptr noundef null) #6
  br label %26

26:                                               ; preds = %25, %20, %2
  %27 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = and i32 %15, 15
  br label %51

32:                                               ; preds = %26
  %33 = getelementptr %struct.i2s_dai, ptr %8, i32 %11, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load ptr, ptr %12, align 4
  %40 = getelementptr i8, ptr %39, i32 24
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !56
  %42 = lshr i32 %41, 8
  %43 = and i32 %42, 127
  br label %51

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %6, i32 0, i32 12
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %46, i32 0, i32 10
  %48 = load i32, ptr %47, align 4
  %49 = lshr i32 %15, %48
  %50 = and i32 %49, 127
  br label %51

51:                                               ; preds = %44, %38, %30
  %52 = phi i32 [ %31, %30 ], [ %43, %38 ], [ %50, %44 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2s_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @pm_runtime_force_suspend(ptr noundef %3) #6
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2s_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @pm_runtime_force_resume(ptr noundef %3) #6
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2s_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !57
  %8 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 9
  store i32 %7, ptr %8, align 4
  %9 = load ptr, ptr %4, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !58
  %11 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 10
  store i32 %10, ptr %11, align 4
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !59
  %15 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 11
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  %18 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  tail call void @clk_disable(ptr noundef %19) #6
  tail call void @clk_unprepare(ptr noundef %19) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2s_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %39

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @clk_prepare(ptr noundef nonnull %14) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = tail call i32 @clk_enable(ptr noundef nonnull %14) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  tail call void @clk_unprepare(ptr noundef nonnull %14) #6
  br label %23

23:                                               ; preds = %22, %16
  %24 = phi i32 [ %20, %22 ], [ %17, %16 ]
  %25 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %25) #6
  tail call void @clk_unprepare(ptr noundef %25) #6
  br label %39

26:                                               ; preds = %19, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %27 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %31 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 9
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %29, align 4
  %34 = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %35 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 11
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %29, align 4
  %38 = getelementptr i8, ptr %37, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #6, !srcloc !12
  br label %39

39:                                               ; preds = %26, %23, %11, %1
  %40 = phi i32 [ %24, %23 ], [ 0, %26 ], [ %9, %11 ], [ %6, %1 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i64 3584996}
!10 = !{i64 2153983827}
!11 = !{i64 2153984037}
!12 = !{i64 3584578}
!13 = !{i64 2147930746}
!14 = !{i64 429056, i64 2147919027, i64 2147919053, i64 2147919100, i64 2147919122, i64 2147919150, i64 2147919170}
!15 = !{i64 415625, i64 415650, i64 415672, i64 415688, i64 415700, i64 415720, i64 415744, i64 415760, i64 415772}
!16 = !{i64 2147930872}
!17 = !{i64 2153975646}
!18 = !{i64 2153955876}
!19 = !{i64 2153956313}
!20 = !{i64 2153956619}
!21 = !{i64 2153956461}
!22 = !{i64 2153957252}
!23 = !{i64 2153957690}
!24 = !{i64 2153976731}
!25 = !{i64 2153952414}
!26 = !{i64 2153952731}
!27 = !{i64 2153946398}
!28 = !{i64 2153945353}
!29 = !{i64 2153953007}
!30 = !{i64 2153953329}
!31 = !{i64 2153953633}
!32 = !{i64 2153954072}
!33 = !{i64 2153954389}
!34 = !{i64 2153954643}
!35 = !{i64 2153954947}
!36 = !{i64 2153958390}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{i64 2153961423}
!39 = !{i64 2153961611}
!40 = !{i64 2153949621}
!41 = !{i64 2153964413}
!42 = !{i64 2153965192}
!43 = !{i64 2153969006}
!44 = !{i32 0, i32 33}
!45 = !{i64 2153968081}
!46 = !{i64 2153968269}
!47 = !{i64 2153952097}
!48 = !{i64 2153948281}
!49 = !{i64 2153950125}
!50 = !{i64 2153951450}
!51 = !{i64 2153948785}
!52 = !{i64 2153948989}
!53 = !{i8 0, i8 2}
!54 = !{i64 2153970986}
!55 = !{i64 2153974345}
!56 = !{i64 2153975419}
!57 = !{i64 2153980391}
!58 = !{i64 2153980726}
!59 = !{i64 2153981061}
!60 = !{i64 2153981266}
!61 = !{i64 2153981633}
!62 = !{i64 2153982000}
