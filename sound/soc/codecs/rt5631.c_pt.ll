; ModuleID = '/llk/IR/sound/soc/codecs/rt5631.c_pt.bc'
source_filename = "../sound/soc/codecs/rt5631.c"
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
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8 }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.pll_div = type { i32, i32, i16 }
%struct.coeff_clk_div = type { i32, i32, i32, i16 }
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
%struct.rt5631_priv = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.79, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.79 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.74, [128 x i8] }
%union.anon.74 = type { %union.anon.76 }
%union.anon.76 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@rt5631_i2c_id = internal constant [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rt5631\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"alc5631\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@rt5631_i2c_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rt5631\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,alc5631\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description253 = internal constant [31 x i8] c"description=ASoC RT5631 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [33 x i8] c"author=flove <flove@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@rt5631_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @rt5631_i2c_probe, ptr @rt5631_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rt5631_i2c_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rt5631_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"rt5631\00", align 1
@rt5631_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr @rt5631_readable_register, ptr @rt5631_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 126, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5631_reg, i32 26, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@soc_component_dev_rt5631 = internal constant %struct.snd_soc_component_driver { ptr null, ptr @rt5631_snd_controls, i32 20, ptr @rt5631_dapm_widgets, i32 66, ptr @rt5631_dapm_routes, i32 123, ptr @rt5631_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5631_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 62, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@rt5631_dai = internal global [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.214, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt5631_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.71, i64 68719476805, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.76, i64 68719476805, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], align 8
@rt5631_reg = internal constant [26 x %struct.reg_default] [%struct.reg_default { i32 2, i32 34952 }, %struct.reg_default { i32 4, i32 32896 }, %struct.reg_default { i32 6, i32 41088 }, %struct.reg_default { i32 10, i32 2056 }, %struct.reg_default { i32 20, i32 61680 }, %struct.reg_default { i32 24, i32 16 }, %struct.reg_default { i32 26, i32 65472 }, %struct.reg_default { i32 28, i32 65472 }, %struct.reg_default { i32 30, i32 35008 }, %struct.reg_default { i32 32, i32 35008 }, %struct.reg_default { i32 36, i32 12288 }, %struct.reg_default { i32 38, i32 34824 }, %struct.reg_default { i32 40, i32 63736 }, %struct.reg_default { i32 42, i32 64512 }, %struct.reg_default { i32 44, i32 17472 }, %struct.reg_default { i32 52, i32 32768 }, %struct.reg_default { i32 54, i32 32768 }, %struct.reg_default { i32 56, i32 8208 }, %struct.reg_default { i32 64, i32 3584 }, %struct.reg_default { i32 74, i32 1818 }, %struct.reg_default { i32 82, i32 8256 }, %struct.reg_default { i32 86, i32 32768 }, %struct.reg_default { i32 92, i32 2016 }, %struct.reg_default { i32 100, i32 518 }, %struct.reg_default { i32 102, i32 8192 }, %struct.reg_default { i32 104, i32 1363 }], align 4
@rt5631_snd_controls = internal constant [20 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.1, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @rt5631_mic1_mode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.2, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @mic_bst_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.3, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @rt5631_mic2_mode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.4, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @mic_bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.5 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.6, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @rt5631_monoin_mode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @in_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.8 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @in_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.10 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @dac_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.16 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.18 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.20 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @out_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @out_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @rt5631_dmic_get, ptr @rt5631_dmic_put, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @rt5631_spk_ratio_enum to i32) }], align 4
@rt5631_dapm_routes = internal constant [123 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr null, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr null, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr null, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.50, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr @.str.116, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr @.str.118, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr @.str.120, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr @.str.122, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.129, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.127, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.125, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.122, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.68, ptr @check_adcl_select, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.47, ptr @check_sysclk1_source, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.69, ptr @check_adcr_select, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.47, ptr @check_sysclk1_source, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr null, ptr @.str.67, ptr @check_dmic_used, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.47, ptr @check_sysclk1_source, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.47, ptr @check_sysclk1_source, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr null, ptr @.str.81, ptr @check_dacl_to_spkmixl, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.131, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.133, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.135, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.137, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.82, ptr @check_dacr_to_spkmixr, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr @.str.166, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr @.str.162, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr @.str.169, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr @.str.140, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr null, ptr @.str.81, ptr @check_dacl_to_outmixl, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.131, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.140, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.135, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.143, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.145, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.147, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.149, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.151, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.153, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr null, ptr @.str.82, ptr @check_dacr_to_outmixr, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.131, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.140, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.162, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.143, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.145, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.158, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.149, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.151, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.153, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr @.str.173, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr @.str.46, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr @.str.175, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr @.str.46, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr @.str.175, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr @.str.46, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr @.str.178, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr @.str.46, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr @.str.178, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr @.str.46, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr @.str.181, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr @.str.46, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.143, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.184, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.186, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.145, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.143, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.184, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.186, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.145, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr @.str.188, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr @.str.190, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.188, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.190, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr @.str.184, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr @.str.186, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.201, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.202, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.203, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.204, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.206, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.202, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.203, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.207, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.209, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.202, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.203, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr null, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.211, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.75, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.213, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.77, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr null, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr null, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr null, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr null, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr null, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr null, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr null, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr null, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr null, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr null, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"MIC1 Mode Control\00", align 1
@rt5631_mic1_mode_enum = internal constant %struct.soc_enum { i32 14, i8 15, i8 15, i32 2, i32 1, ptr @rt5631_input_mode, ptr null, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"MIC1 Boost Volume\00", align 1
@mic_bst_tlv = internal constant [44 x i32] [i32 3, i32 168, i32 0, i32 0, i32 1, i32 8, i32 0, i32 0, i32 1, i32 1, i32 1, i32 8, i32 2000, i32 0, i32 2, i32 2, i32 1, i32 8, i32 2400, i32 0, i32 3, i32 5, i32 1, i32 8, i32 3000, i32 500, i32 6, i32 6, i32 1, i32 8, i32 4400, i32 0, i32 7, i32 7, i32 1, i32 8, i32 5000, i32 0, i32 8, i32 8, i32 1, i32 8, i32 5200, i32 0], align 4
@.compoundliteral = internal global %struct.soc_mixer_control { i32 0, i32 8, i32 8, i32 34, i32 34, i32 12, i32 12, i32 0, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"MIC2 Mode Control\00", align 1
@rt5631_mic2_mode_enum = internal constant %struct.soc_enum { i32 14, i8 7, i8 7, i32 2, i32 1, ptr @rt5631_input_mode, ptr null, i8 0 }, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"MIC2 Boost Volume\00", align 1
@.compoundliteral.5 = internal global %struct.soc_mixer_control { i32 0, i32 8, i32 8, i32 34, i32 34, i32 8, i32 8, i32 0, i8 0 }, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"MONOIN Mode Control\00", align 1
@rt5631_monoin_mode_enum = internal constant %struct.soc_enum { i32 38, i8 15, i8 15, i32 2, i32 1, ptr @rt5631_input_mode, ptr null, i8 0 }, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"MONOIN_RX Capture Volume\00", align 1
@in_vol_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -3450, i32 150], align 4
@.compoundliteral.8 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 38, i32 38, i32 8, i32 0, i32 0, i8 1 }, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"AXI Capture Volume\00", align 1
@.compoundliteral.10 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 10, i32 10, i32 8, i32 0, i32 0, i8 1 }, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"PCM Playback Volume\00", align 1
@dac_vol_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -95625, i32 375], align 4
@.compoundliteral.12 = internal global %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 16, i32 16, i32 8, i32 0, i32 0, i8 1 }, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"PCM Playback Switch\00", align 1
@.compoundliteral.14 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12, i32 12, i32 15, i32 7, i32 0, i8 1 }, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"AXO1 Playback Switch\00", align 1
@.compoundliteral.16 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 15, i32 15, i32 0, i8 1 }, align 4
@.str.17 = private unnamed_addr constant [21 x i8] c"AXO2 Playback Switch\00", align 1
@.compoundliteral.18 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.19 = private unnamed_addr constant [22 x i8] c"OUTVOL Channel Switch\00", align 1
@.compoundliteral.20 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 14, i32 6, i32 0, i8 0 }, align 4
@.str.21 = private unnamed_addr constant [24 x i8] c"Speaker Playback Switch\00", align 1
@.compoundliteral.22 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 15, i32 7, i32 0, i8 1 }, align 4
@.str.23 = private unnamed_addr constant [24 x i8] c"Speaker Playback Volume\00", align 1
@out_vol_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -4650, i32 150], align 4
@.compoundliteral.24 = internal global %struct.soc_mixer_control { i32 0, i32 39, i32 39, i32 2, i32 2, i32 8, i32 0, i32 0, i8 1 }, align 4
@.str.25 = private unnamed_addr constant [21 x i8] c"MONO Playback Switch\00", align 1
@.compoundliteral.26 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 13, i32 13, i32 0, i8 1 }, align 4
@.str.27 = private unnamed_addr constant [19 x i8] c"HP Playback Switch\00", align 1
@.compoundliteral.28 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 15, i32 7, i32 0, i8 1 }, align 4
@.str.29 = private unnamed_addr constant [19 x i8] c"HP Playback Volume\00", align 1
@.compoundliteral.30 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 4, i32 4, i32 8, i32 0, i32 0, i8 1 }, align 4
@.str.31 = private unnamed_addr constant [12 x i8] c"DMIC Switch\00", align 1
@.compoundliteral.32 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.33 = private unnamed_addr constant [20 x i8] c"DMIC Capture Switch\00", align 1
@.compoundliteral.34 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 13, i32 12, i32 0, i8 1 }, align 4
@.str.35 = private unnamed_addr constant [18 x i8] c"SPK Ratio Control\00", align 1
@rt5631_spk_ratio_enum = internal constant %struct.soc_enum { i32 64, i8 12, i8 12, i32 8, i32 7, ptr @rt5631_spk_ratio, ptr null, i8 0 }, align 4
@rt5631_input_mode = internal global [2 x ptr] [ptr @.str.36, ptr @.str.37], align 4
@.str.36 = private unnamed_addr constant [13 x i8] c"Single ended\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"Differential\00", align 1
@rt5631_spk_ratio = internal global [8 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], align 4
@.str.38 = private unnamed_addr constant [6 x i8] c"1.00x\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"1.09x\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"1.27x\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"1.44x\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"1.56x\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"1.68x\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"1.99x\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"2.34x\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"Vmid\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"PLL1\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"MIC1\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"MIC2\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"AXIL\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"AXIR\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"MONOIN_RXN\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"MONOIN_RXP\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"DMIC\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"MIC Bias1\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"MIC Bias2\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"MIC1 Boost\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"MIC2 Boost\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"MONOIN_RXP Boost\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"MONOIN_RXN Boost\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"AXIL Boost\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"AXIR Boost\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"MONO_IN\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"RECMIXL Mixer\00", align 1
@rt5631_recmixl_mixer_controls = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.116, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.117 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.119 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.121 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.123 to i32) }], align 4
@.str.65 = private unnamed_addr constant [14 x i8] c"RECMIXR Mixer\00", align 1
@rt5631_recmixr_mixer_controls = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.124 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.126 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.128 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.129, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.130 to i32) }], align 4
@.str.66 = private unnamed_addr constant [10 x i8] c"ADC Mixer\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"DMIC Supply\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"Left ADC Select\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"Right ADC Select\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"Left ADC\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"HIFI Capture\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"Right ADC\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"I2S\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"DAC REF\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"Left DAC\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c"HIFI Playback\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"Right DAC\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"Voice DAC\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"Voice DAC Mono Playback\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"Voice DAC Boost\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"Left DAC To Mixer\00", align 1
@.str.82 = private unnamed_addr constant [19 x i8] c"Right DAC To Mixer\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"SPKMIXL Mixer\00", align 1
@rt5631_spkmixl_mixer_controls = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.132 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.134 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.136 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.138 to i32) }], align 4
@.str.84 = private unnamed_addr constant [14 x i8] c"OUTMIXL Mixer\00", align 1
@rt5631_outmixl_mixer_controls = internal constant [9 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.139 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.141 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.142 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.144 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.145, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.146 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.147, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.148 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.149, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.150 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.151, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.152 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.153, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.154 to i32) }], align 4
@.str.85 = private unnamed_addr constant [14 x i8] c"OUTMIXR Mixer\00", align 1
@rt5631_outmixr_mixer_controls = internal constant [9 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.153, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.155 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.151, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.156 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.149, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.157 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.158, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.159 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.145, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.160 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.161 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.163 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.164 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.165 to i32) }], align 4
@.str.86 = private unnamed_addr constant [14 x i8] c"SPKMIXR Mixer\00", align 1
@rt5631_spkmixr_mixer_controls = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.166, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.167 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.168 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.169, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.170 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.171 to i32) }], align 4
@.str.87 = private unnamed_addr constant [16 x i8] c"Left SPKVOL Mux\00", align 1
@rt5631_spkvoll_mux_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @rt5631_spkvoll_enum to i32) }, align 4
@.str.88 = private unnamed_addr constant [15 x i8] c"Left HPVOL Mux\00", align 1
@rt5631_hpvoll_mux_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.174, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @rt5631_hpvoll_enum to i32) }, align 4
@.str.89 = private unnamed_addr constant [16 x i8] c"Left OUTVOL Mux\00", align 1
@rt5631_outvoll_mux_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @rt5631_outvoll_enum to i32) }, align 4
@.str.90 = private unnamed_addr constant [17 x i8] c"Right OUTVOL Mux\00", align 1
@rt5631_outvolr_mux_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.177, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @rt5631_outvolr_enum to i32) }, align 4
@.str.91 = private unnamed_addr constant [16 x i8] c"Right HPVOL Mux\00", align 1
@rt5631_hpvolr_mux_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.179, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @rt5631_hpvolr_enum to i32) }, align 4
@.str.92 = private unnamed_addr constant [17 x i8] c"Right SPKVOL Mux\00", align 1
@rt5631_spkvolr_mux_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @rt5631_spkvolr_enum to i32) }, align 4
@.str.93 = private unnamed_addr constant [12 x i8] c"Left DAC_HP\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"Right DAC_HP\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"HP Depop\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"AXO1MIX Mixer\00", align 1
@rt5631_AXO1MIX_mixer_controls = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.182 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.145, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.183 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.184, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.185 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.186, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.187 to i32) }], align 4
@.str.97 = private unnamed_addr constant [14 x i8] c"SPOLMIX Mixer\00", align 1
@rt5631_spolmix_mixer_controls = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.188, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.189 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.190, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.191 to i32) }], align 4
@.str.98 = private unnamed_addr constant [14 x i8] c"MONOMIX Mixer\00", align 1
@rt5631_monomix_mixer_controls = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.184, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.192 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.186, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.193 to i32) }], align 4
@.str.99 = private unnamed_addr constant [14 x i8] c"SPORMIX Mixer\00", align 1
@rt5631_spormix_mixer_controls = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.188, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.194 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.190, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.195 to i32) }], align 4
@.str.100 = private unnamed_addr constant [14 x i8] c"AXO2MIX Mixer\00", align 1
@rt5631_AXO2MIX_mixer_controls = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.196 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.145, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.197 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.184, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.198 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.186, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.199 to i32) }], align 4
@.str.101 = private unnamed_addr constant [9 x i8] c"SPOL Mux\00", align 1
@rt5631_spol_mux_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.200, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @rt5631_spol_src_enum to i32) }, align 4
@.str.102 = private unnamed_addr constant [9 x i8] c"SPOR Mux\00", align 1
@rt5631_spor_mux_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.205, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @rt5631_spor_src_enum to i32) }, align 4
@.str.103 = private unnamed_addr constant [9 x i8] c"MONO Mux\00", align 1
@rt5631_mono_mux_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.208, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @rt5631_mono_src_enum to i32) }, align 4
@.str.104 = private unnamed_addr constant [8 x i8] c"HPL Mux\00", align 1
@rt5631_hpl_mux_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.210, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @rt5631_hpl_src_enum to i32) }, align 4
@.str.105 = private unnamed_addr constant [8 x i8] c"HPR Mux\00", align 1
@rt5631_hpr_mux_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.212, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @rt5631_hpr_src_enum to i32) }, align 4
@.str.106 = private unnamed_addr constant [11 x i8] c"MONO Depop\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"Class D\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"AUXO1\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"AUXO2\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"SPOL\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"SPOR\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"HPOL\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"HPOR\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"MONO\00", align 1
@rt5631_dapm_widgets = internal constant [66 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 16, ptr @.str.46, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.47, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.48, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.49, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.50, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.51, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.52, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.53, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.54, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.55, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.56, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.57, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.58, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 62, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.60, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 62, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 62, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 62, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5631_recmixl_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5631_recmixr_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 36, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @set_dmic_params, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 74, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 74, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.70, ptr @.str.71, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 58, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.72, ptr @.str.71, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 58, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 58, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 58, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.75, ptr @.str.76, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 58, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.77, ptr @.str.76, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 58, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.78, ptr @.str.79, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 58, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 58, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5631_spkmixl_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 9, ptr @rt5631_outmixl_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 9, ptr @rt5631_outmixr_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5631_spkmixr_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 62, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5631_spkvoll_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 62, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5631_hpvoll_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 62, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5631_outvoll_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 62, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5631_outvolr_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 62, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5631_hpvolr_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 62, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5631_spkvolr_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 6, ptr @hp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 60, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5631_AXO1MIX_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5631_spolmix_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 60, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5631_monomix_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5631_spormix_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 60, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5631_AXO2MIX_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5631_spol_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5631_spor_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5631_mono_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5631_hpl_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5631_hpr_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 60, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 58, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.116 = private unnamed_addr constant [23 x i8] c"OUTMIXL Capture Switch\00", align 1
@.compoundliteral.117 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 15, i32 15, i32 0, i8 1 }, align 4
@.str.118 = private unnamed_addr constant [25 x i8] c"MIC1_BST1 Capture Switch\00", align 1
@.compoundliteral.119 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 14, i32 14, i32 0, i8 1 }, align 4
@.str.120 = private unnamed_addr constant [23 x i8] c"AXILVOL Capture Switch\00", align 1
@.compoundliteral.121 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 13, i32 13, i32 0, i8 1 }, align 4
@.str.122 = private unnamed_addr constant [25 x i8] c"MONOIN_RX Capture Switch\00", align 1
@.compoundliteral.123 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 12, i32 12, i32 0, i8 1 }, align 4
@.compoundliteral.124 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 4, i32 4, i32 0, i8 1 }, align 4
@.str.125 = private unnamed_addr constant [23 x i8] c"AXIRVOL Capture Switch\00", align 1
@.compoundliteral.126 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 5, i32 5, i32 0, i8 1 }, align 4
@.str.127 = private unnamed_addr constant [25 x i8] c"MIC2_BST2 Capture Switch\00", align 1
@.compoundliteral.128 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 6, i32 6, i32 0, i8 1 }, align 4
@.str.129 = private unnamed_addr constant [23 x i8] c"OUTMIXR Capture Switch\00", align 1
@.compoundliteral.130 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.131 = private unnamed_addr constant [24 x i8] c"RECMIXL Playback Switch\00", align 1
@.compoundliteral.132 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 15, i32 15, i32 0, i8 1 }, align 4
@.str.133 = private unnamed_addr constant [23 x i8] c"MIC1_P Playback Switch\00", align 1
@.compoundliteral.134 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 14, i32 14, i32 0, i8 1 }, align 4
@.str.135 = private unnamed_addr constant [21 x i8] c"DACL Playback Switch\00", align 1
@.compoundliteral.136 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 13, i32 13, i32 0, i8 1 }, align 4
@.str.137 = private unnamed_addr constant [24 x i8] c"OUTMIXL Playback Switch\00", align 1
@.compoundliteral.138 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 12, i32 12, i32 0, i8 1 }, align 4
@.compoundliteral.139 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 15, i32 15, i32 0, i8 1 }, align 4
@.str.140 = private unnamed_addr constant [24 x i8] c"RECMIXR Playback Switch\00", align 1
@.compoundliteral.141 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 14, i32 14, i32 0, i8 1 }, align 4
@.compoundliteral.142 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 13, i32 13, i32 0, i8 1 }, align 4
@.str.143 = private unnamed_addr constant [26 x i8] c"MIC1_BST1 Playback Switch\00", align 1
@.compoundliteral.144 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 12, i32 12, i32 0, i8 1 }, align 4
@.str.145 = private unnamed_addr constant [26 x i8] c"MIC2_BST2 Playback Switch\00", align 1
@.compoundliteral.146 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 11, i32 11, i32 0, i8 1 }, align 4
@.str.147 = private unnamed_addr constant [27 x i8] c"MONOIN_RXP Playback Switch\00", align 1
@.compoundliteral.148 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 10, i32 10, i32 0, i8 1 }, align 4
@.str.149 = private unnamed_addr constant [24 x i8] c"AXILVOL Playback Switch\00", align 1
@.compoundliteral.150 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 9, i32 9, i32 0, i8 1 }, align 4
@.str.151 = private unnamed_addr constant [24 x i8] c"AXIRVOL Playback Switch\00", align 1
@.compoundliteral.152 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 8, i32 8, i32 0, i8 1 }, align 4
@.str.153 = private unnamed_addr constant [21 x i8] c"VDAC Playback Switch\00", align 1
@.compoundliteral.154 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 7, i32 7, i32 0, i8 1 }, align 4
@.compoundliteral.155 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 7, i32 7, i32 0, i8 1 }, align 4
@.compoundliteral.156 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 8, i32 8, i32 0, i8 1 }, align 4
@.compoundliteral.157 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 9, i32 9, i32 0, i8 1 }, align 4
@.str.158 = private unnamed_addr constant [27 x i8] c"MONOIN_RXN Playback Switch\00", align 1
@.compoundliteral.159 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 10, i32 10, i32 0, i8 1 }, align 4
@.compoundliteral.160 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 11, i32 11, i32 0, i8 1 }, align 4
@.compoundliteral.161 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 12, i32 12, i32 0, i8 1 }, align 4
@.str.162 = private unnamed_addr constant [21 x i8] c"DACR Playback Switch\00", align 1
@.compoundliteral.163 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 13, i32 13, i32 0, i8 1 }, align 4
@.compoundliteral.164 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 14, i32 14, i32 0, i8 1 }, align 4
@.compoundliteral.165 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 15, i32 15, i32 0, i8 1 }, align 4
@.str.166 = private unnamed_addr constant [24 x i8] c"OUTMIXR Playback Switch\00", align 1
@.compoundliteral.167 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 4, i32 4, i32 0, i8 1 }, align 4
@.compoundliteral.168 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 5, i32 5, i32 0, i8 1 }, align 4
@.str.169 = private unnamed_addr constant [23 x i8] c"MIC2_P Playback Switch\00", align 1
@.compoundliteral.170 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 6, i32 6, i32 0, i8 1 }, align 4
@.compoundliteral.171 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.172 = private unnamed_addr constant [16 x i8] c"Left SPKVOL SRC\00", align 1
@rt5631_spkvoll_enum = internal constant %struct.soc_enum { i32 2, i8 14, i8 14, i32 2, i32 1, ptr @rt5631_spkvoll_sel, ptr null, i8 0 }, align 4
@rt5631_spkvoll_sel = internal global [2 x ptr] [ptr @.str.46, ptr @.str.173], align 4
@.str.173 = private unnamed_addr constant [8 x i8] c"SPKMIXL\00", align 1
@.str.174 = private unnamed_addr constant [15 x i8] c"Left HPVOL SRC\00", align 1
@rt5631_hpvoll_enum = internal constant %struct.soc_enum { i32 4, i8 14, i8 14, i32 2, i32 1, ptr @rt5631_hpvoll_sel, ptr null, i8 0 }, align 4
@rt5631_hpvoll_sel = internal global [2 x ptr] [ptr @.str.46, ptr @.str.175], align 4
@.str.175 = private unnamed_addr constant [8 x i8] c"OUTMIXL\00", align 1
@.str.176 = private unnamed_addr constant [16 x i8] c"Left OUTVOL SRC\00", align 1
@rt5631_outvoll_enum = internal constant %struct.soc_enum { i32 6, i8 14, i8 14, i32 2, i32 1, ptr @rt5631_outvoll_sel, ptr null, i8 0 }, align 4
@rt5631_outvoll_sel = internal global [2 x ptr] [ptr @.str.46, ptr @.str.175], align 4
@.str.177 = private unnamed_addr constant [17 x i8] c"Right OUTVOL SRC\00", align 1
@rt5631_outvolr_enum = internal constant %struct.soc_enum { i32 6, i8 6, i8 6, i32 2, i32 1, ptr @rt5631_outvolr_sel, ptr null, i8 0 }, align 4
@rt5631_outvolr_sel = internal global [2 x ptr] [ptr @.str.46, ptr @.str.178], align 4
@.str.178 = private unnamed_addr constant [8 x i8] c"OUTMIXR\00", align 1
@.str.179 = private unnamed_addr constant [16 x i8] c"Right HPVOL SRC\00", align 1
@rt5631_hpvolr_enum = internal constant %struct.soc_enum { i32 4, i8 6, i8 6, i32 2, i32 1, ptr @rt5631_hpvolr_sel, ptr null, i8 0 }, align 4
@rt5631_hpvolr_sel = internal global [2 x ptr] [ptr @.str.46, ptr @.str.178], align 4
@.str.180 = private unnamed_addr constant [17 x i8] c"Right SPKVOL SRC\00", align 1
@rt5631_spkvolr_enum = internal constant %struct.soc_enum { i32 2, i8 6, i8 6, i32 2, i32 1, ptr @rt5631_spkvolr_sel, ptr null, i8 0 }, align 4
@rt5631_spkvolr_sel = internal global [2 x ptr] [ptr @.str.46, ptr @.str.181], align 4
@.str.181 = private unnamed_addr constant [8 x i8] c"SPKMIXR\00", align 1
@.compoundliteral.182 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 30, i32 30, i32 15, i32 15, i32 0, i8 1 }, align 4
@.compoundliteral.183 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 30, i32 30, i32 11, i32 11, i32 0, i8 1 }, align 4
@.str.184 = private unnamed_addr constant [24 x i8] c"OUTVOLL Playback Switch\00", align 1
@.compoundliteral.185 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 30, i32 30, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.186 = private unnamed_addr constant [24 x i8] c"OUTVOLR Playback Switch\00", align 1
@.compoundliteral.187 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 30, i32 30, i32 6, i32 6, i32 0, i8 1 }, align 4
@.str.188 = private unnamed_addr constant [24 x i8] c"SPKVOLL Playback Switch\00", align 1
@.compoundliteral.189 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 15, i32 15, i32 0, i8 1 }, align 4
@.str.190 = private unnamed_addr constant [24 x i8] c"SPKVOLR Playback Switch\00", align 1
@.compoundliteral.191 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 14, i32 14, i32 0, i8 1 }, align 4
@.compoundliteral.192 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 11, i32 11, i32 0, i8 1 }, align 4
@.compoundliteral.193 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 10, i32 10, i32 0, i8 1 }, align 4
@.compoundliteral.194 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 13, i32 13, i32 0, i8 1 }, align 4
@.compoundliteral.195 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 12, i32 12, i32 0, i8 1 }, align 4
@.compoundliteral.196 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 15, i32 15, i32 0, i8 1 }, align 4
@.compoundliteral.197 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 11, i32 11, i32 0, i8 1 }, align 4
@.compoundliteral.198 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 7, i32 7, i32 0, i8 1 }, align 4
@.compoundliteral.199 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 6, i32 6, i32 0, i8 1 }, align 4
@.str.200 = private unnamed_addr constant [9 x i8] c"SPOL SRC\00", align 1
@rt5631_spol_src_enum = internal constant %struct.soc_enum { i32 44, i8 14, i8 14, i32 4, i32 3, ptr @rt5631_spol_src_sel, ptr null, i8 0 }, align 4
@rt5631_spol_src_sel = internal global [4 x ptr] [ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204], align 4
@.str.201 = private unnamed_addr constant [8 x i8] c"SPOLMIX\00", align 1
@.str.202 = private unnamed_addr constant [10 x i8] c"MONOIN_RX\00", align 1
@.str.203 = private unnamed_addr constant [5 x i8] c"VDAC\00", align 1
@.str.204 = private unnamed_addr constant [5 x i8] c"DACL\00", align 1
@.str.205 = private unnamed_addr constant [9 x i8] c"SPOR SRC\00", align 1
@rt5631_spor_src_enum = internal constant %struct.soc_enum { i32 44, i8 10, i8 10, i32 4, i32 3, ptr @rt5631_spor_src_sel, ptr null, i8 0 }, align 4
@rt5631_spor_src_sel = internal global [4 x ptr] [ptr @.str.206, ptr @.str.202, ptr @.str.203, ptr @.str.207], align 4
@.str.206 = private unnamed_addr constant [8 x i8] c"SPORMIX\00", align 1
@.str.207 = private unnamed_addr constant [5 x i8] c"DACR\00", align 1
@.str.208 = private unnamed_addr constant [9 x i8] c"MONO SRC\00", align 1
@rt5631_mono_src_enum = internal constant %struct.soc_enum { i32 44, i8 6, i8 6, i32 3, i32 3, ptr @rt5631_mono_src_sel, ptr null, i8 0 }, align 4
@rt5631_mono_src_sel = internal global [3 x ptr] [ptr @.str.209, ptr @.str.202, ptr @.str.203], align 4
@.str.209 = private unnamed_addr constant [8 x i8] c"MONOMIX\00", align 1
@.str.210 = private unnamed_addr constant [8 x i8] c"HPL SRC\00", align 1
@rt5631_hpl_src_enum = internal constant %struct.soc_enum { i32 44, i8 3, i8 3, i32 2, i32 1, ptr @rt5631_hpl_src_sel, ptr null, i8 0 }, align 4
@rt5631_hpl_src_sel = internal global [2 x ptr] [ptr @.str.211, ptr @.str.75], align 4
@.str.211 = private unnamed_addr constant [11 x i8] c"Left HPVOL\00", align 1
@.str.212 = private unnamed_addr constant [8 x i8] c"HPR SRC\00", align 1
@rt5631_hpr_src_enum = internal constant %struct.soc_enum { i32 44, i8 2, i8 2, i32 2, i32 1, ptr @rt5631_hpr_src_sel, ptr null, i8 0 }, align 4
@rt5631_hpr_src_sel = internal global [2 x ptr] [ptr @.str.213, ptr @.str.77], align 4
@.str.213 = private unnamed_addr constant [12 x i8] c"Right HPVOL\00", align 1
@.str.214 = private unnamed_addr constant [12 x i8] c"rt5631-hifi\00", align 1
@rt5631_ops = internal constant %struct.snd_soc_dai_ops { ptr @rt5631_hifi_codec_set_dai_sysclk, ptr @rt5631_codec_set_dai_pll, ptr null, ptr null, ptr @rt5631_hifi_codec_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5631_hifi_pcm_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@codec_master_pll_div = internal unnamed_addr constant [34 x %struct.pll_div] [%struct.pll_div { i32 2048000, i32 8192000, i16 3744 }, %struct.pll_div { i32 3686400, i32 8192000, i16 20007 }, %struct.pll_div { i32 12000000, i32 8192000, i16 17771 }, %struct.pll_div { i32 13000000, i32 8192000, i16 18783 }, %struct.pll_div { i32 13100000, i32 8192000, i16 800 }, %struct.pll_div { i32 2048000, i32 11289600, i16 -2505 }, %struct.pll_div { i32 3686400, i32 11289600, i16 12066 }, %struct.pll_div { i32 12000000, i32 11289600, i16 15919 }, %struct.pll_div { i32 13000000, i32 11289600, i16 19803 }, %struct.pll_div { i32 13100000, i32 11289600, i16 13883 }, %struct.pll_div { i32 2048000, i32 16384000, i16 7840 }, %struct.pll_div { i32 3686400, i32 16384000, i16 -25049 }, %struct.pll_div { i32 12000000, i32 16384000, i16 17707 }, %struct.pll_div { i32 13000000, i32 16384000, i16 21551 }, %struct.pll_div { i32 13100000, i32 16384000, i16 928 }, %struct.pll_div { i32 2048000, i32 16934400, i16 -6619 }, %struct.pll_div { i32 3686400, i32 16934400, i16 -28378 }, %struct.pll_div { i32 12000000, i32 16934400, i16 19756 }, %struct.pll_div { i32 13000000, i32 16934400, i16 29743 }, %struct.pll_div { i32 13100000, i32 16934400, i16 15399 }, %struct.pll_div { i32 2048000, i32 22579200, i16 10912 }, %struct.pll_div { i32 3686400, i32 22579200, i16 12064 }, %struct.pll_div { i32 12000000, i32 22579200, i16 32303 }, %struct.pll_div { i32 13000000, i32 22579200, i16 29743 }, %struct.pll_div { i32 13100000, i32 22579200, i16 15399 }, %struct.pll_div { i32 2048000, i32 24576000, i16 11936 }, %struct.pll_div { i32 3686400, i32 24576000, i16 -4569 }, %struct.pll_div { i32 12000000, i32 24576000, i16 10517 }, %struct.pll_div { i32 13000000, i32 24576000, i16 30510 }, %struct.pll_div { i32 13100000, i32 24576000, i16 3360 }, %struct.pll_div { i32 26000000, i32 24576000, i16 8231 }, %struct.pll_div { i32 26000000, i32 22579200, i16 14639 }, %struct.pll_div { i32 24576000, i32 22579200, i16 2337 }, %struct.pll_div { i32 24576000, i32 24576000, i16 672 }], align 4
@.str.215 = private unnamed_addr constant [27 x i8] c"change PLL in master mode\0A\00", align 1
@codec_slave_pll_div = internal unnamed_addr constant [23 x %struct.pll_div] [%struct.pll_div { i32 256000, i32 2048000, i16 18160 }, %struct.pll_div { i32 256000, i32 4096000, i16 16032 }, %struct.pll_div { i32 352800, i32 5644800, i16 16032 }, %struct.pll_div { i32 512000, i32 8192000, i16 16032 }, %struct.pll_div { i32 1024000, i32 8192000, i16 18160 }, %struct.pll_div { i32 705600, i32 11289600, i16 16032 }, %struct.pll_div { i32 1024000, i32 16384000, i16 16032 }, %struct.pll_div { i32 1411200, i32 22579200, i16 16032 }, %struct.pll_div { i32 1536000, i32 24576000, i16 16032 }, %struct.pll_div { i32 2048000, i32 16384000, i16 7840 }, %struct.pll_div { i32 2822400, i32 22579200, i16 7840 }, %struct.pll_div { i32 2822400, i32 45158400, i16 24256 }, %struct.pll_div { i32 5644800, i32 45158400, i16 18160 }, %struct.pll_div { i32 3072000, i32 24576000, i16 7840 }, %struct.pll_div { i32 3072000, i32 49152000, i16 24256 }, %struct.pll_div { i32 6144000, i32 49152000, i16 18160 }, %struct.pll_div { i32 705600, i32 11289600, i16 16032 }, %struct.pll_div { i32 705600, i32 8467200, i16 15024 }, %struct.pll_div { i32 24576000, i32 24576000, i16 672 }, %struct.pll_div { i32 1411200, i32 11289600, i16 5776 }, %struct.pll_div { i32 2822400, i32 11289600, i16 2704 }, %struct.pll_div { i32 1536000, i32 12288000, i16 5776 }, %struct.pll_div { i32 3072000, i32 12288000, i16 2704 }], align 4
@.str.216 = private unnamed_addr constant [26 x i8] c"change PLL in slave mode\0A\00", align 1
@.str.217 = private unnamed_addr constant [23 x i8] c"Fail to get BCLK rate\0A\00", align 1
@.str.218 = private unnamed_addr constant [19 x i8] c"Fail to get coeff\0A\00", align 1
@coeff_div = internal unnamed_addr constant [48 x %struct.coeff_clk_div] [%struct.coeff_clk_div { i32 2048000, i32 256000, i32 8000, i16 4096 }, %struct.coeff_clk_div { i32 2048000, i32 512000, i32 8000, i16 0 }, %struct.coeff_clk_div { i32 2822400, i32 352800, i32 11025, i16 4096 }, %struct.coeff_clk_div { i32 2822400, i32 705600, i32 11025, i16 0 }, %struct.coeff_clk_div { i32 4096000, i32 512000, i32 16000, i16 4096 }, %struct.coeff_clk_div { i32 4096000, i32 1024000, i32 16000, i16 0 }, %struct.coeff_clk_div { i32 5644800, i32 705600, i32 22050, i16 4096 }, %struct.coeff_clk_div { i32 5644800, i32 1411200, i32 22050, i16 0 }, %struct.coeff_clk_div { i32 8192000, i32 1024000, i32 32000, i16 4096 }, %struct.coeff_clk_div { i32 8192000, i32 2048000, i32 32000, i16 0 }, %struct.coeff_clk_div { i32 11289600, i32 1411200, i32 44100, i16 4096 }, %struct.coeff_clk_div { i32 11289600, i32 2822400, i32 44100, i16 0 }, %struct.coeff_clk_div { i32 12288000, i32 1536000, i32 48000, i16 4096 }, %struct.coeff_clk_div { i32 12288000, i32 3072000, i32 48000, i16 0 }, %struct.coeff_clk_div { i32 22579200, i32 2822400, i32 88200, i16 4096 }, %struct.coeff_clk_div { i32 22579200, i32 5644800, i32 88200, i16 0 }, %struct.coeff_clk_div { i32 24576000, i32 3072000, i32 96000, i16 4096 }, %struct.coeff_clk_div { i32 24576000, i32 6144000, i32 96000, i16 0 }, %struct.coeff_clk_div { i32 4096000, i32 256000, i32 8000, i16 12288 }, %struct.coeff_clk_div { i32 4096000, i32 512000, i32 8000, i16 8192 }, %struct.coeff_clk_div { i32 5644800, i32 352800, i32 11025, i16 12288 }, %struct.coeff_clk_div { i32 5644800, i32 705600, i32 11025, i16 8192 }, %struct.coeff_clk_div { i32 8192000, i32 512000, i32 16000, i16 12288 }, %struct.coeff_clk_div { i32 8192000, i32 1024000, i32 16000, i16 8192 }, %struct.coeff_clk_div { i32 11289600, i32 705600, i32 22050, i16 12288 }, %struct.coeff_clk_div { i32 11289600, i32 1411200, i32 22050, i16 8192 }, %struct.coeff_clk_div { i32 16384000, i32 1024000, i32 32000, i16 12288 }, %struct.coeff_clk_div { i32 16384000, i32 2048000, i32 32000, i16 8192 }, %struct.coeff_clk_div { i32 22579200, i32 1411200, i32 44100, i16 12288 }, %struct.coeff_clk_div { i32 22579200, i32 2822400, i32 44100, i16 8192 }, %struct.coeff_clk_div { i32 24576000, i32 1536000, i32 48000, i16 12288 }, %struct.coeff_clk_div { i32 24576000, i32 3072000, i32 48000, i16 8192 }, %struct.coeff_clk_div { i32 45158400, i32 2822400, i32 88200, i16 12288 }, %struct.coeff_clk_div { i32 45158400, i32 5644800, i32 88200, i16 8192 }, %struct.coeff_clk_div { i32 49152000, i32 3072000, i32 96000, i16 12288 }, %struct.coeff_clk_div { i32 49152000, i32 6144000, i32 96000, i16 8192 }, %struct.coeff_clk_div { i32 24576000, i32 256000, i32 8000, i16 28800 }, %struct.coeff_clk_div { i32 24576000, i32 512000, i32 8000, i16 24704 }, %struct.coeff_clk_div { i32 24576000, i32 512000, i32 16000, i16 20608 }, %struct.coeff_clk_div { i32 24576000, i32 1024000, i32 16000, i16 16512 }, %struct.coeff_clk_div { i32 24576000, i32 768000, i32 24000, i16 20480 }, %struct.coeff_clk_div { i32 24576000, i32 1536000, i32 24000, i16 16384 }, %struct.coeff_clk_div { i32 24576000, i32 1024000, i32 32000, i16 12416 }, %struct.coeff_clk_div { i32 24576000, i32 2048000, i32 32000, i16 8320 }, %struct.coeff_clk_div { i32 22579200, i32 352800, i32 11025, i16 28672 }, %struct.coeff_clk_div { i32 22579200, i32 705600, i32 11025, i16 24576 }, %struct.coeff_clk_div { i32 22579200, i32 705600, i32 22050, i16 20480 }, %struct.coeff_clk_div { i32 22579200, i32 1411200, i32 22050, i16 16384 }], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_license255], section "llvm.metadata"
@switch.table.rt5631_hifi_pcm_params = private unnamed_addr constant [5 x i32] [i32 12, i32 0, i32 0, i32 4, i32 8], align 4

