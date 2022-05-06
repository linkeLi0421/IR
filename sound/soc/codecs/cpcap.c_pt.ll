; ModuleID = '/llk/IR/sound/soc/codecs/cpcap.c_pt.bc'
source_filename = "../sound/soc/codecs/cpcap.c"
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
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.85, ptr }
%union.anon.85 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.77, i32 }
%union.anon.77 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8 }
%struct.cpcap_reg_info = type { i16, i16, i16 }
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
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.cpcap_audio = type { ptr, ptr, i16, i32, i32, i32 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.66, [128 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.66 = type { %union.anon.68 }
%union.anon.68 = type { [64 x i64] }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.71, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.71 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
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

@__UNIQUE_ID_alias230 = internal constant [27 x i8] c"alias=platform:cpcap-codec\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [36 x i8] c"description=ASoC CPCAP codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [25 x i8] c"author=Sebastian Reichel\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@cpcap_codec_driver = internal global %struct.platform_driver { ptr @cpcap_codec_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"cpcap-codec\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"audio-codec\00", align 1
@soc_codec_dev_cpcap = internal global %struct.snd_soc_component_driver { ptr null, ptr @cpcap_snd_controls, i32 7, ptr @cpcap_dapm_widgets, i32 64, ptr @intercon, i32 93, ptr @cpcap_soc_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 58, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@cpcap_dai = internal global [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.118, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cpcap_dai_hifi_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.109, i64 6, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.119, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cpcap_dai_voice_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.111, i64 4, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.110, i64 4, i32 254, i32 0, i32 0, i32 1, i32 1, i32 0 }, i8 0, i32 0, i32 0 }], align 8
@cpcap_snd_controls = internal constant [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.2, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.77 { ptr @vol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.3, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.77 { ptr @vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.4 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.77 { ptr @vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.6 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.77 { ptr @mic_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.8 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.77 { ptr @mic_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.10 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }], align 4
@intercon = internal constant [93 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.40, ptr null, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr null, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr null, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr null, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.34, ptr null, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr null, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.15, ptr null, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.16, ptr null, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr null, ptr @.str.17, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.15, ptr null, ptr @.str.21, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.16, ptr null, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.17, ptr null, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr @.str.89, ptr @.str.17, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.16, ptr null, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.19, ptr null, ptr @.str.16, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.17, ptr null, ptr @.str.20, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr null, ptr @.str.15, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.39, ptr null, ptr @.str.19, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr null, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr null, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr null, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr null, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.89, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.89, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr null, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr @.str.93, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr null, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr @.str.93, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr null, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr @.str.95, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr null, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr @.str.95, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr @.str.99, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr @.str.99, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr @.str.99, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.99, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.99, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.99, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.99, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.99, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.99, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr @.str.98, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr @.str.98, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr @.str.98, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.98, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.98, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.98, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.98, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.98, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.98, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr @.str.100, ptr @.str.50, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr @.str.100, ptr @.str.50, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr @.str.100, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.100, ptr @.str.50, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.100, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.100, ptr @.str.50, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.100, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.100, ptr @.str.50, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.100, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr null, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr null, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr null, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.71, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.32, ptr @.str.82, ptr @.str.26, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.32, ptr @.str.83, ptr @.str.27, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.32, ptr @.str.84, ptr @.str.28, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.32, ptr @.str.85, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.33, ptr @.str.87, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.33, ptr @.str.88, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.34, ptr null, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr null, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr null, ptr @.str.34, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.37, ptr null, ptr @.str.35, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.20, ptr null, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.20, ptr null, ptr @.str.37, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.29, ptr null, ptr @.str.24, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.26, ptr null, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"HiFi Playback Volume\00", align 1
@vol_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -3300, i32 300], align 4
@.compoundliteral = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 2080, i32 2080, i32 8, i32 8, i32 0, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Voice Playback Volume\00", align 1
@.compoundliteral.4 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 2080, i32 2080, i32 2, i32 2, i32 0, i8 0 }, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Ext Playback Volume\00", align 1
@.compoundliteral.6 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 2080, i32 2080, i32 12, i32 12, i32 0, i8 0 }, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"Mic1 Capture Volume\00", align 1
@mic_gain_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 0, i32 100], align 4
@.compoundliteral.8 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 2072, i32 2072, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"Mic2 Capture Volume\00", align 1
@.compoundliteral.10 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 2072, i32 2072, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"Hifi Left Phase Invert Switch\00", align 1
@.compoundliteral.12 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2088, i32 2088, i32 9, i32 9, i32 0, i8 0 }, align 4
@.str.13 = private unnamed_addr constant [29 x i8] c"Ext Left Phase Invert Switch\00", align 1
@.compoundliteral.14 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2092, i32 2092, i32 9, i32 9, i32 0, i8 0 }, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"HiFi RX\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Voice RX\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Voice TX\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"VAUDIO\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Highpass Filter RX\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Highpass Filter TX\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"HiFi DAI Clock\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Voice DAI Clock\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"MIC1R Bias\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"MIC1L Bias\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"MIC2 Bias\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"MICR\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"HSMIC\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"EMUMIC\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"MICL\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"EXTR\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"EXTL\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"Right Capture Route\00", align 1
@cpcap_input_right_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @cpcap_input_right_mux_get_enum, ptr @cpcap_input_right_mux_put_enum, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @cpcap_input_right_mux_enum to i32) }, align 4
@.str.33 = private unnamed_addr constant [19 x i8] c"Left Capture Route\00", align 1
@cpcap_input_left_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @cpcap_input_left_mux_get_enum, ptr @cpcap_input_left_mux_put_enum, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @cpcap_input_left_mux_enum to i32) }, align 4
@.str.34 = private unnamed_addr constant [17 x i8] c"Microphone 1 PGA\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"Microphone 2 PGA\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"ADC Right\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"ADC Left\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"DAC HiFi\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"DAC Voice\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"HiFi PGA\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"Voice PGA\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"Ext Right PGA\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"Ext Left PGA\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"Ext Right Enable\00", align 1
@cpcap_extr_mute_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, align 4
@.str.45 = private unnamed_addr constant [16 x i8] c"Ext Left Enable\00", align 1
@cpcap_extl_mute_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.91 to i32) }, align 4
@.str.46 = private unnamed_addr constant [15 x i8] c"Voice Loopback\00", align 1
@cpcap_voice_loopback = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.92 to i32) }, align 4
@.str.47 = private unnamed_addr constant [21 x i8] c"HiFi Mono Left Mixer\00", align 1
@cpcap_hifi_mono_mixer_controls = internal constant [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }], align 4
@.str.48 = private unnamed_addr constant [22 x i8] c"HiFi Mono Right Mixer\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"Ext Mono Left Mixer\00", align 1
@cpcap_ext_mono_mixer_controls = internal constant [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }], align 4
@.str.50 = private unnamed_addr constant [21 x i8] c"Ext Mono Right Mixer\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"Earpiece Playback Route\00", align 1
@cpcap_earpiece_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @cpcap_output_mux_get_enum, ptr @cpcap_output_mux_put_enum, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @cpcap_earpiece_mux_enum to i32) }, align 4
@.str.52 = private unnamed_addr constant [29 x i8] c"Speaker Right Playback Route\00", align 1
@cpcap_speaker_right_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @cpcap_output_mux_get_enum, ptr @cpcap_output_mux_put_enum, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @cpcap_spkr_r_mux_enum to i32) }, align 4
@.str.53 = private unnamed_addr constant [28 x i8] c"Speaker Left Playback Route\00", align 1
@cpcap_speaker_left_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @cpcap_output_mux_get_enum, ptr @cpcap_output_mux_put_enum, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @cpcap_spkr_l_mux_enum to i32) }, align 4
@.str.54 = private unnamed_addr constant [29 x i8] c"Lineout Right Playback Route\00", align 1
@cpcap_line_right_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @cpcap_output_mux_get_enum, ptr @cpcap_output_mux_put_enum, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @cpcap_line_r_mux_enum to i32) }, align 4
@.str.55 = private unnamed_addr constant [28 x i8] c"Lineout Left Playback Route\00", align 1
@cpcap_line_left_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @cpcap_output_mux_get_enum, ptr @cpcap_output_mux_put_enum, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @cpcap_line_l_mux_enum to i32) }, align 4
@.str.56 = private unnamed_addr constant [29 x i8] c"Headset Right Playback Route\00", align 1
@cpcap_hs_right_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @cpcap_output_mux_get_enum, ptr @cpcap_output_mux_put_enum, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @cpcap_hs_r_mux_enum to i32) }, align 4
@.str.57 = private unnamed_addr constant [28 x i8] c"Headset Left Playback Route\00", align 1
@cpcap_hs_left_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @cpcap_output_mux_get_enum, ptr @cpcap_output_mux_put_enum, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @cpcap_hs_l_mux_enum to i32) }, align 4
@.str.58 = private unnamed_addr constant [25 x i8] c"EMU Right Playback Route\00", align 1
@cpcap_emu_right_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @cpcap_output_mux_get_enum, ptr @cpcap_output_mux_put_enum, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @cpcap_emu_r_mux_enum to i32) }, align 4
@.str.59 = private unnamed_addr constant [24 x i8] c"EMU Left Playback Route\00", align 1
@cpcap_emu_left_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @cpcap_output_mux_get_enum, ptr @cpcap_output_mux_put_enum, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @cpcap_emu_l_mux_enum to i32) }, align 4
@.str.60 = private unnamed_addr constant [13 x i8] c"Earpiece PGA\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"Speaker Right PGA\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"Speaker Left PGA\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"Lineout Right PGA\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"Lineout Left PGA\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"Headset Right PGA\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"Headset Left PGA\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"EMU Right PGA\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"EMU Left PGA\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"Headset Charge Pump\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"EP\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"SPKR\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"SPKL\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"LINER\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"LINEL\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"HSR\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"HSL\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"EMUR\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"EMUL\00", align 1
@cpcap_dapm_widgets = internal constant [64 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.15, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.16, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.17, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 21, ptr @.str.18, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @dapm_regulator_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.19, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2052, i8 0, i32 3, i32 3, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.20, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2052, i8 2, i32 3, i32 3, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.21, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2064, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.22, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2056, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.23, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2068, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.24, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2068, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.25, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2068, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.26, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.27, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.28, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.29, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.30, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.31, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.32, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cpcap_input_right_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.33, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cpcap_input_left_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.34, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2068, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.35, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2068, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.36, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2052, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.37, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2052, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.38, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2060, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 3, ptr @cpcap_st_workaround, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.39, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2052, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 3, ptr @cpcap_st_workaround, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.40, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2088, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2084, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2092, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 3, ptr @cpcap_st_workaround, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2092, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 3, ptr @cpcap_st_workaround, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cpcap_extr_mute_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.45, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cpcap_extl_mute_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.46, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cpcap_voice_loopback, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.47, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cpcap_hifi_mono_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.48, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cpcap_hifi_mono_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.49, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cpcap_ext_mono_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.50, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cpcap_ext_mono_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.51, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cpcap_earpiece_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.52, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cpcap_speaker_right_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.53, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cpcap_speaker_left_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.54, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cpcap_line_right_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.55, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cpcap_line_left_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.56, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cpcap_hs_right_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.57, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cpcap_hs_left_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.58, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cpcap_emu_right_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cpcap_emu_left_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.60, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2076, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2076, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2076, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2076, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2076, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2076, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2076, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2076, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2076, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2076, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.80 = private unnamed_addr constant [12 x i8] c"Input Right\00", align 1
@cpcap_input_right_mux_enum = internal constant %struct.soc_enum { i32 0, i8 0, i8 0, i32 5, i32 0, ptr @cpcap_in_right_mux_texts, ptr null, i8 0 }, align 4
@cpcap_in_right_mux_texts = internal constant [5 x ptr] [ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85], align 4
@.str.81 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"Mic 1\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"Headset Mic\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"EMU Mic\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"Ext Right\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"Input Left\00", align 1
@cpcap_input_left_mux_enum = internal constant %struct.soc_enum { i32 0, i8 0, i8 0, i32 3, i32 0, ptr @cpcap_in_left_mux_texts, ptr null, i8 0 }, align 4
@cpcap_in_left_mux_texts = internal constant [3 x ptr] [ptr @.str.81, ptr @.str.87, ptr @.str.88], align 4
@.str.87 = private unnamed_addr constant [6 x i8] c"Mic 2\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"Ext Left\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"Switch\00", align 1
@.compoundliteral.90 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2092, i32 2092, i32 11, i32 11, i32 0, i8 0 }, align 4
@.compoundliteral.91 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2092, i32 2092, i32 12, i32 12, i32 0, i8 0 }, align 4
@.compoundliteral.92 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2068, i32 2068, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.93 = private unnamed_addr constant [26 x i8] c"HiFi Mono Playback Switch\00", align 1
@.compoundliteral.94 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2088, i32 2088, i32 10, i32 10, i32 0, i8 0 }, align 4
@.str.95 = private unnamed_addr constant [25 x i8] c"Ext Mono Playback Switch\00", align 1
@.compoundliteral.96 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2092, i32 2092, i32 9, i32 9, i32 0, i8 0 }, align 4
@.str.97 = private unnamed_addr constant [9 x i8] c"Earpiece\00", align 1
@cpcap_earpiece_mux_enum = internal constant %struct.soc_enum { i32 0, i8 0, i8 0, i32 4, i32 3, ptr @cpcap_out_mux_texts, ptr null, i8 0 }, align 4
@cpcap_out_mux_texts = internal constant [4 x ptr] [ptr @.str.81, ptr @.str.98, ptr @.str.99, ptr @.str.100], align 4
@.str.98 = private unnamed_addr constant [6 x i8] c"Voice\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"HiFi\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"Ext\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"Speaker Right\00", align 1
@cpcap_spkr_r_mux_enum = internal constant %struct.soc_enum { i32 0, i8 1, i8 1, i32 4, i32 3, ptr @cpcap_out_mux_texts, ptr null, i8 0 }, align 4
@.str.102 = private unnamed_addr constant [13 x i8] c"Speaker Left\00", align 1
@cpcap_spkr_l_mux_enum = internal constant %struct.soc_enum { i32 0, i8 2, i8 2, i32 4, i32 3, ptr @cpcap_out_mux_texts, ptr null, i8 0 }, align 4
@.str.103 = private unnamed_addr constant [11 x i8] c"Line Right\00", align 1
@cpcap_line_r_mux_enum = internal constant %struct.soc_enum { i32 0, i8 3, i8 3, i32 4, i32 3, ptr @cpcap_out_mux_texts, ptr null, i8 0 }, align 4
@.str.104 = private unnamed_addr constant [10 x i8] c"Line Left\00", align 1
@cpcap_line_l_mux_enum = internal constant %struct.soc_enum { i32 0, i8 4, i8 4, i32 4, i32 3, ptr @cpcap_out_mux_texts, ptr null, i8 0 }, align 4
@.str.105 = private unnamed_addr constant [14 x i8] c"Headset Right\00", align 1
@cpcap_hs_r_mux_enum = internal constant %struct.soc_enum { i32 0, i8 5, i8 5, i32 4, i32 3, ptr @cpcap_out_mux_texts, ptr null, i8 0 }, align 4
@.str.106 = private unnamed_addr constant [13 x i8] c"Headset Left\00", align 1
@cpcap_hs_l_mux_enum = internal constant %struct.soc_enum { i32 0, i8 6, i8 6, i32 4, i32 3, ptr @cpcap_out_mux_texts, ptr null, i8 0 }, align 4
@.str.107 = private unnamed_addr constant [10 x i8] c"EMU Right\00", align 1
@cpcap_emu_r_mux_enum = internal constant %struct.soc_enum { i32 0, i8 8, i8 8, i32 4, i32 3, ptr @cpcap_out_mux_texts, ptr null, i8 0 }, align 4
@.str.108 = private unnamed_addr constant [9 x i8] c"EMU Left\00", align 1
@cpcap_emu_l_mux_enum = internal constant %struct.soc_enum { i32 0, i8 7, i8 7, i32 4, i32 3, ptr @cpcap_out_mux_texts, ptr null, i8 0 }, align 4
@.str.109 = private unnamed_addr constant [14 x i8] c"HiFi Playback\00", align 1
@.str.110 = private unnamed_addr constant [15 x i8] c"Voice Playback\00", align 1
@.str.111 = private unnamed_addr constant [14 x i8] c"Voice Capture\00", align 1
@.str.112 = private unnamed_addr constant [23 x i8] c"Could not read vendor\0A\00", align 1
@cpcap_default_regs = internal unnamed_addr constant [14 x %struct.cpcap_reg_info] [%struct.cpcap_reg_info { i16 2048, i16 63, i16 0 }, %struct.cpcap_reg_info { i16 2052, i16 -1, i16 0 }, %struct.cpcap_reg_info { i16 2052, i16 -1, i16 0 }, %struct.cpcap_reg_info { i16 2056, i16 -16385, i16 0 }, %struct.cpcap_reg_info { i16 2060, i16 4095, i16 0 }, %struct.cpcap_reg_info { i16 2064, i16 16383, i16 0 }, %struct.cpcap_reg_info { i16 2068, i16 4063, i16 0 }, %struct.cpcap_reg_info { i16 2072, i16 4095, i16 1024 }, %struct.cpcap_reg_info { i16 2076, i16 511, i16 0 }, %struct.cpcap_reg_info { i16 2080, i16 -196, i16 0 }, %struct.cpcap_reg_info { i16 2084, i16 2047, i16 0 }, %struct.cpcap_reg_info { i16 2088, i16 8191, i16 0 }, %struct.cpcap_reg_info { i16 2092, i16 32767, i16 0 }, %struct.cpcap_reg_info { i16 2100, i16 32, i16 32 }], align 2
@.str.113 = private unnamed_addr constant [16 x i8] c"invalid DAI: %d\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"invalid clk id %d\00", align 1
@.str.115 = private unnamed_addr constant [20 x i8] c"unsupported freq %u\00", align 1
@.str.116 = private unnamed_addr constant [26 x i8] c"unsupported samplerate %d\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.117 = private unnamed_addr constant [30 x i8] c"reset self-clear failed: %04x\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"cpcap-hifi\00", align 1
@cpcap_dai_hifi_ops = internal constant %struct.snd_soc_dai_ops { ptr @cpcap_hifi_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @cpcap_hifi_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpcap_hifi_set_mute, ptr null, ptr null, ptr @cpcap_hifi_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 1 }, align 4
@.str.119 = private unnamed_addr constant [12 x i8] c"cpcap-voice\00", align 1
@cpcap_dai_voice_ops = internal constant %struct.snd_soc_dai_ops { ptr @cpcap_voice_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @cpcap_voice_set_dai_fmt, ptr null, ptr @cpcap_voice_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpcap_voice_set_mute, ptr null, ptr null, ptr @cpcap_voice_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 1 }, align 4
@.str.120 = private unnamed_addr constant [46 x i8] c"HiFi dai fmt failed: CPCAP should be provider\00", align 1
@.str.121 = private unnamed_addr constant [51 x i8] c"HiFi dai fmt failed: unsupported clock invert mode\00", align 1
@.str.122 = private unnamed_addr constant [51 x i8] c"Voice dai fmt failed: CPCAP should be the provider\00", align 1
@.str.123 = private unnamed_addr constant [52 x i8] c"Voice dai fmt failed: unsupported clock invert mode\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias230, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_license233], section "llvm.metadata"
@switch.table.cpcap_input_right_mux_put_enum = private unnamed_addr constant [4 x i32] [i32 4, i32 8, i32 16, i32 256], align 4
@switch.table.cpcap_output_mux_get_enum = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 0, i32 3], align 4
@switch.table.cpcap_hifi_set_dai_fmt = private unnamed_addr constant [5 x i32] [i32 0, i32 96, i32 64, i32 32, i32 96], align 4
@switch.table.cpcap_voice_set_dai_fmt = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 6], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cpcap_codec_driver, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cpcap_codec_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_codec_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_get_child_by_name(ptr noundef %5, ptr noundef nonnull @.str.1) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  store ptr %6, ptr %10, align 8
  %11 = tail call i32 @devm_snd_soc_register_component(ptr noundef %9, ptr noundef nonnull @soc_codec_dev_cpcap, ptr noundef nonnull @cpcap_dai, i32 noundef 2) #5
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i32 [ %11, %8 ], [ -19, %1 ]
  ret i32 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_soc_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 24, i32 noundef 3520) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %101, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  store ptr %6, ptr %10, align 8
  store ptr %0, ptr %6, align 4
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @dev_get_regmap(ptr noundef %13, ptr noundef null) #5
  %15 = getelementptr inbounds %struct.cpcap_audio, ptr %6, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  br i1 %16, label %101, label %17

