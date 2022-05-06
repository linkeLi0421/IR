; ModuleID = '/llk/IR/sound/soc/codecs/wm8753.c_pt.bc'
source_filename = "../sound/soc/codecs/wm8753.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
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
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct._coeff_div = type { i32, i32, i8 }
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
%struct.wm8753_priv = type { ptr, i32, i32, i32, i32, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.79, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.79 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.74, [128 x i8] }
%union.anon.74 = type { %union.anon.76 }
%union.anon.76 = type { [64 x i64] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__param_str_caps_charge = internal constant [12 x i8] c"caps_charge\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@caps_charge = internal global i32 2000, align 4
@__param_caps_charge = internal constant %struct.kernel_param { ptr @__param_str_caps_charge, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.64 { ptr @caps_charge } }, section "__param", align 4
@__UNIQUE_ID_caps_chargetype255 = internal constant [25 x i8] c"parmtype=caps_charge:int\00", section ".modinfo", align 1
@__UNIQUE_ID_caps_charge256 = internal constant [48 x i8] c"parm=caps_charge:WM8753 cap charge time (msecs)\00", section ".modinfo", align 1
@wm8753_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wlf,wm8753\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@wm8753_i2c_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm8753\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_description257 = internal constant [31 x i8] c"description=ASoC WM8753 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author258 = internal constant [21 x i8] c"author=Liam Girdwood\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@wm8753_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @wm8753_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wm8753_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wm8753_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [44 x i8] c"\013Failed to register wm8753 I2C driver: %d\0A\00", align 1
@wm8753_spi_driver = internal global %struct.spi_driver { ptr null, ptr @wm8753_spi_probe, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wm8753_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"\013Failed to register wm8753 SPI driver: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"wm8753\00", align 1
@wm8753_regmap = internal constant %struct.regmap_config { ptr null, i32 7, i32 0, i32 0, i32 9, ptr null, ptr null, ptr @wm8753_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 63, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8753_reg_defaults, i32 64, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@soc_component_dev_wm8753 = internal constant %struct.snd_soc_component_driver { ptr null, ptr @wm8753_snd_controls, i32 53, ptr @wm8753_dapm_widgets, i32 57, ptr @wm8753_dapm_routes, i32 98, ptr @wm8753_probe, ptr null, ptr null, ptr @wm8753_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8753_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 62, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@wm8753_dai = internal global [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.254, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8753_dai_ops_hifi_mode, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.110, i64 68719476804, i32 1758, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.255, i64 68719476804, i32 1758, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.256, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8753_dai_ops_voice_mode, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.110, i64 68719476804, i32 1758, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.181, i64 68719476804, i32 1758, i32 0, i32 0, i32 1, i32 1, i32 0 }, i8 0, i32 0, i32 0 }], align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to register CODEC: %d\0A\00", align 1
@wm8753_reg_defaults = internal constant [64 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 8 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 10 }, %struct.reg_default { i32 4, i32 10 }, %struct.reg_default { i32 5, i32 51 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 7 }, %struct.reg_default { i32 8, i32 255 }, %struct.reg_default { i32 9, i32 255 }, %struct.reg_default { i32 10, i32 15 }, %struct.reg_default { i32 11, i32 15 }, %struct.reg_default { i32 12, i32 123 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 50 }, %struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 16, i32 195 }, %struct.reg_default { i32 17, i32 195 }, %struct.reg_default { i32 18, i32 192 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 85 }, %struct.reg_default { i32 33, i32 5 }, %struct.reg_default { i32 34, i32 80 }, %struct.reg_default { i32 35, i32 85 }, %struct.reg_default { i32 36, i32 80 }, %struct.reg_default { i32 37, i32 85 }, %struct.reg_default { i32 38, i32 80 }, %struct.reg_default { i32 39, i32 85 }, %struct.reg_default { i32 40, i32 121 }, %struct.reg_default { i32 41, i32 121 }, %struct.reg_default { i32 42, i32 121 }, %struct.reg_default { i32 43, i32 121 }, %struct.reg_default { i32 44, i32 121 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 151 }, %struct.reg_default { i32 50, i32 151 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 4 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 54, i32 131 }, %struct.reg_default { i32 55, i32 36 }, %struct.reg_default { i32 56, i32 442 }, %struct.reg_default { i32 57, i32 0 }, %struct.reg_default { i32 58, i32 131 }, %struct.reg_default { i32 59, i32 36 }, %struct.reg_default { i32 60, i32 442 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 62, i32 0 }, %struct.reg_default { i32 63, i32 0 }], align 4
@wm8753_snd_controls = internal constant [53 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.6, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.7 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.8, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @adc_tlv }, i32 ptrtoint (ptr @.compoundliteral.9 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.11 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.12, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.13 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.15 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.17 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.19 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @voice_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.25 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.27 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.29 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @voice_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.31 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.33 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @wm8753_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 28) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 56) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @rec_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @rec_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 644) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 672) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 84) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 112) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 140) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 168) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 196) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.77 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.79 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.81 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.83 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 224) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 252) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 280) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @mic_preamp_tlv }, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @mic_preamp_tlv }, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @wm8753_get_dai, ptr @wm8753_set_dai, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 728) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 756) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 784) to i32) }], align 4
@wm8753_dapm_routes = internal constant [98 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.165, ptr @.str.224, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr @.str.220, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr @.str.222, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr @.str.226, ptr @.str.203, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.230, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.220, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.222, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.226, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr @.str.220, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr @.str.224, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr @.str.230, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr @.str.222, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr @.str.226, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr null, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr null, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr null, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr null, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr null, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr null, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr null, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr null, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr @.str.138, ptr @.str.185, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr @.str.137, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr @.str.106, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr @.str.105, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr null, ptr @.str.183, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr null, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr null, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr @.str.139, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr @.str.138, ptr @.str.185, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr @.str.140, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr null, ptr @.str.186, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr null, ptr @.str.187, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr @.str.139, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr @.str.141, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr @.str.142, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr null, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr @.str.241, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr @.str.239, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr @.str.243, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr @.str.133, ptr @.str.200, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr @.str.136, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr @.str.134, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr @.str.135, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.197, ptr @.str.143, ptr @.str.200, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.197, ptr @.str.144, ptr @.str.203, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.197, ptr @.str.146, ptr @.str.211, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.198, ptr @.str.143, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.198, ptr @.str.144, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.198, ptr @.str.145, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr @.str.107, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr @.str.107, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr @.str.147, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr @.str.147, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr @.str.148, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr @.str.148, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr @.str.149, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr @.str.149, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr @.str.149, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr @.str.149, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr null, ptr @.str.195, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.196, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.200, ptr null, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr null, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr @.str.245, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr @.str.247, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr @.str.249, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr @.str.251, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr @.str.125, ptr @.str.211, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr @.str.128, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr @.str.126, ptr @.str.212, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr @.str.128, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr @.str.127, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr @.str.128, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.123, ptr @.str.211, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.124, ptr @.str.211, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.123, ptr @.str.212, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.124, ptr @.str.212, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.125, ptr @.str.211, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.126, ptr @.str.212, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.129, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.130, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.129, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.130, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.131, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.132, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr null, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr null, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr null, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr null, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr @.str.134, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr @.str.135, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr @.str.156, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.214, ptr null, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Hi-Fi DAC Left/Right channel Swap\00", align 1
@.compoundliteral = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"PCM Volume\00", align 1
@dac_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -12750, i32 65586], align 4
@.compoundliteral.7 = internal global %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 8, i32 9, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"ADC Capture Volume\00", align 1
@adc_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -9750, i32 65586], align 4
@.compoundliteral.9 = internal global %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 16, i32 17, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"Headphone Playback Volume\00", align 1
@out_tlv = internal constant [14 x i32] [i32 3, i32 48, i32 0, i32 48, i32 1, i32 8, i32 -25500, i32 0, i32 48, i32 127, i32 1, i32 8, i32 -7300, i32 100], align 4
@.compoundliteral.11 = internal global %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 40, i32 41, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"Speaker Playback Volume\00", align 1
@.compoundliteral.13 = internal global %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 42, i32 43, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.14 = private unnamed_addr constant [21 x i8] c"Mono Playback Volume\00", align 1
@.compoundliteral.15 = internal global %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 44, i32 44, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.16 = private unnamed_addr constant [23 x i8] c"Bypass Playback Volume\00", align 1
@mix_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -1500, i32 300], align 4
@.compoundliteral.17 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 34, i32 36, i32 4, i32 4, i32 0, i8 1 }, align 4
@.str.18 = private unnamed_addr constant [25 x i8] c"Sidetone Playback Volume\00", align 1
@.compoundliteral.19 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 35, i32 37, i32 4, i32 4, i32 0, i8 1 }, align 4
@.str.20 = private unnamed_addr constant [22 x i8] c"Voice Playback Volume\00", align 1
@voice_mix_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -1200, i32 300], align 4
@.compoundliteral.21 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 35, i32 37, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.22 = private unnamed_addr constant [29 x i8] c"Headphone Playback ZC Switch\00", align 1
@.compoundliteral.23 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 41, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.24 = private unnamed_addr constant [27 x i8] c"Speaker Playback ZC Switch\00", align 1
@.compoundliteral.25 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 43, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.26 = private unnamed_addr constant [28 x i8] c"Mono Bypass Playback Volume\00", align 1
@.compoundliteral.27 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 38, i32 38, i32 4, i32 4, i32 0, i8 1 }, align 4
@.str.28 = private unnamed_addr constant [30 x i8] c"Mono Sidetone Playback Volume\00", align 1
@.compoundliteral.29 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 39, i32 39, i32 4, i32 4, i32 0, i8 1 }, align 4
@.str.30 = private unnamed_addr constant [27 x i8] c"Mono Voice Playback Volume\00", align 1
@.compoundliteral.31 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 39, i32 39, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.32 = private unnamed_addr constant [24 x i8] c"Mono Playback ZC Switch\00", align 1
@.compoundliteral.33 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.34 = private unnamed_addr constant [11 x i8] c"Bass Boost\00", align 1
@wm8753_enum = internal constant [29 x %struct.soc_enum] [%struct.soc_enum { i32 10, i8 7, i8 7, i32 2, i32 1, ptr @wm8753_base, ptr null, i8 0 }, %struct.soc_enum { i32 10, i8 4, i8 4, i32 6, i32 7, ptr @wm8753_base_filter, ptr null, i8 0 }, %struct.soc_enum { i32 11, i8 6, i8 6, i32 2, i32 1, ptr @wm8753_treble, ptr null, i8 0 }, %struct.soc_enum { i32 12, i8 7, i8 7, i32 4, i32 3, ptr @wm8753_alc_func, ptr null, i8 0 }, %struct.soc_enum { i32 15, i8 1, i8 1, i32 2, i32 1, ptr @wm8753_ng_type, ptr null, i8 0 }, %struct.soc_enum { i32 19, i8 7, i8 7, i32 2, i32 1, ptr @wm8753_3d_func, ptr null, i8 0 }, %struct.soc_enum { i32 19, i8 6, i8 6, i32 2, i32 1, ptr @wm8753_3d_uc, ptr null, i8 0 }, %struct.soc_enum { i32 19, i8 5, i8 5, i32 2, i32 1, ptr @wm8753_3d_lc, ptr null, i8 0 }, %struct.soc_enum { i32 1, i8 1, i8 1, i32 4, i32 3, ptr @wm8753_deemp, ptr null, i8 0 }, %struct.soc_enum { i32 1, i8 4, i8 4, i32 4, i32 3, ptr @wm8753_mono_mix, ptr null, i8 0 }, %struct.soc_enum { i32 1, i8 6, i8 6, i32 2, i32 1, ptr @wm8753_dac_phase, ptr null, i8 0 }, %struct.soc_enum { i32 47, i8 3, i8 3, i32 4, i32 3, ptr @wm8753_line_mix, ptr null, i8 0 }, %struct.soc_enum { i32 47, i8 2, i8 2, i32 2, i32 1, ptr @wm8753_mono_mux, ptr null, i8 0 }, %struct.soc_enum { i32 47, i8 1, i8 1, i32 2, i32 1, ptr @wm8753_right_mux, ptr null, i8 0 }, %struct.soc_enum { i32 47, i8 0, i8 0, i32 2, i32 1, ptr @wm8753_left_mux, ptr null, i8 0 }, %struct.soc_enum { i32 48, i8 6, i8 6, i32 4, i32 3, ptr @wm8753_rxmsel, ptr null, i8 0 }, %struct.soc_enum { i32 48, i8 4, i8 4, i32 4, i32 3, ptr @wm8753_sidetone_mux, ptr null, i8 0 }, %struct.soc_enum { i32 45, i8 7, i8 7, i32 4, i32 3, ptr @wm8753_mono2_src, ptr null, i8 0 }, %struct.soc_enum { i32 45, i8 0, i8 0, i32 3, i32 3, ptr @wm8753_out3, ptr null, i8 0 }, %struct.soc_enum { i32 63, i8 7, i8 7, i32 3, i32 3, ptr @wm8753_out4, ptr null, i8 0 }, %struct.soc_enum { i32 46, i8 2, i8 2, i32 3, i32 3, ptr @wm8753_radcsel, ptr null, i8 0 }, %struct.soc_enum { i32 46, i8 0, i8 0, i32 3, i32 3, ptr @wm8753_ladcsel, ptr null, i8 0 }, %struct.soc_enum { i32 46, i8 4, i8 4, i32 4, i32 3, ptr @wm8753_mono_adc, ptr null, i8 0 }, %struct.soc_enum { i32 2, i8 2, i8 2, i32 4, i32 3, ptr @wm8753_adc_hp, ptr null, i8 0 }, %struct.soc_enum { i32 2, i8 4, i8 4, i32 2, i32 1, ptr @wm8753_adc_filter, ptr null, i8 0 }, %struct.soc_enum { i32 51, i8 6, i8 6, i32 3, i32 3, ptr @wm8753_mic_sel, ptr null, i8 0 }, %struct.soc_enum { i32 5, i8 2, i8 2, i32 4, i32 3, ptr @wm8753_dai_mode, ptr null, i8 0 }, %struct.soc_enum { i32 2, i8 7, i8 7, i32 4, i32 3, ptr @wm8753_dat_sel, ptr null, i8 0 }, %struct.soc_enum { i32 45, i8 2, i8 2, i32 2, i32 1, ptr @wm8753_rout2_phase, ptr null, i8 0 }], align 4
@.str.35 = private unnamed_addr constant [12 x i8] c"Bass Filter\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"Bass Volume\00", align 1
@.compoundliteral.37 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 10, i32 10, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.38 = private unnamed_addr constant [14 x i8] c"Treble Volume\00", align 1
@.compoundliteral.39 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 11, i32 11, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.40 = private unnamed_addr constant [15 x i8] c"Treble Cut-off\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"Sidetone Capture Volume\00", align 1
@rec_mix_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -1500, i32 300], align 4
@.compoundliteral.42 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 32, i32 32, i32 0, i32 4, i32 0, i8 1 }, align 4
@.str.43 = private unnamed_addr constant [30 x i8] c"Voice Sidetone Capture Volume\00", align 1
@.compoundliteral.44 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 33, i32 33, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.45 = private unnamed_addr constant [15 x i8] c"Capture Volume\00", align 1
@pga_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -1725, i32 75], align 4
@.compoundliteral.46 = internal global %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 49, i32 50, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.47 = private unnamed_addr constant [18 x i8] c"Capture ZC Switch\00", align 1
@.compoundliteral.48 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 49, i32 50, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.49 = private unnamed_addr constant [15 x i8] c"Capture Switch\00", align 1
@.compoundliteral.50 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 49, i32 50, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.51 = private unnamed_addr constant [22 x i8] c"Capture Filter Select\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"Capture Filter Cut-off\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"Capture Filter Switch\00", align 1
@.compoundliteral.54 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.55 = private unnamed_addr constant [26 x i8] c"ALC Capture Target Volume\00", align 1
@.compoundliteral.56 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 12, i32 12, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.57 = private unnamed_addr constant [23 x i8] c"ALC Capture Max Volume\00", align 1
@.compoundliteral.58 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 12, i32 12, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.59 = private unnamed_addr constant [21 x i8] c"ALC Capture Function\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"ALC Capture ZC Switch\00", align 1
@.compoundliteral.61 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13, i32 13, i32 8, i32 8, i32 0, i8 0 }, align 4
@.str.62 = private unnamed_addr constant [22 x i8] c"ALC Capture Hold Time\00", align 1
@.compoundliteral.63 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 13, i32 13, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.64 = private unnamed_addr constant [23 x i8] c"ALC Capture Decay Time\00", align 1
@.compoundliteral.65 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 14, i32 14, i32 4, i32 4, i32 0, i8 1 }, align 4
@.str.66 = private unnamed_addr constant [24 x i8] c"ALC Capture Attack Time\00", align 1
@.compoundliteral.67 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 14, i32 14, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.68 = private unnamed_addr constant [25 x i8] c"ALC Capture NG Threshold\00", align 1
@.compoundliteral.69 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 15, i32 15, i32 3, i32 3, i32 0, i8 0 }, align 4
@.str.70 = private unnamed_addr constant [20 x i8] c"ALC Capture NG Type\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"ALC Capture NG Switch\00", align 1
@.compoundliteral.72 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 15, i32 15, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.73 = private unnamed_addr constant [12 x i8] c"3D Function\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"3D Upper Cut-off\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"3D Lower Cut-off\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"3D Volume\00", align 1
@.compoundliteral.77 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 19, i32 19, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.78 = private unnamed_addr constant [10 x i8] c"3D Switch\00", align 1
@.compoundliteral.79 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 19, i32 19, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.80 = private unnamed_addr constant [22 x i8] c"Capture 6dB Attenuate\00", align 1
@.compoundliteral.81 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 18, i32 18, i32 2, i32 2, i32 0, i8 0 }, align 4
@.str.82 = private unnamed_addr constant [23 x i8] c"Playback 6dB Attenuate\00", align 1
@.compoundliteral.83 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 18, i32 18, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.84 = private unnamed_addr constant [12 x i8] c"De-emphasis\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"Playback Mono Mix\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"Playback Phase\00", align 1
@.str.87 = private unnamed_addr constant [20 x i8] c"Mic2 Capture Volume\00", align 1
@mic_preamp_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 1200, i32 600], align 4
@.compoundliteral.88 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 47, i32 47, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.89 = private unnamed_addr constant [20 x i8] c"Mic1 Capture Volume\00", align 1
@.compoundliteral.90 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 47, i32 47, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.91 = private unnamed_addr constant [9 x i8] c"DAI Mode\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"ADC Data Select\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"ROUT2 Phase\00", align 1
@wm8753_base = internal global [2 x ptr] [ptr @.str.94, ptr @.str.95], align 4
@wm8753_base_filter = internal global [6 x ptr] [ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101], align 4
@wm8753_treble = internal global [2 x ptr] [ptr @.str.102, ptr @.str.103], align 4
@wm8753_alc_func = internal global [4 x ptr] [ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107], align 4
@wm8753_ng_type = internal global [2 x ptr] [ptr @.str.108, ptr @.str.109], align 4
@wm8753_3d_func = internal global [2 x ptr] [ptr @.str.110, ptr @.str.111], align 4
@wm8753_3d_uc = internal global [2 x ptr] [ptr @.str.112, ptr @.str.113], align 4
@wm8753_3d_lc = internal global [2 x ptr] [ptr @.str.114, ptr @.str.115], align 4
@wm8753_deemp = internal global [4 x ptr] [ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119], align 4
@wm8753_mono_mix = internal global [4 x ptr] [ptr @.str.107, ptr @.str.106, ptr @.str.105, ptr @.str.120], align 4
@wm8753_dac_phase = internal global [2 x ptr] [ptr @.str.121, ptr @.str.122], align 4
@wm8753_line_mix = internal global [4 x ptr] [ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126], align 4
@wm8753_mono_mux = internal global [2 x ptr] [ptr @.str.127, ptr @.str.128], align 4
@wm8753_right_mux = internal global [2 x ptr] [ptr @.str.126, ptr @.str.128], align 4
@wm8753_left_mux = internal global [2 x ptr] [ptr @.str.125, ptr @.str.128], align 4
@wm8753_rxmsel = internal global [4 x ptr] [ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132], align 4
@wm8753_sidetone_mux = internal global [4 x ptr] [ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136], align 4
@wm8753_mono2_src = internal global [4 x ptr] [ptr @.str.137, ptr @.str.106, ptr @.str.105, ptr @.str.138], align 4
@wm8753_out3 = internal global [3 x ptr] [ptr @.str.139, ptr @.str.140, ptr @.str.138], align 4
@wm8753_out4 = internal global [3 x ptr] [ptr @.str.139, ptr @.str.141, ptr @.str.142], align 4
@wm8753_radcsel = internal global [3 x ptr] [ptr @.str.143, ptr @.str.144, ptr @.str.145], align 4
@wm8753_ladcsel = internal global [3 x ptr] [ptr @.str.143, ptr @.str.144, ptr @.str.146], align 4
@wm8753_mono_adc = internal global [4 x ptr] [ptr @.str.107, ptr @.str.147, ptr @.str.148, ptr @.str.149], align 4
@wm8753_adc_hp = internal global [4 x ptr] [ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153], align 4
@wm8753_adc_filter = internal global [2 x ptr] [ptr @.str.154, ptr @.str.155], align 4
@wm8753_mic_sel = internal global [3 x ptr] [ptr @.str.134, ptr @.str.135, ptr @.str.156], align 4
@wm8753_dai_mode = internal global [4 x ptr] [ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160], align 4
@wm8753_dat_sel = internal global [4 x ptr] [ptr @.str.107, ptr @.str.161, ptr @.str.162, ptr @.str.163], align 4
@wm8753_rout2_phase = internal global [2 x ptr] [ptr @.str.121, ptr @.str.122], align 4
@.str.94 = private unnamed_addr constant [15 x i8] c"Linear Control\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"Adaptive Boost\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"130Hz @ 48kHz\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c"200Hz @ 48kHz\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"100Hz @ 16kHz\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"400Hz @ 48kHz\00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"100Hz @ 8kHz\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"200Hz @ 8kHz\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"8kHz\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"4kHz\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"Stereo\00", align 1
@.str.108 = private unnamed_addr constant [18 x i8] c"Constant PGA Gain\00", align 1
@.str.109 = private unnamed_addr constant [16 x i8] c"Mute ADC Output\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"Capture\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"Playback\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"2.2kHz\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"1.5kHz\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"200Hz\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"500Hz\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"32kHz\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"44.1kHz\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"48kHz\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"Mono\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"Non Inverted\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"Inverted\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"Line 1 + 2\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"Line 1 - 2\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"Line 1\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"Line 2\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c"Line Mix\00", align 1
@.str.128 = private unnamed_addr constant [7 x i8] c"Rx Mix\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"RXP - RXN\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"RXP + RXN\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"RXP\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"RXN\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c"Left PGA\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"Mic 1\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"Mic 2\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"Right PGA\00", align 1
@.str.137 = private unnamed_addr constant [16 x i8] c"Inverted Mono 1\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"Left + Right\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"VREF\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"ROUT2\00", align 1
@.str.141 = private unnamed_addr constant [11 x i8] c"Capture ST\00", align 1
@.str.142 = private unnamed_addr constant [6 x i8] c"LOUT2\00", align 1
@.str.143 = private unnamed_addr constant [4 x i8] c"PGA\00", align 1
@.str.144 = private unnamed_addr constant [16 x i8] c"Line or RXP-RXN\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"Sidetone\00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.147 = private unnamed_addr constant [18 x i8] c"Analogue Mix Left\00", align 1
@.str.148 = private unnamed_addr constant [19 x i8] c"Analogue Mix Right\00", align 1
@.str.149 = private unnamed_addr constant [17 x i8] c"Digital Mono Mix\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c"3.4Hz @ 48kHz\00", align 1
@.str.151 = private unnamed_addr constant [11 x i8] c"82Hz @ 16k\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"82Hz @ 8kHz\00", align 1
@.str.153 = private unnamed_addr constant [13 x i8] c"170Hz @ 8kHz\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"HiFi\00", align 1
@.str.155 = private unnamed_addr constant [6 x i8] c"Voice\00", align 1
@.str.156 = private unnamed_addr constant [6 x i8] c"Mic 3\00", align 1
@.str.157 = private unnamed_addr constant [6 x i8] c"DAI 0\00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c"DAI 1\00", align 1
@.str.159 = private unnamed_addr constant [6 x i8] c"DAI 2\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"DAI 3\00", align 1
@.str.161 = private unnamed_addr constant [9 x i8] c"Left ADC\00", align 1
@.str.162 = private unnamed_addr constant [10 x i8] c"Right ADC\00", align 1
@.str.163 = private unnamed_addr constant [13 x i8] c"Channel Swap\00", align 1
@.str.164 = private unnamed_addr constant [9 x i8] c"Mic Bias\00", align 1
@.str.165 = private unnamed_addr constant [11 x i8] c"Left Mixer\00", align 1
@wm8753_left_mixer_controls = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.220, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.221 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.222, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.223 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.224, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.225 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.226, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.227 to i32) }], align 4
@.str.166 = private unnamed_addr constant [11 x i8] c"Left Out 1\00", align 1
@.str.167 = private unnamed_addr constant [11 x i8] c"Left Out 2\00", align 1
@.str.168 = private unnamed_addr constant [9 x i8] c"Left DAC\00", align 1
@.str.169 = private unnamed_addr constant [19 x i8] c"Left HiFi Playback\00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c"LOUT1\00", align 1
@.str.171 = private unnamed_addr constant [12 x i8] c"Right Mixer\00", align 1
@wm8753_right_mixer_controls = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.220, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.228 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.222, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.229 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.230, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.231 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.226, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.232 to i32) }], align 4
@.str.172 = private unnamed_addr constant [12 x i8] c"Right Out 1\00", align 1
@.str.173 = private unnamed_addr constant [12 x i8] c"Right Out 2\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c"Right DAC\00", align 1
@.str.175 = private unnamed_addr constant [20 x i8] c"Right HiFi Playback\00", align 1
@.str.176 = private unnamed_addr constant [6 x i8] c"ROUT1\00", align 1
@.str.177 = private unnamed_addr constant [11 x i8] c"Mono Mixer\00", align 1
@wm8753_mono_mixer_controls = internal constant [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.224, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.233 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.230, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.234 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.220, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.235 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.222, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.236 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.226, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.237 to i32) }], align 4
@.str.178 = private unnamed_addr constant [11 x i8] c"Mono Out 1\00", align 1
@.str.179 = private unnamed_addr constant [11 x i8] c"Mono Out 2\00", align 1
@.str.180 = private unnamed_addr constant [10 x i8] c"Voice DAC\00", align 1
@.str.181 = private unnamed_addr constant [15 x i8] c"Voice Playback\00", align 1
@.str.182 = private unnamed_addr constant [6 x i8] c"MONO1\00", align 1
@.str.183 = private unnamed_addr constant [11 x i8] c"Mono 2 Mux\00", align 1
@wm8753_mono2_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 476) to i32) }, align 4
@.str.184 = private unnamed_addr constant [6 x i8] c"MONO2\00", align 1
@.str.185 = private unnamed_addr constant [18 x i8] c"Out3 Left + Right\00", align 1
@.str.186 = private unnamed_addr constant [9 x i8] c"Out3 Mux\00", align 1
@wm8753_out3_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 504) to i32) }, align 4
@.str.187 = private unnamed_addr constant [6 x i8] c"Out 3\00", align 1
@.str.188 = private unnamed_addr constant [5 x i8] c"OUT3\00", align 1
@.str.189 = private unnamed_addr constant [9 x i8] c"Out4 Mux\00", align 1
@wm8753_out4_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 532) to i32) }, align 4
@.str.190 = private unnamed_addr constant [6 x i8] c"Out 4\00", align 1
@.str.191 = private unnamed_addr constant [5 x i8] c"OUT4\00", align 1
@.str.192 = private unnamed_addr constant [15 x i8] c"Playback Mixer\00", align 1
@wm8753_record_mixer_controls = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.239, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.240 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.241, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.242 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.243, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.244 to i32) }], align 4
@.str.193 = private unnamed_addr constant [13 x i8] c"Left Capture\00", align 1
@.str.194 = private unnamed_addr constant [14 x i8] c"Right Capture\00", align 1
@.str.195 = private unnamed_addr constant [19 x i8] c"Capture Left Mixer\00", align 1
@wm8753_adc_mono_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 616) to i32) }, align 4
@.str.196 = private unnamed_addr constant [20 x i8] c"Capture Right Mixer\00", align 1
@.str.197 = private unnamed_addr constant [17 x i8] c"Capture Left Mux\00", align 1
@wm8753_adc_left_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 588) to i32) }, align 4
@.str.198 = private unnamed_addr constant [18 x i8] c"Capture Right Mux\00", align 1
@wm8753_adc_right_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 560) to i32) }, align 4
@.str.199 = private unnamed_addr constant [17 x i8] c"Mic Sidetone Mux\00", align 1
@wm8753_mic_mux_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 448) to i32) }, align 4
@.str.200 = private unnamed_addr constant [20 x i8] c"Left Capture Volume\00", align 1
@.str.201 = private unnamed_addr constant [21 x i8] c"Right Capture Volume\00", align 1
@.str.202 = private unnamed_addr constant [10 x i8] c"ALC Mixer\00", align 1
@wm8753_alc_mixer_controls = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.246 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.247, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.248 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.250 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.251, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.252 to i32) }], align 4
@.str.203 = private unnamed_addr constant [14 x i8] c"Line Left Mux\00", align 1
@wm8753_line_left_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 392) to i32) }, align 4
@.str.204 = private unnamed_addr constant [15 x i8] c"Line Right Mux\00", align 1
@wm8753_line_right_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 364) to i32) }, align 4
@.str.205 = private unnamed_addr constant [14 x i8] c"Line Mono Mux\00", align 1
@wm8753_line_mono_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 336) to i32) }, align 4
@.str.206 = private unnamed_addr constant [11 x i8] c"Line Mixer\00", align 1
@wm8753_line_mux_mix_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 308) to i32) }, align 4
@.str.207 = private unnamed_addr constant [9 x i8] c"Rx Mixer\00", align 1
@wm8753_rx_mux_mix_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 420) to i32) }, align 4
@.str.208 = private unnamed_addr constant [13 x i8] c"Mic 1 Volume\00", align 1
@.str.209 = private unnamed_addr constant [13 x i8] c"Mic 2 Volume\00", align 1
@.str.210 = private unnamed_addr constant [18 x i8] c"Mic Selection Mux\00", align 1
@wm8753_mic_sel_mux_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8753_enum, i64 700) to i32) }, align 4
@.str.211 = private unnamed_addr constant [6 x i8] c"LINE1\00", align 1
@.str.212 = private unnamed_addr constant [6 x i8] c"LINE2\00", align 1
@.str.213 = private unnamed_addr constant [5 x i8] c"ACIN\00", align 1
@.str.214 = private unnamed_addr constant [5 x i8] c"ACOP\00", align 1
@.str.215 = private unnamed_addr constant [6 x i8] c"MIC1N\00", align 1
@.str.216 = private unnamed_addr constant [5 x i8] c"MIC1\00", align 1
@.str.217 = private unnamed_addr constant [6 x i8] c"MIC2N\00", align 1
@.str.218 = private unnamed_addr constant [5 x i8] c"MIC2\00", align 1
@wm8753_dapm_widgets = internal constant [57 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.164, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 20, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.165, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 23, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @wm8753_left_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.167, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.168, ptr @.str.169, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 20, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.142, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 23, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @wm8753_right_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.172, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.173, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.174, ptr @.str.175, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 20, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.176, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.140, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.177, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 23, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @wm8753_mono_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.178, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.179, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.180, ptr @.str.181, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 20, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.182, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.183, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm8753_mono2_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.184, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.185, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.186, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm8753_out3_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.187, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.188, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.189, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm8753_out4_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.190, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.191, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.192, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 23, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @wm8753_record_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.161, ptr @.str.193, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 21, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.162, ptr @.str.194, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 21, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.195, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm8753_adc_mono_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.196, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm8753_adc_mono_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.197, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm8753_adc_left_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.198, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm8753_adc_right_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.199, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm8753_mic_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.200, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 21, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.201, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 21, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.202, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 21, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @wm8753_alc_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.203, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm8753_line_left_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.204, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm8753_line_right_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.205, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm8753_line_mono_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.206, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 21, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm8753_line_mux_mix_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.207, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 21, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm8753_rx_mux_mix_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.208, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 21, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.209, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 21, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.210, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm8753_mic_sel_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.211, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.212, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.213, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.214, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.215, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.216, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.217, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.218, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 16, ptr @.str.139, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.220 = private unnamed_addr constant [22 x i8] c"Voice Playback Switch\00", align 1
@.compoundliteral.221 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 35, i32 35, i32 8, i32 8, i32 0, i8 0 }, align 4
@.str.222 = private unnamed_addr constant [25 x i8] c"Sidetone Playback Switch\00", align 1
@.compoundliteral.223 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 35, i32 35, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.224 = private unnamed_addr constant [21 x i8] c"Left Playback Switch\00", align 1
@.compoundliteral.225 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 8, i32 8, i32 0, i8 0 }, align 4
@.str.226 = private unnamed_addr constant [23 x i8] c"Bypass Playback Switch\00", align 1
@.compoundliteral.227 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 7, i32 7, i32 0, i8 0 }, align 4
@.compoundliteral.228 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 8, i32 8, i32 0, i8 0 }, align 4
@.compoundliteral.229 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.230 = private unnamed_addr constant [22 x i8] c"Right Playback Switch\00", align 1
@.compoundliteral.231 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 8, i32 8, i32 0, i8 0 }, align 4
@.compoundliteral.232 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 7, i32 7, i32 0, i8 0 }, align 4
@.compoundliteral.233 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 8, i32 8, i32 0, i8 0 }, align 4
@.compoundliteral.234 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 8, i32 8, i32 0, i8 0 }, align 4
@.compoundliteral.235 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.236 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 7, i32 7, i32 0, i8 0 }, align 4
@.compoundliteral.237 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.238 = private unnamed_addr constant [6 x i8] c"Route\00", align 1
@.str.239 = private unnamed_addr constant [21 x i8] c"Voice Capture Switch\00", align 1
@.compoundliteral.240 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 33, i32 33, i32 3, i32 3, i32 0, i8 0 }, align 4
@.str.241 = private unnamed_addr constant [20 x i8] c"Left Capture Switch\00", align 1
@.compoundliteral.242 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 3, i32 3, i32 0, i8 0 }, align 4
@.str.243 = private unnamed_addr constant [21 x i8] c"Right Capture Switch\00", align 1
@.compoundliteral.244 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.245 = private unnamed_addr constant [20 x i8] c"Line Capture Switch\00", align 1
@.compoundliteral.246 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 48, i32 48, i32 3, i32 3, i32 0, i8 0 }, align 4
@.str.247 = private unnamed_addr constant [20 x i8] c"Mic2 Capture Switch\00", align 1
@.compoundliteral.248 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 48, i32 48, i32 2, i32 2, i32 0, i8 0 }, align 4
@.str.249 = private unnamed_addr constant [20 x i8] c"Mic1 Capture Switch\00", align 1
@.compoundliteral.250 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 48, i32 48, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.251 = private unnamed_addr constant [18 x i8] c"Rx Capture Switch\00", align 1
@.compoundliteral.252 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 48, i32 48, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.253 = private unnamed_addr constant [27 x i8] c"Failed to issue reset: %d\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.254 = private unnamed_addr constant [12 x i8] c"wm8753-hifi\00", align 1
@wm8753_dai_ops_hifi_mode = internal constant %struct.snd_soc_dai_ops { ptr @wm8753_set_dai_sysclk, ptr @wm8753_set_dai_pll, ptr @wm8753_set_dai_clkdiv, ptr null, ptr @wm8753_hifi_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8753_mute, ptr null, ptr null, ptr @wm8753_i2s_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 1 }, align 4
@.str.255 = private unnamed_addr constant [14 x i8] c"HiFi Playback\00", align 1
@.str.256 = private unnamed_addr constant [13 x i8] c"wm8753-voice\00", align 1
@wm8753_dai_ops_voice_mode = internal constant %struct.snd_soc_dai_ops { ptr @wm8753_set_dai_sysclk, ptr @wm8753_set_dai_pll, ptr @wm8753_set_dai_clkdiv, ptr null, ptr @wm8753_voice_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8753_mute, ptr null, ptr null, ptr @wm8753_pcm_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 1 }, align 4
@.str.257 = private unnamed_addr constant [30 x i8] c"\014wm8753: unsupported N = %u\0A\00", align 1
@.str.258 = private unnamed_addr constant [31 x i8] c"\013wm8753 invalid MCLK or rate\0A\00", align 1
@coeff_div = internal unnamed_addr constant [29 x %struct._coeff_div] [%struct._coeff_div { i32 12288000, i32 8000, i8 6 }, %struct._coeff_div { i32 11289600, i32 8000, i8 22 }, %struct._coeff_div { i32 18432000, i32 8000, i8 7 }, %struct._coeff_div { i32 16934400, i32 8000, i8 23 }, %struct._coeff_div { i32 12000000, i32 8000, i8 38 }, %struct._coeff_div { i32 11289600, i32 11025, i8 24 }, %struct._coeff_div { i32 16934400, i32 11025, i8 25 }, %struct._coeff_div { i32 12000000, i32 11025, i8 57 }, %struct._coeff_div { i32 12288000, i32 16000, i8 10 }, %struct._coeff_div { i32 18432000, i32 16000, i8 11 }, %struct._coeff_div { i32 12000000, i32 16000, i8 42 }, %struct._coeff_div { i32 11289600, i32 22050, i8 26 }, %struct._coeff_div { i32 16934400, i32 22050, i8 27 }, %struct._coeff_div { i32 12000000, i32 22050, i8 59 }, %struct._coeff_div { i32 12288000, i32 32000, i8 12 }, %struct._coeff_div { i32 18432000, i32 32000, i8 13 }, %struct._coeff_div { i32 12000000, i32 32000, i8 42 }, %struct._coeff_div { i32 11289600, i32 44100, i8 16 }, %struct._coeff_div { i32 16934400, i32 44100, i8 17 }, %struct._coeff_div { i32 12000000, i32 44100, i8 49 }, %struct._coeff_div { i32 12288000, i32 48000, i8 0 }, %struct._coeff_div { i32 18432000, i32 48000, i8 1 }, %struct._coeff_div { i32 12000000, i32 48000, i8 32 }, %struct._coeff_div { i32 11289600, i32 88200, i8 30 }, %struct._coeff_div { i32 16934400, i32 88200, i8 31 }, %struct._coeff_div { i32 12000000, i32 88200, i8 63 }, %struct._coeff_div { i32 12288000, i32 96000, i8 14 }, %struct._coeff_div { i32 18432000, i32 96000, i8 15 }, %struct._coeff_div { i32 12000000, i32 96000, i8 46 }], align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author258, ptr @__UNIQUE_ID_caps_charge256, ptr @__UNIQUE_ID_caps_chargetype255, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_license259, ptr @__param_caps_charge], section "llvm.metadata"
@switch.table.wm8753_set_dai_clkdiv = private unnamed_addr constant [3 x i32] [i32 52, i32 7, i32 7], align 4
@switch.table.wm8753_set_dai_clkdiv.259 = private unnamed_addr constant [3 x i32] [i32 63, i32 455, i32 63], align 4

