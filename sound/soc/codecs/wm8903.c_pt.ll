; ModuleID = '/llk/IR/sound/soc/codecs/wm8903.c_pt.bc'
source_filename = "../sound/soc/codecs/wm8903.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8903_mic_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8903_mic_detect\22\09\09\09\09\09"
module asm "__kstrtabns_wm8903_mic_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.lock_class_key = type {}
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.89, ptr }
%union.anon.89 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.92, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.92 = type { ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.81, i32 }
%union.anon.81 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.anon.95 = type { i32, i32 }
%struct.anon.96 = type { i32, i32, i32, i32 }
%struct.anon.97 = type { i32, i32 }
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
%struct.wm8903_priv = type { ptr, ptr, ptr, [4 x %struct.regulator_bulk_data], i32, i32, %struct.mutex, i32, i32, i32, [4 x i32], i32, ptr, i32, i32, i32, i32, %struct.gpio_chip }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wm8903_platform_data = type { i8, i16, i32, i32, [5 x i32] }
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

@__kstrtab_wm8903_mic_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8903_mic_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8903_mic_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8903_mic_detect to i32), ptr @__kstrtab_wm8903_mic_detect, ptr @__kstrtabns_wm8903_mic_detect }, section "___ksymtab_gpl+wm8903_mic_detect", align 4
@wm8903_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wlf,wm8903\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@wm8903_i2c_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm8903\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_description280 = internal constant [31 x i8] c"description=ASoC WM8903 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author281 = internal constant [55 x i8] c"author=Mark Brown <broonie@opensource.wolfsonmicro.cm>\00", section ".modinfo", align 1
@__UNIQUE_ID_license282 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@wm8903_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @wm8903_i2c_probe, ptr @wm8903_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wm8903_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wm8903_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"wm8903\00", align 1
@wm8903_i2c_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"&wm8903->lock\00", align 1
@wm8903_regmap = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr @wm8903_readable_register, ptr @wm8903_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 172, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8903_reg_defaults, i32 72, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to read chip ID: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Device with ID %x is not a WM8903\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Failed to read chip revision: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"WM8903 revision %c\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"sound/soc/codecs/wm8903.c\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Failed to request IRQ: %d\0A\00", align 1
@soc_component_dev_wm8903 = internal constant %struct.snd_soc_component_driver { ptr null, ptr @wm8903_snd_controls, i32 49, ptr @wm8903_dapm_widgets, i32 74, ptr @wm8903_intercon, i32 117, ptr null, ptr null, ptr null, ptr @wm8903_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8903_seq_notifier, ptr null, ptr @wm8903_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 62, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@wm8903_dai = internal global %struct.snd_soc_dai_driver { ptr @.str.264, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8903_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.265, i64 68719476804, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.266, i64 68719476804, i32 1790, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 1, i32 0, i32 0 }, align 8
@wm8903_reg_defaults = internal constant [72 x %struct.reg_default] [%struct.reg_default { i32 4, i32 24 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 8, i32 1 }, %struct.reg_default { i32 10, i32 1 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 20, i32 1024 }, %struct.reg_default { i32 21, i32 3335 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 24, i32 80 }, %struct.reg_default { i32 25, i32 578 }, %struct.reg_default { i32 26, i32 8 }, %struct.reg_default { i32 27, i32 34 }, %struct.reg_default { i32 30, i32 192 }, %struct.reg_default { i32 31, i32 192 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 36, i32 192 }, %struct.reg_default { i32 37, i32 192 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 39, i32 115 }, %struct.reg_default { i32 40, i32 2495 }, %struct.reg_default { i32 41, i32 12865 }, %struct.reg_default { i32 42, i32 32 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 133 }, %struct.reg_default { i32 45, i32 133 }, %struct.reg_default { i32 46, i32 68 }, %struct.reg_default { i32 47, i32 68 }, %struct.reg_default { i32 50, i32 8 }, %struct.reg_default { i32 51, i32 4 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 55, i32 0 }, %struct.reg_default { i32 57, i32 45 }, %struct.reg_default { i32 58, i32 45 }, %struct.reg_default { i32 59, i32 57 }, %struct.reg_default { i32 60, i32 57 }, %struct.reg_default { i32 62, i32 313 }, %struct.reg_default { i32 63, i32 313 }, %struct.reg_default { i32 64, i32 0 }, %struct.reg_default { i32 67, i32 16 }, %struct.reg_default { i32 69, i32 164 }, %struct.reg_default { i32 90, i32 0 }, %struct.reg_default { i32 94, i32 0 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 104, i32 0 }, %struct.reg_default { i32 108, i32 0 }, %struct.reg_default { i32 109, i32 0 }, %struct.reg_default { i32 110, i32 0 }, %struct.reg_default { i32 111, i32 0 }, %struct.reg_default { i32 112, i32 0 }, %struct.reg_default { i32 114, i32 0 }, %struct.reg_default { i32 116, i32 168 }, %struct.reg_default { i32 117, i32 168 }, %struct.reg_default { i32 118, i32 168 }, %struct.reg_default { i32 119, i32 544 }, %struct.reg_default { i32 120, i32 416 }, %struct.reg_default { i32 122, i32 65535 }, %struct.reg_default { i32 123, i32 0 }, %struct.reg_default { i32 126, i32 0 }, %struct.reg_default { i32 129, i32 0 }, %struct.reg_default { i32 149, i32 26640 }, %struct.reg_default { i32 164, i32 40 }, %struct.reg_default { i32 172, i32 0 }], align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"Invalid IRQ: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"micdet-cfg\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"micdet-delay\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"gpio-cfg\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Invalid gpio-cfg[%d] %x\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"AVDD\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"CPVDD\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"DBVDD\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"DCVDD\00", align 1
@wm8903_template_chip = internal unnamed_addr constant %struct.gpio_chip { ptr @.str, ptr null, ptr null, ptr null, ptr @__this_module, ptr @wm8903_gpio_request, ptr null, ptr null, ptr @wm8903_gpio_direction_in, ptr @wm8903_gpio_direction_out, ptr @wm8903_gpio_get, ptr null, ptr @wm8903_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 1, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, align 4
@.str.20 = private unnamed_addr constant [25 x i8] c"Failed to add GPIOs: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"Failed to read IRQ mask: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Failed to read IRQ status: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Write sequencer done\0A\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"Failed to read interrupt polarity: %d\0A\00", align 1
@wm8903_snd_controls = internal constant [49 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.27 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.29 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.31 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.33 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.35 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @adc_osr to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @hpf_mode to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @drc_slope_r0 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @drc_slope_r1 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @drc_tlv_thresh }, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @drc_tlv_amp }, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @drc_tlv_min }, i32 ptrtoint (ptr @.compoundliteral.49 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @drc_tlv_max }, i32 ptrtoint (ptr @.compoundliteral.51 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @drc_attack to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @drc_decay to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @drc_ff_delay to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @drc_tlv_max }, i32 ptrtoint (ptr @.compoundliteral.60 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @drc_qr_decay to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @drc_smoothing to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @drc_tlv_startup }, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @adc_companding to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @digital_sidetone_tlv }, i32 ptrtoint (ptr @.compoundliteral.75 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @dac_osr to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.78 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @soft_mute to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @mute_mode to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @dac_companding to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.85 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @dac_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.87 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm8903_get_deemph, ptr @wm8903_put_deemph, %union.anon.81 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.92 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.102 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.104 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.106 to i32) }], align 4
@wm8903_intercon = internal constant [117 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.227, ptr null, ptr @.str.228, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr null, ptr @.str.228, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.220, ptr null, ptr @.str.228, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.221, ptr null, ptr @.str.228, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.222, ptr null, ptr @.str.228, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.223, ptr null, ptr @.str.228, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr @.str.151, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr @.str.153, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr @.str.155, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.151, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.153, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.155, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.152, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.154, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.156, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.152, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.154, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.156, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr @.str.231, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr @.str.232, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr @.str.232, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr @.str.233, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr @.str.233, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.231, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.232, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.232, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.233, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.233, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr null, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr null, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.236, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.237, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr @.str.236, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr @.str.237, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr @.str.238, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr @.str.239, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr @.str.238, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr @.str.239, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr null, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr null, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr null, ptr @.str.176, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr null, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr @.str.238, ptr @.str.187, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr @.str.239, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr @.str.238, ptr @.str.187, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr @.str.239, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr @.str.238, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr @.str.239, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr @.str.238, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr @.str.239, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.185, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.194, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.194, ptr null, ptr @.str.186, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.194, ptr null, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr @.str.247, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr @.str.249, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr @.str.243, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr @.str.245, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr @.str.247, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr @.str.249, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr @.str.243, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr @.str.245, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.197, ptr @.str.247, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.197, ptr @.str.249, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.197, ptr @.str.243, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.197, ptr @.str.245, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.198, ptr @.str.247, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.198, ptr @.str.249, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.198, ptr @.str.243, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.198, ptr @.str.245, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr null, ptr @.str.195, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr null, ptr @.str.196, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr null, ptr @.str.195, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.200, ptr null, ptr @.str.196, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.224, ptr null, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.225, ptr null, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr null, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr null, ptr @.str.200, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr null, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr null, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.214, ptr null, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr null, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.213, ptr null, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.217, ptr null, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.220, ptr null, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.221, ptr null, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.222, ptr null, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.223, ptr null, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.220, ptr null, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.221, ptr null, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.222, ptr null, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.223, ptr null, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr null, ptr @.str.220, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr null, ptr @.str.221, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr null, ptr @.str.222, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.216, ptr null, ptr @.str.223, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr null, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr null, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.211, ptr null, ptr @.str.212, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr null, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr null, ptr @.str.203, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr null, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr null, ptr @.str.211, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr null, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.224, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr null, ptr @.str.224, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr null, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr null, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.226, ptr null, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr null, ptr @.str.226, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.200, ptr null, ptr @.str.226, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr null, ptr @.str.226, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr null, ptr @.str.226, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str.25 = private unnamed_addr constant [22 x i8] c"Left Input PGA Switch\00", align 1
@.compoundliteral = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.26 = private unnamed_addr constant [22 x i8] c"Left Input PGA Volume\00", align 1
@.compoundliteral.27 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 44, i32 44, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.28 = private unnamed_addr constant [34 x i8] c"Left Input PGA Common Mode Switch\00", align 1
@.compoundliteral.29 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.30 = private unnamed_addr constant [23 x i8] c"Right Input PGA Switch\00", align 1
@.compoundliteral.31 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.32 = private unnamed_addr constant [23 x i8] c"Right Input PGA Volume\00", align 1
@.compoundliteral.33 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 45, i32 45, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.34 = private unnamed_addr constant [35 x i8] c"Right Input PGA Common Mode Switch\00", align 1
@.compoundliteral.35 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 47, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.36 = private unnamed_addr constant [8 x i8] c"ADC OSR\00", align 1
@adc_osr = internal constant %struct.soc_enum { i32 10, i8 0, i8 0, i32 2, i32 1, ptr @osr_text, ptr null, i8 0 }, align 4
@.str.37 = private unnamed_addr constant [11 x i8] c"HPF Switch\00", align 1
@.compoundliteral.38 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.39 = private unnamed_addr constant [9 x i8] c"HPF Mode\00", align 1
@hpf_mode = internal constant %struct.soc_enum { i32 38, i8 5, i8 5, i32 4, i32 3, ptr @hpf_mode_text, ptr null, i8 0 }, align 4
@.str.40 = private unnamed_addr constant [11 x i8] c"DRC Switch\00", align 1
@.compoundliteral.41 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 15, i32 15, i32 0, i8 0 }, align 4
@.str.42 = private unnamed_addr constant [24 x i8] c"DRC Compressor Slope R0\00", align 1
@drc_slope_r0 = internal constant %struct.soc_enum { i32 42, i8 3, i8 3, i32 6, i32 7, ptr @drc_slope_text, ptr null, i8 0 }, align 4
@.str.43 = private unnamed_addr constant [24 x i8] c"DRC Compressor Slope R1\00", align 1
@drc_slope_r1 = internal constant %struct.soc_enum { i32 42, i8 0, i8 0, i32 6, i32 7, ptr @drc_slope_text, ptr null, i8 0 }, align 4
@.str.44 = private unnamed_addr constant [32 x i8] c"DRC Compressor Threshold Volume\00", align 1
@drc_tlv_thresh = internal constant [4 x i32] [i32 1, i32 8, i32 0, i32 75], align 4
@.compoundliteral.45 = internal global %struct.soc_mixer_control { i32 0, i32 124, i32 124, i32 43, i32 43, i32 5, i32 5, i32 0, i8 1 }, align 4
@.str.46 = private unnamed_addr constant [11 x i8] c"DRC Volume\00", align 1
@drc_tlv_amp = internal constant [4 x i32] [i32 1, i32 8, i32 -2250, i32 75], align 4
@.compoundliteral.47 = internal global %struct.soc_mixer_control { i32 0, i32 30, i32 30, i32 43, i32 43, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.48 = private unnamed_addr constant [24 x i8] c"DRC Minimum Gain Volume\00", align 1
@drc_tlv_min = internal constant [4 x i32] [i32 1, i32 8, i32 0, i32 600], align 4
@.compoundliteral.49 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 41, i32 41, i32 2, i32 2, i32 0, i8 1 }, align 4
@.str.50 = private unnamed_addr constant [24 x i8] c"DRC Maximum Gain Volume\00", align 1
@drc_tlv_max = internal constant [4 x i32] [i32 1, i32 8, i32 1200, i32 600], align 4
@.compoundliteral.51 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 41, i32 41, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.52 = private unnamed_addr constant [16 x i8] c"DRC Attack Rate\00", align 1
@drc_attack = internal constant %struct.soc_enum { i32 41, i8 12, i8 12, i32 11, i32 15, ptr @drc_attack_text, ptr null, i8 0 }, align 4
@.str.53 = private unnamed_addr constant [15 x i8] c"DRC Decay Rate\00", align 1
@drc_decay = internal constant %struct.soc_enum { i32 41, i8 8, i8 8, i32 9, i32 15, ptr @drc_decay_text, ptr null, i8 0 }, align 4
@.str.54 = private unnamed_addr constant [13 x i8] c"DRC FF Delay\00", align 1
@drc_ff_delay = internal constant %struct.soc_enum { i32 40, i8 5, i8 5, i32 2, i32 1, ptr @drc_ff_delay_text, ptr null, i8 0 }, align 4
@.str.55 = private unnamed_addr constant [20 x i8] c"DRC Anticlip Switch\00", align 1
@.compoundliteral.56 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.57 = private unnamed_addr constant [14 x i8] c"DRC QR Switch\00", align 1
@.compoundliteral.58 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 2, i32 2, i32 0, i8 0 }, align 4
@.str.59 = private unnamed_addr constant [24 x i8] c"DRC QR Threshold Volume\00", align 1
@.compoundliteral.60 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 40, i32 40, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.61 = private unnamed_addr constant [18 x i8] c"DRC QR Decay Rate\00", align 1
@drc_qr_decay = internal constant %struct.soc_enum { i32 41, i8 4, i8 4, i32 3, i32 3, ptr @drc_qr_decay_text, ptr null, i8 0 }, align 4
@.str.62 = private unnamed_addr constant [21 x i8] c"DRC Smoothing Switch\00", align 1
@.compoundliteral.63 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 3, i32 3, i32 0, i8 0 }, align 4
@.str.64 = private unnamed_addr constant [32 x i8] c"DRC Smoothing Hysteresis Switch\00", align 1
@.compoundliteral.65 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.66 = private unnamed_addr constant [24 x i8] c"DRC Smoothing Threshold\00", align 1
@drc_smoothing = internal constant %struct.soc_enum { i32 40, i8 11, i8 11, i32 3, i32 3, ptr @drc_smoothing_text, ptr null, i8 0 }, align 4
@.str.67 = private unnamed_addr constant [19 x i8] c"DRC Startup Volume\00", align 1
@drc_tlv_startup = internal constant [4 x i32] [i32 1, i32 8, i32 -300, i32 50], align 4
@.compoundliteral.68 = internal global %struct.soc_mixer_control { i32 0, i32 18, i32 18, i32 40, i32 40, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.69 = private unnamed_addr constant [23 x i8] c"Digital Capture Volume\00", align 1
@digital_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -7200, i32 65611], align 4
@.compoundliteral.70 = internal global %struct.soc_mixer_control { i32 0, i32 120, i32 120, i32 36, i32 37, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.71 = private unnamed_addr constant [20 x i8] c"ADC Companding Mode\00", align 1
@adc_companding = internal constant %struct.soc_enum { i32 24, i8 2, i8 2, i32 2, i32 1, ptr @companding_text, ptr null, i8 0 }, align 4
@.str.72 = private unnamed_addr constant [22 x i8] c"ADC Companding Switch\00", align 1
@.compoundliteral.73 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 3, i32 3, i32 0, i8 0 }, align 4
@.str.74 = private unnamed_addr constant [24 x i8] c"Digital Sidetone Volume\00", align 1
@digital_sidetone_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -3600, i32 300], align 4
@.compoundliteral.75 = internal global %struct.soc_mixer_control { i32 0, i32 12, i32 12, i32 32, i32 32, i32 4, i32 8, i32 0, i8 0 }, align 4
@.str.76 = private unnamed_addr constant [8 x i8] c"DAC OSR\00", align 1
@dac_osr = internal constant %struct.soc_enum { i32 33, i8 0, i8 0, i32 2, i32 1, ptr @osr_text, ptr null, i8 0 }, align 4
@.str.77 = private unnamed_addr constant [24 x i8] c"Digital Playback Volume\00", align 1
@.compoundliteral.78 = internal global %struct.soc_mixer_control { i32 0, i32 120, i32 120, i32 30, i32 31, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.79 = private unnamed_addr constant [19 x i8] c"DAC Soft Mute Rate\00", align 1
@soft_mute = internal constant %struct.soc_enum { i32 33, i8 10, i8 10, i32 2, i32 1, ptr @soft_mute_text, ptr null, i8 0 }, align 4
@.str.80 = private unnamed_addr constant [14 x i8] c"DAC Mute Mode\00", align 1
@mute_mode = internal constant %struct.soc_enum { i32 33, i8 9, i8 9, i32 2, i32 1, ptr @mute_mode_text, ptr null, i8 0 }, align 4
@.str.81 = private unnamed_addr constant [16 x i8] c"DAC Mono Switch\00", align 1
@.compoundliteral.82 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 33, i32 33, i32 12, i32 12, i32 0, i8 0 }, align 4
@.str.83 = private unnamed_addr constant [20 x i8] c"DAC Companding Mode\00", align 1
@dac_companding = internal constant %struct.soc_enum { i32 24, i8 0, i8 0, i32 2, i32 1, ptr @companding_text, ptr null, i8 0 }, align 4
@.str.84 = private unnamed_addr constant [22 x i8] c"DAC Companding Switch\00", align 1
@.compoundliteral.85 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.86 = private unnamed_addr constant [17 x i8] c"DAC Boost Volume\00", align 1
@dac_boost_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 0, i32 600], align 4
@.compoundliteral.87 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 24, i32 24, i32 9, i32 9, i32 0, i8 0 }, align 4
@.str.88 = private unnamed_addr constant [27 x i8] c"Playback Deemphasis Switch\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"Headphone Switch\00", align 1
@.compoundliteral.90 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 58, i32 8, i32 8, i32 0, i8 1 }, align 4
@.str.91 = private unnamed_addr constant [20 x i8] c"Headphone ZC Switch\00", align 1
@.compoundliteral.92 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 58, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.93 = private unnamed_addr constant [17 x i8] c"Headphone Volume\00", align 1
@out_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -5700, i32 100], align 4
@.compoundliteral.94 = internal global %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 57, i32 58, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.95 = private unnamed_addr constant [16 x i8] c"Line Out Switch\00", align 1
@.compoundliteral.96 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 59, i32 60, i32 8, i32 8, i32 0, i8 1 }, align 4
@.str.97 = private unnamed_addr constant [19 x i8] c"Line Out ZC Switch\00", align 1
@.compoundliteral.98 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 59, i32 60, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.99 = private unnamed_addr constant [16 x i8] c"Line Out Volume\00", align 1
@.compoundliteral.100 = internal global %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 59, i32 60, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.101 = private unnamed_addr constant [15 x i8] c"Speaker Switch\00", align 1
@.compoundliteral.102 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 63, i32 8, i32 8, i32 0, i8 1 }, align 4
@.str.103 = private unnamed_addr constant [18 x i8] c"Speaker ZC Switch\00", align 1
@.compoundliteral.104 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 63, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.105 = private unnamed_addr constant [15 x i8] c"Speaker Volume\00", align 1
@.compoundliteral.106 = internal global %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 62, i32 63, i32 0, i32 0, i32 0, i8 0 }, align 4
@osr_text = internal global [2 x ptr] [ptr @.str.107, ptr @.str.108], align 4
@.str.107 = private unnamed_addr constant [10 x i8] c"Low power\00", align 1
@.str.108 = private unnamed_addr constant [17 x i8] c"High performance\00", align 1
@hpf_mode_text = internal global [4 x ptr] [ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112], align 4
@.str.109 = private unnamed_addr constant [6 x i8] c"Hi-fi\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"Voice 1\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"Voice 2\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"Voice 3\00", align 1
@drc_slope_text = internal global [6 x ptr] [ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118], align 4
@.str.113 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"1/2\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"1/4\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"1/8\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"1/16\00", align 1
@.str.118 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@drc_attack_text = internal global [11 x ptr] [ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129], align 4
@.str.119 = private unnamed_addr constant [14 x i8] c"instantaneous\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"363us\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"762us\00", align 1
@.str.122 = private unnamed_addr constant [7 x i8] c"1.45ms\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"2.9ms\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"5.8ms\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"11.6ms\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"23.2ms\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"46.4ms\00", align 1
@.str.128 = private unnamed_addr constant [7 x i8] c"92.8ms\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"185.6ms\00", align 1
@drc_decay_text = internal global [9 x ptr] [ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138], align 4
@.str.130 = private unnamed_addr constant [6 x i8] c"186ms\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"372ms\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"743ms\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"1.49s\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"2.97s\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"5.94s\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"11.89s\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"23.87s\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"47.56s\00", align 1
@drc_ff_delay_text = internal global [2 x ptr] [ptr @.str.139, ptr @.str.140], align 4
@.str.139 = private unnamed_addr constant [10 x i8] c"5 samples\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"9 samples\00", align 1
@drc_qr_decay_text = internal global [3 x ptr] [ptr @.str.141, ptr @.str.122, ptr @.str.124], align 4
@.str.141 = private unnamed_addr constant [8 x i8] c"0.725ms\00", align 1
@drc_smoothing_text = internal global [3 x ptr] [ptr @.str.142, ptr @.str.143, ptr @.str.144], align 4
@.str.142 = private unnamed_addr constant [4 x i8] c"Low\00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c"Medium\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"High\00", align 1
@companding_text = internal global [2 x ptr] [ptr @.str.145, ptr @.str.146], align 4
@.str.145 = private unnamed_addr constant [5 x i8] c"ulaw\00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c"alaw\00", align 1
@soft_mute_text = internal global [2 x ptr] [ptr @.str.147, ptr @.str.148], align 4
@.str.147 = private unnamed_addr constant [12 x i8] c"Fast (fs/2)\00", align 1
@.str.148 = private unnamed_addr constant [13 x i8] c"Slow (fs/32)\00", align 1
@mute_mode_text = internal global [2 x ptr] [ptr @.str.149, ptr @.str.150], align 4
@.str.149 = private unnamed_addr constant [5 x i8] c"Hard\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"Soft\00", align 1
@wm8903_deemph = internal unnamed_addr constant [4 x i32] [i32 0, i32 32000, i32 44100, i32 48000], align 4
@.str.151 = private unnamed_addr constant [5 x i8] c"IN1L\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"IN1R\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"IN2L\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"IN2R\00", align 1
@.str.155 = private unnamed_addr constant [5 x i8] c"IN3L\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c"IN3R\00", align 1
@.str.157 = private unnamed_addr constant [8 x i8] c"DMICDAT\00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"HPOUTL\00", align 1
@.str.159 = private unnamed_addr constant [7 x i8] c"HPOUTR\00", align 1
@.str.160 = private unnamed_addr constant [9 x i8] c"LINEOUTL\00", align 1
@.str.161 = private unnamed_addr constant [9 x i8] c"LINEOUTR\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"LOP\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"LON\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"ROP\00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c"RON\00", align 1
@.str.166 = private unnamed_addr constant [8 x i8] c"MICBIAS\00", align 1
@.str.167 = private unnamed_addr constant [15 x i8] c"Left Input Mux\00", align 1
@linput_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.167, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @linput_enum to i32) }, align 4
@.str.168 = private unnamed_addr constant [25 x i8] c"Left Input Inverting Mux\00", align 1
@linput_inv_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.230, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @linput_inv_enum to i32) }, align 4
@.str.169 = private unnamed_addr constant [20 x i8] c"Left Input Mode Mux\00", align 1
@linput_mode_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.169, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @linput_mode_enum to i32) }, align 4
@.str.170 = private unnamed_addr constant [16 x i8] c"Right Input Mux\00", align 1
@rinput_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.170, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @rinput_enum to i32) }, align 4
@.str.171 = private unnamed_addr constant [26 x i8] c"Right Input Inverting Mux\00", align 1
@rinput_inv_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.234, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @rinput_inv_enum to i32) }, align 4
@.str.172 = private unnamed_addr constant [21 x i8] c"Right Input Mode Mux\00", align 1
@rinput_mode_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @rinput_mode_enum to i32) }, align 4
@.str.173 = private unnamed_addr constant [15 x i8] c"Left Input PGA\00", align 1
@.str.174 = private unnamed_addr constant [16 x i8] c"Right Input PGA\00", align 1
@.str.175 = private unnamed_addr constant [15 x i8] c"Left ADC Input\00", align 1
@adcinput_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.235, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @adcinput_enum to i32) }, align 4
@.str.176 = private unnamed_addr constant [16 x i8] c"Right ADC Input\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"ADCL\00", align 1
@.str.178 = private unnamed_addr constant [5 x i8] c"ADCR\00", align 1
@.str.179 = private unnamed_addr constant [17 x i8] c"Left Capture Mux\00", align 1
@lcapture_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.179, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @lcapture_enum to i32) }, align 4
@.str.180 = private unnamed_addr constant [18 x i8] c"Right Capture Mux\00", align 1
@rcapture_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @rcapture_enum to i32) }, align 4
@.str.181 = private unnamed_addr constant [7 x i8] c"AIFTXL\00", align 1
@.str.182 = private unnamed_addr constant [18 x i8] c"Left HiFi Capture\00", align 1
@.str.183 = private unnamed_addr constant [7 x i8] c"AIFTXR\00", align 1
@.str.184 = private unnamed_addr constant [19 x i8] c"Right HiFi Capture\00", align 1
@.str.185 = private unnamed_addr constant [14 x i8] c"DACL Sidetone\00", align 1
@lsidetone_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.240, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @lsidetone_enum to i32) }, align 4
@.str.186 = private unnamed_addr constant [14 x i8] c"DACR Sidetone\00", align 1
@rsidetone_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.242, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @rsidetone_enum to i32) }, align 4
@.str.187 = private unnamed_addr constant [7 x i8] c"AIFRXL\00", align 1
@.str.188 = private unnamed_addr constant [14 x i8] c"Left Playback\00", align 1
@.str.189 = private unnamed_addr constant [7 x i8] c"AIFRXR\00", align 1
@.str.190 = private unnamed_addr constant [15 x i8] c"Right Playback\00", align 1
@.str.191 = private unnamed_addr constant [18 x i8] c"Left Playback Mux\00", align 1
@lplay_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.191, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @lplay_enum to i32) }, align 4
@.str.192 = private unnamed_addr constant [19 x i8] c"Right Playback Mux\00", align 1
@rplay_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.192, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @rplay_enum to i32) }, align 4
@.str.193 = private unnamed_addr constant [5 x i8] c"DACL\00", align 1
@.str.194 = private unnamed_addr constant [5 x i8] c"DACR\00", align 1
@.str.195 = private unnamed_addr constant [18 x i8] c"Left Output Mixer\00", align 1
@left_output_mixer = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.243, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.244 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.246 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.247, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8903_class_w_put, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.248 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8903_class_w_put, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.250 to i32) }], align 4
@.str.196 = private unnamed_addr constant [19 x i8] c"Right Output Mixer\00", align 1
@right_output_mixer = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.243, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.251 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.252 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.247, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8903_class_w_put, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.253 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8903_class_w_put, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.254 to i32) }], align 4
@.str.197 = private unnamed_addr constant [19 x i8] c"Left Speaker Mixer\00", align 1
@left_speaker_mixer = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.243, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.255 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.256 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.247, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.257 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.258 to i32) }], align 4
@.str.198 = private unnamed_addr constant [20 x i8] c"Right Speaker Mixer\00", align 1
@right_speaker_mixer = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.243, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.259 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.260 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.247, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.261 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.262 to i32) }], align 4
@.str.199 = private unnamed_addr constant [26 x i8] c"Left Headphone Output PGA\00", align 1
@.str.200 = private unnamed_addr constant [27 x i8] c"Right Headphone Output PGA\00", align 1
@.str.201 = private unnamed_addr constant [21 x i8] c"Left Line Output PGA\00", align 1
@.str.202 = private unnamed_addr constant [22 x i8] c"Right Line Output PGA\00", align 1
@.str.203 = private unnamed_addr constant [14 x i8] c"HPL_RMV_SHORT\00", align 1
@.str.204 = private unnamed_addr constant [13 x i8] c"HPL_ENA_OUTP\00", align 1
@.str.205 = private unnamed_addr constant [12 x i8] c"HPL_ENA_DLY\00", align 1
@.str.206 = private unnamed_addr constant [8 x i8] c"HPL_ENA\00", align 1
@.str.207 = private unnamed_addr constant [14 x i8] c"HPR_RMV_SHORT\00", align 1
@.str.208 = private unnamed_addr constant [13 x i8] c"HPR_ENA_OUTP\00", align 1
@.str.209 = private unnamed_addr constant [12 x i8] c"HPR_ENA_DLY\00", align 1
@.str.210 = private unnamed_addr constant [8 x i8] c"HPR_ENA\00", align 1
@.str.211 = private unnamed_addr constant [19 x i8] c"LINEOUTL_RMV_SHORT\00", align 1
@.str.212 = private unnamed_addr constant [18 x i8] c"LINEOUTL_ENA_OUTP\00", align 1
@.str.213 = private unnamed_addr constant [17 x i8] c"LINEOUTL_ENA_DLY\00", align 1
@.str.214 = private unnamed_addr constant [13 x i8] c"LINEOUTL_ENA\00", align 1
@.str.215 = private unnamed_addr constant [19 x i8] c"LINEOUTR_RMV_SHORT\00", align 1
@.str.216 = private unnamed_addr constant [18 x i8] c"LINEOUTR_ENA_OUTP\00", align 1
@.str.217 = private unnamed_addr constant [17 x i8] c"LINEOUTR_ENA_DLY\00", align 1
@.str.218 = private unnamed_addr constant [13 x i8] c"LINEOUTR_ENA\00", align 1
@.str.219 = private unnamed_addr constant [11 x i8] c"DCS Master\00", align 1
@.str.220 = private unnamed_addr constant [8 x i8] c"HPL_DCS\00", align 1
@.str.221 = private unnamed_addr constant [8 x i8] c"HPR_DCS\00", align 1
@.str.222 = private unnamed_addr constant [13 x i8] c"LINEOUTL_DCS\00", align 1
@.str.223 = private unnamed_addr constant [13 x i8] c"LINEOUTR_DCS\00", align 1
@.str.224 = private unnamed_addr constant [17 x i8] c"Left Speaker PGA\00", align 1
@.str.225 = private unnamed_addr constant [18 x i8] c"Right Speaker PGA\00", align 1
@.str.226 = private unnamed_addr constant [12 x i8] c"Charge Pump\00", align 1
@.str.227 = private unnamed_addr constant [8 x i8] c"CLK_DSP\00", align 1
@.str.228 = private unnamed_addr constant [8 x i8] c"CLK_SYS\00", align 1
@wm8903_dapm_widgets = internal constant [74 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.158, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.159, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.161, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.162, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.163, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.164, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.165, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.167, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @linput_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @linput_inv_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.169, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @linput_mode_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rinput_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rinput_inv_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.172, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rinput_mode_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.173, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.174, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.175, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adcinput_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.176, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adcinput_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.177, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.178, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.179, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lcapture_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.180, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rcapture_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.181, ptr @.str.182, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.183, ptr @.str.184, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.185, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lsidetone_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.186, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rsidetone_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.187, ptr @.str.188, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.189, ptr @.str.190, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.191, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lplay_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.192, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rplay_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.193, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.194, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.195, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 13, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @left_output_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.196, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 13, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @right_output_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.197, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 16, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @left_speaker_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.198, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 16, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @right_speaker_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.199, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 14, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.200, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 14, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.201, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 15, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.202, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 15, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.203, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 90, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 4, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.204, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 90, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.205, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 90, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.206, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 90, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.207, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 90, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 4, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.208, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 90, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.209, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 90, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.210, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 90, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.211, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 94, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 4, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.212, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 94, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.213, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 94, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.214, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 94, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.215, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 94, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 4, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.216, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 94, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.217, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 94, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.218, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 94, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.219, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 67, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.220, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 6, ptr @wm8903_dcs_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.221, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 6, ptr @wm8903_dcs_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.222, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 6, ptr @wm8903_dcs_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.223, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 6, ptr @wm8903_dcs_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.224, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 17, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.225, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 17, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.226, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @wm8903_cp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.227, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.228, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@linput_enum = internal constant %struct.soc_enum { i32 46, i8 2, i8 2, i32 3, i32 3, ptr @linput_mux_text, ptr null, i8 0 }, align 4
@linput_mux_text = internal global [3 x ptr] [ptr @.str.151, ptr @.str.153, ptr @.str.155], align 4
@.str.230 = private unnamed_addr constant [25 x i8] c"Left Inverting Input Mux\00", align 1
@linput_inv_enum = internal constant %struct.soc_enum { i32 46, i8 4, i8 4, i32 3, i32 3, ptr @linput_mux_text, ptr null, i8 0 }, align 4
@linput_mode_enum = internal constant %struct.soc_enum { i32 46, i8 0, i8 0, i32 3, i32 3, ptr @input_mode_text, ptr null, i8 0 }, align 4
@input_mode_text = internal global [3 x ptr] [ptr @.str.231, ptr @.str.232, ptr @.str.233], align 4
@.str.231 = private unnamed_addr constant [13 x i8] c"Single-Ended\00", align 1
@.str.232 = private unnamed_addr constant [18 x i8] c"Differential Line\00", align 1
@.str.233 = private unnamed_addr constant [17 x i8] c"Differential Mic\00", align 1
@rinput_enum = internal constant %struct.soc_enum { i32 47, i8 2, i8 2, i32 3, i32 3, ptr @rinput_mux_text, ptr null, i8 0 }, align 4
@rinput_mux_text = internal global [3 x ptr] [ptr @.str.152, ptr @.str.154, ptr @.str.156], align 4
@.str.234 = private unnamed_addr constant [26 x i8] c"Right Inverting Input Mux\00", align 1
@rinput_inv_enum = internal constant %struct.soc_enum { i32 47, i8 4, i8 4, i32 3, i32 3, ptr @rinput_mux_text, ptr null, i8 0 }, align 4
@rinput_mode_enum = internal constant %struct.soc_enum { i32 47, i8 0, i8 0, i32 3, i32 3, ptr @input_mode_text, ptr null, i8 0 }, align 4
@.str.235 = private unnamed_addr constant [10 x i8] c"ADC Input\00", align 1
@adcinput_enum = internal constant %struct.soc_enum { i32 164, i8 9, i8 9, i32 2, i32 1, ptr @adcinput_text, ptr null, i8 0 }, align 4
@adcinput_text = internal global [2 x ptr] [ptr @.str.236, ptr @.str.237], align 4
@.str.236 = private unnamed_addr constant [4 x i8] c"ADC\00", align 1
@.str.237 = private unnamed_addr constant [5 x i8] c"DMIC\00", align 1
@lcapture_enum = internal constant %struct.soc_enum { i32 24, i8 7, i8 7, i32 2, i32 1, ptr @aif_text, ptr null, i8 0 }, align 4
@aif_text = internal global [2 x ptr] [ptr @.str.238, ptr @.str.239], align 4
@.str.238 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.239 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@rcapture_enum = internal constant %struct.soc_enum { i32 24, i8 6, i8 6, i32 2, i32 1, ptr @aif_text, ptr null, i8 0 }, align 4
@.str.240 = private unnamed_addr constant [18 x i8] c"DACL Sidetone Mux\00", align 1
@lsidetone_enum = internal constant %struct.soc_enum { i32 32, i8 2, i8 2, i32 3, i32 3, ptr @sidetone_text, ptr null, i8 0 }, align 4
@sidetone_text = internal global [3 x ptr] [ptr @.str.241, ptr @.str.238, ptr @.str.239], align 4
@.str.241 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.242 = private unnamed_addr constant [18 x i8] c"DACR Sidetone Mux\00", align 1
@rsidetone_enum = internal constant %struct.soc_enum { i32 32, i8 0, i8 0, i32 3, i32 3, ptr @sidetone_text, ptr null, i8 0 }, align 4
@lplay_enum = internal constant %struct.soc_enum { i32 24, i8 5, i8 5, i32 2, i32 1, ptr @aif_text, ptr null, i8 0 }, align 4
@rplay_enum = internal constant %struct.soc_enum { i32 24, i8 4, i8 4, i32 2, i32 1, ptr @aif_text, ptr null, i8 0 }, align 4
@.str.243 = private unnamed_addr constant [12 x i8] c"DACL Switch\00", align 1
@.compoundliteral.244 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 3, i32 3, i32 0, i8 0 }, align 4
@.str.245 = private unnamed_addr constant [12 x i8] c"DACR Switch\00", align 1
@.compoundliteral.246 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 2, i32 2, i32 0, i8 0 }, align 4
@.str.247 = private unnamed_addr constant [19 x i8] c"Left Bypass Switch\00", align 1
@.compoundliteral.248 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.249 = private unnamed_addr constant [20 x i8] c"Right Bypass Switch\00", align 1
@.compoundliteral.250 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.251 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.252 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.253 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.254 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.255 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 52, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.256 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 52, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.257 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 52, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.258 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 52, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.259 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.260 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.261 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.262 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 0, i32 0, i32 0, i8 0 }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.263 = private unnamed_addr constant [29 x i8] c"\014DCS mode %d delay not set\0A\00", align 1
@.str.264 = private unnamed_addr constant [12 x i8] c"wm8903-hifi\00", align 1
@wm8903_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr @wm8903_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @wm8903_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8903_mute, ptr null, ptr null, ptr @wm8903_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 1 }, align 4
@.str.265 = private unnamed_addr constant [8 x i8] c"Capture\00", align 1
@.str.266 = private unnamed_addr constant [9 x i8] c"Playback\00", align 1
@sample_rates = internal unnamed_addr constant [12 x %struct.anon.95] [%struct.anon.95 { i32 8000, i32 0 }, %struct.anon.95 { i32 11025, i32 1 }, %struct.anon.95 { i32 12000, i32 2 }, %struct.anon.95 { i32 16000, i32 3 }, %struct.anon.95 { i32 22050, i32 4 }, %struct.anon.95 { i32 24000, i32 5 }, %struct.anon.95 { i32 32000, i32 6 }, %struct.anon.95 { i32 44100, i32 7 }, %struct.anon.95 { i32 48000, i32 8 }, %struct.anon.95 { i32 88200, i32 9 }, %struct.anon.95 { i32 96000, i32 10 }, %struct.anon.95 zeroinitializer], align 4
@clk_sys_ratios = internal unnamed_addr constant [54 x %struct.anon.96] [%struct.anon.96 { i32 64, i32 0, i32 0, i32 1 }, %struct.anon.96 { i32 68, i32 0, i32 1, i32 1 }, %struct.anon.96 { i32 125, i32 0, i32 2, i32 1 }, %struct.anon.96 { i32 128, i32 1, i32 0, i32 1 }, %struct.anon.96 { i32 136, i32 1, i32 1, i32 1 }, %struct.anon.96 { i32 192, i32 2, i32 0, i32 1 }, %struct.anon.96 { i32 204, i32 2, i32 1, i32 1 }, %struct.anon.96 { i32 64, i32 0, i32 0, i32 2 }, %struct.anon.96 { i32 68, i32 0, i32 1, i32 2 }, %struct.anon.96 { i32 125, i32 0, i32 2, i32 2 }, %struct.anon.96 { i32 128, i32 1, i32 0, i32 2 }, %struct.anon.96 { i32 136, i32 1, i32 1, i32 2 }, %struct.anon.96 { i32 192, i32 2, i32 0, i32 2 }, %struct.anon.96 { i32 204, i32 2, i32 1, i32 2 }, %struct.anon.96 { i32 250, i32 2, i32 2, i32 1 }, %struct.anon.96 { i32 256, i32 3, i32 0, i32 1 }, %struct.anon.96 { i32 272, i32 3, i32 1, i32 1 }, %struct.anon.96 { i32 384, i32 4, i32 0, i32 1 }, %struct.anon.96 { i32 408, i32 4, i32 1, i32 1 }, %struct.anon.96 { i32 375, i32 4, i32 2, i32 1 }, %struct.anon.96 { i32 512, i32 5, i32 0, i32 1 }, %struct.anon.96 { i32 544, i32 5, i32 1, i32 1 }, %struct.anon.96 { i32 500, i32 5, i32 2, i32 1 }, %struct.anon.96 { i32 768, i32 6, i32 0, i32 1 }, %struct.anon.96 { i32 816, i32 6, i32 1, i32 1 }, %struct.anon.96 { i32 750, i32 6, i32 2, i32 1 }, %struct.anon.96 { i32 1024, i32 7, i32 0, i32 1 }, %struct.anon.96 { i32 1088, i32 7, i32 1, i32 1 }, %struct.anon.96 { i32 1000, i32 7, i32 2, i32 1 }, %struct.anon.96 { i32 1408, i32 8, i32 0, i32 1 }, %struct.anon.96 { i32 1496, i32 8, i32 1, i32 1 }, %struct.anon.96 { i32 1536, i32 9, i32 0, i32 1 }, %struct.anon.96 { i32 1632, i32 9, i32 1, i32 1 }, %struct.anon.96 { i32 1500, i32 9, i32 2, i32 1 }, %struct.anon.96 { i32 250, i32 2, i32 2, i32 2 }, %struct.anon.96 { i32 256, i32 3, i32 0, i32 2 }, %struct.anon.96 { i32 272, i32 3, i32 1, i32 2 }, %struct.anon.96 { i32 384, i32 4, i32 0, i32 2 }, %struct.anon.96 { i32 408, i32 4, i32 1, i32 2 }, %struct.anon.96 { i32 375, i32 4, i32 2, i32 2 }, %struct.anon.96 { i32 512, i32 5, i32 0, i32 2 }, %struct.anon.96 { i32 544, i32 5, i32 1, i32 2 }, %struct.anon.96 { i32 500, i32 5, i32 2, i32 2 }, %struct.anon.96 { i32 768, i32 6, i32 0, i32 2 }, %struct.anon.96 { i32 816, i32 6, i32 1, i32 2 }, %struct.anon.96 { i32 750, i32 6, i32 2, i32 2 }, %struct.anon.96 { i32 1024, i32 7, i32 0, i32 2 }, %struct.anon.96 { i32 1088, i32 7, i32 1, i32 2 }, %struct.anon.96 { i32 1000, i32 7, i32 2, i32 2 }, %struct.anon.96 { i32 1408, i32 8, i32 0, i32 2 }, %struct.anon.96 { i32 1496, i32 8, i32 1, i32 2 }, %struct.anon.96 { i32 1536, i32 9, i32 0, i32 2 }, %struct.anon.96 { i32 1632, i32 9, i32 1, i32 2 }, %struct.anon.96 { i32 1500, i32 9, i32 2, i32 2 }], align 4
@bclk_divs = internal unnamed_addr constant [17 x %struct.anon.97] [%struct.anon.97 { i32 10, i32 0 }, %struct.anon.97 { i32 20, i32 2 }, %struct.anon.97 { i32 30, i32 3 }, %struct.anon.97 { i32 40, i32 4 }, %struct.anon.97 { i32 50, i32 5 }, %struct.anon.97 { i32 60, i32 7 }, %struct.anon.97 { i32 80, i32 8 }, %struct.anon.97 { i32 100, i32 9 }, %struct.anon.97 { i32 120, i32 11 }, %struct.anon.97 { i32 160, i32 12 }, %struct.anon.97 { i32 200, i32 13 }, %struct.anon.97 { i32 220, i32 14 }, %struct.anon.97 { i32 240, i32 15 }, %struct.anon.97 { i32 300, i32 17 }, %struct.anon.97 { i32 320, i32 18 }, %struct.anon.97 { i32 440, i32 19 }, %struct.anon.97 { i32 480, i32 20 }], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author281, ptr @__UNIQUE_ID_description280, ptr @__UNIQUE_ID_license282, ptr @__ksymtab_wm8903_mic_detect], section "llvm.metadata"

