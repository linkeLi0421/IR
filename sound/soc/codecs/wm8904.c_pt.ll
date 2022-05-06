; ModuleID = '/llk/IR/sound/soc/codecs/wm8904.c_pt.bc'
source_filename = "../sound/soc/codecs/wm8904.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.anon.94 = type { i32, i32, i16, i32 }
%struct.anon.95 = type { i32, i32 }
%struct.anon.96 = type { i32, i32 }
%struct.anon.97 = type { i32, i32 }
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
%struct.wm8904_priv = type { ptr, ptr, i32, [5 x %struct.regulator_bulk_data], ptr, i32, ptr, i32, %struct.soc_enum, i32, ptr, i32, %struct.soc_enum, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.wm8904_pdata = type { i32, ptr, i32, ptr, [4 x i32], [2 x i32] }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.wm8904_drc_cfg = type { ptr, [4 x i16] }
%struct.wm8904_retune_mobile_cfg = type { ptr, i32, [24 x i16] }
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

@wm8904_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wlf,wm8904\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wlf,wm8912\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@wm8904_i2c_id = internal constant [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm8904\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"wm8912\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"wm8918\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_description253 = internal constant [31 x i8] c"description=ASoC WM8904 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [56 x i8] c"author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@wm8904_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @wm8904_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wm8904_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wm8904_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"wm8904\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Failed to get MCLK\0A\00", align 1
@wm8904_regmap = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr @wm8904_readable_register, ptr @wm8904_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 248, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8904_reg_defaults, i32 93, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to read ID register: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Device is not a WM8904, ID is %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Failed to read device revision: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"revision %c\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Failed to issue reset: %d\0A\00", align 1
@soc_component_dev_wm8904 = internal constant %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @wm8904_probe, ptr @wm8904_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8904_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 56, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@wm8904_dai = internal global %struct.snd_soc_dai_driver { ptr @.str.144, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8904_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.97, i64 68719477828, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.106, i64 68719477828, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 1, i32 0, i32 0 }, align 8
@wm8904_reg_defaults = internal constant [93 x %struct.reg_default] [%struct.reg_default { i32 4, i32 24 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 1 }, %struct.reg_default { i32 9, i32 38550 }, %struct.reg_default { i32 10, i32 1 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 20, i32 37982 }, %struct.reg_default { i32 21, i32 3077 }, %struct.reg_default { i32 22, i32 6 }, %struct.reg_default { i32 24, i32 80 }, %struct.reg_default { i32 25, i32 10 }, %struct.reg_default { i32 26, i32 228 }, %struct.reg_default { i32 27, i32 64 }, %struct.reg_default { i32 30, i32 192 }, %struct.reg_default { i32 31, i32 192 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 8 }, %struct.reg_default { i32 36, i32 192 }, %struct.reg_default { i32 37, i32 192 }, %struct.reg_default { i32 38, i32 16 }, %struct.reg_default { i32 39, i32 0 }, %struct.reg_default { i32 40, i32 431 }, %struct.reg_default { i32 41, i32 12872 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 133 }, %struct.reg_default { i32 45, i32 133 }, %struct.reg_default { i32 46, i32 68 }, %struct.reg_default { i32 47, i32 68 }, %struct.reg_default { i32 57, i32 45 }, %struct.reg_default { i32 58, i32 45 }, %struct.reg_default { i32 59, i32 57 }, %struct.reg_default { i32 60, i32 57 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 67, i32 0 }, %struct.reg_default { i32 69, i32 43690 }, %struct.reg_default { i32 71, i32 43690 }, %struct.reg_default { i32 72, i32 43690 }, %struct.reg_default { i32 90, i32 0 }, %struct.reg_default { i32 94, i32 0 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 104, i32 4 }, %struct.reg_default { i32 108, i32 0 }, %struct.reg_default { i32 109, i32 0 }, %struct.reg_default { i32 110, i32 0 }, %struct.reg_default { i32 111, i32 0 }, %struct.reg_default { i32 112, i32 0 }, %struct.reg_default { i32 116, i32 0 }, %struct.reg_default { i32 117, i32 7 }, %struct.reg_default { i32 118, i32 0 }, %struct.reg_default { i32 119, i32 12000 }, %struct.reg_default { i32 120, i32 4 }, %struct.reg_default { i32 121, i32 20 }, %struct.reg_default { i32 122, i32 16 }, %struct.reg_default { i32 123, i32 16 }, %struct.reg_default { i32 124, i32 0 }, %struct.reg_default { i32 126, i32 0 }, %struct.reg_default { i32 128, i32 65535 }, %struct.reg_default { i32 129, i32 0 }, %struct.reg_default { i32 130, i32 0 }, %struct.reg_default { i32 134, i32 0 }, %struct.reg_default { i32 135, i32 12 }, %struct.reg_default { i32 136, i32 12 }, %struct.reg_default { i32 137, i32 12 }, %struct.reg_default { i32 138, i32 12 }, %struct.reg_default { i32 139, i32 12 }, %struct.reg_default { i32 140, i32 4042 }, %struct.reg_default { i32 141, i32 1024 }, %struct.reg_default { i32 142, i32 216 }, %struct.reg_default { i32 143, i32 7861 }, %struct.reg_default { i32 144, i32 61765 }, %struct.reg_default { i32 145, i32 2933 }, %struct.reg_default { i32 146, i32 453 }, %struct.reg_default { i32 147, i32 7256 }, %struct.reg_default { i32 148, i32 62323 }, %struct.reg_default { i32 149, i32 2644 }, %struct.reg_default { i32 150, i32 1368 }, %struct.reg_default { i32 151, i32 5774 }, %struct.reg_default { i32 152, i32 63529 }, %struct.reg_default { i32 153, i32 1965 }, %struct.reg_default { i32 154, i32 4355 }, %struct.reg_default { i32 155, i32 1380 }, %struct.reg_default { i32 156, i32 1369 }, %struct.reg_default { i32 157, i32 16384 }, %struct.reg_default { i32 161, i32 0 }, %struct.reg_default { i32 204, i32 0 }, %struct.reg_default { i32 247, i32 0 }, %struct.reg_default { i32 248, i32 25 }], align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"DCVDD\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"DBVDD\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"AVDD\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"CPVDD\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"MICVDD\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Unknown device type %d\0A\00", align 1
@wm8904_eq_controls = internal constant [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.25 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.27 to i32) }], align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"DRC Mode\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Failed to add DRC mode control: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"EQ1 Volume\00", align 1
@eq_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -1200, i32 100], align 4
@.compoundliteral = internal global %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 135, i32 135, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.20 = private unnamed_addr constant [11 x i8] c"EQ2 Volume\00", align 1
@.compoundliteral.21 = internal global %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 136, i32 136, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.22 = private unnamed_addr constant [11 x i8] c"EQ3 Volume\00", align 1
@.compoundliteral.23 = internal global %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 137, i32 137, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.24 = private unnamed_addr constant [11 x i8] c"EQ4 Volume\00", align 1
@.compoundliteral.25 = internal global %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 138, i32 138, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.26 = private unnamed_addr constant [11 x i8] c"EQ5 Volume\00", align 1
@.compoundliteral.27 = internal global %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 139, i32 139, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.28 = private unnamed_addr constant [8 x i8] c"EQ Mode\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"Failed to add ReTune Mobile control: %d\0A\00", align 1
@core_intercon = internal constant [2 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.31, ptr null, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.32, ptr null, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@wm8904_adc_snd_controls = internal constant [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.35 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @hpf_mode to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8904_adc_osr_put, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }], align 4
@wm8904_dac_snd_controls = internal constant [13 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @dac_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.60 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @drc_path to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm8904_get_deemph, ptr @wm8904_put_deemph, %union.anon.85 zeroinitializer, i32 0 }], align 4
@wm8904_snd_controls = internal constant [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @sidetone_tlv }, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }], align 4
@adc_intercon = internal constant [34 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.77, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.79, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.81, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.77, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.79, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.81, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr @.str.100, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr @.str.101, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr @.str.101, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr @.str.102, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr @.str.102, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr @.str.78, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr @.str.80, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr @.str.82, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr @.str.78, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr @.str.80, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr @.str.82, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr @.str.100, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr @.str.101, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr @.str.101, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr @.str.102, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr @.str.102, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr @.str.103, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr @.str.104, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.103, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.104, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr null, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr null, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr null, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr null, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr null, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@dac_intercon = internal constant [21 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.103, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.104, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.103, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.104, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr null, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr null, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr null, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr null, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr null, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr null, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr null, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr null, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr null, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@wm8904_intercon = internal constant [22 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.103, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.104, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.103, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.104, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr null, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr null, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr null, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.74, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.142, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.74, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.142, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.74, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.142, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.74, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.142, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr null, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr null, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr null, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@wm8912_intercon = internal constant [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.113, ptr null, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr null, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr null, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr null, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"SYSCLK\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"CLK_DSP\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"TOCLK\00", align 1
@wm8904_core_dapm_widgets = internal constant [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.30, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @sysclk_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.31, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.32, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.34 = private unnamed_addr constant [23 x i8] c"Digital Capture Volume\00", align 1
@digital_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -7200, i32 65611], align 4
@.compoundliteral.35 = internal global %struct.soc_mixer_control { i32 0, i32 119, i32 119, i32 36, i32 37, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.36 = private unnamed_addr constant [15 x i8] c"Capture Volume\00", align 1
@.compoundliteral.37 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 44, i32 45, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.38 = private unnamed_addr constant [15 x i8] c"Capture Switch\00", align 1
@.compoundliteral.39 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 45, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.40 = private unnamed_addr constant [24 x i8] c"High Pass Filter Switch\00", align 1
@.compoundliteral.41 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.42 = private unnamed_addr constant [22 x i8] c"High Pass Filter Mode\00", align 1
@hpf_mode = internal constant %struct.soc_enum { i32 38, i8 5, i8 5, i32 4, i32 3, ptr @hpf_mode_text, ptr null, i8 0 }, align 4
@.str.43 = private unnamed_addr constant [20 x i8] c"ADC 128x OSR Switch\00", align 1
@.compoundliteral.44 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 10, i32 10, i32 0, i32 0, i32 0, i8 0 }, align 4
@hpf_mode_text = internal global [4 x ptr] [ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], align 4
@.str.45 = private unnamed_addr constant [6 x i8] c"Hi-fi\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"Voice 1\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"Voice 2\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"Voice 3\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"Digital Playback Boost Volume\00", align 1
@dac_boost_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 0, i32 600], align 4
@.compoundliteral.50 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 24, i32 24, i32 9, i32 9, i32 0, i8 0 }, align 4
@.str.51 = private unnamed_addr constant [24 x i8] c"Digital Playback Volume\00", align 1
@.compoundliteral.52 = internal global %struct.soc_mixer_control { i32 0, i32 96, i32 96, i32 30, i32 31, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.53 = private unnamed_addr constant [17 x i8] c"Headphone Volume\00", align 1
@out_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -5700, i32 100], align 4
@.compoundliteral.54 = internal global %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 57, i32 58, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.55 = private unnamed_addr constant [17 x i8] c"Headphone Switch\00", align 1
@.compoundliteral.56 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 58, i32 8, i32 8, i32 0, i8 1 }, align 4
@.str.57 = private unnamed_addr constant [20 x i8] c"Headphone ZC Switch\00", align 1
@.compoundliteral.58 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 58, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.59 = private unnamed_addr constant [19 x i8] c"Line Output Volume\00", align 1
@.compoundliteral.60 = internal global %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 59, i32 60, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.61 = private unnamed_addr constant [19 x i8] c"Line Output Switch\00", align 1
@.compoundliteral.62 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 59, i32 60, i32 8, i32 8, i32 0, i8 1 }, align 4
@.str.63 = private unnamed_addr constant [22 x i8] c"Line Output ZC Switch\00", align 1
@.compoundliteral.64 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 59, i32 60, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.65 = private unnamed_addr constant [10 x i8] c"EQ Switch\00", align 1
@.compoundliteral.66 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 134, i32 134, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.67 = private unnamed_addr constant [11 x i8] c"DRC Switch\00", align 1
@.compoundliteral.68 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 15, i32 15, i32 0, i8 0 }, align 4
@.str.69 = private unnamed_addr constant [9 x i8] c"DRC Path\00", align 1
@drc_path = internal constant %struct.soc_enum { i32 40, i8 14, i8 14, i32 2, i32 1, ptr @drc_path_text, ptr null, i8 0 }, align 4
@.str.70 = private unnamed_addr constant [17 x i8] c"DAC OSRx2 Switch\00", align 1
@.compoundliteral.71 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 33, i32 33, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.72 = private unnamed_addr constant [22 x i8] c"DAC Deemphasis Switch\00", align 1
@drc_path_text = internal global [2 x ptr] [ptr @.str.73, ptr @.str.74], align 4
@.str.73 = private unnamed_addr constant [4 x i8] c"ADC\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"DAC\00", align 1
@deemph_settings = internal unnamed_addr constant [4 x i32] [i32 0, i32 32000, i32 44100, i32 48000], align 4
@.str.75 = private unnamed_addr constant [24 x i8] c"Digital Sidetone Volume\00", align 1
@sidetone_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -3600, i32 300], align 4
@.compoundliteral.76 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 32, i32 32, i32 4, i32 8, i32 0, i8 0 }, align 4
@.str.77 = private unnamed_addr constant [5 x i8] c"IN1L\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"IN1R\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"IN2L\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"IN2R\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"IN3L\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"IN3R\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"MICBIAS\00", align 1
@.str.84 = private unnamed_addr constant [17 x i8] c"Left Capture Mux\00", align 1
@lin_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @lin_enum to i32) }, align 4
@.str.85 = private unnamed_addr constant [27 x i8] c"Left Capture Inverting Mux\00", align 1
@lin_inv_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @lin_inv_enum to i32) }, align 4
@.str.86 = private unnamed_addr constant [18 x i8] c"Left Capture Mode\00", align 1
@lin_mode = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @lin_mode_enum to i32) }, align 4
@.str.87 = private unnamed_addr constant [18 x i8] c"Right Capture Mux\00", align 1
@rin_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @rin_enum to i32) }, align 4
@.str.88 = private unnamed_addr constant [28 x i8] c"Right Capture Inverting Mux\00", align 1
@rin_inv_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @rin_inv_enum to i32) }, align 4
@.str.89 = private unnamed_addr constant [19 x i8] c"Right Capture Mode\00", align 1
@rin_mode = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @rin_mode_enum to i32) }, align 4
@.str.90 = private unnamed_addr constant [17 x i8] c"Left Capture PGA\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"Right Capture PGA\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"ADCL\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"ADCR\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"AIFOUTL Mux\00", align 1
@aifoutl_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @aifoutl_enum to i32) }, align 4
@.str.95 = private unnamed_addr constant [12 x i8] c"AIFOUTR Mux\00", align 1
@aifoutr_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @aifoutr_enum to i32) }, align 4
@.str.96 = private unnamed_addr constant [8 x i8] c"AIFOUTL\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"Capture\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"AIFOUTR\00", align 1
@wm8904_adc_dapm_widgets = internal constant [21 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lin_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lin_inv_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lin_mode, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rin_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rin_inv_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rin_mode, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aifoutl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aifoutr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.96, ptr @.str.97, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.98, ptr @.str.97, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }], align 4
@lin_enum = internal constant %struct.soc_enum { i32 46, i8 2, i8 2, i32 3, i32 3, ptr @lin_text, ptr null, i8 0 }, align 4
@lin_text = internal global [3 x ptr] [ptr @.str.77, ptr @.str.79, ptr @.str.81], align 4
@lin_inv_enum = internal constant %struct.soc_enum { i32 46, i8 4, i8 4, i32 3, i32 3, ptr @lin_text, ptr null, i8 0 }, align 4
@lin_mode_enum = internal constant %struct.soc_enum { i32 46, i8 0, i8 0, i32 3, i32 3, ptr @input_mode_text, ptr null, i8 0 }, align 4
@input_mode_text = internal global [3 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102], align 4
@.str.100 = private unnamed_addr constant [13 x i8] c"Single-Ended\00", align 1
@.str.101 = private unnamed_addr constant [18 x i8] c"Differential Line\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"Differential Mic\00", align 1
@rin_enum = internal constant %struct.soc_enum { i32 47, i8 2, i8 2, i32 3, i32 3, ptr @rin_text, ptr null, i8 0 }, align 4
@rin_text = internal global [3 x ptr] [ptr @.str.78, ptr @.str.80, ptr @.str.82], align 4
@rin_inv_enum = internal constant %struct.soc_enum { i32 47, i8 4, i8 4, i32 3, i32 3, ptr @rin_text, ptr null, i8 0 }, align 4
@rin_mode_enum = internal constant %struct.soc_enum { i32 47, i8 0, i8 0, i32 3, i32 3, ptr @input_mode_text, ptr null, i8 0 }, align 4
@aifoutl_enum = internal constant %struct.soc_enum { i32 24, i8 7, i8 7, i32 2, i32 1, ptr @aif_text, ptr null, i8 0 }, align 4
@aif_text = internal global [2 x ptr] [ptr @.str.103, ptr @.str.104], align 4
@.str.103 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@aifoutr_enum = internal constant %struct.soc_enum { i32 24, i8 6, i8 6, i32 2, i32 1, ptr @aif_text, ptr null, i8 0 }, align 4
@.str.105 = private unnamed_addr constant [7 x i8] c"AIFINL\00", align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"Playback\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"AIFINR\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"DACL Mux\00", align 1
@aifinl_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @aifinl_enum to i32) }, align 4
@.str.109 = private unnamed_addr constant [9 x i8] c"DACR Mux\00", align 1
@aifinr_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @aifinr_enum to i32) }, align 4
@.str.110 = private unnamed_addr constant [5 x i8] c"DACL\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"DACR\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"Charge pump\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"HPL PGA\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"HPR PGA\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"LINEL PGA\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"LINER PGA\00", align 1
@.str.117 = private unnamed_addr constant [17 x i8] c"Headphone Output\00", align 1
@.str.118 = private unnamed_addr constant [12 x i8] c"Line Output\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"HPOUTL\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"HPOUTR\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"LINEOUTL\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"LINEOUTR\00", align 1
@wm8904_dac_dapm_widgets = internal constant [17 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.105, ptr @.str.106, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.107, ptr @.str.106, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aifinl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aifinr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @cp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.115, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.116, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.117, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 90, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @out_pga_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.118, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 94, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @out_pga_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.119, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.120, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.124 = private unnamed_addr constant [11 x i8] c"AIFINL Mux\00", align 1
@aifinl_enum = internal constant %struct.soc_enum { i32 24, i8 5, i8 5, i32 2, i32 1, ptr @aif_text, ptr null, i8 0 }, align 4
@.str.125 = private unnamed_addr constant [11 x i8] c"AIFINR Mux\00", align 1
@aifinr_enum = internal constant %struct.soc_enum { i32 24, i8 4, i8 4, i32 2, i32 1, ptr @aif_text, ptr null, i8 0 }, align 4
@.str.126 = private unnamed_addr constant [26 x i8] c"sound/soc/codecs/wm8904.c\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.127 = private unnamed_addr constant [16 x i8] c"Invalid reg %d\0A\00", align 1
@.str.128 = private unnamed_addr constant [20 x i8] c"DC servo timed out\0A\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"Class G\00", align 1
@.str.130 = private unnamed_addr constant [12 x i8] c"Left Bypass\00", align 1
@.str.131 = private unnamed_addr constant [13 x i8] c"Right Bypass\00", align 1
@.str.132 = private unnamed_addr constant [14 x i8] c"Left Sidetone\00", align 1
@dacl_sidetone_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.139, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @dacl_sidetone_enum to i32) }, align 4
@.str.133 = private unnamed_addr constant [15 x i8] c"Right Sidetone\00", align 1
@dacr_sidetone_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.141, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @dacr_sidetone_enum to i32) }, align 4
@.str.134 = private unnamed_addr constant [8 x i8] c"HPL Mux\00", align 1
@hpl_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @hpl_enum to i32) }, align 4
@.str.135 = private unnamed_addr constant [8 x i8] c"HPR Mux\00", align 1
@hpr_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @hpr_enum to i32) }, align 4
@.str.136 = private unnamed_addr constant [10 x i8] c"LINEL Mux\00", align 1
@linel_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @linel_enum to i32) }, align 4
@.str.137 = private unnamed_addr constant [10 x i8] c"LINER Mux\00", align 1
@liner_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @liner_enum to i32) }, align 4
@wm8904_dapm_widgets = internal constant [9 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.129, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 104, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.130, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dacl_sidetone_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dacr_sidetone_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.134, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hpl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hpr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @linel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.137, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @liner_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.139 = private unnamed_addr constant [18 x i8] c"Left Sidetone Mux\00", align 1
@dacl_sidetone_enum = internal constant %struct.soc_enum { i32 32, i8 2, i8 2, i32 3, i32 3, ptr @sidetone_text, ptr null, i8 0 }, align 4
@sidetone_text = internal global [3 x ptr] [ptr @.str.140, ptr @.str.103, ptr @.str.104], align 4
@.str.140 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.141 = private unnamed_addr constant [19 x i8] c"Right Sidetone Mux\00", align 1
@dacr_sidetone_enum = internal constant %struct.soc_enum { i32 32, i8 0, i8 0, i32 3, i32 3, ptr @sidetone_text, ptr null, i8 0 }, align 4
@hpl_enum = internal constant %struct.soc_enum { i32 61, i8 3, i8 3, i32 2, i32 1, ptr @out_mux_text, ptr null, i8 0 }, align 4
@out_mux_text = internal global [2 x ptr] [ptr @.str.74, ptr @.str.142], align 4
@.str.142 = private unnamed_addr constant [7 x i8] c"Bypass\00", align 1
@hpr_enum = internal constant %struct.soc_enum { i32 61, i8 2, i8 2, i32 2, i32 1, ptr @out_mux_text, ptr null, i8 0 }, align 4
@linel_enum = internal constant %struct.soc_enum { i32 61, i8 1, i8 1, i32 2, i32 1, ptr @out_mux_text, ptr null, i8 0 }, align 4
@liner_enum = internal constant %struct.soc_enum { i32 61, i8 0, i8 0, i32 2, i32 1, ptr @out_mux_text, ptr null, i8 0 }, align 4
@.str.143 = private unnamed_addr constant [27 x i8] c"Failed to enable MCLK: %d\0A\00", align 1
@.str.144 = private unnamed_addr constant [12 x i8] c"wm8904-hifi\00", align 1
@wm8904_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr @wm8904_set_sysclk, ptr @wm8904_set_fll, ptr null, ptr null, ptr @wm8904_set_fmt, ptr null, ptr @wm8904_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8904_mute, ptr null, ptr null, ptr @wm8904_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 1 }, align 4
@.str.145 = private unnamed_addr constant [29 x i8] c"System clock not configured\0A\00", align 1
@.str.146 = private unnamed_addr constant [19 x i8] c"Unknown FLL ID %d\0A\00", align 1
@.str.147 = private unnamed_addr constant [45 x i8] c"\013Can't scale %dMHz input down to <=13.5MHz\0A\00", align 1
@.str.148 = private unnamed_addr constant [43 x i8] c"\013Unable to find FLL_OUTDIV for Fout=%uHz\0A\00", align 1
@fll_fratios = internal unnamed_addr constant [5 x %struct.anon.94] [%struct.anon.94 { i32 0, i32 64000, i16 4, i32 16 }, %struct.anon.94 { i32 64000, i32 128000, i16 3, i32 8 }, %struct.anon.94 { i32 128000, i32 256000, i16 2, i32 4 }, %struct.anon.94 { i32 256000, i32 1000000, i16 1, i32 2 }, %struct.anon.94 { i32 1000000, i32 13500000, i16 0, i32 1 }], align 4
@.str.149 = private unnamed_addr constant [43 x i8] c"\013Unable to find FLL_FRATIO for Fref=%uHz\0A\00", align 1
@clk_sys_rates = internal unnamed_addr constant [10 x %struct.anon.95] [%struct.anon.95 { i32 64, i32 0 }, %struct.anon.95 { i32 128, i32 1 }, %struct.anon.95 { i32 192, i32 2 }, %struct.anon.95 { i32 256, i32 3 }, %struct.anon.95 { i32 384, i32 4 }, %struct.anon.95 { i32 512, i32 5 }, %struct.anon.95 { i32 786, i32 6 }, %struct.anon.95 { i32 1024, i32 7 }, %struct.anon.95 { i32 1408, i32 8 }, %struct.anon.95 { i32 1536, i32 9 }], align 4
@sample_rates = internal unnamed_addr constant [9 x %struct.anon.96] [%struct.anon.96 { i32 8000, i32 0 }, %struct.anon.96 { i32 11025, i32 1 }, %struct.anon.96 { i32 12000, i32 1 }, %struct.anon.96 { i32 16000, i32 2 }, %struct.anon.96 { i32 22050, i32 3 }, %struct.anon.96 { i32 24000, i32 3 }, %struct.anon.96 { i32 32000, i32 4 }, %struct.anon.96 { i32 44100, i32 5 }, %struct.anon.96 { i32 48000, i32 5 }], align 4
@bclk_divs = internal unnamed_addr constant [20 x %struct.anon.97] [%struct.anon.97 { i32 10, i32 0 }, %struct.anon.97 { i32 15, i32 1 }, %struct.anon.97 { i32 20, i32 2 }, %struct.anon.97 { i32 30, i32 3 }, %struct.anon.97 { i32 40, i32 4 }, %struct.anon.97 { i32 50, i32 5 }, %struct.anon.97 { i32 55, i32 6 }, %struct.anon.97 { i32 60, i32 7 }, %struct.anon.97 { i32 80, i32 8 }, %struct.anon.97 { i32 100, i32 9 }, %struct.anon.97 { i32 110, i32 10 }, %struct.anon.97 { i32 120, i32 11 }, %struct.anon.97 { i32 160, i32 12 }, %struct.anon.97 { i32 200, i32 13 }, %struct.anon.97 { i32 220, i32 14 }, %struct.anon.97 { i32 240, i32 16 }, %struct.anon.97 { i32 200, i32 17 }, %struct.anon.97 { i32 320, i32 18 }, %struct.anon.97 { i32 440, i32 19 }, %struct.anon.97 { i32 480, i32 20 }], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_license255], section "llvm.metadata"
@switch.table.wm8904_set_fll = private unnamed_addr constant [3 x i32] [i32 0, i32 2, i32 1], align 4
@switch.table.wm8904_set_fmt = private unnamed_addr constant [4 x i32] [i32 64, i32 0, i32 64, i32 0], align 4
@switch.table.wm8904_set_fmt.150 = private unnamed_addr constant [4 x i32] [i32 2048, i32 2048, i32 0, i32 0], align 4
@switch.table.wm8904_hw_params = private unnamed_addr constant [5 x i32] [i32 0, i32 64, i32 128, i32 0, i32 192], align 4