@__mod_of__wm8753_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @wm8753_of_match
@__mod_i2c__wm8753_i2c_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @wm8753_i2c_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @wm8753_i2c_driver) #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %1) #8
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call i32 @__spi_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @wm8753_spi_driver) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %6) #8
  br label %10

10:                                               ; preds = %8, %5
  ret i32 %6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @wm8753_i2c_driver) #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @wm8753_spi_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8753_i2c_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #3 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 68, i32 noundef 3520) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %4, ptr %7, align 8
  %8 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @wm8753_regmap, ptr noundef null, ptr noundef null) #7
  store ptr %8, ptr %4, align 4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = ptrtoint ptr %8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %11) #8
  br label %16

12:                                               ; preds = %6
  %13 = tail call i32 @devm_snd_soc_register_component(ptr noundef %3, ptr noundef nonnull @soc_component_dev_wm8753, ptr noundef nonnull @wm8753_dai, i32 noundef 2) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %13) #8
  br label %16

16:                                               ; preds = %15, %12, %10, %2
  %17 = phi i32 [ %11, %10 ], [ -12, %2 ], [ %13, %15 ], [ 0, %12 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8753_volatile(ptr nocapture noundef readnone %0, i32 noundef %1) #4 {
  %3 = icmp eq i32 %1, 31
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8753_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wm8753_priv, ptr %5, i32 0, i32 6
  store i32 -32, ptr %6, align 4
  %7 = getelementptr inbounds %struct.wm8753_priv, ptr %5, i32 0, i32 6, i32 0, i32 1
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wm8753_priv, ptr %5, i32 0, i32 6, i32 0, i32 1, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wm8753_priv, ptr %5, i32 0, i32 6, i32 0, i32 2
  store ptr @wm8753_charge_work, ptr %9, align 4
  %10 = getelementptr inbounds %struct.wm8753_priv, ptr %5, i32 0, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %10, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #7
  %11 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 31, i32 noundef 0) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.253, i32 noundef %11) #8
  br label %27

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.wm8753_priv, ptr %5, i32 0, i32 5
  store i32 0, ptr %16, align 4
  %17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 8, i32 noundef 256, i32 noundef 256) #7
  %18 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 9, i32 noundef 256, i32 noundef 256) #7
  %19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 16, i32 noundef 256, i32 noundef 256) #7
  %20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 17, i32 noundef 256, i32 noundef 256) #7
  %21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 40, i32 noundef 256, i32 noundef 256) #7
  %22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 41, i32 noundef 256, i32 noundef 256) #7
  %23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 42, i32 noundef 256, i32 noundef 256) #7
  %24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 43, i32 noundef 256, i32 noundef 256) #7
  %25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 49, i32 noundef 256, i32 noundef 256) #7
  %26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 50, i32 noundef 256, i32 noundef 256) #7
  br label %27

