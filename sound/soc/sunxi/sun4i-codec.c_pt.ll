; ModuleID = '/llk/IR/sound/soc/sunxi/sun4i-codec.c_pt.bc'
source_filename = "../sound/soc/sunxi/sun4i-codec.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sun4i_codec_quirks = type { ptr, ptr, ptr, %struct.reg_field, i32, i32, i8 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.80, i32 }
%union.anon.80 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.88, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.88 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
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
%struct.atomic_t = type { i32 }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8 }
%struct.snd_soc_aux_dev = type { %struct.snd_soc_dai_link_component, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [80 x i8], [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24 }
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
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.sun4i_codec = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
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
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }

@sun4i_codec_of_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-codec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_codec_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-codec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_a31_codec_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-codec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun7i_codec_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-codec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a23_codec_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-codec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_codec_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-v3s-codec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_v3s_codec_quirks }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description232 = internal constant [39 x i8] c"description=Allwinner A10 codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [44 x i8] c"author=Emilio L\C3\B3pez <emilio@elopez.com.ar>\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [38 x i8] c"author=Jon Smirl <jonsmirl@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [56 x i8] c"author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [36 x i8] c"author=Chen-Yu Tsai <wens@csie.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@sun4i_codec_quirks = internal constant %struct.sun4i_codec_quirks { ptr @sun4i_codec_regmap_config, ptr @sun4i_codec_codec, ptr @sun4i_codec_create_card, %struct.reg_field { i32 28, i32 0, i32 31, i32 0, i32 0 }, i32 12, i32 36, i8 0 }, align 4
@sun6i_a31_codec_quirks = internal constant %struct.sun4i_codec_quirks { ptr @sun6i_codec_regmap_config, ptr @sun6i_codec_codec, ptr @sun6i_codec_create_card, %struct.reg_field { i32 16, i32 0, i32 31, i32 0, i32 0 }, i32 12, i32 24, i8 1 }, align 4
@sun7i_codec_quirks = internal constant %struct.sun4i_codec_quirks { ptr @sun7i_codec_regmap_config, ptr @sun7i_codec_codec, ptr @sun4i_codec_create_card, %struct.reg_field { i32 28, i32 0, i32 31, i32 0, i32 0 }, i32 12, i32 36, i8 0 }, align 4
@sun8i_a23_codec_quirks = internal constant %struct.sun4i_codec_quirks { ptr @sun8i_a23_codec_regmap_config, ptr @sun8i_a23_codec_codec, ptr @sun8i_a23_codec_create_card, %struct.reg_field { i32 16, i32 0, i32 31, i32 0, i32 0 }, i32 12, i32 24, i8 1 }, align 4
@sun8i_h3_codec_quirks = internal constant %struct.sun4i_codec_quirks { ptr @sun8i_h3_codec_regmap_config, ptr @sun8i_a23_codec_codec, ptr @sun8i_h3_codec_create_card, %struct.reg_field { i32 16, i32 0, i32 31, i32 0, i32 0 }, i32 32, i32 24, i8 1 }, align 4
@sun8i_v3s_codec_quirks = internal constant %struct.sun4i_codec_quirks { ptr @sun8i_v3s_codec_regmap_config, ptr @sun8i_a23_codec_codec, ptr @sun8i_v3s_codec_create_card, %struct.reg_field { i32 16, i32 0, i32 31, i32 0, i32 0 }, i32 32, i32 24, i8 1 }, align 4
@sun4i_codec_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 52, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@sun4i_codec_codec = internal constant %struct.snd_soc_component_driver { ptr null, ptr @sun4i_codec_controls, i32 7, ptr @sun4i_codec_codec_dapm_widgets, i32 22, ptr @sun4i_codec_codec_dapm_routes, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 58, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@sun4i_codec_controls = internal constant [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun4i_codec_pa_volume_scale }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.1, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun4i_codec_linein_loopback_gain_scale }, i32 ptrtoint (ptr @.compoundliteral.2 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.3, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun4i_codec_linein_preamp_gain_scale }, i32 ptrtoint (ptr @.compoundliteral.4 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun4i_codec_fmin_loopback_gain_scale }, i32 ptrtoint (ptr @.compoundliteral.6 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun4i_codec_micin_loopback_gain_scale }, i32 ptrtoint (ptr @.compoundliteral.8 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun4i_codec_micin_preamp_gain_scale }, i32 ptrtoint (ptr @.compoundliteral.10 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun4i_codec_micin_preamp_gain_scale }, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }], align 4
@sun4i_codec_codec_dapm_routes = internal constant [32 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.15, ptr null, ptr @.str.13, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.18, ptr null, ptr @.str.14, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.17, ptr null, ptr @.str.13, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.20, ptr null, ptr @.str.14, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.22, ptr null, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.22, ptr @.str.42, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.22, ptr @.str.40, ptr @.str.20, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.22, ptr @.str.44, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.22, ptr @.str.46, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.22, ptr @.str.48, ptr @.str.25, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.22, ptr @.str.50, ptr @.str.26, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.21, ptr null, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.21, ptr @.str.38, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.21, ptr @.str.44, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.21, ptr @.str.46, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.21, ptr @.str.48, ptr @.str.25, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.21, ptr @.str.50, ptr @.str.26, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.27, ptr @.str.54, ptr @.str.21, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.27, ptr @.str.54, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.27, ptr @.str.52, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.27, ptr @.str.52, ptr @.str.20, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.28, ptr @.str.56, ptr @.str.27, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr null, ptr @.str.28, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr null, ptr @.str.28, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.15, ptr null, ptr @.str.25, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.17, ptr null, ptr @.str.25, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.25, ptr null, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.33, ptr null, ptr @.str.24, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.15, ptr null, ptr @.str.26, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.17, ptr null, ptr @.str.26, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.26, ptr null, ptr @.str.34, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.34, ptr null, ptr @.str.24, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str = private unnamed_addr constant [23 x i8] c"Power Amplifier Volume\00", align 1
@sun4i_codec_pa_volume_scale = internal global [4 x i32] [i32 1, i32 8, i32 -6300, i32 65636], align 4
@.compoundliteral = internal global %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 16, i32 16, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Line Playback Volume\00", align 1
@sun4i_codec_linein_loopback_gain_scale = internal global [4 x i32] [i32 1, i32 8, i32 -150, i32 150], align 4
@.compoundliteral.2 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 16, i32 26, i32 26, i32 0, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Line Boost Volume\00", align 1
@sun4i_codec_linein_preamp_gain_scale = internal global [4 x i32] [i32 1, i32 8, i32 -1200, i32 300], align 4
@.compoundliteral.4 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 40, i32 40, i32 13, i32 13, i32 0, i8 0 }, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"FM Playback Volume\00", align 1
@sun4i_codec_fmin_loopback_gain_scale = internal global [4 x i32] [i32 1, i32 8, i32 -450, i32 150], align 4
@.compoundliteral.6 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 16, i32 16, i32 23, i32 23, i32 0, i8 0 }, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"Mic Playback Volume\00", align 1
@sun4i_codec_micin_loopback_gain_scale = internal global [4 x i32] [i32 1, i32 8, i32 -450, i32 150], align 4
@.compoundliteral.8 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 16, i32 16, i32 20, i32 20, i32 0, i8 0 }, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"Mic1 Boost Volume\00", align 1
@sun4i_codec_micin_preamp_gain_scale = internal global [14 x i32] [i32 3, i32 48, i32 0, i32 0, i32 1, i32 8, i32 0, i32 0, i32 1, i32 7, i32 1, i32 8, i32 3500, i32 300], align 4
@.compoundliteral.10 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 40, i32 40, i32 25, i32 25, i32 0, i8 0 }, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"Mic2 Boost Volume\00", align 1
@.compoundliteral.12 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 40, i32 40, i32 23, i32 23, i32 0, i8 0 }, align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"ADC\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"DAC\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Left ADC\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Codec Capture\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"Right ADC\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"Left DAC\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"Codec Playback\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"Right DAC\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"Left Mixer\00", align 1
@sun4i_codec_mixer_controls = internal constant [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.43 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.49 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.51 to i32) }], align 4
@.str.22 = private unnamed_addr constant [12 x i8] c"Right Mixer\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"Mixer Enable\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"VMIC\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"MIC1 Pre-Amplifier\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"MIC2 Pre-Amplifier\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"Power Amplifier\00", align 1
@sun4i_codec_pa_mixer_controls = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.53 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.55 to i32) }], align 4
@.str.28 = private unnamed_addr constant [21 x i8] c"Power Amplifier Mute\00", align 1
@sun4i_codec_pa_mute = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.57 to i32) }, align 4
@.str.29 = private unnamed_addr constant [11 x i8] c"Line Right\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"Line Left\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"FM Right\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"FM Left\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"Mic1\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"Mic2\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"HP Right\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"HP Left\00", align 1
@sun4i_codec_codec_dapm_widgets = internal constant [22 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.13, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 28, i8 28, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.14, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i8 31, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.15, ptr @.str.16, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 40, i8 30, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.17, ptr @.str.16, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 40, i8 31, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.18, ptr @.str.19, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 16, i8 30, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.20, ptr @.str.19, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 16, i8 31, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.21, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @sun4i_codec_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.22, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @sun4i_codec_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.23, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 16, i8 29, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.24, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 40, i8 27, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.25, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 40, i8 29, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.26, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 40, i8 28, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.27, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 40, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @sun4i_codec_pa_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.28, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @sun4i_codec_pa_mute, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.29, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.30, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.31, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.32, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.33, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.34, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.35, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.36, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.38 = private unnamed_addr constant [36 x i8] c"Left Mixer Left DAC Playback Switch\00", align 1
@.compoundliteral.39 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 16, i32 15, i32 15, i32 0, i8 0 }, align 4
@.str.40 = private unnamed_addr constant [38 x i8] c"Right Mixer Right DAC Playback Switch\00", align 1
@.compoundliteral.41 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 16, i32 14, i32 14, i32 0, i8 0 }, align 4
@.str.42 = private unnamed_addr constant [37 x i8] c"Right Mixer Left DAC Playback Switch\00", align 1
@.compoundliteral.43 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 16, i32 13, i32 13, i32 0, i8 0 }, align 4
@.str.44 = private unnamed_addr constant [21 x i8] c"Line Playback Switch\00", align 1
@.compoundliteral.45 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 16, i32 19, i32 18, i32 0, i8 0 }, align 4
@.str.46 = private unnamed_addr constant [19 x i8] c"FM Playback Switch\00", align 1
@.compoundliteral.47 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 16, i32 17, i32 16, i32 0, i8 0 }, align 4
@.str.48 = private unnamed_addr constant [21 x i8] c"Mic1 Playback Switch\00", align 1
@.compoundliteral.49 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 16, i32 12, i32 11, i32 0, i8 0 }, align 4
@.str.50 = private unnamed_addr constant [21 x i8] c"Mic2 Playback Switch\00", align 1
@.compoundliteral.51 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 16, i32 10, i32 9, i32 0, i8 0 }, align 4
@.str.52 = private unnamed_addr constant [20 x i8] c"DAC Playback Switch\00", align 1
@.compoundliteral.53 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 16, i32 8, i32 8, i32 0, i8 0 }, align 4
@.str.54 = private unnamed_addr constant [22 x i8] c"Mixer Playback Switch\00", align 1
@.compoundliteral.55 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 16, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.56 = private unnamed_addr constant [7 x i8] c"Switch\00", align 1
@.compoundliteral.57 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 16, i32 6, i32 6, i32 0, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.58 = private unnamed_addr constant [12 x i8] c"sun4i-codec\00", align 1
@sun4i_codec_card_dapm_routes = internal constant [2 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.35, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str.59 = private unnamed_addr constant [4 x i8] c"cdc\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"CDC PCM\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"Codec\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@sun4i_codec_card_dapm_widgets = internal constant [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @sun4i_codec_spk_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@sun6i_codec_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 84, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@sun6i_codec_codec = internal constant %struct.snd_soc_component_driver { ptr null, ptr @sun6i_codec_codec_widgets, i32 11, ptr @sun6i_codec_codec_dapm_widgets, i32 26, ptr @sun6i_codec_codec_dapm_routes, i32 42, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 58, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@sun6i_codec_codec_widgets = internal constant [11 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun6i_codec_dvol_scale }, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun6i_codec_hp_vol_scale }, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun6i_codec_lineout_vol_scale }, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun6i_codec_out_mixer_pregain_scale }, i32 ptrtoint (ptr @.compoundliteral.75 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun6i_codec_out_mixer_pregain_scale }, i32 ptrtoint (ptr @.compoundliteral.77 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun6i_codec_out_mixer_pregain_scale }, i32 ptrtoint (ptr @.compoundliteral.79 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun6i_codec_mic_gain_scale }, i32 ptrtoint (ptr @.compoundliteral.80 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun6i_codec_mic_gain_scale }, i32 ptrtoint (ptr @.compoundliteral.81 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun6i_codec_out_mixer_pregain_scale }, i32 ptrtoint (ptr @.compoundliteral.83 to i32) }], align 4
@sun6i_codec_codec_dapm_routes = internal constant [42 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.18, ptr null, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.20, ptr null, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr @.str.34, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr @.str.105, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.21, ptr @.str.52, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.21, ptr @.str.117, ptr @.str.20, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.21, ptr @.str.119, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.21, ptr @.str.48, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.21, ptr @.str.50, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.22, ptr @.str.52, ptr @.str.20, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.22, ptr @.str.117, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.22, ptr @.str.119, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.22, ptr @.str.48, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.22, ptr @.str.50, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr @.str.106, ptr @.str.21, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr @.str.108, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr @.str.110, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr @.str.112, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr @.str.114, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.106, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.108, ptr @.str.21, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.110, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.112, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.114, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr @.str.14, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr @.str.14, ptr @.str.20, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr @.str.123, ptr @.str.21, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr @.str.123, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr null, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.124, ptr @.str.21, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.124, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.125, ptr @.str.21, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.125, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.15, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.17, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.15, ptr null, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.17, ptr null, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str.64 = private unnamed_addr constant [20 x i8] c"DAC Playback Volume\00", align 1
@sun6i_codec_dvol_scale = internal constant [4 x i32] [i32 1, i32 8, i32 -7308, i32 116], align 4
@.compoundliteral.65 = internal global %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 0, i32 0, i32 12, i32 12, i32 0, i8 1 }, align 4
@.str.66 = private unnamed_addr constant [26 x i8] c"Headphone Playback Volume\00", align 1
@sun6i_codec_hp_vol_scale = internal constant [4 x i32] [i32 1, i32 8, i32 -6300, i32 65636], align 4
@.compoundliteral.67 = internal global %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 32, i32 32, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.68 = private unnamed_addr constant [25 x i8] c"Line Out Playback Volume\00", align 1
@sun6i_codec_lineout_vol_scale = internal constant [14 x i32] [i32 3, i32 48, i32 0, i32 1, i32 1, i32 8, i32 -9999999, i32 65536, i32 2, i32 31, i32 1, i32 8, i32 -4350, i32 150], align 4
@.compoundliteral.69 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 40, i32 40, i32 11, i32 11, i32 0, i8 0 }, align 4
@.str.70 = private unnamed_addr constant [26 x i8] c"Headphone Playback Switch\00", align 1
@.compoundliteral.71 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 6, i32 7, i32 0, i8 0 }, align 4
@.str.72 = private unnamed_addr constant [25 x i8] c"Line Out Playback Switch\00", align 1
@.compoundliteral.73 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 19, i32 18, i32 0, i8 0 }, align 4
@.str.74 = private unnamed_addr constant [24 x i8] c"Line In Playback Volume\00", align 1
@sun6i_codec_out_mixer_pregain_scale = internal constant [4 x i32] [i32 1, i32 8, i32 -450, i32 150], align 4
@.compoundliteral.75 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 36, i32 36, i32 9, i32 9, i32 0, i8 0 }, align 4
@.str.76 = private unnamed_addr constant [21 x i8] c"Mic1 Playback Volume\00", align 1
@.compoundliteral.77 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 36, i32 36, i32 15, i32 15, i32 0, i8 0 }, align 4
@.str.78 = private unnamed_addr constant [21 x i8] c"Mic2 Playback Volume\00", align 1
@.compoundliteral.79 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 36, i32 36, i32 12, i32 12, i32 0, i8 0 }, align 4
@sun6i_codec_mic_gain_scale = internal constant [14 x i32] [i32 3, i32 48, i32 0, i32 0, i32 1, i32 8, i32 0, i32 0, i32 1, i32 7, i32 1, i32 8, i32 2400, i32 300], align 4
@.compoundliteral.80 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 40, i32 40, i32 25, i32 25, i32 0, i8 0 }, align 4
@.compoundliteral.81 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 40, i32 40, i32 21, i32 21, i32 0, i8 0 }, align 4
@.str.82 = private unnamed_addr constant [19 x i8] c"ADC Capture Volume\00", align 1
@.compoundliteral.83 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 44, i32 44, i32 24, i32 27, i32 0, i8 0 }, align 4
@.str.84 = private unnamed_addr constant [5 x i8] c"MIC1\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"MIC2\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"MIC3\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"HBIAS\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"MBIAS\00", align 1
@.str.89 = private unnamed_addr constant [28 x i8] c"Mic2 Amplifier Source Route\00", align 1
@sun6i_codec_mic2_src = internal constant [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @sun6i_codec_mic2_src_enum to i32) }], align 4
@.str.90 = private unnamed_addr constant [15 x i8] c"Mic1 Amplifier\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"Mic2 Amplifier\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"LINEIN\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"ADC Enable\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"Left ADC Mixer\00", align 1
@sun6i_codec_adc_mixer_controls = internal constant [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.107 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.109 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.111 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.113 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.115 to i32) }], align 4
@.str.95 = private unnamed_addr constant [16 x i8] c"Right ADC Mixer\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"DAC Enable\00", align 1
@sun6i_codec_mixer_controls = internal constant [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.118 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.120 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.121 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.122 to i32) }], align 4
@.str.97 = private unnamed_addr constant [32 x i8] c"Headphone Source Playback Route\00", align 1
@sun6i_codec_hp_src = internal constant [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @sun6i_codec_hp_src_enum to i32) }], align 4
@.str.98 = private unnamed_addr constant [14 x i8] c"Headphone Amp\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"HPCOM Protection\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"HPCOM\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"HP\00", align 1
@.str.102 = private unnamed_addr constant [31 x i8] c"Line Out Source Playback Route\00", align 1
@sun6i_codec_lineout_src = internal constant [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @sun6i_codec_lineout_src_enum to i32) }], align 4
@.str.103 = private unnamed_addr constant [8 x i8] c"LINEOUT\00", align 1
@sun6i_codec_codec_dapm_widgets = internal constant [26 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 40, i8 31, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 40, i8 30, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @sun6i_codec_mic2_src, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 40, i8 28, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 40, i8 24, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 16, i8 28, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.15, ptr @.str.16, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 44, i8 30, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.17, ptr @.str.16, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 44, i8 31, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @sun6i_codec_adc_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @sun6i_codec_adc_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i8 31, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.18, ptr @.str.19, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 32, i8 30, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.20, ptr @.str.19, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 32, i8 31, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.21, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 32, i8 28, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @sun6i_codec_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.22, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 32, i8 29, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @sun6i_codec_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @sun6i_codec_hp_src, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 36, i8 31, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 36, i8 28, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 36, i8 29, i32 3, i32 3, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @sun6i_codec_lineout_src, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@sun6i_codec_mic2_src_enum = internal constant %struct.soc_enum { i32 40, i8 20, i8 20, i32 2, i32 1, ptr @sun6i_codec_mic2_src_enum_text, ptr null, i8 0 }, align 4
@sun6i_codec_mic2_src_enum_text = internal constant [2 x ptr] [ptr @.str.34, ptr @.str.105], align 4
@.str.105 = private unnamed_addr constant [5 x i8] c"Mic3\00", align 1
@.str.106 = private unnamed_addr constant [21 x i8] c"Mixer Capture Switch\00", align 1
@.compoundliteral.107 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 1, i32 8, i32 0, i8 0 }, align 4
@.str.108 = private unnamed_addr constant [30 x i8] c"Mixer Reversed Capture Switch\00", align 1
@.compoundliteral.109 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 0, i32 7, i32 0, i8 0 }, align 4
@.str.110 = private unnamed_addr constant [23 x i8] c"Line In Capture Switch\00", align 1
@.compoundliteral.111 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 2, i32 9, i32 0, i8 0 }, align 4
@.str.112 = private unnamed_addr constant [20 x i8] c"Mic1 Capture Switch\00", align 1
@.compoundliteral.113 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 6, i32 13, i32 0, i8 0 }, align 4
@.str.114 = private unnamed_addr constant [20 x i8] c"Mic2 Capture Switch\00", align 1
@.compoundliteral.115 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 5, i32 12, i32 0, i8 0 }, align 4
@.compoundliteral.116 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 11, i32 18, i32 0, i8 0 }, align 4
@.str.117 = private unnamed_addr constant [29 x i8] c"DAC Reversed Playback Switch\00", align 1
@.compoundliteral.118 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 10, i32 17, i32 0, i8 0 }, align 4
@.str.119 = private unnamed_addr constant [24 x i8] c"Line In Playback Switch\00", align 1
@.compoundliteral.120 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 12, i32 19, i32 0, i8 0 }, align 4
@.compoundliteral.121 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 16, i32 23, i32 0, i8 0 }, align 4
@.compoundliteral.122 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 15, i32 22, i32 0, i8 0 }, align 4
@sun6i_codec_hp_src_enum = internal constant %struct.soc_enum { i32 32, i8 8, i8 9, i32 2, i32 1, ptr @sun6i_codec_hp_src_enum_text, ptr null, i8 0 }, align 4
@sun6i_codec_hp_src_enum_text = internal constant [2 x ptr] [ptr @.str.14, ptr @.str.123], align 4
@.str.123 = private unnamed_addr constant [6 x i8] c"Mixer\00", align 1
@sun6i_codec_lineout_src_enum = internal constant %struct.soc_enum { i32 40, i8 17, i8 16, i32 2, i32 1, ptr @sun6i_codec_lineout_src_enum_text, ptr null, i8 0 }, align 4
@sun6i_codec_lineout_src_enum_text = internal constant [2 x ptr] [ptr @.str.124, ptr @.str.125], align 4
@.str.124 = private unnamed_addr constant [7 x i8] c"Stereo\00", align 1
@.str.125 = private unnamed_addr constant [18 x i8] c"Mono Differential\00", align 1
@.str.126 = private unnamed_addr constant [16 x i8] c"A31 Audio Codec\00", align 1
@.str.127 = private unnamed_addr constant [24 x i8] c"allwinner,audio-routing\00", align 1
@.str.128 = private unnamed_addr constant [35 x i8] c"failed to parse audio-routing: %d\0A\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"Headphone\00", align 1
@.str.130 = private unnamed_addr constant [8 x i8] c"Line In\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"Line Out\00", align 1
@.str.132 = private unnamed_addr constant [12 x i8] c"Headset Mic\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"Mic\00", align 1
@sun6i_codec_card_dapm_widgets = internal constant [6 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.129, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.130, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @sun4i_codec_spk_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@sun7i_codec_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 60, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@sun7i_codec_codec = internal constant %struct.snd_soc_component_driver { ptr null, ptr @sun7i_codec_controls, i32 7, ptr @sun4i_codec_codec_dapm_widgets, i32 22, ptr @sun4i_codec_codec_dapm_routes, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 58, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@sun7i_codec_controls = internal constant [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun4i_codec_pa_volume_scale }, i32 ptrtoint (ptr @.compoundliteral.135 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.1, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun4i_codec_linein_loopback_gain_scale }, i32 ptrtoint (ptr @.compoundliteral.136 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.3, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun4i_codec_linein_preamp_gain_scale }, i32 ptrtoint (ptr @.compoundliteral.137 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun4i_codec_fmin_loopback_gain_scale }, i32 ptrtoint (ptr @.compoundliteral.138 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun4i_codec_micin_loopback_gain_scale }, i32 ptrtoint (ptr @.compoundliteral.139 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun7i_codec_micin_preamp_gain_scale }, i32 ptrtoint (ptr @.compoundliteral.140 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun7i_codec_micin_preamp_gain_scale }, i32 ptrtoint (ptr @.compoundliteral.141 to i32) }], align 4
@.compoundliteral.135 = internal global %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 16, i32 16, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.136 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 16, i32 26, i32 26, i32 0, i8 0 }, align 4
@.compoundliteral.137 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 40, i32 40, i32 13, i32 13, i32 0, i8 0 }, align 4
@.compoundliteral.138 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 16, i32 16, i32 23, i32 23, i32 0, i8 0 }, align 4
@.compoundliteral.139 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 16, i32 16, i32 20, i32 20, i32 0, i8 0 }, align 4
@sun7i_codec_micin_preamp_gain_scale = internal global [14 x i32] [i32 3, i32 48, i32 0, i32 0, i32 1, i32 8, i32 0, i32 0, i32 1, i32 7, i32 1, i32 8, i32 2400, i32 300], align 4
@.compoundliteral.140 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 60, i32 60, i32 29, i32 29, i32 0, i8 0 }, align 4
@.compoundliteral.141 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 60, i32 60, i32 26, i32 26, i32 0, i8 0 }, align 4
@sun8i_a23_codec_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@sun8i_a23_codec_codec = internal constant %struct.snd_soc_component_driver { ptr null, ptr @sun8i_a23_codec_codec_controls, i32 1, ptr @sun8i_a23_codec_codec_widgets, i32 2, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 58, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@sun8i_a23_codec_codec_controls = internal constant [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @sun6i_codec_dvol_scale }, i32 ptrtoint (ptr @.compoundliteral.142 to i32) }], align 4
@.compoundliteral.142 = internal global %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 0, i32 0, i32 12, i32 12, i32 0, i8 1 }, align 4
@sun8i_a23_codec_codec_widgets = internal constant [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 16, i8 28, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i8 31, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.144 = private unnamed_addr constant [32 x i8] c"allwinner,codec-analog-controls\00", align 1
@aux_dev = internal global %struct.snd_soc_aux_dev zeroinitializer, align 4
@.str.145 = private unnamed_addr constant [39 x i8] c"Can't find analog controls for codec.\0A\00", align 1
@.str.146 = private unnamed_addr constant [16 x i8] c"A23 Audio Codec\00", align 1
@sun8i_codec_card_routes = internal constant [8 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.15, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.17, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.16, ptr null, ptr @.str.15, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.16, ptr null, ptr @.str.17, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.18, ptr null, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.20, ptr null, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.18, ptr null, ptr @.str.19, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.20, ptr null, ptr @.str.19, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@sun8i_h3_codec_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 76, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.147 = private unnamed_addr constant [15 x i8] c"H3 Audio Codec\00", align 1
@sun8i_v3s_codec_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 76, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.148 = private unnamed_addr constant [16 x i8] c"V3s Audio Codec\00", align 1
@sun4i_codec_driver = internal global %struct.platform_driver { ptr @sun4i_codec_probe, ptr @sun4i_codec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.58, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_codec_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.149 = private unnamed_addr constant [39 x i8] c"Failed to determine the quirks to use\0A\00", align 1
@.str.150 = private unnamed_addr constant [29 x i8] c"Failed to create our regmap\0A\00", align 1
@.str.151 = private unnamed_addr constant [4 x i8] c"apb\00", align 1
@.str.152 = private unnamed_addr constant [29 x i8] c"Failed to get the APB clock\0A\00", align 1
@.str.153 = private unnamed_addr constant [6 x i8] c"codec\00", align 1
@.str.154 = private unnamed_addr constant [32 x i8] c"Failed to get the module clock\0A\00", align 1
@.str.155 = private unnamed_addr constant [29 x i8] c"Failed to get reset control\0A\00", align 1
@.str.156 = private unnamed_addr constant [13 x i8] c"allwinner,pa\00", align 1
@.str.157 = private unnamed_addr constant [23 x i8] c"Failed to get pa gpio\0A\00", align 1
@.str.158 = private unnamed_addr constant [36 x i8] c"Failed to create regmap fields: %d\0A\00", align 1
@.str.159 = private unnamed_addr constant [32 x i8] c"Failed to enable the APB clock\0A\00", align 1
@.str.160 = private unnamed_addr constant [38 x i8] c"Failed to deassert the reset control\0A\00", align 1
@sun4i_codec_dai = internal global %struct.snd_soc_dai_driver { ptr @.str.61, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_codec_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.16, i64 1028, i32 1073741824, i32 8000, i32 48000, i32 1, i32 2, i32 24 }, %struct.snd_soc_pcm_stream { ptr @.str.19, i64 1028, i32 1073741824, i32 8000, i32 192000, i32 1, i32 2, i32 24 }, i8 0, i32 0, i32 0 }, align 8
@.str.161 = private unnamed_addr constant [30 x i8] c"Failed to register our codec\0A\00", align 1
@sun4i_codec_component = internal constant %struct.snd_soc_component_driver { ptr @.str.58, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@dummy_cpu_dai = internal global %struct.snd_soc_dai_driver { ptr @.str.168, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @sun4i_codec_dai_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.169, i64 1028, i32 1073741824, i32 0, i32 0, i32 1, i32 2, i32 24 }, %struct.snd_soc_pcm_stream { ptr @.str.170, i64 1028, i32 1073741824, i32 0, i32 0, i32 1, i32 2, i32 24 }, i8 0, i32 0, i32 0 }, align 8
@.str.162 = private unnamed_addr constant [28 x i8] c"Failed to register our DAI\0A\00", align 1
@.str.163 = private unnamed_addr constant [38 x i8] c"Failed to register against DMAEngine\0A\00", align 1
@.str.164 = private unnamed_addr constant [27 x i8] c"Failed to create our card\0A\00", align 1
@.str.165 = private unnamed_addr constant [29 x i8] c"Failed to register our card\0A\00", align 1
@sun4i_codec_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_codec_startup, ptr @sun4i_codec_shutdown, ptr @sun4i_codec_hw_params, ptr null, ptr @sun4i_codec_prepare, ptr @sun4i_codec_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@sun4i_codec_constraints = internal global %struct.snd_pcm_hw_constraint_list { ptr @sun4i_codec_src_rates, i32 11, i32 0 }, align 4
@sun4i_codec_src_rates = internal global [11 x i32] [i32 8000, i32 11025, i32 12000, i32 16000, i32 22050, i32 24000, i32 32000, i32 44100, i32 48000, i32 96000, i32 192000], align 4
@.str.166 = private unnamed_addr constant [26 x i8] c"allwinner,sun4i-a10-codec\00", align 1
@.str.167 = private unnamed_addr constant [26 x i8] c"allwinner,sun7i-a20-codec\00", align 1
@.str.168 = private unnamed_addr constant [20 x i8] c"sun4i-codec-cpu-dai\00", align 1
@.str.169 = private unnamed_addr constant [8 x i8] c"Capture\00", align 1
@.str.170 = private unnamed_addr constant [9 x i8] c"Playback\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_license237], section "llvm.metadata"

@__mod_of__sun4i_codec_of_match_device_table = dso_local alias [7 x %struct.of_device_id], ptr @sun4i_codec_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_codec_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_codec_driver) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sun4i_codec_create_card(ptr noundef %0) #1 {
  %2 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 484, i32 noundef 3520) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %40, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.snd_soc_card, ptr %2, i32 0, i32 26
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 80, i32 noundef 3520) #7
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 36, i32 noundef 3520) #7
  %8 = icmp ne ptr %6, null
  %9 = icmp ne ptr %7, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %27

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 2
  store ptr %7, ptr %12, align 4
  %13 = getelementptr %struct.snd_soc_dai_link_component, ptr %7, i32 1
  %14 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 4
  store ptr %13, ptr %14, align 4
  %15 = getelementptr %struct.snd_soc_dai_link_component, ptr %7, i32 2
  %16 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 6
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 3
  store i32 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 5
  store i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 7
  store i32 1, ptr %19, align 4
  store ptr @.str.59, ptr %6, align 4
  %20 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 1
  store ptr @.str.60, ptr %20, align 4
  %21 = getelementptr %struct.snd_soc_dai_link_component, ptr %7, i32 1, i32 2
  store ptr @.str.61, ptr %21, align 4
  %22 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %11
  %26 = load ptr, ptr %0, align 4
  br label %29

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.snd_soc_card, ptr %2, i32 0, i32 25
  store ptr null, ptr %28, align 4
  br label %40