@__mod_of__wm8904_of_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @wm8904_of_match
@__mod_i2c__wm8904_i2c_id_device_table = dso_local alias [4 x %struct.i2c_device_id], ptr @wm8904_i2c_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @wm8904_i2c_driver) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @wm8904_i2c_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8904_i2c_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 212, i32 noundef 3520) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %150, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.1) #12
  %9 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = ptrtoint ptr %8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #13
  br label %150

13:                                               ; preds = %7
  %14 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @wm8904_regmap, ptr noundef null, ptr noundef null) #12
  store ptr %14, ptr %5, align 4
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = ptrtoint ptr %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef %17) #13
  br label %150

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @of_match_node(ptr noundef nonnull @wm8904_of_match, ptr noundef nonnull %20) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %150, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.of_device_id, ptr %23, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = ptrtoint ptr %27 to i32
  br label %32

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i32 [ %28, %25 ], [ %31, %29 ]
  %34 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 2
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %5, ptr %35, align 8
  %36 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 4
  store ptr %37, ptr %38, align 4
  %39 = getelementptr %struct.wm8904_priv, ptr %5, i32 0, i32 3, i32 0
  store ptr @.str.11, ptr %39, align 4
  %40 = getelementptr %struct.wm8904_priv, ptr %5, i32 0, i32 3, i32 1
  store ptr @.str.12, ptr %40, align 4
  %41 = getelementptr %struct.wm8904_priv, ptr %5, i32 0, i32 3, i32 2
  store ptr @.str.13, ptr %41, align 4
  %42 = getelementptr %struct.wm8904_priv, ptr %5, i32 0, i32 3, i32 3
  store ptr @.str.14, ptr %42, align 4
  %43 = getelementptr %struct.wm8904_priv, ptr %5, i32 0, i32 3, i32 4
  store ptr @.str.15, ptr %43, align 4
  %44 = tail call i32 @devm_regulator_bulk_get(ptr noundef %4, i32 noundef 5, ptr noundef %39) #12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef %44) #13
  br label %150

