; ModuleID = '/llk/IR/sound/soc/rockchip/rockchip_max98090.c_pt.bc'
source_filename = "../sound/soc/rockchip/rockchip_max98090.c"
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
%struct.snd_soc_aux_dev = type { %struct.snd_soc_dai_link_component, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.77, i32 }
%union.anon.77 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.85, ptr }
%union.anon.85 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.snd_soc_jack_pin = type { %struct.list_head, ptr, i32, i8 }
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
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@rockchip_max98090_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rockchip-audio-max98090\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author230 = internal constant [39 x i8] c"author=jianqun <jay.xu@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [50 x i8] c"description=Rockchip max98090 machine ASoC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias233 = internal constant [37 x i8] c"alias=platform:rockchip-snd-max98090\00", section ".modinfo", align 1
@snd_rk_mc_driver = internal global %struct.platform_driver { ptr @snd_rk_mc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_max98090_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [22 x i8] c"rockchip-snd-max98090\00", align 1
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"rockchip,i2s-controller\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Property 'rockchip,i2s-controller missing or invalid\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"rockchip,audio-codec\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"rockchip,hdmi-codec\00", align 1
@rockchip_max98090_hdmi_card = internal global %struct.snd_soc_card { ptr @.str.9, ptr null, ptr null, ptr null, [80 x i8] zeroinitializer, [32 x i8] zeroinitializer, ptr null, ptr null, ptr @__this_module, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rk_max98090_hdmi_dailinks, i32 2, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr @rk_98090_headset_dev, i32 1, %struct.list_head zeroinitializer, ptr @rk_max98090_hdmi_controls, i32 5, ptr @rk_max98090_hdmi_dapm_widgets, i32 5, ptr @rk_max98090_hdmi_audio_map, i32 8, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, align 4
@rockchip_max98090_card = internal global %struct.snd_soc_card { ptr @.str.40, ptr null, ptr null, ptr null, [80 x i8] zeroinitializer, [32 x i8] zeroinitializer, ptr null, ptr null, ptr @__this_module, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rk_max98090_dailinks, i32 1, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr @rk_98090_headset_dev, i32 1, %struct.list_head zeroinitializer, ptr @rk_max98090_controls, i32 4, ptr @rk_max98090_dapm_widgets, i32 4, ptr @rk_max98090_audio_map, i32 7, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, align 4
@rockchip_hdmi_card = internal global %struct.snd_soc_card { ptr @.str.43, ptr null, ptr null, ptr null, [80 x i8] zeroinitializer, [32 x i8] zeroinitializer, ptr null, ptr null, ptr @__this_module, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rk_hdmi_dailinks, i32 1, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr @rk_hdmi_controls, i32 1, ptr @rk_hdmi_dapm_widgets, i32 1, ptr @rk_hdmi_audio_map, i32 1, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"At least one of codecs should be specified\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"rockchip,model\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Soc parse card name failed %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Soc register card failed %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"ROCKCHIP-MAX98090-HDMI\00", align 1
@rk_98090_headset_dev = internal global %struct.snd_soc_aux_dev { %struct.snd_soc_dai_link_component zeroinitializer, ptr @rk_98090_headset_init }, align 4
@rk_max98090_hdmi_controls = internal constant [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.str.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.str.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.str.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.str.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.str.12 to i32) }], align 4
@rk_max98090_hdmi_audio_map = internal constant [8 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.33, ptr null, ptr @.str.24, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.24, ptr null, ptr @.str.15, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.34, ptr null, ptr @.str.28, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.23, ptr null, ptr @.str.35, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.23, ptr null, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.30, ptr null, ptr @.str.37, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.30, ptr null, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"max98090\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Analog\00", align 1
@analog_cpus = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@analog_codecs = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.14 }], align 4
@analog_platforms = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@rk_aif1_ops = internal constant %struct.snd_soc_ops { ptr @rk_aif1_startup, ptr null, ptr @rk_aif1_hw_params, ptr null, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@hdmi_cpus = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@hdmi_codecs = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.19 }], align 4
@hdmi_platforms = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@rk_max98090_hdmi_dailinks = internal global [2 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 } { ptr @.str.10, ptr @.str.11, ptr @analog_cpus, i32 1, ptr @analog_codecs, i32 1, ptr @analog_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr @rk_init, ptr null, ptr null, ptr @rk_aif1_ops, ptr null, i8 0, i8 0, i8 0 }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 } { ptr @.str.12, ptr @.str.12, ptr @hdmi_cpus, i32 1, ptr @hdmi_codecs, i32 1, ptr @hdmi_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr @rk_hdmi_init, ptr null, ptr null, ptr @rk_aif1_ops, ptr null, i8 0, i8 0, i8 0 }], align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"HiFi\00", align 1
@headset_jack = internal global %struct.snd_soc_jack zeroinitializer, align 4
@rk_jack_nb = internal global %struct.notifier_block { ptr @rk_jack_event, ptr null, i32 0 }, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"MICBIAS\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"SHDN\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"Can't set cpu dai clock %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"Can't set codec dai clock %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"i2s-hifi\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"HDMI Jack\00", align 1
@rk_hdmi_jack = internal global %struct.snd_soc_jack zeroinitializer, align 4
@.str.21 = private unnamed_addr constant [24 x i8] c"Can't new HDMI Jack %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@headset_jack_pins = internal global [2 x %struct.snd_soc_jack_pin] [%struct.snd_soc_jack_pin { %struct.list_head zeroinitializer, ptr @.str.23, i32 1, i8 0 }, %struct.snd_soc_jack_pin { %struct.list_head zeroinitializer, ptr @.str.24, i32 2, i8 0 }], align 4
@.str.23 = private unnamed_addr constant [10 x i8] c"Headphone\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Headset Mic\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"Headphone Switch\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"Headset Mic Switch\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"Int Mic Switch\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"Int Mic\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"Speaker Switch\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"HDMI Switch\00", align 1
@rk_max98090_hdmi_dapm_widgets = internal constant [5 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.23, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.24, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.28, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.30, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.12, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.33 = private unnamed_addr constant [5 x i8] c"IN34\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"DMICL\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"HPL\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"HPR\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"SPKL\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"SPKR\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"ROCKCHIP-I2S\00", align 1
@rk_max98090_controls = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.str.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.str.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.str.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.str.30 to i32) }], align 4
@rk_max98090_audio_map = internal constant [7 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.33, ptr null, ptr @.str.24, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.24, ptr null, ptr @.str.15, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.34, ptr null, ptr @.str.28, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.23, ptr null, ptr @.str.35, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.23, ptr null, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.30, ptr null, ptr @.str.37, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.30, ptr null, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@rk_max98090_dailinks = internal global [1 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 } { ptr @.str.10, ptr @.str.11, ptr @analog_cpus, i32 1, ptr @analog_codecs, i32 1, ptr @analog_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr @rk_init, ptr null, ptr null, ptr @rk_aif1_ops, ptr null, i8 0, i8 0, i8 0 }], align 4
@rk_max98090_dapm_widgets = internal constant [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.23, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.24, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.28, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.30, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.43 = private unnamed_addr constant [14 x i8] c"ROCKCHIP-HDMI\00", align 1
@rk_hdmi_controls = internal constant [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.str.12 to i32) }], align 4
@rk_hdmi_audio_map = internal constant [1 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@rk_hdmi_dailinks = internal global [1 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 } { ptr @.str.12, ptr @.str.12, ptr @hdmi_cpus, i32 1, ptr @hdmi_codecs, i32 1, ptr @hdmi_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr @rk_hdmi_init, ptr null, ptr null, ptr @rk_aif1_ops, ptr null, i8 0, i8 0, i8 0 }], align 4
@rk_hdmi_dapm_widgets = internal constant [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.12, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.46 = private unnamed_addr constant [23 x i8] c"rockchip,headset-codec\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"Property 'rockchip,headset-codec' missing/invalid\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias233, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_license232], section "llvm.metadata"