27:                                               ; preds = %15, %13
  %28 = phi i32 [ %11, %13 ], [ 0, %15 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8753_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regcache_sync(ptr noundef %6) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8753_set_bias_level(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 20) #7
  %8 = trunc i32 %7 to i16
  %9 = and i16 %8, -450
  switch i32 %1, label %38 [
    i32 3, label %10
    i32 2, label %14
    i32 1, label %17
    i32 0, label %34
  ]

10:                                               ; preds = %2
  %11 = or i16 %9, 192
  %12 = zext i16 %11 to i32
  %13 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 20, i32 noundef %12) #7
  br label %38

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.wm8753_priv, ptr %6, i32 0, i32 6
  %16 = tail call zeroext i1 @flush_delayed_work(ptr noundef %15) #7
  br label %38

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = and i32 %7, 65086
  %23 = or i32 %22, 449
  %24 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 20, i32 noundef %23) #7
  %25 = getelementptr inbounds %struct.wm8753_priv, ptr %6, i32 0, i32 6
  %26 = load i32, ptr @caps_charge, align 4
  %27 = tail call i32 @__msecs_to_jiffies(i32 noundef %26) #7
  %28 = load ptr, ptr @system_wq, align 4
  %29 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %28, ptr noundef %25, i32 noundef %27) #7
  br label %38

