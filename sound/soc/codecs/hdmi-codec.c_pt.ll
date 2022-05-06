; ModuleID = '/llk/IR/sound/soc/codecs/hdmi-codec.c_pt.bc'
source_filename = "../sound/soc/codecs/hdmi-codec.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.lock_class_key = type {}
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.snd_pcm_chmap_elem = type { i8, [15 x i8] }
%struct.hdmi_codec_cea_spk_alloc = type { i32, i32, i32 }
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
%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.hdmi_codec_priv = type { %struct.hdmi_codec_pdata, [128 x i8], ptr, i32, %struct.mutex, i8, ptr, i32, [24 x i8] }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_pcm_chmap = type { ptr, i32, ptr, ptr, i32, i32, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8 }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, ptr, ptr, %struct.device }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [80 x i8], [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.73, [64 x i8] }
%union.anon.73 = type { %struct.anon.76, [40 x i8] }
%struct.anon.76 = type { i32, i32, [64 x i8], i64, i32 }
%struct.hdmi_codec_daifmt = type { i32, i8, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }

@__UNIQUE_ID_author270 = internal constant [34 x i8] c"author=Jyri Sarha <jsarha@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description271 = internal constant [36 x i8] c"description=HDMI Audio Codec Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license272 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias273 = internal constant [32 x i8] c"alias=platform:hdmi-audio-codec\00", section ".modinfo", align 1
@hdmi_codec_driver = internal global %struct.platform_driver { ptr @hdmi_codec_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [17 x i8] c"hdmi-audio-codec\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: No platform data\0A\00", align 1
@__func__.hdmi_codec_probe = private unnamed_addr constant [17 x i8] c"hdmi_codec_probe\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: Invalid parameters\0A\00", align 1
@hdmi_codec_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"&hcp->lock\00", align 1
@hdmi_i2s_dai = internal unnamed_addr constant %struct.snd_soc_dai_driver { ptr @.str.5, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @hdmi_dai_probe, ptr @hdmi_codec_dai_remove, ptr null, ptr @hdmi_codec_pcm_new, ptr @hdmi_codec_i2s_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.6, i64 219043597516, i32 7904, i32 0, i32 0, i32 2, i32 8, i32 24 }, %struct.snd_soc_pcm_stream { ptr @.str.7, i64 219043597516, i32 7904, i32 0, i32 0, i32 2, i32 8, i32 24 }, i8 0, i32 0, i32 0 }, align 8
@hdmi_spdif_dai = internal unnamed_addr constant %struct.snd_soc_dai_driver { ptr @.str.19, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @hdmi_dai_spdif_probe, ptr @hdmi_codec_dai_remove, ptr null, ptr @hdmi_codec_pcm_new, ptr @hdmi_codec_spdif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.6, i64 219043332300, i32 7904, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.20, i64 219043332300, i32 7904, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, align 8
@hdmi_driver = internal constant %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr @hdmi_widgets, i32 2, ptr null, i32 0, ptr null, ptr @hdmi_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hdmi_codec_set_jack, ptr null, ptr @hdmi_of_xlate_dai_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 58, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"%s: snd_soc_register_component() failed (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"i2s-hifi\00", align 1
@hdmi_codec_i2s_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @hdmi_codec_i2s_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hdmi_codec_mute, ptr @hdmi_codec_startup, ptr @hdmi_codec_shutdown, ptr @hdmi_codec_hw_params, ptr null, ptr @hdmi_codec_prepare, ptr null, ptr null, ptr null, ptr @hdmi_codec_formats, i32 1, i8 0 }, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"Capture\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"I2S Playback\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@hdmi_codec_controls = internal global [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.11, i32 0, i32 1, i32 0, ptr @hdmi_codec_iec958_info, ptr @hdmi_codec_iec958_mask_get, ptr null, %union.anon.83 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.12, i32 0, i32 0, i32 0, ptr @hdmi_codec_iec958_info, ptr @hdmi_codec_iec958_default_get, ptr @hdmi_codec_iec958_default_put, %union.anon.83 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.13, i32 0, i32 5, i32 0, ptr @hdmi_eld_ctl_info, ptr @hdmi_eld_ctl_get, ptr null, %union.anon.83 zeroinitializer, i32 0 }], align 4
@hdmi_codec_stereo_chmaps = internal constant <{ { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }> <{ { i8, <{ i8, i8, [13 x i8] }> } { i8 2, <{ i8, i8, [13 x i8] }> <{ i8 3, i8 4, [13 x i8] zeroinitializer }> }, %struct.snd_pcm_chmap_elem zeroinitializer }>, align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"IEC958 Playback Mask\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"IEC958 Playback Default\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"ELD\00", align 1
@hdmi_codec_formats = internal global i64 64424509566, align 8
@.str.14 = private unnamed_addr constant [30 x i8] c"Invalid DAI interface format\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Only one simultaneous stream supported!\0A\00", align 1
@hdmi_codec_8ch_chmaps = internal constant <{ { i8, <{ i8, i8, [13 x i8] }> }, { i8, <{ i8, i8, i8, i8, [11 x i8] }> }, { i8, <{ i8, i8, i8, i8, [11 x i8] }> }, { i8, <{ i8, i8, i8, i8, [11 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem }> <{ { i8, <{ i8, i8, [13 x i8] }> } { i8 2, <{ i8, i8, [13 x i8] }> <{ i8 3, i8 4, [13 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, [11 x i8] }> } { i8 4, <{ i8, i8, i8, i8, [11 x i8] }> <{ i8 3, i8 4, i8 8, i8 1, [11 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, [11 x i8] }> } { i8 4, <{ i8, i8, i8, i8, [11 x i8] }> <{ i8 3, i8 4, i8 1, i8 7, [11 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, [11 x i8] }> } { i8 4, <{ i8, i8, i8, i8, [11 x i8] }> <{ i8 3, i8 4, i8 8, i8 7, [11 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> } { i8 6, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 4, i8 1, i8 1, i8 11, i8 1, [9 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> } { i8 6, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 4, i8 8, i8 1, i8 11, i8 1, [9 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> } { i8 6, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 4, i8 1, i8 7, i8 11, i8 1, [9 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> } { i8 6, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 4, i8 8, i8 7, i8 11, i8 1, [9 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> } { i8 6, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 4, i8 1, i8 1, i8 5, i8 6, [9 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> } { i8 6, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 4, i8 8, i8 1, i8 5, i8 6, [9 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> } { i8 6, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 4, i8 1, i8 7, i8 5, i8 6, [9 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> } { i8 6, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 4, i8 8, i8 7, i8 5, i8 6, [9 x i8] zeroinitializer }> }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\01\01\05\06\0B\01\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\08\01\05\06\0B\01\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\01\07\05\06\0B\01\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\08\07\05\06\0B\01\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\01\01\05\06\0E\0F\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\08\01\05\06\0E\0F\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\01\07\05\06\0E\0F\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\08\07\05\06\0E\0F\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\01\01\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\08\01\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\01\07\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\08\07\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\01\01\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\08\01\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\01\07\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\08\07\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\01\01\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\08\01\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\01\07\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\08\07\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem zeroinitializer }>, align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"Creating IEC958 channel status failed %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"Not able to map channels to speakers (%d)\0A\00", align 1
@hdmi_codec_channel_alloc = internal unnamed_addr constant [32 x %struct.hdmi_codec_cea_spk_alloc] [%struct.hdmi_codec_cea_spk_alloc { i32 0, i32 2, i32 5 }, %struct.hdmi_codec_cea_spk_alloc { i32 1, i32 4, i32 1029 }, %struct.hdmi_codec_cea_spk_alloc { i32 2, i32 4, i32 7 }, %struct.hdmi_codec_cea_spk_alloc { i32 11, i32 6, i32 1191 }, %struct.hdmi_codec_cea_spk_alloc { i32 8, i32 6, i32 165 }, %struct.hdmi_codec_cea_spk_alloc { i32 9, i32 6, i32 1189 }, %struct.hdmi_codec_cea_spk_alloc { i32 10, i32 6, i32 167 }, %struct.hdmi_codec_cea_spk_alloc { i32 15, i32 8, i32 1255 }, %struct.hdmi_codec_cea_spk_alloc { i32 19, i32 8, i32 1959 }, %struct.hdmi_codec_cea_spk_alloc { i32 3, i32 8, i32 1031 }, %struct.hdmi_codec_cea_spk_alloc { i32 4, i32 8, i32 69 }, %struct.hdmi_codec_cea_spk_alloc { i32 5, i32 8, i32 1093 }, %struct.hdmi_codec_cea_spk_alloc { i32 6, i32 8, i32 71 }, %struct.hdmi_codec_cea_spk_alloc { i32 7, i32 8, i32 1095 }, %struct.hdmi_codec_cea_spk_alloc { i32 12, i32 8, i32 229 }, %struct.hdmi_codec_cea_spk_alloc { i32 13, i32 8, i32 1253 }, %struct.hdmi_codec_cea_spk_alloc { i32 14, i32 8, i32 231 }, %struct.hdmi_codec_cea_spk_alloc { i32 16, i32 8, i32 933 }, %struct.hdmi_codec_cea_spk_alloc { i32 17, i32 8, i32 1957 }, %struct.hdmi_codec_cea_spk_alloc { i32 18, i32 8, i32 935 }, %struct.hdmi_codec_cea_spk_alloc { i32 20, i32 8, i32 29 }, %struct.hdmi_codec_cea_spk_alloc { i32 21, i32 8, i32 1053 }, %struct.hdmi_codec_cea_spk_alloc { i32 22, i32 8, i32 31 }, %struct.hdmi_codec_cea_spk_alloc { i32 23, i32 8, i32 1055 }, %struct.hdmi_codec_cea_spk_alloc { i32 24, i32 8, i32 93 }, %struct.hdmi_codec_cea_spk_alloc { i32 25, i32 8, i32 1117 }, %struct.hdmi_codec_cea_spk_alloc { i32 26, i32 8, i32 95 }, %struct.hdmi_codec_cea_spk_alloc { i32 27, i32 8, i32 1119 }, %struct.hdmi_codec_cea_spk_alloc { i32 28, i32 8, i32 189 }, %struct.hdmi_codec_cea_spk_alloc { i32 29, i32 8, i32 1213 }, %struct.hdmi_codec_cea_spk_alloc { i32 30, i32 8, i32 191 }, %struct.hdmi_codec_cea_spk_alloc { i32 31, i32 8, i32 1215 }], align 4
@.str.19 = private unnamed_addr constant [11 x i8] c"spdif-hifi\00", align 1
@hdmi_codec_spdif_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hdmi_codec_mute, ptr @hdmi_codec_startup, ptr @hdmi_codec_shutdown, ptr @hdmi_codec_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@.str.20 = private unnamed_addr constant [15 x i8] c"SPDIF Playback\00", align 1
@hdmi_widgets = internal constant [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.9, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias273, ptr @__UNIQUE_ID_author270, ptr @__UNIQUE_ID_description271, ptr @__UNIQUE_ID_license272], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @hdmi_codec_driver, ptr noundef nonnull @__this_module) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @hdmi_codec_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_codec_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.hdmi_codec_probe) #14
  br label %65

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %4, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = lshr i8 %9, 1
  %12 = and i8 %11, 1
  %13 = add nuw nsw i8 %12, %10
  %14 = zext i8 %13 to i32
  %15 = icmp eq i8 %13, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %7
  %17 = load ptr, ptr %4, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.hdmi_codec_ops, ptr %17, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.hdmi_codec_ops, ptr %17, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.hdmi_codec_ops, ptr %17, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %23, %16, %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.hdmi_codec_probe) #14
  br label %65

32:                                               ; preds = %27
  %33 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 208, i32 noundef 3520) #13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %65, label %35

35:                                               ; preds = %32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %33, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %36 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %33, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @hdmi_codec_probe.__key) #13
  %37 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %33, i32 0, i32 8
  %38 = tail call i32 @snd_pcm_create_iec958_consumer_default(ptr noundef %37, i32 noundef 24) #13
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %65, label %40

40:                                               ; preds = %35
  %41 = mul nuw nsw i32 %14, 168
  %42 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %41, i32 noundef 3520) #13
  %43 = icmp eq ptr %42, null
  br i1 %43, label %65, label %44

44:                                               ; preds = %40
  %45 = load i8, ptr %8, align 4
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(168) %42, ptr noundef nonnull align 8 dereferenceable(168) @hdmi_i2s_dai, i32 168, i1 false)
  %49 = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %4, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %42, i32 0, i32 11, i32 6
  store i32 %50, ptr %51, align 8
  %52 = load i8, ptr %8, align 4
  br label %53

53:                                               ; preds = %48, %44
  %54 = phi i8 [ %52, %48 ], [ %45, %44 ]
  %55 = phi i32 [ 1, %48 ], [ 0, %44 ]
  %56 = and i8 %54, 2
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = getelementptr %struct.snd_soc_dai_driver, ptr %42, i32 %55
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(168) %59, ptr noundef nonnull align 8 dereferenceable(168) @hdmi_spdif_dai, i32 168, i1 false)
  br label %60

60:                                               ; preds = %58, %53
  %61 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %33, ptr %61, align 8
  %62 = tail call i32 @devm_snd_soc_register_component(ptr noundef %2, ptr noundef nonnull @hdmi_driver, ptr noundef nonnull %42, i32 noundef %14) #13
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hdmi_codec_probe, i32 noundef %62) #14
  br label %65

65:                                               ; preds = %64, %60, %40, %35, %32, %31, %6
  %66 = phi i32 [ -22, %31 ], [ %62, %64 ], [ -22, %6 ], [ -12, %32 ], [ %38, %35 ], [ -12, %40 ], [ 0, %60 ]
  ret i32 %66
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_create_iec958_consumer_default(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_dai_probe(ptr nocapture noundef %0) #2 {
  %2 = alloca [2 x %struct.snd_soc_dapm_route], align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %2) #13
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(100) %3, i8 0, i64 100, i1 false)
  store ptr @.str.8, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %2, i32 0, i32 2
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %2, i32 1
  %10 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %6, i32 0, i32 10
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %2, i32 1, i32 2
  store ptr @.str.9, ptr %12, align 4
  %13 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.snd_soc_component, ptr %14, i32 0, i32 17
  %16 = call i32 @snd_soc_dapm_add_routes(ptr noundef %15, ptr noundef nonnull %2, i32 noundef 2) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %20 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 12) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 7
  store ptr %20, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %18, %1
  %25 = phi i32 [ 0, %22 ], [ %16, %1 ], [ -12, %18 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %2) #13
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_codec_dai_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_codec_pcm_new(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %4, i32 0, i32 11, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %8, i32 0, i32 2
  %14 = tail call i32 @snd_pcm_add_chmap_ctls(ptr noundef %10, i32 noundef 0, ptr noundef null, i32 noundef %12, i32 noundef 0, ptr noundef %13) #13
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %69, label %16

16:                                               ; preds = %2
  %17 = load ptr, ptr %13, align 4
  %18 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %17, i32 0, i32 6
  store ptr %8, ptr %18, align 4
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.snd_kcontrol, ptr %21, i32 0, i32 4
  store ptr @hdmi_codec_chmap_ctl_get, ptr %22, align 4
  %23 = load ptr, ptr %13, align 4
  %24 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %23, i32 0, i32 3
  store ptr @hdmi_codec_stereo_chmaps, ptr %24, align 4
  %25 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %8, i32 0, i32 3
  store i32 -1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 12
  %27 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %26, align 4
  %29 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @hdmi_codec_controls, ptr noundef %28) #13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %69, label %59

31:                                               ; preds = %59
  %32 = load ptr, ptr %26, align 4
  %33 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @hdmi_codec_controls, i32 0, i32 1), ptr noundef %32) #13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %69, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %9, align 4
  %37 = getelementptr inbounds %struct.snd_pcm, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.snd_kcontrol, ptr %33, i32 0, i32 1, i32 2
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %27, align 4
  %41 = getelementptr inbounds %struct.snd_soc_card, ptr %40, i32 0, i32 7
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @snd_ctl_add(ptr noundef %42, ptr noundef nonnull %33) #13
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %35
  %46 = load ptr, ptr %26, align 4
  %47 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @hdmi_codec_controls, i32 0, i32 2), ptr noundef %46) #13
  %48 = icmp eq ptr %47, null
  br i1 %48, label %69, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %9, align 4
  %51 = getelementptr inbounds %struct.snd_pcm, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.snd_kcontrol, ptr %47, i32 0, i32 1, i32 2
  store i32 %52, ptr %53, align 4
  %54 = load ptr, ptr %27, align 4
  %55 = getelementptr inbounds %struct.snd_soc_card, ptr %54, i32 0, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 @snd_ctl_add(ptr noundef %56, ptr noundef nonnull %47) #13
  %58 = call i32 @llvm.smin.i32(i32 %57, i32 0)
  br label %69