@__mod_of__wm8903_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @wm8903_of_match
@__mod_i2c__wm8903_i2c_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @wm8903_i2c_id

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wm8903_mic_detect(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8903_priv, ptr %8, i32 0, i32 12
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.wm8903_priv, ptr %8, i32 0, i32 13
  store i32 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.wm8903_priv, ptr %8, i32 0, i32 14
  store i32 %3, ptr %11, align 4
  %12 = icmp eq i32 %2, 0
  %13 = select i1 %12, i32 49152, i32 32768
  %14 = icmp eq i32 %3, 0
  %15 = and i32 %13, 16384
  %16 = select i1 %14, i32 %13, i32 %15
  %17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 122, i32 noundef 49152, i32 noundef %16) #9
  %18 = or i32 %3, %2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 108, i32 noundef 256, i32 noundef 256) #9
  br label %22

22:                                               ; preds = %20, %4
  %23 = phi i32 [ 2, %20 ], [ 0, %4 ]
  %24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef %23) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @wm8903_i2c_driver) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @wm8903_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8903_i2c_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 444, i32 noundef 3520) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %288, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wm8903_priv, ptr %8, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @wm8903_i2c_probe.__key) #9
  %12 = getelementptr inbounds %struct.wm8903_priv, ptr %8, i32 0, i32 1
  store ptr %5, ptr %12, align 4
  %13 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @wm8903_regmap, ptr noundef null, ptr noundef null) #9
  %14 = getelementptr inbounds %struct.wm8903_priv, ptr %8, i32 0, i32 2
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = ptrtoint ptr %13 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef %17) #10
  br label %288

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %8, ptr %19, align 8
  %20 = icmp eq ptr %7, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store ptr %7, ptr %8, align 4
  br label %109

