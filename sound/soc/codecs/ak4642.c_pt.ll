; ModuleID = '/llk/IR/sound/soc/codecs/ak4642.c_pt.bc'
source_filename = "../sound/soc/codecs/ak4642.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.ak4642_drvdata = type { ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_default = type { i32, i32 }
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
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.93, ptr }
%union.anon.93 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.85, i32 }
%union.anon.85 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.ak4642_priv = type { ptr, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@ak4642_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asahi-kasei,ak4642\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ak4642_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asahi-kasei,ak4643\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ak4643_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asahi-kasei,ak4648\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ak4648_drvdata }, %struct.of_device_id zeroinitializer], align 4
@ak4642_i2c_id = internal constant [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ak4642\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @ak4642_drvdata to i32) }, %struct.i2c_device_id { [20 x i8] c"ak4643\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @ak4643_drvdata to i32) }, %struct.i2c_device_id { [20 x i8] c"ak4648\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @ak4648_drvdata to i32) }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_description253 = internal constant [30 x i8] c"description=Soc AK4642 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [57 x i8] c"author=Kuninori Morimoto <morimoto.kuninori@renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@ak4642_drvdata = internal constant %struct.ak4642_drvdata { ptr @ak4642_regmap, i32 0 }, align 4
@ak4643_drvdata = internal constant %struct.ak4642_drvdata { ptr @ak4643_regmap, i32 0 }, align 4
@ak4648_drvdata = internal constant %struct.ak4642_drvdata { ptr @ak4648_regmap, i32 1 }, align 4
@ak4642_regmap = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 31, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak4643_reg, i32 32, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@ak4643_reg = internal constant [37 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 1 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 2 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 225 }, %struct.reg_default { i32 9, i32 225 }, %struct.reg_default { i32 10, i32 24 }, %struct.reg_default { i32 11, i32 0 }, %struct.reg_default { i32 12, i32 225 }, %struct.reg_default { i32 13, i32 24 }, %struct.reg_default { i32 14, i32 17 }, %struct.reg_default { i32 15, i32 8 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }], align 4
@ak4643_regmap = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 36, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak4643_reg, i32 37, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@ak4648_regmap = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 39, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak4648_reg, i32 40, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@ak4648_reg = internal constant [40 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 1 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 2 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 225 }, %struct.reg_default { i32 9, i32 225 }, %struct.reg_default { i32 10, i32 24 }, %struct.reg_default { i32 11, i32 0 }, %struct.reg_default { i32 12, i32 225 }, %struct.reg_default { i32 13, i32 24 }, %struct.reg_default { i32 14, i32 17 }, %struct.reg_default { i32 15, i32 184 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 136 }, %struct.reg_default { i32 38, i32 136 }, %struct.reg_default { i32 39, i32 8 }], align 4
@__this_module = external dso_local global %struct.module, align 64
@ak4642_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @ak4642_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ak4642_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ak4642_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [13 x i8] c"ak4642-codec\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Unknown device type\0A\00", align 1
@soc_component_dev_ak4642 = internal constant %struct.snd_soc_component_driver { ptr null, ptr @ak4642_snd_controls, i32 3, ptr @ak4642_dapm_widgets, i32 9, ptr @ak4642_intercon, i32 9, ptr @ak4642_probe, ptr null, ptr @ak4642_suspend, ptr @ak4642_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak4642_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 50, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@ak4642_dai = internal global %struct.snd_soc_dai_driver { ptr @.str.25, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @ak4642_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.26, i64 4, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.24, i64 4, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 1, i32 0, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@ak4642_snd_controls = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.6, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.7 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.8, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.9 to i32) }], align 4
@ak4642_intercon = internal constant [9 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.13, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.14, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.17, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.15, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.15, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.15, ptr @.str.20, ptr @.str.16, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.16, ptr null, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.17, ptr @.str.22, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.18, ptr null, ptr @.str.24, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Digital Playback Volume\00", align 1
@out_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -11550, i32 65586], align 4
@.compoundliteral = internal global %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 10, i32 13, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"ALC Capture Switch\00", align 1
@.compoundliteral.7 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7, i32 7, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"ALC Capture ZC Switch\00", align 1
@.compoundliteral.9 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7, i32 7, i32 4, i32 4, i32 0, i8 1 }, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"HPOUTL\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"HPOUTR\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"LINEOUT\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"HPL Out\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"HPR Out\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Headphone Enable\00", align 1
@ak4642_headphone_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"DACH\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"LINEOUT Mixer\00", align 1
@ak4642_lout_mixer_controls = internal constant [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }], align 4
@.str.18 = private unnamed_addr constant [4 x i8] c"DAC\00", align 1
@ak4642_dapm_widgets = internal constant [9 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.10, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.11, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.12, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.13, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.14, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.15, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @ak4642_headphone_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.16, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 15, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.17, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @ak4642_lout_event, i32 1, ptr @ak4642_lout_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.18, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.20 = private unnamed_addr constant [7 x i8] c"Switch\00", align 1
@.compoundliteral.21 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1, i32 1, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"DACL\00", align 1
@.compoundliteral.23 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"Playback\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"ak4642-hifi\00", align 1
@ak4642_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr @ak4642_dai_set_sysclk, ptr null, ptr null, ptr null, ptr @ak4642_dai_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak4642_dai_startup, ptr @ak4642_dai_shutdown, ptr @ak4642_dai_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@.str.26 = private unnamed_addr constant [8 x i8] c"Capture\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_license255], section "llvm.metadata"

@__mod_of__ak4642_of_match_device_table = dso_local alias [4 x %struct.of_device_id], ptr @ak4642_of_match
@__mod_i2c__ak4642_i2c_id_device_table = dso_local alias [4 x %struct.i2c_device_id], ptr @ak4642_i2c_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @ak4642_i2c_driver) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @ak4642_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ak4642_i2c_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  %10 = load ptr, ptr %7, align 4
  store ptr %10, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %11 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.2, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #5
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = call ptr @of_find_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.3, ptr noundef null) #5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = call ptr @of_clk_get_parent_name(ptr noundef nonnull %7, i32 noundef 0) #5
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi ptr [ %17, %16 ], [ null, %13 ]
  %20 = call i32 @of_property_read_string(ptr noundef nonnull %7, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #5
  %21 = load ptr, ptr %3, align 4
  %22 = load i32, ptr %4, align 4
  %23 = call ptr @clk_register_fixed_rate(ptr noundef %5, ptr noundef %21, ptr noundef %19, i32 noundef 0, i32 noundef %22) #5
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = call i32 @of_clk_add_provider(ptr noundef nonnull %7, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %23) #5
  br label %27

27:                                               ; preds = %25, %18, %9
  %28 = phi ptr [ null, %9 ], [ %23, %25 ], [ %23, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %29 = call ptr @of_match_device(ptr noundef nonnull @ak4642_of_match, ptr noundef %5) #5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %27
  %32 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  %33 = select i1 %32, ptr null, ptr %28
  %34 = getelementptr inbounds %struct.of_device_id, ptr %29, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  br label %40

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = inttoptr i32 %38 to ptr
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi ptr [ %39, %36 ], [ %35, %31 ]
  %42 = phi ptr [ null, %36 ], [ %33, %31 ]
  %43 = icmp eq ptr %41, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %27
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #6
  br label %58

45:                                               ; preds = %40
  %46 = call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 8, i32 noundef 3520) #5
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %45
  store ptr %41, ptr %46, align 4
  %49 = getelementptr inbounds %struct.ak4642_priv, ptr %46, i32 0, i32 1
  store ptr %42, ptr %49, align 4
  %50 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %46, ptr %50, align 8
  %51 = load ptr, ptr %41, align 4
  %52 = call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef %51, ptr noundef null, ptr noundef null) #5
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = ptrtoint ptr %52 to i32
  br label %58