59:                                               ; preds = %16
  %60 = load ptr, ptr %9, align 4
  %61 = getelementptr inbounds %struct.snd_pcm, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.snd_kcontrol, ptr %29, i32 0, i32 1, i32 2
  store i32 %62, ptr %63, align 4
  %64 = load ptr, ptr %27, align 4
  %65 = getelementptr inbounds %struct.snd_soc_card, ptr %64, i32 0, i32 7
  %66 = load ptr, ptr %65, align 4
  %67 = tail call i32 @snd_ctl_add(ptr noundef %66, ptr noundef nonnull %29) #13
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %31

69:                                               ; preds = %59, %49, %45, %35, %31, %16, %2
  %70 = phi i32 [ %14, %2 ], [ %67, %59 ], [ -12, %16 ], [ -12, %31 ], [ %43, %35 ], [ -12, %45 ], [ %58, %49 ]
  ret i32 %70
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_add_chmap_ctls(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_codec_chmap_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %6, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.snd_pcm_chmap_elem, ptr %8, i32 %10, i32 1
  %12 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %4, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  br label %17

17:                                               ; preds = %31, %15
  %18 = phi i32 [ %10, %15 ], [ %32, %31 ]
  %19 = phi i32 [ 0, %15 ], [ %28, %31 ]
  %20 = icmp eq i32 %18, -1
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %11, i32 %19
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i32 [ %24, %21 ], [ 0, %17 ]
  %27 = getelementptr [128 x i32], ptr %16, i32 0, i32 %19
  store i32 %26, ptr %27, align 4
  %28 = add nuw i32 %19, 1
  %29 = load i32, ptr %12, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, ptr %9, align 4
  br label %17

33:                                               ; preds = %25, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @hdmi_codec_iec958_info(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 5, ptr %3, align 8
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 1, ptr %4, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @hdmi_codec_iec958_mask_get(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %3, i8 -1, i32 24, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @hdmi_codec_iec958_default_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %10 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %8, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %9, ptr noundef align 4 dereferenceable(24) %10, i32 24, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @hdmi_codec_iec958_default_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %8, i32 0, i32 8
  %10 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %9, ptr noundef align 8 dereferenceable(24) %10, i32 24, i1 false)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @hdmi_eld_ctl_info(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 4, ptr %3, align 8
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 128, ptr %4, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @hdmi_eld_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %10 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %8, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(128) %9, ptr noundef align 4 dereferenceable(128) %10, i32 128, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_codec_i2s_set_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false)
  %5 = and i32 %1, 61440
  %6 = add nsw i32 %5, -4096
  %7 = lshr exact i32 %6, 12
  switch i32 %7, label %33 [
    i32 0, label %10
    i32 1, label %8
    i32 2, label %9
    i32 3, label %13
  ]

8:                                                ; preds = %2
  br label %10

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %9, %8, %2
  %11 = phi i8 [ 4, %9 ], [ 8, %8 ], [ 12, %2 ]
  %12 = getelementptr inbounds %struct.hdmi_codec_daifmt, ptr %4, i32 0, i32 1
  store i8 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i8 [ 0, %2 ], [ %11, %10 ]
  %15 = and i32 %1, 3840
  switch i32 %15, label %22 [
    i32 1024, label %17
    i32 512, label %18
    i32 768, label %16
  ]

16:                                               ; preds = %13
  br label %18

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %17, %16, %13
  %19 = phi i8 [ 3, %17 ], [ 1, %16 ], [ 2, %13 ]
  %20 = getelementptr inbounds %struct.hdmi_codec_daifmt, ptr %4, i32 0, i32 1
  %21 = or i8 %14, %19
  store i8 %21, ptr %20, align 4
  br label %22

22:                                               ; preds = %18, %13
  %23 = and i32 %1, 15
  switch i32 %23, label %30 [
    i32 1, label %24
    i32 4, label %25
    i32 5, label %26
    i32 2, label %27
    i32 3, label %28
    i32 6, label %29
  ]

24:                                               ; preds = %22
  store i32 0, ptr %4, align 4
  br label %33

25:                                               ; preds = %22
  store i32 3, ptr %4, align 4
  br label %33

26:                                               ; preds = %22
  store i32 4, ptr %4, align 4
  br label %33

27:                                               ; preds = %22
  store i32 1, ptr %4, align 4
  br label %33

28:                                               ; preds = %22
  store i32 2, ptr %4, align 4
  br label %33

29:                                               ; preds = %22
  store i32 5, ptr %4, align 4
  br label %33

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.14) #14
  br label %33

33:                                               ; preds = %30, %29, %28, %27, %26, %25, %24, %2
  %34 = phi i32 [ -22, %30 ], [ -22, %2 ], [ 0, %29 ], [ 0, %28 ], [ 0, %27 ], [ 0, %26 ], [ 0, %25 ], [ 0, %24 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_codec_mute(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.hdmi_codec_ops, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %3
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.hdmi_codec_ops, ptr %8, i32 0, i32 8
  %16 = load i8, ptr %15, align 4
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14, %12
  %20 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %7, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp ne i32 %1, 0
  %25 = tail call i32 %10(ptr noundef %21, ptr noundef %23, i1 noundef zeroext %24, i32 noundef %2) #13
  br label %26

26:                                               ; preds = %19, %14, %3
  %27 = phi i32 [ %25, %19 ], [ -524, %14 ], [ -524, %3 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_codec_startup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %6, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %10) #13
  %11 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %6, i32 0, i32 5
  %12 = load i8, ptr %11, align 4, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.15) #14
  br label %90

16:                                               ; preds = %2
  %17 = load ptr, ptr %6, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %6, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %18(ptr noundef %23, ptr noundef %25) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %90

28:                                               ; preds = %20, %16
  br i1 %9, label %29, label %89

29:                                               ; preds = %28
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr inbounds %struct.hdmi_codec_ops, ptr %30, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %89, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %6, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %6, i32 0, i32 1
  %41 = tail call i32 %32(ptr noundef %37, ptr noundef %39, ptr noundef %40, i32 noundef 128) #13
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %90

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @snd_pcm_hw_constraint_eld(ptr noundef %45, ptr noundef %40) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %90

48:                                               ; preds = %43
  %49 = getelementptr %struct.hdmi_codec_priv, ptr %6, i32 0, i32 1, i32 7
  %50 = load i8, ptr %49, align 1
  %51 = and i8 %50, 127
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 0, i32 5
  %56 = shl nuw nsw i32 %52, 9
  %57 = and i32 %56, 1024
  %58 = lshr i32 %52, 1
  %59 = and i32 %58, 2
  %60 = or i32 %59, %57
  %61 = or i32 %60, %55
  %62 = and i32 %52, 8
  %63 = icmp eq i32 %62, 0
  %64 = or i32 %61, 160
  %65 = select i1 %63, i32 %61, i32 %64
  %66 = shl nuw nsw i32 %52, 2
  %67 = and i32 %66, 64
  %68 = or i32 %65, %67
  %69 = and i32 %52, 32
  %70 = icmp eq i32 %69, 0
  %71 = or i32 %68, 24
  %72 = select i1 %70, i32 %68, i32 %71
  %73 = and i32 %52, 64
  %74 = icmp eq i32 %73, 0
  %75 = or i32 %72, 768
  %76 = select i1 %74, i32 %72, i32 %75
  %77 = and i32 %76, -6
  %78 = icmp eq i32 %77, 0
  %79 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %6, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  br i1 %78, label %85, label %81

81:                                               ; preds = %48
  %82 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %80, i32 0, i32 4
  %83 = load i32, ptr %82, align 4
  %84 = icmp ugt i32 %83, 2
  br i1 %84, label %86, label %85

85:                                               ; preds = %81, %48
  br label %86

86:                                               ; preds = %85, %81
  %87 = phi ptr [ @hdmi_codec_stereo_chmaps, %85 ], [ @hdmi_codec_8ch_chmaps, %81 ]
  %88 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %80, i32 0, i32 3
  store ptr %87, ptr %88, align 4
  br label %89

89:                                               ; preds = %86, %29, %28
  store i8 1, ptr %11, align 4
  br label %90

90:                                               ; preds = %89, %43, %34, %20, %14
  %91 = phi i32 [ -22, %14 ], [ %26, %20 ], [ %41, %34 ], [ %46, %43 ], [ 0, %89 ]
  tail call void @mutex_unlock(ptr noundef %10) #13
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hdmi_codec_shutdown(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %6, i32 0, i32 3
  store i32 -1, ptr %7, align 4
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.hdmi_codec_ops, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %6, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void %10(ptr noundef %13, ptr noundef %15) #13
  %16 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %6, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %16) #13
  %17 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %6, i32 0, i32 5
  store i8 0, ptr %17, align 4
  tail call void @mutex_unlock(ptr noundef %16) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_codec_hw_params(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca %struct.hdmi_codec_params, align 4
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(216) %4, i8 0, i32 216, i1 false)
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.hdmi_codec_ops, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %68, label %15

15:                                               ; preds = %3
  %16 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %24, %15
  %20 = phi i32 [ 0, %15 ], [ 32, %24 ]
  %21 = phi i32 [ %17, %15 ], [ %26, %24 ]
  %22 = tail call i32 @llvm.cttz.i32(i32 %21, i1 true) #13, !range !9
  %23 = or i32 %22, %20
  br label %28

24:                                               ; preds = %15
  %25 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %19

28:                                               ; preds = %24, %19
  %29 = phi i32 [ %23, %19 ], [ 0, %24 ]
  %30 = tail call i32 @snd_pcm_format_width(i32 noundef %29) #13
  %31 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = call fastcc i32 @hdmi_codec_fill_codec_params(ptr noundef %2, i32 noundef %30, i32 noundef %32, i32 noundef %34, ptr noundef nonnull %4)
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %68, label %37

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.hdmi_codec_params, ptr %4, i32 0, i32 1
  %39 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %8, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %38, ptr noundef align 4 dereferenceable(24) %39, i32 24, i1 false)
  %40 = call i32 @snd_pcm_fill_iec958_consumer_hw_params(ptr noundef %1, ptr noundef %38, i32 noundef 24) #13
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.17, i32 noundef %40) #14
  br label %68