22:                                               ; preds = %18
  %23 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 32, i32 noundef 3520) #9
  store ptr %23, ptr %8, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %288, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @irq_get_irq_data(i32 noundef %27) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.irq_data, ptr %30, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 15
  %37 = icmp eq i32 %36, 8
  %38 = zext i1 %37 to i8
  store i8 %38, ptr %23, align 4
  br label %41

39:                                               ; preds = %29
  %40 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef %40) #10
  br label %288

41:                                               ; preds = %32, %25
  %42 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %109, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %47 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %43, ptr noundef nonnull @.str.12, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #9
  %48 = call i32 @llvm.smin.i32(i32 %47, i32 0) #9
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, ptr %3, align 4
  %52 = trunc i32 %51 to i16
  %53 = getelementptr inbounds %struct.wm8903_platform_data, ptr %46, i32 0, i32 1
  store i16 %52, ptr %53, align 2
  br label %54

54:                                               ; preds = %50, %45
  %55 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %43, ptr noundef nonnull @.str.13, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #9
  %56 = call i32 @llvm.smin.i32(i32 %55, i32 0) #9
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, ptr %3, align 4
  %60 = getelementptr inbounds %struct.wm8903_platform_data, ptr %46, i32 0, i32 2
  store i32 %59, ptr %60, align 4
  br label %61