17:                                               ; preds = %8
  tail call void @snd_soc_component_init_regmap(ptr noundef %0, ptr noundef nonnull %14) #5
  %18 = load ptr, ptr %4, align 4
  %19 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %20 = call i32 @regmap_read(ptr noundef %19, i32 noundef 72, ptr noundef nonnull %3) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.112) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  br label %101

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.cpcap_audio, ptr %6, i32 0, i32 2
  %25 = load i32, ptr %3, align 4
  %26 = trunc i32 %25 to i16
  %27 = lshr i16 %26, 6
  %28 = and i16 %27, 7
  store i16 %28, ptr %24, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 8
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.cpcap_audio, ptr %31, i32 0, i32 1
  br label %36

33:                                               ; preds = %36
  %34 = add nuw nsw i32 %37, 1
  %35 = icmp eq i32 %34, 14
  br i1 %35, label %50, label %36

36:                                               ; preds = %33, %23
  %37 = phi i32 [ 0, %23 ], [ %34, %33 ]
  %38 = load ptr, ptr %32, align 4
  %39 = getelementptr [14 x %struct.cpcap_reg_info], ptr @cpcap_default_regs, i32 0, i32 %37
  %40 = load i16, ptr %39, align 2
  %41 = zext i16 %40 to i32
  %42 = getelementptr [14 x %struct.cpcap_reg_info], ptr @cpcap_default_regs, i32 0, i32 %37, i32 1
  %43 = load i16, ptr %42, align 2
  %44 = zext i16 %43 to i32
  %45 = getelementptr [14 x %struct.cpcap_reg_info], ptr @cpcap_default_regs, i32 0, i32 %37, i32 2
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef %41, i32 noundef %44, i32 noundef %47, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %33, label %101