47:                                               ; preds = %32
  %48 = tail call i32 @regulator_bulk_enable(i32 noundef 5, ptr noundef %39) #12
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef %48) #13
  br label %150

51:                                               ; preds = %47
  %52 = load ptr, ptr %5, align 4
  %53 = call i32 @regmap_read(ptr noundef %52, i32 noundef 0, ptr noundef nonnull %3) #12
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %53) #13
  br label %147

56:                                               ; preds = %51
  %57 = load i32, ptr %3, align 4
  %58 = icmp eq i32 %57, 35076
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %57) #13
  br label %147

60:                                               ; preds = %56
  %61 = load ptr, ptr %5, align 4
  %62 = call i32 @regmap_read(ptr noundef %61, i32 noundef 1, ptr noundef nonnull %3) #12
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %62) #13
  br label %147

65:                                               ; preds = %60
  %66 = load i32, ptr %3, align 4
  %67 = add i32 %66, 65
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef %67) #13
  %68 = load ptr, ptr %5, align 4
  %69 = call i32 @regmap_write(ptr noundef %68, i32 noundef 0, i32 noundef 0) #12
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef %69) #13
  br label %147

72:                                               ; preds = %65
  %73 = load ptr, ptr %5, align 4
  %74 = call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 36, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %75 = load ptr, ptr %5, align 4
  %76 = call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef 37, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %77 = load ptr, ptr %5, align 4
  %78 = call i32 @regmap_update_bits_base(ptr noundef %77, i32 noundef 30, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %79 = load ptr, ptr %5, align 4
  %80 = call i32 @regmap_update_bits_base(ptr noundef %79, i32 noundef 31, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %81 = load ptr, ptr %5, align 4
  %82 = call i32 @regmap_update_bits_base(ptr noundef %81, i32 noundef 57, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %83 = load ptr, ptr %5, align 4
  %84 = call i32 @regmap_update_bits_base(ptr noundef %83, i32 noundef 58, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %85 = load ptr, ptr %5, align 4
  %86 = call i32 @regmap_update_bits_base(ptr noundef %85, i32 noundef 59, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %87 = load ptr, ptr %5, align 4
  %88 = call i32 @regmap_update_bits_base(ptr noundef %87, i32 noundef 60, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %89 = load ptr, ptr %5, align 4
  %90 = call i32 @regmap_update_bits_base(ptr noundef %89, i32 noundef 20, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %91 = load ptr, ptr %38, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %139, label %93

93:                                               ; preds = %72
  %94 = getelementptr %struct.wm8904_pdata, ptr %91, i32 0, i32 4, i32 0
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %5, align 4
  %99 = call i32 @regmap_update_bits_base(ptr noundef %98, i32 noundef 121, i32 noundef 65535, i32 noundef %95, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %100 = load ptr, ptr %38, align 4
  br label %101

101:                                              ; preds = %97, %93
  %102 = phi ptr [ %91, %93 ], [ %100, %97 ]
  %103 = getelementptr %struct.wm8904_pdata, ptr %102, i32 0, i32 4, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %101
  %107 = load ptr, ptr %5, align 4
  %108 = call i32 @regmap_update_bits_base(ptr noundef %107, i32 noundef 122, i32 noundef 65535, i32 noundef %104, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %109 = load ptr, ptr %38, align 4
  br label %110

110:                                              ; preds = %106, %101
  %111 = phi ptr [ %109, %106 ], [ %102, %101 ]
  %112 = getelementptr %struct.wm8904_pdata, ptr %111, i32 0, i32 4, i32 2
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %110
  %116 = load ptr, ptr %5, align 4
  %117 = call i32 @regmap_update_bits_base(ptr noundef %116, i32 noundef 123, i32 noundef 65535, i32 noundef %113, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %118 = load ptr, ptr %38, align 4
  br label %119

119:                                              ; preds = %115, %110
  %120 = phi ptr [ %118, %115 ], [ %111, %110 ]
  %121 = getelementptr %struct.wm8904_pdata, ptr %120, i32 0, i32 4, i32 3
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %119
  %125 = load ptr, ptr %5, align 4
  %126 = call i32 @regmap_update_bits_base(ptr noundef %125, i32 noundef 124, i32 noundef 65535, i32 noundef %122, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %127 = load ptr, ptr %38, align 4
  br label %128

128:                                              ; preds = %124, %119
  %129 = phi ptr [ %127, %124 ], [ %120, %119 ]
  %130 = load ptr, ptr %5, align 4
  %131 = getelementptr %struct.wm8904_pdata, ptr %129, i32 0, i32 5, i32 0
  %132 = load i32, ptr %131, align 4
  %133 = call i32 @regmap_update_bits_base(ptr noundef %130, i32 noundef 6, i32 noundef 65535, i32 noundef %132, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %134 = load ptr, ptr %5, align 4
  %135 = load ptr, ptr %38, align 4
  %136 = getelementptr %struct.wm8904_pdata, ptr %135, i32 0, i32 5, i32 1
  %137 = load i32, ptr %136, align 4
  %138 = call i32 @regmap_update_bits_base(ptr noundef %134, i32 noundef 7, i32 noundef 65535, i32 noundef %137, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %139

139:                                              ; preds = %128, %72
  %140 = load ptr, ptr %5, align 4
  %141 = call i32 @regmap_update_bits_base(ptr noundef %140, i32 noundef 104, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %142 = load ptr, ptr %5, align 4
  %143 = call i32 @regmap_update_bits_base(ptr noundef %142, i32 noundef 4, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %144 = load ptr, ptr %5, align 4
  call void @regcache_cache_only(ptr noundef %144, i1 noundef zeroext true) #12
  %145 = call i32 @regulator_bulk_disable(i32 noundef 5, ptr noundef %39) #12
  %146 = call i32 @devm_snd_soc_register_component(ptr noundef %4, ptr noundef nonnull @soc_component_dev_wm8904, ptr noundef nonnull @wm8904_dai, i32 noundef 1) #12
  br label %150

147:                                              ; preds = %71, %64, %59, %55
  %148 = phi i32 [ %53, %55 ], [ -22, %59 ], [ %62, %64 ], [ %69, %71 ]
  %149 = call i32 @regulator_bulk_disable(i32 noundef 5, ptr noundef %39) #12
  br label %150

150:                                              ; preds = %147, %139, %50, %46, %22, %16, %11, %2
  %151 = phi i32 [ %12, %11 ], [ %17, %16 ], [ %44, %46 ], [ %48, %50 ], [ %148, %147 ], [ -12, %2 ], [ %146, %139 ], [ -22, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %151
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8904_readable_register(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  switch i32 %1, label %3 [
    i32 0, label %4
    i32 1, label %4
    i32 4, label %4
    i32 5, label %4
    i32 6, label %4
    i32 7, label %4
    i32 8, label %4
    i32 9, label %4
    i32 10, label %4
    i32 12, label %4
    i32 14, label %4
    i32 15, label %4
    i32 18, label %4
    i32 20, label %4
    i32 21, label %4
    i32 22, label %4
    i32 24, label %4
    i32 25, label %4
    i32 26, label %4
    i32 27, label %4
    i32 30, label %4
    i32 31, label %4
    i32 32, label %4
    i32 33, label %4
    i32 36, label %4
    i32 37, label %4
    i32 38, label %4
    i32 39, label %4
    i32 40, label %4
    i32 41, label %4
    i32 42, label %4
    i32 43, label %4
    i32 44, label %4
    i32 45, label %4
    i32 46, label %4
    i32 47, label %4
    i32 57, label %4
    i32 58, label %4
    i32 59, label %4
    i32 60, label %4
    i32 61, label %4
    i32 67, label %4
    i32 68, label %4
    i32 69, label %4
    i32 71, label %4
    i32 72, label %4
    i32 73, label %4
    i32 74, label %4
    i32 75, label %4
    i32 76, label %4
    i32 77, label %4
    i32 90, label %4
    i32 94, label %4
    i32 98, label %4
    i32 104, label %4
    i32 108, label %4
    i32 109, label %4
    i32 110, label %4
    i32 111, label %4
    i32 112, label %4
    i32 116, label %4
    i32 117, label %4
    i32 118, label %4
    i32 119, label %4
    i32 120, label %4
    i32 121, label %4
    i32 122, label %4
    i32 123, label %4
    i32 124, label %4
    i32 126, label %4
    i32 127, label %4
    i32 128, label %4
    i32 129, label %4
    i32 130, label %4
    i32 134, label %4
    i32 135, label %4
    i32 136, label %4
    i32 137, label %4
    i32 138, label %4
    i32 139, label %4
    i32 140, label %4
    i32 141, label %4
    i32 142, label %4
    i32 143, label %4
    i32 144, label %4
    i32 145, label %4
    i32 146, label %4
    i32 147, label %4
    i32 148, label %4
    i32 149, label %4
    i32 150, label %4
    i32 151, label %4
    i32 152, label %4
    i32 153, label %4
    i32 154, label %4
    i32 155, label %4
    i32 156, label %4
    i32 157, label %4
    i32 161, label %4
    i32 198, label %4
    i32 204, label %4
    i32 247, label %4
    i32 248, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8904_volatile_register(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  switch i32 %1, label %3 [
    i32 0, label %4
    i32 1, label %4
    i32 68, label %4
    i32 73, label %4
    i32 74, label %4
    i32 75, label %4
    i32 76, label %4
    i32 77, label %4
    i32 127, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8904_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.snd_kcontrol_new, align 4
  %3 = alloca %struct.snd_kcontrol_new, align 4
  %4 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.wm8904_priv, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %14 [
    i32 0, label %15
    i32 1, label %10
  ]

10:                                               ; preds = %1
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(40) getelementptr inbounds (%struct.snd_soc_dai_driver, ptr @wm8904_dai, i32 0, i32 10), i8 0, i32 40, i1 false)
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  br label %15

14:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.16, i32 noundef %9) #13
  br label %194

15:                                               ; preds = %10, %1
  %16 = phi ptr [ %13, %10 ], [ %7, %1 ]
  %17 = getelementptr inbounds %struct.wm8904_priv, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = tail call i32 @snd_soc_add_component_controls(ptr noundef %0, ptr noundef nonnull @wm8904_eq_controls, i32 noundef 5) #12
  br label %170

22:                                               ; preds = %15
  %23 = load i32, ptr %18, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %81, label %25

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #12
  store i32 2, ptr %3, align 4
  %26 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 1
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 2
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 3
  store ptr @.str.17, ptr %28, align 4
  %29 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 4
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 5
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 6
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 7
  store ptr @snd_soc_info_enum_double, ptr %32, align 4
  %33 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 8
  store ptr @wm8904_get_drc_enum, ptr %33, align 4
  %34 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 9
  store ptr @wm8904_put_drc_enum, ptr %34, align 4
  %35 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 10
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 11
  %37 = getelementptr inbounds %struct.wm8904_priv, ptr %16, i32 0, i32 8
  %38 = ptrtoint ptr %37 to i32
  store i32 %38, ptr %36, align 4
  %39 = load i32, ptr %18, align 4
  %40 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %39, i32 4) #12
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %42, label %44, !prof !9

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.wm8904_priv, ptr %16, i32 0, i32 6
  store ptr null, ptr %43, align 4
  br label %169

44:                                               ; preds = %25
  %45 = extractvalue { i32, i1 } %40, 0
  %46 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %45, i32 noundef 3264) #14
  %47 = getelementptr inbounds %struct.wm8904_priv, ptr %16, i32 0, i32 6
  store ptr %46, ptr %47, align 4
  %48 = icmp eq ptr %46, null
  br i1 %48, label %169, label %49

49:                                               ; preds = %44
  %50 = load i32, ptr %18, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.wm8904_pdata, ptr %18, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %54, align 4
  store ptr %55, ptr %46, align 64
  %56 = load i32, ptr %18, align 4
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %68

58:                                               ; preds = %58, %52
  %59 = phi i32 [ %65, %58 ], [ 1, %52 ]
  %60 = load ptr, ptr %47, align 4
  %61 = load ptr, ptr %53, align 4
  %62 = getelementptr %struct.wm8904_drc_cfg, ptr %61, i32 %59
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr ptr, ptr %60, i32 %59
  store ptr %63, ptr %64, align 4
  %65 = add nuw nsw i32 %59, 1
  %66 = load i32, ptr %18, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %58, label %68

68:                                               ; preds = %58, %52
  %69 = phi i32 [ %56, %52 ], [ %66, %58 ]
  %70 = load ptr, ptr %47, align 4
  br label %71

71:                                               ; preds = %68, %49
  %72 = phi ptr [ %46, %49 ], [ %70, %68 ]
  %73 = phi i32 [ %50, %49 ], [ %69, %68 ]
  %74 = getelementptr inbounds %struct.wm8904_priv, ptr %16, i32 0, i32 8, i32 3
  store i32 %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.wm8904_priv, ptr %16, i32 0, i32 8, i32 5
  store ptr %72, ptr %75, align 4
  %76 = call i32 @snd_soc_add_component_controls(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1) #12
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %71
  %79 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.18, i32 noundef %76) #13
  br label %80

80:                                               ; preds = %78, %71
  call fastcc void @wm8904_set_drc(ptr noundef %0) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #12
  br label %81

81:                                               ; preds = %80, %22
  %82 = getelementptr inbounds %struct.wm8904_pdata, ptr %18, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %167, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %4, align 4
  %87 = getelementptr inbounds %struct.device, ptr %86, i32 0, i32 8
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.wm8904_priv, ptr %88, i32 0, i32 4
  %90 = load ptr, ptr %89, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #12
  store i32 2, ptr %2, align 4
  %91 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 1
  store i32 0, ptr %91, align 4
  %92 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 2
  store i32 0, ptr %92, align 4
  %93 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 3
  store ptr @.str.28, ptr %93, align 4
  %94 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 4
  store i32 0, ptr %94, align 4
  %95 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 5
  store i32 0, ptr %95, align 4
  %96 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 6
  store i32 0, ptr %96, align 4
  %97 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 7
  store ptr @snd_soc_info_enum_double, ptr %97, align 4
  %98 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 8
  store ptr @wm8904_get_retune_mobile_enum, ptr %98, align 4
  %99 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 9
  store ptr @wm8904_put_retune_mobile_enum, ptr %99, align 4
  %100 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 10
  store i32 0, ptr %100, align 4
  %101 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 11
  %102 = getelementptr inbounds %struct.wm8904_priv, ptr %88, i32 0, i32 12
  %103 = ptrtoint ptr %102 to i32
  store i32 %103, ptr %101, align 4
  %104 = getelementptr inbounds %struct.wm8904_priv, ptr %88, i32 0, i32 9
  store i32 0, ptr %104, align 4
  %105 = getelementptr inbounds %struct.wm8904_priv, ptr %88, i32 0, i32 10
  store ptr null, ptr %105, align 4
  %106 = getelementptr inbounds %struct.wm8904_pdata, ptr %90, i32 0, i32 2
  %107 = load i32, ptr %106, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %157

109:                                              ; preds = %85
  %110 = getelementptr inbounds %struct.wm8904_pdata, ptr %90, i32 0, i32 3
  br label %111

111:                                              ; preds = %150, %109
  %112 = phi i32 [ 0, %109 ], [ %151, %150 ]
  %113 = phi i32 [ 0, %109 ], [ %152, %150 ]
  %114 = icmp sgt i32 %112, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %111
  %116 = load ptr, ptr %110, align 4
  %117 = getelementptr %struct.wm8904_retune_mobile_cfg, ptr %116, i32 %113
  %118 = load ptr, ptr %117, align 4
  %119 = load ptr, ptr %105, align 4
  br label %120

120:                                              ; preds = %126, %115
  %121 = phi i32 [ 0, %115 ], [ %127, %126 ]
  %122 = getelementptr ptr, ptr %119, i32 %121
  %123 = load ptr, ptr %122, align 4
  %124 = call i32 @strcmp(ptr noundef %118, ptr noundef %123) #12
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %120
  %127 = add nuw nsw i32 %121, 1
  %128 = icmp eq i32 %127, %112
  br i1 %128, label %134, label %120

129:                                              ; preds = %120, %111
  %130 = phi i32 [ 0, %111 ], [ %121, %120 ]
  %131 = icmp eq i32 %130, %112
  br i1 %131, label %132, label %150

132:                                              ; preds = %129
  %133 = load ptr, ptr %105, align 4
  br label %134

134:                                              ; preds = %132, %126
  %135 = phi ptr [ %133, %132 ], [ %119, %126 ]
  %136 = shl i32 %112, 2
  %137 = add i32 %136, 4
  %138 = call noalias ptr @krealloc(ptr noundef %135, i32 noundef %137, i32 noundef 3264) #15
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = load i32, ptr %104, align 4
  br label %150

142:                                              ; preds = %134
  %143 = load ptr, ptr %110, align 4
  %144 = getelementptr %struct.wm8904_retune_mobile_cfg, ptr %143, i32 %113
  %145 = load ptr, ptr %144, align 4
  %146 = load i32, ptr %104, align 4
  %147 = getelementptr ptr, ptr %138, i32 %146
  store ptr %145, ptr %147, align 4
  %148 = load i32, ptr %104, align 4
  %149 = add i32 %148, 1
  store i32 %149, ptr %104, align 4
  store ptr %138, ptr %105, align 4
  br label %150

150:                                              ; preds = %142, %140, %129
  %151 = phi i32 [ %141, %140 ], [ %149, %142 ], [ %112, %129 ]
  %152 = add nuw nsw i32 %113, 1
  %153 = load i32, ptr %106, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %111, label %155

155:                                              ; preds = %150
  %156 = load ptr, ptr %105, align 4
  br label %157

157:                                              ; preds = %155, %85
  %158 = phi ptr [ %156, %155 ], [ null, %85 ]
  %159 = phi i32 [ %151, %155 ], [ 0, %85 ]
  %160 = getelementptr inbounds %struct.wm8904_priv, ptr %88, i32 0, i32 12, i32 3
  store i32 %159, ptr %160, align 4
  %161 = getelementptr inbounds %struct.wm8904_priv, ptr %88, i32 0, i32 12, i32 5
  store ptr %158, ptr %161, align 4
  %162 = call i32 @snd_soc_add_component_controls(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1) #12
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %157
  %165 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.29, i32 noundef %162) #13
  br label %166

166:                                              ; preds = %164, %157
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #12
  br label %170

167:                                              ; preds = %81
  %168 = call i32 @snd_soc_add_component_controls(ptr noundef %0, ptr noundef nonnull @wm8904_eq_controls, i32 noundef 5) #12
  br label %170

169:                                              ; preds = %44, %42
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #12
  br label %170

170:                                              ; preds = %169, %167, %166, %20
  %171 = load ptr, ptr %4, align 4
  %172 = getelementptr inbounds %struct.device, ptr %171, i32 0, i32 8
  %173 = load ptr, ptr %172, align 8
  %174 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %175 = call i32 @snd_soc_dapm_new_controls(ptr noundef %174, ptr noundef nonnull @wm8904_core_dapm_widgets, i32 noundef 3) #12
  %176 = call i32 @snd_soc_dapm_add_routes(ptr noundef %174, ptr noundef nonnull @core_intercon, i32 noundef 2) #12
  %177 = getelementptr inbounds %struct.wm8904_priv, ptr %173, i32 0, i32 2
  %178 = load i32, ptr %177, align 4
  switch i32 %178, label %194 [
    i32 0, label %179
    i32 1, label %189
  ]

179:                                              ; preds = %170
  %180 = call i32 @snd_soc_add_component_controls(ptr noundef %0, ptr noundef nonnull @wm8904_adc_snd_controls, i32 noundef 6) #12
  %181 = call i32 @snd_soc_add_component_controls(ptr noundef %0, ptr noundef nonnull @wm8904_dac_snd_controls, i32 noundef 13) #12
  %182 = call i32 @snd_soc_add_component_controls(ptr noundef %0, ptr noundef nonnull @wm8904_snd_controls, i32 noundef 1) #12
  %183 = call i32 @snd_soc_dapm_new_controls(ptr noundef %174, ptr noundef nonnull @wm8904_adc_dapm_widgets, i32 noundef 21) #12
  %184 = call i32 @snd_soc_dapm_new_controls(ptr noundef %174, ptr noundef nonnull @wm8904_dac_dapm_widgets, i32 noundef 17) #12
  %185 = call i32 @snd_soc_dapm_new_controls(ptr noundef %174, ptr noundef nonnull @wm8904_dapm_widgets, i32 noundef 9) #12
  %186 = call i32 @snd_soc_dapm_add_routes(ptr noundef %174, ptr noundef nonnull @adc_intercon, i32 noundef 34) #12
  %187 = call i32 @snd_soc_dapm_add_routes(ptr noundef %174, ptr noundef nonnull @dac_intercon, i32 noundef 21) #12
  %188 = call i32 @snd_soc_dapm_add_routes(ptr noundef %174, ptr noundef nonnull @wm8904_intercon, i32 noundef 22) #12
  br label %194

189:                                              ; preds = %170
  %190 = call i32 @snd_soc_add_component_controls(ptr noundef %0, ptr noundef nonnull @wm8904_dac_snd_controls, i32 noundef 13) #12
  %191 = call i32 @snd_soc_dapm_new_controls(ptr noundef %174, ptr noundef nonnull @wm8904_dac_dapm_widgets, i32 noundef 17) #12
  %192 = call i32 @snd_soc_dapm_add_routes(ptr noundef %174, ptr noundef nonnull @dac_intercon, i32 noundef 21) #12
  %193 = call i32 @snd_soc_dapm_add_routes(ptr noundef %174, ptr noundef nonnull @wm8912_intercon, i32 noundef 4) #12
  br label %194

194:                                              ; preds = %189, %179, %170, %14
  %195 = phi i32 [ -22, %14 ], [ 0, %170 ], [ 0, %179 ], [ 0, %189 ]
  ret i32 %195
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm8904_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8904_set_bias_level(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  switch i32 %1, label %52 [
    i32 0, label %42
    i32 2, label %7
    i32 1, label %10
  ]

7:                                                ; preds = %2
  %8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 5, i32 noundef 6, i32 noundef 2) #12
  %9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 4, i32 noundef 12, i32 noundef 8) #12
  br label %52

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wm8904_priv, ptr %6, i32 0, i32 3
  %16 = tail call i32 @regulator_bulk_enable(i32 noundef 5, ptr noundef %15) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.5, i32 noundef %16) #13
  br label %52

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.wm8904_priv, ptr %6, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @clk_prepare(ptr noundef %22) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = tail call i32 @clk_enable(ptr noundef %22) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  tail call void @clk_unprepare(ptr noundef %22) #12
  br label %29

29:                                               ; preds = %28, %20
  %30 = phi i32 [ %26, %28 ], [ %23, %20 ]
  %31 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.143, i32 noundef %30) #13
  %32 = tail call i32 @regulator_bulk_disable(i32 noundef 5, ptr noundef %15) #12
  br label %52

33:                                               ; preds = %25
  %34 = load ptr, ptr %6, align 4
  tail call void @regcache_cache_only(ptr noundef %34, i1 noundef zeroext false) #12
  %35 = load ptr, ptr %6, align 4
  %36 = tail call i32 @regcache_sync(ptr noundef %35) #12
  %37 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 1) #12
  %38 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 5, i32 noundef 7, i32 noundef 7) #12
  tail call void @msleep(i32 noundef 1) #12
  br label %39

39:                                               ; preds = %33, %10
  %40 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 5, i32 noundef 6, i32 noundef 4) #12
  %41 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 4, i32 noundef 12, i32 noundef 0) #12
  br label %52

42:                                               ; preds = %2
  %43 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 5, i32 noundef 7, i32 noundef 0) #12
  %44 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) #12
  %45 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 0, i32 noundef 0) #12
  %46 = load ptr, ptr %6, align 4
  tail call void @regcache_cache_only(ptr noundef %46, i1 noundef zeroext true) #12
  %47 = load ptr, ptr %6, align 4
  tail call void @regcache_mark_dirty(ptr noundef %47) #12
  %48 = getelementptr inbounds %struct.wm8904_priv, ptr %6, i32 0, i32 3
  %49 = tail call i32 @regulator_bulk_disable(i32 noundef 5, ptr noundef %48) #12
  %50 = getelementptr inbounds %struct.wm8904_priv, ptr %6, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  tail call void @clk_disable(ptr noundef %51) #12
  tail call void @clk_unprepare(ptr noundef %51) #12
  br label %52

52:                                               ; preds = %42, %39, %29, %18, %7, %2
  %53 = phi i32 [ %16, %18 ], [ %30, %29 ], [ 0, %2 ], [ 0, %42 ], [ 0, %39 ], [ 0, %7 ]
  ret i32 %53
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @wm8904_get_drc_enum(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8904_priv, ptr %8, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %10, ptr %11, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8904_put_drc_enum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8904_priv, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = load i32, ptr %10, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.wm8904_priv, ptr %8, i32 0, i32 7
  store i32 %12, ptr %16, align 4
  tail call fastcc void @wm8904_set_drc(ptr noundef %4)
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi i32 [ 0, %15 ], [ -22, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wm8904_set_drc(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 40) #12
  %9 = getelementptr inbounds %struct.wm8904_pdata, ptr %7, i32 0, i32 1
  %10 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 7
  %11 = load ptr, ptr %9, align 4
  %12 = load i32, ptr %10, align 4
  %13 = getelementptr %struct.wm8904_drc_cfg, ptr %11, i32 %12, i32 1, i32 0
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 40, i32 noundef 65535, i32 noundef %15) #12
  %17 = load ptr, ptr %9, align 4
  %18 = load i32, ptr %10, align 4
  %19 = getelementptr %struct.wm8904_drc_cfg, ptr %17, i32 %18, i32 1, i32 1
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 41, i32 noundef 65535, i32 noundef %21) #12
  %23 = load ptr, ptr %9, align 4
  %24 = load i32, ptr %10, align 4
  %25 = getelementptr %struct.wm8904_drc_cfg, ptr %23, i32 %24, i32 1, i32 2
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 42, i32 noundef 65535, i32 noundef %27) #12
  %29 = load ptr, ptr %9, align 4
  %30 = load i32, ptr %10, align 4
  %31 = getelementptr %struct.wm8904_drc_cfg, ptr %29, i32 %30, i32 1, i32 3
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 43, i32 noundef 65535, i32 noundef %33) #12
  %35 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 40, i32 noundef 49152, i32 noundef %8) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @wm8904_get_retune_mobile_enum(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8904_priv, ptr %8, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %10, ptr %11, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8904_put_retune_mobile_enum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8904_priv, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.wm8904_pdata, ptr %10, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.wm8904_priv, ptr %8, i32 0, i32 11
  store i32 %12, ptr %17, align 4
  tail call fastcc void @wm8904_set_retune_mobile(ptr noundef %4)
  br label %18

18:                                               ; preds = %16, %2
  %19 = phi i32 [ 0, %16 ], [ -22, %2 ]
  ret i32 %19
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wm8904_set_retune_mobile(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %65, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %65, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.wm8904_pdata, ptr %7, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.wm8904_pdata, ptr %7, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr ptr, ptr %23, i32 %19
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 22
  br label %27

27:                                               ; preds = %44, %17
  %28 = phi i32 [ 0, %17 ], [ %46, %44 ]
  %29 = phi i32 [ 2147483647, %17 ], [ %45, %44 ]
  %30 = phi i32 [ 0, %17 ], [ %47, %44 ]
  %31 = getelementptr %struct.wm8904_retune_mobile_cfg, ptr %21, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @strcmp(ptr noundef %32, ptr noundef %25)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = getelementptr %struct.wm8904_retune_mobile_cfg, ptr %21, i32 %30, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %26, align 4
  %39 = sub i32 %37, %38
  %40 = tail call i32 @llvm.abs.i32(i32 %39, i1 false)
  %41 = icmp slt i32 %40, %29
  %42 = tail call i32 @llvm.smin.i32(i32 %40, i32 %29)
  %43 = select i1 %41, i32 %30, i32 %28
  br label %44

44:                                               ; preds = %35, %27
  %45 = phi i32 [ %29, %27 ], [ %42, %35 ]
  %46 = phi i32 [ %28, %27 ], [ %43, %35 ]
  %47 = add nuw nsw i32 %30, 1
  %48 = icmp eq i32 %47, %15
  br i1 %48, label %49, label %27

49:                                               ; preds = %44, %13
  %50 = phi i32 [ 0, %13 ], [ %46, %44 ]
  %51 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 134) #12
  %52 = getelementptr inbounds %struct.wm8904_pdata, ptr %7, i32 0, i32 3
  br label %53

53:                                               ; preds = %53, %49
  %54 = phi i32 [ 0, %49 ], [ %61, %53 ]
  %55 = add nuw nsw i32 %54, 134
  %56 = load ptr, ptr %52, align 4
  %57 = getelementptr %struct.wm8904_retune_mobile_cfg, ptr %56, i32 %50, i32 2, i32 %54
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i32
  %60 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef %55, i32 noundef 65535, i32 noundef %59) #12
  %61 = add nuw nsw i32 %54, 1
  %62 = icmp eq i32 %61, 24
  br i1 %62, label %63, label %53

63:                                               ; preds = %53
  %64 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 134, i32 noundef 1, i32 noundef %51) #12
  br label %65

