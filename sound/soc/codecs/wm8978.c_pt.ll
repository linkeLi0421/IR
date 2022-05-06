; ModuleID = '/llk/IR/sound/soc/codecs/wm8978.c_pt.bc'
source_filename = "../sound/soc/codecs/wm8978.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.93, ptr }
%union.anon.93 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.85, i32 }
%union.anon.85 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.wm8978_priv = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@wm8978_i2c_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm8978\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@wm8978_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wlf,wm8978\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description253 = internal constant [37 x i8] c"description=ASoC WM8978 codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [53 x i8] c"author=Guennadi Liakhovetski <g.liakhovetski@gmx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@wm8978_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @wm8978_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wm8978_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wm8978_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"wm8978\00", align 1
@wm8978_regmap_config = internal constant %struct.regmap_config { ptr null, i32 7, i32 0, i32 0, i32 9, ptr null, ptr null, ptr @wm8978_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 57, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8978_reg_defaults, i32 57, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to allocate regmap: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to issue reset: %d\0A\00", align 1
@soc_component_dev_wm8978 = internal constant %struct.snd_soc_component_driver { ptr null, ptr @wm8978_snd_controls, i32 52, ptr @wm8978_dapm_widgets, i32 30, ptr @wm8978_dapm_routes, i32 30, ptr @wm8978_probe, ptr null, ptr @wm8978_suspend, ptr @wm8978_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8978_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 58, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@wm8978_dai = internal global %struct.snd_soc_dai_driver { ptr @.str.181, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8978_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.98, i64 68719477828, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.99, i64 68719477828, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 1, i32 0, i32 0 }, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to register CODEC: %d\0A\00", align 1
@wm8978_reg_defaults = internal constant [57 x %struct.reg_default] [%struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 80 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 320 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 0 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 11, i32 255 }, %struct.reg_default { i32 12, i32 255 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 256 }, %struct.reg_default { i32 15, i32 255 }, %struct.reg_default { i32 16, i32 255 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 300 }, %struct.reg_default { i32 19, i32 44 }, %struct.reg_default { i32 20, i32 44 }, %struct.reg_default { i32 21, i32 44 }, %struct.reg_default { i32 22, i32 44 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 50 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 56 }, %struct.reg_default { i32 33, i32 11 }, %struct.reg_default { i32 34, i32 50 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 8 }, %struct.reg_default { i32 37, i32 12 }, %struct.reg_default { i32 38, i32 147 }, %struct.reg_default { i32 39, i32 233 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 51 }, %struct.reg_default { i32 45, i32 16 }, %struct.reg_default { i32 46, i32 16 }, %struct.reg_default { i32 47, i32 256 }, %struct.reg_default { i32 48, i32 256 }, %struct.reg_default { i32 49, i32 2 }, %struct.reg_default { i32 50, i32 1 }, %struct.reg_default { i32 51, i32 1 }, %struct.reg_default { i32 52, i32 57 }, %struct.reg_default { i32 53, i32 57 }, %struct.reg_default { i32 54, i32 57 }, %struct.reg_default { i32 55, i32 57 }, %struct.reg_default { i32 56, i32 1 }, %struct.reg_default { i32 57, i32 1 }], align 4
@wm8978_snd_controls = internal constant [52 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.4, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @adc_compand to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.6, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @dac_compand to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.8 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.10 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.16 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.18 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @eqmode to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @eq1 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @eq2bw to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @eq2 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @eq3bw to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @eq3 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @eq4bw to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @eq4 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @eq5 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.43 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @limiter_tlv }, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @alc1 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @alc3 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.59 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @spk_tlv }, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @spk_tlv }, i32 ptrtoint (ptr @.compoundliteral.75 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.77 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.79 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.81 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.83 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @inpga_tlv }, i32 ptrtoint (ptr @.compoundliteral.85 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.87 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.89 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.91 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.93 to i32) }], align 4
@wm8978_dapm_routes = internal constant [30 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.166, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.164, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.162, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.166, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.164, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.162, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr null, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr null, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr null, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr null, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr null, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.177, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.173, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.175, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.171, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.173, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.175, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Digital Loopback Switch\00", align 1
@.compoundliteral = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"ADC Companding\00", align 1
@adc_compand = internal constant %struct.soc_enum { i32 5, i8 1, i8 1, i32 4, i32 3, ptr @wm8978_companding, ptr null, i8 0 }, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"DAC Companding\00", align 1
@dac_compand = internal constant %struct.soc_enum { i32 5, i8 3, i8 3, i32 4, i32 3, ptr @wm8978_companding, ptr null, i8 0 }, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"DAC Inversion Switch\00", align 1
@.compoundliteral.8 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 10, i32 10, i32 0, i32 1, i32 0, i8 0 }, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"PCM Volume\00", align 1
@digital_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -12750, i32 65586], align 4
@.compoundliteral.10 = internal global %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 11, i32 12, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"High Pass Filter Switch\00", align 1
@.compoundliteral.12 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 8, i32 8, i32 0, i8 0 }, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"High Pass Cut Off\00", align 1
@.compoundliteral.14 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 14, i32 14, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"ADC Inversion Switch\00", align 1
@.compoundliteral.16 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 0, i32 1, i32 0, i8 0 }, align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"ADC Volume\00", align 1
@.compoundliteral.18 = internal global %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 15, i32 16, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.19 = private unnamed_addr constant [19 x i8] c"Equaliser Function\00", align 1
@eqmode = internal constant %struct.soc_enum { i32 18, i8 8, i8 8, i32 2, i32 1, ptr @wm8978_eqmode, ptr null, i8 0 }, align 4
@.str.20 = private unnamed_addr constant [12 x i8] c"EQ1 Cut Off\00", align 1
@eq1 = internal constant %struct.soc_enum { i32 18, i8 5, i8 5, i32 4, i32 3, ptr @wm8978_eq1, ptr null, i8 0 }, align 4
@.str.21 = private unnamed_addr constant [11 x i8] c"EQ1 Volume\00", align 1
@eq_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -1200, i32 100], align 4
@.compoundliteral.22 = internal global %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 18, i32 18, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.23 = private unnamed_addr constant [24 x i8] c"Equaliser EQ2 Bandwidth\00", align 1
@eq2bw = internal constant %struct.soc_enum { i32 19, i8 8, i8 8, i32 2, i32 1, ptr @wm8978_bw, ptr null, i8 0 }, align 4
@.str.24 = private unnamed_addr constant [12 x i8] c"EQ2 Cut Off\00", align 1
@eq2 = internal constant %struct.soc_enum { i32 19, i8 5, i8 5, i32 4, i32 3, ptr @wm8978_eq2, ptr null, i8 0 }, align 4
@.str.25 = private unnamed_addr constant [11 x i8] c"EQ2 Volume\00", align 1
@.compoundliteral.26 = internal global %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 19, i32 19, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.27 = private unnamed_addr constant [24 x i8] c"Equaliser EQ3 Bandwidth\00", align 1
@eq3bw = internal constant %struct.soc_enum { i32 20, i8 8, i8 8, i32 2, i32 1, ptr @wm8978_bw, ptr null, i8 0 }, align 4
@.str.28 = private unnamed_addr constant [12 x i8] c"EQ3 Cut Off\00", align 1
@eq3 = internal constant %struct.soc_enum { i32 20, i8 5, i8 5, i32 4, i32 3, ptr @wm8978_eq3, ptr null, i8 0 }, align 4
@.str.29 = private unnamed_addr constant [11 x i8] c"EQ3 Volume\00", align 1
@.compoundliteral.30 = internal global %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 20, i32 20, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.31 = private unnamed_addr constant [24 x i8] c"Equaliser EQ4 Bandwidth\00", align 1
@eq4bw = internal constant %struct.soc_enum { i32 21, i8 8, i8 8, i32 2, i32 1, ptr @wm8978_bw, ptr null, i8 0 }, align 4
@.str.32 = private unnamed_addr constant [12 x i8] c"EQ4 Cut Off\00", align 1
@eq4 = internal constant %struct.soc_enum { i32 21, i8 5, i8 5, i32 4, i32 3, ptr @wm8978_eq4, ptr null, i8 0 }, align 4
@.str.33 = private unnamed_addr constant [11 x i8] c"EQ4 Volume\00", align 1
@.compoundliteral.34 = internal global %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 21, i32 21, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.35 = private unnamed_addr constant [12 x i8] c"EQ5 Cut Off\00", align 1
@eq5 = internal constant %struct.soc_enum { i32 22, i8 5, i8 5, i32 4, i32 3, ptr @wm8978_eq5, ptr null, i8 0 }, align 4
@.str.36 = private unnamed_addr constant [11 x i8] c"EQ5 Volume\00", align 1
@.compoundliteral.37 = internal global %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 22, i32 22, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.38 = private unnamed_addr constant [28 x i8] c"DAC Playback Limiter Switch\00", align 1
@.compoundliteral.39 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 8, i32 8, i32 0, i8 0 }, align 4
@.str.40 = private unnamed_addr constant [27 x i8] c"DAC Playback Limiter Decay\00", align 1
@.compoundliteral.41 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 24, i32 24, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.42 = private unnamed_addr constant [28 x i8] c"DAC Playback Limiter Attack\00", align 1
@.compoundliteral.43 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 24, i32 24, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.44 = private unnamed_addr constant [31 x i8] c"DAC Playback Limiter Threshold\00", align 1
@.compoundliteral.45 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 25, i32 25, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.46 = private unnamed_addr constant [28 x i8] c"DAC Playback Limiter Volume\00", align 1
@limiter_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 0, i32 100], align 4
@.compoundliteral.47 = internal global %struct.soc_mixer_control { i32 0, i32 12, i32 12, i32 25, i32 25, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.48 = private unnamed_addr constant [18 x i8] c"ALC Enable Switch\00", align 1
@alc1 = internal constant %struct.soc_enum { i32 32, i8 7, i8 7, i32 4, i32 3, ptr @wm8978_alc1, ptr null, i8 0 }, align 4
@.str.49 = private unnamed_addr constant [21 x i8] c"ALC Capture Min Gain\00", align 1
@.compoundliteral.50 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 32, i32 32, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.51 = private unnamed_addr constant [21 x i8] c"ALC Capture Max Gain\00", align 1
@.compoundliteral.52 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 32, i32 32, i32 3, i32 3, i32 0, i8 0 }, align 4
@.str.53 = private unnamed_addr constant [17 x i8] c"ALC Capture Hold\00", align 1
@.compoundliteral.54 = internal global %struct.soc_mixer_control { i32 0, i32 10, i32 10, i32 33, i32 33, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.55 = private unnamed_addr constant [19 x i8] c"ALC Capture Target\00", align 1
@.compoundliteral.56 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 33, i32 33, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.57 = private unnamed_addr constant [17 x i8] c"ALC Capture Mode\00", align 1
@alc3 = internal constant %struct.soc_enum { i32 34, i8 8, i8 8, i32 2, i32 1, ptr @wm8978_alc3, ptr null, i8 0 }, align 4
@.str.58 = private unnamed_addr constant [18 x i8] c"ALC Capture Decay\00", align 1
@.compoundliteral.59 = internal global %struct.soc_mixer_control { i32 0, i32 10, i32 10, i32 34, i32 34, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.60 = private unnamed_addr constant [19 x i8] c"ALC Capture Attack\00", align 1
@.compoundliteral.61 = internal global %struct.soc_mixer_control { i32 0, i32 10, i32 10, i32 34, i32 34, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.62 = private unnamed_addr constant [30 x i8] c"ALC Capture Noise Gate Switch\00", align 1
@.compoundliteral.63 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 35, i32 35, i32 3, i32 3, i32 0, i8 0 }, align 4
@.str.64 = private unnamed_addr constant [33 x i8] c"ALC Capture Noise Gate Threshold\00", align 1
@.compoundliteral.65 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 35, i32 35, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.66 = private unnamed_addr constant [22 x i8] c"Capture PGA ZC Switch\00", align 1
@.compoundliteral.67 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 46, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.68 = private unnamed_addr constant [29 x i8] c"Headphone Playback ZC Switch\00", align 1
@.compoundliteral.69 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 53, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.70 = private unnamed_addr constant [26 x i8] c"Headphone Playback Volume\00", align 1
@spk_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -5700, i32 100], align 4
@.compoundliteral.71 = internal global %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 52, i32 53, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.72 = private unnamed_addr constant [27 x i8] c"Speaker Playback ZC Switch\00", align 1
@.compoundliteral.73 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 55, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.74 = private unnamed_addr constant [24 x i8] c"Speaker Playback Volume\00", align 1
@.compoundliteral.75 = internal global %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 54, i32 55, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.76 = private unnamed_addr constant [21 x i8] c"Line Playback Switch\00", align 1
@.compoundliteral.77 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 56, i32 57, i32 6, i32 6, i32 0, i8 1 }, align 4
@.str.78 = private unnamed_addr constant [18 x i8] c"PGA Boost (+20dB)\00", align 1
@.compoundliteral.79 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 48, i32 8, i32 8, i32 0, i8 0 }, align 4
@.str.80 = private unnamed_addr constant [19 x i8] c"L2/R2 Boost Volume\00", align 1
@boost_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -1500, i32 65836], align 4
@.compoundliteral.81 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 47, i32 48, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.82 = private unnamed_addr constant [17 x i8] c"Aux Boost Volume\00", align 1
@.compoundliteral.83 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 47, i32 48, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.84 = private unnamed_addr constant [17 x i8] c"Input PGA Volume\00", align 1
@inpga_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -1200, i32 75], align 4
@.compoundliteral.85 = internal global %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 45, i32 46, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.86 = private unnamed_addr constant [17 x i8] c"Headphone Switch\00", align 1
@.compoundliteral.87 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 53, i32 6, i32 6, i32 0, i8 1 }, align 4
@.str.88 = private unnamed_addr constant [15 x i8] c"Speaker Switch\00", align 1
@.compoundliteral.89 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 55, i32 6, i32 6, i32 0, i8 1 }, align 4
@.str.90 = private unnamed_addr constant [29 x i8] c"DAC 128x Oversampling Switch\00", align 1
@.compoundliteral.91 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 10, i32 10, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.92 = private unnamed_addr constant [29 x i8] c"ADC 128x Oversampling Switch\00", align 1
@.compoundliteral.93 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 5, i32 5, i32 0, i8 0 }, align 4
@wm8978_companding = internal global [4 x ptr] [ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97], align 4
@.str.94 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"NC\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"u-law\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"A-law\00", align 1
@wm8978_eqmode = internal global [2 x ptr] [ptr @.str.98, ptr @.str.99], align 4
@.str.98 = private unnamed_addr constant [8 x i8] c"Capture\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"Playback\00", align 1
@wm8978_eq1 = internal global [4 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103], align 4
@.str.100 = private unnamed_addr constant [5 x i8] c"80Hz\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"105Hz\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"135Hz\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"175Hz\00", align 1
@wm8978_bw = internal global [2 x ptr] [ptr @.str.104, ptr @.str.105], align 4
@.str.104 = private unnamed_addr constant [7 x i8] c"Narrow\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"Wide\00", align 1
@wm8978_eq2 = internal global [4 x ptr] [ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], align 4
@.str.106 = private unnamed_addr constant [6 x i8] c"230Hz\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"300Hz\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"385Hz\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"500Hz\00", align 1
@wm8978_eq3 = internal global [4 x ptr] [ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113], align 4
@.str.110 = private unnamed_addr constant [6 x i8] c"650Hz\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"850Hz\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"1.1kHz\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"1.4kHz\00", align 1
@wm8978_eq4 = internal global [4 x ptr] [ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117], align 4
@.str.114 = private unnamed_addr constant [7 x i8] c"1.8kHz\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"2.4kHz\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"3.2kHz\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"4.1kHz\00", align 1
@wm8978_eq5 = internal global [4 x ptr] [ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121], align 4
@.str.118 = private unnamed_addr constant [7 x i8] c"5.3kHz\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"6.9kHz\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"9kHz\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"11.7kHz\00", align 1
@wm8978_alc1 = internal global [4 x ptr] [ptr @.str.94, ptr @.str.122, ptr @.str.123, ptr @.str.124], align 4
@.str.122 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c"Both\00", align 1
@wm8978_alc3 = internal global [2 x ptr] [ptr @.str.125, ptr @.str.126], align 4
@.str.125 = private unnamed_addr constant [4 x i8] c"ALC\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"Limiter\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c"Left DAC\00", align 1
@.str.128 = private unnamed_addr constant [19 x i8] c"Left HiFi Playback\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"Right DAC\00", align 1
@.str.130 = private unnamed_addr constant [20 x i8] c"Right HiFi Playback\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"Left ADC\00", align 1
@.str.132 = private unnamed_addr constant [18 x i8] c"Left HiFi Capture\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"Right ADC\00", align 1
@.str.134 = private unnamed_addr constant [19 x i8] c"Right HiFi Capture\00", align 1
@.str.135 = private unnamed_addr constant [18 x i8] c"Left Output Mixer\00", align 1
@wm8978_left_out_mixer = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.163 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.164, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.165 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.166, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.167 to i32) }], align 4
@.str.136 = private unnamed_addr constant [19 x i8] c"Right Output Mixer\00", align 1
@wm8978_right_out_mixer = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.168 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.164, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.169 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.166, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.170 to i32) }], align 4
@.str.137 = private unnamed_addr constant [17 x i8] c"Left Input Mixer\00", align 1
@wm8978_left_input_mixer = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.171, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.172 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.173, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.174 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.175, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.176 to i32) }], align 4
@.str.138 = private unnamed_addr constant [18 x i8] c"Right Input Mixer\00", align 1
@wm8978_right_input_mixer = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.177, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.178 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.173, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.179 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.175, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.180 to i32) }], align 4
@.str.139 = private unnamed_addr constant [17 x i8] c"Left Boost Mixer\00", align 1
@.str.140 = private unnamed_addr constant [18 x i8] c"Right Boost Mixer\00", align 1
@.str.141 = private unnamed_addr constant [17 x i8] c"Left Capture PGA\00", align 1
@.str.142 = private unnamed_addr constant [18 x i8] c"Right Capture PGA\00", align 1
@.str.143 = private unnamed_addr constant [19 x i8] c"Left Headphone Out\00", align 1
@.str.144 = private unnamed_addr constant [20 x i8] c"Right Headphone Out\00", align 1
@.str.145 = private unnamed_addr constant [17 x i8] c"Left Speaker Out\00", align 1
@.str.146 = private unnamed_addr constant [18 x i8] c"Right Speaker Out\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"OUT4 VMID\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"Mic Bias\00", align 1
@.str.149 = private unnamed_addr constant [6 x i8] c"LMICN\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"LMICP\00", align 1
@.str.151 = private unnamed_addr constant [6 x i8] c"RMICN\00", align 1
@.str.152 = private unnamed_addr constant [6 x i8] c"RMICP\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"LAUX\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"RAUX\00", align 1
@.str.155 = private unnamed_addr constant [3 x i8] c"L2\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"R2\00", align 1
@.str.157 = private unnamed_addr constant [4 x i8] c"LHP\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c"RHP\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"LSPK\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c"RSPK\00", align 1
@wm8978_dapm_widgets = internal constant [30 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.127, ptr @.str.128, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.129, ptr @.str.130, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.131, ptr @.str.132, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.133, ptr @.str.134, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @wm8978_left_out_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @wm8978_right_out_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.137, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @wm8978_left_input_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.138, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @wm8978_right_input_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.139, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.140, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.141, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 45, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.142, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 46, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.143, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.149, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.150, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.158, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.159, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.162 = private unnamed_addr constant [19 x i8] c"Line Bypass Switch\00", align 1
@.compoundliteral.163 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.164 = private unnamed_addr constant [20 x i8] c"Aux Playback Switch\00", align 1
@.compoundliteral.165 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.166 = private unnamed_addr constant [20 x i8] c"PCM Playback Switch\00", align 1
@.compoundliteral.167 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.168 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.169 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 5, i32 5, i32 0, i8 0 }, align 4
@.compoundliteral.170 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.171 = private unnamed_addr constant [10 x i8] c"L2 Switch\00", align 1
@.compoundliteral.172 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 2, i32 2, i32 0, i8 0 }, align 4
@.str.173 = private unnamed_addr constant [12 x i8] c"MicN Switch\00", align 1
@.compoundliteral.174 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.175 = private unnamed_addr constant [12 x i8] c"MicP Switch\00", align 1
@.compoundliteral.176 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.177 = private unnamed_addr constant [10 x i8] c"R2 Switch\00", align 1
@.compoundliteral.178 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 6, i32 6, i32 0, i8 0 }, align 4
@.compoundliteral.179 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 5, i32 5, i32 0, i8 0 }, align 4
@.compoundliteral.180 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 4, i32 4, i32 0, i8 0 }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.181 = private unnamed_addr constant [12 x i8] c"wm8978-hifi\00", align 1
@wm8978_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr @wm8978_set_dai_sysclk, ptr null, ptr @wm8978_set_dai_clkdiv, ptr null, ptr @wm8978_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8978_mute, ptr null, ptr null, ptr @wm8978_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 1 }, align 4
@mclk_numerator = internal unnamed_addr constant [8 x i32] [i32 1, i32 3, i32 2, i32 3, i32 4, i32 6, i32 8, i32 12], align 4
@mclk_denominator = internal unnamed_addr constant [8 x i32] [i32 1, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 4
@.str.182 = private unnamed_addr constant [50 x i8] c"WM8978 N value exceeds recommended range! N = %u\0A\00", align 1
@.str.183 = private unnamed_addr constant [33 x i8] c"Imprecise sampling rate: %uHz%s\0A\00", align 1
@.str.184 = private unnamed_addr constant [21 x i8] c", consider using PLL\00", align 1
@.str.185 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_license255], section "llvm.metadata"

