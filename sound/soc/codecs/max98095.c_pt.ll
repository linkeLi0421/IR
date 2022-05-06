; ModuleID = '/llk/IR/sound/soc/codecs/max98095.c_pt.bc'
source_filename = "../sound/soc/codecs/max98095.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max98095_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22max98095_jack_detect\22\09\09\09\09\09"
module asm "__kstrtabns_max98095_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.lock_class_key = type {}
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.89, ptr }
%union.anon.89 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.81, i32 }
%union.anon.81 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.anon.94 = type { i32, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
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
%struct.max98095_priv = type { ptr, i32, ptr, ptr, i32, [3 x %struct.max98095_cdata], ptr, ptr, %struct.soc_enum, %struct.soc_enum, i32, i32, i8, i32, i32, ptr, ptr, %struct.mutex }
%struct.max98095_cdata = type { i32, i32, i32, i32 }
%struct.max98095_pdata = type { ptr, i32, ptr, i32, i8, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.max98095_eq_cfg = type { ptr, i32, [5 x i16], [5 x i16], [5 x i16], [5 x i16], [5 x i16] }
%struct.max98095_biquad_cfg = type { ptr, i32, [5 x i16], [5 x i16] }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.80, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.80 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.75, [128 x i8] }
%union.anon.75 = type { %union.anon.77 }
%union.anon.77 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to cfg jack irqs %d\0A\00", align 1
@__kstrtab_max98095_jack_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_max98095_jack_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_max98095_jack_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max98095_jack_detect to i32), ptr @__kstrtab_max98095_jack_detect, ptr @__kstrtabns_max98095_jack_detect }, section "___ksymtab_gpl+max98095_jack_detect", align 4
@max98095_i2c_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max98095\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@max98095_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max98095\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description254 = internal constant [37 x i8] c"description=ALSA SoC MAX98095 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [20 x i8] c"author=Peter Hsiang\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to cfg auto detect %d\0A\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@max98095_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @max98095_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max98095_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max98095_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"max98095\00", align 1
@max98095_i2c_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"&max98095->lock\00", align 1
@max98095_regmap = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @max98095_writeable, ptr @max98095_readable, ptr @max98095_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98095_reg_def, i32 138, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to allocate regmap: %d\0A\00", align 1
@soc_component_dev_max98095 = internal constant %struct.snd_soc_component_driver { ptr null, ptr @max98095_snd_controls, i32 28, ptr @max98095_dapm_widgets, i32 45, ptr @max98095_audio_map, i32 76, ptr @max98095_probe, ptr @max98095_remove, ptr @max98095_suspend, ptr @max98095_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98095_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 58, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@max98095_dai = internal global [3 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.196, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @max98095_dai1_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.64, i64 68, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.67, i64 68, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.197, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @max98095_dai2_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.70, i64 68, i32 2046, i32 0, i32 0, i32 1, i32 1, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.53, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @max98095_dai3_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.72, i64 68, i32 2046, i32 0, i32 0, i32 1, i32 1, i32 0 }, i8 0, i32 0, i32 0 }], align 8
@max98095_reg_def = internal constant [138 x %struct.reg_default] [%struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 39, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 55, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 57, i32 0 }, %struct.reg_default { i32 58, i32 0 }, %struct.reg_default { i32 59, i32 0 }, %struct.reg_default { i32 60, i32 0 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 62, i32 0 }, %struct.reg_default { i32 63, i32 0 }, %struct.reg_default { i32 64, i32 0 }, %struct.reg_default { i32 65, i32 0 }, %struct.reg_default { i32 66, i32 0 }, %struct.reg_default { i32 67, i32 0 }, %struct.reg_default { i32 68, i32 0 }, %struct.reg_default { i32 69, i32 0 }, %struct.reg_default { i32 70, i32 0 }, %struct.reg_default { i32 71, i32 0 }, %struct.reg_default { i32 72, i32 0 }, %struct.reg_default { i32 73, i32 0 }, %struct.reg_default { i32 74, i32 0 }, %struct.reg_default { i32 75, i32 0 }, %struct.reg_default { i32 76, i32 0 }, %struct.reg_default { i32 77, i32 0 }, %struct.reg_default { i32 78, i32 0 }, %struct.reg_default { i32 79, i32 0 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 81, i32 0 }, %struct.reg_default { i32 82, i32 0 }, %struct.reg_default { i32 83, i32 0 }, %struct.reg_default { i32 84, i32 0 }, %struct.reg_default { i32 85, i32 0 }, %struct.reg_default { i32 86, i32 0 }, %struct.reg_default { i32 87, i32 0 }, %struct.reg_default { i32 88, i32 0 }, %struct.reg_default { i32 89, i32 0 }, %struct.reg_default { i32 90, i32 0 }, %struct.reg_default { i32 91, i32 0 }, %struct.reg_default { i32 92, i32 0 }, %struct.reg_default { i32 93, i32 0 }, %struct.reg_default { i32 94, i32 0 }, %struct.reg_default { i32 95, i32 0 }, %struct.reg_default { i32 96, i32 0 }, %struct.reg_default { i32 97, i32 0 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 99, i32 0 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 101, i32 0 }, %struct.reg_default { i32 102, i32 0 }, %struct.reg_default { i32 103, i32 0 }, %struct.reg_default { i32 104, i32 0 }, %struct.reg_default { i32 105, i32 0 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 107, i32 0 }, %struct.reg_default { i32 108, i32 0 }, %struct.reg_default { i32 109, i32 0 }, %struct.reg_default { i32 110, i32 0 }, %struct.reg_default { i32 111, i32 0 }, %struct.reg_default { i32 112, i32 0 }, %struct.reg_default { i32 113, i32 0 }, %struct.reg_default { i32 114, i32 0 }, %struct.reg_default { i32 115, i32 0 }, %struct.reg_default { i32 116, i32 0 }, %struct.reg_default { i32 117, i32 0 }, %struct.reg_default { i32 118, i32 0 }, %struct.reg_default { i32 119, i32 0 }, %struct.reg_default { i32 120, i32 0 }, %struct.reg_default { i32 121, i32 0 }, %struct.reg_default { i32 122, i32 0 }, %struct.reg_default { i32 123, i32 0 }, %struct.reg_default { i32 124, i32 0 }, %struct.reg_default { i32 125, i32 0 }, %struct.reg_default { i32 126, i32 0 }, %struct.reg_default { i32 127, i32 0 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 129, i32 0 }, %struct.reg_default { i32 130, i32 0 }, %struct.reg_default { i32 131, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 133, i32 0 }, %struct.reg_default { i32 134, i32 0 }, %struct.reg_default { i32 135, i32 0 }, %struct.reg_default { i32 136, i32 0 }, %struct.reg_default { i32 137, i32 0 }, %struct.reg_default { i32 138, i32 0 }, %struct.reg_default { i32 139, i32 0 }, %struct.reg_default { i32 140, i32 0 }, %struct.reg_default { i32 141, i32 0 }, %struct.reg_default { i32 142, i32 0 }, %struct.reg_default { i32 143, i32 0 }, %struct.reg_default { i32 144, i32 0 }, %struct.reg_default { i32 145, i32 0 }, %struct.reg_default { i32 146, i32 48 }, %struct.reg_default { i32 147, i32 240 }, %struct.reg_default { i32 148, i32 0 }, %struct.reg_default { i32 149, i32 0 }, %struct.reg_default { i32 150, i32 63 }, %struct.reg_default { i32 151, i32 0 }, %struct.reg_default { i32 255, i32 0 }], align 4
@max98095_snd_controls = internal constant [28 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98095_hp_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.6, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98095_spk_tlv }, i32 ptrtoint (ptr @.compoundliteral.7 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.8, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98095_rcv_lout_tlv }, i32 ptrtoint (ptr @.compoundliteral.9 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98095_rcv_lout_tlv }, i32 ptrtoint (ptr @.compoundliteral.11 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.12, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.13 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.15 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.17 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.19 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98095_mic_tlv }, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98095_mic_tlv }, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @max98095_mic1pre_get, ptr @max98095_mic1pre_set, %union.anon.81 { ptr @max98095_micboost_tlv }, i32 ptrtoint (ptr @.compoundliteral.25 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @max98095_mic2pre_get, ptr @max98095_mic2pre_set, %union.anon.81 { ptr @max98095_micboost_tlv }, i32 ptrtoint (ptr @.compoundliteral.27 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98095_lin_tlv }, i32 ptrtoint (ptr @.compoundliteral.29 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98095_adc_tlv }, i32 ptrtoint (ptr @.compoundliteral.31 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98095_adc_tlv }, i32 ptrtoint (ptr @.compoundliteral.33 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98095_adcboost_tlv }, i32 ptrtoint (ptr @.compoundliteral.35 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98095_adcboost_tlv }, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.43 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @max98095_dai1_filter_mode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @max98095_dai2_filter_mode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @max98095_dai1_dac_filter_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @max98095_dai2_dac_filter_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @max98095_dai3_dac_filter_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @max98095_linein_mode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @max98095_lineout_mode_enum to i32) }], align 4
@max98095_audio_map = internal constant [76 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.82, ptr @.str.118, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr @.str.120, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr @.str.122, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr @.str.124, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr @.str.126, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr @.str.128, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.118, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.120, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.122, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.124, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.126, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.128, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.118, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.120, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.138, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.140, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.122, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.124, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.126, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.128, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.118, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.120, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.138, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.140, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.122, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.124, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.126, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.128, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr @.str.118, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr @.str.120, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr @.str.122, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr @.str.124, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr @.str.126, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr @.str.128, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr @.str.118, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr @.str.120, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr @.str.122, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr @.str.124, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr @.str.126, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr @.str.128, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr @.str.118, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr @.str.120, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr @.str.122, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr @.str.124, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr @.str.126, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr @.str.128, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr null, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr null, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr null, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr null, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr null, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr null, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr @.str.122, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr @.str.124, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr @.str.126, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr @.str.128, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr @.str.122, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr @.str.124, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr @.str.126, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr @.str.128, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr null, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"Headphone Volume\00", align 1
@max98095_hp_tlv = internal constant [32 x i32] [i32 3, i32 120, i32 0, i32 6, i32 1, i32 8, i32 -6700, i32 400, i32 7, i32 14, i32 1, i32 8, i32 -4000, i32 300, i32 15, i32 21, i32 1, i32 8, i32 -1700, i32 200, i32 22, i32 27, i32 1, i32 8, i32 -400, i32 100, i32 28, i32 31, i32 1, i32 8, i32 150, i32 50], align 4
@.compoundliteral = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 100, i32 101, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"Speaker Volume\00", align 1
@max98095_spk_tlv = internal constant [26 x i32] [i32 3, i32 96, i32 0, i32 10, i32 1, i32 8, i32 -5900, i32 400, i32 11, i32 18, i32 1, i32 8, i32 -1700, i32 200, i32 19, i32 27, i32 1, i32 8, i32 -200, i32 100, i32 28, i32 39, i32 1, i32 8, i32 650, i32 50], align 4
@.compoundliteral.7 = internal global %struct.soc_mixer_control { i32 0, i32 39, i32 39, i32 103, i32 104, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"Receiver Volume\00", align 1
@max98095_rcv_lout_tlv = internal constant [32 x i32] [i32 3, i32 120, i32 0, i32 6, i32 1, i32 8, i32 -6200, i32 400, i32 7, i32 14, i32 1, i32 8, i32 -3500, i32 300, i32 15, i32 21, i32 1, i32 8, i32 -1200, i32 200, i32 22, i32 27, i32 1, i32 8, i32 100, i32 100, i32 28, i32 31, i32 1, i32 8, i32 650, i32 50], align 4
@.compoundliteral.9 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 102, i32 102, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"Lineout Volume\00", align 1
@.compoundliteral.11 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 98, i32 99, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"Headphone Switch\00", align 1
@.compoundliteral.13 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 100, i32 101, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"Speaker Switch\00", align 1
@.compoundliteral.15 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 103, i32 104, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"Receiver Switch\00", align 1
@.compoundliteral.17 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 102, i32 102, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"Lineout Switch\00", align 1
@.compoundliteral.19 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 98, i32 99, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.20 = private unnamed_addr constant [12 x i8] c"MIC1 Volume\00", align 1
@max98095_mic_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 0, i32 100], align 4
@.compoundliteral.21 = internal global %struct.soc_mixer_control { i32 0, i32 20, i32 20, i32 95, i32 95, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.22 = private unnamed_addr constant [12 x i8] c"MIC2 Volume\00", align 1
@.compoundliteral.23 = internal global %struct.soc_mixer_control { i32 0, i32 20, i32 20, i32 96, i32 96, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.24 = private unnamed_addr constant [18 x i8] c"MIC1 Boost Volume\00", align 1
@max98095_micboost_tlv = internal constant [14 x i32] [i32 3, i32 48, i32 0, i32 1, i32 1, i32 8, i32 0, i32 2000, i32 2, i32 2, i32 1, i32 8, i32 3000, i32 0], align 4
@.compoundliteral.25 = internal global %struct.soc_mixer_control { i32 0, i32 2, i32 2, i32 95, i32 95, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.26 = private unnamed_addr constant [18 x i8] c"MIC2 Boost Volume\00", align 1
@.compoundliteral.27 = internal global %struct.soc_mixer_control { i32 0, i32 2, i32 2, i32 96, i32 96, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.28 = private unnamed_addr constant [14 x i8] c"Linein Volume\00", align 1
@max98095_lin_tlv = internal constant [20 x i32] [i32 3, i32 72, i32 0, i32 2, i32 1, i32 8, i32 -600, i32 300, i32 3, i32 3, i32 1, i32 8, i32 300, i32 1100, i32 4, i32 5, i32 1, i32 8, i32 1400, i32 600], align 4
@.compoundliteral.29 = internal global %struct.soc_mixer_control { i32 0, i32 5, i32 5, i32 97, i32 97, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.30 = private unnamed_addr constant [12 x i8] c"ADCL Volume\00", align 1
@max98095_adc_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -1200, i32 100], align 4
@.compoundliteral.31 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 93, i32 93, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.32 = private unnamed_addr constant [12 x i8] c"ADCR Volume\00", align 1
@.compoundliteral.33 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 94, i32 94, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.34 = private unnamed_addr constant [18 x i8] c"ADCL Boost Volume\00", align 1
@max98095_adcboost_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 0, i32 600], align 4
@.compoundliteral.35 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 93, i32 93, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.36 = private unnamed_addr constant [18 x i8] c"ADCR Boost Volume\00", align 1
@.compoundliteral.37 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 94, i32 94, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.38 = private unnamed_addr constant [11 x i8] c"EQ1 Switch\00", align 1
@.compoundliteral.39 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 136, i32 136, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.40 = private unnamed_addr constant [11 x i8] c"EQ2 Switch\00", align 1
@.compoundliteral.41 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 136, i32 136, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.42 = private unnamed_addr constant [15 x i8] c"Biquad1 Switch\00", align 1
@.compoundliteral.43 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 136, i32 136, i32 2, i32 2, i32 0, i8 0 }, align 4
@.str.44 = private unnamed_addr constant [15 x i8] c"Biquad2 Switch\00", align 1
@.compoundliteral.45 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 136, i32 136, i32 3, i32 3, i32 0, i8 0 }, align 4
@.str.46 = private unnamed_addr constant [17 x i8] c"DAI1 Filter Mode\00", align 1
@max98095_dai1_filter_mode_enum = internal constant %struct.soc_enum { i32 46, i8 7, i8 7, i32 2, i32 1, ptr @max98095_fltr_mode, ptr null, i8 0 }, align 4
@.str.47 = private unnamed_addr constant [17 x i8] c"DAI2 Filter Mode\00", align 1
@max98095_dai2_filter_mode_enum = internal constant %struct.soc_enum { i32 56, i8 7, i8 7, i32 2, i32 1, ptr @max98095_fltr_mode, ptr null, i8 0 }, align 4
@.str.48 = private unnamed_addr constant [16 x i8] c"DAI1 DAC Filter\00", align 1
@max98095_dai1_dac_filter_enum = internal constant %struct.soc_enum { i32 46, i8 0, i8 0, i32 6, i32 7, ptr @max98095_dai_fltr, ptr null, i8 0 }, align 4
@.str.49 = private unnamed_addr constant [16 x i8] c"DAI2 DAC Filter\00", align 1
@max98095_dai2_dac_filter_enum = internal constant %struct.soc_enum { i32 56, i8 0, i8 0, i32 6, i32 7, ptr @max98095_dai_fltr, ptr null, i8 0 }, align 4
@.str.50 = private unnamed_addr constant [16 x i8] c"DAI3 DAC Filter\00", align 1
@max98095_dai3_dac_filter_enum = internal constant %struct.soc_enum { i32 66, i8 0, i8 0, i32 6, i32 7, ptr @max98095_dai_fltr, ptr null, i8 0 }, align 4
@.str.51 = private unnamed_addr constant [12 x i8] c"Linein Mode\00", align 1
@max98095_linein_mode_enum = internal constant %struct.soc_enum { i32 134, i8 7, i8 7, i32 2, i32 1, ptr @max98095_line_mode_text, ptr null, i8 0 }, align 4
@.str.52 = private unnamed_addr constant [13 x i8] c"Lineout Mode\00", align 1
@max98095_lineout_mode_enum = internal constant %struct.soc_enum { i32 134, i8 4, i8 4, i32 2, i32 1, ptr @max98095_line_mode_text, ptr null, i8 0 }, align 4
@max98095_fltr_mode = internal constant [2 x ptr] [ptr @.str.53, ptr @.str.54], align 4
@.str.53 = private unnamed_addr constant [6 x i8] c"Voice\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"Music\00", align 1
@max98095_dai_fltr = internal constant [6 x ptr] [ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], align 4
@.str.55 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"Elliptical-HPF-16k\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"Butterworth-HPF-16k\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"Elliptical-HPF-8k\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"Butterworth-HPF-8k\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"Butterworth-HPF-Fs/240\00", align 1
@max98095_line_mode_text = internal constant [2 x ptr] [ptr @.str.61, ptr @.str.62], align 4
@.str.61 = private unnamed_addr constant [7 x i8] c"Stereo\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"Differential\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"ADCL\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"HiFi Capture\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"ADCR\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"DACL1\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"HiFi Playback\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"DACR1\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"DACM2\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"Aux Playback\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"DACM3\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"Voice Playback\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"HP Left Out\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"HP Right Out\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"SPK Left Out\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c"SPK Right Out\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"RCV Mono Out\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"LINE Left Out\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"LINE Right Out\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"External MIC\00", align 1
@max98095_extmic_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.113, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @max98095_extmic_enum to i32) }, align 4
@.str.81 = private unnamed_addr constant [11 x i8] c"Linein Mux\00", align 1
@max98095_linein_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @max98095_linein_enum to i32) }, align 4
@.str.82 = private unnamed_addr constant [21 x i8] c"Left Headphone Mixer\00", align 1
@max98095_left_hp_mixer_controls = internal constant [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.119 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.121 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.123 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.125 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.127 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.129 to i32) }], align 4
@.str.83 = private unnamed_addr constant [22 x i8] c"Right Headphone Mixer\00", align 1
@max98095_right_hp_mixer_controls = internal constant [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.130 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.131 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.132 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.133 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.134 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.135 to i32) }], align 4
@.str.84 = private unnamed_addr constant [19 x i8] c"Left Speaker Mixer\00", align 1
@max98095_left_speaker_mixer_controls = internal constant [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.136 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.137 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.139 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.141 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.142 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.143 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.144 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.145 to i32) }], align 4
@.str.85 = private unnamed_addr constant [20 x i8] c"Right Speaker Mixer\00", align 1
@max98095_right_speaker_mixer_controls = internal constant [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.146 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.147 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.148 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.149 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.150 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.151 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.152 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.153 to i32) }], align 4
@.str.86 = private unnamed_addr constant [15 x i8] c"Receiver Mixer\00", align 1
@max98095_mono_rcv_mixer_controls = internal constant [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.154 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.155 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.156 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.157 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.158 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.159 to i32) }], align 4
@.str.87 = private unnamed_addr constant [19 x i8] c"Left Lineout Mixer\00", align 1
@max98095_left_lineout_mixer_controls = internal constant [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.160 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.161 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.162 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.163 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.164 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.165 to i32) }], align 4
@.str.88 = private unnamed_addr constant [20 x i8] c"Right Lineout Mixer\00", align 1
@max98095_right_lineout_mixer_controls = internal constant [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.166 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.167 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.168 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.169 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.170 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.171 to i32) }], align 4
@.str.89 = private unnamed_addr constant [15 x i8] c"Left ADC Mixer\00", align 1
@max98095_left_ADC_mixer_controls = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.172 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.173 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.174 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.175 to i32) }], align 4
@.str.90 = private unnamed_addr constant [16 x i8] c"Right ADC Mixer\00", align 1
@max98095_right_ADC_mixer_controls = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.176 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.177 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.178 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.179 to i32) }], align 4
@.str.91 = private unnamed_addr constant [11 x i8] c"MIC1 Input\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"MIC2 Input\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"IN1 Input\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"IN2 Input\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"MICBIAS1\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"MICBIAS2\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"HPL\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"HPR\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"SPKL\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"SPKR\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"RCV\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"OUT1\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"OUT2\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"OUT3\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"OUT4\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"MIC1\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"MIC2\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"INA1\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"INA2\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"INB1\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"INB2\00", align 1
@max98095_dapm_widgets = internal constant [45 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.63, ptr @.str.64, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 144, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.65, ptr @.str.64, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 144, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.66, ptr @.str.67, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 145, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.68, ptr @.str.67, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 145, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.69, ptr @.str.70, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 145, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.71, ptr @.str.72, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 145, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 145, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 145, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 145, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 145, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 145, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 146, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 4, ptr @max98095_lineout_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 146, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 4, ptr @max98095_lineout_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98095_extmic_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98095_linein_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98095_left_hp_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98095_right_hp_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 8, ptr @max98095_left_speaker_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 8, ptr @max98095_right_speaker_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98095_mono_rcv_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98095_left_lineout_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98095_right_lineout_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @max98095_left_ADC_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @max98095_right_ADC_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 95, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @max98095_mic_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 96, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @max98095_mic_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 144, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @max98095_pga_in1_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 144, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @max98095_pga_in2_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 144, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 144, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.113 = private unnamed_addr constant [17 x i8] c"External MIC Mux\00", align 1
@max98095_extmic_enum = internal constant %struct.soc_enum { i32 135, i8 0, i8 0, i32 3, i32 3, ptr @max98095_extmic_text, ptr null, i8 0 }, align 4
@max98095_extmic_text = internal constant [3 x ptr] [ptr @.str.114, ptr @.str.106, ptr @.str.107], align 4
@.str.114 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.115 = private unnamed_addr constant [17 x i8] c"Linein Input Mux\00", align 1
@max98095_linein_enum = internal constant %struct.soc_enum { i32 134, i8 6, i8 6, i32 2, i32 1, ptr @max98095_linein_text, ptr null, i8 0 }, align 4
@max98095_linein_text = internal constant [2 x ptr] [ptr @.str.116, ptr @.str.117], align 4
@.str.116 = private unnamed_addr constant [4 x i8] c"INA\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"INB\00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c"Left DAC1 Switch\00", align 1
@.compoundliteral.119 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.120 = private unnamed_addr constant [18 x i8] c"Right DAC1 Switch\00", align 1
@.compoundliteral.121 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.122 = private unnamed_addr constant [12 x i8] c"MIC1 Switch\00", align 1
@.compoundliteral.123 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 3, i32 3, i32 0, i8 0 }, align 4
@.str.124 = private unnamed_addr constant [12 x i8] c"MIC2 Switch\00", align 1
@.compoundliteral.125 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.126 = private unnamed_addr constant [11 x i8] c"IN1 Switch\00", align 1
@.compoundliteral.127 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.128 = private unnamed_addr constant [11 x i8] c"IN2 Switch\00", align 1
@.compoundliteral.129 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.130 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 77, i32 77, i32 5, i32 5, i32 0, i8 0 }, align 4
@.compoundliteral.131 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 77, i32 77, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.132 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 77, i32 77, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.133 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 77, i32 77, i32 4, i32 4, i32 0, i8 0 }, align 4
@.compoundliteral.134 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 77, i32 77, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.135 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 77, i32 77, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.136 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 80, i32 80, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.137 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 80, i32 80, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.138 = private unnamed_addr constant [17 x i8] c"Mono DAC2 Switch\00", align 1
@.compoundliteral.139 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 80, i32 80, i32 3, i32 3, i32 0, i8 0 }, align 4
@.str.140 = private unnamed_addr constant [17 x i8] c"Mono DAC3 Switch\00", align 1
@.compoundliteral.141 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 80, i32 80, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.142 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 80, i32 80, i32 4, i32 4, i32 0, i8 0 }, align 4
@.compoundliteral.143 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 80, i32 80, i32 5, i32 5, i32 0, i8 0 }, align 4
@.compoundliteral.144 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 80, i32 80, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.145 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 80, i32 80, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.146 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 81, i32 81, i32 6, i32 6, i32 0, i8 0 }, align 4
@.compoundliteral.147 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 81, i32 81, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.148 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 81, i32 81, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.149 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 81, i32 81, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.150 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 81, i32 81, i32 5, i32 5, i32 0, i8 0 }, align 4
@.compoundliteral.151 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 81, i32 81, i32 4, i32 4, i32 0, i8 0 }, align 4
@.compoundliteral.152 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 81, i32 81, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.153 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 81, i32 81, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.154 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.155 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 5, i32 5, i32 0, i8 0 }, align 4
@.compoundliteral.156 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.157 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 4, i32 4, i32 0, i8 0 }, align 4
@.compoundliteral.158 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.159 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.160 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 5, i32 5, i32 0, i8 0 }, align 4
@.compoundliteral.161 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.162 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.163 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 4, i32 4, i32 0, i8 0 }, align 4
@.compoundliteral.164 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.165 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.166 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 84, i32 84, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.167 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 84, i32 84, i32 5, i32 5, i32 0, i8 0 }, align 4
@.compoundliteral.168 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 84, i32 84, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.169 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 84, i32 84, i32 4, i32 4, i32 0, i8 0 }, align 4
@.compoundliteral.170 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 84, i32 84, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.171 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 84, i32 84, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.172 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 74, i32 74, i32 7, i32 7, i32 0, i8 0 }, align 4
@.compoundliteral.173 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 74, i32 74, i32 6, i32 6, i32 0, i8 0 }, align 4
@.compoundliteral.174 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 74, i32 74, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.175 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 74, i32 74, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.176 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 7, i32 7, i32 0, i8 0 }, align 4
@.compoundliteral.177 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 6, i32 6, i32 0, i8 0 }, align 4
@.compoundliteral.178 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.179 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 2, i32 2, i32 0, i8 0 }, align 4
@.str.180 = private unnamed_addr constant [28 x i8] c"sound/soc/codecs/max98095.c\00", align 1
@.str.181 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.182 = private unnamed_addr constant [27 x i8] c"Failed to request IRQ: %d\0A\00", align 1
@.str.183 = private unnamed_addr constant [39 x i8] c"Failure reading hardware revision: %d\0A\00", align 1
@.str.184 = private unnamed_addr constant [23 x i8] c"Hardware revision: %c\0A\00", align 1
@.str.185 = private unnamed_addr constant [25 x i8] c"Failed to reset DSP: %d\0A\00", align 1
@.str.186 = private unnamed_addr constant [31 x i8] c"Failed to reset component: %d\0A\00", align 1
@.str.187 = private unnamed_addr constant [21 x i8] c"Failed to reset: %d\0A\00", align 1
@.str.188 = private unnamed_addr constant [9 x i8] c"EQ1 Mode\00", align 1
@.str.189 = private unnamed_addr constant [9 x i8] c"EQ2 Mode\00", align 1
@.str.190 = private unnamed_addr constant [30 x i8] c"Failed to add EQ control: %d\0A\00", align 1
@bq_mode_name = internal global [2 x ptr] [ptr @.str.192, ptr @.str.193], align 4
@.str.191 = private unnamed_addr constant [34 x i8] c"Failed to add Biquad control: %d\0A\00", align 1
@.str.192 = private unnamed_addr constant [13 x i8] c"Biquad1 Mode\00", align 1
@.str.193 = private unnamed_addr constant [13 x i8] c"Biquad2 Mode\00", align 1
@.str.194 = private unnamed_addr constant [30 x i8] c"Bad biquad channel name '%s'\0A\00", align 1
@.str.195 = private unnamed_addr constant [26 x i8] c"Failed to sync cache: %d\0A\00", align 1
@.str.196 = private unnamed_addr constant [5 x i8] c"HiFi\00", align 1
@max98095_dai1_ops = internal constant %struct.snd_soc_dai_ops { ptr @max98095_dai_set_sysclk, ptr null, ptr null, ptr null, ptr @max98095_dai1_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98095_dai1_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@.str.197 = private unnamed_addr constant [4 x i8] c"Aux\00", align 1
@max98095_dai2_ops = internal constant %struct.snd_soc_dai_ops { ptr @max98095_dai_set_sysclk, ptr null, ptr null, ptr null, ptr @max98095_dai2_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98095_dai2_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@max98095_dai3_ops = internal constant %struct.snd_soc_dai_ops { ptr @max98095_dai_set_sysclk, ptr null, ptr null, ptr null, ptr @max98095_dai3_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98095_dai3_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@.str.198 = private unnamed_addr constant [32 x i8] c"Invalid master clock frequency\0A\00", align 1
@.str.199 = private unnamed_addr constant [23 x i8] c"Clock mode unsupported\00", align 1
@.str.200 = private unnamed_addr constant [32 x i8] c"Invalid system clock frequency\0A\00", align 1
@rate_table = internal unnamed_addr constant [10 x %struct.anon.94] [%struct.anon.94 { i32 8000, i8 1 }, %struct.anon.94 { i32 11025, i8 2 }, %struct.anon.94 { i32 16000, i8 3 }, %struct.anon.94 { i32 22050, i8 4 }, %struct.anon.94 { i32 24000, i8 5 }, %struct.anon.94 { i32 32000, i8 6 }, %struct.anon.94 { i32 44100, i8 7 }, %struct.anon.94 { i32 48000, i8 8 }, %struct.anon.94 { i32 88200, i8 9 }, %struct.anon.94 { i32 96000, i8 10 }], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_license256, ptr @__ksymtab_max98095_jack_detect], section "llvm.metadata"

@__mod_i2c__max98095_i2c_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @max98095_i2c_id
@__mod_of__max98095_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @max98095_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @max98095_jack_detect(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.max98095_priv, ptr %7, i32 0, i32 15
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.max98095_priv, ptr %7, i32 0, i32 16
  store ptr %2, ptr %9, align 4
  %10 = icmp ne ptr %1, null
  %11 = icmp ne ptr %2, null
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %3
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.max98095_priv, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.max98095_pdata, ptr %18, i32 0, i32 4
  %20 = load i8, ptr %19, align 4
  %21 = getelementptr inbounds %struct.max98095_pdata, ptr %18, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 24, i32 %22
  %25 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 142, i32 noundef %24) #11
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %13
  %28 = and i8 %20, 4
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, i32 128, i32 132
  %31 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 137, i32 noundef %30) #11
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %13
  %34 = phi i32 [ %25, %13 ], [ %31, %27 ]
  %35 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.1, i32 noundef %34) #12
  br label %36