30:                                               ; preds = %17
  %31 = or i16 %9, 321
  %32 = zext i16 %31 to i32
  %33 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 20, i32 noundef %32) #7
  br label %38

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.wm8753_priv, ptr %6, i32 0, i32 6
  %36 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %35) #7
  %37 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 20, i32 noundef 1) #7
  br label %38

38:                                               ; preds = %34, %30, %21, %14, %10, %2
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @wm8753_get_dai(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8753_priv, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %10, ptr %11, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8753_set_dai(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8753_priv, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %36, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 5) #7
  %20 = load i32, ptr %11, align 8
  store i32 %20, ptr %9, align 4
  %21 = lshr i32 %19, 2
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, %20
  br i1 %23, label %36, label %24

24:                                               ; preds = %18
  %25 = and i32 %19, 499
  %26 = shl i32 %20, 2
  %27 = and i32 %26, 65532
  %28 = or i32 %27, %25
  %29 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 5, i32 noundef %28) #7
  %30 = getelementptr inbounds %struct.wm8753_priv, ptr %8, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = tail call fastcc i32 @wm8753_hifi_write_dai_fmt(ptr noundef %4, i32 noundef %31)
  %33 = getelementptr inbounds %struct.wm8753_priv, ptr %8, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = tail call fastcc i32 @wm8753_voice_write_dai_fmt(ptr noundef %4, i32 noundef %34)
  br label %36