50:                                               ; preds = %33
  %51 = load ptr, ptr %32, align 4
  %52 = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 2056, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %101

54:                                               ; preds = %50
  %55 = load ptr, ptr %32, align 4
  %56 = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 2064, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %101

58:                                               ; preds = %54
  %59 = load ptr, ptr %32, align 4
  %60 = call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 2064, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %101

62:                                               ; preds = %58
  %63 = load ptr, ptr %32, align 4
  %64 = call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 2060, i32 noundef 14, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %101

66:                                               ; preds = %62
  %67 = load ptr, ptr %32, align 4
  %68 = call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 2056, i32 noundef 8192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %101

70:                                               ; preds = %66
  %71 = load ptr, ptr %32, align 4
  %72 = call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef 2056, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %101

74:                                               ; preds = %70
  %75 = load ptr, ptr %32, align 4
  %76 = call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef 2052, i32 noundef 57344, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.cpcap_audio, ptr %31, i32 0, i32 3
  store i32 0, ptr %79, align 4
  %80 = getelementptr inbounds %struct.cpcap_audio, ptr %31, i32 0, i32 4
  store i32 26000000, ptr %80, align 4
  %81 = load ptr, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %82 = load ptr, ptr %32, align 4
  %83 = call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 2060, i32 noundef 1008, i32 noundef 896, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %78
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %86(i32 noundef 214748000) #5
  %87 = load ptr, ptr %32, align 4
  %88 = call i32 @regmap_read(ptr noundef %87, i32 noundef 2060, ptr noundef nonnull %2) #5
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load i32, ptr %2, align 4
  %92 = and i32 %91, 768
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.snd_soc_component, ptr %81, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.117, i32 noundef %91) #6
  br label %97