61:                                               ; preds = %58, %54
  %62 = getelementptr %struct.wm8903_platform_data, ptr %46, i32 0, i32 4
  %63 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %43, ptr noundef nonnull @.str.14, ptr noundef %62, i32 noundef 5, i32 noundef 0) #9
  %64 = call i32 @llvm.smin.i32(i32 %63, i32 0) #9
  %65 = icmp sgt i32 %64, -1
  br i1 %65, label %66, label %105

66:                                               ; preds = %61
  %67 = load i32, ptr %62, align 4
  switch i32 %67, label %69 [
    i32 0, label %71
    i32 -1, label %68
  ]

68:                                               ; preds = %66
  br label %71

69:                                               ; preds = %66
  %70 = icmp ugt i32 %67, 32767
  br i1 %70, label %106, label %73

71:                                               ; preds = %68, %66
  %72 = phi i32 [ 0, %68 ], [ 32768, %66 ]
  store i32 %72, ptr %62, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = getelementptr %struct.wm8903_platform_data, ptr %46, i32 0, i32 4, i32 1
  %75 = load i32, ptr %74, align 4
  switch i32 %75, label %77 [
    i32 0, label %76
    i32 -1, label %79
  ]

76:                                               ; preds = %73
  br label %79

77:                                               ; preds = %73
  %78 = icmp ugt i32 %75, 32767
  br i1 %78, label %106, label %81