65:                                               ; preds = %63, %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysclk_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  switch i32 %2, label %20 [
    i32 1, label %7
    i32 8, label %18
  ]

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -92
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.wm8904_priv, ptr %11, i32 0, i32 17
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 116, i32 noundef 2, i32 noundef 2) #12
  %17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 116, i32 noundef 1, i32 noundef 1) #12
  br label %20

18:                                               ; preds = %3
  %19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 116, i32 noundef 3, i32 noundef 0) #12
  br label %20

20:                                               ; preds = %18, %15, %7, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8904_adc_osr_put(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @snd_soc_put_volsw(ptr noundef %0, ptr noundef %1) #12
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 5, i32 0
  %12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 198, i32 noundef 5, i32 noundef %11) #12
  br label %13

13:                                               ; preds = %7, %2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @wm8904_get_deemph(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8904_priv, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %10, ptr %11, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8904_put_deemph(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp ugt i32 %6, 1
  br i1 %7, label %41, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.wm8904_priv, ptr %12, i32 0, i32 5
  store i32 %6, ptr %13, align 4
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.wm8904_priv, ptr %16, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.wm8904_priv, ptr %16, i32 0, i32 22
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 44100, %22
  %24 = tail call i32 @llvm.abs.i32(i32 %23, i1 false) #12
  %25 = sub i32 32000, %22
  %26 = tail call i32 @llvm.abs.i32(i32 %25, i1 false) #12
  %27 = icmp slt i32 %24, %26
  %28 = select i1 %27, i32 2, i32 1
  %29 = sub i32 48000, %22
  %30 = tail call i32 @llvm.abs.i32(i32 %29, i1 false) #12
  %31 = getelementptr [4 x i32], ptr @deemph_settings, i32 0, i32 %28
  %32 = load i32, ptr %31, align 4
  %33 = sub i32 %32, %22
  %34 = tail call i32 @llvm.abs.i32(i32 %33, i1 false) #12
  %35 = icmp slt i32 %30, %34
  %36 = shl nuw nsw i32 %28, 1
  %37 = select i1 %35, i32 6, i32 %36
  br label %38

38:                                               ; preds = %20, %8
  %39 = phi i32 [ %37, %20 ], [ 0, %8 ]
  %40 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 33, i32 noundef 6, i32 noundef %39) #12
  br label %41

41:                                               ; preds = %38, %2
  %42 = phi i32 [ %40, %38 ], [ -22, %2 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cp_event(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %6, label %5, !prof !10

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.126, i32 noundef 644, i32 noundef 9, ptr noundef null) #12
  br label %8

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 107374000) #12
  br label %8

8:                                                ; preds = %6, %5
  %9 = phi i32 [ -22, %5 ], [ 0, %6 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @out_pga_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  %7 = getelementptr i8, ptr %5, i32 -92
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 9
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  switch i8 %12, label %15 [
    i8 90, label %16
    i8 94, label %14
  ]

14:                                               ; preds = %3
  br label %16

15:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.126, i32 noundef 727, i32 noundef 9, ptr noundef nonnull @.str.127, i32 noundef %13) #12
  br label %71

16:                                               ; preds = %14, %3
  %17 = phi i32 [ 12, %14 ], [ 3, %3 ]
  %18 = phi i32 [ 2, %14 ], [ 0, %3 ]
  %19 = phi i32 [ 3, %14 ], [ 1, %3 ]
  %20 = phi i32 [ 74, %14 ], [ 76, %3 ]
  %21 = phi i32 [ 73, %14 ], [ 75, %3 ]
  %22 = phi i32 [ 15, %14 ], [ 14, %3 ]
  switch i32 %2, label %71 [
    i32 1, label %23
    i32 2, label %59
    i32 4, label %61
    i32 8, label %63
  ]

23:                                               ; preds = %16
  %24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef %22, i32 noundef 3, i32 noundef 3) #12
  %25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef %13, i32 noundef 17, i32 noundef 17) #12
  %26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef %13, i32 noundef 34, i32 noundef 34) #12
  %27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 67, i32 noundef %17, i32 noundef %17) #12
  %28 = getelementptr %struct.wm8904_priv, ptr %10, i32 0, i32 23, i32 %18
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = getelementptr %struct.wm8904_priv, ptr %10, i32 0, i32 23, i32 %19
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31, %23
  %36 = tail call i32 @snd_soc_component_write(ptr noundef %6, i32 noundef %20, i32 noundef %29) #12
  %37 = getelementptr %struct.wm8904_priv, ptr %10, i32 0, i32 23, i32 %19
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 @snd_soc_component_write(ptr noundef %6, i32 noundef %21, i32 noundef %38) #12
  br label %42