36:                                               ; preds = %33, %27
  %37 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 19, i32 noundef 128, i32 noundef 128) #11
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str, i32 noundef %37) #12
  br label %45

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %5, i32 476
  %43 = load i32, ptr %42, align 4
  %44 = tail call i32 @max98095_report_jack(i32 noundef %43, ptr noundef %0)
  br label %45

45:                                               ; preds = %41, %39, %3
  %46 = phi i32 [ %37, %39 ], [ 0, %41 ], [ -22, %3 ]
  ret i32 %46
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98095_report_jack(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 7) #11
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %41, label %10

10:                                               ; preds = %2
  %11 = and i32 %7, 96
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.max98095_priv, ptr %6, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ne ptr %15, null
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi i32 [ 0, %10 ], [ %17, %13 ]
  %20 = and i32 %7, 8
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.max98095_priv, ptr %6, i32 0, i32 16
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  %25 = select i1 %21, i1 true, i1 %24
  %26 = select i1 %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.max98095_priv, ptr %6, i32 0, i32 15
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.max98095_priv, ptr %6, i32 0, i32 16
  %30 = icmp eq ptr %28, %23
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = or i32 %26, %19
  tail call void @snd_soc_jack_report(ptr noundef %23, i32 noundef %32, i32 noundef 3) #11
  br label %41