79:                                               ; preds = %76, %73
  %80 = phi i32 [ 32768, %76 ], [ 0, %73 ]
  store i32 %80, ptr %74, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = getelementptr %struct.wm8903_platform_data, ptr %46, i32 0, i32 4, i32 2
  %83 = load i32, ptr %82, align 4
  switch i32 %83, label %85 [
    i32 0, label %84
    i32 -1, label %87
  ]

84:                                               ; preds = %81
  br label %87

85:                                               ; preds = %81
  %86 = icmp ugt i32 %83, 32767
  br i1 %86, label %106, label %89

87:                                               ; preds = %84, %81
  %88 = phi i32 [ 32768, %84 ], [ 0, %81 ]
  store i32 %88, ptr %82, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = getelementptr %struct.wm8903_platform_data, ptr %46, i32 0, i32 4, i32 3
  %91 = load i32, ptr %90, align 4
  switch i32 %91, label %93 [
    i32 0, label %92
    i32 -1, label %95
  ]

92:                                               ; preds = %89
  br label %95

93:                                               ; preds = %89
  %94 = icmp ugt i32 %91, 32767
  br i1 %94, label %106, label %97

95:                                               ; preds = %92, %89
  %96 = phi i32 [ 32768, %92 ], [ 0, %89 ]
  store i32 %96, ptr %90, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = getelementptr %struct.wm8903_platform_data, ptr %46, i32 0, i32 4, i32 4
  %99 = load i32, ptr %98, align 4
  switch i32 %99, label %101 [
    i32 0, label %100
    i32 -1, label %103
  ]

100:                                              ; preds = %97
  br label %103

101:                                              ; preds = %97
  %102 = icmp ugt i32 %99, 32767
  br i1 %102, label %106, label %105

103:                                              ; preds = %100, %97
  %104 = phi i32 [ 32768, %100 ], [ 0, %97 ]
  store i32 %104, ptr %98, align 4
  br label %105

105:                                              ; preds = %103, %101, %61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %109

106:                                              ; preds = %101, %93, %85, %77, %69
  %107 = phi i32 [ 0, %69 ], [ 1, %77 ], [ 2, %85 ], [ 3, %93 ], [ 4, %101 ]
  %108 = phi i32 [ %67, %69 ], [ %75, %77 ], [ %83, %85 ], [ %91, %93 ], [ %99, %101 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.15, i32 noundef %107, i32 noundef %108) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %288

109:                                              ; preds = %105, %41, %21
  %110 = load ptr, ptr %8, align 4
  %111 = getelementptr %struct.wm8903_priv, ptr %8, i32 0, i32 3, i32 0
  store ptr @.str.16, ptr %111, align 4
  %112 = getelementptr %struct.wm8903_priv, ptr %8, i32 0, i32 3, i32 1
  store ptr @.str.17, ptr %112, align 4
  %113 = getelementptr %struct.wm8903_priv, ptr %8, i32 0, i32 3, i32 2
  store ptr @.str.18, ptr %113, align 4
  %114 = getelementptr %struct.wm8903_priv, ptr %8, i32 0, i32 3, i32 3
  store ptr @.str.19, ptr %114, align 4
  %115 = call i32 @devm_regulator_bulk_get(ptr noundef %5, i32 noundef 4, ptr noundef %111) #9
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %109
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %115) #10
  br label %288

118:                                              ; preds = %109
  %119 = call i32 @regulator_bulk_enable(i32 noundef 4, ptr noundef %111) #9
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4, i32 noundef %119) #10
  br label %288

122:                                              ; preds = %118
  %123 = load ptr, ptr %14, align 4
  %124 = call i32 @regmap_read(ptr noundef %123, i32 noundef 0, ptr noundef nonnull %4) #9
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %124) #10
  br label %285

127:                                              ; preds = %122
  %128 = load i32, ptr %4, align 4
  %129 = icmp eq i32 %128, 35075
  br i1 %129, label %131, label %130

130:                                              ; preds = %127
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %128) #10
  br label %285

131:                                              ; preds = %127
  %132 = load ptr, ptr %14, align 4
  %133 = call i32 @regmap_read(ptr noundef %132, i32 noundef 1, ptr noundef nonnull %4) #9
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef %133) #10
  br label %285

136:                                              ; preds = %131
  %137 = load i32, ptr %4, align 4
  %138 = and i32 %137, 15
  %139 = add nuw nsw i32 %138, 65
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %139) #10
  %140 = load ptr, ptr %14, align 4
  %141 = call i32 @regmap_write(ptr noundef %140, i32 noundef 0, i32 noundef 35075) #9
  call fastcc void @wm8903_init_gpio(ptr noundef nonnull %8)
  %142 = getelementptr %struct.wm8903_platform_data, ptr %110, i32 0, i32 4, i32 0
  %143 = load i32, ptr %142, align 4
  %144 = add i32 %143, -32769
  %145 = icmp ult i32 %144, -32768
  br i1 %145, label %155, label %146

146:                                              ; preds = %136
  %147 = load ptr, ptr %14, align 4
  %148 = and i32 %143, 32767
  %149 = call i32 @regmap_write(ptr noundef %147, i32 noundef 116, i32 noundef %148) #9
  %150 = load i32, ptr %142, align 4
  %151 = lshr i32 %150, 8
  %152 = and i32 %151, 31
  store i32 %152, ptr %4, align 4
  %153 = and i32 %150, 7680
  %154 = icmp eq i32 %153, 1024
  br label %155

155:                                              ; preds = %146, %136
  %156 = phi i1 [ false, %136 ], [ %154, %146 ]
  %157 = getelementptr %struct.wm8903_platform_data, ptr %110, i32 0, i32 4, i32 1
  %158 = load i32, ptr %157, align 4
  %159 = add i32 %158, -32769
  %160 = icmp ult i32 %159, -32768
  br i1 %160, label %171, label %161

161:                                              ; preds = %155
  %162 = load ptr, ptr %14, align 4
  %163 = and i32 %158, 32767
  %164 = call i32 @regmap_write(ptr noundef %162, i32 noundef 117, i32 noundef %163) #9
  %165 = load i32, ptr %157, align 4
  %166 = lshr i32 %165, 8
  %167 = and i32 %166, 31
  store i32 %167, ptr %4, align 4
  %168 = and i32 %165, 7680
  %169 = icmp eq i32 %168, 1024
  %170 = select i1 %169, i1 true, i1 %156
  br label %171

171:                                              ; preds = %161, %155
  %172 = phi i1 [ %156, %155 ], [ %170, %161 ]
  %173 = getelementptr %struct.wm8903_platform_data, ptr %110, i32 0, i32 4, i32 2
  %174 = load i32, ptr %173, align 4
  %175 = add i32 %174, -32769
  %176 = icmp ult i32 %175, -32768
  br i1 %176, label %187, label %177

177:                                              ; preds = %171
  %178 = load ptr, ptr %14, align 4
  %179 = and i32 %174, 32767
  %180 = call i32 @regmap_write(ptr noundef %178, i32 noundef 118, i32 noundef %179) #9
  %181 = load i32, ptr %173, align 4
  %182 = lshr i32 %181, 8
  %183 = and i32 %182, 31
  store i32 %183, ptr %4, align 4
  %184 = and i32 %181, 7680
  %185 = icmp eq i32 %184, 1024
  %186 = select i1 %185, i1 true, i1 %172
  br label %187

187:                                              ; preds = %177, %171
  %188 = phi i1 [ %172, %171 ], [ %186, %177 ]
  %189 = getelementptr %struct.wm8903_platform_data, ptr %110, i32 0, i32 4, i32 3
  %190 = load i32, ptr %189, align 4
  %191 = add i32 %190, -32769
  %192 = icmp ult i32 %191, -32768
  br i1 %192, label %203, label %193

193:                                              ; preds = %187
  %194 = load ptr, ptr %14, align 4
  %195 = and i32 %190, 32767
  %196 = call i32 @regmap_write(ptr noundef %194, i32 noundef 119, i32 noundef %195) #9
  %197 = load i32, ptr %189, align 4
  %198 = lshr i32 %197, 8
  %199 = and i32 %198, 31
  store i32 %199, ptr %4, align 4
  %200 = and i32 %197, 7680
  %201 = icmp eq i32 %200, 1024
  %202 = select i1 %201, i1 true, i1 %188
  br label %203

203:                                              ; preds = %193, %187
  %204 = phi i1 [ %188, %187 ], [ %202, %193 ]
  %205 = getelementptr %struct.wm8903_platform_data, ptr %110, i32 0, i32 4, i32 4
  %206 = load i32, ptr %205, align 4
  %207 = add i32 %206, -32769
  %208 = icmp ult i32 %207, -32768
  br i1 %208, label %219, label %209

209:                                              ; preds = %203
  %210 = load ptr, ptr %14, align 4
  %211 = and i32 %206, 32767
  %212 = call i32 @regmap_write(ptr noundef %210, i32 noundef 120, i32 noundef %211) #9
  %213 = load i32, ptr %205, align 4
  %214 = lshr i32 %213, 8
  %215 = and i32 %214, 31
  store i32 %215, ptr %4, align 4
  %216 = and i32 %213, 7680
  %217 = icmp eq i32 %216, 1024
  %218 = select i1 %217, i1 true, i1 %204
  br label %219

219:                                              ; preds = %209, %203
  %220 = phi i1 [ %204, %203 ], [ %218, %209 ]
  %221 = load ptr, ptr %14, align 4
  %222 = getelementptr inbounds %struct.wm8903_platform_data, ptr %110, i32 0, i32 1
  %223 = load i16, ptr %222, align 2
  %224 = zext i16 %223 to i32
  %225 = call i32 @regmap_write(ptr noundef %221, i32 noundef 6, i32 noundef %224) #9
  %226 = load i16, ptr %222, align 2
  %227 = icmp eq i16 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %219
  %229 = load ptr, ptr %14, align 4
  %230 = call i32 @regmap_update_bits_base(ptr noundef %229, i32 noundef 108, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %231

231:                                              ; preds = %228, %219
  br i1 %220, label %237, label %232

232:                                              ; preds = %231
  %233 = load i16, ptr %222, align 2
  %234 = and i16 %233, 2
  %235 = icmp eq i16 %234, 0
  br i1 %235, label %237, label %236, !prof !9

236:                                              ; preds = %232
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2113, i32 noundef 9, ptr noundef null) #9
  br label %237

237:                                              ; preds = %236, %232, %231
  %238 = getelementptr inbounds %struct.wm8903_platform_data, ptr %110, i32 0, i32 2
  %239 = load i32, ptr %238, align 4
  %240 = getelementptr inbounds %struct.wm8903_priv, ptr %8, i32 0, i32 16
  store i32 %239, ptr %240, align 4
  %241 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %242 = load i32, ptr %241, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %260, label %244