40:                                               ; preds = %31
  %41 = shl nuw nsw i32 %17, 4
  br label %42

42:                                               ; preds = %40, %35
  %43 = phi i32 [ %41, %40 ], [ %17, %35 ]
  %44 = phi i32 [ 500, %40 ], [ 20, %35 ]
  %45 = tail call i32 @snd_soc_component_write(ptr noundef %6, i32 noundef 68, i32 noundef %43) #12
  %46 = shl nuw nsw i32 %17, 8
  br label %47

47:                                               ; preds = %52, %42
  %48 = phi i32 [ %44, %42 ], [ %53, %52 ]
  %49 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 77) #12
  %50 = and i32 %49, %46
  %51 = icmp eq i32 %50, %46
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  tail call void @msleep(i32 noundef 1) #12
  %53 = add nsw i32 %48, -1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %47

55:                                               ; preds = %52
  %56 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.128) #13
  br label %57

57:                                               ; preds = %55, %47
  %58 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef %13, i32 noundef 68, i32 noundef 68) #12
  br label %71

59:                                               ; preds = %16
  %60 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef %13, i32 noundef 136, i32 noundef 136) #12
  br label %71

61:                                               ; preds = %16
  %62 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef %13, i32 noundef 136, i32 noundef 0) #12
  br label %71

