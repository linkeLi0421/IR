; ModuleID = '/llk/IR/sound/soc/samsung/midas_wm1811.c_pt.bc'
source_filename = "../sound/soc/samsung/midas_wm1811.c"
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
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
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
%struct.midas_priv = type { ptr, ptr, ptr, ptr, i32, %struct.snd_soc_jack }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }

@midas_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,midas-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author253 = internal constant [43 x i8] c"author=Simon Shields <simon@lineageos.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [35 x i8] c"description=ASoC support for Midas\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@midas_driver = internal global %struct.platform_driver { ptr @midas_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @midas_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"midas-audio\00", align 1
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@midas_card = internal global %struct.snd_soc_card { ptr @.str.20, ptr null, ptr null, ptr null, [80 x i8] zeroinitializer, [32 x i8] zeroinitializer, ptr null, ptr null, ptr @__this_module, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr @midas_late_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @midas_set_bias_level, ptr null, ptr null, ptr null, i32 0, ptr @midas_dai, i32 3, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr @midas_controls, i32 9, ptr @midas_dapm_widgets, i32 9, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, align 4
@midas_probe.dai_link = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mic-bias\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to get mic bias regulator\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"submic-bias\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to get submic bias regulator\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"fm-sel\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to get FM selection GPIO\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"lineout-sel\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Failed to get line out selection GPIO\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Card name is not specified\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"samsung,audio-routing\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Audio routing invalid/unspecified\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"codec\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"sound-dai\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"parsing cpu/sound-dai failed\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"audio-codec property invalid/missing\0A\00", align 1
@midas_component = internal constant %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@midas_ext_dai = internal global [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.31, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 10, i32 8000, i32 16000, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 10, i32 8000, i32 16000, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.33, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 10, i32 8000, i32 16000, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 10, i32 8000, i32 16000, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], align 8
@.str.18 = private unnamed_addr constant [34 x i8] c"Failed to register component: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"Failed to register card: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"Midas WM1811\00", align 1
@midas_controls = internal constant [9 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.43 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.45 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.47 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.49 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.51 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.53 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.55 to i32) }], align 4
@.str.21 = private unnamed_addr constant [31 x i8] c"Failed to switch to MCLK2: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"Headset\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"Unable to switch to MCLK2: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"Unable to stop FLL1: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"Failed to set FLL1 rate: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"Failed to set SYSCLK source: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"Failed to set OPCLK source: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"WM8994 AIF1\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"HiFi Primary\00", align 1
@wm1811_hifi_cpus = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@wm1811_hifi_codecs = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.35 }], align 4
@wm1811_hifi_platforms = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@midas_aif1_ops = internal constant %struct.snd_soc_ops { ptr null, ptr null, ptr @midas_aif1_hw_params, ptr null, ptr null, ptr null }, align 4
@.str.30 = private unnamed_addr constant [13 x i8] c"WM1811 Voice\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"Voice call\00", align 1
@wm1811_voice_cpus = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@wm1811_voice_codecs = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.36 }], align 4
@wm1811_voice_platforms = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@.str.32 = private unnamed_addr constant [10 x i8] c"WM1811 BT\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"Bluetooth\00", align 1
@wm1811_bt_cpus = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@wm1811_bt_codecs = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.37 }], align 4
@wm1811_bt_platforms = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@midas_dai = internal global [3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 } { ptr @.str.28, ptr @.str.29, ptr @wm1811_hifi_cpus, i32 1, ptr @wm1811_hifi_codecs, i32 1, ptr @wm1811_hifi_platforms, i32 1, i32 0, ptr null, i32 0, i32 4097, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @midas_aif1_ops, ptr null, i8 0, i8 0, i8 0 }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 } { ptr @.str.30, ptr @.str.31, ptr @wm1811_voice_cpus, i32 1, ptr @wm1811_voice_codecs, i32 1, ptr @wm1811_voice_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 8, i8 0, i8 0 }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 } { ptr @.str.32, ptr @.str.33, ptr @wm1811_bt_cpus, i32 1, ptr @wm1811_bt_codecs, i32 1, ptr @wm1811_bt_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 8, i8 0, i8 0 }], align 4
@.str.35 = private unnamed_addr constant [12 x i8] c"wm8994-aif1\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"wm8994-aif2\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"wm8994-aif3\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"HP Switch\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"HP\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"SPK Switch\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"SPK\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"RCV Switch\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"RCV\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"LINE Switch\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"LINE\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"HDMI Switch\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"Main Mic Switch\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"Main Mic\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"Sub Mic Switch\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"Sub Mic\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"Headset Mic Switch\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"Headset Mic\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"FM In Switch\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"FM In\00", align 1
@midas_dapm_widgets = internal constant [9 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.39, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @midas_ext_spkmode, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.45, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @midas_line_set, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.47, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.55, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @midas_fm_set, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.53, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.49, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @midas_mic_bias, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.51, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @midas_submic_bias, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_license255], section "llvm.metadata"