@__mod_i2c__rt5631_i2c_id_device_table = dso_local alias [3 x %struct.i2c_device_id], ptr @rt5631_i2c_id
@__mod_of__rt5631_i2c_dt_ids_device_table = dso_local alias [3 x %struct.of_device_id], ptr @rt5631_i2c_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @rt5631_i2c_driver) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @rt5631_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5631_i2c_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 28, i32 noundef 3520) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %4, ptr %7, align 8
  %8 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @rt5631_regmap_config, ptr noundef null, ptr noundef null) #8
  store ptr %8, ptr %4, align 4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = ptrtoint ptr %8 to i32
  br label %14

12:                                               ; preds = %6
  %13 = tail call i32 @devm_snd_soc_register_component(ptr noundef %3, ptr noundef nonnull @soc_component_dev_rt5631, ptr noundef nonnull @rt5631_dai, i32 noundef 1) #8
  br label %14

14:                                               ; preds = %12, %10, %2
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ], [ -12, %2 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rt5631_i2c_remove(ptr nocapture noundef readnone %0) #3 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5631_readable_register(ptr nocapture noundef readnone %0, i32 noundef %1) #3 {
  switch i32 %1, label %3 [
    i32 0, label %4
    i32 2, label %4
    i32 4, label %4
    i32 6, label %4
    i32 10, label %4
    i32 12, label %4
    i32 14, label %4
    i32 16, label %4
    i32 18, label %4
    i32 20, label %4
    i32 22, label %4
    i32 24, label %4
    i32 26, label %4
    i32 28, label %4
    i32 30, label %4
    i32 32, label %4
    i32 34, label %4
    i32 36, label %4
    i32 38, label %4
    i32 40, label %4
    i32 42, label %4
    i32 44, label %4
    i32 52, label %4
    i32 54, label %4
    i32 56, label %4
    i32 58, label %4
    i32 59, label %4
    i32 60, label %4
    i32 62, label %4
    i32 64, label %4
    i32 66, label %4
    i32 68, label %4
    i32 72, label %4
    i32 74, label %4
    i32 76, label %4
    i32 82, label %4
    i32 84, label %4
    i32 86, label %4
    i32 90, label %4
    i32 92, label %4
    i32 100, label %4
    i32 101, label %4
    i32 102, label %4
    i32 104, label %4
    i32 106, label %4
    i32 108, label %4
    i32 110, label %4
    i32 122, label %4
    i32 124, label %4
    i32 126, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5631_volatile_register(ptr nocapture noundef readnone %0, i32 noundef %1) #3 {
  switch i32 %1, label %3 [
    i32 0, label %4
    i32 74, label %4
    i32 106, label %4
    i32 108, label %4
    i32 110, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5631_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 106, i32 noundef 82) #8
  %7 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 108) #8
  %8 = lshr i32 %7, 1
  %9 = and i32 %8, 1
  %10 = getelementptr inbounds %struct.rt5631_priv, ptr %5, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 0, i32 noundef 0) #8
  %12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 60, i32 noundef 40960, i32 noundef 40960) #8
  tail call void @msleep(i32 noundef 80) #8
  %13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 60, i32 noundef 16384, i32 noundef 16384) #8
  %14 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 74, i32 noundef 3864) #8
  %15 = load i32, ptr %10, align 4
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 0, i32 8192
  %18 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 74, i32 noundef 8192, i32 noundef %17) #8
  %19 = getelementptr inbounds %struct.rt5631_priv, ptr %5, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 76, i32 noundef 32776, i32 noundef 8) #8
  %24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 36, i32 noundef 768, i32 noundef 256) #8
  br label %25