36:                                               ; preds = %24, %18, %14, %2
  %37 = phi i32 [ 1, %24 ], [ 0, %2 ], [ -16, %14 ], [ 1, %18 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @wm8753_hifi_write_dai_fmt(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.wm8753_priv, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %92 [
    i32 0, label %9
    i32 1, label %26
    i32 2, label %46
    i32 3, label %46
  ]

9:                                                ; preds = %2
  %10 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 4) #7
  %11 = trunc i32 %10 to i16
  %12 = and i16 %11, 480
  %13 = and i32 %1, 15
  switch i32 %13, label %130 [
    i32 1, label %14
    i32 2, label %22
    i32 3, label %16
    i32 4, label %18
    i32 5, label %20
  ]

14:                                               ; preds = %9
  %15 = or i16 %12, 2
  br label %22

16:                                               ; preds = %9
  %17 = or i16 %12, 1
  br label %22

18:                                               ; preds = %9
  %19 = or i16 %12, 3
  br label %22

20:                                               ; preds = %9
  %21 = or i16 %12, 19
  br label %22

22:                                               ; preds = %20, %18, %16, %14, %9
  %23 = phi i16 [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %12, %9 ], [ %15, %14 ]
  %24 = zext i16 %23 to i32
  %25 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 4, i32 noundef %24) #7
  br label %92