@__mod_of__midas_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @midas_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @midas_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @midas_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @midas_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 96, i32 noundef 3520) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %101, label %7

7:                                                ; preds = %1
  store ptr %5, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @midas_card, i32 0, i32 58), align 4
  store ptr %4, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @midas_card, i32 0, i32 6), align 4
  %8 = tail call ptr @devm_regulator_get(ptr noundef %4, ptr noundef nonnull @.str.1) #6
  store ptr %8, ptr %5, align 4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #7
  %11 = load ptr, ptr %5, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %101

13:                                               ; preds = %7
  %14 = tail call ptr @devm_regulator_get(ptr noundef %4, ptr noundef nonnull @.str.3) #6
  %15 = getelementptr inbounds %struct.midas_priv, ptr %5, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #7
  %18 = load ptr, ptr %15, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %101

20:                                               ; preds = %13
  %21 = tail call ptr @devm_gpiod_get_optional(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef 7) #6
  %22 = getelementptr inbounds %struct.midas_priv, ptr %5, i32 0, i32 2
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #7
  %25 = load ptr, ptr %22, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %101

27:                                               ; preds = %20
  %28 = tail call ptr @devm_gpiod_get_optional(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef 7) #6
  %29 = getelementptr inbounds %struct.midas_priv, ptr %5, i32 0, i32 3
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8) #7
  %32 = load ptr, ptr %29, align 4
  %33 = ptrtoint ptr %32 to i32
  br label %101

34:                                               ; preds = %27
  %35 = tail call i32 @snd_soc_of_parse_card_name(ptr noundef nonnull @midas_card, ptr noundef nonnull @.str.9) #6
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10) #7
  br label %101

38:                                               ; preds = %34
  %39 = tail call i32 @snd_soc_of_parse_audio_routing(ptr noundef nonnull @midas_card, ptr noundef nonnull @.str.11) #6
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12) #7
  br label %101

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %44 = load ptr, ptr %43, align 8
  %45 = tail call ptr @of_get_child_by_name(ptr noundef %44, ptr noundef nonnull @.str.13) #6
  %46 = icmp eq ptr %45, null
  br i1 %46, label %101, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr %43, align 8
  %49 = tail call ptr @of_get_child_by_name(ptr noundef %48, ptr noundef nonnull @.str.14) #6
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  tail call void @of_node_put(ptr noundef nonnull %45) #6
  br label %101

52:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #6, !annotation !8
  %53 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %45, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #6
  %54 = icmp ne i32 %53, 0
  %55 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #6
  call void @of_node_put(ptr noundef nonnull %45) #6
  %56 = icmp eq ptr %55, null
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.16) #7
  call void @of_node_put(ptr noundef nonnull %49) #6
  br label %101

59:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #6, !annotation !8
  %60 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %49, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #6
  %61 = icmp ne i32 %60, 0
  %62 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #6
  call void @of_node_put(ptr noundef nonnull %49) #6
  %63 = icmp eq ptr %62, null
  %64 = select i1 %61, i1 true, i1 %63
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @midas_card, i32 0, i32 26), align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %69, label %89

68:                                               ; preds = %59
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.17) #7
  br label %99

69:                                               ; preds = %74, %65
  %70 = phi i32 [ %84, %74 ], [ 0, %65 ]
  %71 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @midas_card, i32 0, i32 25), align 4
  %72 = getelementptr %struct.snd_soc_dai_link, ptr %71, i32 %70
  %73 = icmp eq ptr %72, null
  br i1 %73, label %87, label %74