25:                                               ; preds = %22, %1
  %26 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  store i32 1, ptr %26, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5631_set_bias_level(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  switch i32 %1, label %24 [
    i32 3, label %7
    i32 2, label %7
    i32 1, label %9
    i32 0, label %19
  ]

7:                                                ; preds = %2, %2
  %8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 59, i32 noundef 12, i32 noundef 12) #8
  br label %24

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 60, i32 noundef 40960, i32 noundef 40960) #8
  tail call void @msleep(i32 noundef 80) #8
  %15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 60, i32 noundef 16384, i32 noundef 16384) #8
  %16 = load ptr, ptr %6, align 4
  tail call void @regcache_cache_only(ptr noundef %16, i1 noundef zeroext false) #8
  %17 = load ptr, ptr %6, align 4
  %18 = tail call i32 @regcache_sync(ptr noundef %17) #8
  br label %24

19:                                               ; preds = %2
  %20 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 58, i32 noundef 0) #8
  %21 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 59, i32 noundef 0) #8
  %22 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 60, i32 noundef 0) #8
  %23 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 62, i32 noundef 0) #8
  br label %24

24:                                               ; preds = %19, %13, %9, %7, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rt5631_dmic_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.rt5631_priv, ptr %8, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %10, ptr %11, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rt5631_dmic_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rt5631_priv, ptr %8, i32 0, i32 6
  store i32 %10, ptr %11, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_dmic_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  %7 = getelementptr i8, ptr %5, i32 -92
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rt5631_priv, ptr %10, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %18 [
    i32 44100, label %15
    i32 48000, label %15
    i32 32000, label %13
    i32 22050, label %13
    i32 16000, label %14
    i32 11025, label %14
    i32 8000, label %14
  ]