@__mod_i2c__wm8978_i2c_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @wm8978_i2c_id
@__mod_of__wm8978_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @wm8978_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @wm8978_i2c_driver) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @wm8978_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8978_i2c_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 28, i32 noundef 3520) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @wm8978_regmap_config, ptr noundef null, ptr noundef null) #6
  store ptr %7, ptr %4, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = ptrtoint ptr %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %10) #7
  br label %20

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %4, ptr %12, align 8
  %13 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 0, i32 noundef 0) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %13) #7
  br label %20

16:                                               ; preds = %11
  %17 = tail call i32 @devm_snd_soc_register_component(ptr noundef %3, ptr noundef nonnull @soc_component_dev_wm8978, ptr noundef nonnull @wm8978_dai, i32 noundef 1) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %17) #7
  br label %20

20:                                               ; preds = %19, %16, %15, %9, %2
  %21 = phi i32 [ %10, %9 ], [ %13, %15 ], [ %17, %19 ], [ -12, %2 ], [ 0, %16 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8978_volatile(ptr nocapture noundef readnone %0, i32 noundef %1) #4 {
  %3 = icmp eq i32 %1, 0
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8978_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wm8978_priv, ptr %5, i32 0, i32 6
  store i32 1, ptr %6, align 4
  %7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 11, i32 noundef 256, i32 noundef 256) #6
  %8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 12, i32 noundef 256, i32 noundef 256) #6
  %9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 15, i32 noundef 256, i32 noundef 256) #6
  %10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 16, i32 noundef 256, i32 noundef 256) #6
  %11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 45, i32 noundef 256, i32 noundef 256) #6
  %12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 46, i32 noundef 256, i32 noundef 256) #6
  %13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 52, i32 noundef 256, i32 noundef 256) #6
  %14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 53, i32 noundef 256, i32 noundef 256) #6
  %15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 54, i32 noundef 256, i32 noundef 256) #6
  %16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 55, i32 noundef 256, i32 noundef 256) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8978_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %7 = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %6, i32 noundef 0) #6
  %8 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 1, i32 noundef 0) #6
  %9 = load ptr, ptr %5, align 4
  tail call void @regcache_mark_dirty(ptr noundef %9) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8978_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regcache_sync(ptr noundef %6) #6
  %8 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %9 = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %8, i32 noundef 1) #6
  %10 = getelementptr inbounds %struct.wm8978_priv, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 1, i32 noundef 32, i32 noundef 32) #6
  br label %15