29:                                               ; preds = %25, %11
  %30 = phi ptr [ %26, %25 ], [ %23, %11 ]
  %31 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %7, i32 0, i32 2
  store ptr %30, ptr %31, align 4
  store ptr %30, ptr %13, align 4
  store ptr %30, ptr %15, align 4
  %32 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 11
  store i32 1, ptr %32, align 4
  store i32 1, ptr %5, align 4
  %33 = getelementptr inbounds %struct.snd_soc_card, ptr %2, i32 0, i32 25
  store ptr %6, ptr %33, align 4
  %34 = getelementptr inbounds %struct.snd_soc_card, ptr %2, i32 0, i32 6
  store ptr %0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.snd_soc_card, ptr %2, i32 0, i32 8
  store ptr @__this_module, ptr %35, align 4
  store ptr @.str.58, ptr %2, align 4
  %36 = getelementptr inbounds %struct.snd_soc_card, ptr %2, i32 0, i32 36
  store ptr @sun4i_codec_card_dapm_widgets, ptr %36, align 4
  %37 = getelementptr inbounds %struct.snd_soc_card, ptr %2, i32 0, i32 37
  store i32 1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.snd_soc_card, ptr %2, i32 0, i32 38
  store ptr @sun4i_codec_card_dapm_routes, ptr %38, align 4
  %39 = getelementptr inbounds %struct.snd_soc_card, ptr %2, i32 0, i32 39
  store i32 2, ptr %39, align 4
  br label %40