@__mod_of__rockchip_max98090_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @rockchip_max98090_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @snd_rk_mc_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @snd_rk_mc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_rk_mc_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #7, !annotation !8
  %9 = call i32 @__of_parse_phandle_with_args(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #7
  %10 = icmp ne i32 %9, 0
  %11 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #7
  %12 = icmp eq ptr %11, null
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2) #8
  br label %93

15:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #7, !annotation !8
  %16 = call i32 @__of_parse_phandle_with_args(ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #7
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %4, align 4
  %19 = select i1 %17, ptr %18, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #7, !annotation !8
  %20 = call i32 @__of_parse_phandle_with_args(ptr noundef %8, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #7
  %21 = icmp eq i32 %20, 0
  %22 = load ptr, ptr %3, align 4
  %23 = select i1 %21, ptr %22, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #7
  %24 = icmp ne ptr %19, null
  %25 = icmp ne ptr %23, null
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %46, label %27

27:                                               ; preds = %15
  br i1 %24, label %28, label %31

28:                                               ; preds = %27
  %29 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @rockchip_max98090_card, i32 0, i32 25), align 4
  %30 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %29, i32 0, i32 4
  br label %61

31:                                               ; preds = %27
  br i1 %25, label %32, label %45

32:                                               ; preds = %31
  %33 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @rockchip_hdmi_card, i32 0, i32 25), align 4
  %34 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %33, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %35, i32 0, i32 1
  store ptr %23, ptr %36, align 4
  %37 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @rockchip_hdmi_card, i32 0, i32 25), align 4
  %38 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %39, i32 0, i32 1
  store ptr %11, ptr %40, align 4
  %41 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @rockchip_hdmi_card, i32 0, i32 25), align 4
  %42 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %41, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %43, i32 0, i32 1
  store ptr %11, ptr %44, align 4
  store ptr %6, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @rockchip_hdmi_card, i32 0, i32 6), align 4
  br label %84