15:                                               ; preds = %13, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8978_set_bias_level(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 1) #6
  %4 = trunc i32 %3 to i16
  %5 = and i16 %4, -4
  switch i32 %1, label %31 [
    i32 3, label %6
    i32 2, label %6
    i32 1, label %10
    i32 0, label %27
  ]

6:                                                ; preds = %2, %2
  %7 = or i16 %5, 1
  %8 = zext i16 %7 to i32
  %9 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 1, i32 noundef %8) #6
  br label %31

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = and i32 %3, 65520
  %16 = or i32 %15, 15
  %17 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 1, i32 noundef %16) #6
  br label %18

18:                                               ; preds = %18, %14
  %19 = phi i32 [ 100, %14 ], [ %20, %18 ]
  %20 = add nsw i32 %19, -1
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #6
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %23, label %18

23:                                               ; preds = %18, %10
  %24 = or i16 %5, 14
  %25 = zext i16 %24 to i32
  %26 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 1, i32 noundef %25) #6
  br label %31

27:                                               ; preds = %2
  %28 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 1, i32 noundef -33, i32 noundef 0) #6
  %29 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 2, i32 noundef 0) #6
  %30 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 3, i32 noundef 0) #6
  br label %31

31:                                               ; preds = %27, %23, %6, %2
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
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_bias_level(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8978_set_dai_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.wm8978_priv, ptr %10, i32 0, i32 2
  store i32 %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.wm8978_priv, ptr %10, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = tail call fastcc i32 @wm8978_configure_pll(ptr noundef %6)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %12
  %21 = getelementptr inbounds %struct.wm8978_priv, ptr %10, i32 0, i32 6
  store i32 %1, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %17, %4
  %23 = phi i32 [ %18, %17 ], [ 0, %20 ], [ 0, %4 ]
  %24 = getelementptr inbounds %struct.wm8978_priv, ptr %10, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 1
  %27 = icmp eq i32 %1, 0
  %28 = or i1 %27, %11
  %29 = and i1 %28, %26
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 6, i32 noundef 256, i32 noundef 0) #6
  %32 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 8, i32 noundef 7, i32 noundef 0) #6
  %33 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 1, i32 noundef 32, i32 noundef 0) #6
  store i32 0, ptr %24, align 4
  %34 = getelementptr inbounds %struct.wm8978_priv, ptr %10, i32 0, i32 1
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.wm8978_priv, ptr %10, i32 0, i32 4
  store i32 0, ptr %35, align 4
  br label %36