44:                                               ; preds = %37
  %45 = load i32, ptr %16, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %52, %44
  %48 = phi i32 [ 0, %44 ], [ 32, %52 ]
  %49 = phi i32 [ %45, %44 ], [ %54, %52 ]
  %50 = call i32 @llvm.cttz.i32(i32 %49, i1 true) #13, !range !9
  %51 = or i32 %50, %48
  br label %56

52:                                               ; preds = %44
  %53 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %47

56:                                               ; preds = %52, %47
  %57 = phi i32 [ %51, %47 ], [ 0, %52 ]
  %58 = getelementptr inbounds %struct.hdmi_codec_daifmt, ptr %10, i32 0, i32 2
  store i32 %57, ptr %58, align 4
  %59 = load ptr, ptr %8, align 4
  %60 = getelementptr inbounds %struct.hdmi_codec_ops, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %5, align 4
  %63 = getelementptr inbounds %struct.device, ptr %62, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %8, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = call i32 %61(ptr noundef %64, ptr noundef %66, ptr noundef %10, ptr noundef nonnull %4) #13
  br label %68

68:                                               ; preds = %56, %42, %28, %3
  %69 = phi i32 [ %40, %42 ], [ %67, %56 ], [ 0, %3 ], [ %35, %28 ]
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %4) #13
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_codec_prepare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.hdmi_codec_params, align 4
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 15
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 12
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @snd_pcm_format_width(i32 noundef %15) #13
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 14
  %18 = load i32, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(216) %3, i8 0, i32 216, i1 false), !annotation !10
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr inbounds %struct.hdmi_codec_ops, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %45, label %23