40:                                               ; preds = %29, %27, %1
  %41 = phi ptr [ %2, %29 ], [ inttoptr (i32 -12 to ptr), %27 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_codec_spk_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 58
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sun4i_codec, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = and i32 %2, 3
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef %14) #7
  br i1 %13, label %15, label %16

15:                                               ; preds = %3
  tail call void @msleep(i32 noundef 700) #7
  br label %16

16:                                               ; preds = %15, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sun6i_codec_create_card(ptr noundef %0) #1 {
  %2 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 484, i32 noundef 3520) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %44, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.snd_soc_card, ptr %2, i32 0, i32 26
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 80, i32 noundef 3520) #7
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 36, i32 noundef 3520) #7
  %8 = icmp ne ptr %6, null
  %9 = icmp ne ptr %7, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %27

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 2
  store ptr %7, ptr %12, align 4
  %13 = getelementptr %struct.snd_soc_dai_link_component, ptr %7, i32 1
  %14 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 4
  store ptr %13, ptr %14, align 4
  %15 = getelementptr %struct.snd_soc_dai_link_component, ptr %7, i32 2
  %16 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 6
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 3
  store i32 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 5
  store i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 7
  store i32 1, ptr %19, align 4
  store ptr @.str.59, ptr %6, align 4
  %20 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 1
  store ptr @.str.60, ptr %20, align 4
  %21 = getelementptr %struct.snd_soc_dai_link_component, ptr %7, i32 1, i32 2
  store ptr @.str.61, ptr %21, align 4
  %22 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %11
  %26 = load ptr, ptr %0, align 4
  br label %29

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.snd_soc_card, ptr %2, i32 0, i32 25
  store ptr null, ptr %28, align 4
  br label %44