13:                                               ; preds = %3, %3
  br label %15

14:                                               ; preds = %3, %3, %3
  br label %15

15:                                               ; preds = %14, %13, %3, %3
  %16 = phi i32 [ 16, %13 ], [ 0, %14 ], [ 32, %3 ], [ 32, %3 ]
  %17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 36, i32 noundef 48, i32 noundef %16) #8
  br label %18

18:                                               ; preds = %15, %3
  %19 = phi i32 [ -22, %3 ], [ 0, %15 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hp_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  %7 = getelementptr i8, ptr %5, i32 -92
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  switch i32 %2, label %23 [
    i32 4, label %11
    i32 2, label %17
  ]

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rt5631_priv, ptr %10, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call fastcc void @onebit_depop_mute_stage(ptr noundef %6, i32 noundef 0)
  tail call fastcc void @onebit_depop_power_stage(ptr noundef %6, i32 noundef 0)
  br label %23

16:                                               ; preds = %11
  tail call fastcc void @depop_seq_mute_stage(ptr noundef %6, i32 noundef 0)
  tail call fastcc void @depop_seq_power_stage(ptr noundef %6, i32 noundef 0)
  br label %23

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.rt5631_priv, ptr %10, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call fastcc void @onebit_depop_power_stage(ptr noundef %6, i32 noundef 1)
  tail call fastcc void @onebit_depop_mute_stage(ptr noundef %6, i32 noundef 1)
  br label %23

22:                                               ; preds = %17
  tail call fastcc void @depop_seq_power_stage(ptr noundef %6, i32 noundef 1)
  tail call fastcc void @depop_seq_mute_stage(ptr noundef %6, i32 noundef 1)
  br label %23

23:                                               ; preds = %22, %21, %16, %15, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @onebit_depop_mute_stage(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 86, i32 noundef 32768, i32 noundef 0) #8
  %4 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 92) #8
  %5 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 92, i32 noundef 0) #8
  %6 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 74) #8
  %7 = and i32 %6, 63487
  %8 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 74, i32 noundef %7) #8
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #8
  %12 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 106, i32 noundef 86) #8
  %13 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 108, i32 noundef 12415) #8
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i32 [ 0, %10 ], [ 32896, %2 ]
  %16 = phi i32 [ 300, %10 ], [ 100, %2 ]
  %17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 4, i32 noundef 32896, i32 noundef %15) #8
  tail call void @msleep(i32 noundef %16) #8
  %18 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 92, i32 noundef %4) #8
  %19 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 74, i32 noundef %6) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @onebit_depop_power_stage(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 86, i32 noundef 32768, i32 noundef 0) #8
  %4 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 92) #8
  %5 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 92, i32 noundef 0) #8
  %6 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 74) #8
  %7 = and i32 %6, 63487
  %8 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 74, i32 noundef %7) #8
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 106, i32 noundef 57) #8
  %12 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 108, i32 noundef 33984) #8
  %13 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 106, i32 noundef 86) #8
  %14 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 108, i32 noundef 12447) #8
  %15 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 106, i32 noundef 69) #8
  %16 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 108, i32 noundef 25904) #8
  %17 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 86, i32 noundef 16384) #8
  br label %20