33:                                               ; preds = %18
  %34 = icmp eq ptr %28, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  tail call void @snd_soc_jack_report(ptr noundef nonnull %28, i32 noundef %19, i32 noundef 1) #11
  %36 = load ptr, ptr %29, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi ptr [ %36, %35 ], [ %23, %33 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @snd_soc_jack_report(ptr noundef nonnull %38, i32 noundef %26, i32 noundef 2) #11
  br label %41

41:                                               ; preds = %40, %37, %31, %2
  %42 = phi i32 [ 0, %2 ], [ 1, %37 ], [ 1, %40 ], [ 1, %31 ]
  ret i32 %42
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @max98095_i2c_driver) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #4 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @max98095_i2c_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98095_i2c_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 180, i32 noundef 3520) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.max98095_priv, ptr %4, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef nonnull @max98095_i2c_probe.__key) #11
  %8 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @max98095_regmap, ptr noundef null, ptr noundef null) #11
  store ptr %8, ptr %4, align 4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = ptrtoint ptr %8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %11) #12
  br label %21

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.max98095_priv, ptr %4, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %4, ptr %16, align 8
  %17 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.max98095_priv, ptr %4, i32 0, i32 2
  store ptr %18, ptr %19, align 4
  %20 = tail call i32 @devm_snd_soc_register_component(ptr noundef %3, ptr noundef nonnull @soc_component_dev_max98095, ptr noundef nonnull @max98095_dai, i32 noundef 3) #11
  br label %21

21:                                               ; preds = %12, %10, %2
  %22 = phi i32 [ %11, %10 ], [ %20, %12 ], [ -12, %2 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max98095_writeable(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = add i32 %1, -15
  %4 = icmp ult i32 %3, 137
  ret i1 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max98095_readable(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = icmp eq i32 %1, 255
  %4 = add i32 %1, -1
  %5 = icmp ult i32 %4, 151
  %6 = or i1 %3, %5
  ret i1 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max98095_volatile(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = icmp ult i32 %1, 15
  %4 = add i32 %1, -152
  %5 = icmp ult i32 %4, 104
  %6 = or i1 %3, %5
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98095_probe(ptr noundef %0) #0 {
  %2 = alloca [2 x %struct.snd_kcontrol_new], align 4
  %3 = alloca [2 x %struct.snd_kcontrol_new], align 4
  %4 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.181) #11
  %9 = getelementptr inbounds %struct.max98095_priv, ptr %7, i32 0, i32 3
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, inttoptr (i32 -517 to ptr)
  br i1 %10, label %284, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 15, i32 noundef 0) #11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.185, i32 noundef %12) #12
  br label %31

16:                                               ; preds = %11
  %17 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 151, i32 noundef 0) #11
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.186, i32 noundef %17) #12
  br label %31