29:                                               ; preds = %25, %11
  %30 = phi ptr [ %26, %25 ], [ %23, %11 ]
  %31 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %7, i32 0, i32 2
  store ptr %30, ptr %31, align 4
  store ptr %30, ptr %13, align 4
  store ptr %30, ptr %15, align 4
  %32 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 11
  store i32 1, ptr %32, align 4
  store i32 1, ptr %5, align 4
  %33 = getelementptr inbounds %struct.snd_soc_card, ptr %2, i32 0, i32 25
  store ptr %6, ptr %33, align 4
  %34 = getelementptr inbounds %struct.snd_soc_card, ptr %2, i32 0, i32 6
  store ptr %0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.snd_soc_card, ptr %2, i32 0, i32 8
  store ptr @__this_module, ptr %35, align 4
  store ptr @.str.126, ptr %2, align 4
  %36 = getelementptr inbounds %struct.snd_soc_card, ptr %2, i32 0, i32 36
  store ptr @sun6i_codec_card_dapm_widgets, ptr %36, align 4
  %37 = getelementptr inbounds %struct.snd_soc_card, ptr %2, i32 0, i32 37
  store i32 6, ptr %37, align 4
  %38 = getelementptr inbounds %struct.snd_soc_card, ptr %2, i32 0, i32 57
  %39 = load i8, ptr %38, align 4
  %40 = or i8 %39, 4
  store i8 %40, ptr %38, align 4
  %41 = tail call i32 @snd_soc_of_parse_audio_routing(ptr noundef nonnull %2, ptr noundef nonnull @.str.127) #7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.128, i32 noundef %41) #8
  br label %44