244:                                              ; preds = %237
  %245 = load i8, ptr %110, align 4, !range !10
  %246 = icmp eq i8 %245, 0
  %247 = select i1 %246, i32 8196, i32 8200
  %248 = xor i1 %246, true
  %249 = zext i1 %248 to i32
  %250 = load ptr, ptr %14, align 4
  %251 = call i32 @regmap_update_bits_base(ptr noundef %250, i32 noundef 126, i32 noundef 1, i32 noundef %249, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %252 = load i32, ptr %241, align 4
  %253 = call i32 @request_threaded_irq(i32 noundef %252, ptr noundef null, ptr noundef nonnull @wm8903_irq, i32 noundef %247, ptr noundef nonnull @.str, ptr noundef nonnull %8) #9
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %257, label %255

255:                                              ; preds = %244
  %256 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %256, ptr noundef nonnull @.str.10, i32 noundef %253) #10
  br label %288

257:                                              ; preds = %244
  %258 = load ptr, ptr %14, align 4
  %259 = call i32 @regmap_update_bits_base(ptr noundef %258, i32 noundef 122, i32 noundef 8192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %260

260:                                              ; preds = %257, %237
  %261 = load ptr, ptr %14, align 4
  %262 = call i32 @regmap_update_bits_base(ptr noundef %261, i32 noundef 36, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %263 = load ptr, ptr %14, align 4
  %264 = call i32 @regmap_update_bits_base(ptr noundef %263, i32 noundef 37, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %265 = load ptr, ptr %14, align 4
  %266 = call i32 @regmap_update_bits_base(ptr noundef %265, i32 noundef 30, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %267 = load ptr, ptr %14, align 4
  %268 = call i32 @regmap_update_bits_base(ptr noundef %267, i32 noundef 31, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %269 = load ptr, ptr %14, align 4
  %270 = call i32 @regmap_update_bits_base(ptr noundef %269, i32 noundef 57, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %271 = load ptr, ptr %14, align 4
  %272 = call i32 @regmap_update_bits_base(ptr noundef %271, i32 noundef 58, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %273 = load ptr, ptr %14, align 4
  %274 = call i32 @regmap_update_bits_base(ptr noundef %273, i32 noundef 59, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %275 = load ptr, ptr %14, align 4
  %276 = call i32 @regmap_update_bits_base(ptr noundef %275, i32 noundef 60, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %277 = load ptr, ptr %14, align 4
  %278 = call i32 @regmap_update_bits_base(ptr noundef %277, i32 noundef 62, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %279 = load ptr, ptr %14, align 4
  %280 = call i32 @regmap_update_bits_base(ptr noundef %279, i32 noundef 63, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %281 = load ptr, ptr %14, align 4
  %282 = call i32 @regmap_update_bits_base(ptr noundef %281, i32 noundef 33, i32 noundef 520, i32 noundef 520, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %283 = call i32 @devm_snd_soc_register_component(ptr noundef %5, ptr noundef nonnull @soc_component_dev_wm8903, ptr noundef nonnull @wm8903_dai, i32 noundef 1) #9
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %288, label %285

285:                                              ; preds = %260, %135, %130, %126
  %286 = phi i32 [ %124, %126 ], [ -19, %130 ], [ %133, %135 ], [ %283, %260 ]
  %287 = call i32 @regulator_bulk_disable(i32 noundef 4, ptr noundef %111) #9
  br label %288

288:                                              ; preds = %285, %260, %255, %121, %117, %106, %39, %22, %16, %2
  %289 = phi i32 [ %17, %16 ], [ %115, %117 ], [ %119, %121 ], [ %286, %285 ], [ %253, %255 ], [ -12, %2 ], [ -12, %22 ], [ -22, %39 ], [ -22, %106 ], [ 0, %260 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %289
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8903_i2c_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.wm8903_priv, ptr %3, i32 0, i32 3
  %5 = tail call i32 @regulator_bulk_disable(i32 noundef 4, ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %3) #9
  br label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %struct.wm8903_priv, ptr %3, i32 0, i32 17
  tail call void @gpiochip_remove(ptr noundef %12) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wm8903_init_gpio(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.wm8903_priv, ptr %0, i32 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(304) %3, ptr noundef nonnull align 4 dereferenceable(304) @wm8903_template_chip, i32 304, i1 false)
  %4 = getelementptr inbounds %struct.wm8903_priv, ptr %0, i32 0, i32 17, i32 20
  store i16 5, ptr %4, align 4
  %5 = getelementptr inbounds %struct.wm8903_priv, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.wm8903_priv, ptr %0, i32 0, i32 17, i32 2
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wm8903_platform_data, ptr %2, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 -1, i32 %9
  %12 = getelementptr inbounds %struct.wm8903_priv, ptr %0, i32 0, i32 17, i32 19
  store i32 %11, ptr %12, align 4
  %13 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %3, ptr noundef %0, ptr noundef null, ptr noundef null) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.20, i32 noundef %13) #10
  br label %17

17:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8903_irq(i32 noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.wm8903_priv, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 122, ptr noundef nonnull %4) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wm8903_priv, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.21, i32 noundef %8) #10
  br label %73

13:                                               ; preds = %2
  %14 = load ptr, ptr %6, align 4
  %15 = call i32 @regmap_read(ptr noundef %14, i32 noundef 121, ptr noundef nonnull %3) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.wm8903_priv, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.22, i32 noundef %15) #10
  br label %73

20:                                               ; preds = %13
  %21 = load i32, ptr %4, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, ptr %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, ptr %3, align 4
  %25 = and i32 %24, 8192
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.wm8903_priv, ptr %1, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.23) #10
  br label %30

30:                                               ; preds = %27, %20
  %31 = getelementptr inbounds %struct.wm8903_priv, ptr %1, i32 0, i32 15
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %6, align 4
  %34 = call i32 @regmap_read(ptr noundef %33, i32 noundef 123, ptr noundef nonnull %5) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.wm8903_priv, ptr %1, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.24, i32 noundef %34) #10
  br label %73

39:                                               ; preds = %30
  %40 = load i32, ptr %3, align 4
  %41 = and i32 %40, 32768
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.wm8903_priv, ptr %1, i32 0, i32 14
  %45 = load i32, ptr %44, align 4
  %46 = xor i32 %45, %32
  %47 = load i32, ptr %5, align 4
  %48 = xor i32 %47, 32768
  store i32 %48, ptr %5, align 4
  br label %49

49:                                               ; preds = %43, %39
  %50 = phi i32 [ %46, %43 ], [ %32, %39 ]
  %51 = and i32 %40, 16384
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.wm8903_priv, ptr %1, i32 0, i32 13
  %55 = load i32, ptr %54, align 4
  %56 = xor i32 %55, %50
  %57 = load i32, ptr %5, align 4
  %58 = xor i32 %57, 16384
  store i32 %58, ptr %5, align 4
  %59 = getelementptr inbounds %struct.wm8903_priv, ptr %1, i32 0, i32 16
  %60 = load i32, ptr %59, align 4
  call void @msleep(i32 noundef %60) #9
  br label %61

61:                                               ; preds = %53, %49
  %62 = phi i32 [ %56, %53 ], [ %50, %49 ]
  %63 = load ptr, ptr %6, align 4
  %64 = load i32, ptr %5, align 4
  %65 = call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 123, i32 noundef 49152, i32 noundef %64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %66 = getelementptr inbounds %struct.wm8903_priv, ptr %1, i32 0, i32 12
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.wm8903_priv, ptr %1, i32 0, i32 14
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.wm8903_priv, ptr %1, i32 0, i32 13
  %71 = load i32, ptr %70, align 4
  %72 = or i32 %71, %69
  call void @snd_soc_jack_report(ptr noundef %67, i32 noundef %62, i32 noundef %72) #9
  store i32 %62, ptr %31, align 4
  br label %73

73:                                               ; preds = %61, %36, %17, %10
  %74 = phi i32 [ 0, %10 ], [ 0, %17 ], [ 1, %36 ], [ 1, %61 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8903_readable_register(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  switch i32 %1, label %3 [
    i32 0, label %4
    i32 1, label %4
    i32 4, label %4
    i32 5, label %4
    i32 6, label %4
    i32 8, label %4
    i32 10, label %4
    i32 12, label %4
    i32 13, label %4
    i32 14, label %4
    i32 15, label %4
    i32 16, label %4
    i32 17, label %4
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
    i32 50, label %4
    i32 51, label %4
    i32 52, label %4
    i32 53, label %4
    i32 54, label %4
    i32 55, label %4
    i32 57, label %4
    i32 58, label %4
    i32 59, label %4
    i32 60, label %4
    i32 62, label %4
    i32 63, label %4
    i32 65, label %4
    i32 67, label %4
    i32 69, label %4
    i32 81, label %4
    i32 82, label %4
    i32 83, label %4
    i32 84, label %4
    i32 90, label %4
    i32 94, label %4
    i32 98, label %4
    i32 104, label %4
    i32 108, label %4
    i32 109, label %4
    i32 110, label %4
    i32 111, label %4
    i32 112, label %4
    i32 114, label %4
    i32 116, label %4
    i32 117, label %4
    i32 118, label %4
    i32 119, label %4
    i32 120, label %4
    i32 121, label %4
    i32 122, label %4
    i32 123, label %4
    i32 126, label %4
    i32 164, label %4
    i32 172, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8903_volatile_register(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  switch i32 %1, label %3 [
    i32 0, label %4
    i32 1, label %4
    i32 121, label %4
    i32 112, label %4
    i32 81, label %4
    i32 82, label %4
    i32 83, label %4
    i32 84, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @wm8903_gpio_request(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = icmp ugt i32 %1, 4
  %4 = select i1 %3, i32 -22, i32 0
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8903_gpio_direction_in(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.wm8903_priv, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = add i32 %1, 116
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %6, i32 noundef 8064, i32 noundef 896, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 0)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8903_gpio_direction_out(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %5 = shl i32 %2, 4
  %6 = getelementptr inbounds %struct.wm8903_priv, ptr %4, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = add i32 %1, 116
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %8, i32 noundef 8080, i32 noundef %5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 0)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8903_gpio_get(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.wm8903_priv, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = add i32 %1, 116
  %8 = call i32 @regmap_read(ptr noundef %6, i32 noundef %7, ptr noundef nonnull %3) #9
  %9 = load i32, ptr %3, align 4
  %10 = lshr i32 %9, 4
  %11 = and i32 %10, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm8903_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.wm8903_priv, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = add i32 %1, 116
  %8 = icmp eq i32 %2, 0
  %9 = select i1 %8, i32 0, i32 16
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %7, i32 noundef 16, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8903_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wm8903_priv, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regcache_sync(ptr noundef %7) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm8903_seq_notifier(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.wm8903_priv, ptr %7, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %106, label %11

11:                                               ; preds = %3
  %12 = and i32 %9, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = getelementptr %struct.wm8903_priv, ptr %7, i32 0, i32 10, i32 0
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = and i32 %16, 255
  %20 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 71, i32 noundef %19) #9
  %21 = load i32, ptr %8, align 4
  br label %22

22:                                               ; preds = %18, %14, %11
  %23 = phi i32 [ %21, %18 ], [ %9, %11 ], [ %9, %14 ]
  %24 = phi i32 [ 0, %18 ], [ 0, %11 ], [ 2, %14 ]
  %25 = and i32 %23, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = getelementptr %struct.wm8903_priv, ptr %7, i32 0, i32 10, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = and i32 %29, 255
  %33 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 72, i32 noundef %32) #9
  %34 = load i32, ptr %8, align 4
  br label %35

35:                                               ; preds = %31, %27, %22
  %36 = phi i32 [ %34, %31 ], [ %23, %22 ], [ %23, %27 ]
  %37 = phi i32 [ %24, %31 ], [ %24, %22 ], [ 2, %27 ]
  %38 = and i32 %36, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = getelementptr %struct.wm8903_priv, ptr %7, i32 0, i32 10, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = and i32 %42, 255
  %46 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 73, i32 noundef %45) #9
  %47 = load i32, ptr %8, align 4
  br label %48

48:                                               ; preds = %44, %40, %35
  %49 = phi i32 [ %47, %44 ], [ %36, %35 ], [ %36, %40 ]
  %50 = phi i32 [ %37, %44 ], [ %37, %35 ], [ 2, %40 ]
  %51 = and i32 %49, 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = getelementptr %struct.wm8903_priv, ptr %7, i32 0, i32 10, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = and i32 %55, 255
  %59 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 74, i32 noundef %58) #9
  br label %60

60:                                               ; preds = %57, %53, %48
  %61 = phi i32 [ %50, %57 ], [ %50, %48 ], [ 2, %53 ]
  %62 = getelementptr inbounds %struct.wm8903_priv, ptr %7, i32 0, i32 11
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i32 %61, i32 2
  %66 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 69, i32 noundef 3, i32 noundef %65) #9
  %67 = load i32, ptr %8, align 4
  %68 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 67, i32 noundef 15, i32 noundef %67) #9
  switch i32 %65, label %103 [
    i32 0, label %105
    i32 2, label %69
  ]

69:                                               ; preds = %60
  tail call void @msleep(i32 noundef 270) #9
  %70 = load i32, ptr %62, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %105

72:                                               ; preds = %69
  %73 = load i32, ptr %8, align 4
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 81) #9
  %78 = getelementptr %struct.wm8903_priv, ptr %7, i32 0, i32 10, i32 0
  store i32 %77, ptr %78, align 4
  %79 = load i32, ptr %8, align 4
  br label %80

80:                                               ; preds = %76, %72
  %81 = phi i32 [ %73, %72 ], [ %79, %76 ]
  %82 = and i32 %81, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 82) #9
  %86 = getelementptr %struct.wm8903_priv, ptr %7, i32 0, i32 10, i32 1
  store i32 %85, ptr %86, align 4
  %87 = load i32, ptr %8, align 4
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i32 [ %87, %84 ], [ %81, %80 ]
  %90 = and i32 %89, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 83) #9
  %94 = getelementptr %struct.wm8903_priv, ptr %7, i32 0, i32 10, i32 2
  store i32 %93, ptr %94, align 4
  %95 = load i32, ptr %8, align 4
  br label %96

96:                                               ; preds = %92, %88
  %97 = phi i32 [ %95, %92 ], [ %89, %88 ]
  %98 = and i32 %97, 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 84) #9
  %102 = getelementptr %struct.wm8903_priv, ptr %7, i32 0, i32 10, i32 3
  store i32 %101, ptr %102, align 4
  br label %105

103:                                              ; preds = %60
  %104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.263, i32 noundef %65) #10
  br label %105

105:                                              ; preds = %103, %100, %96, %69, %60
  store i32 0, ptr %8, align 4
  br label %106

106:                                              ; preds = %105, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8903_set_bias_level(ptr noundef %0, i32 noundef %1) #0 {
  switch i32 %1, label %28 [
    i32 0, label %22
    i32 2, label %3
    i32 1, label %5
  ]

3:                                                ; preds = %2
  %4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 5, i32 noundef 6, i32 noundef 2) #9
  br label %28

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 4, i32 noundef 31, i32 noundef 26) #9
  %11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 65, i32 noundef 2, i32 noundef 2) #9
  tail call void @msleep(i32 noundef 33) #9
  %12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 17, i32 noundef 3, i32 noundef 3) #9
  %13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 65, i32 noundef 2, i32 noundef 0) #9
  %14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 5, i32 noundef 255, i32 noundef 245) #9
  tail call void @msleep(i32 noundef 129) #9
  %15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 17, i32 noundef 3, i32 noundef 0) #9
  %16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 5, i32 noundef 24, i32 noundef 0) #9
  %17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 5, i32 noundef 6, i32 noundef 2) #9
  %18 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 4, i32 noundef 17, i32 noundef 1) #9
  %19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 104, i32 noundef 3, i32 noundef 3) #9
  br label %20