26:                                               ; preds = %2
  %27 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 52) #7
  %28 = and i32 %27, 65531
  %29 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 52, i32 noundef %28) #7
  %30 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 3) #7
  %31 = trunc i32 %30 to i16
  %32 = and i16 %31, 492
  %33 = and i32 %1, 15
  switch i32 %33, label %130 [
    i32 1, label %34
    i32 2, label %42
    i32 3, label %36
    i32 4, label %38
    i32 5, label %40
  ]

34:                                               ; preds = %26
  %35 = or i16 %32, 2
  br label %42

36:                                               ; preds = %26
  %37 = or i16 %32, 1
  br label %42

38:                                               ; preds = %26
  %39 = or i16 %32, 3
  br label %42

40:                                               ; preds = %26
  %41 = or i16 %32, 19
  br label %42

42:                                               ; preds = %40, %38, %36, %34, %26
  %43 = phi i16 [ %41, %40 ], [ %39, %38 ], [ %37, %36 ], [ %32, %26 ], [ %35, %34 ]
  %44 = zext i16 %43 to i32
  %45 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 3, i32 noundef %44) #7
  br label %92

46:                                               ; preds = %2, %2
  %47 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 52) #7
  %48 = and i32 %47, 65531
  %49 = or i32 %48, 4
  %50 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 52, i32 noundef %49) #7
  %51 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 4) #7
  %52 = trunc i32 %51 to i16
  %53 = and i16 %52, 480
  %54 = and i32 %1, 15
  switch i32 %54, label %130 [
    i32 1, label %60
    i32 2, label %55
    i32 3, label %67
    i32 4, label %74
    i32 5, label %81
  ]

55:                                               ; preds = %46
  %56 = zext i16 %53 to i32
  %57 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 4, i32 noundef %56) #7
  %58 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 3) #7
  %59 = and i32 %58, 492
  br label %88

60:                                               ; preds = %46
  %61 = or i16 %53, 2
  %62 = zext i16 %61 to i32
  %63 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 4, i32 noundef %62) #7
  %64 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 3) #7
  %65 = and i32 %64, 492
  %66 = or i32 %65, 2
  br label %88

67:                                               ; preds = %46
  %68 = or i16 %53, 1
  %69 = zext i16 %68 to i32
  %70 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 4, i32 noundef %69) #7
  %71 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 3) #7
  %72 = and i32 %71, 492
  %73 = or i32 %72, 1
  br label %88

74:                                               ; preds = %46
  %75 = or i16 %53, 3
  %76 = zext i16 %75 to i32
  %77 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 4, i32 noundef %76) #7
  %78 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 3) #7
  %79 = and i32 %78, 492
  %80 = or i32 %79, 3
  br label %88

81:                                               ; preds = %46
  %82 = or i16 %53, 19
  %83 = zext i16 %82 to i32
  %84 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 4, i32 noundef %83) #7
  %85 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 3) #7
  %86 = and i32 %85, 492
  %87 = or i32 %86, 19
  br label %88

88:                                               ; preds = %81, %74, %67, %60, %55
  %89 = phi i32 [ %87, %81 ], [ %80, %74 ], [ %73, %67 ], [ %66, %60 ], [ %59, %55 ]
  %90 = and i32 %89, 65535
  %91 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 3, i32 noundef %90) #7
  br label %92

92:                                               ; preds = %88, %42, %22, %2
  %93 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 4) #7
  %94 = trunc i32 %93 to i16
  %95 = and i16 %94, 319
  %96 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 5) #7
  %97 = trunc i32 %96 to i16
  %98 = and i16 %97, 174
  %99 = trunc i32 %1 to i16
  %100 = and i16 %99, -4096
  switch i16 %100, label %130 [
    i16 16384, label %106
    i16 4096, label %101
    i16 12288, label %103
  ]

101:                                              ; preds = %92
  %102 = or i16 %98, 1
  br label %103

103:                                              ; preds = %101, %92
  %104 = phi i16 [ %98, %92 ], [ %102, %101 ]
  %105 = or i16 %95, 64
  br label %106

106:                                              ; preds = %103, %92
  %107 = phi i16 [ %104, %103 ], [ %98, %92 ]
  %108 = phi i16 [ %105, %103 ], [ %95, %92 ]
  %109 = and i32 %1, 15
  switch i32 %109, label %130 [
    i32 4, label %110
    i32 5, label %110
    i32 1, label %114
    i32 2, label %114
    i32 3, label %114
  ]

110:                                              ; preds = %106, %106
  %111 = and i32 %1, 3840
  switch i32 %111, label %130 [
    i32 0, label %124
    i32 768, label %112
  ]