44:                                               ; preds = %43, %29, %27, %1
  %45 = phi ptr [ inttoptr (i32 -12 to ptr), %27 ], [ %2, %43 ], [ %2, %29 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_audio_routing(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sun8i_a23_codec_create_card(ptr noundef %0) #1 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 484, i32 noundef 3520) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %58, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #7, !annotation !8
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.144, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #7
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %2, align 4
  %11 = select i1 %9, ptr %10, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #7
  store ptr %11, ptr getelementptr inbounds (%struct.snd_soc_aux_dev, ptr @aux_dev, i32 0, i32 0, i32 1), align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.145) #8
  br label %58

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 26
  %16 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 80, i32 noundef 3520) #7
  %17 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 36, i32 noundef 3520) #7
  %18 = icmp ne ptr %16, null
  %19 = icmp ne ptr %17, null
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %37

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 2
  store ptr %17, ptr %22, align 4
  %23 = getelementptr %struct.snd_soc_dai_link_component, ptr %17, i32 1
  %24 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 4
  store ptr %23, ptr %24, align 4
  %25 = getelementptr %struct.snd_soc_dai_link_component, ptr %17, i32 2
  %26 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 6
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 3
  store i32 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 5
  store i32 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 7
  store i32 1, ptr %29, align 4
  store ptr @.str.59, ptr %16, align 4
  %30 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 1
  store ptr @.str.60, ptr %30, align 4
  %31 = getelementptr %struct.snd_soc_dai_link_component, ptr %17, i32 1, i32 2
  store ptr @.str.61, ptr %31, align 4
  %32 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  %36 = load ptr, ptr %0, align 4
  br label %39

37:                                               ; preds = %14
  %38 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 25
  store ptr null, ptr %38, align 4
  br label %58

39:                                               ; preds = %35, %21
  %40 = phi ptr [ %36, %35 ], [ %33, %21 ]
  %41 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %17, i32 0, i32 2
  store ptr %40, ptr %41, align 4
  store ptr %40, ptr %23, align 4
  store ptr %40, ptr %25, align 4
  %42 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 11
  store i32 1, ptr %42, align 4
  store i32 1, ptr %15, align 4
  %43 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 25
  store ptr %16, ptr %43, align 4
  %44 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 6
  store ptr %0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 8
  store ptr @__this_module, ptr %45, align 4
  store ptr @.str.146, ptr %3, align 4
  %46 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 36
  store ptr @sun6i_codec_card_dapm_widgets, ptr %46, align 4
  %47 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 37
  store i32 6, ptr %47, align 4
  %48 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 38
  store ptr @sun8i_codec_card_routes, ptr %48, align 4
  %49 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 39
  store i32 8, ptr %49, align 4
  %50 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 31
  store ptr @aux_dev, ptr %50, align 4
  %51 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 32
  store i32 1, ptr %51, align 4
  %52 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %53 = load i8, ptr %52, align 4
  %54 = or i8 %53, 4
  store i8 %54, ptr %52, align 4
  %55 = call i32 @snd_soc_of_parse_audio_routing(ptr noundef nonnull %3, ptr noundef nonnull @.str.127) #7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %39
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.128, i32 noundef %55) #8
  br label %58

