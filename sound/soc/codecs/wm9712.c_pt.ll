; ModuleID = '/llk/IR/sound/soc/codecs/wm9712.c_pt.bc'
source_filename = "../sound/soc/codecs/wm9712.c"
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
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.88, ptr }
%union.anon.88 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.80, i32 }
%union.anon.80 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_default = type { i32, i32 }
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
%struct.wm9712_priv = type { ptr, [2 x i32], %struct.mutex, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.wm97xx_platform_data = type { ptr, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.79, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.79 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.74, [128 x i8] }
%union.anon.74 = type { %union.anon.76 }
%union.anon.76 = type { [64 x i64] }
%struct.snd_soc_dapm_update = type { ptr, i32, i32, i32, i32, i32, i32, i8 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }

@__UNIQUE_ID_description230 = internal constant [38 x i8] c"description=ASoC WM9711/WM9712 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [21 x i8] c"author=Liam Girdwood\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@wm9712_component_driver = internal global %struct.platform_driver { ptr @wm9712_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"wm9712-codec\00", align 1
@wm9712_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"&wm9712->lock\00", align 1
@soc_component_dev_wm9712 = internal constant %struct.snd_soc_component_driver { ptr null, ptr @wm9712_snd_ac97_controls, i32 53, ptr @wm9712_dapm_widgets, i32 40, ptr @wm9712_audio_map, i32 77, ptr @wm9712_soc_probe, ptr @wm9712_soc_remove, ptr null, ptr @wm9712_soc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm9712_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 62, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@wm9712_dai = internal global [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.206, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm9712_dai_ops_hifi, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.207, i64 219143998477, i32 214, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.208, i64 219143998477, i32 214, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.209, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm9712_dai_ops_aux, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.146, i64 219143998477, i32 214, i32 0, i32 0, i32 1, i32 1, i32 0 }, i8 0, i32 0, i32 0 }], align 8
@wm9712_snd_ac97_controls = internal constant [53 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.2, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.3, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.4 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.6 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.8 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.10 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.16 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.18 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.20 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @wm9712_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.33 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.35 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm9712_enum, i64 280) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.60 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.78 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm9712_enum, i64 140) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.81 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.83 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.85 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.87 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.89 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.91 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm9712_enum, i64 168) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @main_tlv }, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @main_tlv }, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 { ptr @boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.102 to i32) }], align 4
@wm9712_audio_map = internal constant [77 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.174, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.176, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.178, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.180, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.182, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.184, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr null, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr @.str.174, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr @.str.176, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr @.str.178, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr @.str.180, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr @.str.182, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr @.str.184, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.174, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.180, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.182, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.178, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.176, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.174, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.180, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.176, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.182, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.196, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.198, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr null, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr null, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr null, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr null, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.117, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.119, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.106, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.118, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.117, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.119, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.106, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.118, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.120, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.122, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.123, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.124, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.125, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.126, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.120, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.122, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.123, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.124, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.125, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.126, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.106, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.106, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.104, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.105, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr null, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr null, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr null, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.104, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.109, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.108, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr null, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.110, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.111, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr null, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Speaker Playback Volume\00", align 1
@.compoundliteral = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 2, i32 2, i32 8, i32 0, i32 0, i8 1 }, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Speaker Playback Switch\00", align 1
@.compoundliteral.4 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 15, i32 15, i32 0, i8 1 }, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Headphone Playback Volume\00", align 1
@.compoundliteral.6 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 4, i32 4, i32 8, i32 0, i32 0, i8 1 }, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"Headphone Playback Switch\00", align 1
@.compoundliteral.8 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 15, i32 15, i32 0, i8 1 }, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"PCM Playback Volume\00", align 1
@.compoundliteral.10 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 24, i32 24, i32 8, i32 0, i32 0, i8 1 }, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"Speaker Playback ZC Switch\00", align 1
@.compoundliteral.12 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"Speaker Playback Invert Switch\00", align 1
@.compoundliteral.14 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.15 = private unnamed_addr constant [29 x i8] c"Headphone Playback ZC Switch\00", align 1
@.compoundliteral.16 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.17 = private unnamed_addr constant [24 x i8] c"Mono Playback ZC Switch\00", align 1
@.compoundliteral.18 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.19 = private unnamed_addr constant [21 x i8] c"Mono Playback Volume\00", align 1
@.compoundliteral.20 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 6, i32 6, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.21 = private unnamed_addr constant [21 x i8] c"Mono Playback Switch\00", align 1
@.compoundliteral.22 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 15, i32 15, i32 0, i8 1 }, align 4
@.str.23 = private unnamed_addr constant [18 x i8] c"ALC Target Volume\00", align 1
@.compoundliteral.24 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 96, i32 96, i32 12, i32 12, i32 0, i8 0 }, align 4
@.str.25 = private unnamed_addr constant [14 x i8] c"ALC Hold Time\00", align 1
@.compoundliteral.26 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 96, i32 96, i32 8, i32 8, i32 0, i8 0 }, align 4
@.str.27 = private unnamed_addr constant [15 x i8] c"ALC Decay Time\00", align 1
@.compoundliteral.28 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 96, i32 96, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.29 = private unnamed_addr constant [16 x i8] c"ALC Attack Time\00", align 1
@.compoundliteral.30 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 96, i32 96, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.31 = private unnamed_addr constant [13 x i8] c"ALC Function\00", align 1
@wm9712_enum = internal constant [12 x %struct.soc_enum] [%struct.soc_enum { i32 98, i8 14, i8 14, i32 4, i32 3, ptr @wm9712_alc_select, ptr null, i8 0 }, %struct.soc_enum { i32 20, i8 12, i8 12, i32 4, i32 3, ptr @wm9712_alc_mux, ptr null, i8 0 }, %struct.soc_enum { i32 22, i8 9, i8 9, i32 4, i32 3, ptr @wm9712_out3_src, ptr null, i8 0 }, %struct.soc_enum { i32 22, i8 8, i8 8, i32 2, i32 1, ptr @wm9712_spk_src, ptr null, i8 0 }, %struct.soc_enum { i32 26, i8 12, i8 12, i32 4, i32 3, ptr @wm9712_rec_adc, ptr null, i8 0 }, %struct.soc_enum { i32 8, i8 15, i8 15, i32 2, i32 1, ptr @wm9712_base, ptr null, i8 0 }, %struct.soc_enum { i32 28, i8 14, i8 6, i32 2, i32 1, ptr @wm9712_rec_gain, ptr null, i8 0 }, %struct.soc_enum { i32 14, i8 5, i8 5, i32 4, i32 3, ptr @wm9712_mic, ptr null, i8 0 }, %struct.soc_enum { i32 26, i8 8, i8 8, i32 8, i32 7, ptr @wm9712_rec_sel, ptr null, i8 0 }, %struct.soc_enum { i32 26, i8 0, i8 0, i32 8, i32 7, ptr @wm9712_rec_sel, ptr null, i8 0 }, %struct.soc_enum { i32 98, i8 5, i8 5, i32 2, i32 1, ptr @wm9712_ng_type, ptr null, i8 0 }, %struct.soc_enum { i32 92, i8 8, i8 8, i32 2, i32 1, ptr @wm9712_diff_sel, ptr null, i8 0 }], align 4
@.str.32 = private unnamed_addr constant [15 x i8] c"ALC Max Volume\00", align 1
@.compoundliteral.33 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 98, i32 98, i32 11, i32 11, i32 0, i8 0 }, align 4
@.str.34 = private unnamed_addr constant [15 x i8] c"ALC ZC Timeout\00", align 1
@.compoundliteral.35 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 98, i32 98, i32 9, i32 9, i32 0, i8 1 }, align 4
@.str.36 = private unnamed_addr constant [14 x i8] c"ALC ZC Switch\00", align 1
@.compoundliteral.37 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 98, i32 98, i32 8, i32 8, i32 0, i8 0 }, align 4
@.str.38 = private unnamed_addr constant [14 x i8] c"ALC NG Switch\00", align 1
@.compoundliteral.39 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 98, i32 98, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.40 = private unnamed_addr constant [12 x i8] c"ALC NG Type\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"ALC NG Threshold\00", align 1
@.compoundliteral.42 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 98, i32 98, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.43 = private unnamed_addr constant [22 x i8] c"Mic Headphone  Volume\00", align 1
@.compoundliteral.44 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 20, i32 20, i32 12, i32 12, i32 0, i8 1 }, align 4
@.str.45 = private unnamed_addr constant [21 x i8] c"ALC Headphone Volume\00", align 1
@.compoundliteral.46 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 20, i32 20, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.47 = private unnamed_addr constant [12 x i8] c"Out3 Switch\00", align 1
@.compoundliteral.48 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 15, i32 15, i32 0, i8 1 }, align 4
@.str.49 = private unnamed_addr constant [15 x i8] c"Out3 ZC Switch\00", align 1
@.compoundliteral.50 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.51 = private unnamed_addr constant [12 x i8] c"Out3 Volume\00", align 1
@.compoundliteral.52 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 22, i32 22, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.53 = private unnamed_addr constant [31 x i8] c"PCBeep Bypass Headphone Volume\00", align 1
@.compoundliteral.54 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 10, i32 10, i32 12, i32 12, i32 0, i8 1 }, align 4
@.str.55 = private unnamed_addr constant [29 x i8] c"PCBeep Bypass Speaker Volume\00", align 1
@.compoundliteral.56 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 10, i32 10, i32 8, i32 8, i32 0, i8 1 }, align 4
@.str.57 = private unnamed_addr constant [27 x i8] c"PCBeep Bypass Phone Volume\00", align 1
@.compoundliteral.58 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 10, i32 10, i32 4, i32 4, i32 0, i8 1 }, align 4
@.str.59 = private unnamed_addr constant [30 x i8] c"Aux Playback Headphone Volume\00", align 1
@.compoundliteral.60 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 18, i32 18, i32 12, i32 12, i32 0, i8 1 }, align 4
@.str.61 = private unnamed_addr constant [28 x i8] c"Aux Playback Speaker Volume\00", align 1
@.compoundliteral.62 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 18, i32 18, i32 8, i32 8, i32 0, i8 1 }, align 4
@.str.63 = private unnamed_addr constant [26 x i8] c"Aux Playback Phone Volume\00", align 1
@.compoundliteral.64 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 18, i32 18, i32 4, i32 4, i32 0, i8 1 }, align 4
@.str.65 = private unnamed_addr constant [13 x i8] c"Phone Volume\00", align 1
@.compoundliteral.66 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 12, i32 12, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.67 = private unnamed_addr constant [20 x i8] c"Line Capture Volume\00", align 1
@.compoundliteral.68 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 16, i32 16, i32 8, i32 0, i32 0, i8 1 }, align 4
@.str.69 = private unnamed_addr constant [21 x i8] c"Capture Boost Switch\00", align 1
@boost_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 0, i32 2000], align 4
@.compoundliteral.70 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 14, i32 14, i32 0, i8 0 }, align 4
@.str.71 = private unnamed_addr constant [30 x i8] c"Capture to Phone Boost Switch\00", align 1
@.compoundliteral.72 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 11, i32 11, i32 0, i8 1 }, align 4
@.str.73 = private unnamed_addr constant [24 x i8] c"3D Upper Cut-off Switch\00", align 1
@.compoundliteral.74 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 5, i32 5, i32 0, i8 1 }, align 4
@.str.75 = private unnamed_addr constant [24 x i8] c"3D Lower Cut-off Switch\00", align 1
@.compoundliteral.76 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 4, i32 4, i32 0, i8 1 }, align 4
@.str.77 = private unnamed_addr constant [19 x i8] c"3D Playback Volume\00", align 1
@.compoundliteral.78 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 34, i32 34, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.79 = private unnamed_addr constant [13 x i8] c"Bass Control\00", align 1
@.str.80 = private unnamed_addr constant [20 x i8] c"Bass Cut-off Switch\00", align 1
@.compoundliteral.81 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8, i32 8, i32 12, i32 12, i32 0, i8 1 }, align 4
@.str.82 = private unnamed_addr constant [20 x i8] c"Tone Cut-off Switch\00", align 1
@.compoundliteral.83 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8, i32 8, i32 4, i32 4, i32 0, i8 1 }, align 4
@.str.84 = private unnamed_addr constant [33 x i8] c"Playback Attenuate (-6dB) Switch\00", align 1
@.compoundliteral.85 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8, i32 8, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.86 = private unnamed_addr constant [12 x i8] c"Bass Volume\00", align 1
@.compoundliteral.87 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 8, i32 8, i32 8, i32 8, i32 0, i8 1 }, align 4
@.str.88 = private unnamed_addr constant [14 x i8] c"Treble Volume\00", align 1
@.compoundliteral.89 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 8, i32 8, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.90 = private unnamed_addr constant [15 x i8] c"Capture Switch\00", align 1
@.compoundliteral.91 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 15, i32 15, i32 0, i8 1 }, align 4
@.str.92 = private unnamed_addr constant [21 x i8] c"Capture Volume Steps\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"Capture Volume\00", align 1
@.compoundliteral.94 = internal global %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 28, i32 28, i32 8, i32 0, i32 0, i8 0 }, align 4
@.str.95 = private unnamed_addr constant [18 x i8] c"Capture ZC Switch\00", align 1
@.compoundliteral.96 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.97 = private unnamed_addr constant [13 x i8] c"Mic 1 Volume\00", align 1
@main_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -3450, i32 150], align 4
@.compoundliteral.98 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 14, i32 14, i32 8, i32 8, i32 0, i8 1 }, align 4
@.str.99 = private unnamed_addr constant [13 x i8] c"Mic 2 Volume\00", align 1
@.compoundliteral.100 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 14, i32 14, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.101 = private unnamed_addr constant [17 x i8] c"Mic Boost Volume\00", align 1
@.compoundliteral.102 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 7, i32 7, i32 0, i8 0 }, align 4
@wm9712_alc_select = internal global [4 x ptr] [ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106], align 4
@wm9712_alc_mux = internal global [4 x ptr] [ptr @.str.106, ptr @.str.104, ptr @.str.105, ptr @.str.103], align 4
@wm9712_out3_src = internal global [4 x ptr] [ptr @.str.104, ptr @.str.107, ptr @.str.108, ptr @.str.109], align 4
@wm9712_spk_src = internal global [2 x ptr] [ptr @.str.110, ptr @.str.111], align 4
@wm9712_rec_adc = internal global [4 x ptr] [ptr @.str.106, ptr @.str.104, ptr @.str.105, ptr @.str.112], align 4
@wm9712_base = internal global [2 x ptr] [ptr @.str.113, ptr @.str.114], align 4
@wm9712_rec_gain = internal global [2 x ptr] [ptr @.str.115, ptr @.str.116], align 4
@wm9712_mic = internal global [4 x ptr] [ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.106], align 4
@wm9712_rec_sel = internal global [8 x ptr] [ptr @.str.120, ptr @.str.121, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126], align 4
@wm9712_ng_type = internal global [2 x ptr] [ptr @.str.127, ptr @.str.112], align 4
@wm9712_diff_sel = internal global [2 x ptr] [ptr @.str.120, ptr @.str.123], align 4
@.str.103 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"Stereo\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"VREF\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"Left + Right\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"Mono\00", align 1
@.str.110 = private unnamed_addr constant [12 x i8] c"Speaker Mix\00", align 1
@.str.111 = private unnamed_addr constant [14 x i8] c"Headphone Mix\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"Mute\00", align 1
@.str.113 = private unnamed_addr constant [15 x i8] c"Linear Control\00", align 1
@.str.114 = private unnamed_addr constant [15 x i8] c"Adaptive Boost\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"+1.5dB Steps\00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"+0.75dB Steps\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"Mic 1\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"Differential\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"Mic 2\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"Mic\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"NC\00", align 1
@.str.122 = private unnamed_addr constant [14 x i8] c"Speaker Mixer\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.124 = private unnamed_addr constant [16 x i8] c"Headphone Mixer\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"Phone Mixer\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"Phone\00", align 1
@.str.127 = private unnamed_addr constant [14 x i8] c"Constant Gain\00", align 1
@.str.128 = private unnamed_addr constant [17 x i8] c"ALC Sidetone Mux\00", align 1
@wm9712_alc_mux_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm9712_enum, i64 28) to i32) }, align 4
@.str.129 = private unnamed_addr constant [9 x i8] c"Out3 Mux\00", align 1
@wm9712_out3_mux_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm9712_enum, i64 56) to i32) }, align 4
@.str.130 = private unnamed_addr constant [12 x i8] c"Speaker Mux\00", align 1
@wm9712_spk_mux_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm9712_enum, i64 84) to i32) }, align 4
@.str.131 = private unnamed_addr constant [18 x i8] c"Capture Phone Mux\00", align 1
@wm9712_capture_phone_mux_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm9712_enum, i64 112) to i32) }, align 4
@.str.132 = private unnamed_addr constant [20 x i8] c"Left Capture Select\00", align 1
@wm9712_capture_selectl_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm9712_enum, i64 224) to i32) }, align 4
@.str.133 = private unnamed_addr constant [21 x i8] c"Right Capture Select\00", align 1
@wm9712_capture_selectr_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm9712_enum, i64 252) to i32) }, align 4
@.str.134 = private unnamed_addr constant [23 x i8] c"Left Mic Select Source\00", align 1
@wm9712_mic_src_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.173, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm9712_enum, i64 196) to i32) }, align 4
@.str.135 = private unnamed_addr constant [24 x i8] c"Right Mic Select Source\00", align 1
@.str.136 = private unnamed_addr constant [20 x i8] c"Differential Source\00", align 1
@wm9712_diff_sel_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm9712_enum, i64 308) to i32) }, align 4
@.str.137 = private unnamed_addr constant [11 x i8] c"AC97 Mixer\00", align 1
@.str.138 = private unnamed_addr constant [14 x i8] c"Left HP Mixer\00", align 1
@wm9712_hpl_mixer_controls = internal constant [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.174, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wm9712_hp_mixer_get, ptr @wm9712_hp_mixer_put, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.175 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wm9712_hp_mixer_get, ptr @wm9712_hp_mixer_put, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.177 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.178, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wm9712_hp_mixer_get, ptr @wm9712_hp_mixer_put, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.179 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wm9712_hp_mixer_get, ptr @wm9712_hp_mixer_put, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.181 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wm9712_hp_mixer_get, ptr @wm9712_hp_mixer_put, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.183 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.184, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wm9712_hp_mixer_get, ptr @wm9712_hp_mixer_put, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.185 to i32) }], align 4
@.str.139 = private unnamed_addr constant [15 x i8] c"Right HP Mixer\00", align 1
@wm9712_hpr_mixer_controls = internal constant [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.174, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wm9712_hp_mixer_get, ptr @wm9712_hp_mixer_put, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.186 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wm9712_hp_mixer_get, ptr @wm9712_hp_mixer_put, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.187 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.178, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wm9712_hp_mixer_get, ptr @wm9712_hp_mixer_put, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.188 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wm9712_hp_mixer_get, ptr @wm9712_hp_mixer_put, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.189 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wm9712_hp_mixer_get, ptr @wm9712_hp_mixer_put, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.190 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.184, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wm9712_hp_mixer_get, ptr @wm9712_hp_mixer_put, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.191 to i32) }], align 4
@wm9712_phone_mixer_controls = internal constant [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.174, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.192 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.193 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.194 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.195 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.196, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.197 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.198, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.199 to i32) }], align 4
@wm9712_speaker_mixer_controls = internal constant [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.174, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.200 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.201 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.178, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.202 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.203 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.204 to i32) }], align 4
@.str.140 = private unnamed_addr constant [11 x i8] c"Mono Mixer\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"Left DAC\00", align 1
@.str.142 = private unnamed_addr constant [19 x i8] c"Left HiFi Playback\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"Right DAC\00", align 1
@.str.144 = private unnamed_addr constant [20 x i8] c"Right HiFi Playback\00", align 1
@.str.145 = private unnamed_addr constant [8 x i8] c"Aux DAC\00", align 1
@.str.146 = private unnamed_addr constant [13 x i8] c"Aux Playback\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"Left ADC\00", align 1
@.str.148 = private unnamed_addr constant [18 x i8] c"Left HiFi Capture\00", align 1
@.str.149 = private unnamed_addr constant [10 x i8] c"Right ADC\00", align 1
@.str.150 = private unnamed_addr constant [19 x i8] c"Right HiFi Capture\00", align 1
@.str.151 = private unnamed_addr constant [14 x i8] c"Headphone PGA\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"Speaker PGA\00", align 1
@.str.153 = private unnamed_addr constant [10 x i8] c"Out 3 PGA\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"Line PGA\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"Phone PGA\00", align 1
@.str.156 = private unnamed_addr constant [8 x i8] c"Mic PGA\00", align 1
@.str.157 = private unnamed_addr constant [17 x i8] c"Differential Mic\00", align 1
@.str.158 = private unnamed_addr constant [9 x i8] c"Mic Bias\00", align 1
@.str.159 = private unnamed_addr constant [8 x i8] c"MONOOUT\00", align 1
@.str.160 = private unnamed_addr constant [7 x i8] c"HPOUTL\00", align 1
@.str.161 = private unnamed_addr constant [7 x i8] c"HPOUTR\00", align 1
@.str.162 = private unnamed_addr constant [6 x i8] c"LOUT2\00", align 1
@.str.163 = private unnamed_addr constant [6 x i8] c"ROUT2\00", align 1
@.str.164 = private unnamed_addr constant [5 x i8] c"OUT3\00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c"LINEINL\00", align 1
@.str.166 = private unnamed_addr constant [8 x i8] c"LINEINR\00", align 1
@.str.167 = private unnamed_addr constant [6 x i8] c"PHONE\00", align 1
@.str.168 = private unnamed_addr constant [7 x i8] c"PCBEEP\00", align 1
@.str.169 = private unnamed_addr constant [5 x i8] c"MIC1\00", align 1
@.str.170 = private unnamed_addr constant [5 x i8] c"MIC2\00", align 1
@wm9712_dapm_widgets = internal constant [40 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.128, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm9712_alc_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.129, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm9712_out3_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.130, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm9712_spk_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm9712_capture_phone_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm9712_capture_selectl_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm9712_capture_selectr_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.134, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm9712_mic_src_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm9712_mic_src_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm9712_diff_sel_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.137, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.138, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 36, i8 9, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @wm9712_hpl_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.139, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 36, i8 8, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @wm9712_hpr_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 36, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @wm9712_phone_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 36, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @wm9712_speaker_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.140, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.141, ptr @.str.142, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 36, i8 14, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.143, ptr @.str.144, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 36, i8 13, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.145, ptr @.str.146, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.147, ptr @.str.148, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 36, i8 12, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.149, ptr @.str.150, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 36, i8 11, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 36, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 36, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 36, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 36, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 36, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 36, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.158, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 36, i8 10, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.159, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.161, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.162, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.163, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.164, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.165, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.167, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.169, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.172 = private unnamed_addr constant [6 x i8] c"Route\00", align 1
@.str.173 = private unnamed_addr constant [18 x i8] c"Mic Source Select\00", align 1
@.str.174 = private unnamed_addr constant [21 x i8] c"PCBeep Bypass Switch\00", align 1
@.compoundliteral.175 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.176 = private unnamed_addr constant [20 x i8] c"Aux Playback Switch\00", align 1
@.compoundliteral.177 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.178 = private unnamed_addr constant [20 x i8] c"Phone Bypass Switch\00", align 1
@.compoundliteral.179 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 3, i32 3, i32 0, i8 0 }, align 4
@.str.180 = private unnamed_addr constant [19 x i8] c"Line Bypass Switch\00", align 1
@.compoundliteral.181 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 2, i32 2, i32 0, i8 0 }, align 4
@.str.182 = private unnamed_addr constant [20 x i8] c"PCM Playback Switch\00", align 1
@.compoundliteral.183 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.184 = private unnamed_addr constant [20 x i8] c"Mic Sidetone Switch\00", align 1
@.compoundliteral.185 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0 }, align 4
@wm9712_mixer_mute_regs = internal unnamed_addr constant [6 x i32] [i32 20, i32 24, i32 16, i32 12, i32 18, i32 10], align 4
@.compoundliteral.186 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 261, i32 261, i32 0, i8 0 }, align 4
@.compoundliteral.187 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 260, i32 260, i32 0, i8 0 }, align 4
@.compoundliteral.188 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 259, i32 259, i32 0, i8 0 }, align 4
@.compoundliteral.189 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 258, i32 258, i32 0, i8 0 }, align 4
@.compoundliteral.190 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 257, i32 257, i32 0, i8 0 }, align 4
@.compoundliteral.191 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 256, i32 256, i32 0, i8 0 }, align 4
@.compoundliteral.192 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 10, i32 10, i32 7, i32 7, i32 0, i8 1 }, align 4
@.compoundliteral.193 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 18, i32 18, i32 7, i32 7, i32 0, i8 1 }, align 4
@.compoundliteral.194 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 16, i32 13, i32 13, i32 0, i8 1 }, align 4
@.compoundliteral.195 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 13, i32 13, i32 0, i8 1 }, align 4
@.str.196 = private unnamed_addr constant [22 x i8] c"Mic 1 Sidetone Switch\00", align 1
@.compoundliteral.197 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 14, i32 14, i32 0, i8 1 }, align 4
@.str.198 = private unnamed_addr constant [22 x i8] c"Mic 2 Sidetone Switch\00", align 1
@.compoundliteral.199 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 13, i32 13, i32 0, i8 1 }, align 4
@.compoundliteral.200 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 10, i32 10, i32 11, i32 11, i32 0, i8 1 }, align 4
@.compoundliteral.201 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 18, i32 18, i32 11, i32 11, i32 0, i8 1 }, align 4
@.compoundliteral.202 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12, i32 12, i32 14, i32 14, i32 0, i8 1 }, align 4
@.compoundliteral.203 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 16, i32 14, i32 14, i32 0, i8 1 }, align 4
@.compoundliteral.204 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 14, i32 14, i32 0, i8 1 }, align 4
@.str.205 = private unnamed_addr constant [35 x i8] c"Failed to register AC97 codec: %d\0A\00", align 1
@wm9712_regmap_config = internal constant %struct.regmap_config { ptr null, i32 16, i32 2, i32 0, i32 16, ptr null, ptr null, ptr @wm9712_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 126, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm9712_reg_defaults, i32 36, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@wm9712_reg_defaults = internal constant [36 x %struct.reg_default] [%struct.reg_default { i32 2, i32 32768 }, %struct.reg_default { i32 4, i32 32768 }, %struct.reg_default { i32 6, i32 32768 }, %struct.reg_default { i32 8, i32 3855 }, %struct.reg_default { i32 10, i32 43680 }, %struct.reg_default { i32 12, i32 49160 }, %struct.reg_default { i32 14, i32 26632 }, %struct.reg_default { i32 16, i32 59400 }, %struct.reg_default { i32 18, i32 43680 }, %struct.reg_default { i32 20, i32 44288 }, %struct.reg_default { i32 22, i32 32768 }, %struct.reg_default { i32 24, i32 59400 }, %struct.reg_default { i32 26, i32 12288 }, %struct.reg_default { i32 28, i32 32768 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 38, i32 15 }, %struct.reg_default { i32 40, i32 1541 }, %struct.reg_default { i32 42, i32 1040 }, %struct.reg_default { i32 44, i32 48000 }, %struct.reg_default { i32 46, i32 48000 }, %struct.reg_default { i32 50, i32 48000 }, %struct.reg_default { i32 52, i32 8192 }, %struct.reg_default { i32 76, i32 63550 }, %struct.reg_default { i32 78, i32 65535 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 82, i32 0 }, %struct.reg_default { i32 86, i32 63550 }, %struct.reg_default { i32 88, i32 8 }, %struct.reg_default { i32 92, i32 0 }, %struct.reg_default { i32 96, i32 45106 }, %struct.reg_default { i32 98, i32 15872 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 118, i32 6 }, %struct.reg_default { i32 120, i32 1 }, %struct.reg_default { i32 122, i32 0 }], align 4
@.str.206 = private unnamed_addr constant [12 x i8] c"wm9712-hifi\00", align 1
@wm9712_dai_ops_hifi = internal constant %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ac97_prepare, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@.str.207 = private unnamed_addr constant [13 x i8] c"HiFi Capture\00", align 1
@.str.208 = private unnamed_addr constant [14 x i8] c"HiFi Playback\00", align 1
@.str.209 = private unnamed_addr constant [11 x i8] c"wm9712-aux\00", align 1
@wm9712_dai_ops_aux = internal constant %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ac97_aux_prepare, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_license232], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @wm9712_component_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @wm9712_component_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm9712_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 36, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wm9712_priv, ptr %3, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @wm9712_probe.__key) #6
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.wm9712_priv, ptr %3, i32 0, i32 3
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %10, align 8
  %11 = tail call i32 @devm_snd_soc_register_component(ptr noundef %2, ptr noundef nonnull @soc_component_dev_wm9712, ptr noundef nonnull @wm9712_dai, i32 noundef 2) #6
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i32 [ %11, %5 ], [ -12, %1 ]
  ret i32 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm9712_soc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wm9712_priv, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %7, align 4
  store ptr %10, ptr %5, align 4
  %11 = getelementptr inbounds %struct.wm97xx_platform_data, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  br label %25