23:                                               ; preds = %2
  %24 = call fastcc i32 @hdmi_codec_fill_codec_params(ptr noundef %1, i32 noundef %16, i32 noundef %18, i32 noundef %13, ptr noundef nonnull %3)
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.hdmi_codec_params, ptr %3, i32 0, i32 1
  %28 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %7, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %27, ptr noundef align 4 dereferenceable(24) %28, i32 24, i1 false)
  %29 = call i32 @snd_pcm_fill_iec958_consumer(ptr noundef %11, ptr noundef %27, i32 noundef 24) #13
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.17, i32 noundef %29) #14
  br label %45

33:                                               ; preds = %26
  %34 = load i32, ptr %14, align 4
  %35 = getelementptr inbounds %struct.hdmi_codec_daifmt, ptr %9, i32 0, i32 2
  store i32 %34, ptr %35, align 4
  %36 = load ptr, ptr %7, align 4
  %37 = getelementptr inbounds %struct.hdmi_codec_ops, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %7, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 %38(ptr noundef %41, ptr noundef %43, ptr noundef %9, ptr noundef nonnull %3) #13
  br label %45

45:                                               ; preds = %33, %31, %23, %2
  %46 = phi i32 [ %29, %31 ], [ %44, %33 ], [ 0, %2 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %3) #13
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_eld(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hdmi_codec_fill_codec_params(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = trunc i32 %3 to i8
  %11 = getelementptr %struct.hdmi_codec_priv, ptr %9, i32 0, i32 1, i32 7
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 127
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 0, i32 5
  %18 = shl nuw nsw i32 %14, 9
  %19 = and i32 %18, 1024
  %20 = lshr i32 %14, 1
  %21 = and i32 %20, 2
  %22 = or i32 %21, %19
  %23 = or i32 %22, %17
  %24 = and i32 %14, 8
  %25 = icmp eq i32 %24, 0
  %26 = or i32 %23, 160
  %27 = select i1 %25, i32 %23, i32 %26
  %28 = shl nuw nsw i32 %14, 2
  %29 = and i32 %28, 64
  %30 = or i32 %27, %29
  %31 = and i32 %14, 32
  %32 = icmp eq i32 %31, 0
  %33 = or i32 %30, 24
  %34 = select i1 %32, i32 %30, i32 %33
  %35 = and i32 %14, 64
  %36 = icmp eq i32 %35, 0
  %37 = or i32 %34, 768
  %38 = select i1 %36, i32 %34, i32 %37
  %39 = icmp eq i8 %13, 0
  %40 = and i32 %3, 255
  br label %41

41:                                               ; preds = %56, %5
  %42 = phi ptr [ @hdmi_codec_channel_alloc, %5 ], [ %58, %56 ]
  %43 = phi i32 [ 0, %5 ], [ %57, %56 ]
  br i1 %39, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, ptr %42, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %44, %41
  %48 = getelementptr inbounds %struct.hdmi_codec_cea_spk_alloc, ptr %42, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, %40
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.hdmi_codec_cea_spk_alloc, ptr %42, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, %38
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %51, %47
  %57 = add nuw nsw i32 %43, 1
  %58 = getelementptr %struct.hdmi_codec_cea_spk_alloc, ptr %42, i32 1
  %59 = icmp eq i32 %57, 32
  br i1 %59, label %60, label %41

60:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.18, i32 noundef -22) #14
  br label %74

61:                                               ; preds = %51, %44
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(216) %4, i8 0, i32 216, i1 false)
  %62 = tail call i32 @hdmi_audio_infoframe_init(ptr noundef %4) #13
  %63 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %4, i32 0, i32 3
  store i8 %10, ptr %63, align 2
  %64 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %4, i32 0, i32 4
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %4, i32 0, i32 5
  store i32 0, ptr %65, align 4
  %66 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %4, i32 0, i32 6
  store i32 0, ptr %66, align 4
  %67 = getelementptr [32 x %struct.hdmi_codec_cea_spk_alloc], ptr @hdmi_codec_channel_alloc, i32 0, i32 %43
  %68 = load i32, ptr %67, align 4
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %4, i32 0, i32 8
  store i8 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.hdmi_codec_params, ptr %4, i32 0, i32 3
  store i32 %1, ptr %71, align 4
  %72 = getelementptr inbounds %struct.hdmi_codec_params, ptr %4, i32 0, i32 2
  store i32 %2, ptr %72, align 4
  %73 = getelementptr inbounds %struct.hdmi_codec_params, ptr %4, i32 0, i32 4
  store i32 %3, ptr %73, align 4
  br label %74