112:                                              ; preds = %110
  %113 = or i16 %108, 128
  br label %124

114:                                              ; preds = %106, %106, %106
  %115 = and i16 %108, -17
  %116 = lshr i32 %1, 8
  %117 = and i32 %116, 15
  switch i32 %117, label %130 [
    i32 0, label %124
    i32 4, label %118
    i32 3, label %120
    i32 2, label %122
  ]

118:                                              ; preds = %114
  %119 = or i16 %108, 144
  br label %124

120:                                              ; preds = %114
  %121 = or i16 %115, 128
  br label %124

122:                                              ; preds = %114
  %123 = or i16 %108, 16
  br label %124

124:                                              ; preds = %122, %120, %118, %114, %112, %110
  %125 = phi i16 [ %123, %122 ], [ %121, %120 ], [ %119, %118 ], [ %115, %114 ], [ %113, %112 ], [ %108, %110 ]
  %126 = zext i16 %125 to i32
  %127 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 4, i32 noundef %126) #7
  %128 = zext i16 %107 to i32
  %129 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 5, i32 noundef %128) #7
  br label %130

130:                                              ; preds = %124, %114, %110, %106, %92, %46, %26, %9
  %131 = phi i32 [ -22, %9 ], [ -22, %26 ], [ -22, %46 ], [ 0, %124 ], [ -22, %92 ], [ -22, %110 ], [ -22, %114 ], [ -22, %106 ]
  ret i32 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @wm8753_voice_write_dai_fmt(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.wm8753_priv, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %66

10:                                               ; preds = %2
  %11 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 52) #7
  %12 = and i32 %11, 65531
  %13 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 52, i32 noundef %12) #7
  %14 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 3) #7
  %15 = trunc i32 %14 to i16
  %16 = and i16 %15, 492
  %17 = and i32 %1, 15
  switch i32 %17, label %66 [
    i32 1, label %18
    i32 2, label %26
    i32 3, label %20
    i32 4, label %22
    i32 5, label %24
  ]

18:                                               ; preds = %10
  %19 = or i16 %16, 2
  br label %26

20:                                               ; preds = %10
  %21 = or i16 %16, 1
  br label %26

22:                                               ; preds = %10
  %23 = or i16 %16, 3
  br label %26

24:                                               ; preds = %10
  %25 = or i16 %16, 19
  br label %26

26:                                               ; preds = %24, %22, %20, %18, %10
  %27 = phi i16 [ %25, %24 ], [ %23, %22 ], [ %21, %20 ], [ %16, %10 ], [ %19, %18 ]
  %28 = zext i16 %27 to i32
  %29 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 3, i32 noundef %28) #7
  %30 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 3) #7
  %31 = trunc i32 %30 to i16
  %32 = and i16 %31, 287
  %33 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 5) #7
  %34 = trunc i32 %33 to i16
  %35 = and i16 %34, 349
  %36 = trunc i32 %1 to i16
  %37 = and i16 %36, -4096
  switch i16 %37, label %66 [
    i16 16384, label %43
    i16 4096, label %38
    i16 12288, label %40
  ]

38:                                               ; preds = %26
  %39 = or i16 %35, 2
  br label %40

40:                                               ; preds = %38, %26
  %41 = phi i16 [ %35, %26 ], [ %39, %38 ]
  %42 = or i16 %32, 64
  br label %43

43:                                               ; preds = %40, %26
  %44 = phi i16 [ %42, %40 ], [ %32, %26 ]
  %45 = phi i16 [ %41, %40 ], [ %35, %26 ]
  switch i32 %17, label %66 [
    i32 4, label %46
    i32 5, label %46
    i32 1, label %50
    i32 2, label %50
    i32 3, label %50
  ]

46:                                               ; preds = %43, %43
  %47 = and i32 %1, 3840
  switch i32 %47, label %66 [
    i32 0, label %60
    i32 768, label %48
  ]

48:                                               ; preds = %46
  %49 = or i16 %44, 128
  br label %60

50:                                               ; preds = %43, %43, %43
  %51 = and i16 %44, -17
  %52 = lshr i32 %1, 8
  %53 = and i32 %52, 15
  switch i32 %53, label %66 [
    i32 0, label %60
    i32 4, label %54
    i32 3, label %56
    i32 2, label %58
  ]

54:                                               ; preds = %50
  %55 = or i16 %44, 144
  br label %60

56:                                               ; preds = %50
  %57 = or i16 %51, 128
  br label %60

58:                                               ; preds = %50
  %59 = or i16 %44, 16
  br label %60

60:                                               ; preds = %58, %56, %54, %50, %48, %46
  %61 = phi i16 [ %59, %58 ], [ %57, %56 ], [ %55, %54 ], [ %51, %50 ], [ %49, %48 ], [ %44, %46 ]
  %62 = zext i16 %61 to i32
  %63 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 3, i32 noundef %62) #7
  %64 = zext i16 %45 to i32
  %65 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 5, i32 noundef %64) #7
  br label %66