18:                                               ; preds = %2
  %19 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 86, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 100) #8
  br label %20

20:                                               ; preds = %18, %10
  %21 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 92, i32 noundef %4) #8
  %22 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 74, i32 noundef %6) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @depop_seq_mute_stage(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 86, i32 noundef 32768, i32 noundef 32768) #8
  %4 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 92) #8
  %5 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 92, i32 noundef 0) #8
  %6 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 74) #8
  %7 = and i32 %6, 63487
  %8 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 74, i32 noundef %7) #8
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #8
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ 0, %10 ], [ 32896, %2 ]
  %14 = phi i32 [ 160, %10 ], [ 150, %2 ]
  %15 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 106, i32 noundef 86) #8
  %16 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 108, i32 noundef 12335) #8
  %17 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 84, i32 noundef 49155) #8
  %18 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 4, i32 noundef 32896, i32 noundef %13) #8
  tail call void @msleep(i32 noundef %14) #8
  %19 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 92, i32 noundef %4) #8
  %20 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 74, i32 noundef %6) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @depop_seq_power_stage(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 86, i32 noundef 32768, i32 noundef 32768) #8
  %4 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 92) #8
  %5 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 92, i32 noundef 0) #8
  %6 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 74) #8
  %7 = and i32 %6, 63487
  %8 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 74, i32 noundef %7) #8
  %9 = icmp eq i32 %1, 0
  %10 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 106, i32 noundef 86) #8
  br i1 %9, label %16, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 108, i32 noundef 12350) #8
  %13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 60, i32 noundef 28, i32 noundef 28) #8
  %14 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 84, i32 noundef 32896) #8
  tail call void @msleep(i32 noundef 100) #8
  %15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 60, i32 noundef 2, i32 noundef 2) #8
  br label %24