97:                                               ; preds = %94, %85, %78
  %98 = phi i32 [ %88, %85 ], [ %83, %78 ], [ -5, %94 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %101

99:                                               ; preds = %90
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %100 = call fastcc i32 @cpcap_set_samprate(ptr noundef %31, i32 noundef 1, i32 noundef 48000) #5
  br label %101

101:                                              ; preds = %99, %97, %74, %70, %66, %62, %58, %54, %50, %36, %22, %8, %1
  %102 = phi i32 [ -12, %1 ], [ -19, %8 ], [ %20, %22 ], [ %56, %54 ], [ %64, %62 ], [ %100, %99 ], [ %98, %97 ], [ %52, %50 ], [ %60, %58 ], [ %76, %74 ], [ %72, %70 ], [ %68, %66 ], [ %48, %36 ]
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dapm_regulator_event(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_st_workaround(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -92
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.cpcap_audio, ptr %9, i32 0, i32 2
  %11 = load i16, ptr %10, align 4
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  switch i32 %2, label %30 [
    i32 1, label %14
    i32 2, label %22
  ]

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.cpcap_audio, ptr %9, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 31744, i32 noundef 2316) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load ptr, ptr %15, align 4
  %21 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 32008, i32 noundef 9216) #5
  br label %30

22:                                               ; preds = %13
  tail call void @msleep(i32 noundef 1) #5
  %23 = getelementptr inbounds %struct.cpcap_audio, ptr %9, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 32008, i32 noundef 1024) #5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load ptr, ptr %23, align 4
  %29 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 31744, i32 noundef 0) #5
  br label %30