74:                                               ; preds = %69
  %75 = getelementptr %struct.snd_soc_dai_link, ptr %71, i32 %70, i32 4
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %76, i32 0, i32 1
  store ptr %62, ptr %77, align 4
  %78 = getelementptr %struct.snd_soc_dai_link, ptr %71, i32 %70, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %79, i32 0, i32 1
  store ptr %55, ptr %80, align 4
  %81 = getelementptr %struct.snd_soc_dai_link, ptr %71, i32 %70, i32 6
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %82, i32 0, i32 1
  store ptr %55, ptr %83, align 4
  %84 = add nuw nsw i32 %70, 1
  %85 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @midas_card, i32 0, i32 26), align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %69, label %87

87:                                               ; preds = %74, %69
  %88 = phi ptr [ %72, %74 ], [ null, %69 ]
  store ptr %88, ptr @midas_probe.dai_link, align 4
  br label %89

89:                                               ; preds = %87, %65
  %90 = call i32 @devm_snd_soc_register_component(ptr noundef %4, ptr noundef nonnull @midas_component, ptr noundef nonnull @midas_ext_dai, i32 noundef 2) #6
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.18, i32 noundef %90) #7
  br label %97

93:                                               ; preds = %89
  %94 = call i32 @devm_snd_soc_register_card(ptr noundef %4, ptr noundef nonnull @midas_card) #6
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.19, i32 noundef %94) #7
  br label %97

97:                                               ; preds = %96, %92
  %98 = phi i32 [ %90, %92 ], [ %94, %96 ]
  call void @of_node_put(ptr noundef nonnull %62) #6
  br label %99

99:                                               ; preds = %97, %68
  %100 = phi i32 [ %98, %97 ], [ -22, %68 ]
  call void @of_node_put(ptr noundef nonnull %55) #6
  br label %101

101:                                              ; preds = %99, %93, %58, %51, %42, %41, %37, %31, %24, %17, %10, %1
  %102 = phi i32 [ %12, %10 ], [ %19, %17 ], [ %26, %24 ], [ %33, %31 ], [ %35, %37 ], [ %39, %41 ], [ %100, %99 ], [ -22, %58 ], [ -22, %51 ], [ -12, %1 ], [ -22, %42 ], [ 0, %93 ]
  ret i32 %102
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_audio_routing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @midas_late_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @snd_soc_get_pcm_runtime(ptr noundef %0, ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 11
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr ptr, ptr %6, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 58
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %10, i32 noundef 2, i32 noundef 32768, i32 noundef 0) #6
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.snd_soc_dai, ptr %10, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.21, i32 noundef %13) #7
  br label %26

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.midas_priv, ptr %12, i32 0, i32 5
  %20 = tail call i32 @snd_soc_card_jack_new(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef 32267, ptr noundef %19, ptr noundef null, i32 noundef 0) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.snd_soc_dai, ptr %10, i32 0, i32 12
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @wm8958_mic_detect(ptr noundef %24, ptr noundef %19, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #6
  br label %26

26:                                               ; preds = %22, %18, %15
  %27 = phi i32 [ %13, %15 ], [ 0, %22 ], [ %20, %18 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @midas_set_bias_level(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @snd_soc_get_pcm_runtime(ptr noundef %0, ptr noundef %5) #6
  %7 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %6, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr ptr, ptr %8, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %1, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.snd_soc_dai, ptr %12, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %3
  switch i32 %2, label %39 [
    i32 1, label %19
    i32 2, label %37
  ]

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %6, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.snd_soc_card, ptr %21, i32 0, i32 58
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %12, i32 noundef 2, i32 noundef 32768, i32 noundef 0) #6
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.snd_soc_card, ptr %21, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.23, i32 noundef %24) #7
  br label %39

29:                                               ; preds = %19
  %30 = tail call i32 @snd_soc_dai_set_pll(ptr noundef %12, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.snd_soc_card, ptr %21, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.24, i32 noundef %30) #7
  br label %39

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.midas_priv, ptr %23, i32 0, i32 4
  store i32 0, ptr %36, align 4
  br label %39

37:                                               ; preds = %18
  %38 = tail call fastcc i32 @midas_start_fll1(ptr noundef %6, i32 noundef 0)
  br label %39

39:                                               ; preds = %37, %35, %32, %26, %18, %3
  %40 = phi i32 [ %38, %37 ], [ 0, %3 ], [ 0, %18 ], [ %24, %26 ], [ %30, %32 ], [ 0, %35 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_get_pcm_runtime(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_card_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8958_mic_detect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @midas_start_fll1(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 58
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr ptr, ptr %8, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %8, align 4
  %14 = icmp eq i32 %1, 0
  %15 = getelementptr inbounds %struct.midas_priv, ptr %6, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = select i1 %14, i32 %16, i32 %1
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 11289600, i32 %17
  %20 = getelementptr inbounds %struct.midas_priv, ptr %6, i32 0, i32 4
  %21 = icmp eq i32 %19, %16
  %22 = icmp eq i32 %16, 0
  %23 = or i1 %22, %21
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %12, i32 noundef 2, i32 noundef 32768, i32 noundef 0) #6
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.23, i32 noundef %25) #7
  br label %48

30:                                               ; preds = %24, %2
  %31 = tail call i32 @snd_soc_dai_set_pll(ptr noundef %12, i32 noundef 1, i32 noundef 1, i32 noundef 24000000, i32 noundef %19) #6
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.25, i32 noundef %31) #7
  br label %48

36:                                               ; preds = %30
  store i32 %19, ptr %20, align 4
  %37 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %12, i32 noundef 3, i32 noundef %19, i32 noundef 0) #6
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.26, i32 noundef %37) #7
  br label %48