58:                                               ; preds = %57, %39, %37, %13, %1
  %59 = phi ptr [ inttoptr (i32 -12 to ptr), %37 ], [ inttoptr (i32 -22 to ptr), %13 ], [ %3, %57 ], [ %3, %39 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %59
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sun8i_h3_codec_create_card(ptr noundef %0) #1 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 484, i32 noundef 3520) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %58, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #7, !annotation !8
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.144, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #7
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %2, align 4
  %11 = select i1 %9, ptr %10, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #7
  store ptr %11, ptr getelementptr inbounds (%struct.snd_soc_aux_dev, ptr @aux_dev, i32 0, i32 0, i32 1), align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.145) #8
  br label %58

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 26
  %16 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 80, i32 noundef 3520) #7
  %17 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 36, i32 noundef 3520) #7
  %18 = icmp ne ptr %16, null
  %19 = icmp ne ptr %17, null
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %37

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 2
  store ptr %17, ptr %22, align 4
  %23 = getelementptr %struct.snd_soc_dai_link_component, ptr %17, i32 1
  %24 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 4
  store ptr %23, ptr %24, align 4
  %25 = getelementptr %struct.snd_soc_dai_link_component, ptr %17, i32 2
  %26 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 6
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 3
  store i32 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 5
  store i32 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 7
  store i32 1, ptr %29, align 4
  store ptr @.str.59, ptr %16, align 4
  %30 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 1
  store ptr @.str.60, ptr %30, align 4
  %31 = getelementptr %struct.snd_soc_dai_link_component, ptr %17, i32 1, i32 2
  store ptr @.str.61, ptr %31, align 4
  %32 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  %36 = load ptr, ptr %0, align 4
  br label %39

37:                                               ; preds = %14
  %38 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 25
  store ptr null, ptr %38, align 4
  br label %58

39:                                               ; preds = %35, %21
  %40 = phi ptr [ %36, %35 ], [ %33, %21 ]
  %41 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %17, i32 0, i32 2
  store ptr %40, ptr %41, align 4
  store ptr %40, ptr %23, align 4
  store ptr %40, ptr %25, align 4
  %42 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 11
  store i32 1, ptr %42, align 4
  store i32 1, ptr %15, align 4
  %43 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 25
  store ptr %16, ptr %43, align 4
  %44 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 6
  store ptr %0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 8
  store ptr @__this_module, ptr %45, align 4
  store ptr @.str.147, ptr %3, align 4
  %46 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 36
  store ptr @sun6i_codec_card_dapm_widgets, ptr %46, align 4
  %47 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 37
  store i32 6, ptr %47, align 4
  %48 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 38
  store ptr @sun8i_codec_card_routes, ptr %48, align 4
  %49 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 39
  store i32 8, ptr %49, align 4
  %50 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 31
  store ptr @aux_dev, ptr %50, align 4
  %51 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 32
  store i32 1, ptr %51, align 4
  %52 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %53 = load i8, ptr %52, align 4
  %54 = or i8 %53, 4
  store i8 %54, ptr %52, align 4
  %55 = call i32 @snd_soc_of_parse_audio_routing(ptr noundef nonnull %3, ptr noundef nonnull @.str.127) #7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %39
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.128, i32 noundef %55) #8
  br label %58

58:                                               ; preds = %57, %39, %37, %13, %1
  %59 = phi ptr [ inttoptr (i32 -12 to ptr), %37 ], [ inttoptr (i32 -22 to ptr), %13 ], [ %3, %57 ], [ %3, %39 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sun8i_v3s_codec_create_card(ptr noundef %0) #1 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 484, i32 noundef 3520) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %58, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #7, !annotation !8
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.144, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #7
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %2, align 4
  %11 = select i1 %9, ptr %10, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #7
  store ptr %11, ptr getelementptr inbounds (%struct.snd_soc_aux_dev, ptr @aux_dev, i32 0, i32 0, i32 1), align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.145) #8
  br label %58

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 26
  %16 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 80, i32 noundef 3520) #7
  %17 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 36, i32 noundef 3520) #7
  %18 = icmp ne ptr %16, null
  %19 = icmp ne ptr %17, null
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %37

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 2
  store ptr %17, ptr %22, align 4
  %23 = getelementptr %struct.snd_soc_dai_link_component, ptr %17, i32 1
  %24 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 4
  store ptr %23, ptr %24, align 4
  %25 = getelementptr %struct.snd_soc_dai_link_component, ptr %17, i32 2
  %26 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 6
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 3
  store i32 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 5
  store i32 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 7
  store i32 1, ptr %29, align 4
  store ptr @.str.59, ptr %16, align 4
  %30 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 1
  store ptr @.str.60, ptr %30, align 4
  %31 = getelementptr %struct.snd_soc_dai_link_component, ptr %17, i32 1, i32 2
  store ptr @.str.61, ptr %31, align 4
  %32 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  %36 = load ptr, ptr %0, align 4
  br label %39

37:                                               ; preds = %14
  %38 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 25
  store ptr null, ptr %38, align 4
  br label %58

39:                                               ; preds = %35, %21
  %40 = phi ptr [ %36, %35 ], [ %33, %21 ]
  %41 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %17, i32 0, i32 2
  store ptr %40, ptr %41, align 4
  store ptr %40, ptr %23, align 4
  store ptr %40, ptr %25, align 4
  %42 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %16, i32 0, i32 11
  store i32 1, ptr %42, align 4
  store i32 1, ptr %15, align 4
  %43 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 25
  store ptr %16, ptr %43, align 4
  %44 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 6
  store ptr %0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 8
  store ptr @__this_module, ptr %45, align 4
  store ptr @.str.148, ptr %3, align 4
  %46 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 36
  store ptr @sun6i_codec_card_dapm_widgets, ptr %46, align 4
  %47 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 37
  store i32 6, ptr %47, align 4
  %48 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 38
  store ptr @sun8i_codec_card_routes, ptr %48, align 4
  %49 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 39
  store i32 8, ptr %49, align 4
  %50 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 31
  store ptr @aux_dev, ptr %50, align 4
  %51 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 32
  store i32 1, ptr %51, align 4
  %52 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %53 = load i8, ptr %52, align 4
  %54 = or i8 %53, 4
  store i8 %54, ptr %52, align 4
  %55 = call i32 @snd_soc_of_parse_audio_routing(ptr noundef nonnull %3, ptr noundef nonnull @.str.127) #7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %39
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.128, i32 noundef %55) #8
  br label %58

58:                                               ; preds = %57, %39, %37, %13, %1
  %59 = phi ptr [ inttoptr (i32 -12 to ptr), %37 ], [ inttoptr (i32 -22 to ptr), %13 ], [ %3, %57 ], [ %3, %39 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_codec_probe(ptr noundef %0) #1 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 100, i32 noundef 3520) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %139, label %6

6:                                                ; preds = %1
  store ptr %3, ptr %4, align 4
  %7 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #7
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = ptrtoint ptr %7 to i32
  br label %139

11:                                               ; preds = %6
  %12 = call ptr @of_device_get_match_data(ptr noundef %3) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.149) #8
  br label %139

15:                                               ; preds = %11
  %16 = load ptr, ptr %12, align 4
  %17 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %3, ptr noundef null, ptr noundef %7, ptr noundef %16, ptr noundef null, ptr noundef null) #7
  %18 = getelementptr inbounds %struct.sun4i_codec, ptr %4, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.150) #8
  %21 = ptrtoint ptr %17 to i32
  br label %139