63:                                               ; preds = %16
  %64 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef %20) #12
  %65 = getelementptr %struct.wm8904_priv, ptr %10, i32 0, i32 23, i32 %18
  store i32 %64, ptr %65, align 4
  %66 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef %21) #12
  %67 = getelementptr %struct.wm8904_priv, ptr %10, i32 0, i32 23, i32 %19
  store i32 %66, ptr %67, align 4
  %68 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 67, i32 noundef %17, i32 noundef 0) #12
  %69 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef %13, i32 noundef 119, i32 noundef 0) #12
  %70 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef %22, i32 noundef 3, i32 noundef 0) #12
  br label %71

71:                                               ; preds = %63, %61, %59, %57, %16, %15
  %72 = phi i32 [ -22, %15 ], [ 0, %16 ], [ 0, %63 ], [ 0, %61 ], [ 0, %59 ], [ 0, %57 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8904_set_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  switch i32 %1, label %29 [
    i32 0, label %11
    i32 1, label %22
    i32 2, label %25
  ]

11:                                               ; preds = %4
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.wm8904_priv, ptr %10, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_get_rate(ptr noundef %15) #12
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.wm8904_priv, ptr %10, i32 0, i32 17
  store i32 2, ptr %19, align 4
  %20 = tail call i32 @wm8904_set_fll(ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %16, i32 noundef %2)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %29

22:                                               ; preds = %13, %4
  %23 = getelementptr inbounds %struct.wm8904_priv, ptr %10, i32 0, i32 17
  store i32 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.wm8904_priv, ptr %10, i32 0, i32 16
  store i32 %2, ptr %24, align 4
  br label %27

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.wm8904_priv, ptr %10, i32 0, i32 17
  store i32 2, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %22, %18
  %28 = tail call fastcc i32 @wm8904_configure_clocking(ptr noundef %6)
  br label %29

29:                                               ; preds = %27, %18, %11, %4
  %30 = phi i32 [ 0, %27 ], [ 0, %11 ], [ %20, %18 ], [ -22, %4 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8904_set_fll(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_component, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.wm8904_priv, ptr %11, i32 0, i32 13
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %15, label %23

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.wm8904_priv, ptr %11, i32 0, i32 14
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %3
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.wm8904_priv, ptr %11, i32 0, i32 15
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %4
  br i1 %22, label %145, label %23

23:                                               ; preds = %19, %15, %5
  %24 = tail call i32 @snd_soc_component_read(ptr noundef %7, i32 noundef 22) #12
  %25 = icmp eq i32 %4, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.wm8904_priv, ptr %11, i32 0, i32 14
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.wm8904_priv, ptr %11, i32 0, i32 15
  store i32 0, ptr %28, align 4
  %29 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 22, i32 noundef 4, i32 noundef 0) #12
  %30 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 116, i32 noundef 3, i32 noundef 0) #12
  br label %143

31:                                               ; preds = %23
  switch i32 %2, label %104 [
    i32 1, label %32
    i32 3, label %32
    i32 2, label %32
    i32 4, label %106
  ]

32:                                               ; preds = %31, %31, %31
  %33 = icmp ugt i32 %3, 13500000
  br i1 %33, label %37, label %34

34:                                               ; preds = %43, %40, %37, %32
  %35 = phi i32 [ 24, %43 ], [ 16, %40 ], [ 8, %37 ], [ 0, %32 ]
  %36 = phi i32 [ %44, %43 ], [ %41, %40 ], [ %38, %37 ], [ %3, %32 ]
  br label %48

37:                                               ; preds = %32
  %38 = lshr i32 %3, 1
  %39 = icmp ugt i32 %3, 27000001
  br i1 %39, label %40, label %34

40:                                               ; preds = %37
  %41 = lshr i32 %3, 2
  %42 = icmp ugt i32 %3, 54000003
  br i1 %42, label %43, label %34

43:                                               ; preds = %40
  %44 = lshr i32 %3, 3
  %45 = icmp ugt i32 %3, 108000007
  br i1 %45, label %46, label %34

46:                                               ; preds = %43
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef %3) #13
  br label %145

48:                                               ; preds = %52, %34
  %49 = phi i32 [ %53, %52 ], [ 4, %34 ]
  %50 = mul i32 %49, %4
  %51 = icmp ult i32 %50, 90000000
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = add nuw nsw i32 %49, 1
  %54 = icmp eq i32 %53, 65
  br i1 %54, label %55, label %48

55:                                               ; preds = %52
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, i32 noundef %4) #13
  br label %145

57:                                               ; preds = %48
  %58 = icmp ugt i32 %36, 64000
  br i1 %58, label %59, label %69