42:                                               ; preds = %36
  %43 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %13, i32 noundef 3, i32 noundef 0, i32 noundef 3) #6
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 6
  %47 = load ptr, ptr %46, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.27, i32 noundef %43) #7
  br label %48

48:                                               ; preds = %45, %42, %39, %33, %27
  %49 = phi i32 [ %25, %27 ], [ %31, %33 ], [ %37, %39 ], [ %43, %45 ], [ 0, %42 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_pll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @midas_aif1_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 8000
  %8 = icmp eq i32 %6, 11025
  %9 = or i1 %7, %8
  %10 = select i1 %9, i32 9, i32 8
  %11 = shl i32 %6, %10
  %12 = tail call fastcc i32 @midas_start_fll1(ptr noundef %4, i32 noundef %11)
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_info_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @midas_ext_spkmode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  switch i32 %2, label %11 [
    i32 1, label %8
    i32 8, label %7
  ]

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %7, %3
  %9 = phi i32 [ 0, %7 ], [ 8, %3 ]
  %10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 36, i32 noundef 8, i32 noundef %9) #6
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ 0, %3 ], [ %10, %8 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @midas_line_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 58
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.midas_priv, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  switch i32 %2, label %17 [
    i32 1, label %15
    i32 8, label %14
  ]

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14, %13
  %16 = phi i32 [ 0, %14 ], [ %2, %13 ]
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %11, i32 noundef %16) #6
  br label %17

17:                                               ; preds = %15, %13, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @midas_fm_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 58
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.midas_priv, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  switch i32 %2, label %17 [
    i32 1, label %15
    i32 8, label %14
  ]

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14, %13
  %16 = phi i32 [ 0, %14 ], [ %2, %13 ]
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %11, i32 noundef %16) #6
  br label %17

17:                                               ; preds = %15, %13, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @midas_mic_bias(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 58
  %9 = load ptr, ptr %8, align 4
  switch i32 %2, label %16 [
    i32 1, label %10
    i32 8, label %13
  ]

10:                                               ; preds = %3
  %11 = load ptr, ptr %9, align 4
  %12 = tail call i32 @regulator_enable(ptr noundef %11) #6
  br label %16

13:                                               ; preds = %3
  %14 = load ptr, ptr %9, align 4
  %15 = tail call i32 @regulator_disable(ptr noundef %14) #6
  br label %16

16:                                               ; preds = %13, %10, %3
  %17 = phi i32 [ %15, %13 ], [ %12, %10 ], [ 0, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @midas_submic_bias(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 58
  %9 = load ptr, ptr %8, align 4
  switch i32 %2, label %18 [
    i32 1, label %10
    i32 8, label %14
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.midas_priv, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @regulator_enable(ptr noundef %12) #6
  br label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.midas_priv, ptr %9, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @regulator_disable(ptr noundef %16) #6
  br label %18

18:                                               ; preds = %14, %10, %3
  %19 = phi i32 [ %17, %14 ], [ %13, %10 ], [ 0, %3 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