30:                                               ; preds = %27, %22, %19, %14, %13, %3
  %31 = phi i32 [ 0, %3 ], [ %17, %14 ], [ %25, %22 ], [ 0, %13 ], [ %29, %27 ], [ %21, %19 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_input_right_mux_get_enum(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %0) #5
  %5 = getelementptr i8, ptr %4, i32 -92
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.cpcap_audio, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef 2068, ptr noundef nonnull %3) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load i32, ptr %3, align 4
  %15 = and i32 %14, 284
  switch i32 %15, label %19 [
    i32 256, label %20
    i32 16, label %16
    i32 8, label %17
    i32 4, label %18
  ]

16:                                               ; preds = %13
  br label %20

17:                                               ; preds = %13
  br label %20

18:                                               ; preds = %13
  br label %20

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %18, %17, %16, %13
  %21 = phi i32 [ 3, %16 ], [ 2, %17 ], [ 1, %18 ], [ 0, %19 ], [ 4, %13 ]
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %21, ptr %22, align 8
  br label %23

23:                                               ; preds = %20, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_input_right_mux_put_enum(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %0) #5
  %4 = getelementptr i8, ptr %3, i32 -92
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %0) #5
  %9 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = add i32 %13, -1
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = getelementptr inbounds [4 x i32], ptr @switch.table.cpcap_input_right_mux_put_enum, i32 0, i32 %14
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = phi i32 [ 0, %2 ], [ %18, %16 ]
  %21 = getelementptr inbounds %struct.cpcap_audio, ptr %7, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 2068, i32 noundef 284, i32 noundef %20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = tail call i32 @snd_soc_dapm_mux_update_power(ptr noundef %8, ptr noundef %0, i32 noundef %13, ptr noundef %11, ptr noundef null) #5
  br label %27

27:                                               ; preds = %25, %19
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_mux_update_power(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_input_left_mux_get_enum(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %0) #5
  %5 = getelementptr i8, ptr %4, i32 -92
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.cpcap_audio, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef 2068, ptr noundef nonnull %3) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i32, ptr %3, align 4
  %15 = and i32 %14, 640
  %16 = icmp eq i32 %15, 128
  %17 = zext i1 %16 to i32
  %18 = icmp eq i32 %15, 512
  %19 = select i1 %18, i32 2, i32 %17
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %19, ptr %20, align 8
  br label %21