21:                                               ; preds = %24
  %22 = add nuw nsw i32 %25, 1
  %23 = icmp eq i32 %22, 151
  br i1 %23, label %31, label %24

24:                                               ; preds = %21, %16
  %25 = phi i32 [ %22, %21 ], [ 16, %16 ]
  %26 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef %25) #11
  %27 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %25, i32 noundef %26) #11
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %21

29:                                               ; preds = %24
  %30 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.187, i32 noundef %27) #12
  br label %31

31:                                               ; preds = %29, %21, %19, %14
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr inbounds %struct.max98095_priv, ptr %7, i32 0, i32 4
  store i32 -1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.max98095_priv, ptr %7, i32 0, i32 10
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.max98095_priv, ptr %7, i32 0, i32 11
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.max98095_priv, ptr %7, i32 0, i32 5
  store i32 -1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.max98095_priv, ptr %7, i32 0, i32 5, i32 0, i32 1
  store i32 -1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.max98095_priv, ptr %7, i32 0, i32 5, i32 0, i32 2
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.max98095_priv, ptr %7, i32 0, i32 5, i32 0, i32 3
  store i32 0, ptr %39, align 4
  %40 = getelementptr %struct.max98095_priv, ptr %7, i32 0, i32 5, i32 1
  store i32 -1, ptr %40, align 4
  %41 = getelementptr %struct.max98095_priv, ptr %7, i32 0, i32 5, i32 1, i32 1
  store i32 -1, ptr %41, align 4
  %42 = getelementptr %struct.max98095_priv, ptr %7, i32 0, i32 5, i32 1, i32 2
  store i32 0, ptr %42, align 4
  %43 = getelementptr %struct.max98095_priv, ptr %7, i32 0, i32 5, i32 1, i32 3
  store i32 0, ptr %43, align 4
  %44 = getelementptr %struct.max98095_priv, ptr %7, i32 0, i32 5, i32 2
  store i32 -1, ptr %44, align 4
  %45 = getelementptr %struct.max98095_priv, ptr %7, i32 0, i32 5, i32 2, i32 1
  store i32 -1, ptr %45, align 4
  %46 = getelementptr %struct.max98095_priv, ptr %7, i32 0, i32 5, i32 2, i32 2
  store i32 0, ptr %46, align 4
  %47 = getelementptr %struct.max98095_priv, ptr %7, i32 0, i32 5, i32 2, i32 3
  store i32 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.max98095_priv, ptr %7, i32 0, i32 12
  store i8 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.max98095_priv, ptr %7, i32 0, i32 13
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.max98095_priv, ptr %7, i32 0, i32 14
  store i32 0, ptr %50, align 4
  %51 = getelementptr i8, ptr %32, i32 476
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %31
  %55 = tail call i32 @request_threaded_irq(i32 noundef %52, ptr noundef null, ptr noundef nonnull @max98095_report_jack, i32 noundef 8195, ptr noundef nonnull @.str.2, ptr noundef %0) #11
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.182, i32 noundef %55) #12
  br label %284

59:                                               ; preds = %54, %31
  %60 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 255) #11
  %61 = icmp slt i32 %60, 0
  %62 = load ptr, ptr %4, align 4
  br i1 %61, label %63, label %66

63:                                               ; preds = %59
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.183, i32 noundef %60) #12
  %64 = load i32, ptr %51, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %284, label %282

66:                                               ; preds = %59
  %67 = add nuw i32 %60, 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %62, ptr noundef nonnull @.str.184, i32 noundef %67) #12
  %68 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 151, i32 noundef 1) #11
  %69 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 72, i32 noundef 72) #11
  %70 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 73, i32 noundef 3) #11
  %71 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 146, i32 noundef 16) #11
  %72 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 69, i32 noundef 80) #11
  %73 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 78, i32 noundef 48) #11
  %74 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 44, i32 noundef 67) #11
  %75 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 54, i32 noundef 131) #11
  %76 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 64, i32 noundef 195) #11
  %77 = load ptr, ptr %4, align 4
  %78 = getelementptr inbounds %struct.device, ptr %77, i32 0, i32 8
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %struct.max98095_priv, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %280, label %83

83:                                               ; preds = %66
  %84 = getelementptr inbounds %struct.max98095_pdata, ptr %81, i32 0, i32 4
  %85 = load i8, ptr %84, align 4
  %86 = shl i8 %85, 2
  %87 = and i8 %86, 12
  %88 = zext i8 %87 to i32
  %89 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 135, i32 noundef %88) #11
  %90 = getelementptr inbounds %struct.max98095_pdata, ptr %81, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %183, label %93

93:                                               ; preds = %83
  %94 = load ptr, ptr %4, align 4
  %95 = getelementptr inbounds %struct.device, ptr %94, i32 0, i32 8
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.max98095_priv, ptr %96, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #11
  store i32 2, ptr %3, align 4
  %99 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 1
  store i32 0, ptr %99, align 4
  %100 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 2
  store i32 0, ptr %100, align 4
  %101 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 3
  store ptr @.str.188, ptr %101, align 4
  %102 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 4
  store i32 0, ptr %102, align 4
  %103 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 5
  store i32 0, ptr %103, align 4
  %104 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 6
  store i32 0, ptr %104, align 4
  %105 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 7
  store ptr @snd_soc_info_enum_double, ptr %105, align 4
  %106 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 8
  store ptr @max98095_get_eq_enum, ptr %106, align 4
  %107 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 9
  store ptr @max98095_put_eq_enum, ptr %107, align 4
  %108 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 10
  store i32 0, ptr %108, align 4
  %109 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 11
  %110 = getelementptr inbounds %struct.max98095_priv, ptr %96, i32 0, i32 8
  %111 = ptrtoint ptr %110 to i32
  store i32 %111, ptr %109, align 4
  %112 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1
  store i32 2, ptr %112, align 4
  %113 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1, i32 1
  store i32 0, ptr %113, align 4
  %114 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1, i32 2
  store i32 0, ptr %114, align 4
  %115 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1, i32 3
  store ptr @.str.189, ptr %115, align 4
  %116 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1, i32 4
  store i32 0, ptr %116, align 4
  %117 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1, i32 5
  store i32 0, ptr %117, align 4
  %118 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1, i32 6
  store i32 0, ptr %118, align 4
  %119 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1, i32 7
  store ptr @snd_soc_info_enum_double, ptr %119, align 4
  %120 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1, i32 8
  store ptr @max98095_get_eq_enum, ptr %120, align 4
  %121 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1, i32 9
  store ptr @max98095_put_eq_enum, ptr %121, align 4
  %122 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1, i32 10
  store i32 0, ptr %122, align 4
  %123 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1, i32 11
  store i32 %111, ptr %123, align 4
  %124 = load ptr, ptr %98, align 4
  %125 = getelementptr inbounds %struct.max98095_pdata, ptr %98, i32 0, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds %struct.max98095_priv, ptr %96, i32 0, i32 10
  store i32 0, ptr %127, align 4
  %128 = getelementptr inbounds %struct.max98095_priv, ptr %96, i32 0, i32 6
  store ptr null, ptr %128, align 4
  %129 = icmp eq i32 %126, 0
  br i1 %129, label %173, label %130

130:                                              ; preds = %168, %93
  %131 = phi i32 [ %169, %168 ], [ 0, %93 ]
  %132 = phi i32 [ %166, %168 ], [ 0, %93 ]
  %133 = icmp sgt i32 %131, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %130
  %135 = getelementptr %struct.max98095_eq_cfg, ptr %124, i32 %132
  %136 = load ptr, ptr %135, align 4
  %137 = load ptr, ptr %128, align 4
  br label %138

138:                                              ; preds = %144, %134
  %139 = phi i32 [ 0, %134 ], [ %145, %144 ]
  %140 = getelementptr ptr, ptr %137, i32 %139
  %141 = load ptr, ptr %140, align 4
  %142 = tail call i32 @strcmp(ptr noundef %136, ptr noundef %141) #11
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %138
  %145 = add nuw nsw i32 %139, 1
  %146 = icmp eq i32 %145, %131
  br i1 %146, label %152, label %138

147:                                              ; preds = %138, %130
  %148 = phi i32 [ 0, %130 ], [ %139, %138 ]
  %149 = icmp eq i32 %148, %131
  br i1 %149, label %150, label %165

150:                                              ; preds = %147
  %151 = load ptr, ptr %128, align 4
  br label %152

152:                                              ; preds = %150, %144
  %153 = phi ptr [ %151, %150 ], [ %137, %144 ]
  %154 = shl i32 %131, 2
  %155 = add i32 %154, 4
  %156 = tail call noalias ptr @krealloc(ptr noundef %153, i32 noundef %155, i32 noundef 3264) #13
  %157 = icmp eq ptr %156, null
  br i1 %157, label %165, label %158

158:                                              ; preds = %152
  %159 = getelementptr %struct.max98095_eq_cfg, ptr %124, i32 %132
  %160 = load ptr, ptr %159, align 4
  %161 = load i32, ptr %127, align 4
  %162 = getelementptr ptr, ptr %156, i32 %161
  store ptr %160, ptr %162, align 4
  %163 = load i32, ptr %127, align 4
  %164 = add i32 %163, 1
  store i32 %164, ptr %127, align 4
  store ptr %156, ptr %128, align 4
  br label %165

165:                                              ; preds = %158, %152, %147
  %166 = add nuw i32 %132, 1
  %167 = icmp eq i32 %166, %126
  br i1 %167, label %170, label %168

168:                                              ; preds = %165
  %169 = load i32, ptr %127, align 4
  br label %130

170:                                              ; preds = %165
  %171 = load ptr, ptr %128, align 4
  %172 = load i32, ptr %127, align 4
  br label %173

173:                                              ; preds = %170, %93
  %174 = phi i32 [ %172, %170 ], [ 0, %93 ]
  %175 = phi ptr [ %171, %170 ], [ null, %93 ]
  %176 = getelementptr inbounds %struct.max98095_priv, ptr %96, i32 0, i32 8, i32 5
  store ptr %175, ptr %176, align 4
  %177 = getelementptr inbounds %struct.max98095_priv, ptr %96, i32 0, i32 8, i32 3
  store i32 %174, ptr %177, align 4
  %178 = call i32 @snd_soc_add_component_controls(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 2) #11
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %173
  %181 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.190, i32 noundef %178) #12
  br label %182

182:                                              ; preds = %180, %173
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #11
  br label %183

183:                                              ; preds = %182, %83
  %184 = getelementptr inbounds %struct.max98095_pdata, ptr %81, i32 0, i32 3
  %185 = load i32, ptr %184, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %280, label %187