56:                                               ; preds = %48
  %57 = call i32 @devm_snd_soc_register_component(ptr noundef %5, ptr noundef nonnull @soc_component_dev_ak4642, ptr noundef nonnull @ak4642_dai, i32 noundef 1) #5
  br label %58

58:                                               ; preds = %56, %54, %45, %44
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ], [ -22, %44 ], [ -12, %45 ]
  ret i32 %59
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ak4642_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ak4642_priv, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @clk_get_rate(ptr noundef nonnull %7) #5
  tail call fastcc void @ak4642_set_mcko(ptr noundef %0, i32 noundef %10)
  br label %11

11:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ak4642_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @dev_get_regmap(ptr noundef %3, ptr noundef null) #5
  tail call void @regcache_cache_only(ptr noundef %4, i1 noundef zeroext true) #5
  tail call void @regcache_mark_dirty(ptr noundef %4) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ak4642_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @dev_get_regmap(ptr noundef %3, ptr noundef null) #5
  tail call void @regcache_cache_only(ptr noundef %4, i1 noundef zeroext false) #5
  %5 = tail call i32 @regcache_sync(ptr noundef %4) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ak4642_set_bias_level(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 0, i32 noundef 0) #5
  br label %8

6:                                                ; preds = %2
  %7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 0, i32 noundef 64, i32 noundef 64) #5
  br label %8