45:                                               ; preds = %31
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.5) #8
  br label %93

46:                                               ; preds = %15
  %47 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @rockchip_max98090_hdmi_card, i32 0, i32 25), align 4
  %48 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %47, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %49, i32 0, i32 1
  store ptr %19, ptr %50, align 4
  %51 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @rockchip_max98090_hdmi_card, i32 0, i32 25), align 4
  %52 = getelementptr %struct.snd_soc_dai_link, ptr %51, i32 1, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %53, i32 0, i32 1
  store ptr %23, ptr %54, align 4
  %55 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @rockchip_max98090_hdmi_card, i32 0, i32 25), align 4
  %56 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %57, i32 0, i32 1
  store ptr %11, ptr %58, align 4
  %59 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @rockchip_max98090_hdmi_card, i32 0, i32 25), align 4
  %60 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %59, i32 0, i32 6
  br label %61

61:                                               ; preds = %46, %28
  %62 = phi ptr [ %60, %46 ], [ %30, %28 ]
  %63 = phi ptr [ %11, %46 ], [ %19, %28 ]
  %64 = phi ptr [ getelementptr inbounds (%struct.snd_soc_card, ptr @rockchip_max98090_hdmi_card, i32 0, i32 25), %46 ], [ getelementptr inbounds (%struct.snd_soc_card, ptr @rockchip_max98090_card, i32 0, i32 25), %28 ]
  %65 = phi i32 [ 1, %46 ], [ 0, %28 ]
  %66 = phi ptr [ getelementptr inbounds (%struct.snd_soc_card, ptr @rockchip_max98090_hdmi_card, i32 0, i32 6), %46 ], [ getelementptr inbounds (%struct.snd_soc_card, ptr @rockchip_max98090_card, i32 0, i32 6), %28 ]
  %67 = phi ptr [ @rockchip_max98090_hdmi_card, %46 ], [ @rockchip_max98090_card, %28 ]
  %68 = load ptr, ptr %62, align 4
  %69 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %68, i32 0, i32 1
  store ptr %63, ptr %69, align 4
  %70 = load ptr, ptr %64, align 4
  %71 = getelementptr %struct.snd_soc_dai_link, ptr %70, i32 %65, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %72, i32 0, i32 1
  store ptr %11, ptr %73, align 4
  %74 = load ptr, ptr %64, align 4
  %75 = getelementptr %struct.snd_soc_dai_link, ptr %74, i32 %65, i32 6
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %76, i32 0, i32 1
  store ptr %11, ptr %77, align 4
  store ptr %6, ptr %66, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #7, !annotation !8
  %78 = call i32 @__of_parse_phandle_with_args(ptr noundef %8, ptr noundef nonnull @.str.46, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #7
  %79 = icmp eq i32 %78, 0
  %80 = load ptr, ptr %2, align 4
  %81 = select i1 %79, ptr %80, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #7
  store ptr %81, ptr getelementptr inbounds (%struct.snd_soc_aux_dev, ptr @rk_98090_headset_dev, i32 0, i32 0, i32 1), align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %61
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.47) #8
  br label %93