187:                                              ; preds = %183
  %188 = load ptr, ptr %4, align 4
  %189 = getelementptr inbounds %struct.device, ptr %188, i32 0, i32 8
  %190 = load ptr, ptr %189, align 8
  %191 = getelementptr inbounds %struct.max98095_priv, ptr %190, i32 0, i32 2
  %192 = load ptr, ptr %191, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #11
  store i32 2, ptr %2, align 4
  %193 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 1
  store i32 0, ptr %193, align 4
  %194 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 2
  store i32 0, ptr %194, align 4
  %195 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 3
  %196 = load ptr, ptr @bq_mode_name, align 4
  store ptr %196, ptr %195, align 4
  %197 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 4
  store i32 0, ptr %197, align 4
  %198 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 5
  store i32 0, ptr %198, align 4
  %199 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 6
  store i32 0, ptr %199, align 4
  %200 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 7
  store ptr @snd_soc_info_enum_double, ptr %200, align 4
  %201 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 8
  store ptr @max98095_get_bq_enum, ptr %201, align 4
  %202 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 9
  store ptr @max98095_put_bq_enum, ptr %202, align 4
  %203 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 10
  store i32 0, ptr %203, align 4
  %204 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 11
  %205 = getelementptr inbounds %struct.max98095_priv, ptr %190, i32 0, i32 9
  %206 = ptrtoint ptr %205 to i32
  store i32 %206, ptr %204, align 4
  %207 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1
  store i32 2, ptr %207, align 4
  %208 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1, i32 1
  store i32 0, ptr %208, align 4
  %209 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1, i32 2
  store i32 0, ptr %209, align 4
  %210 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1, i32 3
  %211 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @bq_mode_name, i32 0, i32 1), align 4
  store ptr %211, ptr %210, align 4
  %212 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1, i32 4
  store i32 0, ptr %212, align 4
  %213 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1, i32 5
  store i32 0, ptr %213, align 4
  %214 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1, i32 6
  store i32 0, ptr %214, align 4
  %215 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1, i32 7
  store ptr @snd_soc_info_enum_double, ptr %215, align 4
  %216 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1, i32 8
  store ptr @max98095_get_bq_enum, ptr %216, align 4
  %217 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1, i32 9
  store ptr @max98095_put_bq_enum, ptr %217, align 4
  %218 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1, i32 10
  store i32 0, ptr %218, align 4
  %219 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1, i32 11
  store i32 %206, ptr %219, align 4
  %220 = getelementptr inbounds %struct.max98095_pdata, ptr %192, i32 0, i32 2
  %221 = load ptr, ptr %220, align 4
  %222 = getelementptr inbounds %struct.max98095_pdata, ptr %192, i32 0, i32 3
  %223 = load i32, ptr %222, align 4
  %224 = getelementptr inbounds %struct.max98095_priv, ptr %190, i32 0, i32 11
  store i32 0, ptr %224, align 4
  %225 = getelementptr inbounds %struct.max98095_priv, ptr %190, i32 0, i32 7
  store ptr null, ptr %225, align 4
  %226 = icmp eq i32 %223, 0
  br i1 %226, label %270, label %227

227:                                              ; preds = %265, %187
  %228 = phi i32 [ %266, %265 ], [ 0, %187 ]
  %229 = phi i32 [ %263, %265 ], [ 0, %187 ]
  %230 = icmp sgt i32 %228, 0
  br i1 %230, label %231, label %244

231:                                              ; preds = %227
  %232 = getelementptr %struct.max98095_biquad_cfg, ptr %221, i32 %229
  %233 = load ptr, ptr %232, align 4
  %234 = load ptr, ptr %225, align 4
  br label %235

235:                                              ; preds = %241, %231
  %236 = phi i32 [ 0, %231 ], [ %242, %241 ]
  %237 = getelementptr ptr, ptr %234, i32 %236
  %238 = load ptr, ptr %237, align 4
  %239 = call i32 @strcmp(ptr noundef %233, ptr noundef %238) #11
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %235
  %242 = add nuw nsw i32 %236, 1
  %243 = icmp eq i32 %242, %228
  br i1 %243, label %249, label %235

244:                                              ; preds = %235, %227
  %245 = phi i32 [ 0, %227 ], [ %236, %235 ]
  %246 = icmp eq i32 %245, %228
  br i1 %246, label %247, label %262

247:                                              ; preds = %244
  %248 = load ptr, ptr %225, align 4
  br label %249

249:                                              ; preds = %247, %241
  %250 = phi ptr [ %248, %247 ], [ %234, %241 ]
  %251 = shl i32 %228, 2
  %252 = add i32 %251, 4
  %253 = call noalias ptr @krealloc(ptr noundef %250, i32 noundef %252, i32 noundef 3264) #13
  %254 = icmp eq ptr %253, null
  br i1 %254, label %262, label %255

255:                                              ; preds = %249
  %256 = getelementptr %struct.max98095_biquad_cfg, ptr %221, i32 %229
  %257 = load ptr, ptr %256, align 4
  %258 = load i32, ptr %224, align 4
  %259 = getelementptr ptr, ptr %253, i32 %258
  store ptr %257, ptr %259, align 4
  %260 = load i32, ptr %224, align 4
  %261 = add i32 %260, 1
  store i32 %261, ptr %224, align 4
  store ptr %253, ptr %225, align 4
  br label %262

262:                                              ; preds = %255, %249, %244
  %263 = add nuw i32 %229, 1
  %264 = icmp eq i32 %263, %223
  br i1 %264, label %267, label %265

265:                                              ; preds = %262
  %266 = load i32, ptr %224, align 4
  br label %227

267:                                              ; preds = %262
  %268 = load ptr, ptr %225, align 4
  %269 = load i32, ptr %224, align 4
  br label %270

270:                                              ; preds = %267, %187
  %271 = phi i32 [ %269, %267 ], [ 0, %187 ]
  %272 = phi ptr [ %268, %267 ], [ null, %187 ]
  %273 = getelementptr inbounds %struct.max98095_priv, ptr %190, i32 0, i32 9, i32 5
  store ptr %272, ptr %273, align 4
  %274 = getelementptr inbounds %struct.max98095_priv, ptr %190, i32 0, i32 9, i32 3
  store i32 %271, ptr %274, align 4
  %275 = call i32 @snd_soc_add_component_controls(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2) #11
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %279, label %277

277:                                              ; preds = %270
  %278 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %278, ptr noundef nonnull @.str.191, i32 noundef %275) #12
  br label %279

279:                                              ; preds = %277, %270
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #11
  br label %280

280:                                              ; preds = %279, %183, %66
  %281 = call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 151, i32 noundef 128, i32 noundef 128) #11
  br label %284

282:                                              ; preds = %63
  %283 = tail call ptr @free_irq(i32 noundef %64, ptr noundef %0) #11
  br label %284

284:                                              ; preds = %282, %280, %63, %57, %1
  %285 = phi i32 [ 0, %280 ], [ -517, %1 ], [ %55, %57 ], [ %60, %282 ], [ %60, %63 ]
  ret i32 %285
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max98095_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9, %1
  %14 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 137, i32 noundef 0) #11
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.1, i32 noundef %14) #12
  br label %18

18:                                               ; preds = %16, %13, %9
  %19 = getelementptr i8, ptr %3, i32 476
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @free_irq(i32 noundef %20, ptr noundef %0) #11
  br label %24

24:                                               ; preds = %22, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98095_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9, %1
  %14 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 137, i32 noundef 0) #11
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.1, i32 noundef %14) #12
  br label %18

18:                                               ; preds = %16, %13, %9
  %19 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %20 = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %19, i32 noundef 0) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98095_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %7 = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %6, i32 noundef 1) #11
  %8 = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.max98095_priv, ptr %5, i32 0, i32 16
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %11, %1
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 8
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.max98095_priv, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.max98095_pdata, ptr %20, i32 0, i32 4
  %22 = load i8, ptr %21, align 4
  %23 = getelementptr inbounds %struct.max98095_pdata, ptr %20, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 24, i32 %24
  %27 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 142, i32 noundef %26) #11
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %15
  %30 = and i8 %22, 4
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %31, i32 128, i32 132
  %33 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 137, i32 noundef %32) #11
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %15
  %36 = phi i32 [ %27, %15 ], [ %33, %29 ]
  %37 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.1, i32 noundef %36) #12
  br label %38

38:                                               ; preds = %35, %29
  %39 = getelementptr i8, ptr %3, i32 476
  %40 = load i32, ptr %39, align 4
  %41 = tail call i32 @max98095_report_jack(i32 noundef %40, ptr noundef %0)
  br label %42

42:                                               ; preds = %38, %11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98095_set_bias_level(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  switch i32 %1, label %38 [
    i32 0, label %35
    i32 2, label %7
    i32 1, label %23
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.max98095_priv, ptr %6, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %38, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @clk_disable(ptr noundef %9) #11
  tail call void @clk_unprepare(ptr noundef %9) #11
  br label %38

16:                                               ; preds = %11
  %17 = tail call i32 @clk_prepare(ptr noundef %9) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %16
  %20 = tail call i32 @clk_enable(ptr noundef %9) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %19
  tail call void @clk_unprepare(ptr noundef %9) #11
  br label %38

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load ptr, ptr %6, align 4
  %29 = tail call i32 @regcache_sync(ptr noundef %28) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.195, i32 noundef %29) #12
  br label %38

33:                                               ; preds = %27, %23
  %34 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 144, i32 noundef 12, i32 noundef 12) #11
  br label %38

35:                                               ; preds = %2
  %36 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 144, i32 noundef 12, i32 noundef 0) #11
  %37 = load ptr, ptr %6, align 4
  tail call void @regcache_mark_dirty(ptr noundef %37) #11
  br label %38

38:                                               ; preds = %35, %33, %31, %22, %19, %16, %15, %7, %2
  %39 = phi i32 [ %29, %31 ], [ 0, %19 ], [ 0, %15 ], [ 0, %7 ], [ 0, %2 ], [ 0, %35 ], [ 0, %33 ], [ %20, %22 ], [ %17, %16 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @max98095_mic1pre_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.max98095_priv, ptr %8, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %10, ptr %11, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98095_mic1pre_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.max98095_priv, ptr %8, i32 0, i32 13
  store i32 %10, ptr %11, align 4
  %12 = shl i32 %10, 5
  %13 = add i32 %12, 32
  %14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 95, i32 noundef 96, i32 noundef %13) #11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @max98095_mic2pre_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.max98095_priv, ptr %8, i32 0, i32 14
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %10, ptr %11, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98095_mic2pre_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.max98095_priv, ptr %8, i32 0, i32 14
  store i32 %10, ptr %11, align 4
  %12 = shl i32 %10, 5
  %13 = add i32 %12, 32
  %14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 96, i32 noundef 96, i32 noundef %13) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98095_lineout_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  switch i32 %2, label %23 [
    i32 2, label %7
    i32 8, label %15
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 9
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = shl i32 4, %12
  %14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef %9, i32 noundef %13, i32 noundef %13) #11
  br label %23

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 9
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = shl i32 4, %20
  %22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef %17, i32 noundef %21, i32 noundef 0) #11
  br label %23

23:                                               ; preds = %15, %7, %3
  %24 = phi i32 [ -22, %3 ], [ 0, %15 ], [ 0, %7 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98095_mic_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  %7 = getelementptr i8, ptr %5, i32 -92
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  switch i32 %2, label %31 [
    i32 2, label %11
    i32 8, label %27
  ]

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 95
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.max98095_priv, ptr %10, i32 0, i32 13
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %17, 5
  %19 = add i32 %18, 32
  %20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 95, i32 noundef 96, i32 noundef %19) #11
  br label %31

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.max98095_priv, ptr %10, i32 0, i32 14
  %23 = load i32, ptr %22, align 4
  %24 = shl i32 %23, 5
  %25 = add i32 %24, 32
  %26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef %13, i32 noundef 96, i32 noundef %25) #11
  br label %31

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef %29, i32 noundef 96, i32 noundef 0) #11
  br label %31

31:                                               ; preds = %27, %21, %15, %3
  %32 = phi i32 [ -22, %3 ], [ 0, %15 ], [ 0, %21 ], [ 0, %27 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98095_pga_in1_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  %7 = getelementptr i8, ptr %5, i32 -92
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.max98095_priv, ptr %10, i32 0, i32 12
  switch i32 %2, label %34 [
    i32 2, label %12
    i32 8, label %22
  ]

12:                                               ; preds = %3
  %13 = load i8, ptr %11, align 1
  %14 = or i8 %13, 1
  store i8 %14, ptr %11, align 1
  %15 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 9
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = shl nuw i32 1, %19
  %21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef %16, i32 noundef %20, i32 noundef %20) #11
  br label %34

22:                                               ; preds = %3
  %23 = load i8, ptr %11, align 1
  %24 = and i8 %23, -2
  store i8 %24, ptr %11, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 9
  %30 = load i8, ptr %29, align 4
  %31 = zext i8 %30 to i32
  %32 = shl nuw i32 1, %31
  %33 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef %28, i32 noundef %32, i32 noundef 0) #11
  br label %34