74:                                               ; preds = %61, %60
  %75 = phi i32 [ %68, %61 ], [ -1, %60 ]
  %76 = phi i32 [ 0, %61 ], [ -22, %60 ]
  %77 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %9, i32 0, i32 3
  store i32 %75, ptr %77, align 4
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_fill_iec958_consumer_hw_params(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_fill_iec958_consumer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_dai_spdif_probe(ptr nocapture noundef %0) #2 {
  %2 = alloca [2 x %struct.snd_soc_dapm_route], align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %2) #13
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(100) %3, i8 0, i64 100, i1 false) #13
  store ptr @.str.8, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %2, i32 0, i32 2
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %2, i32 1
  %10 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %6, i32 0, i32 10
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %2, i32 1, i32 2
  store ptr @.str.9, ptr %12, align 4
  %13 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.snd_soc_component, ptr %14, i32 0, i32 17
  %16 = call i32 @snd_soc_dapm_add_routes(ptr noundef %15, ptr noundef nonnull %2, i32 noundef 2) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %20 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 12) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %1
  %23 = phi i32 [ -12, %18 ], [ %16, %1 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %2) #13
  br label %26

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 7
  store ptr %20, ptr %25, align 4
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %2) #13
  store i32 6, ptr %20, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ 0, %24 ], [ %23, %22 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hdmi_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hdmi_codec_ops, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %5, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %8(ptr noundef %12, ptr noundef %14, ptr noundef null, ptr noundef null) #13
  br label %16

16:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_codec_set_jack(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.hdmi_codec_ops, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %7, i32 0, i32 6
  store ptr %1, ptr %13, align 4
  %14 = load ptr, ptr %9, align 4
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %7, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %14(ptr noundef %17, ptr noundef %19, ptr noundef nonnull @plugged_cb, ptr noundef %15) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  store ptr null, ptr %13, align 4
  br label %23

23:                                               ; preds = %22, %12, %3
  %24 = phi i32 [ %20, %22 ], [ 0, %12 ], [ -524, %3 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_of_xlate_dai_id(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.hdmi_codec_ops, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 %9(ptr noundef %0, ptr noundef %1) #13
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi i32 [ %12, %11 ], [ -524, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @plugged_cb(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  br i1 %1, label %5, label %26

5:                                                ; preds = %2
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr inbounds %struct.hdmi_codec_ops, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %4, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %4, i32 0, i32 1
  %16 = tail call i32 %8(ptr noundef %12, ptr noundef %14, ptr noundef %15, i32 noundef 128) #13
  br label %17

17:                                               ; preds = %10, %5
  %18 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %4, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %4, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  tail call void @snd_soc_jack_report(ptr noundef nonnull %19, i32 noundef 4, i32 noundef 4) #13
  store i32 4, ptr %22, align 4
  br label %37

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %4, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %4, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @snd_soc_jack_report(ptr noundef nonnull %28, i32 noundef 0, i32 noundef 4) #13
  store i32 0, ptr %31, align 4
  br label %35

35:                                               ; preds = %34, %30, %26
  %36 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %4, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(128) %36, i8 0, i32 128, i1 false)
  br label %37

37:                                               ; preds = %35, %25, %21, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

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
!8 = !{i8 0, i8 2}
!9 = !{i32 0, i32 33}
!10 = !{!"auto-init"}