22:                                               ; preds = %15
  %23 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.151) #7
  %24 = getelementptr inbounds %struct.sun4i_codec, ptr %4, i32 0, i32 2
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.152) #8
  %27 = ptrtoint ptr %23 to i32
  br label %139

28:                                               ; preds = %22
  %29 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.153) #7
  %30 = getelementptr inbounds %struct.sun4i_codec, ptr %4, i32 0, i32 3
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.154) #8
  %33 = ptrtoint ptr %29 to i32
  br label %139

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.sun4i_codec_quirks, ptr %12, i32 0, i32 6
  %36 = load i8, ptr %35, align 4, !range !9
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %40 = getelementptr inbounds %struct.sun4i_codec, ptr %4, i32 0, i32 4
  store ptr %39, ptr %40, align 4
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.155) #8
  %43 = ptrtoint ptr %39 to i32
  br label %139

44:                                               ; preds = %38, %34
  %45 = call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef nonnull @.str.156, i32 noundef 3) #7
  %46 = getelementptr inbounds %struct.sun4i_codec, ptr %4, i32 0, i32 5
  store ptr %45, ptr %46, align 4
  %47 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = ptrtoint ptr %45 to i32
  %50 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %49, ptr noundef nonnull @.str.157) #7
  br label %139

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.sun4i_codec_quirks, ptr %12, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = insertvalue [5 x i32] undef, i32 %53, 0
  %55 = getelementptr inbounds %struct.sun4i_codec_quirks, ptr %12, i32 0, i32 3, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = insertvalue [5 x i32] %54, i32 %56, 1
  %58 = getelementptr inbounds %struct.sun4i_codec_quirks, ptr %12, i32 0, i32 3, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = insertvalue [5 x i32] %57, i32 %59, 2
  %61 = getelementptr inbounds %struct.sun4i_codec_quirks, ptr %12, i32 0, i32 3, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = insertvalue [5 x i32] %60, i32 %62, 3
  %64 = getelementptr inbounds %struct.sun4i_codec_quirks, ptr %12, i32 0, i32 3, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = insertvalue [5 x i32] %63, i32 %65, 4
  %67 = call ptr @devm_regmap_field_alloc(ptr noundef %3, ptr noundef %17, [5 x i32] %66) #7
  %68 = getelementptr inbounds %struct.sun4i_codec, ptr %4, i32 0, i32 6
  store ptr %67, ptr %68, align 4
  %69 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %72

70:                                               ; preds = %51
  %71 = ptrtoint ptr %67 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.158, i32 noundef %71) #8
  br label %139

72:                                               ; preds = %51
  %73 = call i32 @clk_prepare(ptr noundef %23) #7
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = call i32 @clk_enable(ptr noundef %23) #7
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  call void @clk_unprepare(ptr noundef %23) #7
  br label %79

79:                                               ; preds = %78, %72
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.159) #8
  br label %139

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.sun4i_codec, ptr %4, i32 0, i32 4
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = call i32 @reset_control_deassert(ptr noundef nonnull %82) #7
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.160) #8
  br label %136

88:                                               ; preds = %84, %80
  %89 = load ptr, ptr %2, align 4
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.sun4i_codec_quirks, ptr %12, i32 0, i32 4
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %92, %90
  %94 = getelementptr inbounds %struct.sun4i_codec, ptr %4, i32 0, i32 8
  store i32 %93, ptr %94, align 4
  %95 = getelementptr inbounds %struct.sun4i_codec, ptr %4, i32 0, i32 8, i32 2
  store i32 8, ptr %95, align 4
  %96 = getelementptr inbounds %struct.sun4i_codec, ptr %4, i32 0, i32 8, i32 1
  store i32 2, ptr %96, align 4
  %97 = load i32, ptr %89, align 4
  %98 = getelementptr inbounds %struct.sun4i_codec_quirks, ptr %12, i32 0, i32 5
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, %97
  %101 = getelementptr inbounds %struct.sun4i_codec, ptr %4, i32 0, i32 7
  store i32 %100, ptr %101, align 4
  %102 = getelementptr inbounds %struct.sun4i_codec, ptr %4, i32 0, i32 7, i32 2
  store i32 8, ptr %102, align 4
  %103 = getelementptr inbounds %struct.sun4i_codec, ptr %4, i32 0, i32 7, i32 1
  store i32 2, ptr %103, align 4
  %104 = getelementptr inbounds %struct.sun4i_codec_quirks, ptr %12, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = call i32 @devm_snd_soc_register_component(ptr noundef %3, ptr noundef %105, ptr noundef nonnull @sun4i_codec_dai, i32 noundef 1) #7
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %88
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.161) #8
  br label %130

109:                                              ; preds = %88
  %110 = call i32 @devm_snd_soc_register_component(ptr noundef %3, ptr noundef nonnull @sun4i_codec_component, ptr noundef nonnull @dummy_cpu_dai, i32 noundef 1) #7
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.162) #8
  br label %130

113:                                              ; preds = %109
  %114 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %3, ptr noundef null, i32 noundef 0) #7
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.163) #8
  br label %130

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.sun4i_codec_quirks, ptr %12, i32 0, i32 2
  %119 = load ptr, ptr %118, align 4
  %120 = call ptr %119(ptr noundef %3) #7
  %121 = icmp ugt ptr %120, inttoptr (i32 -4096 to ptr)
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = ptrtoint ptr %120 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.164) #8
  br label %130

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.snd_soc_card, ptr %120, i32 0, i32 58
  store ptr %4, ptr %125, align 4
  %126 = call i32 @snd_soc_register_card(ptr noundef %120) #7
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %139, label %128

128:                                              ; preds = %124
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.165) #8
  %129 = load ptr, ptr %81, align 4
  br label %130

130:                                              ; preds = %128, %122, %116, %112, %108
  %131 = phi ptr [ %82, %108 ], [ %82, %112 ], [ %82, %116 ], [ %82, %122 ], [ %129, %128 ]
  %132 = phi i32 [ %106, %108 ], [ %110, %112 ], [ %114, %116 ], [ %123, %122 ], [ %126, %128 ]
  %133 = icmp eq ptr %131, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = call i32 @reset_control_assert(ptr noundef nonnull %131) #7
  br label %136

136:                                              ; preds = %134, %130, %87
  %137 = phi i32 [ %85, %87 ], [ %132, %134 ], [ %132, %130 ]
  %138 = load ptr, ptr %24, align 4
  call void @clk_disable(ptr noundef %138) #7
  call void @clk_unprepare(ptr noundef %138) #7
  br label %139