13:                                               ; preds = %1
  %14 = tail call ptr @snd_soc_new_ac97_component(ptr noundef %0, i32 noundef 1464683538, i32 noundef -1) #6
  store ptr %14, ptr %5, align 4
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = ptrtoint ptr %14 to i32
  %18 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.205, i32 noundef %17) #7
  br label %28

19:                                               ; preds = %13
  %20 = tail call ptr @__regmap_init_ac97(ptr noundef %14, ptr noundef nonnull @wm9712_regmap_config, ptr noundef null, ptr noundef null) #6
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load ptr, ptr %5, align 4
  tail call void @snd_soc_free_ac97_component(ptr noundef %23) #6
  %24 = ptrtoint ptr %20 to i32
  br label %28

25:                                               ; preds = %19, %9
  %26 = phi ptr [ %12, %9 ], [ %20, %19 ]
  tail call void @snd_soc_component_init_regmap(ptr noundef %0, ptr noundef %26) #6
  %27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 20, i32 noundef 12288, i32 noundef 12288) #6
  br label %28

28:                                               ; preds = %25, %22, %16
  %29 = phi i32 [ 0, %25 ], [ %24, %22 ], [ %17, %16 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm9712_soc_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wm9712_priv, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  tail call void @snd_soc_component_exit_regmap(ptr noundef %0) #6
  %10 = load ptr, ptr %5, align 4
  tail call void @snd_soc_free_ac97_component(ptr noundef %10) #6
  br label %11

11:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm9712_soc_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @snd_ac97_reset(ptr noundef %6, i1 noundef zeroext true, i32 noundef 1464683538, i32 noundef -1) #6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %11 = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %10, i32 noundef 1) #6
  %12 = icmp eq i32 %7, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 13
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @regcache_sync(ptr noundef %15) #6
  br label %17

17:                                               ; preds = %13, %9, %1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm9712_set_bias_level(ptr noundef %0, i32 noundef %1) #2 {
  switch i32 %1, label %8 [
    i32 0, label %3
    i32 1, label %5
  ]

3:                                                ; preds = %2
  %4 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 62, i32 noundef 65535) #6
  br label %5