20:                                               ; preds = %9, %5
  %21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 5, i32 noundef 6, i32 noundef 4) #9
  br label %28

22:                                               ; preds = %2
  %23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) #9
  %24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 5, i32 noundef 24, i32 noundef 16) #9
  %25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0) #9
  tail call void @msleep(i32 noundef 290) #9
  %26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 5, i32 noundef 255, i32 noundef 0) #9
  %27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) #9
  br label %28

28:                                               ; preds = %22, %20, %3, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @wm8903_get_deemph(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8903_priv, ptr %8, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %10, ptr %11, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8903_put_deemph(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %47, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.wm8903_priv, ptr %12, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %13) #9
  %14 = getelementptr inbounds %struct.wm8903_priv, ptr %12, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %7
  br i1 %16, label %45, label %17

17:                                               ; preds = %9
  store i32 %7, ptr %14, align 4
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 8
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.wm8903_priv, ptr %20, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.wm8903_priv, ptr %20, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = sub i32 44100, %26
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 false) #9
  %29 = sub i32 32000, %26
  %30 = tail call i32 @llvm.abs.i32(i32 %29, i1 false) #9
  %31 = icmp slt i32 %28, %30
  %32 = select i1 %31, i32 2, i32 1
  %33 = sub i32 48000, %26
  %34 = tail call i32 @llvm.abs.i32(i32 %33, i1 false) #9
  %35 = getelementptr [4 x i32], ptr @wm8903_deemph, i32 0, i32 %32
  %36 = load i32, ptr %35, align 4
  %37 = sub i32 %36, %26
  %38 = tail call i32 @llvm.abs.i32(i32 %37, i1 false) #9
  %39 = icmp slt i32 %34, %38
  %40 = shl nuw nsw i32 %32, 1
  %41 = select i1 %39, i32 6, i32 %40
  br label %42

42:                                               ; preds = %24, %17
  %43 = phi i32 [ %41, %24 ], [ 0, %17 ]
  %44 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 33, i32 noundef 6, i32 noundef %43) #9
  br label %45

45:                                               ; preds = %42, %9
  %46 = phi i32 [ 1, %42 ], [ 0, %9 ]
  tail call void @mutex_unlock(ptr noundef %13) #9
  br label %47

47:                                               ; preds = %45, %2
  %48 = phi i32 [ %46, %45 ], [ -22, %2 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8903_dcs_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  switch i32 %2, label %25 [
    i32 2, label %6
    i32 4, label %18
  ]

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %5, i32 -92
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 9
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = shl nuw i32 1, %13
  %15 = getelementptr inbounds %struct.wm8903_priv, ptr %10, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %14, %16
  store i32 %17, ptr %15, align 4
  br label %25

18:                                               ; preds = %3
  %19 = getelementptr i8, ptr %5, i32 -104
  %20 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 9
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i32
  %23 = shl nuw i32 1, %22
  %24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %19, i32 noundef 67, i32 noundef %23, i32 noundef 0) #9
  br label %25

25:                                               ; preds = %18, %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8903_cp_event(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 261, i32 noundef 9, ptr noundef null) #9
  br label %6

6:                                                ; preds = %5, %3
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #9
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #9
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #9
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8903_class_w_put(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %0) #9
  %4 = getelementptr i8, ptr %3, i32 -104
  %5 = getelementptr i8, ptr %3, i32 -92
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 104) #9
  %10 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.wm8903_priv, ptr %8, i32 0, i32 11
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = and i32 %9, 65532
  %19 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 104, i32 noundef %18) #9
  %20 = load i32, ptr %14, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i32 [ %20, %17 ], [ %15, %13 ]
  %23 = add i32 %22, 1
  store i32 %23, ptr %14, align 4
  br label %24

24:                                               ; preds = %21, %2
  %25 = tail call i32 @snd_soc_dapm_put_volsw(ptr noundef %0, ptr noundef %1) #9
  %26 = load i32, ptr %10, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.wm8903_priv, ptr %8, i32 0, i32 11
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = and i32 %9, 65532
  %34 = or i32 %33, 3
  %35 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 104, i32 noundef %34) #9
  %36 = load i32, ptr %29, align 4
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi i32 [ %36, %32 ], [ %30, %28 ]
  %39 = add i32 %38, -1
  store i32 %39, ptr %29, align 4
  br label %40

40:                                               ; preds = %37, %24
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @wm8903_set_dai_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7 {
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.wm8903_priv, ptr %10, i32 0, i32 4
  store i32 %2, ptr %11, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8903_set_dai_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 25) #9
  %6 = trunc i32 %5 to i16
  %7 = and i16 %6, -724
  %8 = and i32 %1, 61440
  %9 = add nsw i32 %8, -4096
  %10 = lshr exact i32 %9, 12
  switch i32 %10, label %45 [
    i32 3, label %17
    i32 1, label %11
    i32 0, label %13
    i32 2, label %15
  ]

11:                                               ; preds = %2
  %12 = or i16 %7, 512
  br label %17

13:                                               ; preds = %2
  %14 = or i16 %7, 576
  br label %17

15:                                               ; preds = %2
  %16 = or i16 %7, 64
  br label %17

17:                                               ; preds = %15, %13, %11, %2
  %18 = phi i16 [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ %7, %2 ]
  %19 = and i32 %1, 15
  switch i32 %19, label %45 [
    i32 4, label %25
    i32 5, label %20
    i32 1, label %21
    i32 2, label %23
    i32 3, label %31
  ]

20:                                               ; preds = %17
  br label %25

21:                                               ; preds = %17
  %22 = or i16 %18, 2
  br label %31

23:                                               ; preds = %17
  %24 = or i16 %18, 1
  br label %31

25:                                               ; preds = %20, %17
  %26 = phi i16 [ 19, %20 ], [ 3, %17 ]
  %27 = or i16 %18, %26
  %28 = and i32 %1, 3840
  switch i32 %28, label %45 [
    i32 0, label %41
    i32 768, label %29
  ]

29:                                               ; preds = %25
  %30 = or i16 %27, 128
  br label %41

31:                                               ; preds = %23, %21, %17
  %32 = phi i16 [ %22, %21 ], [ %24, %23 ], [ %18, %17 ]
  %33 = lshr i32 %1, 8
  %34 = and i32 %33, 15
  switch i32 %34, label %45 [
    i32 0, label %41
    i32 4, label %35
    i32 3, label %37
    i32 2, label %39
  ]

35:                                               ; preds = %31
  %36 = or i16 %32, 144
  br label %41

37:                                               ; preds = %31
  %38 = or i16 %32, 128
  br label %41

39:                                               ; preds = %31
  %40 = or i16 %32, 16
  br label %41

41:                                               ; preds = %39, %37, %35, %31, %29, %25
  %42 = phi i16 [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %32, %31 ], [ %30, %29 ], [ %27, %25 ]
  %43 = zext i16 %42 to i32
  %44 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 25, i32 noundef %43) #9
  br label %45