8:                                                ; preds = %6, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ak4642_lout_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  switch i32 %2, label %11 [
    i32 4, label %8
    i32 1, label %8
    i32 2, label %7
    i32 8, label %7
  ]

7:                                                ; preds = %3, %3
  tail call void @msleep(i32 noundef 300) #5
  br label %8

8:                                                ; preds = %7, %3, %3
  %9 = phi i32 [ 0, %7 ], [ 64, %3 ], [ 64, %3 ]
  %10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 3, i32 noundef 64, i32 noundef %9) #5
  br label %11

11:                                               ; preds = %8, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ak4642_set_mcko(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  switch i32 %1, label %36 [
    i32 2048000, label %27
    i32 3072000, label %3
    i32 4096000, label %4
    i32 6144000, label %5
    i32 1881600, label %6
    i32 2822400, label %7
    i32 3763200, label %8
    i32 5644800, label %9
    i32 0, label %10
    i32 8192000, label %11
    i32 12288000, label %12
    i32 7526400, label %13
    i32 11289600, label %14
    i32 1024000, label %15
    i32 1536000, label %16
    i32 940800, label %17
    i32 1411200, label %18
    i32 512000, label %19
    i32 768000, label %20
    i32 470400, label %21
    i32 705600, label %22
    i32 256000, label %23
    i32 384000, label %24
    i32 235200, label %25
    i32 352800, label %26
  ]

3:                                                ; preds = %2
  br label %27

4:                                                ; preds = %2
  br label %27

5:                                                ; preds = %2
  br label %27

6:                                                ; preds = %2
  br label %27

7:                                                ; preds = %2
  br label %27

8:                                                ; preds = %2
  br label %27

9:                                                ; preds = %2
  br label %27

10:                                               ; preds = %2
  br label %27

11:                                               ; preds = %2
  br label %27

12:                                               ; preds = %2
  br label %27

13:                                               ; preds = %2
  br label %27

14:                                               ; preds = %2
  br label %27

15:                                               ; preds = %2
  br label %27

16:                                               ; preds = %2
  br label %27

17:                                               ; preds = %2
  br label %27

18:                                               ; preds = %2
  br label %27

19:                                               ; preds = %2
  br label %27

20:                                               ; preds = %2
  br label %27

21:                                               ; preds = %2
  br label %27

22:                                               ; preds = %2
  br label %27

23:                                               ; preds = %2
  br label %27

24:                                               ; preds = %2
  br label %27

25:                                               ; preds = %2
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %28 = phi i32 [ 0, %2 ], [ 0, %3 ], [ 0, %4 ], [ 0, %5 ], [ 0, %6 ], [ 0, %7 ], [ 0, %8 ], [ 0, %9 ], [ 0, %10 ], [ 0, %11 ], [ 0, %12 ], [ 0, %13 ], [ 0, %14 ], [ 64, %15 ], [ 64, %16 ], [ 64, %17 ], [ 64, %18 ], [ 128, %19 ], [ 128, %20 ], [ 128, %21 ], [ 128, %22 ], [ 192, %23 ], [ 192, %24 ], [ 192, %25 ], [ 192, %26 ]
  %29 = phi i32 [ 0, %2 ], [ 1, %3 ], [ 2, %4 ], [ 3, %5 ], [ 4, %6 ], [ 5, %7 ], [ 6, %8 ], [ 7, %9 ], [ 8, %10 ], [ 10, %11 ], [ 11, %12 ], [ 14, %13 ], [ 15, %14 ], [ 0, %15 ], [ 1, %16 ], [ 4, %17 ], [ 5, %18 ], [ 0, %19 ], [ 1, %20 ], [ 4, %21 ], [ 5, %22 ], [ 0, %23 ], [ 1, %24 ], [ 4, %25 ], [ 5, %26 ]
  %30 = and i32 %29, 7
  %31 = shl nuw nsw i32 %29, 2
  %32 = and i32 %31, 32
  %33 = or i32 %30, %28
  %34 = or i32 %33, %32
  %35 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 5, i32 noundef %34) #5
  br label %36