16:                                               ; preds = %2
  %17 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 108, i32 noundef 12351) #8
  %18 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 84, i32 noundef 49200) #8
  tail call void @msleep(i32 noundef 75) #8
  %19 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 84, i32 noundef 32816) #8
  %20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 60, i32 noundef 2, i32 noundef 0) #8
  %21 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 84, i32 noundef 32944) #8
  tail call void @msleep(i32 noundef 80) #8
  %22 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 84, i32 noundef 32768) #8
  %23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 60, i32 noundef 28, i32 noundef 0) #8
  br label %24

24:                                               ; preds = %16, %11
  %25 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 92, i32 noundef %4) #8
  %26 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 74, i32 noundef %6) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @check_adcl_select(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -104
  %6 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 20) #8
  %7 = lshr i32 %6, 14
  %8 = and i32 %7, 1
  %9 = xor i32 %8, 1
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @check_sysclk1_source(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -104
  %6 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 66) #8
  %7 = and i32 %6, 16384
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @check_adcr_select(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -104
  %6 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 20) #8
  %7 = lshr i32 %6, 6
  %8 = and i32 %7, 1
  %9 = xor i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @check_dmic_used(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #5 {
  %3 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -92
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.rt5631_priv, ptr %8, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @check_dacl_to_spkmixl(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -104
  %6 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 40) #8
  %7 = lshr i32 %6, 13
  %8 = and i32 %7, 1
  %9 = xor i32 %8, 1
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @check_dacr_to_spkmixr(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -104
  %6 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 40) #8
  %7 = lshr i32 %6, 5
  %8 = and i32 %7, 1
  %9 = xor i32 %8, 1
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @check_dacl_to_outmixl(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -104
  %6 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 26) #8
  %7 = lshr i32 %6, 13
  %8 = and i32 %7, 1
  %9 = xor i32 %8, 1
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @check_dacr_to_outmixr(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -104
  %6 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 28) #8
  %7 = lshr i32 %6, 13
  %8 = and i32 %7, 1
  %9 = xor i32 %8, 1
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rt5631_hifi_codec_set_dai_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = add i32 %2, -2048000
  %6 = icmp ult i32 %5, 47104001
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_soc_component, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.rt5631_priv, ptr %13, i32 0, i32 3
  store i32 %2, ptr %14, align 4
  br label %15

15:                                               ; preds = %7, %4
  %16 = phi i32 [ 0, %7 ], [ -22, %4 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5631_codec_set_dai_pll(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_component, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ne i32 %3, 0
  %11 = icmp ne i32 %4, 0
  %12 = and i1 %10, %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %5
  %14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 66, i32 noundef 49152, i32 noundef 0) #8
  br label %59

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.rt5631_priv, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %37, %15
  %22 = phi i32 [ %38, %37 ], [ 0, %15 ]
  %23 = getelementptr [34 x %struct.pll_div], ptr @codec_master_pll_div, i32 0, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %3
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = getelementptr [34 x %struct.pll_div], ptr @codec_master_pll_div, i32 0, i32 %22, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %4
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.215) #9
  %31 = getelementptr [34 x %struct.pll_div], ptr @codec_master_pll_div, i32 0, i32 %22, i32 2
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = tail call i32 @snd_soc_component_write(ptr noundef %7, i32 noundef 68, i32 noundef %33) #8
  %35 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 2) #8
  %36 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 66, i32 noundef 61440, i32 noundef 16384) #8
  br label %59