84:                                               ; preds = %61, %32
  %85 = phi ptr [ @rockchip_hdmi_card, %32 ], [ %67, %61 ]
  %86 = call i32 @snd_soc_of_parse_card_name(ptr noundef nonnull %85, ptr noundef nonnull @.str.6) #7
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7, i32 noundef %86) #8
  br label %93

89:                                               ; preds = %84
  %90 = call i32 @devm_snd_soc_register_card(ptr noundef %6, ptr noundef nonnull %85) #7
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.8, i32 noundef %90) #8
  br label %93

93:                                               ; preds = %92, %89, %88, %83, %45, %14
  %94 = phi i32 [ %86, %88 ], [ %90, %92 ], [ -22, %45 ], [ -22, %14 ], [ -22, %83 ], [ 0, %89 ]
  ret i32 %94
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_init(ptr nocapture noundef readnone %0) #2 {
  tail call void @snd_soc_jack_notifier_register(ptr noundef nonnull @headset_jack, ptr noundef nonnull @rk_jack_nb) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_hdmi_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr ptr, ptr %5, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @snd_soc_card_jack_new(ptr noundef %3, ptr noundef nonnull @.str.20, i32 noundef 4, ptr noundef nonnull @rk_hdmi_jack, ptr noundef null, i32 noundef 0) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.21, i32 noundef %12) #8
  br label %19

17:                                               ; preds = %1
  %18 = tail call i32 @snd_soc_component_set_jack(ptr noundef %11, ptr noundef nonnull @rk_hdmi_jack, ptr noundef null) #7
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i32 [ %12, %14 ], [ %18, %17 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_jack_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_jack, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 51
  %7 = and i32 %1, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %6, ptr noundef nonnull @.str.15) #7
  %11 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %6, ptr noundef nonnull @.str.16) #7
  br label %15

12:                                               ; preds = %3
  %13 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %6, ptr noundef nonnull @.str.15) #7
  %14 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %6, ptr noundef nonnull @.str.16) #7
  br label %15

15:                                               ; preds = %12, %9
  %16 = tail call i32 @snd_soc_dapm_sync(ptr noundef %6) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_enable_pin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_aif1_startup(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 13, i32 noundef 240, i32 noundef 240) #7
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_aif1_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr ptr, ptr %6, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %34 [
    i32 8000, label %15
    i32 16000, label %15
    i32 24000, label %15
    i32 32000, label %15
    i32 48000, label %15
    i32 64000, label %15
    i32 96000, label %15
    i32 11025, label %14
    i32 22050, label %14
    i32 44100, label %14
    i32 88200, label %14
  ]

14:                                               ; preds = %2, %2, %2, %2
  br label %15

15:                                               ; preds = %14, %2, %2, %2, %2, %2, %2, %2
  %16 = phi i32 [ 11289600, %14 ], [ 12288000, %2 ], [ 12288000, %2 ], [ 12288000, %2 ], [ 12288000, %2 ], [ 12288000, %2 ], [ 12288000, %2 ], [ 12288000, %2 ]
  %17 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %7, i32 noundef 0, i32 noundef %16, i32 noundef 1) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.17, i32 noundef %17) #8
  br label %34

22:                                               ; preds = %15
  %23 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %11, i32 noundef 0, i32 noundef %16, i32 noundef 0) #7
  %24 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @strcmp(ptr noundef %26, ptr noundef nonnull dereferenceable(5) @.str.12)
  %28 = icmp eq i32 %27, 0
  %29 = icmp eq i32 %23, 0
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.snd_soc_dai, ptr %11, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.18, i32 noundef %23) #8
  br label %34

34:                                               ; preds = %31, %22, %19, %2
  %35 = phi i32 [ %17, %19 ], [ %23, %31 ], [ -22, %2 ], [ 0, %22 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_card_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_set_jack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_98090_headset_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @snd_soc_card_jack_new(ptr noundef %3, ptr noundef nonnull @.str.22, i32 noundef 30723, ptr noundef nonnull @headset_jack, ptr noundef nonnull @headset_jack_pins, i32 noundef 2) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 @ts3a227e_enable_jack_detect(ptr noundef %0, ptr noundef nonnull @headset_jack) #7
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ %4, %1 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ts3a227e_enable_jack_detect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_info_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