45:                                               ; preds = %41, %31, %25, %17, %2
  %46 = phi i32 [ 0, %41 ], [ -22, %2 ], [ -22, %17 ], [ -22, %25 ], [ -22, %31 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8903_mute(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 33) #9
  %7 = icmp eq i32 %1, 0
  %8 = and i32 %6, 65527
  %9 = or i32 %8, 8
  %10 = select i1 %7, i32 %8, i32 %9
  %11 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 33, i32 noundef %10) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8903_hw_params(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 25) #9
  %13 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 26) #9
  %14 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 27) #9
  %15 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 20) #9
  %16 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 21) #9
  %17 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 33) #9
  %18 = and i32 %17, 63487
  %19 = or i32 %18, 2048
  %20 = sub i32 8000, %11
  %21 = tail call i32 @llvm.abs.i32(i32 %20, i1 false)
  %22 = sub i32 11025, %11
  %23 = tail call i32 @llvm.abs.i32(i32 %22, i1 false)
  %24 = icmp sle i32 %23, %21
  %25 = tail call i32 @llvm.smin.i32(i32 %23, i32 %21)
  %26 = zext i1 %24 to i32
  %27 = sub i32 12000, %11
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 false)
  %29 = icmp sgt i32 %28, %25
  %30 = tail call i32 @llvm.smin.i32(i32 %28, i32 %25)
  %31 = select i1 %29, i32 %26, i32 2
  %32 = sub i32 16000, %11
  %33 = tail call i32 @llvm.abs.i32(i32 %32, i1 false)
  %34 = icmp sgt i32 %33, %30
  %35 = tail call i32 @llvm.smin.i32(i32 %33, i32 %30)
  %36 = select i1 %34, i32 %31, i32 3
  %37 = sub i32 22050, %11
  %38 = tail call i32 @llvm.abs.i32(i32 %37, i1 false)
  %39 = icmp sgt i32 %38, %35
  %40 = tail call i32 @llvm.smin.i32(i32 %38, i32 %35)
  %41 = select i1 %39, i32 %36, i32 4
  %42 = sub i32 24000, %11
  %43 = tail call i32 @llvm.abs.i32(i32 %42, i1 false)
  %44 = icmp sgt i32 %43, %40
  %45 = tail call i32 @llvm.smin.i32(i32 %43, i32 %40)
  %46 = select i1 %44, i32 %41, i32 5
  %47 = sub i32 32000, %11
  %48 = tail call i32 @llvm.abs.i32(i32 %47, i1 false)
  %49 = icmp sgt i32 %48, %45
  %50 = tail call i32 @llvm.smin.i32(i32 %48, i32 %45)
  %51 = select i1 %49, i32 %46, i32 6
  %52 = sub i32 44100, %11
  %53 = tail call i32 @llvm.abs.i32(i32 %52, i1 false)
  %54 = icmp sgt i32 %53, %50
  %55 = tail call i32 @llvm.smin.i32(i32 %53, i32 %50)
  %56 = select i1 %54, i32 %51, i32 7
  %57 = sub i32 48000, %11
  %58 = tail call i32 @llvm.abs.i32(i32 %57, i1 false)
  %59 = icmp sgt i32 %58, %55
  %60 = tail call i32 @llvm.smin.i32(i32 %58, i32 %55)
  %61 = select i1 %59, i32 %56, i32 8
  %62 = sub i32 88200, %11
  %63 = tail call i32 @llvm.abs.i32(i32 %62, i1 false)
  %64 = icmp sgt i32 %63, %60
  %65 = tail call i32 @llvm.smin.i32(i32 %63, i32 %60)
  %66 = select i1 %64, i32 %61, i32 9
  %67 = sub i32 96000, %11
  %68 = tail call i32 @llvm.abs.i32(i32 %67, i1 false)
  %69 = icmp sgt i32 %68, %65
  %70 = tail call i32 @llvm.smin.i32(i32 %68, i32 %65)
  %71 = select i1 %69, i32 %66, i32 10
  %72 = tail call i32 @llvm.abs.i32(i32 %11, i1 false)
  %73 = icmp sgt i32 %72, %70
  %74 = select i1 %73, i32 %71, i32 11
  %75 = icmp slt i32 %11, 24001
  %76 = select i1 %75, i32 %19, i32 %18
  %77 = and i32 %16, 49392
  %78 = getelementptr [12 x %struct.anon.95], ptr @sample_rates, i32 0, i32 %74, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = trunc i32 %12 to i16
  %81 = and i16 %80, -13
  %82 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %90, %3
  %86 = phi i32 [ 0, %3 ], [ 32, %90 ]
  %87 = phi i32 [ %83, %3 ], [ %92, %90 ]
  %88 = tail call i32 @llvm.cttz.i32(i32 %87, i1 true) #9, !range !11
  %89 = or i32 %88, %86
  br label %94

90:                                               ; preds = %3
  %91 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %85

94:                                               ; preds = %90, %85
  %95 = phi i32 [ %89, %85 ], [ 0, %90 ]
  %96 = tail call i32 @snd_pcm_format_width(i32 noundef %95) #9
  %97 = add i32 %96, -16
  %98 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 30)
  switch i32 %98, label %267 [
    i32 0, label %99
    i32 1, label %101
    i32 2, label %104
    i32 4, label %107
  ]

99:                                               ; preds = %94
  %100 = shl i32 %11, 5
  br label %110

101:                                              ; preds = %94
  %102 = mul i32 %11, 40
  %103 = or i16 %81, 4
  br label %110

104:                                              ; preds = %94
  %105 = mul i32 %11, 48
  %106 = or i16 %81, 8
  br label %110

107:                                              ; preds = %94
  %108 = shl i32 %11, 6
  %109 = or i16 %80, 12
  br label %110

110:                                              ; preds = %107, %104, %101, %99
  %111 = phi i16 [ %109, %107 ], [ %106, %104 ], [ %103, %101 ], [ %81, %99 ]
  %112 = phi i32 [ %108, %107 ], [ %105, %104 ], [ %102, %101 ], [ %100, %99 ]
  %113 = getelementptr inbounds %struct.wm8903_priv, ptr %9, i32 0, i32 4
  %114 = load i32, ptr %113, align 4
  %115 = sdiv i32 %114, 64
  %116 = sub i32 %115, %11
  %117 = tail call i32 @llvm.abs.i32(i32 %116, i1 false)
  br label %118

118:                                              ; preds = %118, %110
  %119 = phi i32 [ 1, %110 ], [ %133, %118 ]
  %120 = phi i32 [ %117, %110 ], [ %132, %118 ]
  %121 = phi i32 [ 0, %110 ], [ %131, %118 ]
  %122 = getelementptr [54 x %struct.anon.96], ptr @clk_sys_ratios, i32 0, i32 %119
  %123 = getelementptr [54 x %struct.anon.96], ptr @clk_sys_ratios, i32 0, i32 %119, i32 3
  %124 = load i32, ptr %123, align 4
  %125 = load i32, ptr %122, align 4
  %126 = mul i32 %125, %124
  %127 = sdiv i32 %114, %126
  %128 = sub i32 %127, %11
  %129 = tail call i32 @llvm.abs.i32(i32 %128, i1 false)
  %130 = icmp sgt i32 %129, %120
  %131 = select i1 %130, i32 %121, i32 %119
  %132 = tail call i32 @llvm.smin.i32(i32 %129, i32 %120)
  %133 = add nuw nsw i32 %119, 1
  %134 = icmp eq i32 %133, 54
  br i1 %134, label %135, label %118

135:                                              ; preds = %118
  %136 = getelementptr [54 x %struct.anon.96], ptr @clk_sys_ratios, i32 0, i32 %131, i32 3
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %137, 2
  %139 = and i32 %15, 65534
  %140 = sdiv i32 %114, 2
  %141 = select i1 %138, i32 %140, i32 %114
  %142 = zext i1 %138 to i32
  %143 = or i32 %139, %142
  %144 = and i32 %79, 49407
  %145 = or i32 %144, %77
  %146 = getelementptr [54 x %struct.anon.96], ptr @clk_sys_ratios, i32 0, i32 %131, i32 1
  %147 = load i32, ptr %146, align 4
  %148 = shl i32 %147, 10
  %149 = getelementptr [54 x %struct.anon.96], ptr @clk_sys_ratios, i32 0, i32 %131, i32 2
  %150 = load i32, ptr %149, align 4
  %151 = shl i32 %150, 8
  %152 = or i32 %145, %148
  %153 = or i32 %152, %151
  %154 = mul i32 %141, 10
  %155 = sdiv i32 %154, 20
  %156 = sub i32 %155, %112
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %219, label %158

158:                                              ; preds = %135
  %159 = sdiv i32 %154, 30
  %160 = sub i32 %159, %112
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %219, label %162

162:                                              ; preds = %158
  %163 = sdiv i32 %154, 40
  %164 = sub i32 %163, %112
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %219, label %166

166:                                              ; preds = %162
  %167 = sdiv i32 %154, 50
  %168 = sub i32 %167, %112
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %219, label %170

170:                                              ; preds = %166
  %171 = sdiv i32 %154, 60
  %172 = sub i32 %171, %112
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %219, label %174

174:                                              ; preds = %170
  %175 = sdiv i32 %154, 80
  %176 = sub i32 %175, %112
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %219, label %178

178:                                              ; preds = %174
  %179 = sdiv i32 %154, 100
  %180 = sub i32 %179, %112
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %219, label %182

182:                                              ; preds = %178
  %183 = sdiv i32 %154, 120
  %184 = sub i32 %183, %112
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %219, label %186

186:                                              ; preds = %182
  %187 = sdiv i32 %154, 160
  %188 = sub i32 %187, %112
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %219, label %190

190:                                              ; preds = %186
  %191 = sdiv i32 %154, 200
  %192 = sub i32 %191, %112
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %219, label %194

194:                                              ; preds = %190
  %195 = sdiv i32 %154, 220
  %196 = sub i32 %195, %112
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %219, label %198

198:                                              ; preds = %194
  %199 = sdiv i32 %154, 240
  %200 = sub i32 %199, %112
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %219, label %202

202:                                              ; preds = %198
  %203 = sdiv i32 %154, 300
  %204 = sub i32 %203, %112
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %219, label %206

206:                                              ; preds = %202
  %207 = sdiv i32 %154, 320
  %208 = sub i32 %207, %112
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %219, label %210

210:                                              ; preds = %206
  %211 = sdiv i32 %154, 440
  %212 = sub i32 %211, %112
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %219, label %214

214:                                              ; preds = %210
  %215 = sdiv i32 %154, 480
  %216 = sub i32 %215, %112
  %217 = icmp slt i32 %216, 0
  %218 = select i1 %217, i32 15, i32 16
  br label %219

219:                                              ; preds = %214, %210, %206, %202, %198, %194, %190, %186, %182, %178, %174, %170, %166, %162, %158, %135
  %220 = phi i32 [ 0, %135 ], [ 1, %158 ], [ 2, %162 ], [ 3, %166 ], [ 4, %170 ], [ 5, %174 ], [ 6, %178 ], [ 7, %182 ], [ 8, %186 ], [ 9, %190 ], [ 10, %194 ], [ 11, %198 ], [ 12, %202 ], [ 13, %206 ], [ 14, %210 ], [ %218, %214 ]
  %221 = and i32 %13, 65504
  %222 = and i32 %14, 63488
  %223 = getelementptr [17 x %struct.anon.97], ptr @bclk_divs, i32 0, i32 %220, i32 1
  %224 = load i32, ptr %223, align 4
  %225 = sdiv i32 %112, %11
  %226 = load i32, ptr %10, align 4
  %227 = getelementptr inbounds %struct.wm8903_priv, ptr %9, i32 0, i32 7
  store i32 %226, ptr %227, align 4
  %228 = load ptr, ptr %6, align 4
  %229 = getelementptr inbounds %struct.device, ptr %228, i32 0, i32 8
  %230 = load ptr, ptr %229, align 8
  %231 = getelementptr inbounds %struct.wm8903_priv, ptr %230, i32 0, i32 8
  %232 = load i32, ptr %231, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %252, label %234

234:                                              ; preds = %219
  %235 = getelementptr inbounds %struct.wm8903_priv, ptr %230, i32 0, i32 7
  %236 = load i32, ptr %235, align 4
  %237 = sub i32 44100, %236
  %238 = tail call i32 @llvm.abs.i32(i32 %237, i1 false) #9
  %239 = sub i32 32000, %236
  %240 = tail call i32 @llvm.abs.i32(i32 %239, i1 false) #9
  %241 = icmp slt i32 %238, %240
  %242 = select i1 %241, i32 2, i32 1
  %243 = sub i32 48000, %236
  %244 = tail call i32 @llvm.abs.i32(i32 %243, i1 false) #9
  %245 = getelementptr [4 x i32], ptr @wm8903_deemph, i32 0, i32 %242
  %246 = load i32, ptr %245, align 4
  %247 = sub i32 %246, %236
  %248 = tail call i32 @llvm.abs.i32(i32 %247, i1 false) #9
  %249 = icmp slt i32 %244, %248
  %250 = shl nuw nsw i32 %242, 1
  %251 = select i1 %249, i32 6, i32 %250
  br label %252

252:                                              ; preds = %234, %219
  %253 = phi i32 [ %251, %234 ], [ 0, %219 ]
  %254 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 33, i32 noundef 6, i32 noundef %253) #9
  %255 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 20, i32 noundef %143) #9
  %256 = and i32 %153, 65535
  %257 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 21, i32 noundef %256) #9
  %258 = zext i16 %111 to i32
  %259 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 25, i32 noundef %258) #9
  %260 = and i32 %224, 65535
  %261 = or i32 %260, %221
  %262 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 26, i32 noundef %261) #9
  %263 = and i32 %225, 65535
  %264 = or i32 %263, %222
  %265 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 27, i32 noundef %264) #9
  %266 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 33, i32 noundef %76) #9
  br label %267

267:                                              ; preds = %252, %94
  %268 = phi i32 [ 0, %252 ], [ -22, %94 ]
  ret i32 %268
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i8 0, i8 2}
!11 = !{i32 0, i32 33}