21:                                               ; preds = %13, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_input_left_mux_put_enum(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %0) #5
  %4 = getelementptr i8, ptr %3, i32 -92
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %0) #5
  %9 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 2
  %14 = select i1 %13, i32 512, i32 0
  %15 = icmp eq i32 %12, 1
  %16 = select i1 %15, i32 128, i32 %14
  %17 = getelementptr inbounds %struct.cpcap_audio, ptr %7, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 2068, i32 noundef 640, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = inttoptr i32 %10 to ptr
  %23 = tail call i32 @snd_soc_dapm_mux_update_power(ptr noundef %8, ptr noundef %0, i32 noundef %12, ptr noundef %22, ptr noundef null) #5
  br label %24

24:                                               ; preds = %21, %2
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_output_mux_get_enum(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %0) #5
  %7 = getelementptr i8, ptr %6, i32 -92
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.soc_enum, ptr %13, i32 0, i32 1
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store i32 0, ptr %5, align 4, !annotation !8
  %17 = getelementptr inbounds %struct.cpcap_audio, ptr %10, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @regmap_read(ptr noundef %18, i32 noundef 2084, ptr noundef nonnull %3) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %2
  %22 = load ptr, ptr %17, align 4
  %23 = call i32 @regmap_read(ptr noundef %22, i32 noundef 2088, ptr noundef nonnull %4) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %21
  %26 = load ptr, ptr %17, align 4
  %27 = call i32 @regmap_read(ptr noundef %26, i32 noundef 2092, ptr noundef nonnull %5) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %25
  %30 = load i32, ptr %3, align 4
  %31 = lshr i32 %30, %16
  %32 = and i32 %31, 1
  %33 = load i32, ptr %4, align 4
  %34 = lshr i32 %33, %16
  %35 = load i32, ptr %5, align 4
  %36 = lshr i32 %35, %16
  %37 = shl i32 %36, 2
  %38 = and i32 %37, 4
  %39 = shl i32 %34, 1
  %40 = and i32 %39, 2
  %41 = or i32 %38, %40
  %42 = or i32 %41, %32
  %43 = add nsw i32 %42, -1
  %44 = icmp ult i32 %43, 4
  br i1 %44, label %45, label %48

45:                                               ; preds = %29
  %46 = getelementptr inbounds [4 x i32], ptr @switch.table.cpcap_output_mux_get_enum, i32 0, i32 %43
  %47 = load i32, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %29
  %49 = phi i32 [ %47, %45 ], [ 0, %29 ]
  %50 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %49, ptr %50, align 8
  br label %51

51:                                               ; preds = %48, %25, %21, %2
  %52 = phi i32 [ %19, %2 ], [ %23, %21 ], [ %27, %25 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_output_mux_put_enum(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %0) #5
  %4 = getelementptr i8, ptr %3, i32 -92
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %0) #5
  %9 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.soc_enum, ptr %11, i32 0, i32 1
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = shl nuw i32 1, %16
  switch i32 %13, label %24 [
    i32 1, label %18
    i32 2, label %20
    i32 3, label %22
  ]

18:                                               ; preds = %2
  %19 = and i32 %17, 65535
  br label %24

20:                                               ; preds = %2
  %21 = and i32 %17, 65535
  br label %24

22:                                               ; preds = %2
  %23 = and i32 %17, 65535
  br label %24

24:                                               ; preds = %22, %20, %18, %2
  %25 = phi i32 [ 0, %2 ], [ 0, %22 ], [ 0, %20 ], [ %19, %18 ]
  %26 = phi i32 [ 0, %2 ], [ 0, %22 ], [ %21, %20 ], [ 0, %18 ]
  %27 = phi i32 [ 0, %2 ], [ %23, %22 ], [ 0, %20 ], [ 0, %18 ]
  %28 = getelementptr inbounds %struct.cpcap_audio, ptr %7, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 2084, i32 noundef %17, i32 noundef %25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load ptr, ptr %28, align 4
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 2088, i32 noundef %17, i32 noundef %26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load ptr, ptr %28, align 4
  %38 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 2092, i32 noundef %17, i32 noundef %27, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = tail call i32 @snd_soc_dapm_mux_update_power(ptr noundef %8, ptr noundef %0, i32 noundef %13, ptr noundef %11, ptr noundef null) #5
  br label %42

42:                                               ; preds = %40, %36, %32, %24
  %43 = phi i32 [ 0, %40 ], [ %30, %24 ], [ %34, %32 ], [ %38, %36 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_init_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_set_sysclk(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  switch i32 %1, label %6 [
    i32 0, label %10
    i32 1, label %5
  ]

5:                                                ; preds = %4
  br label %10

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.snd_soc_component, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.113, i32 noundef %1) #6
  br label %55

10:                                               ; preds = %5, %4
  %11 = phi i32 [ 2052, %5 ], [ 2060, %4 ]
  %12 = phi i32 [ 13, %5 ], [ 1, %4 ]
  %13 = phi i32 [ 2056, %5 ], [ 2064, %4 ]
  %14 = phi i32 [ 13, %5 ], [ 7, %4 ]
  %15 = icmp ugt i32 %2, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.snd_soc_component, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.114, i32 noundef %2) #6
  br label %55

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.cpcap_audio, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = shl nuw nsw i32 1, %14
  %24 = icmp eq i32 %2, 0
  %25 = select i1 %24, i32 0, i32 %23
  %26 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %13, i32 noundef %23, i32 noundef %25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %20
  %29 = icmp eq i32 %1, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = load ptr, ptr %21, align 4
  %32 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 2056, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %30, %28
  %35 = shl nuw nsw i32 7, %12
  switch i32 %3, label %41 [
    i32 15360000, label %45
    i32 16800000, label %36
    i32 19200000, label %37
    i32 26000000, label %38
    i32 33600000, label %39
    i32 38400000, label %40
  ]