5:                                                ; preds = %3, %2
  %6 = phi i32 [ 65535, %3 ], [ 0, %2 ]
  %7 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 38, i32 noundef %6) #6
  br label %8

8:                                                ; preds = %5, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm9712_hp_mixer_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %0) #6
  %4 = getelementptr i8, ptr %3, i32 -92
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.soc_mixer_control, ptr %10, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %12, 8
  %14 = and i32 %12, 255
  %15 = getelementptr %struct.wm9712_priv, ptr %7, i32 0, i32 1, i32 %13
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, %14
  %18 = and i32 %17, 1
  %19 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %18, ptr %19, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm9712_hp_mixer_put(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.snd_soc_dapm_update, align 4
  %4 = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %0) #6
  %5 = getelementptr i8, ptr %4, i32 -92
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = inttoptr i32 %12 to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false)
  %14 = getelementptr inbounds %struct.soc_mixer_control, ptr %13, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 8
  %17 = and i32 %15, 255
  %18 = shl nuw i32 1, %17
  %19 = getelementptr inbounds %struct.wm9712_priv, ptr %8, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %19) #6
  %20 = getelementptr %struct.wm9712_priv, ptr %8, i32 0, i32 1, i32 %16
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %9, align 8
  %23 = icmp eq i32 %22, 0
  %24 = xor i32 %18, -1
  %25 = and i32 %21, %24
  %26 = or i32 %21, %18
  %27 = select i1 %23, i32 %25, i32 %26
  store i32 %27, ptr %20, align 4
  %28 = icmp ne i32 %21, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.wm9712_priv, ptr %8, i32 0, i32 1
  store ptr %0, ptr %3, align 4
  %31 = getelementptr [6 x i32], ptr @wm9712_mixer_mute_regs, i32 0, i32 %17
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.snd_soc_dapm_update, ptr %3, i32 0, i32 1
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.snd_soc_dapm_update, ptr %3, i32 0, i32 2
  store i32 32768, ptr %34, align 4
  %35 = load i32, ptr %30, align 4
  %36 = and i32 %35, %18
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = getelementptr %struct.wm9712_priv, ptr %8, i32 0, i32 1, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, %18
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 32768, i32 0
  br label %44