34:                                               ; preds = %26, %22, %12, %3
  %35 = phi i32 [ -22, %3 ], [ 0, %22 ], [ 0, %26 ], [ 0, %12 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98095_pga_in2_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  %7 = getelementptr i8, ptr %5, i32 -92
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.max98095_priv, ptr %10, i32 0, i32 12
  switch i32 %2, label %34 [
    i32 2, label %12
    i32 8, label %22
  ]

12:                                               ; preds = %3
  %13 = load i8, ptr %11, align 1
  %14 = or i8 %13, 2
  store i8 %14, ptr %11, align 1
  %15 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 9
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = shl nuw i32 1, %19
  %21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef %16, i32 noundef %20, i32 noundef %20) #11
  br label %34

22:                                               ; preds = %3
  %23 = load i8, ptr %11, align 1
  %24 = and i8 %23, -3
  store i8 %24, ptr %11, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 9
  %30 = load i8, ptr %29, align 4
  %31 = zext i8 %30 to i32
  %32 = shl nuw i32 1, %31
  %33 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef %28, i32 noundef %32, i32 noundef 0) #11
  br label %34

34:                                               ; preds = %26, %22, %12, %3
  %35 = phi i32 [ -22, %3 ], [ 0, %22 ], [ 0, %26 ], [ 0, %12 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @max98095_get_eq_enum(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1, i32 4
  %10 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(9) @.str.188) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(9) @.str.189) #11
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 1, i32 -22
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i32 [ 0, %2 ], [ %15, %12 ]
  %18 = getelementptr %struct.max98095_priv, ptr %8, i32 0, i32 5, i32 %17, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %19, ptr %20, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98095_put_eq_enum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.max98095_priv, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1, i32 4
  %12 = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(9) @.str.188) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(9) @.str.189) #11
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 1, i32 -22
  br label %18

18:                                               ; preds = %14, %2
  %19 = phi i32 [ 0, %2 ], [ %17, %14 ]
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq ptr %10, null
  br i1 %22, label %79, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.max98095_priv, ptr %8, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %79, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.max98095_pdata, ptr %10, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %21, %29
  br i1 %30, label %31, label %79

31:                                               ; preds = %27
  %32 = getelementptr %struct.max98095_priv, ptr %8, i32 0, i32 5, i32 %19
  %33 = getelementptr %struct.max98095_priv, ptr %8, i32 0, i32 5, i32 %19, i32 2
  store i32 %21, ptr %33, align 4
  %34 = load i32, ptr %32, align 4
  %35 = load i32, ptr %28, align 4
  %36 = icmp eq i32 %35, 0
  %37 = load ptr, ptr %10, align 4
  br i1 %36, label %64, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.max98095_priv, ptr %8, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr ptr, ptr %40, i32 %21
  %42 = load ptr, ptr %41, align 4
  br label %43

43:                                               ; preds = %59, %38
  %44 = phi i32 [ 0, %38 ], [ %62, %59 ]
  %45 = phi i32 [ 2147483647, %38 ], [ %61, %59 ]
  %46 = phi i32 [ 0, %38 ], [ %60, %59 ]
  %47 = getelementptr %struct.max98095_eq_cfg, ptr %37, i32 %44
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @strcmp(ptr noundef %48, ptr noundef %42)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = getelementptr %struct.max98095_eq_cfg, ptr %37, i32 %44, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = sub i32 %53, %34
  %55 = tail call i32 @llvm.abs.i32(i32 %54, i1 false)
  %56 = icmp slt i32 %55, %45
  %57 = select i1 %56, i32 %44, i32 %46
  %58 = tail call i32 @llvm.smin.i32(i32 %55, i32 %45)
  br label %59

59:                                               ; preds = %51, %43
  %60 = phi i32 [ %46, %43 ], [ %57, %51 ]
  %61 = phi i32 [ %45, %43 ], [ %58, %51 ]
  %62 = add nuw i32 %44, 1
  %63 = icmp eq i32 %62, %35
  br i1 %63, label %64, label %43

64:                                               ; preds = %59, %31
  %65 = phi i32 [ 0, %31 ], [ %60, %59 ]
  %66 = icmp eq i32 %19, 0
  %67 = select i1 %66, i32 1, i32 2
  %68 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 136) #11
  %69 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 136, i32 noundef %67, i32 noundef 0) #11
  %70 = getelementptr inbounds %struct.max98095_priv, ptr %8, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %70) #11
  %71 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 15, i32 noundef 1, i32 noundef 1) #11
  %72 = getelementptr %struct.max98095_eq_cfg, ptr %37, i32 %65, i32 2
  tail call fastcc void @m98095_eq_band(ptr noundef %4, i32 noundef %19, i32 noundef 0, ptr noundef %72)
  %73 = getelementptr %struct.max98095_eq_cfg, ptr %37, i32 %65, i32 3
  tail call fastcc void @m98095_eq_band(ptr noundef %4, i32 noundef %19, i32 noundef 1, ptr noundef %73)
  %74 = getelementptr %struct.max98095_eq_cfg, ptr %37, i32 %65, i32 4
  tail call fastcc void @m98095_eq_band(ptr noundef %4, i32 noundef %19, i32 noundef 2, ptr noundef %74)
  %75 = getelementptr %struct.max98095_eq_cfg, ptr %37, i32 %65, i32 5
  tail call fastcc void @m98095_eq_band(ptr noundef %4, i32 noundef %19, i32 noundef 3, ptr noundef %75)
  %76 = getelementptr %struct.max98095_eq_cfg, ptr %37, i32 %65, i32 6
  tail call fastcc void @m98095_eq_band(ptr noundef %4, i32 noundef %19, i32 noundef 4, ptr noundef %76)
  %77 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 15, i32 noundef 1, i32 noundef 0) #11
  tail call void @mutex_unlock(ptr noundef %70) #11
  %78 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 136, i32 noundef %67, i32 noundef %68) #11
  br label %79

79:                                               ; preds = %64, %27, %23, %18
  %80 = phi i32 [ 0, %64 ], [ 0, %23 ], [ 0, %18 ], [ -22, %27 ]
  ret i32 %80
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @m98095_eq_band(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = icmp ugt i32 %1, 1
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.180, i32 noundef 258, i32 noundef 9, ptr noundef null) #11
  br label %65

7:                                                ; preds = %4
  %8 = icmp eq i32 %1, 0
  %9 = select i1 %8, i32 16, i32 66
  %10 = mul i32 %2, 10
  %11 = add i32 %9, %10
  %12 = or i32 %11, 1
  %13 = load i16, ptr %3, align 2
  %14 = lshr i16 %13, 8
  %15 = zext i16 %14 to i32
  %16 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %11, i32 noundef %15) #11
  %17 = add i32 %11, 2
  %18 = load i16, ptr %3, align 2
  %19 = and i16 %18, 255
  %20 = zext i16 %19 to i32
  %21 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %12, i32 noundef %20) #11
  %22 = or i32 %17, 1
  %23 = getelementptr i16, ptr %3, i32 1
  %24 = load i16, ptr %23, align 2
  %25 = lshr i16 %24, 8
  %26 = zext i16 %25 to i32
  %27 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %17, i32 noundef %26) #11
  %28 = add i32 %11, 4
  %29 = load i16, ptr %23, align 2
  %30 = and i16 %29, 255
  %31 = zext i16 %30 to i32
  %32 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %22, i32 noundef %31) #11
  %33 = or i32 %28, 1
  %34 = getelementptr i16, ptr %3, i32 2
  %35 = load i16, ptr %34, align 2
  %36 = lshr i16 %35, 8
  %37 = zext i16 %36 to i32
  %38 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %28, i32 noundef %37) #11
  %39 = add i32 %11, 6
  %40 = load i16, ptr %34, align 2
  %41 = and i16 %40, 255
  %42 = zext i16 %41 to i32
  %43 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %33, i32 noundef %42) #11
  %44 = or i32 %39, 1
  %45 = getelementptr i16, ptr %3, i32 3
  %46 = load i16, ptr %45, align 2
  %47 = lshr i16 %46, 8
  %48 = zext i16 %47 to i32
  %49 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %39, i32 noundef %48) #11
  %50 = add i32 %11, 8
  %51 = load i16, ptr %45, align 2
  %52 = and i16 %51, 255
  %53 = zext i16 %52 to i32
  %54 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %44, i32 noundef %53) #11
  %55 = or i32 %50, 1
  %56 = getelementptr i16, ptr %3, i32 4
  %57 = load i16, ptr %56, align 2
  %58 = lshr i16 %57, 8
  %59 = zext i16 %58 to i32
  %60 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %50, i32 noundef %59) #11
  %61 = load i16, ptr %56, align 2
  %62 = and i16 %61, 255
  %63 = zext i16 %62 to i32
  %64 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %55, i32 noundef %63) #11
  br label %65

65:                                               ; preds = %7, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98095_get_bq_enum(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1, i32 4
  %10 = tail call i32 @match_string(ptr noundef nonnull @bq_mode_name, i32 noundef 2, ptr noundef %9) #11
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.194, ptr noundef %9) #12
  br label %18

14:                                               ; preds = %2
  %15 = getelementptr %struct.max98095_priv, ptr %8, i32 0, i32 5, i32 %10, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %16, ptr %17, align 8
  br label %18

18:                                               ; preds = %14, %12
  %19 = phi i32 [ 0, %14 ], [ %10, %12 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98095_put_bq_enum(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.max98095_priv, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1, i32 4
  %12 = tail call i32 @match_string(ptr noundef nonnull @bq_mode_name, i32 noundef 2, ptr noundef %11) #11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.194, ptr noundef %11) #12
  br label %74

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq ptr %10, null
  br i1 %19, label %74, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.max98095_priv, ptr %8, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %74, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.max98095_pdata, ptr %10, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %18, %26
  br i1 %27, label %28, label %74

28:                                               ; preds = %24
  %29 = getelementptr %struct.max98095_priv, ptr %8, i32 0, i32 5, i32 %12
  %30 = getelementptr %struct.max98095_priv, ptr %8, i32 0, i32 5, i32 %12, i32 3
  store i32 %18, ptr %30, align 4
  %31 = load i32, ptr %29, align 4
  %32 = load i32, ptr %25, align 4
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct.max98095_pdata, ptr %10, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  br i1 %33, label %62, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.max98095_priv, ptr %8, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr ptr, ptr %38, i32 %18
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %57, %36
  %42 = phi i32 [ 0, %36 ], [ %60, %57 ]
  %43 = phi i32 [ 2147483647, %36 ], [ %59, %57 ]
  %44 = phi i32 [ 0, %36 ], [ %58, %57 ]
  %45 = getelementptr %struct.max98095_biquad_cfg, ptr %35, i32 %42
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @strcmp(ptr noundef %46, ptr noundef %40)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = getelementptr %struct.max98095_biquad_cfg, ptr %35, i32 %42, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = sub i32 %51, %31
  %53 = tail call i32 @llvm.abs.i32(i32 %52, i1 false)
  %54 = icmp slt i32 %53, %43
  %55 = select i1 %54, i32 %42, i32 %44
  %56 = tail call i32 @llvm.smin.i32(i32 %53, i32 %43)
  br label %57

57:                                               ; preds = %49, %41
  %58 = phi i32 [ %44, %41 ], [ %55, %49 ]
  %59 = phi i32 [ %43, %41 ], [ %56, %49 ]
  %60 = add nuw i32 %42, 1
  %61 = icmp eq i32 %60, %32
  br i1 %61, label %62, label %41

62:                                               ; preds = %57, %28
  %63 = phi i32 [ 0, %28 ], [ %58, %57 ]
  %64 = icmp eq i32 %12, 0
  %65 = select i1 %64, i32 4, i32 8
  %66 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 136) #11
  %67 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 136, i32 noundef %65, i32 noundef 0) #11
  %68 = getelementptr inbounds %struct.max98095_priv, ptr %8, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %68) #11
  %69 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 15, i32 noundef 1, i32 noundef 1) #11
  %70 = getelementptr %struct.max98095_biquad_cfg, ptr %35, i32 %63, i32 2
  tail call fastcc void @m98095_biquad_band(ptr noundef %4, i32 noundef %12, i32 noundef 0, ptr noundef %70)
  %71 = getelementptr %struct.max98095_biquad_cfg, ptr %35, i32 %63, i32 3
  tail call fastcc void @m98095_biquad_band(ptr noundef %4, i32 noundef %12, i32 noundef 1, ptr noundef %71)
  %72 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 15, i32 noundef 1, i32 noundef 0) #11
  tail call void @mutex_unlock(ptr noundef %68) #11
  %73 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 136, i32 noundef %65, i32 noundef %66) #11
  br label %74