36:                                               ; preds = %30, %22
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8978_set_dai_clkdiv(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  switch i32 %1, label %22 [
    i32 0, label %6
    i32 1, label %17
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.wm8978_priv, ptr %10, i32 0, i32 4
  store i32 %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.wm8978_priv, ptr %10, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %6
  %16 = tail call fastcc i32 @wm8978_configure_pll(ptr noundef %5)
  br label %22

17:                                               ; preds = %3
  %18 = and i32 %2, -29
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 6, i32 noundef 28, i32 noundef %2) #6
  br label %22

22:                                               ; preds = %20, %17, %15, %6, %3
  %23 = phi i32 [ -22, %17 ], [ -22, %3 ], [ 0, %20 ], [ %16, %15 ], [ 0, %6 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8978_set_dai_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 4) #6
  %6 = trunc i32 %5 to i16
  %7 = and i16 %6, -409
  %8 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 6) #6
  %9 = trunc i32 %1 to i16
  %10 = and i16 %9, -4096
  switch i16 %10, label %41 [
    i16 4096, label %11
    i16 16384, label %14
  ]

11:                                               ; preds = %2
  %12 = and i32 %8, 65534
  %13 = or i32 %12, 1
  br label %16

14:                                               ; preds = %2
  %15 = and i32 %8, 65534
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i32 [ %15, %14 ], [ %13, %11 ]
  %18 = and i32 %1, 15
  switch i32 %18, label %41 [
    i32 1, label %19
    i32 2, label %25
    i32 3, label %21
    i32 4, label %23
  ]