36:                                               ; preds = %34
  br label %45

37:                                               ; preds = %34
  br label %45

38:                                               ; preds = %34
  br label %45

39:                                               ; preds = %34
  br label %45

40:                                               ; preds = %34
  br label %45

41:                                               ; preds = %34
  %42 = load ptr, ptr %0, align 4
  %43 = getelementptr inbounds %struct.snd_soc_component, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.115, i32 noundef %3) #6
  br label %55

45:                                               ; preds = %40, %39, %38, %37, %36, %34
  %46 = phi i32 [ 6, %40 ], [ 5, %39 ], [ 4, %38 ], [ 3, %37 ], [ 2, %36 ], [ 1, %34 ]
  %47 = shl nuw nsw i32 %46, %12
  %48 = load ptr, ptr %21, align 4
  %49 = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef %11, i32 noundef %35, i32 noundef %47, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %50 = icmp eq i32 %49, 0
  %51 = and i1 %29, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.cpcap_audio, ptr %0, i32 0, i32 3
  store i32 %2, ptr %53, align 4
  %54 = getelementptr inbounds %struct.cpcap_audio, ptr %0, i32 0, i32 4
  store i32 %3, ptr %54, align 4
  br label %55

55:                                               ; preds = %52, %45, %41, %30, %20, %16, %6
  %56 = phi i32 [ -22, %6 ], [ -22, %16 ], [ -22, %41 ], [ %26, %20 ], [ %32, %30 ], [ %49, %45 ], [ 0, %52 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_set_samprate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  switch i32 %1, label %7 [
    i32 0, label %10
    i32 1, label %6
  ]

6:                                                ; preds = %3
  br label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.113, i32 noundef %1) #6
  br label %56

10:                                               ; preds = %6, %3
  %11 = phi i32 [ 2052, %6 ], [ 2060, %3 ]
  %12 = phi i32 [ 9, %6 ], [ 4, %3 ]
  %13 = phi i32 [ 288, %6 ], [ 768, %3 ]
  %14 = shl nuw nsw i32 15, %12
  switch i32 %2, label %31 [
    i32 48000, label %15
    i32 44100, label %17
    i32 32000, label %19
    i32 24000, label %21
    i32 22050, label %23
    i32 16000, label %25
    i32 12000, label %27
    i32 11025, label %29
    i32 8000, label %34
  ]

15:                                               ; preds = %10
  %16 = shl nuw nsw i32 8, %12
  br label %34

17:                                               ; preds = %10
  %18 = shl nuw nsw i32 7, %12
  br label %34

19:                                               ; preds = %10
  %20 = shl nuw nsw i32 6, %12
  br label %34

21:                                               ; preds = %10
  %22 = shl nuw nsw i32 5, %12
  br label %34

23:                                               ; preds = %10
  %24 = shl nuw nsw i32 4, %12
  br label %34

25:                                               ; preds = %10
  %26 = shl nuw nsw i32 3, %12
  br label %34

27:                                               ; preds = %10
  %28 = shl nuw nsw i32 2, %12
  br label %34

29:                                               ; preds = %10
  %30 = shl nuw nsw i32 1, %12
  br label %34

31:                                               ; preds = %10
  %32 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.116, i32 noundef %2) #6
  br label %56

34:                                               ; preds = %29, %27, %25, %23, %21, %19, %17, %15, %10
  %35 = phi i32 [ %30, %29 ], [ %28, %27 ], [ %26, %25 ], [ %24, %23 ], [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ 0, %10 ]
  %36 = getelementptr inbounds %struct.cpcap_audio, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = and i32 %14, 65278
  %39 = or i32 %38, %13
  %40 = and i32 %35, 65279
  %41 = or i32 %40, %13
  %42 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef %11, i32 noundef %39, i32 noundef %41, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %34
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #5
  %46 = load ptr, ptr %36, align 4
  %47 = call i32 @regmap_read(ptr noundef %46, i32 noundef %11, ptr noundef nonnull %4) #5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i32, ptr %4, align 4
  %51 = and i32 %50, %13
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.117, i32 noundef %50) #6
  br label %56

56:                                               ; preds = %53, %49, %44, %34, %31, %7
  %57 = phi i32 [ -22, %7 ], [ -22, %31 ], [ -5, %53 ], [ %42, %34 ], [ %47, %44 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_hifi_set_dai_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = tail call fastcc i32 @cpcap_set_sysclk(ptr noundef %10, i32 noundef 0, i32 noundef %1, i32 noundef %2)
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_hifi_set_dai_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = and i32 %1, 61440
  %10 = icmp eq i32 %9, 4096
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = lshr i32 %1, 8
  %13 = and i32 %12, 15
  %14 = icmp ult i32 %13, 5
  br i1 %14, label %17, label %16

15:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.120) #6
  br label %37

16:                                               ; preds = %17, %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.121) #6
  br label %37

17:                                               ; preds = %11
  %18 = trunc i32 %13 to i8
  %19 = lshr i8 29, %18
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %16, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds [5 x i32], ptr @switch.table.cpcap_hifi_set_dai_fmt, i32 0, i32 %13
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %1, 3328
  %26 = icmp eq i32 %25, 0
  %27 = and i32 %24, 64
  %28 = or i32 %24, 32
  %29 = select i1 %26, i32 %28, i32 %27
  %30 = and i32 %1, 15
  %31 = icmp eq i32 %30, 1
  %32 = select i1 %31, i32 24, i32 2056
  %33 = or i32 %29, %32
  %34 = getelementptr inbounds %struct.cpcap_audio, ptr %8, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 2064, i32 noundef 16249, i32 noundef %33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %37