37:                                               ; preds = %26, %21
  %38 = add nuw nsw i32 %22, 1
  %39 = icmp eq i32 %38, 34
  br i1 %39, label %59, label %21

40:                                               ; preds = %56, %15
  %41 = phi i32 [ %57, %56 ], [ 0, %15 ]
  %42 = getelementptr [23 x %struct.pll_div], ptr @codec_slave_pll_div, i32 0, i32 %41
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, %3
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = getelementptr [23 x %struct.pll_div], ptr @codec_slave_pll_div, i32 0, i32 %41, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, %4
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.216) #9
  %50 = getelementptr [23 x %struct.pll_div], ptr @codec_slave_pll_div, i32 0, i32 %41, i32 2
  %51 = load i16, ptr %50, align 4
  %52 = zext i16 %51 to i32
  %53 = tail call i32 @snd_soc_component_write(ptr noundef %7, i32 noundef 68, i32 noundef %52) #8
  %54 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 2) #8
  %55 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 66, i32 noundef 61440, i32 noundef 20480) #8
  br label %59

56:                                               ; preds = %45, %40
  %57 = add nuw nsw i32 %41, 1
  %58 = icmp eq i32 %57, 23
  br i1 %58, label %59, label %40

59:                                               ; preds = %56, %49, %37, %30, %13
  %60 = phi i32 [ 0, %13 ], [ 0, %30 ], [ 0, %49 ], [ -22, %56 ], [ -22, %37 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5631_hifi_codec_set_dai_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = trunc i32 %1 to i16
  %10 = and i16 %9, -4096
  switch i16 %10, label %31 [
    i16 4096, label %12
    i16 16384, label %11
  ]

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %2
  %13 = phi i32 [ 0, %11 ], [ 1, %2 ]
  %14 = phi i32 [ 32768, %11 ], [ 0, %2 ]
  %15 = getelementptr inbounds %struct.rt5631_priv, ptr %8, i32 0, i32 2
  store i32 %13, ptr %15, align 4
  %16 = and i32 %1, 15
  switch i32 %16, label %31 [
    i32 1, label %23
    i32 3, label %17
    i32 4, label %19
    i32 5, label %21
  ]

17:                                               ; preds = %12
  %18 = or i32 %14, 1
  br label %23

19:                                               ; preds = %12
  %20 = or i32 %14, 2
  br label %23

21:                                               ; preds = %12
  %22 = or i32 %14, 3
  br label %23

23:                                               ; preds = %21, %19, %17, %12
  %24 = phi i32 [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %14, %12 ]
  %25 = and i32 %1, 3840
  switch i32 %25, label %31 [
    i32 0, label %28
    i32 768, label %26
  ]

26:                                               ; preds = %23
  %27 = or i32 %24, 128
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi i32 [ %27, %26 ], [ %24, %23 ]
  %30 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 52, i32 noundef %29) #8
  br label %31