66:                                               ; preds = %60, %50, %46, %43, %26, %10, %2
  %67 = phi i32 [ 0, %2 ], [ -22, %10 ], [ 0, %60 ], [ -22, %26 ], [ -22, %46 ], [ -22, %50 ], [ -22, %43 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm8753_charge_work(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 20, i32 noundef 384, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @wm8753_set_dai_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5 {
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  switch i32 %2, label %18 [
    i32 11289600, label %11
    i32 12000000, label %11
    i32 12288000, label %11
    i32 16934400, label %11
    i32 18432000, label %11
  ]

11:                                               ; preds = %4, %4, %4, %4, %4
  switch i32 %1, label %18 [
    i32 0, label %12
    i32 1, label %14
  ]

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.wm8753_priv, ptr %10, i32 0, i32 1
  br label %16

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.wm8753_priv, ptr %10, i32 0, i32 2
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %15, %14 ], [ %13, %12 ]
  store i32 %2, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %11, %4
  %19 = phi i32 [ -22, %11 ], [ -22, %4 ], [ 0, %16 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8753_set_dai_pll(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ugt i32 %1, 1
  br i1 %8, label %80, label %9

9:                                                ; preds = %5
  %10 = icmp eq i32 %1, 0
  %11 = tail call i32 @snd_soc_component_read(ptr noundef %7, i32 noundef 52) #7
  %12 = trunc i32 %11 to i16
  %13 = select i1 %10, i16 -17, i16 -9
  %14 = select i1 %10, i32 16, i32 8
  %15 = select i1 %10, i32 0, i32 4
  %16 = and i16 %13, %12
  %17 = icmp ne i32 %3, 0
  %18 = icmp ne i32 %4, 0
  %19 = and i1 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %9
  %21 = add nuw nsw i32 %15, 53
  %22 = tail call i32 @snd_soc_component_write(ptr noundef %7, i32 noundef %21, i32 noundef 38) #7
  %23 = zext i16 %16 to i32
  br label %77

24:                                               ; preds = %9
  %25 = shl i32 %4, 3
  %26 = udiv i32 %25, %3
  %27 = icmp ult i32 %26, 6
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = lshr i32 %3, 1
  %30 = udiv i32 %25, %29
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i32 [ 47, %28 ], [ 39, %24 ]
  %33 = phi i32 [ %30, %28 ], [ %26, %24 ]
  %34 = phi i32 [ %29, %28 ], [ %3, %24 ]
  %35 = add i32 %33, -13
  %36 = icmp ult i32 %35, -7
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.257, i32 noundef %33) #8
  br label %39

39:                                               ; preds = %37, %31
  %40 = urem i32 %25, %34
  %41 = zext i32 %40 to i64
  %42 = mul nuw nsw i64 %41, 41943040
  %43 = icmp ult i64 %42, 4294967296
  br i1 %43, label %44, label %47, !prof !8

44:                                               ; preds = %39
  %45 = trunc i64 %42 to i32
  %46 = udiv i32 %45, %34
  br label %51

47:                                               ; preds = %39
  %48 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %34, i64 %42) #9, !srcloc !9
  %49 = extractvalue { i64, i64 } %48, 1
  %50 = trunc i64 %49 to i32
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i32 [ %46, %44 ], [ %50, %47 ]
  %53 = shl i32 %33, 5
  %54 = and i32 %53, 480
  %55 = urem i32 %52, 10
  %56 = icmp ugt i32 %55, 4
  %57 = add i32 %52, 5
  %58 = select i1 %56, i32 %57, i32 %52
  %59 = udiv i32 %58, 10
  %60 = shl i32 %59, 5
  %61 = lshr i32 %60, 23
  %62 = and i32 %61, 15
  %63 = or i32 %62, %54
  %64 = add nuw nsw i32 %15, 54
  %65 = tail call i32 @snd_soc_component_write(ptr noundef %7, i32 noundef %64, i32 noundef %63) #7
  %66 = lshr i32 %60, 14
  %67 = and i32 %66, 511
  %68 = add nuw nsw i32 %15, 55
  %69 = tail call i32 @snd_soc_component_write(ptr noundef %7, i32 noundef %68, i32 noundef %67) #7
  %70 = and i32 %59, 511
  %71 = or i32 %15, 56
  %72 = tail call i32 @snd_soc_component_write(ptr noundef %7, i32 noundef %71, i32 noundef %70) #7
  %73 = add nuw nsw i32 %15, 53
  %74 = tail call i32 @snd_soc_component_write(ptr noundef %7, i32 noundef %73, i32 noundef %32) #7
  %75 = zext i16 %16 to i32
  %76 = or i32 %14, %75
  br label %77

77:                                               ; preds = %51, %20
  %78 = phi i32 [ %76, %51 ], [ %23, %20 ]
  %79 = tail call i32 @snd_soc_component_write(ptr noundef %7, i32 noundef 52, i32 noundef %78) #7
  br label %80

80:                                               ; preds = %77, %5
  %81 = phi i32 [ -19, %5 ], [ 0, %77 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8753_set_dai_clkdiv(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = icmp ult i32 %1, 3
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds [3 x i32], ptr @switch.table.wm8753_set_dai_clkdiv, i32 0, i32 %1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [3 x i32], ptr @switch.table.wm8753_set_dai_clkdiv.259, i32 0, i32 %1
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @snd_soc_component_read(ptr noundef %7, i32 noundef %9) #7
  %13 = and i32 %12, %11
  %14 = or i32 %13, %2
  %15 = tail call i32 @snd_soc_component_write(ptr noundef %7, i32 noundef %9, i32 noundef %14) #7
  br label %16

16:                                               ; preds = %5, %3
  %17 = phi i32 [ -22, %3 ], [ 0, %5 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8753_hifi_set_dai_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8753_priv, ptr %8, i32 0, i32 4
  store i32 %1, ptr %9, align 4
  %10 = tail call fastcc i32 @wm8753_hifi_write_dai_fmt(ptr noundef %4, i32 noundef %1)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8753_mute(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 1) #7
  %7 = and i32 %6, 65527
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.wm8753_priv, ptr %13, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = or i32 %7, 8
  br label %25

23:                                               ; preds = %9
  %24 = or i32 %7, 8
  br label %25

25:                                               ; preds = %23, %21, %3
  %26 = phi i32 [ %24, %23 ], [ %22, %21 ], [ %7, %3 ]
  %27 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 1, i32 noundef %26) #7
  br label %28

28:                                               ; preds = %25, %17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8753_i2s_hw_params(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 6) #7
  %11 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 4) #7
  %12 = trunc i32 %11 to i16
  %13 = and i16 %12, 499
  %14 = getelementptr inbounds %struct.wm8753_priv, ptr %9, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %27, %3
  %19 = phi i32 [ 0, %3 ], [ %28, %27 ]
  %20 = getelementptr [29 x %struct._coeff_div], ptr @coeff_div, i32 0, i32 %19, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %17
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr [29 x %struct._coeff_div], ptr @coeff_div, i32 0, i32 %19
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %15
  br i1 %26, label %32, label %27

27:                                               ; preds = %23, %18
  %28 = add nuw nsw i32 %19, 1
  %29 = icmp eq i32 %28, 29
  br i1 %29, label %30, label %18

30:                                               ; preds = %27
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.258) #8
  br label %70

32:                                               ; preds = %23
  %33 = and i32 %10, 448
  %34 = getelementptr [29 x %struct._coeff_div], ptr @coeff_div, i32 0, i32 %19, i32 2
  %35 = load i8, ptr %34, align 4
  %36 = shl i8 %35, 1
  %37 = and i8 %36, 62
  %38 = zext i8 %37 to i32
  %39 = or i32 %33, %38
  %40 = lshr i8 %35, 5
  %41 = and i8 %40, 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %39, %42
  %44 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 6, i32 noundef %43) #7
  %45 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %53, %32
  %49 = phi i32 [ 0, %32 ], [ 32, %53 ]
  %50 = phi i32 [ %46, %32 ], [ %55, %53 ]
  %51 = tail call i32 @llvm.cttz.i32(i32 %50, i1 true) #7, !range !10
  %52 = or i32 %51, %49
  br label %57

53:                                               ; preds = %32
  %54 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %48

57:                                               ; preds = %53, %48
  %58 = phi i32 [ %52, %48 ], [ 0, %53 ]
  %59 = tail call i32 @snd_pcm_format_width(i32 noundef %58) #7
  switch i32 %59, label %66 [
    i32 32, label %64
    i32 20, label %60
    i32 24, label %62
  ]

60:                                               ; preds = %57
  %61 = or i16 %13, 4
  br label %66

62:                                               ; preds = %57
  %63 = or i16 %13, 8
  br label %66

64:                                               ; preds = %57
  %65 = or i16 %13, 12
  br label %66

66:                                               ; preds = %64, %62, %60, %57
  %67 = phi i16 [ %13, %57 ], [ %63, %62 ], [ %61, %60 ], [ %65, %64 ]
  %68 = zext i16 %67 to i32
  %69 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 4, i32 noundef %68) #7
  br label %70

70:                                               ; preds = %66, %30
  %71 = phi i32 [ -22, %30 ], [ 0, %66 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8753_voice_set_dai_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8753_priv, ptr %8, i32 0, i32 3
  store i32 %1, ptr %9, align 4
  %10 = tail call fastcc i32 @wm8753_voice_write_dai_fmt(ptr noundef %4, i32 noundef %1)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8753_pcm_hw_params(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 3) #7
  %11 = trunc i32 %10 to i16
  %12 = and i16 %11, 499
  %13 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 6) #7
  %14 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %22, %3
  %18 = phi i32 [ 0, %3 ], [ 32, %22 ]
  %19 = phi i32 [ %15, %3 ], [ %24, %22 ]
  %20 = tail call i32 @llvm.cttz.i32(i32 %19, i1 true) #7, !range !10
  %21 = or i32 %20, %18
  br label %26

22:                                               ; preds = %3
  %23 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %17

26:                                               ; preds = %22, %17
  %27 = phi i32 [ %21, %17 ], [ 0, %22 ]
  %28 = tail call i32 @snd_pcm_format_width(i32 noundef %27) #7
  switch i32 %28, label %35 [
    i32 32, label %33
    i32 20, label %29
    i32 24, label %31
  ]

29:                                               ; preds = %26
  %30 = or i16 %12, 4
  br label %35

31:                                               ; preds = %26
  %32 = or i16 %12, 8
  br label %35

33:                                               ; preds = %26
  %34 = or i16 %12, 12
  br label %35

35:                                               ; preds = %33, %31, %29, %26
  %36 = phi i16 [ %12, %26 ], [ %32, %31 ], [ %30, %29 ], [ %34, %33 ]
  %37 = trunc i32 %13 to i16
  %38 = and i16 %37, 383
  %39 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = mul i32 %40, 384
  %42 = getelementptr inbounds %struct.wm8753_priv, ptr %9, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %41, %43
  %45 = or i16 %38, 128
  %46 = select i1 %44, i16 %45, i16 %38
  %47 = zext i16 %46 to i32
  %48 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 6, i32 noundef %47) #7
  %49 = zext i16 %36 to i32
  %50 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 3, i32 noundef %49) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8753_spi_probe(ptr noundef %0) #3 {
  %2 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 68, i32 noundef 3520) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %2, ptr %5, align 8
  %6 = tail call ptr @__devm_regmap_init_spi(ptr noundef %0, ptr noundef nonnull @wm8753_regmap, ptr noundef null, ptr noundef null) #7
  store ptr %6, ptr %2, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = ptrtoint ptr %6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %9) #8
  br label %14

10:                                               ; preds = %4
  %11 = tail call i32 @devm_snd_soc_register_component(ptr noundef %0, ptr noundef nonnull @soc_component_dev_wm8753, ptr noundef nonnull @wm8753_dai, i32 noundef 2) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %11) #8
  br label %14

14:                                               ; preds = %13, %10, %8, %1
  %15 = phi i32 [ %9, %8 ], [ -12, %1 ], [ %11, %13 ], [ 0, %10 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2147936347, i64 2147936627, i64 2147936961, i64 2147937295}
!10 = !{i32 0, i32 33}