74:                                               ; preds = %62, %24, %20, %16, %14
  %75 = phi i32 [ 0, %62 ], [ 0, %20 ], [ 0, %16 ], [ -22, %24 ], [ %12, %14 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @m98095_biquad_band(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = icmp ugt i32 %1, 1
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.180, i32 noundef 284, i32 noundef 9, ptr noundef null) #11
  br label %65

7:                                                ; preds = %4
  %8 = icmp eq i32 %1, 0
  %9 = select i1 %8, i32 116, i32 126
  %10 = mul i32 %2, 10
  %11 = add i32 %9, %10
  %12 = or i32 %11, 1
  %13 = load i16, ptr %3, align 2
  %14 = lshr i16 %13, 8
  %15 = zext i16 %14 to i32
  %16 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %11, i32 noundef %15) #11
  %17 = add i32 %11, 2
  %18 = load i16, ptr %3, align 2
  %19 = and i16 %18, 255
  %20 = zext i16 %19 to i32
  %21 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %12, i32 noundef %20) #11
  %22 = or i32 %17, 1
  %23 = getelementptr i16, ptr %3, i32 1
  %24 = load i16, ptr %23, align 2
  %25 = lshr i16 %24, 8
  %26 = zext i16 %25 to i32
  %27 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %17, i32 noundef %26) #11
  %28 = add i32 %11, 4
  %29 = load i16, ptr %23, align 2
  %30 = and i16 %29, 255
  %31 = zext i16 %30 to i32
  %32 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %22, i32 noundef %31) #11
  %33 = or i32 %28, 1
  %34 = getelementptr i16, ptr %3, i32 2
  %35 = load i16, ptr %34, align 2
  %36 = lshr i16 %35, 8
  %37 = zext i16 %36 to i32
  %38 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %28, i32 noundef %37) #11
  %39 = add i32 %11, 6
  %40 = load i16, ptr %34, align 2
  %41 = and i16 %40, 255
  %42 = zext i16 %41 to i32
  %43 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %33, i32 noundef %42) #11
  %44 = or i32 %39, 1
  %45 = getelementptr i16, ptr %3, i32 3
  %46 = load i16, ptr %45, align 2
  %47 = lshr i16 %46, 8
  %48 = zext i16 %47 to i32
  %49 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %39, i32 noundef %48) #11
  %50 = add i32 %11, 8
  %51 = load i16, ptr %45, align 2
  %52 = and i16 %51, 255
  %53 = zext i16 %52 to i32
  %54 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %44, i32 noundef %53) #11
  %55 = or i32 %50, 1
  %56 = getelementptr i16, ptr %3, i32 4
  %57 = load i16, ptr %56, align 2
  %58 = lshr i16 %57, 8
  %59 = zext i16 %58 to i32
  %60 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %50, i32 noundef %59) #11
  %61 = load i16, ptr %56, align 2
  %62 = and i16 %61, 255
  %63 = zext i16 %62 to i32
  %64 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %55, i32 noundef %63) #11
  br label %65

65:                                               ; preds = %7, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_bias_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98095_dai_set_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.max98095_priv, ptr %10, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %37, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.max98095_priv, ptr %10, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @clk_round_rate(ptr noundef %16, i32 noundef %2) #11
  %20 = load ptr, ptr %15, align 4
  %21 = tail call i32 @clk_set_rate(ptr noundef %20, i32 noundef %19) #11
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %2, %14 ], [ %19, %18 ]
  %24 = add i32 %23, -10000000
  %25 = icmp ult i32 %24, 10000000
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = add i32 %23, -20000000
  %28 = icmp ult i32 %27, 20000000
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = add i32 %23, -40000000
  %31 = icmp ult i32 %30, 20000000
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.198) #12
  br label %37

34:                                               ; preds = %29, %26, %22
  %35 = phi i32 [ 16, %22 ], [ 32, %26 ], [ 48, %29 ]
  %36 = tail call i32 @snd_soc_component_write(ptr noundef %6, i32 noundef 38, i32 noundef %35) #11
  store i32 %23, ptr %11, align 4
  br label %37

37:                                               ; preds = %34, %32, %4
  %38 = phi i32 [ 0, %34 ], [ -22, %32 ], [ 0, %4 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98095_dai1_set_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.max98095_priv, ptr %8, i32 0, i32 5, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %41, label %12

12:                                               ; preds = %2
  store i32 %1, ptr %9, align 4
  %13 = and i32 %1, 61440
  %14 = add nsw i32 %13, -4096
  %15 = lshr exact i32 %14, 12
  switch i32 %15, label %19 [
    i32 3, label %16
    i32 0, label %21
  ]

16:                                               ; preds = %12
  %17 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 40, i32 noundef 128) #11
  %18 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 41, i32 noundef 0) #11
  br label %21

19:                                               ; preds = %12
  %20 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.199) #12
  br label %41

21:                                               ; preds = %16, %12
  %22 = phi i8 [ 0, %16 ], [ -128, %12 ]
  %23 = and i32 %1, 15
  switch i32 %23, label %41 [
    i32 1, label %24
    i32 3, label %26
  ]

24:                                               ; preds = %21
  %25 = or i8 %22, 16
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi i8 [ %22, %21 ], [ %25, %24 ]
  %28 = lshr i32 %1, 8
  %29 = and i32 %28, 15
  switch i32 %29, label %41 [
    i32 0, label %36
    i32 2, label %30
    i32 3, label %32
    i32 4, label %34
  ]

30:                                               ; preds = %26
  %31 = or i8 %27, 64
  br label %36

32:                                               ; preds = %26
  %33 = or i8 %27, 32
  br label %36

34:                                               ; preds = %26
  %35 = or i8 %27, 96
  br label %36

36:                                               ; preds = %34, %32, %30, %26
  %37 = phi i8 [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %27, %26 ]
  %38 = zext i8 %37 to i32
  %39 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 42, i32 noundef 240, i32 noundef %38) #11
  %40 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 43, i32 noundef 1) #11
  br label %41

41:                                               ; preds = %36, %26, %21, %19, %2
  %42 = phi i32 [ -22, %19 ], [ -22, %21 ], [ -22, %26 ], [ 0, %36 ], [ 0, %2 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98095_dai1_hw_params(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.max98095_priv, ptr %9, i32 0, i32 5
  %11 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %21, %3
  %17 = phi i32 [ 0, %3 ], [ 32, %21 ]
  %18 = phi i32 [ %14, %3 ], [ %23, %21 ]
  %19 = tail call i32 @llvm.cttz.i32(i32 %18, i1 true) #11, !range !9
  %20 = or i32 %19, %17
  br label %25

21:                                               ; preds = %3
  %22 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %16

25:                                               ; preds = %21, %16
  %26 = phi i32 [ %20, %16 ], [ 0, %21 ]
  %27 = tail call i32 @snd_pcm_format_width(i32 noundef %26) #11
  switch i32 %27, label %92 [
    i32 16, label %29
    i32 24, label %28
  ]

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i32 [ 1, %28 ], [ 0, %25 ]
  %31 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 42, i32 noundef 1, i32 noundef %30) #11
  %32 = icmp ugt i32 %12, 8000
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = icmp ugt i32 %12, 11025
  br i1 %34, label %35, label %51

35:                                               ; preds = %33
  %36 = icmp ugt i32 %12, 16000
  br i1 %36, label %37, label %51

37:                                               ; preds = %35
  %38 = icmp ugt i32 %12, 22050
  br i1 %38, label %39, label %51

39:                                               ; preds = %37
  %40 = icmp ugt i32 %12, 24000
  br i1 %40, label %41, label %51

41:                                               ; preds = %39
  %42 = icmp ugt i32 %12, 32000
  br i1 %42, label %43, label %51

43:                                               ; preds = %41
  %44 = icmp ugt i32 %12, 44100
  br i1 %44, label %45, label %51

45:                                               ; preds = %43
  %46 = icmp ugt i32 %12, 48000
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = icmp ugt i32 %12, 88200
  br i1 %48, label %49, label %51

49:                                               ; preds = %47
  %50 = icmp ugt i32 %12, 96000
  br i1 %50, label %92, label %51

51:                                               ; preds = %49, %47, %45, %43, %41, %39, %37, %35, %33, %29
  %52 = phi i32 [ 0, %29 ], [ 1, %33 ], [ 2, %35 ], [ 3, %37 ], [ 4, %39 ], [ 5, %41 ], [ 6, %43 ], [ 7, %45 ], [ 8, %47 ], [ 9, %49 ]
  %53 = getelementptr [10 x %struct.anon.94], ptr @rate_table, i32 0, i32 %52, i32 1
  %54 = load i8, ptr %53, align 4
  %55 = zext i8 %54 to i32
  %56 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 39, i32 noundef 255, i32 noundef %55) #11
  store i32 %12, ptr %10, align 4
  %57 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 42) #11
  %58 = and i32 %57, 128
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %86, label %60

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.max98095_priv, ptr %9, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.200) #12
  br label %92

66:                                               ; preds = %60
  %67 = icmp ult i32 %12, 50000
  %68 = select i1 %67, i64 6291456, i64 3145728
  %69 = zext i32 %12 to i64
  %70 = mul nuw nsw i64 %68, %69
  %71 = icmp ult i64 %70, 4294967296
  br i1 %71, label %72, label %75, !prof !10

72:                                               ; preds = %66
  %73 = trunc i64 %70 to i32
  %74 = udiv i32 %73, %62
  br label %79

75:                                               ; preds = %66
  %76 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %62, i64 %70) #14, !srcloc !11
  %77 = extractvalue { i64, i64 } %76, 1
  %78 = trunc i64 %77 to i32
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi i32 [ %74, %72 ], [ %78, %75 ]
  %81 = lshr i32 %80, 8
  %82 = and i32 %81, 127
  %83 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 40, i32 noundef %82) #11
  %84 = and i32 %80, 255
  %85 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 41, i32 noundef %84) #11
  br label %86

86:                                               ; preds = %79, %51
  %87 = icmp ult i32 %12, 50000
  br i1 %87, label %88, label %90

88:                                               ; preds = %86
  %89 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 46, i32 noundef 8, i32 noundef 0) #11
  br label %92

90:                                               ; preds = %86
  %91 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 46, i32 noundef 8, i32 noundef 8) #11
  br label %92

92:                                               ; preds = %90, %88, %64, %49, %25
  %93 = phi i32 [ -22, %64 ], [ -22, %25 ], [ 0, %90 ], [ 0, %88 ], [ -22, %49 ]
  ret i32 %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98095_dai2_set_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr %struct.max98095_priv, ptr %8, i32 0, i32 5, i32 1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %41, label %12

12:                                               ; preds = %2
  store i32 %1, ptr %9, align 4
  %13 = and i32 %1, 61440
  %14 = add nsw i32 %13, -4096
  %15 = lshr exact i32 %14, 12
  switch i32 %15, label %19 [
    i32 3, label %16
    i32 0, label %21
  ]

16:                                               ; preds = %12
  %17 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 50, i32 noundef 128) #11
  %18 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 51, i32 noundef 0) #11
  br label %21

19:                                               ; preds = %12
  %20 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.199) #12
  br label %41

21:                                               ; preds = %16, %12
  %22 = phi i8 [ 0, %16 ], [ -128, %12 ]
  %23 = and i32 %1, 15
  switch i32 %23, label %41 [
    i32 1, label %24
    i32 3, label %26
  ]