37:                                               ; preds = %22, %16, %15
  %38 = phi i32 [ -22, %16 ], [ %36, %22 ], [ -22, %15 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_hifi_set_mute(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq i32 %1, 0
  %11 = select i1 %10, i32 2048, i32 0
  %12 = getelementptr inbounds %struct.cpcap_audio, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 2088, i32 noundef 2048, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_hifi_hw_params(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = tail call fastcc i32 @cpcap_set_samprate(ptr noundef %9, i32 noundef 0, i32 noundef %11)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_voice_set_dai_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = tail call fastcc i32 @cpcap_set_sysclk(ptr noundef %10, i32 noundef 1, i32 noundef %1, i32 noundef %2)
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_voice_set_dai_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = and i32 %1, 61440
  %10 = icmp eq i32 %9, 4096
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.122) #6
  br label %12

12:                                               ; preds = %11, %2
  %13 = lshr i32 %1, 8
  %14 = and i32 %13, 15
  %15 = icmp ult i32 %14, 5
  br i1 %15, label %18, label %16

16:                                               ; preds = %18, %12
  %17 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.123) #6
  br label %26

18:                                               ; preds = %12
  %19 = trunc i32 %14 to i8
  %20 = lshr i8 29, %19
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %16, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds [5 x i32], ptr @switch.table.cpcap_voice_set_dai_fmt, i32 0, i32 %14
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %16
  %27 = phi i32 [ 0, %16 ], [ %25, %23 ]
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %27, 4
  %31 = or i32 %27, 2
  %32 = select i1 %29, i32 %31, i32 %30
  %33 = and i32 %1, 15
  %34 = icmp eq i32 %33, 1
  %35 = select i1 %34, i32 1536, i32 512
  %36 = or i32 %32, %35
  %37 = getelementptr inbounds %struct.cpcap_audio, ptr %8, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 2056, i32 noundef 1543, i32 noundef %36, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.cpcap_audio, ptr %8, i32 0, i32 5
  store i32 %36, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %26
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_voice_set_tdm_slot(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_component, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq i32 %1, 0
  %13 = icmp eq i32 %2, 1
  %14 = and i1 %12, %13
  %15 = icmp eq i32 %4, 8
  %16 = and i1 %14, %15
  %17 = shl i32 %1, 6
  %18 = and i32 %17, 448
  %19 = shl i32 %2, 3
  %20 = and i32 %19, 56
  %21 = or i32 %20, %18
  %22 = getelementptr inbounds %struct.cpcap_audio, ptr %11, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 2056, i32 noundef 504, i32 noundef %21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %71

26:                                               ; preds = %5
  %27 = mul i32 %4, 1000
  %28 = tail call fastcc i32 @cpcap_set_samprate(ptr noundef %11, i32 noundef 1, i32 noundef %27)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %71

30:                                               ; preds = %26
  %31 = load ptr, ptr %22, align 4
  %32 = select i1 %16, i32 4, i32 0
  %33 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 2048, i32 noundef 4, i32 noundef %32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %71

35:                                               ; preds = %30
  %36 = load ptr, ptr %22, align 4
  %37 = select i1 %16, i32 0, i32 4
  %38 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 2068, i32 noundef 4, i32 noundef %37, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %71

40:                                               ; preds = %35
  %41 = load ptr, ptr %22, align 4
  %42 = select i1 %16, i32 3264, i32 0
  %43 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 2068, i32 noundef 3264, i32 noundef %42, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %40
  %46 = load ptr, ptr %22, align 4
  %47 = select i1 %16, i32 6, i32 0
  %48 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 2076, i32 noundef 6, i32 noundef %47, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %45
  %51 = load ptr, ptr %22, align 4
  %52 = select i1 %16, i32 1024, i32 0
  %53 = tail call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 2084, i32 noundef 1024, i32 noundef %52, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = icmp eq ptr %0, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %55
  %58 = xor i1 %16, true
  %59 = zext i1 %58 to i32
  %60 = tail call i32 @snd_soc_dai_digital_mute(ptr noundef nonnull %0, i32 noundef %59, i32 noundef 0) #5
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57, %55
  %63 = load ptr, ptr %22, align 4
  %64 = select i1 %16, i32 207, i32 0
  %65 = tail call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 2052, i32 noundef 207, i32 noundef %64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load ptr, ptr %22, align 4
  %69 = select i1 %16, i32 2048, i32 0
  %70 = tail call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 2056, i32 noundef 2048, i32 noundef %69, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %71

71:                                               ; preds = %67, %62, %57, %50, %45, %40, %35, %30, %26, %5
  %72 = phi i32 [ %24, %5 ], [ %28, %26 ], [ %70, %67 ], [ %33, %30 ], [ %38, %35 ], [ %43, %40 ], [ %48, %45 ], [ %53, %50 ], [ %60, %57 ], [ %65, %62 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_voice_set_mute(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq i32 %1, 0
  %11 = select i1 %10, i32 512, i32 0
  %12 = getelementptr inbounds %struct.cpcap_audio, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 2084, i32 noundef 512, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_voice_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = tail call fastcc i32 @cpcap_set_samprate(ptr noundef %9, i32 noundef 1, i32 noundef %11)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = icmp eq i32 %15, 1
  br i1 %19, label %20, label %27

20:                                               ; preds = %18
  %21 = icmp sgt i32 %13, 1
  %22 = getelementptr inbounds %struct.cpcap_audio, ptr %9, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = select i1 %21, i32 8, i32 0
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 2056, i32 noundef 504, i32 noundef %24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %18
  br label %28

28:                                               ; preds = %27, %20, %3
  %29 = phi i32 [ 0, %27 ], [ %16, %3 ], [ %25, %20 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_digital_mute(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