31:                                               ; preds = %28, %23, %12, %2
  %32 = phi i32 [ 0, %28 ], [ -22, %2 ], [ -22, %12 ], [ -22, %23 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5631_hifi_pcm_params(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @snd_soc_params_to_bclk(ptr noundef %1) #8
  %11 = getelementptr inbounds %struct.rt5631_priv, ptr %9, i32 0, i32 5
  store i32 %10, ptr %11, align 4
  %12 = icmp slt i32 %10, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.217) #9
  %15 = load i32, ptr %11, align 4
  br label %96

16:                                               ; preds = %3
  %17 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.rt5631_priv, ptr %9, i32 0, i32 4
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rt5631_priv, ptr %9, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.rt5631_priv, ptr %9, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  br i1 %22, label %44, label %25

25:                                               ; preds = %16
  %26 = sdiv i32 %10, %18
  br label %27

27:                                               ; preds = %41, %25
  %28 = phi i32 [ 0, %25 ], [ %42, %41 ]
  %29 = getelementptr [48 x %struct.coeff_clk_div], ptr @coeff_div, i32 0, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %24
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = getelementptr [48 x %struct.coeff_clk_div], ptr @coeff_div, i32 0, i32 %28, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, %18
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = getelementptr [48 x %struct.coeff_clk_div], ptr @coeff_div, i32 0, i32 %28, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = udiv i32 %38, %18
  %40 = icmp eq i32 %39, %26
  br i1 %40, label %63, label %41

41:                                               ; preds = %36, %32, %27
  %42 = add nuw nsw i32 %28, 1
  %43 = icmp eq i32 %42, 48
  br i1 %43, label %61, label %27

44:                                               ; preds = %58, %16
  %45 = phi i32 [ %59, %58 ], [ 0, %16 ]
  %46 = getelementptr [48 x %struct.coeff_clk_div], ptr @coeff_div, i32 0, i32 %45
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, %24
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = getelementptr [48 x %struct.coeff_clk_div], ptr @coeff_div, i32 0, i32 %45, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, %18
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = getelementptr [48 x %struct.coeff_clk_div], ptr @coeff_div, i32 0, i32 %45, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = udiv i32 %55, %18
  %57 = icmp eq i32 %56, 32
  br i1 %57, label %63, label %58

58:                                               ; preds = %53, %49, %44
  %59 = add nuw nsw i32 %45, 1
  %60 = icmp eq i32 %59, 48
  br i1 %60, label %61, label %44

61:                                               ; preds = %58, %41
  %62 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.218) #9
  br label %96

63:                                               ; preds = %53, %36
  %64 = phi i32 [ %45, %53 ], [ %28, %36 ]
  %65 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %73, %63
  %69 = phi i32 [ 0, %63 ], [ 32, %73 ]
  %70 = phi i32 [ %66, %63 ], [ %75, %73 ]
  %71 = tail call i32 @llvm.cttz.i32(i32 %70, i1 true) #8, !range !8
  %72 = or i32 %71, %69
  br label %77

73:                                               ; preds = %63
  %74 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %68

77:                                               ; preds = %73, %68
  %78 = phi i32 [ %72, %68 ], [ 0, %73 ]
  %79 = tail call i32 @snd_pcm_format_width(i32 noundef %78) #8
  %80 = add i32 %79, -8
  %81 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 30)
  %82 = icmp ult i32 %81, 5
  br i1 %82, label %83, label %96

83:                                               ; preds = %77
  %84 = trunc i32 %81 to i8
  %85 = lshr i8 29, %84
  %86 = and i8 %85, 1
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds [5 x i32], ptr @switch.table.rt5631_hifi_pcm_params, i32 0, i32 %81
  %90 = load i32, ptr %89, align 4
  %91 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 52, i32 noundef 12, i32 noundef %90) #8
  %92 = getelementptr [48 x %struct.coeff_clk_div], ptr @coeff_div, i32 0, i32 %64, i32 3
  %93 = load i16, ptr %92, align 4
  %94 = zext i16 %93 to i32
  %95 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 56, i32 noundef %94) #8
  br label %96

96:                                               ; preds = %88, %83, %77, %61, %13
  %97 = phi i32 [ %15, %13 ], [ -22, %61 ], [ 0, %88 ], [ -22, %77 ], [ -22, %83 ]
  ret i32 %97
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_bclk(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