24:                                               ; preds = %21
  %25 = or i8 %22, 16
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi i8 [ %22, %21 ], [ %25, %24 ]
  %28 = lshr i32 %1, 8
  %29 = and i32 %28, 15
  switch i32 %29, label %41 [
    i32 0, label %36
    i32 2, label %30
    i32 3, label %32
    i32 4, label %34
  ]

30:                                               ; preds = %26
  %31 = or i8 %27, 64
  br label %36

32:                                               ; preds = %26
  %33 = or i8 %27, 32
  br label %36

34:                                               ; preds = %26
  %35 = or i8 %27, 96
  br label %36

36:                                               ; preds = %34, %32, %30, %26
  %37 = phi i8 [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %27, %26 ]
  %38 = zext i8 %37 to i32
  %39 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 52, i32 noundef 240, i32 noundef %38) #11
  %40 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 53, i32 noundef 1) #11
  br label %41

41:                                               ; preds = %36, %26, %21, %19, %2
  %42 = phi i32 [ -22, %19 ], [ -22, %21 ], [ -22, %26 ], [ 0, %36 ], [ 0, %2 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98095_dai2_hw_params(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr %struct.max98095_priv, ptr %9, i32 0, i32 5, i32 1
  %11 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %21, %3
  %17 = phi i32 [ 0, %3 ], [ 32, %21 ]
  %18 = phi i32 [ %14, %3 ], [ %23, %21 ]
  %19 = tail call i32 @llvm.cttz.i32(i32 %18, i1 true) #11, !range !9
  %20 = or i32 %19, %17
  br label %25

21:                                               ; preds = %3
  %22 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %16

25:                                               ; preds = %21, %16
  %26 = phi i32 [ %20, %16 ], [ 0, %21 ]
  %27 = tail call i32 @snd_pcm_format_width(i32 noundef %26) #11
  switch i32 %27, label %92 [
    i32 16, label %29
    i32 24, label %28
  ]

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i32 [ 1, %28 ], [ 0, %25 ]
  %31 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 52, i32 noundef 1, i32 noundef %30) #11
  %32 = icmp ugt i32 %12, 8000
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = icmp ugt i32 %12, 11025
  br i1 %34, label %35, label %51

35:                                               ; preds = %33
  %36 = icmp ugt i32 %12, 16000
  br i1 %36, label %37, label %51

37:                                               ; preds = %35
  %38 = icmp ugt i32 %12, 22050
  br i1 %38, label %39, label %51

39:                                               ; preds = %37
  %40 = icmp ugt i32 %12, 24000
  br i1 %40, label %41, label %51

41:                                               ; preds = %39
  %42 = icmp ugt i32 %12, 32000
  br i1 %42, label %43, label %51

43:                                               ; preds = %41
  %44 = icmp ugt i32 %12, 44100
  br i1 %44, label %45, label %51

45:                                               ; preds = %43
  %46 = icmp ugt i32 %12, 48000
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = icmp ugt i32 %12, 88200
  br i1 %48, label %49, label %51

49:                                               ; preds = %47
  %50 = icmp ugt i32 %12, 96000
  br i1 %50, label %92, label %51

51:                                               ; preds = %49, %47, %45, %43, %41, %39, %37, %35, %33, %29
  %52 = phi i32 [ 0, %29 ], [ 1, %33 ], [ 2, %35 ], [ 3, %37 ], [ 4, %39 ], [ 5, %41 ], [ 6, %43 ], [ 7, %45 ], [ 8, %47 ], [ 9, %49 ]
  %53 = getelementptr [10 x %struct.anon.94], ptr @rate_table, i32 0, i32 %52, i32 1
  %54 = load i8, ptr %53, align 4
  %55 = zext i8 %54 to i32
  %56 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 49, i32 noundef 255, i32 noundef %55) #11
  store i32 %12, ptr %10, align 4
  %57 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 52) #11
  %58 = and i32 %57, 128
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %86, label %60

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.max98095_priv, ptr %9, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.200) #12
  br label %92

66:                                               ; preds = %60
  %67 = icmp ult i32 %12, 50000
  %68 = select i1 %67, i64 6291456, i64 3145728
  %69 = zext i32 %12 to i64
  %70 = mul nuw nsw i64 %68, %69
  %71 = icmp ult i64 %70, 4294967296
  br i1 %71, label %72, label %75, !prof !10

72:                                               ; preds = %66
  %73 = trunc i64 %70 to i32
  %74 = udiv i32 %73, %62
  br label %79

75:                                               ; preds = %66
  %76 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %62, i64 %70) #14, !srcloc !11
  %77 = extractvalue { i64, i64 } %76, 1
  %78 = trunc i64 %77 to i32
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi i32 [ %74, %72 ], [ %78, %75 ]
  %81 = lshr i32 %80, 8
  %82 = and i32 %81, 127
  %83 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 50, i32 noundef %82) #11
  %84 = and i32 %80, 255
  %85 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 51, i32 noundef %84) #11
  br label %86

86:                                               ; preds = %79, %51
  %87 = icmp ult i32 %12, 50000
  br i1 %87, label %88, label %90

88:                                               ; preds = %86
  %89 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 56, i32 noundef 8, i32 noundef 0) #11
  br label %92

90:                                               ; preds = %86
  %91 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 56, i32 noundef 8, i32 noundef 8) #11
  br label %92

92:                                               ; preds = %90, %88, %64, %49, %25
  %93 = phi i32 [ -22, %64 ], [ -22, %25 ], [ 0, %90 ], [ 0, %88 ], [ -22, %49 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98095_dai3_set_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr %struct.max98095_priv, ptr %8, i32 0, i32 5, i32 2, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %41, label %12

12:                                               ; preds = %2
  store i32 %1, ptr %9, align 4
  %13 = and i32 %1, 61440
  %14 = add nsw i32 %13, -4096
  %15 = lshr exact i32 %14, 12
  switch i32 %15, label %19 [
    i32 3, label %16
    i32 0, label %21
  ]

16:                                               ; preds = %12
  %17 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 60, i32 noundef 128) #11
  %18 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 61, i32 noundef 0) #11
  br label %21

19:                                               ; preds = %12
  %20 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.199) #12
  br label %41

21:                                               ; preds = %16, %12
  %22 = phi i8 [ 0, %16 ], [ -128, %12 ]
  %23 = and i32 %1, 15
  switch i32 %23, label %41 [
    i32 1, label %24
    i32 3, label %26
  ]

24:                                               ; preds = %21
  %25 = or i8 %22, 16
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi i8 [ %22, %21 ], [ %25, %24 ]
  %28 = lshr i32 %1, 8
  %29 = and i32 %28, 15
  switch i32 %29, label %41 [
    i32 0, label %36
    i32 2, label %30
    i32 3, label %32
    i32 4, label %34
  ]

30:                                               ; preds = %26
  %31 = or i8 %27, 64
  br label %36

32:                                               ; preds = %26
  %33 = or i8 %27, 32
  br label %36

34:                                               ; preds = %26
  %35 = or i8 %27, 96
  br label %36

36:                                               ; preds = %34, %32, %30, %26
  %37 = phi i8 [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %27, %26 ]
  %38 = zext i8 %37 to i32
  %39 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 62, i32 noundef 240, i32 noundef %38) #11
  %40 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 63, i32 noundef 1) #11
  br label %41

41:                                               ; preds = %36, %26, %21, %19, %2
  %42 = phi i32 [ -22, %19 ], [ -22, %21 ], [ -22, %26 ], [ 0, %36 ], [ 0, %2 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98095_dai3_hw_params(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr %struct.max98095_priv, ptr %9, i32 0, i32 5, i32 2
  %11 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %21, %3
  %17 = phi i32 [ 0, %3 ], [ 32, %21 ]
  %18 = phi i32 [ %14, %3 ], [ %23, %21 ]
  %19 = tail call i32 @llvm.cttz.i32(i32 %18, i1 true) #11, !range !9
  %20 = or i32 %19, %17
  br label %25

21:                                               ; preds = %3
  %22 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %16

25:                                               ; preds = %21, %16
  %26 = phi i32 [ %20, %16 ], [ 0, %21 ]
  %27 = tail call i32 @snd_pcm_format_width(i32 noundef %26) #11
  switch i32 %27, label %92 [
    i32 16, label %29
    i32 24, label %28
  ]

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i32 [ 1, %28 ], [ 0, %25 ]
  %31 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 62, i32 noundef 1, i32 noundef %30) #11
  %32 = icmp ugt i32 %12, 8000
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = icmp ugt i32 %12, 11025
  br i1 %34, label %35, label %51

35:                                               ; preds = %33
  %36 = icmp ugt i32 %12, 16000
  br i1 %36, label %37, label %51

37:                                               ; preds = %35
  %38 = icmp ugt i32 %12, 22050
  br i1 %38, label %39, label %51

39:                                               ; preds = %37
  %40 = icmp ugt i32 %12, 24000
  br i1 %40, label %41, label %51

41:                                               ; preds = %39
  %42 = icmp ugt i32 %12, 32000
  br i1 %42, label %43, label %51

43:                                               ; preds = %41
  %44 = icmp ugt i32 %12, 44100
  br i1 %44, label %45, label %51

45:                                               ; preds = %43
  %46 = icmp ugt i32 %12, 48000
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = icmp ugt i32 %12, 88200
  br i1 %48, label %49, label %51

49:                                               ; preds = %47
  %50 = icmp ugt i32 %12, 96000
  br i1 %50, label %92, label %51

51:                                               ; preds = %49, %47, %45, %43, %41, %39, %37, %35, %33, %29
  %52 = phi i32 [ 0, %29 ], [ 1, %33 ], [ 2, %35 ], [ 3, %37 ], [ 4, %39 ], [ 5, %41 ], [ 6, %43 ], [ 7, %45 ], [ 8, %47 ], [ 9, %49 ]
  %53 = getelementptr [10 x %struct.anon.94], ptr @rate_table, i32 0, i32 %52, i32 1
  %54 = load i8, ptr %53, align 4
  %55 = zext i8 %54 to i32
  %56 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 59, i32 noundef 255, i32 noundef %55) #11
  store i32 %12, ptr %10, align 4
  %57 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 62) #11
  %58 = and i32 %57, 128
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %86, label %60

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.max98095_priv, ptr %9, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.200) #12
  br label %92

66:                                               ; preds = %60
  %67 = icmp ult i32 %12, 50000
  %68 = select i1 %67, i64 6291456, i64 3145728
  %69 = zext i32 %12 to i64
  %70 = mul nuw nsw i64 %68, %69
  %71 = icmp ult i64 %70, 4294967296
  br i1 %71, label %72, label %75, !prof !10

72:                                               ; preds = %66
  %73 = trunc i64 %70 to i32
  %74 = udiv i32 %73, %62
  br label %79

75:                                               ; preds = %66
  %76 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %62, i64 %70) #14, !srcloc !11
  %77 = extractvalue { i64, i64 } %76, 1
  %78 = trunc i64 %77 to i32
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi i32 [ %74, %72 ], [ %78, %75 ]
  %81 = lshr i32 %80, 8
  %82 = and i32 %81, 127
  %83 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 60, i32 noundef %82) #11
  %84 = and i32 %80, 255
  %85 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 61, i32 noundef %84) #11
  br label %86

86:                                               ; preds = %79, %51
  %87 = icmp ult i32 %12, 50000
  br i1 %87, label %88, label %90

88:                                               ; preds = %86
  %89 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 66, i32 noundef 8, i32 noundef 0) #11
  br label %92

90:                                               ; preds = %86
  %91 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 66, i32 noundef 8, i32 noundef 8) #11
  br label %92

92:                                               ; preds = %90, %88, %64, %49, %25
  %93 = phi i32 [ -22, %64 ], [ -22, %25 ], [ 0, %90 ], [ 0, %88 ], [ -22, %49 ]
  ret i32 %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(1) }
attributes #14 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i32 0, i32 33}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2147952083, i64 2147952363, i64 2147952697, i64 2147953031}