59:                                               ; preds = %57
  %60 = icmp ugt i32 %36, 128000
  br i1 %60, label %61, label %69

61:                                               ; preds = %59
  %62 = icmp ugt i32 %36, 256000
  br i1 %62, label %63, label %69

63:                                               ; preds = %61
  %64 = icmp ugt i32 %36, 1000000
  br i1 %64, label %65, label %69

65:                                               ; preds = %63
  %66 = icmp ugt i32 %36, 13500000
  br i1 %66, label %67, label %69

67:                                               ; preds = %65
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, i32 noundef %36) #13
  br label %145

69:                                               ; preds = %65, %63, %61, %59, %57
  %70 = phi i32 [ 0, %57 ], [ 1, %59 ], [ 2, %61 ], [ 3, %63 ], [ 4, %65 ]
  %71 = getelementptr [5 x %struct.anon.94], ptr @fll_fratios, i32 0, i32 %70, i32 2
  %72 = load i16, ptr %71, align 4
  %73 = getelementptr [5 x %struct.anon.94], ptr @fll_fratios, i32 0, i32 %70, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = udiv i32 %50, %74
  %76 = freeze i32 %75
  %77 = udiv i32 %76, %36
  %78 = mul i32 %77, %36
  %79 = sub i32 %76, %78
  %80 = zext i32 %79 to i64
  %81 = mul nuw nsw i64 %80, 655360
  %82 = icmp ult i64 %81, 4294967296
  br i1 %82, label %83, label %86, !prof !10

83:                                               ; preds = %69
  %84 = trunc i64 %81 to i32
  %85 = udiv i32 %84, %36
  br label %90

86:                                               ; preds = %69
  %87 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %36, i64 %81) #16, !srcloc !11
  %88 = extractvalue { i64, i64 } %87, 1
  %89 = trunc i64 %88 to i32
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i32 [ %85, %83 ], [ %89, %86 ]
  %92 = urem i32 %91, 10
  %93 = icmp ugt i32 %92, 4
  %94 = add i32 %91, 5
  %95 = select i1 %93, i32 %94, i32 %91
  %96 = udiv i32 %95, 10
  %97 = trunc i32 %96 to i16
  %98 = shl i32 %49, 8
  %99 = add i32 %98, 16776960
  %100 = and i32 %99, 16776960
  %101 = zext i16 %72 to i32
  %102 = shl i32 %77, 5
  %103 = and i32 %102, 2097120
  br label %106

104:                                              ; preds = %31
  %105 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.146, i32 noundef %1) #13
  br label %145

106:                                              ; preds = %90, %31
  %107 = phi i32 [ %101, %90 ], [ 0, %31 ]
  %108 = phi i32 [ %100, %90 ], [ 768, %31 ]
  %109 = phi i32 [ %35, %90 ], [ 0, %31 ]
  %110 = phi i32 [ %103, %90 ], [ 0, %31 ]
  %111 = phi i16 [ %97, %90 ], [ 0, %31 ]
  %112 = phi i32 [ %3, %90 ], [ 12000000, %31 ]
  %113 = phi i32 [ %4, %90 ], [ 12000000, %31 ]
  %114 = tail call i32 @snd_soc_component_read(ptr noundef %7, i32 noundef 116) #12
  %115 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 22, i32 noundef 4, i32 noundef 0) #12
  %116 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 116, i32 noundef 3, i32 noundef 0) #12
  %117 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 161, i32 noundef 2, i32 noundef 2) #12
  %118 = icmp eq i32 %1, 4
  %119 = zext i1 %118 to i32
  %120 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 248, i32 noundef 1, i32 noundef %119) #12
  %121 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 161, i32 noundef 2, i32 noundef 0) #12
  %122 = add i32 %1, -1
  %123 = icmp ult i32 %122, 3
  br i1 %123, label %124, label %128

124:                                              ; preds = %106
  %125 = getelementptr inbounds [3 x i32], ptr @switch.table.wm8904_set_fll, i32 0, i32 %122
  %126 = load i32, ptr %125, align 4
  %127 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 120, i32 noundef 3, i32 noundef %126) #12
  br label %128

128:                                              ; preds = %124, %106
  %129 = icmp eq i16 %111, 0
  %130 = select i1 %129, i32 0, i32 4
  %131 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 116, i32 noundef 4, i32 noundef %130) #12
  %132 = or i32 %108, %107
  %133 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 117, i32 noundef 16135, i32 noundef %132) #12
  %134 = zext i16 %111 to i32
  %135 = tail call i32 @snd_soc_component_write(ptr noundef %7, i32 noundef 118, i32 noundef %134) #12
  %136 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 119, i32 noundef 32736, i32 noundef %110) #12
  %137 = and i32 %109, 524280
  %138 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 120, i32 noundef 24, i32 noundef %137) #12
  %139 = getelementptr inbounds %struct.wm8904_priv, ptr %11, i32 0, i32 14
  store i32 %112, ptr %139, align 4
  %140 = getelementptr inbounds %struct.wm8904_priv, ptr %11, i32 0, i32 15
  store i32 %113, ptr %140, align 4
  store i32 %2, ptr %12, align 4
  %141 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 116, i32 noundef 2, i32 noundef %114) #12
  %142 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 116, i32 noundef 1, i32 noundef %114) #12
  br label %143

143:                                              ; preds = %128, %26
  %144 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 22, i32 noundef 4, i32 noundef %24) #12
  br label %145

145:                                              ; preds = %143, %104, %67, %55, %46, %19
  %146 = phi i32 [ 0, %143 ], [ -22, %104 ], [ 0, %19 ], [ -22, %46 ], [ -22, %55 ], [ -22, %67 ]
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8904_set_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = and i32 %1, 61440
  %6 = add nsw i32 %5, -4096
  %7 = icmp ult i32 %6, 16384
  br i1 %7, label %8, label %41

8:                                                ; preds = %2
  %9 = lshr exact i32 %6, 12
  %10 = getelementptr inbounds [4 x i32], ptr @switch.table.wm8904_set_fmt, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds [4 x i32], ptr @switch.table.wm8904_set_fmt.150, i32 0, i32 %9
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %1, 15
  switch i32 %14, label %41 [
    i32 5, label %15
    i32 4, label %21
    i32 1, label %17
    i32 2, label %27
    i32 3, label %19
  ]

15:                                               ; preds = %8
  %16 = or i32 %11, 19
  br label %21

17:                                               ; preds = %8
  %18 = or i32 %11, 2
  br label %27

19:                                               ; preds = %8
  %20 = or i32 %11, 1
  br label %27

21:                                               ; preds = %15, %8
  %22 = phi i32 [ %11, %8 ], [ %16, %15 ]
  %23 = or i32 %22, 3
  %24 = and i32 %1, 3840
  switch i32 %24, label %41 [
    i32 0, label %37
    i32 768, label %25
  ]

25:                                               ; preds = %21
  %26 = or i32 %22, 131
  br label %37

27:                                               ; preds = %19, %17, %8
  %28 = phi i32 [ %18, %17 ], [ %11, %8 ], [ %20, %19 ]
  %29 = lshr i32 %1, 8
  %30 = and i32 %29, 15
  switch i32 %30, label %41 [
    i32 0, label %37
    i32 4, label %31
    i32 3, label %33
    i32 2, label %35
  ]

31:                                               ; preds = %27
  %32 = or i32 %28, 144
  br label %37

33:                                               ; preds = %27
  %34 = or i32 %28, 128
  br label %37

35:                                               ; preds = %27
  %36 = or i32 %28, 16
  br label %37

37:                                               ; preds = %35, %33, %31, %27, %25, %21
  %38 = phi i32 [ %36, %35 ], [ %34, %33 ], [ %32, %31 ], [ %28, %27 ], [ %26, %25 ], [ %23, %21 ]
  %39 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 25, i32 noundef 211, i32 noundef %38) #12
  %40 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 27, i32 noundef 2048, i32 noundef %13) #12
  br label %41