139:                                              ; preds = %136, %124, %79, %70, %48, %42, %32, %26, %20, %14, %9, %1
  %140 = phi i32 [ %10, %9 ], [ -19, %14 ], [ %21, %20 ], [ %27, %26 ], [ %33, %32 ], [ %43, %42 ], [ %49, %48 ], [ %71, %70 ], [ -22, %79 ], [ %137, %136 ], [ -12, %1 ], [ 0, %124 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_codec_remove(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 58
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @snd_soc_unregister_card(ptr noundef %3) #7
  %7 = getelementptr inbounds %struct.sun4i_codec, ptr %5, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @reset_control_assert(ptr noundef nonnull %8) #7
  br label %12

12:                                               ; preds = %10, %1
  %13 = getelementptr inbounds %struct.sun4i_codec, ptr %5, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #7
  tail call void @clk_unprepare(ptr noundef %14) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_codec_startup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_card, ptr %6, i32 0, i32 58
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %10, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @sun4i_codec_constraints) #7
  %12 = getelementptr inbounds %struct.sun4i_codec, ptr %8, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 4, i32 noundef 6291456, i32 noundef 6291456, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %15 = getelementptr inbounds %struct.sun4i_codec, ptr %8, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @clk_prepare(ptr noundef %16) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = tail call i32 @clk_enable(ptr noundef %16) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @clk_unprepare(ptr noundef %16) #7
  br label %23

23:                                               ; preds = %22, %19, %2
  %24 = phi i32 [ %17, %2 ], [ %20, %22 ], [ 0, %19 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_codec_shutdown(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_card, ptr %6, i32 0, i32 58
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sun4i_codec, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #7
  tail call void @clk_unprepare(ptr noundef %10) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_codec_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #1 {
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 58
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %75 [
    i32 176400, label %13
    i32 88200, label %13
    i32 44100, label %13
    i32 33075, label %13
    i32 22050, label %13
    i32 14700, label %13
    i32 11025, label %13
    i32 7350, label %13
    i32 192000, label %12
    i32 96000, label %12
    i32 48000, label %12
    i32 32000, label %12
    i32 24000, label %12
    i32 16000, label %12
    i32 12000, label %12
    i32 8000, label %12
  ]

12:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  br label %13

13:                                               ; preds = %12, %3, %3, %3, %3, %3, %3, %3, %3
  %14 = phi i32 [ 22579200, %3 ], [ 22579200, %3 ], [ 22579200, %3 ], [ 22579200, %3 ], [ 22579200, %3 ], [ 22579200, %3 ], [ 22579200, %3 ], [ 22579200, %3 ], [ 24576000, %12 ]
  %15 = getelementptr inbounds %struct.sun4i_codec, ptr %9, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @clk_set_rate(ptr noundef %16, i32 noundef %14) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %75

19:                                               ; preds = %13
  %20 = load i32, ptr %10, align 4
  switch i32 %20, label %75 [
    i32 192000, label %28
    i32 176400, label %28
    i32 96000, label %21
    i32 88200, label %21
    i32 48000, label %22
    i32 44100, label %22
    i32 32000, label %23
    i32 33075, label %23
    i32 24000, label %24
    i32 22050, label %24
    i32 16000, label %25
    i32 14700, label %25
    i32 12000, label %26
    i32 11025, label %26
    i32 8000, label %27
    i32 7350, label %27
  ]

21:                                               ; preds = %19, %19
  br label %28

22:                                               ; preds = %19, %19
  br label %28

23:                                               ; preds = %19, %19
  br label %28

24:                                               ; preds = %19, %19
  br label %28

25:                                               ; preds = %19, %19
  br label %28

26:                                               ; preds = %19, %19
  br label %28

27:                                               ; preds = %19, %19
  br label %28

28:                                               ; preds = %27, %26, %25, %24, %23, %22, %21, %19, %19
  %29 = phi i32 [ -1073741824, %19 ], [ -1073741824, %19 ], [ -536870912, %21 ], [ 0, %22 ], [ 536870912, %23 ], [ 1073741824, %24 ], [ 1610612736, %25 ], [ -2147483648, %26 ], [ -1610612736, %27 ]
  %30 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.sun4i_codec, ptr %9, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 4, i32 noundef -536870912, i32 noundef %29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %37 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 1
  %40 = select i1 %39, i32 64, i32 0
  %41 = load ptr, ptr %34, align 4
  %42 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 4, i32 noundef 64, i32 noundef %40, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %43 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 32
  %46 = load ptr, ptr %34, align 4
  %47 = select i1 %45, i32 32, i32 0
  %48 = select i1 %45, i32 0, i32 16777216
  %49 = select i1 %45, i32 4, i32 2
  %50 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 4, i32 noundef 32, i32 noundef %47, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %51 = load ptr, ptr %34, align 4
  %52 = tail call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 4, i32 noundef 16777216, i32 noundef %48, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %53 = getelementptr inbounds %struct.sun4i_codec, ptr %9, i32 0, i32 8, i32 1
  store i32 %49, ptr %53, align 4
  br label %75

54:                                               ; preds = %28
  %55 = getelementptr inbounds %struct.sun4i_codec, ptr %9, i32 0, i32 6
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 @regmap_field_update_bits_base(ptr noundef %56, i32 noundef -536870912, i32 noundef %29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %58 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 1
  %61 = load ptr, ptr %55, align 4
  %62 = select i1 %60, i32 128, i32 0
  %63 = tail call i32 @regmap_field_update_bits_base(ptr noundef %61, i32 noundef 128, i32 noundef %62, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %64 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 32
  %67 = select i1 %66, i32 64, i32 0
  %68 = select i1 %66, i32 0, i32 16777216
  %69 = select i1 %66, i32 4, i32 2
  %70 = load ptr, ptr %55, align 4
  %71 = tail call i32 @regmap_field_update_bits_base(ptr noundef %70, i32 noundef 64, i32 noundef %67, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %72 = load ptr, ptr %55, align 4
  %73 = tail call i32 @regmap_field_update_bits_base(ptr noundef %72, i32 noundef 16777216, i32 noundef %68, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %74 = getelementptr inbounds %struct.sun4i_codec, ptr %9, i32 0, i32 7, i32 1
  store i32 %69, ptr %74, align 4
  br label %75

75:                                               ; preds = %54, %33, %19, %13, %3
  %76 = phi i32 [ 0, %33 ], [ 0, %54 ], [ %17, %13 ], [ -22, %3 ], [ -22, %19 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_codec_prepare(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_soc_card, ptr %9, i32 0, i32 58
  %11 = load ptr, ptr %10, align 4
  br i1 %5, label %12, label %28

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.sun4i_codec, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 4, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %16 = load ptr, ptr %13, align 4
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 4, i32 noundef 16128, i32 noundef 3840, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %18 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %19, i32 0, i32 14
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, 32000
  %23 = select i1 %22, i32 0, i32 268435456
  %24 = load ptr, ptr %13, align 4
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 4, i32 noundef 268435456, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %26 = load ptr, ptr %13, align 4
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 4, i32 noundef 67108864, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %59

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.sun4i_codec, ptr %11, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @regmap_field_update_bits_base(ptr noundef %30, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %32 = load ptr, ptr %29, align 4
  %33 = tail call i32 @regmap_field_update_bits_base(ptr noundef %32, i32 noundef 3840, i32 noundef 1792, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %34 = load ptr, ptr %11, align 4
  %35 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 25
  %36 = load ptr, ptr %35, align 8
  %37 = tail call i32 @of_device_is_compatible(ptr noundef %36, ptr noundef nonnull @.str.166) #7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load ptr, ptr %11, align 4
  %41 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 25
  %42 = load ptr, ptr %41, align 8
  %43 = tail call i32 @of_device_is_compatible(ptr noundef %42, ptr noundef nonnull @.str.167) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %39, %28
  %46 = getelementptr inbounds %struct.sun4i_codec, ptr %11, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 40, i32 noundef 100663296, i32 noundef 33554432, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %49

49:                                               ; preds = %45, %39
  %50 = load ptr, ptr %11, align 4
  %51 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 25
  %52 = load ptr, ptr %51, align 8
  %53 = tail call i32 @of_device_is_compatible(ptr noundef %52, ptr noundef nonnull @.str.167) #7
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.sun4i_codec, ptr %11, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 20, i32 noundef 768, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %59

59:                                               ; preds = %55, %49, %12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_codec_trigger(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #1 {
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 58
  %9 = load ptr, ptr %8, align 4
  switch i32 %1, label %36 [
    i32 1, label %10
    i32 6, label %10
    i32 4, label %10
    i32 0, label %24
    i32 5, label %24
    i32 3, label %24
  ]

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sun4i_codec, ptr %9, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 4, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %18 = load ptr, ptr %15, align 4
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 4, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %36

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.sun4i_codec, ptr %9, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @regmap_field_update_bits_base(ptr noundef %22, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %36

24:                                               ; preds = %3, %3, %3
  %25 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.sun4i_codec, ptr %9, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 4, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %36

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.sun4i_codec, ptr %9, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @regmap_field_update_bits_base(ptr noundef %34, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %36

36:                                               ; preds = %32, %28, %20, %14, %3
  %37 = phi i32 [ -22, %3 ], [ 0, %28 ], [ 0, %32 ], [ 0, %14 ], [ 0, %20 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @sun4i_codec_dai_probe(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 58
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sun4i_codec, ptr %7, i32 0, i32 8
  %9 = getelementptr inbounds %struct.sun4i_codec, ptr %7, i32 0, i32 7
  %10 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 7
  store ptr %8, ptr %10, align 4
  %11 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 8
  store ptr %9, ptr %11, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_unregister_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
!9 = !{i8 0, i8 2}