19:                                               ; preds = %16
  %20 = or i16 %7, 16
  br label %25

21:                                               ; preds = %16
  %22 = or i16 %7, 8
  br label %25

23:                                               ; preds = %16
  %24 = or i16 %7, 24
  br label %25

25:                                               ; preds = %23, %21, %19, %16
  %26 = phi i16 [ %24, %23 ], [ %22, %21 ], [ %7, %16 ], [ %20, %19 ]
  %27 = lshr i32 %1, 8
  %28 = and i32 %27, 15
  switch i32 %28, label %41 [
    i32 0, label %35
    i32 4, label %29
    i32 3, label %31
    i32 2, label %33
  ]

29:                                               ; preds = %25
  %30 = or i16 %26, 384
  br label %35

31:                                               ; preds = %25
  %32 = or i16 %26, 256
  br label %35

33:                                               ; preds = %25
  %34 = or i16 %26, 128
  br label %35

35:                                               ; preds = %33, %31, %29, %25
  %36 = phi i16 [ %34, %33 ], [ %32, %31 ], [ %30, %29 ], [ %26, %25 ]
  %37 = zext i16 %36 to i32
  %38 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 4, i32 noundef %37) #6
  %39 = and i32 %17, 65535
  %40 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 6, i32 noundef %39) #6
  br label %41