44:                                               ; preds = %38, %29
  %45 = phi i32 [ 0, %29 ], [ %43, %38 ]
  %46 = getelementptr inbounds %struct.snd_soc_dapm_update, ptr %3, i32 0, i32 3
  store i32 %45, ptr %46, align 4
  %47 = call i32 @snd_soc_dapm_mixer_update_power(ptr noundef %4, ptr noundef %0, i32 noundef %10, ptr noundef nonnull %3) #6
  br label %48

48:                                               ; preds = %44, %2
  call void @mutex_unlock(ptr noundef %19) #6
  %49 = zext i1 %28 to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #6
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_mixer_update_power(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_new_ac97_component(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_ac97(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_free_ac97_component(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_init_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @wm9712_volatile_reg(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 28
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call zeroext i1 @regmap_ac97_default_volatile(ptr noundef %0, i32 noundef %1) #6
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i1 [ %5, %4 ], [ true, %2 ]
  ret i1 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regmap_ac97_default_volatile(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_exit_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_reset(ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_bias_level(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ac97_prepare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 42, i32 noundef 1, i32 noundef 1) #6
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 44, i32 50
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 14
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef %11, i32 noundef %13) #6
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ac97_aux_prepare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 42, i32 noundef 1, i32 noundef 1) #6
  %8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 100, i32 noundef 32768, i32 noundef 32768) #6
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 14
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 46, i32 noundef %14) #6
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i32 [ %15, %12 ], [ -19, %2 ]
  ret i32 %17
}

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