36:                                               ; preds = %27, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ak4642_dai_set_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  switch i32 %2, label %27 [
    i32 11289600, label %24
    i32 12288000, label %11
    i32 12000000, label %12
    i32 24000000, label %13
    i32 13500000, label %14
    i32 27000000, label %15
    i32 19200000, label %18
    i32 13000000, label %16
    i32 26000000, label %17
  ]

11:                                               ; preds = %4
  br label %24

12:                                               ; preds = %4
  br label %24

13:                                               ; preds = %4
  br label %24

14:                                               ; preds = %4
  br label %24

15:                                               ; preds = %4
  br label %24

16:                                               ; preds = %4
  br label %18

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %17, %16, %4
  %19 = phi i32 [ 240, %17 ], [ 224, %16 ], [ 128, %4 ]
  %20 = load ptr, ptr %10, align 4
  %21 = getelementptr inbounds %struct.ak4642_drvdata, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18, %15, %14, %13, %12, %11, %4
  %25 = phi i32 [ %19, %18 ], [ 64, %4 ], [ 80, %11 ], [ 96, %12 ], [ 112, %13 ], [ 192, %14 ], [ 208, %15 ]
  %26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 4, i32 noundef 240, i32 noundef %25) #5
  br label %27

27:                                               ; preds = %24, %18, %4
  %28 = phi i32 [ 0, %24 ], [ -22, %4 ], [ -22, %18 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ak4642_dai_set_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = trunc i32 %1 to i16
  %6 = and i16 %5, -4096
  switch i16 %6, label %18 [
    i16 4096, label %7
    i16 16384, label %8
  ]

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7, %2
  %9 = phi i32 [ 3, %2 ], [ 11, %7 ]
  %10 = phi i32 [ 0, %2 ], [ 8, %7 ]
  %11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 1, i32 noundef 11, i32 noundef %9) #5
  %12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 4, i32 noundef 8, i32 noundef %10) #5
  %13 = and i32 %1, 15
  switch i32 %13, label %18 [
    i32 3, label %15
    i32 1, label %14
  ]

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %14, %8
  %16 = phi i32 [ 3, %14 ], [ 2, %8 ]
  %17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 4, i32 noundef 3, i32 noundef %16) #5
  br label %18

18:                                               ; preds = %15, %8, %2
  %19 = phi i32 [ 0, %15 ], [ -22, %2 ], [ -22, %8 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ak4642_dai_startup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  br i1 %5, label %8, label %11

8:                                                ; preds = %2
  %9 = tail call i32 @snd_soc_component_write(ptr noundef %7, i32 noundef 9, i32 noundef 145) #5
  %10 = tail call i32 @snd_soc_component_write(ptr noundef %7, i32 noundef 12, i32 noundef 145) #5
  br label %17

11:                                               ; preds = %2
  %12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 2, i32 noundef 5, i32 noundef 5) #5
  %13 = tail call i32 @snd_soc_component_write(ptr noundef %7, i32 noundef 6, i32 noundef 60) #5
  %14 = tail call i32 @snd_soc_component_write(ptr noundef %7, i32 noundef 7, i32 noundef 33) #5
  %15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 0, i32 noundef 1, i32 noundef 1) #5
  %16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 16, i32 noundef 1, i32 noundef 1) #5
  br label %17

17:                                               ; preds = %11, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ak4642_dai_shutdown(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %8, i32 noundef 0, i32 noundef 1, i32 noundef 0) #5
  %10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %8, i32 noundef 16, i32 noundef 1, i32 noundef 0) #5
  %11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %8, i32 noundef 7, i32 noundef 32, i32 noundef 0) #5
  br label %12

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ak4642_dai_hw_params(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.ak4642_priv, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_get_rate(ptr noundef %11) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = shl i32 %16, 8
  br label %18

18:                                               ; preds = %14, %3
  %19 = phi i32 [ %12, %3 ], [ %17, %14 ]
  tail call fastcc void @ak4642_set_mcko(ptr noundef %5, i32 noundef %19)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

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