41:                                               ; preds = %35, %25, %16, %2
  %42 = phi i32 [ 0, %35 ], [ -22, %2 ], [ -22, %16 ], [ -22, %25 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8978_mute(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %1, 0
  %7 = select i1 %6, i32 0, i32 64
  %8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 10, i32 noundef 64, i32 noundef %7) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8978_hw_params(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 4) #6
  %11 = trunc i32 %10 to i16
  %12 = and i16 %11, -97
  %13 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 7) #6
  %14 = trunc i32 %13 to i16
  %15 = and i16 %14, -15
  %16 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 6) #6
  %17 = lshr i32 %16, 8
  %18 = and i32 %17, 1
  %19 = getelementptr inbounds %struct.wm8978_priv, ptr %9, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %176, label %22

22:                                               ; preds = %3
  %23 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %31, %22
  %27 = phi i32 [ 0, %22 ], [ 32, %31 ]
  %28 = phi i32 [ %24, %22 ], [ %33, %31 ]
  %29 = tail call i32 @llvm.cttz.i32(i32 %28, i1 true) #6, !range !8
  %30 = or i32 %29, %27
  br label %35

31:                                               ; preds = %22
  %32 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %26

35:                                               ; preds = %31, %26
  %36 = phi i32 [ %30, %26 ], [ 0, %31 ]
  %37 = tail call i32 @snd_pcm_format_width(i32 noundef %36) #6
  switch i32 %37, label %44 [
    i32 32, label %42
    i32 20, label %38
    i32 24, label %40
  ]

38:                                               ; preds = %35
  %39 = or i16 %12, 32
  br label %44

40:                                               ; preds = %35
  %41 = or i16 %12, 64
  br label %44

42:                                               ; preds = %35
  %43 = or i16 %11, 96
  br label %44

44:                                               ; preds = %42, %40, %38, %35
  %45 = phi i16 [ %12, %35 ], [ %41, %40 ], [ %39, %38 ], [ %43, %42 ]
  %46 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %47 = load i32, ptr %46, align 4
  switch i32 %47, label %58 [
    i32 8000, label %48
    i32 11025, label %50
    i32 16000, label %52
    i32 22050, label %54
    i32 32000, label %56
  ]

48:                                               ; preds = %44
  %49 = or i16 %15, 10
  br label %58

50:                                               ; preds = %44
  %51 = or i16 %15, 8
  br label %58

52:                                               ; preds = %44
  %53 = or i16 %15, 6
  br label %58

54:                                               ; preds = %44
  %55 = or i16 %15, 4
  br label %58

56:                                               ; preds = %44
  %57 = or i16 %15, 2
  br label %58

58:                                               ; preds = %56, %54, %52, %50, %48, %44
  %59 = phi i16 [ %15, %44 ], [ %57, %56 ], [ %55, %54 ], [ %53, %52 ], [ %51, %50 ], [ %49, %48 ]
  %60 = shl i32 %47, 8
  %61 = getelementptr inbounds %struct.wm8978_priv, ptr %9, i32 0, i32 3
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.wm8978_priv, ptr %9, i32 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.wm8978_priv, ptr %9, i32 0, i32 5
  store i32 -1, ptr %66, align 4
  br label %79

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.wm8978_priv, ptr %9, i32 0, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = tail call fastcc i32 @wm8978_configure_pll(ptr noundef %5)
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %176, label %74

74:                                               ; preds = %71, %67
  %75 = getelementptr inbounds %struct.wm8978_priv, ptr %9, i32 0, i32 1
  %76 = getelementptr inbounds %struct.wm8978_priv, ptr %9, i32 0, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %162

79:                                               ; preds = %74, %65
  %80 = phi ptr [ %19, %65 ], [ %75, %74 ]
  %81 = load i32, ptr %80, align 4
  %82 = load i32, ptr %61, align 4
  %83 = icmp ult i32 %81, %82
  %84 = mul i32 %82, 12
  %85 = icmp ugt i32 %81, %84
  %86 = or i1 %83, %85
  br i1 %86, label %176, label %87

87:                                               ; preds = %79
  %88 = mul i32 %82, 3
  %89 = mul i32 %81, 3
  %90 = icmp eq i32 %82, %81
  br i1 %90, label %162, label %91

91:                                               ; preds = %87
  %92 = sub i32 %88, %89
  %93 = tail call i32 @llvm.abs.i32(i32 %92, i1 false)
  %94 = tail call i32 @llvm.umin.i32(i32 %93, i32 2147483647)
  %95 = mul i32 %81, 6
  %96 = udiv i32 %95, 3
  %97 = sub i32 %88, %96
  %98 = tail call i32 @llvm.abs.i32(i32 %97, i1 false)
  %99 = icmp ult i32 %98, %94
  %100 = zext i1 %99 to i32
  %101 = icmp eq i32 %88, %96
  br i1 %101, label %162, label %102

102:                                              ; preds = %91
  %103 = tail call i32 @llvm.umin.i32(i32 %98, i32 %94)
  %104 = lshr i32 %89, 1
  %105 = sub i32 %88, %104
  %106 = tail call i32 @llvm.abs.i32(i32 %105, i1 false)
  %107 = icmp ult i32 %106, %103
  %108 = select i1 %107, i32 2, i32 %100
  %109 = icmp eq i32 %88, %104
  br i1 %109, label %162, label %110