41:                                               ; preds = %37, %27, %21, %8, %2
  %42 = phi i32 [ 0, %37 ], [ -22, %2 ], [ -22, %8 ], [ -22, %21 ], [ -22, %27 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8904_set_tdm_slot(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_component, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %5
  switch i32 %2, label %25 [
    i32 3, label %15
    i32 12, label %14
  ]

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14, %13
  %16 = phi i32 [ 11264, %14 ], [ 10240, %13 ]
  switch i32 %1, label %25 [
    i32 3, label %19
    i32 12, label %17
  ]

17:                                               ; preds = %15
  %18 = or i32 %16, 4096
  br label %19

19:                                               ; preds = %17, %15, %5
  %20 = phi i32 [ 0, %5 ], [ %18, %17 ], [ %16, %15 ]
  %21 = getelementptr inbounds %struct.wm8904_priv, ptr %11, i32 0, i32 19
  store i32 %4, ptr %21, align 4
  %22 = sdiv i32 %3, 2
  %23 = getelementptr inbounds %struct.wm8904_priv, ptr %11, i32 0, i32 20
  store i32 %22, ptr %23, align 4
  %24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 25, i32 noundef 15360, i32 noundef %20) #12
  br label %25

25:                                               ; preds = %19, %15, %13
  %26 = phi i32 [ 0, %19 ], [ -22, %13 ], [ -22, %15 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8904_mute(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %1, 0
  %7 = select i1 %6, i32 0, i32 8
  %8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 33, i32 noundef 8, i32 noundef %7) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8904_hw_params(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.wm8904_priv, ptr %9, i32 0, i32 22
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.wm8904_priv, ptr %9, i32 0, i32 20
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.wm8904_priv, ptr %9, i32 0, i32 19
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @snd_soc_calc_bclk(i32 noundef %11, i32 noundef %18, i32 noundef 2, i32 noundef %14) #12
  br label %22

20:                                               ; preds = %3
  %21 = tail call i32 @snd_soc_params_to_bclk(ptr noundef %1) #12
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i32 [ %21, %20 ], [ %19, %16 ]
  %24 = getelementptr inbounds %struct.wm8904_priv, ptr %9, i32 0, i32 21
  store i32 %23, ptr %24, align 4
  %25 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %33, %22
  %29 = phi i32 [ 0, %22 ], [ 32, %33 ]
  %30 = phi i32 [ %26, %22 ], [ %35, %33 ]
  %31 = tail call i32 @llvm.cttz.i32(i32 %30, i1 true) #12, !range !12
  %32 = or i32 %31, %29
  br label %37

33:                                               ; preds = %22
  %34 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %28

37:                                               ; preds = %33, %28
  %38 = phi i32 [ %32, %28 ], [ 0, %33 ]
  %39 = tail call i32 @snd_pcm_format_width(i32 noundef %38) #12
  %40 = add i32 %39, -16
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 30)
  %42 = icmp ult i32 %41, 5
  br i1 %42, label %43, label %221

43:                                               ; preds = %37
  %44 = trunc i32 %41 to i8
  %45 = lshr i8 23, %44
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %221, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds [5 x i32], ptr @switch.table.wm8904_hw_params, i32 0, i32 %41
  %50 = load i32, ptr %49, align 4
  %51 = tail call fastcc i32 @wm8904_configure_clocking(ptr noundef %5)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %221

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.wm8904_priv, ptr %9, i32 0, i32 18
  %55 = load i32, ptr %54, align 4
  %56 = lshr i32 %55, 6
  %57 = load i32, ptr %12, align 4
  %58 = sub i32 %56, %57
  %59 = tail call i32 @llvm.abs.i32(i32 %58, i1 false)
  %60 = lshr i32 %55, 7
  %61 = sub i32 %60, %57
  %62 = tail call i32 @llvm.abs.i32(i32 %61, i1 false)
  %63 = icmp slt i32 %62, %59
  %64 = tail call i32 @llvm.smin.i32(i32 %62, i32 %59)
  %65 = zext i1 %63 to i32
  %66 = udiv i32 %55, 192
  %67 = sub i32 %66, %57
  %68 = tail call i32 @llvm.abs.i32(i32 %67, i1 false)
  %69 = icmp slt i32 %68, %64
  %70 = tail call i32 @llvm.smin.i32(i32 %68, i32 %64)
  %71 = select i1 %69, i32 2, i32 %65
  %72 = lshr i32 %55, 8
  %73 = sub i32 %72, %57
  %74 = tail call i32 @llvm.abs.i32(i32 %73, i1 false)
  %75 = icmp slt i32 %74, %70
  %76 = tail call i32 @llvm.smin.i32(i32 %74, i32 %70)
  %77 = select i1 %75, i32 3, i32 %71
  %78 = udiv i32 %55, 384
  %79 = sub i32 %78, %57
  %80 = tail call i32 @llvm.abs.i32(i32 %79, i1 false)
  %81 = icmp slt i32 %80, %76
  %82 = tail call i32 @llvm.smin.i32(i32 %80, i32 %76)
  %83 = select i1 %81, i32 4, i32 %77
  %84 = lshr i32 %55, 9
  %85 = sub i32 %84, %57
  %86 = tail call i32 @llvm.abs.i32(i32 %85, i1 false)
  %87 = icmp slt i32 %86, %82
  %88 = tail call i32 @llvm.smin.i32(i32 %86, i32 %82)
  %89 = select i1 %87, i32 5, i32 %83
  %90 = udiv i32 %55, 786
  %91 = sub i32 %90, %57
  %92 = tail call i32 @llvm.abs.i32(i32 %91, i1 false)
  %93 = icmp slt i32 %92, %88
  %94 = tail call i32 @llvm.smin.i32(i32 %92, i32 %88)
  %95 = select i1 %93, i32 6, i32 %89
  %96 = lshr i32 %55, 10
  %97 = sub i32 %96, %57
  %98 = tail call i32 @llvm.abs.i32(i32 %97, i1 false)
  %99 = icmp slt i32 %98, %94
  %100 = tail call i32 @llvm.smin.i32(i32 %98, i32 %94)
  %101 = select i1 %99, i32 7, i32 %95
  %102 = udiv i32 %55, 1408
  %103 = sub i32 %102, %57
  %104 = tail call i32 @llvm.abs.i32(i32 %103, i1 false)
  %105 = icmp slt i32 %104, %100
  %106 = tail call i32 @llvm.smin.i32(i32 %104, i32 %100)
  %107 = select i1 %105, i32 8, i32 %101
  %108 = udiv i32 %55, 1536
  %109 = sub i32 %108, %57
  %110 = tail call i32 @llvm.abs.i32(i32 %109, i1 false)
  %111 = icmp slt i32 %110, %106
  %112 = select i1 %111, i32 9, i32 %107
  %113 = getelementptr [10 x %struct.anon.95], ptr @clk_sys_rates, i32 0, i32 %112, i32 1
  %114 = load i32, ptr %113, align 4
  %115 = add i32 %57, -8000
  %116 = icmp slt i32 %115, 0
  %117 = sub i32 8000, %57
  %118 = select i1 %116, i32 %117, i32 %115
  %119 = add i32 %57, -11025
  %120 = tail call i32 @llvm.abs.i32(i32 %119, i1 false)
  %121 = icmp slt i32 %120, %118
  %122 = tail call i32 @llvm.smin.i32(i32 %120, i32 %118)
  %123 = zext i1 %121 to i32
  %124 = add i32 %57, -12000
  %125 = tail call i32 @llvm.abs.i32(i32 %124, i1 false)
  %126 = icmp slt i32 %125, %122
  %127 = tail call i32 @llvm.smin.i32(i32 %125, i32 %122)
  %128 = select i1 %126, i32 2, i32 %123
  %129 = add i32 %57, -16000
  %130 = tail call i32 @llvm.abs.i32(i32 %129, i1 false)
  %131 = icmp slt i32 %130, %127
  %132 = tail call i32 @llvm.smin.i32(i32 %130, i32 %127)
  %133 = select i1 %131, i32 3, i32 %128
  %134 = add i32 %57, -22050
  %135 = tail call i32 @llvm.abs.i32(i32 %134, i1 false)
  %136 = icmp slt i32 %135, %132
  %137 = tail call i32 @llvm.smin.i32(i32 %135, i32 %132)
  %138 = select i1 %136, i32 4, i32 %133
  %139 = add i32 %57, -24000
  %140 = tail call i32 @llvm.abs.i32(i32 %139, i1 false)
  %141 = icmp slt i32 %140, %137
  %142 = tail call i32 @llvm.smin.i32(i32 %140, i32 %137)
  %143 = select i1 %141, i32 5, i32 %138
  %144 = add i32 %57, -32000
  %145 = tail call i32 @llvm.abs.i32(i32 %144, i1 false)
  %146 = icmp slt i32 %145, %142
  %147 = tail call i32 @llvm.smin.i32(i32 %145, i32 %142)
  %148 = select i1 %146, i32 6, i32 %143
  %149 = add i32 %57, -44100
  %150 = tail call i32 @llvm.abs.i32(i32 %149, i1 false)
  %151 = icmp slt i32 %150, %147
  %152 = tail call i32 @llvm.smin.i32(i32 %150, i32 %147)
  %153 = select i1 %151, i32 7, i32 %148
  %154 = add i32 %57, -48000
  %155 = tail call i32 @llvm.abs.i32(i32 %154, i1 false)
  %156 = icmp slt i32 %155, %152
  %157 = select i1 %156, i32 8, i32 %153
  %158 = shl i32 %114, 10
  %159 = getelementptr [9 x %struct.anon.96], ptr @sample_rates, i32 0, i32 %157, i32 1
  %160 = load i32, ptr %159, align 4
  %161 = or i32 %160, %158
  %162 = icmp slt i32 %57, 24001
  %163 = select i1 %162, i32 2048, i32 0
  %164 = mul i32 %55, 10
  %165 = load i32, ptr %24, align 4
  br label %166

166:                                              ; preds = %175, %53
  %167 = phi i32 [ 0, %53 ], [ %179, %175 ]
  %168 = phi i32 [ 0, %53 ], [ %178, %175 ]
  %169 = phi i32 [ 2147483647, %53 ], [ %177, %175 ]
  %170 = getelementptr [20 x %struct.anon.97], ptr @bclk_divs, i32 0, i32 %167
  %171 = load i32, ptr %170, align 4
  %172 = udiv i32 %164, %171
  %173 = sub i32 %172, %165
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %166
  %176 = icmp slt i32 %173, %169
  %177 = tail call i32 @llvm.smin.i32(i32 %173, i32 %169)
  %178 = select i1 %176, i32 %167, i32 %168
  %179 = add nuw nsw i32 %167, 1
  %180 = icmp eq i32 %179, 20
  br i1 %180, label %181, label %166

181:                                              ; preds = %175, %166
  %182 = phi i32 [ %168, %166 ], [ %178, %175 ]
  %183 = getelementptr [20 x %struct.anon.97], ptr @bclk_divs, i32 0, i32 %182
  %184 = load i32, ptr %183, align 4
  %185 = udiv i32 %164, %184
  store i32 %185, ptr %24, align 4
  %186 = getelementptr [20 x %struct.anon.97], ptr @bclk_divs, i32 0, i32 %182, i32 1
  %187 = load i32, ptr %186, align 4
  %188 = sdiv i32 %185, %57
  %189 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 33, i32 noundef 2048, i32 noundef %163) #12
  %190 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 25, i32 noundef 12, i32 noundef %50) #12
  %191 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 26, i32 noundef 31, i32 noundef %187) #12
  %192 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 27, i32 noundef 2047, i32 noundef %188) #12
  %193 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 21, i32 noundef 15367, i32 noundef %161) #12
  tail call fastcc void @wm8904_set_retune_mobile(ptr noundef %5)
  %194 = load ptr, ptr %6, align 4
  %195 = getelementptr inbounds %struct.device, ptr %194, i32 0, i32 8
  %196 = load ptr, ptr %195, align 8
  %197 = getelementptr inbounds %struct.wm8904_priv, ptr %196, i32 0, i32 5
  %198 = load i32, ptr %197, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %218, label %200

200:                                              ; preds = %181
  %201 = getelementptr inbounds %struct.wm8904_priv, ptr %196, i32 0, i32 22
  %202 = load i32, ptr %201, align 4
  %203 = sub i32 44100, %202
  %204 = tail call i32 @llvm.abs.i32(i32 %203, i1 false) #12
  %205 = sub i32 32000, %202
  %206 = tail call i32 @llvm.abs.i32(i32 %205, i1 false) #12
  %207 = icmp slt i32 %204, %206
  %208 = select i1 %207, i32 2, i32 1
  %209 = sub i32 48000, %202
  %210 = tail call i32 @llvm.abs.i32(i32 %209, i1 false) #12
  %211 = getelementptr [4 x i32], ptr @deemph_settings, i32 0, i32 %208
  %212 = load i32, ptr %211, align 4
  %213 = sub i32 %212, %202
  %214 = tail call i32 @llvm.abs.i32(i32 %213, i1 false) #12
  %215 = icmp slt i32 %210, %214
  %216 = shl nuw nsw i32 %208, 1
  %217 = select i1 %215, i32 6, i32 %216
  br label %218

218:                                              ; preds = %200, %181
  %219 = phi i32 [ %217, %200 ], [ 0, %181 ]
  %220 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 33, i32 noundef 6, i32 noundef %219) #12
  br label %221

221:                                              ; preds = %218, %48, %43, %37
  %222 = phi i32 [ 0, %218 ], [ -22, %37 ], [ %51, %48 ], [ -22, %43 ]
  ret i32 %222
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @wm8904_configure_clocking(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 22) #12
  %7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 22, i32 noundef 16384, i32 noundef 0) #12
  %8 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 17
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %19 [
    i32 1, label %10
    i32 2, label %15
  ]

10:                                               ; preds = %1
  %11 = and i32 %6, -16385
  %12 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 16
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 116, i32 noundef 3, i32 noundef 0) #12
  br label %21

15:                                               ; preds = %1
  %16 = or i32 %6, 16384
  %17 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 15
  %18 = load i32, ptr %17, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.145) #13
  br label %31

21:                                               ; preds = %15, %10
  %22 = phi i32 [ %16, %15 ], [ %11, %10 ]
  %23 = phi i32 [ %18, %15 ], [ %13, %10 ]
  %24 = icmp ugt i32 %23, 13500000
  %25 = zext i1 %24 to i32
  %26 = lshr i32 %23, %25
  %27 = zext i1 %24 to i32
  %28 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 18
  store i32 %26, ptr %28, align 4
  %29 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 20, i32 noundef 1, i32 noundef %27) #12
  %30 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 22, i32 noundef 16388, i32 noundef %22) #12
  br label %31

31:                                               ; preds = %21, %19
  %32 = phi i32 [ -22, %19 ], [ 0, %21 ]
  ret i32 %32
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_calc_bclk(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_bclk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(1) }
attributes #16 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148420877, i64 2148421157, i64 2148421491, i64 2148421825}
!12 = !{i32 0, i32 33}