110:                                              ; preds = %102
  %111 = tail call i32 @llvm.umin.i32(i32 %106, i32 %103)
  %112 = udiv i32 %89, 3
  %113 = sub i32 %88, %112
  %114 = tail call i32 @llvm.abs.i32(i32 %113, i1 false)
  %115 = icmp ult i32 %114, %111
  %116 = select i1 %115, i32 3, i32 %108
  %117 = icmp eq i32 %88, %112
  br i1 %117, label %162, label %118

118:                                              ; preds = %110
  %119 = tail call i32 @llvm.umin.i32(i32 %114, i32 %111)
  %120 = lshr i32 %89, 2
  %121 = sub i32 %88, %120
  %122 = tail call i32 @llvm.abs.i32(i32 %121, i1 false)
  %123 = icmp ult i32 %122, %119
  %124 = select i1 %123, i32 4, i32 %116
  %125 = icmp eq i32 %88, %120
  br i1 %125, label %162, label %126

126:                                              ; preds = %118
  %127 = tail call i32 @llvm.umin.i32(i32 %122, i32 %119)
  %128 = udiv i32 %89, 6
  %129 = sub i32 %88, %128
  %130 = tail call i32 @llvm.abs.i32(i32 %129, i1 false)
  %131 = icmp ult i32 %130, %127
  %132 = select i1 %131, i32 5, i32 %124
  %133 = icmp eq i32 %88, %128
  br i1 %133, label %162, label %134

134:                                              ; preds = %126
  %135 = tail call i32 @llvm.umin.i32(i32 %130, i32 %127)
  %136 = lshr i32 %89, 3
  %137 = sub i32 %88, %136
  %138 = tail call i32 @llvm.abs.i32(i32 %137, i1 false)
  %139 = icmp ult i32 %138, %135
  %140 = select i1 %139, i32 6, i32 %132
  %141 = icmp eq i32 %88, %136
  br i1 %141, label %162, label %142

142:                                              ; preds = %134
  %143 = tail call i32 @llvm.umin.i32(i32 %138, i32 %135)
  %144 = udiv i32 %89, 12
  %145 = sub i32 %88, %144
  %146 = tail call i32 @llvm.abs.i32(i32 %145, i1 false)
  %147 = icmp ult i32 %146, %143
  %148 = select i1 %147, i32 7, i32 %140
  %149 = icmp eq i32 %88, %144
  br i1 %149, label %162, label %150

150:                                              ; preds = %142
  %151 = load ptr, ptr %6, align 4
  %152 = getelementptr [8 x i32], ptr @mclk_denominator, i32 0, i32 %148
  %153 = load i32, ptr %152, align 4
  %154 = mul i32 %153, %81
  %155 = getelementptr [8 x i32], ptr @mclk_numerator, i32 0, i32 %148
  %156 = load i32, ptr %155, align 4
  %157 = udiv i32 %154, %156
  %158 = lshr i32 %157, 8
  %159 = load i32, ptr %62, align 4
  %160 = icmp eq i32 %159, 0
  %161 = select i1 %160, ptr @.str.184, ptr @.str.185
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %151, ptr noundef nonnull @.str.183, i32 noundef %158, ptr noundef nonnull %161) #7
  br label %162

162:                                              ; preds = %150, %142, %134, %126, %118, %110, %102, %91, %87, %74
  %163 = phi i32 [ %148, %150 ], [ %77, %74 ], [ 0, %87 ], [ %100, %91 ], [ %108, %102 ], [ %116, %110 ], [ %124, %118 ], [ %132, %126 ], [ %140, %134 ], [ %148, %142 ]
  %164 = shl i32 %163, 5
  %165 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 6, i32 noundef 224, i32 noundef %164) #6
  %166 = zext i16 %45 to i32
  %167 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 4, i32 noundef %166) #6
  %168 = zext i16 %59 to i32
  %169 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 7, i32 noundef %168) #6
  %170 = load i32, ptr %62, align 4
  %171 = icmp eq i32 %170, %18
  br i1 %171, label %176, label %172

172:                                              ; preds = %162
  %173 = icmp eq i32 %170, 1
  %174 = select i1 %173, i32 256, i32 0
  %175 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 6, i32 noundef 256, i32 noundef %174) #6
  br label %176

176:                                              ; preds = %172, %162, %79, %71, %3
  %177 = phi i32 [ %72, %71 ], [ -22, %3 ], [ -22, %79 ], [ 0, %162 ], [ 0, %172 ]
  ret i32 %177
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @wm8978_configure_pll(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wm8978_priv, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.wm8978_priv, ptr %5, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.wm8978_priv, ptr %5, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %138, label %13

13:                                               ; preds = %1
  %14 = icmp eq i32 %7, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.wm8978_priv, ptr %5, i32 0, i32 5
  store i32 -1, ptr %16, align 4
  %17 = shl i32 %7, 4
  %18 = mul i32 %9, 3
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %138, label %20

20:                                               ; preds = %15
  %21 = shl i32 %7, 2
  %22 = mul i32 %9, 13
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %138

24:                                               ; preds = %20
  %25 = icmp ult i32 %21, %18
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  %27 = lshr i32 %18, 2
  %28 = add i32 %7, -1
  %29 = add i32 %28, %27
  %30 = udiv i32 %29, %7
  br label %31

31:                                               ; preds = %26, %24
  %32 = phi i32 [ %30, %26 ], [ 1, %24 ]
  %33 = shl i32 %32, 4
  %34 = add i32 %33, -16
  %35 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 8, i32 noundef 48, i32 noundef %34) #6
  %36 = mul i32 %32, %7
  %37 = getelementptr inbounds %struct.wm8978_priv, ptr %5, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  %38 = load i32, ptr %8, align 4
  br label %89

39:                                               ; preds = %13
  %40 = icmp eq i32 %11, 0
  br i1 %40, label %138, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.wm8978_priv, ptr %5, i32 0, i32 1
  %43 = shl i32 %11, 2
  %44 = mul i32 %9, 3
  %45 = mul i32 %9, 13
  %46 = icmp ule i32 %44, %43
  %47 = icmp ult i32 %43, %45
  %48 = and i1 %46, %47
  br i1 %48, label %84, label %49

49:                                               ; preds = %41
  %50 = mul i32 %11, 12
  %51 = lshr exact i32 %50, 1
  %52 = icmp ule i32 %44, %51
  %53 = icmp ult i32 %51, %45
  %54 = and i1 %52, %53
  br i1 %54, label %84, label %55

55:                                               ; preds = %49
  %56 = shl i32 %11, 3
  %57 = icmp ule i32 %44, %56
  %58 = icmp ult i32 %56, %45
  %59 = and i1 %57, %58
  br i1 %59, label %84, label %60

60:                                               ; preds = %55
  %61 = icmp ule i32 %44, %50
  %62 = icmp ult i32 %50, %45
  %63 = and i1 %61, %62
  br i1 %63, label %84, label %64

64:                                               ; preds = %60
  %65 = shl i32 %11, 4
  %66 = icmp ule i32 %44, %65
  %67 = icmp ult i32 %65, %45
  %68 = and i1 %66, %67
  br i1 %68, label %84, label %69

69:                                               ; preds = %64
  %70 = mul i32 %11, 24
  %71 = icmp ule i32 %44, %70
  %72 = icmp ult i32 %70, %45
  %73 = and i1 %71, %72
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = shl i32 %11, 5
  %76 = icmp ule i32 %44, %75
  %77 = icmp ult i32 %75, %45
  %78 = and i1 %76, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = mul i32 %11, 48
  %81 = icmp ule i32 %44, %80
  %82 = icmp ult i32 %80, %45
  %83 = and i1 %81, %82
  br i1 %83, label %84, label %138

84:                                               ; preds = %79, %74, %69, %64, %60, %55, %49, %41
  %85 = phi i32 [ 0, %41 ], [ 1, %49 ], [ 2, %55 ], [ 3, %60 ], [ 4, %64 ], [ 5, %69 ], [ 6, %74 ], [ 7, %79 ]
  %86 = phi i32 [ %43, %41 ], [ %51, %49 ], [ %56, %55 ], [ %50, %60 ], [ %65, %64 ], [ %70, %69 ], [ %75, %74 ], [ %80, %79 ]
  %87 = lshr i32 %86, 2
  store i32 %87, ptr %42, align 4
  %88 = getelementptr inbounds %struct.wm8978_priv, ptr %5, i32 0, i32 5
  store i32 %85, ptr %88, align 4
  br label %89

89:                                               ; preds = %84, %31
  %90 = phi i32 [ %9, %84 ], [ %38, %31 ]
  %91 = phi i32 [ %87, %84 ], [ %36, %31 ]
  %92 = shl i32 %91, 2
  %93 = udiv i32 %92, %90
  %94 = icmp ult i32 %93, 6
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = lshr i32 %90, 1
  %97 = udiv i32 %92, %96
  br label %98

98:                                               ; preds = %95, %89
  %99 = phi i32 [ 16, %95 ], [ 0, %89 ]
  %100 = phi i32 [ %97, %95 ], [ %93, %89 ]
  %101 = phi i32 [ %96, %95 ], [ %90, %89 ]
  %102 = add i32 %100, -13
  %103 = icmp ult i32 %102, -7
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %105, ptr noundef nonnull @.str.182, i32 noundef %100) #7
  br label %106

106:                                              ; preds = %104, %98
  %107 = mul i32 %101, %100
  %108 = sub i32 %92, %107
  %109 = zext i32 %108 to i64
  %110 = shl nuw nsw i64 %109, 24
  %111 = lshr i32 %101, 1
  %112 = zext i32 %111 to i64
  %113 = add nuw nsw i64 %110, %112
  %114 = icmp ult i64 %113, 4294967296
  br i1 %114, label %115, label %118, !prof !9

115:                                              ; preds = %106
  %116 = trunc i64 %113 to i32
  %117 = udiv i32 %116, %101
  br label %122

118:                                              ; preds = %106
  %119 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %101, i64 %113) #8, !srcloc !10
  %120 = extractvalue { i64, i64 } %119, 1
  %121 = trunc i64 %120 to i32
  br label %122

122:                                              ; preds = %118, %115
  %123 = phi i32 [ %117, %115 ], [ %121, %118 ]
  %124 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 1, i32 noundef 32, i32 noundef 0) #6
  %125 = and i32 %100, 255
  %126 = or i32 %125, %99
  %127 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 36, i32 noundef %126) #6
  %128 = lshr i32 %123, 18
  %129 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 37, i32 noundef %128) #6
  %130 = lshr i32 %123, 9
  %131 = and i32 %130, 511
  %132 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 38, i32 noundef %131) #6
  %133 = and i32 %123, 511
  %134 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 39, i32 noundef %133) #6
  %135 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 1, i32 noundef 32, i32 noundef 32) #6
  br i1 %14, label %138, label %136

136:                                              ; preds = %122
  %137 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 8, i32 noundef 7, i32 noundef 4) #6
  br label %138

138:                                              ; preds = %136, %122, %79, %39, %20, %15, %1
  %139 = phi i32 [ -22, %1 ], [ -22, %15 ], [ -22, %20 ], [ -22, %39 ], [ 0, %136 ], [ 0, %122 ], [ -22, %79 ]
  ret i32 %139
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }

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
!8 = !{i32 0, i32 33}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2147919954, i64 2147920234, i64 2147920568, i64 2147920902}
