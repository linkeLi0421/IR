; ModuleID = '/llk/IR/sound/soc/codecs/rt5640.c_pt.bc'
source_filename = "../sound/soc/codecs/rt5640.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt5640_dmic_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22rt5640_dmic_enable\22\09\09\09\09\09"
module asm "__kstrtabns_rt5640_dmic_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt5640_sel_asrc_clk_src:\09\09\09\09\09"
module asm "\09.asciz \09\22rt5640_sel_asrc_clk_src\22\09\09\09\09\09"
module asm "__kstrtabns_rt5640_sel_asrc_clk_src:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt5640_enable_micbias1_for_ovcd:\09\09\09\09\09"
module asm "\09.asciz \09\22rt5640_enable_micbias1_for_ovcd\22\09\09\09\09\09"
module asm "__kstrtabns_rt5640_enable_micbias1_for_ovcd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt5640_disable_micbias1_for_ovcd:\09\09\09\09\09"
module asm "\09.asciz \09\22rt5640_disable_micbias1_for_ovcd\22\09\09\09\09\09"
module asm "__kstrtabns_rt5640_disable_micbias1_for_ovcd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt5640_detect_headset:\09\09\09\09\09"
module asm "\09.asciz \09\22rt5640_detect_headset\22\09\09\09\09\09"
module asm "__kstrtabns_rt5640_detect_headset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt5640_set_ovcd_params:\09\09\09\09\09"
module asm "\09.asciz \09\22rt5640_set_ovcd_params\22\09\09\09\09\09"
module asm "__kstrtabns_rt5640_set_ovcd_params:\09\09\09\09\09"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.89, ptr }
%union.anon.89 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.81, i32 }
%union.anon.81 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.rt5640_priv = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, ptr, ptr, i32, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [80 x i8], [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rt5640_set_jack_data = type { i32, ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.rl6231_pll_code = type { i8, i8, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__kstrtab_rt5640_dmic_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt5640_dmic_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_rt5640_dmic_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt5640_dmic_enable to i32), ptr @__kstrtab_rt5640_dmic_enable, ptr @__kstrtabns_rt5640_dmic_enable }, section "___ksymtab_gpl+rt5640_dmic_enable", align 4
@__kstrtab_rt5640_sel_asrc_clk_src = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt5640_sel_asrc_clk_src = external dso_local constant [0 x i8], align 1
@__ksymtab_rt5640_sel_asrc_clk_src = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt5640_sel_asrc_clk_src to i32), ptr @__kstrtab_rt5640_sel_asrc_clk_src, ptr @__kstrtabns_rt5640_sel_asrc_clk_src }, section "___ksymtab_gpl+rt5640_sel_asrc_clk_src", align 4
@.str = private unnamed_addr constant [5 x i8] c"LDO2\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"MICBIAS1\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Platform Clock\00", align 1
@__kstrtab_rt5640_enable_micbias1_for_ovcd = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt5640_enable_micbias1_for_ovcd = external dso_local constant [0 x i8], align 1
@__ksymtab_rt5640_enable_micbias1_for_ovcd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt5640_enable_micbias1_for_ovcd to i32), ptr @__kstrtab_rt5640_enable_micbias1_for_ovcd, ptr @__kstrtabns_rt5640_enable_micbias1_for_ovcd }, section "___ksymtab_gpl+rt5640_enable_micbias1_for_ovcd", align 4
@__kstrtab_rt5640_disable_micbias1_for_ovcd = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt5640_disable_micbias1_for_ovcd = external dso_local constant [0 x i8], align 1
@__ksymtab_rt5640_disable_micbias1_for_ovcd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt5640_disable_micbias1_for_ovcd to i32), ptr @__kstrtab_rt5640_disable_micbias1_for_ovcd, ptr @__kstrtabns_rt5640_disable_micbias1_for_ovcd }, section "___ksymtab_gpl+rt5640_disable_micbias1_for_ovcd", align 4
@.str.3 = private unnamed_addr constant [74 x i8] c"Error detecting headset vs headphones, bad contact?, assuming headphones\0A\00", align 1
@__kstrtab_rt5640_detect_headset = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt5640_detect_headset = external dso_local constant [0 x i8], align 1
@__ksymtab_rt5640_detect_headset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt5640_detect_headset to i32), ptr @__kstrtab_rt5640_detect_headset, ptr @__kstrtabns_rt5640_detect_headset }, section "___ksymtab_gpl+rt5640_detect_headset", align 4
@__kstrtab_rt5640_set_ovcd_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt5640_set_ovcd_params = external dso_local constant [0 x i8], align 1
@__ksymtab_rt5640_set_ovcd_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt5640_set_ovcd_params to i32), ptr @__kstrtab_rt5640_set_ovcd_params, ptr @__kstrtabns_rt5640_set_ovcd_params }, section "___ksymtab_gpl+rt5640_set_ovcd_params", align 4
@rt5640_i2c_id = internal constant [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rt5640\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"rt5639\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"rt5642\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@rt5640_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rt5639\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rt5640\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description255 = internal constant [38 x i8] c"description=ASoC RT5640/RT5639 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [42 x i8] c"author=Johnny Hsu <johnnyhsu@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@rt5640_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @rt5640_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rt5640_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rt5640_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"rt5640\00", align 1
@rt5640_regmap = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr @rt5640_readable_register, ptr @rt5640_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 512, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5640_reg, i32 103, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr @rt5640_ranges, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"RT5640 LDO1_EN\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Failed to request LDO1_EN %d: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Device with ID register %#x is not rt5640/39\0A\00", align 1
@init_list = internal constant [6 x %struct.reg_sequence] [%struct.reg_sequence { i32 317, i32 13824, i32 0 }, %struct.reg_sequence { i32 274, i32 2728, i32 0 }, %struct.reg_sequence { i32 276, i32 2730, i32 0 }, %struct.reg_sequence { i32 288, i32 24848, i32 0 }, %struct.reg_sequence { i32 289, i32 57568, i32 0 }, %struct.reg_sequence { i32 291, i32 6148, i32 0 }], align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"Failed to apply regmap patch: %d\0A\00", align 1
@soc_component_dev_rt5640 = internal constant %struct.snd_soc_component_driver { ptr null, ptr @rt5640_snd_controls, i32 24, ptr @rt5640_dapm_widgets, i32 116, ptr @rt5640_dapm_routes, i32 194, ptr @rt5640_probe, ptr @rt5640_remove, ptr @rt5640_suspend, ptr @rt5640_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5640_set_jack, ptr null, ptr null, ptr null, ptr null, ptr @rt5640_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 56, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@rt5640_dai = internal global [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.382, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt5640_aif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.141, i64 68719476805, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.139, i64 68719476805, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.383, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt5640_aif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.145, i64 68719476805, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.143, i64 68719476805, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], align 8
@.str.10 = private unnamed_addr constant [22 x i8] c"realtek,ldo1-en-gpios\00", align 1
@rt5640_reg = internal constant [103 x %struct.reg_default] [%struct.reg_default { i32 0, i32 14 }, %struct.reg_default { i32 1, i32 51400 }, %struct.reg_default { i32 2, i32 51400 }, %struct.reg_default { i32 3, i32 51400 }, %struct.reg_default { i32 4, i32 32768 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 2056 }, %struct.reg_default { i32 25, i32 44975 }, %struct.reg_default { i32 26, i32 44975 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 12079 }, %struct.reg_default { i32 29, i32 12079 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 39, i32 28768 }, %struct.reg_default { i32 40, i32 28784 }, %struct.reg_default { i32 41, i32 32896 }, %struct.reg_default { i32 42, i32 21588 }, %struct.reg_default { i32 43, i32 21588 }, %struct.reg_default { i32 44, i32 43520 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 46, i32 40960 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 59, i32 0 }, %struct.reg_default { i32 60, i32 127 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 62, i32 127 }, %struct.reg_default { i32 69, i32 57344 }, %struct.reg_default { i32 70, i32 62 }, %struct.reg_default { i32 71, i32 62 }, %struct.reg_default { i32 72, i32 63488 }, %struct.reg_default { i32 73, i32 14336 }, %struct.reg_default { i32 74, i32 4 }, %struct.reg_default { i32 76, i32 64512 }, %struct.reg_default { i32 77, i32 0 }, %struct.reg_default { i32 79, i32 511 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 81, i32 0 }, %struct.reg_default { i32 82, i32 511 }, %struct.reg_default { i32 83, i32 61440 }, %struct.reg_default { i32 97, i32 0 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 99, i32 192 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 101, i32 0 }, %struct.reg_default { i32 102, i32 0 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 108, i32 0 }, %struct.reg_default { i32 112, i32 32768 }, %struct.reg_default { i32 113, i32 32768 }, %struct.reg_default { i32 114, i32 32768 }, %struct.reg_default { i32 115, i32 4372 }, %struct.reg_default { i32 116, i32 3072 }, %struct.reg_default { i32 117, i32 7424 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 129, i32 0 }, %struct.reg_default { i32 130, i32 0 }, %struct.reg_default { i32 131, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 133, i32 8 }, %struct.reg_default { i32 137, i32 0 }, %struct.reg_default { i32 138, i32 0 }, %struct.reg_default { i32 139, i32 1536 }, %struct.reg_default { i32 140, i32 552 }, %struct.reg_default { i32 141, i32 40960 }, %struct.reg_default { i32 142, i32 4 }, %struct.reg_default { i32 143, i32 4352 }, %struct.reg_default { i32 144, i32 1606 }, %struct.reg_default { i32 145, i32 3072 }, %struct.reg_default { i32 146, i32 0 }, %struct.reg_default { i32 147, i32 12288 }, %struct.reg_default { i32 176, i32 8320 }, %struct.reg_default { i32 177, i32 0 }, %struct.reg_default { i32 180, i32 8710 }, %struct.reg_default { i32 181, i32 7936 }, %struct.reg_default { i32 182, i32 0 }, %struct.reg_default { i32 184, i32 843 }, %struct.reg_default { i32 185, i32 102 }, %struct.reg_default { i32 186, i32 11 }, %struct.reg_default { i32 187, i32 0 }, %struct.reg_default { i32 188, i32 0 }, %struct.reg_default { i32 189, i32 0 }, %struct.reg_default { i32 190, i32 0 }, %struct.reg_default { i32 191, i32 0 }, %struct.reg_default { i32 192, i32 1024 }, %struct.reg_default { i32 194, i32 0 }, %struct.reg_default { i32 196, i32 0 }, %struct.reg_default { i32 197, i32 0 }, %struct.reg_default { i32 198, i32 8192 }, %struct.reg_default { i32 200, i32 0 }, %struct.reg_default { i32 201, i32 0 }, %struct.reg_default { i32 202, i32 0 }, %struct.reg_default { i32 203, i32 0 }, %struct.reg_default { i32 204, i32 0 }, %struct.reg_default { i32 207, i32 19 }, %struct.reg_default { i32 208, i32 1664 }, %struct.reg_default { i32 209, i32 7191 }, %struct.reg_default { i32 210, i32 35840 }, %struct.reg_default { i32 211, i32 43552 }, %struct.reg_default { i32 214, i32 1024 }, %struct.reg_default { i32 217, i32 2057 }, %struct.reg_default { i32 254, i32 4332 }, %struct.reg_default { i32 255, i32 25137 }], align 4
@rt5640_ranges = internal constant [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr @.str.11, i32 256, i32 436, i32 106, i32 255, i32 0, i32 108, i32 1 }], align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"PR\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"sound/soc/codecs/rt5640.c\00", align 1
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@rt5640_snd_controls = internal constant [24 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @out_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.15 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.17 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @out_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.19 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @out_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.25 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.27 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @dac_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.29 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @dac_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.31 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.33 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.35 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @in_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @adc_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.43 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @adc_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @adc_bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.49 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @rt5640_clsd_spk_ratio_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @rt5640_if1_adc_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @rt5640_if1_dac_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @rt5640_if2_adc_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @rt5640_if2_dac_enum to i32) }], align 4
@rt5640_dapm_routes = internal constant [194 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.114, ptr null, ptr @.str.70, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr null, ptr @.str.72, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr null, ptr @.str.71, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.73, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr null, ptr @.str.74, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr null, ptr @.str, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr null, ptr @.str, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr null, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr null, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr null, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr null, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr null, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.190, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.192, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.194, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.196, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.198, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.200, ptr @.str.292, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.202, ptr @.str.185, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.204, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.194, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.196, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.198, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.209, ptr @.str.293, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr null, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr null, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr null, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr null, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr null, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr null, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr null, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.75, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.76, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.212, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.214, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.212, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.214, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.212, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.75, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.76, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.212, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.83, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.85, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.148, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.148, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.217, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.149, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.219, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.84, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.86, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.149, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.221, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.223, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr null, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.221, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.223, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr null, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr @.str.221, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr @.str.223, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr null, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr @.str.221, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr @.str.223, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr null, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr null, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr null, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr null, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr null, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr null, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.232, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.233, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.234, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.234, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.237, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.238, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.233, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.232, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.235, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.235, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.237, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.238, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr null, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.232, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.234, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.233, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.235, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.233, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.234, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.232, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.235, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr null, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr null, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr null, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr null, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr null, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr null, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr @.str.239, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr @.str.241, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr @.str.239, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr @.str.241, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr null, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.294, ptr @.str.245, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.295, ptr @.str.251, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.245, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.251, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr @.str.245, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.251, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr null, ptr @.str.294, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr null, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.295, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr @.str.259, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr @.str.192, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr @.str.245, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr @.str.200, ptr @.str.292, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr @.str.265, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr @.str.204, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr @.str.251, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr @.str.209, ptr @.str.293, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.292, ptr @.str.198, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.292, ptr @.str.192, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.292, ptr @.str.259, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.292, ptr @.str.245, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr @.str.196, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr @.str.198, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr @.str.204, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr @.str.265, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr @.str.251, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr null, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr null, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr null, ptr @.str.292, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr null, ptr @.str.293, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.292, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr null, ptr @.str.293, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr @.str.251, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr @.str.245, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr @.str.273, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr @.str.275, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr @.str.198, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr @.str.251, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr @.str.273, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr @.str.198, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.296, ptr @.str.297, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.296, ptr @.str.298, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.296, ptr null, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.299, ptr @.str.297, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.299, ptr @.str.298, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.299, ptr null, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.245, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.251, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.283, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.285, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr null, ptr @.str.296, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr null, ptr @.str.299, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.287, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr @.str.287, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr null, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr null, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr null, ptr @.str.176, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr null, ptr @.str.176, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr null, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr null, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr @.str.287, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr @.str.287, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr null, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr null, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr null, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr null, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr null, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"Speaker Channel Switch\00", align 1
@.compoundliteral = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1, i32 1, i32 14, i32 6, i32 0, i8 1 }, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"Speaker Playback Volume\00", align 1
@out_vol_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -4650, i32 150], align 4
@.compoundliteral.15 = internal global %struct.soc_mixer_control { i32 0, i32 39, i32 39, i32 1, i32 1, i32 8, i32 0, i32 0, i8 1 }, align 4
@.str.16 = private unnamed_addr constant [18 x i8] c"HP Channel Switch\00", align 1
@.compoundliteral.17 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 14, i32 6, i32 0, i8 1 }, align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"HP Playback Volume\00", align 1
@.compoundliteral.19 = internal global %struct.soc_mixer_control { i32 0, i32 39, i32 39, i32 2, i32 2, i32 8, i32 0, i32 0, i8 1 }, align 4
@.str.20 = private unnamed_addr constant [20 x i8] c"OUT Playback Switch\00", align 1
@.compoundliteral.21 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 15, i32 7, i32 0, i8 1 }, align 4
@.str.22 = private unnamed_addr constant [19 x i8] c"OUT Channel Switch\00", align 1
@.compoundliteral.23 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 14, i32 6, i32 0, i8 1 }, align 4
@.str.24 = private unnamed_addr constant [20 x i8] c"OUT Playback Volume\00", align 1
@.compoundliteral.25 = internal global %struct.soc_mixer_control { i32 0, i32 39, i32 39, i32 3, i32 3, i32 8, i32 0, i32 0, i8 1 }, align 4
@.str.26 = private unnamed_addr constant [21 x i8] c"DAC2 Playback Switch\00", align 1
@.compoundliteral.27 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27, i32 27, i32 13, i32 12, i32 0, i8 1 }, align 4
@.str.28 = private unnamed_addr constant [21 x i8] c"DAC2 Playback Volume\00", align 1
@dac_vol_tlv = internal constant [4 x i32] [i32 4, i32 8, i32 -6562, i32 0], align 4
@.compoundliteral.29 = internal global %struct.soc_mixer_control { i32 0, i32 175, i32 175, i32 26, i32 26, i32 8, i32 0, i32 0, i8 0 }, align 4
@.str.30 = private unnamed_addr constant [21 x i8] c"DAC1 Playback Volume\00", align 1
@.compoundliteral.31 = internal global %struct.soc_mixer_control { i32 0, i32 175, i32 175, i32 25, i32 25, i32 8, i32 0, i32 0, i8 0 }, align 4
@.str.32 = private unnamed_addr constant [10 x i8] c"IN1 Boost\00", align 1
@bst_tlv = internal constant [44 x i32] [i32 3, i32 168, i32 0, i32 0, i32 1, i32 8, i32 0, i32 0, i32 1, i32 1, i32 1, i32 8, i32 2000, i32 0, i32 2, i32 2, i32 1, i32 8, i32 2400, i32 0, i32 3, i32 5, i32 1, i32 8, i32 3000, i32 500, i32 6, i32 6, i32 1, i32 8, i32 4400, i32 0, i32 7, i32 7, i32 1, i32 8, i32 5000, i32 0, i32 8, i32 8, i32 1, i32 8, i32 5200, i32 0], align 4
@.compoundliteral.33 = internal global %struct.soc_mixer_control { i32 0, i32 8, i32 8, i32 13, i32 13, i32 12, i32 12, i32 0, i8 0 }, align 4
@.str.34 = private unnamed_addr constant [10 x i8] c"IN2 Boost\00", align 1
@.compoundliteral.35 = internal global %struct.soc_mixer_control { i32 0, i32 8, i32 8, i32 14, i32 14, i32 8, i32 8, i32 0, i8 0 }, align 4
@.str.36 = private unnamed_addr constant [10 x i8] c"IN3 Boost\00", align 1
@.compoundliteral.37 = internal global %struct.soc_mixer_control { i32 0, i32 8, i32 8, i32 13, i32 13, i32 8, i32 8, i32 0, i8 0 }, align 4
@.str.38 = private unnamed_addr constant [18 x i8] c"IN Capture Volume\00", align 1
@in_vol_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -3450, i32 150], align 4
@.compoundliteral.39 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 15, i32 15, i32 8, i32 0, i32 0, i8 1 }, align 4
@.str.40 = private unnamed_addr constant [19 x i8] c"ADC Capture Switch\00", align 1
@.compoundliteral.41 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 15, i32 7, i32 0, i8 1 }, align 4
@.str.42 = private unnamed_addr constant [19 x i8] c"ADC Capture Volume\00", align 1
@adc_vol_tlv = internal constant [4 x i32] [i32 4, i32 8, i32 -1762, i32 3000], align 4
@.compoundliteral.43 = internal global %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 28, i32 28, i32 8, i32 0, i32 0, i8 0 }, align 4
@.str.44 = private unnamed_addr constant [24 x i8] c"Mono ADC Capture Switch\00", align 1
@.compoundliteral.45 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 250, i32 250, i32 13, i32 12, i32 0, i8 1 }, align 4
@.str.46 = private unnamed_addr constant [24 x i8] c"Mono ADC Capture Volume\00", align 1
@.compoundliteral.47 = internal global %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 29, i32 29, i32 8, i32 0, i32 0, i8 0 }, align 4
@.str.48 = private unnamed_addr constant [15 x i8] c"ADC Boost Gain\00", align 1
@adc_bst_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 0, i32 1200], align 4
@.compoundliteral.49 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 30, i32 30, i32 14, i32 12, i32 0, i8 0 }, align 4
@.str.50 = private unnamed_addr constant [26 x i8] c"Class D SPK Ratio Control\00", align 1
@rt5640_clsd_spk_ratio_enum = internal constant %struct.soc_enum { i32 141, i8 12, i8 12, i32 11, i32 15, ptr @rt5640_clsd_spk_ratio, ptr null, i8 0 }, align 4
@.str.51 = private unnamed_addr constant [20 x i8] c"ADC IF1 Data Switch\00", align 1
@rt5640_if1_adc_enum = internal constant %struct.soc_enum { i32 47, i8 12, i8 12, i32 4, i32 3, ptr @rt5640_data_select, ptr null, i8 0 }, align 4
@.str.52 = private unnamed_addr constant [20 x i8] c"DAC IF1 Data Switch\00", align 1
@rt5640_if1_dac_enum = internal constant %struct.soc_enum { i32 47, i8 14, i8 14, i32 4, i32 3, ptr @rt5640_data_select, ptr null, i8 0 }, align 4
@.str.53 = private unnamed_addr constant [20 x i8] c"ADC IF2 Data Switch\00", align 1
@rt5640_if2_adc_enum = internal constant %struct.soc_enum { i32 47, i8 8, i8 8, i32 4, i32 3, ptr @rt5640_data_select, ptr null, i8 0 }, align 4
@.str.54 = private unnamed_addr constant [20 x i8] c"DAC IF2 Data Switch\00", align 1
@rt5640_if2_dac_enum = internal constant %struct.soc_enum { i32 47, i8 10, i8 10, i32 4, i32 3, ptr @rt5640_data_select, ptr null, i8 0 }, align 4
@rt5640_clsd_spk_ratio = internal constant [11 x ptr] [ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], align 4
@.str.55 = private unnamed_addr constant [6 x i8] c"1.66x\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"1.83x\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"1.94x\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"2x\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"2.11x\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"2.22x\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"2.33x\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"2.44x\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"2.55x\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"2.66x\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"2.77x\00", align 1
@rt5640_data_select = internal constant [4 x ptr] [ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], align 4
@.str.66 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"Swap\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"left copy to right\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"right copy to left\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"Stereo Filter ASRC\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"I2S2 Filter ASRC\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"I2S2 ASRC\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"DMIC1 ASRC\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"DMIC2 ASRC\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"DMIC1\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"DMIC2\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"IN1P\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"IN1N\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"IN2P\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"IN2N\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"IN3P\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"IN3N\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"DMIC L1\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"DMIC R1\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"DMIC L2\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"DMIC R2\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"DMIC CLK\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"DMIC1 Power\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"DMIC2 Power\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"BST1\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"BST2\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"BST3\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"INL VOL\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"INR VOL\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"RECMIXL\00", align 1
@rt5640_rec_l_mix = internal constant [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.190, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.191 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.192, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.193 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.194, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.195 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.196, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.197 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.198, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.199 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.200, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.201 to i32) }], align 4
@.str.96 = private unnamed_addr constant [8 x i8] c"RECMIXR\00", align 1
@rt5640_rec_r_mix = internal constant [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.202, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.203 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.204, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.205 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.194, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.206 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.196, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.207 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.198, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.208 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.209, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.210 to i32) }], align 4
@.str.97 = private unnamed_addr constant [6 x i8] c"ADC L\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"ADC R\00", align 1
@.str.99 = private unnamed_addr constant [18 x i8] c"Stereo ADC L2 Mux\00", align 1
@rt5640_sto_adc_2_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.211, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @rt5640_stereo_adc2_enum to i32) }, align 4
@.str.100 = private unnamed_addr constant [18 x i8] c"Stereo ADC R2 Mux\00", align 1
@.str.101 = private unnamed_addr constant [18 x i8] c"Stereo ADC L1 Mux\00", align 1
@rt5640_sto_adc_1_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.213, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @rt5640_stereo_adc1_enum to i32) }, align 4
@.str.102 = private unnamed_addr constant [18 x i8] c"Stereo ADC R1 Mux\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"Mono ADC L2 Mux\00", align 1
@rt5640_mono_adc_l2_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.215, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @rt5640_mono_adc_l2_enum to i32) }, align 4
@.str.104 = private unnamed_addr constant [16 x i8] c"Mono ADC L1 Mux\00", align 1
@rt5640_mono_adc_l1_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.216, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @rt5640_mono_adc_l1_enum to i32) }, align 4
@.str.105 = private unnamed_addr constant [16 x i8] c"Mono ADC R1 Mux\00", align 1
@rt5640_mono_adc_r1_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.218, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @rt5640_mono_adc_r1_enum to i32) }, align 4
@.str.106 = private unnamed_addr constant [16 x i8] c"Mono ADC R2 Mux\00", align 1
@rt5640_mono_adc_r2_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.220, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @rt5640_mono_adc_r2_enum to i32) }, align 4
@.str.107 = private unnamed_addr constant [14 x i8] c"Stereo Filter\00", align 1
@.str.108 = private unnamed_addr constant [16 x i8] c"Stereo ADC MIXL\00", align 1
@rt5640_sto_adc_l_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.221, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.222 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.223, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.224 to i32) }], align 4
@.str.109 = private unnamed_addr constant [16 x i8] c"Stereo ADC MIXR\00", align 1
@rt5640_sto_adc_r_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.221, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.225 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.223, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.226 to i32) }], align 4
@.str.110 = private unnamed_addr constant [17 x i8] c"Mono Left Filter\00", align 1
@.str.111 = private unnamed_addr constant [14 x i8] c"Mono ADC MIXL\00", align 1
@rt5640_mono_adc_l_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.221, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.227 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.223, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.228 to i32) }], align 4
@.str.112 = private unnamed_addr constant [18 x i8] c"Mono Right Filter\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"Mono ADC MIXR\00", align 1
@rt5640_mono_adc_r_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.221, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.229 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.223, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.230 to i32) }], align 4
@.str.114 = private unnamed_addr constant [5 x i8] c"I2S1\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"IF1 DAC\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"IF1 DAC L\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"IF1 DAC R\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"IF1 ADC\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"IF1 ADC L\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"IF1 ADC R\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"I2S2\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"IF2 DAC\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"IF2 DAC L\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"IF2 DAC R\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"IF2 ADC\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"IF2 ADC L\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"IF2 ADC R\00", align 1
@.str.128 = private unnamed_addr constant [12 x i8] c"DAI1 RX Mux\00", align 1
@rt5640_dai_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.231, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @rt5640_dai_iis_map_enum to i32) }, align 4
@.str.129 = private unnamed_addr constant [12 x i8] c"DAI1 TX Mux\00", align 1
@.str.130 = private unnamed_addr constant [13 x i8] c"DAI1 IF1 Mux\00", align 1
@.str.131 = private unnamed_addr constant [13 x i8] c"DAI1 IF2 Mux\00", align 1
@.str.132 = private unnamed_addr constant [12 x i8] c"SDI1 TX Mux\00", align 1
@rt5640_sdi_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.236, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @rt5640_sdi_sel_enum to i32) }, align 4
@.str.133 = private unnamed_addr constant [12 x i8] c"DAI2 RX Mux\00", align 1
@.str.134 = private unnamed_addr constant [12 x i8] c"DAI2 TX Mux\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"DAI2 IF1 Mux\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"DAI2 IF2 Mux\00", align 1
@.str.137 = private unnamed_addr constant [12 x i8] c"SDI2 TX Mux\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"AIF1RX\00", align 1
@.str.139 = private unnamed_addr constant [14 x i8] c"AIF1 Playback\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"AIF1TX\00", align 1
@.str.141 = private unnamed_addr constant [13 x i8] c"AIF1 Capture\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"AIF2RX\00", align 1
@.str.143 = private unnamed_addr constant [14 x i8] c"AIF2 Playback\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"AIF2TX\00", align 1
@.str.145 = private unnamed_addr constant [13 x i8] c"AIF2 Capture\00", align 1
@.str.146 = private unnamed_addr constant [9 x i8] c"DAC MIXL\00", align 1
@rt5640_dac_l_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.239, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.240 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.241, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.242 to i32) }], align 4
@.str.147 = private unnamed_addr constant [9 x i8] c"DAC MIXR\00", align 1
@rt5640_dac_r_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.239, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.243 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.241, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.244 to i32) }], align 4
@.str.148 = private unnamed_addr constant [14 x i8] c"Mono DAC MIXL\00", align 1
@rt5640_mono_dac_l_mix = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.246 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.247, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.248 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.250 to i32) }], align 4
@.str.149 = private unnamed_addr constant [14 x i8] c"Mono DAC MIXR\00", align 1
@rt5640_mono_dac_r_mix = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.251, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.252 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.253 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.247, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.254 to i32) }], align 4
@.str.150 = private unnamed_addr constant [9 x i8] c"DIG MIXL\00", align 1
@rt5640_dig_l_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.255 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.247, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.256 to i32) }], align 4
@.str.151 = private unnamed_addr constant [9 x i8] c"DIG MIXR\00", align 1
@rt5640_dig_r_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.251, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.257 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.258 to i32) }], align 4
@.str.152 = private unnamed_addr constant [7 x i8] c"DAC L1\00", align 1
@.str.153 = private unnamed_addr constant [7 x i8] c"DAC R1\00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c"DAC L1 Power\00", align 1
@.str.155 = private unnamed_addr constant [13 x i8] c"DAC R1 Power\00", align 1
@.str.156 = private unnamed_addr constant [13 x i8] c"DAC L2 Power\00", align 1
@.str.157 = private unnamed_addr constant [13 x i8] c"DAC R2 Power\00", align 1
@.str.158 = private unnamed_addr constant [9 x i8] c"SPK MIXL\00", align 1
@rt5640_spk_l_mix = internal constant [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.259, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.260 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.192, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.261 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.262 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.247, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.263 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.200, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.264 to i32) }], align 4
@.str.159 = private unnamed_addr constant [9 x i8] c"SPK MIXR\00", align 1
@rt5640_spk_r_mix = internal constant [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.265, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.266 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.204, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.267 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.251, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.268 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.269 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.209, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.270 to i32) }], align 4
@.str.160 = private unnamed_addr constant [9 x i8] c"SPKVOL L\00", align 1
@.str.161 = private unnamed_addr constant [9 x i8] c"SPKVOL R\00", align 1
@.str.162 = private unnamed_addr constant [9 x i8] c"OUTVOL L\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"OUTVOL R\00", align 1
@.str.164 = private unnamed_addr constant [9 x i8] c"HPOVOL L\00", align 1
@.str.165 = private unnamed_addr constant [9 x i8] c"HPOVOL R\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c"SPOL MIX\00", align 1
@rt5640_spo_l_mix = internal constant [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.251, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.271 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.272 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.273, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.274 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.275, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.276 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.198, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.277 to i32) }], align 4
@.str.167 = private unnamed_addr constant [9 x i8] c"SPOR MIX\00", align 1
@rt5640_spo_r_mix = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.251, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.278 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.273, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.279 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.198, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.280 to i32) }], align 4
@.str.168 = private unnamed_addr constant [9 x i8] c"LOUT MIX\00", align 1
@rt5640_lout_mix = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.281 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.251, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.282 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.283, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.284 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.285, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.286 to i32) }], align 4
@.str.169 = private unnamed_addr constant [19 x i8] c"Improve HP Amp Drv\00", align 1
@.str.170 = private unnamed_addr constant [7 x i8] c"HP Amp\00", align 1
@.str.171 = private unnamed_addr constant [9 x i8] c"LOUT amp\00", align 1
@.str.172 = private unnamed_addr constant [9 x i8] c"HP L Amp\00", align 1
@.str.173 = private unnamed_addr constant [9 x i8] c"HP R Amp\00", align 1
@.str.174 = private unnamed_addr constant [20 x i8] c"Improve SPK Amp Drv\00", align 1
@.str.175 = private unnamed_addr constant [19 x i8] c"Speaker L Playback\00", align 1
@spk_l_enable_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.288 to i32) }, align 4
@.str.176 = private unnamed_addr constant [19 x i8] c"Speaker R Playback\00", align 1
@spk_r_enable_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.289 to i32) }, align 4
@.str.177 = private unnamed_addr constant [14 x i8] c"HP L Playback\00", align 1
@hp_l_enable_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.290 to i32) }, align 4
@.str.178 = private unnamed_addr constant [14 x i8] c"HP R Playback\00", align 1
@hp_r_enable_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.291 to i32) }, align 4
@.str.179 = private unnamed_addr constant [8 x i8] c"HP Post\00", align 1
@.str.180 = private unnamed_addr constant [6 x i8] c"SPOLP\00", align 1
@.str.181 = private unnamed_addr constant [6 x i8] c"SPOLN\00", align 1
@.str.182 = private unnamed_addr constant [6 x i8] c"SPORP\00", align 1
@.str.183 = private unnamed_addr constant [6 x i8] c"SPORN\00", align 1
@.str.184 = private unnamed_addr constant [5 x i8] c"HPOL\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c"HPOR\00", align 1
@.str.186 = private unnamed_addr constant [6 x i8] c"LOUTL\00", align 1
@.str.187 = private unnamed_addr constant [6 x i8] c"LOUTR\00", align 1
@rt5640_dapm_widgets = internal constant [116 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.1, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @set_dmic_clk, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 117, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 117, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @rt5640_rec_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @rt5640_rec_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5640_sto_adc_2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5640_sto_adc_2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5640_sto_adc_1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5640_sto_adc_1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5640_mono_adc_l2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5640_mono_adc_l1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5640_mono_adc_r1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5640_mono_adc_r2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5640_sto_adc_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5640_sto_adc_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5640_mono_adc_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5640_mono_adc_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.115, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.116, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.117, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.118, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.119, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.120, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.124, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.128, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5640_dai_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.129, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5640_dai_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.130, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5640_dai_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5640_dai_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5640_sdi_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5640_dai_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.134, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5640_dai_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5640_dai_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5640_dai_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.137, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5640_sdi_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.138, ptr @.str.139, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.140, ptr @.str.141, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.142, ptr @.str.143, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.144, ptr @.str.145, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5640_dac_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5640_dac_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5640_mono_dac_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.149, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5640_mono_dac_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.150, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5640_dig_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5640_dig_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.158, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @rt5640_spk_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.159, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @rt5640_spk_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.161, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.162, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.163, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.164, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.165, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @rt5640_spo_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.167, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5640_spo_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5640_lout_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.169, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 2, ptr @rt5640_hp_power_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 6, ptr @rt5640_hp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 6, ptr @rt5640_lout_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.172, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.173, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.174, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.175, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @spk_l_enable_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.176, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @spk_r_enable_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.177, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hp_l_enable_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.178, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hp_r_enable_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 18, ptr @.str.179, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @rt5640_hp_post_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.180, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.181, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.182, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.183, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.184, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.185, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.186, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.187, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.189 = private unnamed_addr constant [26 x i8] c"Failed to set DMIC clock\0A\00", align 1
@.str.190 = private unnamed_addr constant [12 x i8] c"HPOL Switch\00", align 1
@.compoundliteral.191 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 6, i32 6, i32 0, i8 1 }, align 4
@.str.192 = private unnamed_addr constant [11 x i8] c"INL Switch\00", align 1
@.compoundliteral.193 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 5, i32 5, i32 0, i8 1 }, align 4
@.str.194 = private unnamed_addr constant [12 x i8] c"BST3 Switch\00", align 1
@.compoundliteral.195 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 2, i32 2, i32 0, i8 1 }, align 4
@.str.196 = private unnamed_addr constant [12 x i8] c"BST2 Switch\00", align 1
@.compoundliteral.197 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 4, i32 4, i32 0, i8 1 }, align 4
@.str.198 = private unnamed_addr constant [12 x i8] c"BST1 Switch\00", align 1
@.compoundliteral.199 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 1, i32 1, i32 0, i8 1 }, align 4
@.str.200 = private unnamed_addr constant [16 x i8] c"OUT MIXL Switch\00", align 1
@.compoundliteral.201 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.202 = private unnamed_addr constant [12 x i8] c"HPOR Switch\00", align 1
@.compoundliteral.203 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 6, i32 6, i32 0, i8 1 }, align 4
@.str.204 = private unnamed_addr constant [11 x i8] c"INR Switch\00", align 1
@.compoundliteral.205 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 5, i32 5, i32 0, i8 1 }, align 4
@.compoundliteral.206 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 2, i32 2, i32 0, i8 1 }, align 4
@.compoundliteral.207 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 4, i32 4, i32 0, i8 1 }, align 4
@.compoundliteral.208 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 1, i32 1, i32 0, i8 1 }, align 4
@.str.209 = private unnamed_addr constant [16 x i8] c"OUT MIXR Switch\00", align 1
@.compoundliteral.210 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.211 = private unnamed_addr constant [16 x i8] c"Stereo ADC2 Mux\00", align 1
@rt5640_stereo_adc2_enum = internal constant %struct.soc_enum { i32 39, i8 10, i8 10, i32 3, i32 3, ptr @rt5640_stereo_adc2_src, ptr null, i8 0 }, align 4
@rt5640_stereo_adc2_src = internal constant [3 x ptr] [ptr @.str.75, ptr @.str.76, ptr @.str.212], align 4
@.str.212 = private unnamed_addr constant [8 x i8] c"DIG MIX\00", align 1
@.str.213 = private unnamed_addr constant [16 x i8] c"Stereo ADC1 Mux\00", align 1
@rt5640_stereo_adc1_enum = internal constant %struct.soc_enum { i32 39, i8 12, i8 12, i32 2, i32 1, ptr @rt5640_stereo_adc1_src, ptr null, i8 0 }, align 4
@rt5640_stereo_adc1_src = internal constant [2 x ptr] [ptr @.str.212, ptr @.str.214], align 4
@.str.214 = private unnamed_addr constant [4 x i8] c"ADC\00", align 1
@.str.215 = private unnamed_addr constant [22 x i8] c"Mono ADC2 left source\00", align 1
@rt5640_mono_adc_l2_enum = internal constant %struct.soc_enum { i32 40, i8 10, i8 10, i32 3, i32 3, ptr @rt5640_mono_adc_l2_src, ptr null, i8 0 }, align 4
@rt5640_mono_adc_l2_src = internal constant [3 x ptr] [ptr @.str.83, ptr @.str.85, ptr @.str.148], align 4
@.str.216 = private unnamed_addr constant [22 x i8] c"Mono ADC1 left source\00", align 1
@rt5640_mono_adc_l1_enum = internal constant %struct.soc_enum { i32 40, i8 12, i8 12, i32 2, i32 1, ptr @rt5640_mono_adc_l1_src, ptr null, i8 0 }, align 4
@rt5640_mono_adc_l1_src = internal constant [2 x ptr] [ptr @.str.148, ptr @.str.217], align 4
@.str.217 = private unnamed_addr constant [5 x i8] c"ADCL\00", align 1
@.str.218 = private unnamed_addr constant [23 x i8] c"Mono ADC1 right source\00", align 1
@rt5640_mono_adc_r1_enum = internal constant %struct.soc_enum { i32 40, i8 4, i8 4, i32 2, i32 1, ptr @rt5640_mono_adc_r1_src, ptr null, i8 0 }, align 4
@rt5640_mono_adc_r1_src = internal constant [2 x ptr] [ptr @.str.149, ptr @.str.219], align 4
@.str.219 = private unnamed_addr constant [5 x i8] c"ADCR\00", align 1
@.str.220 = private unnamed_addr constant [23 x i8] c"Mono ADC2 right source\00", align 1
@rt5640_mono_adc_r2_enum = internal constant %struct.soc_enum { i32 40, i8 2, i8 2, i32 3, i32 3, ptr @rt5640_mono_adc_r2_src, ptr null, i8 0 }, align 4
@rt5640_mono_adc_r2_src = internal constant [3 x ptr] [ptr @.str.84, ptr @.str.86, ptr @.str.149], align 4
@.str.221 = private unnamed_addr constant [12 x i8] c"ADC1 Switch\00", align 1
@.compoundliteral.222 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 14, i32 14, i32 0, i8 1 }, align 4
@.str.223 = private unnamed_addr constant [12 x i8] c"ADC2 Switch\00", align 1
@.compoundliteral.224 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 13, i32 13, i32 0, i8 1 }, align 4
@.compoundliteral.225 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 6, i32 6, i32 0, i8 1 }, align 4
@.compoundliteral.226 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 5, i32 5, i32 0, i8 1 }, align 4
@.compoundliteral.227 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 14, i32 14, i32 0, i8 1 }, align 4
@.compoundliteral.228 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 13, i32 13, i32 0, i8 1 }, align 4
@.compoundliteral.229 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 6, i32 6, i32 0, i8 1 }, align 4
@.compoundliteral.230 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 5, i32 5, i32 0, i8 1 }, align 4
@.str.231 = private unnamed_addr constant [11 x i8] c"DAI select\00", align 1
@rt5640_dai_iis_map_enum = internal constant %struct.soc_enum { i32 112, i8 12, i8 12, i32 4, i32 7, ptr @rt5640_dai_iis_map, ptr @rt5640_dai_iis_map_values, i8 0 }, align 4
@rt5640_dai_iis_map = internal constant [4 x ptr] [ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235], align 4
@rt5640_dai_iis_map_values = internal global [4 x i32] [i32 0, i32 5, i32 6, i32 7], align 4
@.str.232 = private unnamed_addr constant [8 x i8] c"1:1|2:2\00", align 1
@.str.233 = private unnamed_addr constant [8 x i8] c"1:2|2:1\00", align 1
@.str.234 = private unnamed_addr constant [8 x i8] c"1:1|2:1\00", align 1
@.str.235 = private unnamed_addr constant [8 x i8] c"1:2|2:2\00", align 1
@.str.236 = private unnamed_addr constant [11 x i8] c"SDI select\00", align 1
@rt5640_sdi_sel_enum = internal constant %struct.soc_enum { i32 113, i8 6, i8 6, i32 2, i32 1, ptr @rt5640_sdi_sel, ptr null, i8 0 }, align 4
@rt5640_sdi_sel = internal constant [2 x ptr] [ptr @.str.237, ptr @.str.238], align 4
@.str.237 = private unnamed_addr constant [4 x i8] c"IF1\00", align 1
@.str.238 = private unnamed_addr constant [4 x i8] c"IF2\00", align 1
@.str.239 = private unnamed_addr constant [18 x i8] c"Stereo ADC Switch\00", align 1
@.compoundliteral.240 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 15, i32 15, i32 0, i8 1 }, align 4
@.str.241 = private unnamed_addr constant [12 x i8] c"INF1 Switch\00", align 1
@.compoundliteral.242 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 14, i32 14, i32 0, i8 1 }, align 4
@.compoundliteral.243 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 7, i32 7, i32 0, i8 1 }, align 4
@.compoundliteral.244 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 6, i32 6, i32 0, i8 1 }, align 4
@.str.245 = private unnamed_addr constant [14 x i8] c"DAC L1 Switch\00", align 1
@.compoundliteral.246 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 14, i32 14, i32 0, i8 1 }, align 4
@.str.247 = private unnamed_addr constant [14 x i8] c"DAC L2 Switch\00", align 1
@.compoundliteral.248 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 12, i32 12, i32 0, i8 1 }, align 4
@.str.249 = private unnamed_addr constant [14 x i8] c"DAC R2 Switch\00", align 1
@.compoundliteral.250 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 10, i32 10, i32 0, i8 1 }, align 4
@.str.251 = private unnamed_addr constant [14 x i8] c"DAC R1 Switch\00", align 1
@.compoundliteral.252 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 6, i32 6, i32 0, i8 1 }, align 4
@.compoundliteral.253 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 4, i32 4, i32 0, i8 1 }, align 4
@.compoundliteral.254 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 2, i32 2, i32 0, i8 1 }, align 4
@.compoundliteral.255 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 15, i32 15, i32 0, i8 1 }, align 4
@.compoundliteral.256 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 13, i32 13, i32 0, i8 1 }, align 4
@.compoundliteral.257 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 11, i32 11, i32 0, i8 1 }, align 4
@.compoundliteral.258 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 9, i32 9, i32 0, i8 1 }, align 4
@.str.259 = private unnamed_addr constant [16 x i8] c"REC MIXL Switch\00", align 1
@.compoundliteral.260 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 70, i32 70, i32 5, i32 5, i32 0, i8 1 }, align 4
@.compoundliteral.261 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 70, i32 70, i32 4, i32 4, i32 0, i8 1 }, align 4
@.compoundliteral.262 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 70, i32 70, i32 3, i32 3, i32 0, i8 1 }, align 4
@.compoundliteral.263 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 70, i32 70, i32 2, i32 2, i32 0, i8 1 }, align 4
@.compoundliteral.264 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 70, i32 70, i32 1, i32 1, i32 0, i8 1 }, align 4
@.str.265 = private unnamed_addr constant [16 x i8] c"REC MIXR Switch\00", align 1
@.compoundliteral.266 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 71, i32 71, i32 5, i32 5, i32 0, i8 1 }, align 4
@.compoundliteral.267 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 71, i32 71, i32 4, i32 4, i32 0, i8 1 }, align 4
@.compoundliteral.268 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 71, i32 71, i32 3, i32 3, i32 0, i8 1 }, align 4
@.compoundliteral.269 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 71, i32 71, i32 2, i32 2, i32 0, i8 1 }, align 4
@.compoundliteral.270 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 71, i32 71, i32 1, i32 1, i32 0, i8 1 }, align 4
@.compoundliteral.271 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 15, i32 15, i32 0, i8 1 }, align 4
@.compoundliteral.272 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 14, i32 14, i32 0, i8 1 }, align 4
@.str.273 = private unnamed_addr constant [16 x i8] c"SPKVOL R Switch\00", align 1
@.compoundliteral.274 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 13, i32 13, i32 0, i8 1 }, align 4
@.str.275 = private unnamed_addr constant [16 x i8] c"SPKVOL L Switch\00", align 1
@.compoundliteral.276 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 12, i32 12, i32 0, i8 1 }, align 4
@.compoundliteral.277 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 11, i32 11, i32 0, i8 1 }, align 4
@.compoundliteral.278 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 73, i32 73, i32 13, i32 13, i32 0, i8 1 }, align 4
@.compoundliteral.279 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 73, i32 73, i32 12, i32 12, i32 0, i8 1 }, align 4
@.compoundliteral.280 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 73, i32 73, i32 11, i32 11, i32 0, i8 1 }, align 4
@.compoundliteral.281 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 15, i32 15, i32 0, i8 1 }, align 4
@.compoundliteral.282 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 14, i32 14, i32 0, i8 1 }, align 4
@.str.283 = private unnamed_addr constant [16 x i8] c"OUTVOL L Switch\00", align 1
@.compoundliteral.284 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 13, i32 13, i32 0, i8 1 }, align 4
@.str.285 = private unnamed_addr constant [16 x i8] c"OUTVOL R Switch\00", align 1
@.compoundliteral.286 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 12, i32 12, i32 0, i8 1 }, align 4
@.str.287 = private unnamed_addr constant [7 x i8] c"Switch\00", align 1
@.compoundliteral.288 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1, i32 1, i32 15, i32 15, i32 0, i8 3 }, align 4
@.compoundliteral.289 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1, i32 1, i32 7, i32 7, i32 0, i8 3 }, align 4
@.compoundliteral.290 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 15, i32 15, i32 0, i8 3 }, align 4
@.compoundliteral.291 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 7, i32 7, i32 0, i8 3 }, align 4
@.str.292 = private unnamed_addr constant [9 x i8] c"OUT MIXL\00", align 1
@.str.293 = private unnamed_addr constant [9 x i8] c"OUT MIXR\00", align 1
@.str.294 = private unnamed_addr constant [16 x i8] c"Stereo DAC MIXL\00", align 1
@.str.295 = private unnamed_addr constant [16 x i8] c"Stereo DAC MIXR\00", align 1
@.str.296 = private unnamed_addr constant [10 x i8] c"HPO MIX L\00", align 1
@.str.297 = private unnamed_addr constant [20 x i8] c"HPO MIX DAC1 Switch\00", align 1
@.str.298 = private unnamed_addr constant [21 x i8] c"HPO MIX HPVOL Switch\00", align 1
@.str.299 = private unnamed_addr constant [10 x i8] c"HPO MIX R\00", align 1
@.str.300 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@rt5640_specific_snd_controls = internal constant [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.314, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.315 to i32) }], align 4
@rt5640_specific_dapm_routes = internal constant [41 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.317, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.317, ptr null, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.316, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.316, ptr null, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.318, ptr @.str.238, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.318, ptr @.str.328, ptr @.str.316, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.318, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.319, ptr @.str.238, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.319, ptr null, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.294, ptr @.str.247, ptr @.str.318, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.294, ptr @.str.332, ptr @.str.317, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.295, ptr @.str.249, ptr @.str.319, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.295, ptr @.str.332, ptr @.str.317, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.247, ptr @.str.318, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.249, ptr @.str.319, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.249, ptr @.str.319, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.247, ptr @.str.318, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.249, ptr @.str.319, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr @.str.247, ptr @.str.318, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.321, ptr null, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.321, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.320, ptr null, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.320, ptr null, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr @.str.247, ptr @.str.321, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr @.str.249, ptr @.str.320, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.292, ptr @.str.337, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr @.str.345, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.292, ptr @.str.249, ptr @.str.320, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.292, ptr @.str.247, ptr @.str.321, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr @.str.247, ptr @.str.321, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr @.str.249, ptr @.str.320, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.296, ptr @.str.354, ptr @.str.321, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.299, ptr @.str.354, ptr @.str.320, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.322, ptr @.str.249, ptr @.str.320, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.322, ptr @.str.247, ptr @.str.321, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.322, ptr @.str.285, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.322, ptr @.str.283, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.322, ptr @.str.198, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.324, ptr null, ptr @.str.322, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.325, ptr null, ptr @.str.322, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.324, ptr null, ptr @.str.323, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@rt5639_specific_dapm_routes = internal constant [10 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.294, ptr @.str.247, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.295, ptr @.str.249, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.247, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.249, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.249, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.247, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr @.str.247, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.249, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr null, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str.301 = private unnamed_addr constant [48 x i8] c"The driver is for RT5639 RT5640 or RT5642 only\0A\00", align 1
@.str.302 = private unnamed_addr constant [25 x i8] c"realtek,in1-differential\00", align 1
@.str.303 = private unnamed_addr constant [25 x i8] c"realtek,in2-differential\00", align 1
@.str.304 = private unnamed_addr constant [25 x i8] c"realtek,in3-differential\00", align 1
@.str.305 = private unnamed_addr constant [23 x i8] c"realtek,dmic1-data-pin\00", align 1
@.str.306 = private unnamed_addr constant [23 x i8] c"realtek,dmic2-data-pin\00", align 1
@.str.307 = private unnamed_addr constant [27 x i8] c"realtek,jack-detect-source\00", align 1
@.str.308 = private unnamed_addr constant [77 x i8] c"Warning: Invalid jack-detect-source value: %d, leaving jack-detect disabled\0A\00", align 1
@.str.309 = private unnamed_addr constant [33 x i8] c"realtek,jack-detect-not-inverted\00", align 1
@.str.310 = private unnamed_addr constant [40 x i8] c"realtek,over-current-threshold-microamp\00", align 1
@.str.311 = private unnamed_addr constant [82 x i8] c"Warning: Invalid over-current-threshold-microamp value: %d, defaulting to 2000uA\0A\00", align 1
@.str.312 = private unnamed_addr constant [34 x i8] c"realtek,over-current-scale-factor\00", align 1
@.str.313 = private unnamed_addr constant [74 x i8] c"Warning: Invalid over-current-scale-factor value: %d, defaulting to 0.75\0A\00", align 1
@.str.314 = private unnamed_addr constant [21 x i8] c"Mono Playback Switch\00", align 1
@.compoundliteral.315 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 15, i32 15, i32 0, i8 1 }, align 4
@.str.316 = private unnamed_addr constant [10 x i8] c"Audio DSP\00", align 1
@.str.317 = private unnamed_addr constant [4 x i8] c"ANC\00", align 1
@.str.318 = private unnamed_addr constant [11 x i8] c"DAC L2 Mux\00", align 1
@rt5640_dac_l2_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.327, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @rt5640_dac_l2_enum to i32) }, align 4
@.str.319 = private unnamed_addr constant [11 x i8] c"DAC R2 Mux\00", align 1
@rt5640_dac_r2_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.329, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @rt5640_dac_r2_enum to i32) }, align 4
@rt5640_sto_dac_l_mix = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.330 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.247, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.331 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.332, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.333 to i32) }], align 4
@rt5640_sto_dac_r_mix = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.251, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.334 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.335 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.332, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.336 to i32) }], align 4
@.str.320 = private unnamed_addr constant [7 x i8] c"DAC R2\00", align 1
@.str.321 = private unnamed_addr constant [7 x i8] c"DAC L2\00", align 1
@rt5640_out_l_mix = internal constant [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.337, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.338 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.198, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.339 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.192, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.340 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.259, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.341 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.342 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.247, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.343 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.344 to i32) }], align 4
@rt5640_out_r_mix = internal constant [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.345, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.346 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.196, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.347 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.198, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.348 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.204, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.349 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.265, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.350 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.247, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.351 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.352 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.251, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.353 to i32) }], align 4
@rt5640_hpo_mix = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.354, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.355 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.297, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.356 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.298, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.357 to i32) }], align 4
@.str.322 = private unnamed_addr constant [9 x i8] c"Mono MIX\00", align 1
@rt5640_mono_mix = internal constant [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.358 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.247, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.359 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.285, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.360 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.283, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.361 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.198, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.362 to i32) }], align 4
@.str.323 = private unnamed_addr constant [21 x i8] c"Improve MONO Amp Drv\00", align 1
@.str.324 = private unnamed_addr constant [6 x i8] c"MONOP\00", align 1
@.str.325 = private unnamed_addr constant [6 x i8] c"MONON\00", align 1
@rt5640_specific_dapm_widgets = internal constant [16 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.316, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.317, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.318, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5640_dac_l2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.319, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5640_dac_r2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.294, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5640_sto_dac_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.295, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5640_sto_dac_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.320, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.321, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.292, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @rt5640_out_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.293, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 8, ptr @rt5640_out_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.296, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5640_hpo_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.299, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5640_hpo_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.322, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @rt5640_mono_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.323, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.324, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.325, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.327 = private unnamed_addr constant [25 x i8] c"DAC2 left channel source\00", align 1
@rt5640_dac_l2_enum = internal constant %struct.soc_enum { i32 46, i8 14, i8 14, i32 2, i32 3, ptr @rt5640_dac_l2_src, ptr @rt5640_dac_l2_values, i8 0 }, align 4
@rt5640_dac_l2_src = internal constant [2 x ptr] [ptr @.str.238, ptr @.str.328], align 4
@rt5640_dac_l2_values = internal global [2 x i32] [i32 0, i32 3], align 4
@.str.328 = private unnamed_addr constant [9 x i8] c"Base L/R\00", align 1
@.str.329 = private unnamed_addr constant [26 x i8] c"DAC2 right channel source\00", align 1
@rt5640_dac_r2_enum = internal constant %struct.soc_enum { i32 46, i8 12, i8 12, i32 1, i32 3, ptr @rt5640_dac_r2_src, ptr @rt5640_dac_r2_values, i8 0 }, align 4
@rt5640_dac_r2_src = internal constant [1 x ptr] [ptr @.str.238], align 4
@rt5640_dac_r2_values = internal global [1 x i32] zeroinitializer, align 4
@.compoundliteral.330 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 14, i32 14, i32 0, i8 1 }, align 4
@.compoundliteral.331 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 12, i32 12, i32 0, i8 1 }, align 4
@.str.332 = private unnamed_addr constant [11 x i8] c"ANC Switch\00", align 1
@.compoundliteral.333 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 10, i32 10, i32 0, i8 1 }, align 4
@.compoundliteral.334 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 6, i32 6, i32 0, i8 1 }, align 4
@.compoundliteral.335 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 4, i32 4, i32 0, i8 1 }, align 4
@.compoundliteral.336 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 2, i32 2, i32 0, i8 1 }, align 4
@.str.337 = private unnamed_addr constant [16 x i8] c"SPK MIXL Switch\00", align 1
@.compoundliteral.338 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 8, i32 8, i32 0, i8 1 }, align 4
@.compoundliteral.339 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 5, i32 5, i32 0, i8 1 }, align 4
@.compoundliteral.340 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 4, i32 4, i32 0, i8 1 }, align 4
@.compoundliteral.341 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 3, i32 3, i32 0, i8 1 }, align 4
@.compoundliteral.342 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 2, i32 2, i32 0, i8 1 }, align 4
@.compoundliteral.343 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 1, i32 1, i32 0, i8 1 }, align 4
@.compoundliteral.344 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.345 = private unnamed_addr constant [16 x i8] c"SPK MIXR Switch\00", align 1
@.compoundliteral.346 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 8, i32 8, i32 0, i8 1 }, align 4
@.compoundliteral.347 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 7, i32 7, i32 0, i8 1 }, align 4
@.compoundliteral.348 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 5, i32 5, i32 0, i8 1 }, align 4
@.compoundliteral.349 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 4, i32 4, i32 0, i8 1 }, align 4
@.compoundliteral.350 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 3, i32 3, i32 0, i8 1 }, align 4
@.compoundliteral.351 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 2, i32 2, i32 0, i8 1 }, align 4
@.compoundliteral.352 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 1, i32 1, i32 0, i8 1 }, align 4
@.compoundliteral.353 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.354 = private unnamed_addr constant [20 x i8] c"HPO MIX DAC2 Switch\00", align 1
@.compoundliteral.355 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 69, i32 69, i32 15, i32 15, i32 0, i8 1 }, align 4
@.compoundliteral.356 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 69, i32 69, i32 14, i32 14, i32 0, i8 1 }, align 4
@.compoundliteral.357 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 69, i32 69, i32 13, i32 13, i32 0, i8 1 }, align 4
@.compoundliteral.358 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 15, i32 15, i32 0, i8 1 }, align 4
@.compoundliteral.359 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 14, i32 14, i32 0, i8 1 }, align 4
@.compoundliteral.360 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 13, i32 13, i32 0, i8 1 }, align 4
@.compoundliteral.361 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 12, i32 12, i32 0, i8 1 }, align 4
@.compoundliteral.362 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 11, i32 11, i32 0, i8 1 }, align 4
@rt5639_sto_dac_l_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.364 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.247, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.365 to i32) }], align 4
@rt5639_sto_dac_r_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.251, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.366 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.367 to i32) }], align 4
@rt5639_out_l_mix = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.198, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.368 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.192, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.369 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.259, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.370 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.371 to i32) }], align 4
@rt5639_out_r_mix = internal constant [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.196, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.372 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.198, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.373 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.204, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.374 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.265, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.375 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.251, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.376 to i32) }], align 4
@rt5639_hpo_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.297, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.377 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.298, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.378 to i32) }], align 4
@rt5639_specific_dapm_widgets = internal constant [6 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.294, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5639_sto_dac_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.295, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5639_sto_dac_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.292, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5639_out_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.293, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @rt5639_out_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.296, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5639_hpo_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.299, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5639_hpo_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.compoundliteral.364 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 14, i32 14, i32 0, i8 1 }, align 4
@.compoundliteral.365 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 12, i32 12, i32 0, i8 1 }, align 4
@.compoundliteral.366 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 6, i32 6, i32 0, i8 1 }, align 4
@.compoundliteral.367 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 4, i32 4, i32 0, i8 1 }, align 4
@.compoundliteral.368 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 5, i32 5, i32 0, i8 1 }, align 4
@.compoundliteral.369 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 4, i32 4, i32 0, i8 1 }, align 4
@.compoundliteral.370 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 3, i32 3, i32 0, i8 1 }, align 4
@.compoundliteral.371 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 0, i32 0, i32 0, i8 1 }, align 4
@.compoundliteral.372 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 7, i32 7, i32 0, i8 1 }, align 4
@.compoundliteral.373 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 5, i32 5, i32 0, i8 1 }, align 4
@.compoundliteral.374 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 4, i32 4, i32 0, i8 1 }, align 4
@.compoundliteral.375 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 3, i32 3, i32 0, i8 1 }, align 4
@.compoundliteral.376 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 0, i32 0, i32 0, i8 1 }, align 4
@.compoundliteral.377 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 69, i32 69, i32 14, i32 14, i32 0, i8 1 }, align 4
@.compoundliteral.378 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 69, i32 69, i32 13, i32 13, i32 0, i8 1 }, align 4
@.str.379 = private unnamed_addr constant [30 x i8] c"Failed to reguest IRQ %d: %d\0A\00", align 1
@.str.380 = private unnamed_addr constant [15 x i8] c"rt5640-jd-gpio\00", align 1
@.str.381 = private unnamed_addr constant [38 x i8] c"Failed to request jd GPIO IRQ %d: %d\0A\00", align 1
@.str.382 = private unnamed_addr constant [12 x i8] c"rt5640-aif1\00", align 1
@rt5640_aif_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr @rt5640_set_dai_sysclk, ptr @rt5640_set_dai_pll, ptr null, ptr null, ptr @rt5640_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5640_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@.str.383 = private unnamed_addr constant [12 x i8] c"rt5640-aif2\00", align 1
@.str.384 = private unnamed_addr constant [23 x i8] c"Invalid clock id (%d)\0A\00", align 1
@.str.385 = private unnamed_addr constant [23 x i8] c"Unknown PLL source %d\0A\00", align 1
@.str.386 = private unnamed_addr constant [28 x i8] c"Unsupported input clock %d\0A\00", align 1
@.str.387 = private unnamed_addr constant [28 x i8] c"Failed to get sdp info: %d\0A\00", align 1
@.str.388 = private unnamed_addr constant [41 x i8] c"Unsupported clock setting %d for DAI %d\0A\00", align 1
@.str.389 = private unnamed_addr constant [28 x i8] c"Unsupported frame size: %d\0A\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_license257, ptr @__ksymtab_rt5640_detect_headset, ptr @__ksymtab_rt5640_disable_micbias1_for_ovcd, ptr @__ksymtab_rt5640_dmic_enable, ptr @__ksymtab_rt5640_enable_micbias1_for_ovcd, ptr @__ksymtab_rt5640_sel_asrc_clk_src, ptr @__ksymtab_rt5640_set_ovcd_params], section "llvm.metadata"
@switch.table.rt5640_hw_params = private unnamed_addr constant [5 x i32] [i32 12, i32 0, i32 0, i32 4, i32 8], align 4

@__mod_i2c__rt5640_i2c_id_device_table = dso_local alias [4 x %struct.i2c_device_id], ptr @rt5640_i2c_id
@__mod_of__rt5640_of_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @rt5640_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rt5640_dmic_enable(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rt5640_priv, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 192, i32 noundef 16384, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br i1 %1, label %11, label %16

11:                                               ; preds = %3
  %12 = load ptr, ptr %8, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 117, i32 noundef 2048, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %14 = load ptr, ptr %8, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 192, i32 noundef 12288, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %16

16:                                               ; preds = %11, %3
  br i1 %2, label %17, label %22

17:                                               ; preds = %16
  %18 = load ptr, ptr %8, align 4
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 117, i32 noundef 1024, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %20 = load ptr, ptr %8, align 4
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 192, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %22

22:                                               ; preds = %17, %16
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rt5640_sel_asrc_clk_src(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp ugt i32 %2, 1
  %5 = icmp eq i32 %1, 0
  %6 = or i1 %5, %4
  br i1 %6, label %65, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = and i32 %1, 1
  %13 = icmp eq i32 %12, 0
  %14 = shl nuw nsw i32 %2, 5
  %15 = shl nuw nsw i32 %12, 5
  %16 = select i1 %13, i32 0, i32 %14
  %17 = and i32 %1, 2
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %16, -32800
  %20 = shl nuw nsw i32 %2, 15
  %21 = or i32 %19, %20
  %22 = shl nuw nsw i32 %17, 14
  %23 = or i32 %22, %15
  %24 = select i1 %18, i32 %16, i32 %21
  %25 = and i32 %1, 4
  %26 = icmp eq i32 %25, 0
  %27 = and i32 %24, -16416
  %28 = shl nuw nsw i32 %2, 14
  %29 = or i32 %27, %28
  %30 = shl nuw nsw i32 %25, 12
  %31 = or i32 %23, %30
  %32 = select i1 %26, i32 %24, i32 %29
  %33 = and i32 %1, 8
  %34 = icmp eq i32 %33, 0
  %35 = and i32 %32, -2080
  %36 = shl nuw nsw i32 %2, 11
  %37 = or i32 %35, %36
  %38 = shl nuw nsw i32 %33, 8
  %39 = or i32 %31, %38
  %40 = select i1 %34, i32 %32, i32 %37
  %41 = and i32 %1, 16
  %42 = icmp eq i32 %41, 0
  %43 = and i32 %40, -8224
  %44 = shl nuw nsw i32 %2, 13
  %45 = or i32 %43, %44
  %46 = shl nuw nsw i32 %41, 9
  %47 = or i32 %39, %46
  %48 = select i1 %42, i32 %40, i32 %45
  %49 = and i32 %1, 32
  %50 = icmp eq i32 %49, 0
  %51 = and i32 %48, -4097
  %52 = shl nuw nsw i32 %2, 12
  %53 = or i32 %51, %52
  %54 = shl nuw nsw i32 %49, 7
  %55 = or i32 %47, %54
  %56 = select i1 %50, i32 %48, i32 %53
  %57 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 132, i32 noundef %55, i32 noundef %56) #9
  %58 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 132) #9
  %59 = icmp eq i32 %58, 0
  %60 = getelementptr inbounds %struct.rt5640_priv, ptr %11, i32 0, i32 15
  %61 = xor i1 %59, true
  %62 = zext i1 %61 to i8
  %63 = select i1 %59, i32 0, i32 3
  store i8 %62, ptr %60, align 1
  %64 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 187, i32 noundef 3, i32 noundef %63) #9
  br label %65

65:                                               ; preds = %7, %3
  %66 = phi i32 [ -22, %3 ], [ 0, %7 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt5640_enable_micbias1_for_ovcd(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %5) #9
  %6 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %2, ptr noundef nonnull @.str) #9
  %7 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %2, ptr noundef nonnull @.str.1) #9
  %8 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %2, ptr noundef nonnull @.str.2) #9
  %9 = tail call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %2) #9
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.snd_soc_card, ptr %10, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %11) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt5640_disable_micbias1_for_ovcd(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %5) #9
  %6 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %2, ptr noundef nonnull @.str.2) #9
  %7 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %2, ptr noundef nonnull @.str.1) #9
  %8 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %2, ptr noundef nonnull @.str) #9
  %9 = tail call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %2) #9
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.snd_soc_card, ptr %10, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %11) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rt5640_detect_headset(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  br label %5

5:                                                ; preds = %45, %2
  %6 = phi i32 [ 0, %2 ], [ %47, %45 ]
  %7 = phi i32 [ 0, %2 ], [ %46, %45 ]
  %8 = phi i32 [ 0, %2 ], [ %48, %45 ]
  %9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 190, i32 noundef 8, i32 noundef 0) #9
  tail call void @msleep(i32 noundef 100) #9
  br i1 %3, label %13, label %10

10:                                               ; preds = %5
  %11 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %1) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %35, label %52

13:                                               ; preds = %5
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.rt5640_priv, ptr %16, i32 0, i32 27
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = tail call i32 @gpiod_get_value(ptr noundef nonnull %18) #9
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 0, i32 16
  br label %26

24:                                               ; preds = %13
  %25 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 191) #9
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ %23, %20 ], [ %25, %24 ]
  %28 = getelementptr inbounds %struct.rt5640_priv, ptr %16, i32 0, i32 29
  %29 = load i8, ptr %28, align 4, !range !8
  %30 = icmp eq i8 %29, 0
  %31 = and i32 %27, 16
  %32 = icmp eq i32 %31, 0
  %33 = icmp ne i32 %31, 0
  %34 = select i1 %30, i1 %33, i1 %32
  br i1 %34, label %35, label %52

35:                                               ; preds = %26, %10
  %36 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 190) #9
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = add i32 %6, 1
  %41 = icmp eq i32 %40, 5
  br i1 %41, label %52, label %45

42:                                               ; preds = %35
  %43 = add i32 %7, 1
  %44 = icmp eq i32 %43, 5
  br i1 %44, label %52, label %45

45:                                               ; preds = %42, %39
  %46 = phi i32 [ 0, %39 ], [ %43, %42 ]
  %47 = phi i32 [ %40, %39 ], [ 0, %42 ]
  %48 = add nuw nsw i32 %8, 1
  %49 = icmp eq i32 %48, 20
  br i1 %49, label %50, label %5

50:                                               ; preds = %45
  %51 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.3) #10
  br label %52

52:                                               ; preds = %50, %42, %39, %26, %10
  %53 = phi i32 [ 1, %50 ], [ 3, %42 ], [ 1, %39 ], [ 0, %26 ], [ 0, %10 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt5640_set_ovcd_params(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 31
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, 43008
  %9 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 277, i32 noundef %8) #9
  %10 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 30
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, 2048
  %13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 147, i32 noundef 3584, i32 noundef %12) #9
  %14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 190, i32 noundef 2048, i32 noundef 2048) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @rt5640_i2c_driver) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #4 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @rt5640_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5640_i2c_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 212, i32 noundef 3520) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %74, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %5, ptr %8, align 8
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %10, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef null) #9
  %14 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 3
  store i32 %13, ptr %14, align 4
  %15 = icmp ult i32 %13, 2048
  %16 = icmp eq i32 %13, -2
  %17 = or i1 %15, %16
  br i1 %17, label %20, label %74

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 3
  store i32 -22, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %12
  %21 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @rt5640_regmap, ptr noundef null, ptr noundef null) #9
  %22 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = ptrtoint ptr %21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef %25) #10
  br label %74

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %28, 2048
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = tail call i32 @devm_gpio_request_one(ptr noundef %4, i32 noundef %28, i32 noundef 2, ptr noundef nonnull @.str.6) #9
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %34, i32 noundef %31) #10
  br label %74

35:                                               ; preds = %30
  tail call void @msleep(i32 noundef 400) #9
  %36 = load ptr, ptr %22, align 4
  br label %37

37:                                               ; preds = %35, %26
  %38 = phi ptr [ %36, %35 ], [ %21, %26 ]
  %39 = call i32 @regmap_read(ptr noundef %38, i32 noundef 255, ptr noundef nonnull %3) #9
  %40 = load i32, ptr %3, align 4
  %41 = icmp eq i32 %40, 25137
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %40) #10
  br label %74

43:                                               ; preds = %37
  %44 = load ptr, ptr %22, align 4
  %45 = call i32 @regmap_write(ptr noundef %44, i32 noundef 0, i32 noundef 0) #9
  %46 = load ptr, ptr %22, align 4
  %47 = call i32 @regmap_register_patch(ptr noundef %46, ptr noundef nonnull @init_list, i32 noundef 6) #9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef %47) #10
  br label %50

50:                                               ; preds = %49, %43
  %51 = load ptr, ptr %22, align 4
  %52 = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 250, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %53 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 14
  store i8 1, ptr %53, align 4
  %54 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 4
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 24
  store i32 -32, ptr %57, align 4
  %58 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 24, i32 0, i32 1
  store volatile ptr %58, ptr %58, align 4
  %59 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 24, i32 0, i32 1, i32 1
  store ptr %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 24, i32 0, i32 2
  store ptr @rt5640_button_press_work, ptr %60, align 4
  %61 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 24, i32 1
  call void @init_timer_key(ptr noundef %61, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #9
  %62 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 25
  store i32 -32, ptr %62, align 4
  %63 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 25, i32 0, i32 1
  store volatile ptr %63, ptr %63, align 4
  %64 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 25, i32 0, i32 1, i32 1
  store ptr %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 25, i32 0, i32 2
  store ptr @rt5640_jack_work, ptr %65, align 4
  %66 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 25, i32 1
  call void @init_timer_key(ptr noundef %66, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #9
  %67 = call i32 @devm_add_action(ptr noundef %4, ptr noundef nonnull @rt5640_cancel_work, ptr noundef nonnull %5) #9
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %50
  %70 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %62) #9
  %71 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %57) #9
  br label %74

72:                                               ; preds = %50
  %73 = call i32 @devm_snd_soc_register_component(ptr noundef %4, ptr noundef nonnull @soc_component_dev_rt5640, ptr noundef nonnull @rt5640_dai, i32 noundef 2) #9
  br label %74

74:                                               ; preds = %72, %69, %42, %33, %24, %12, %2
  %75 = phi i32 [ %25, %24 ], [ %31, %33 ], [ -19, %42 ], [ %73, %72 ], [ -12, %2 ], [ %13, %12 ], [ %67, %69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt5640_button_press_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -100
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rt5640_priv, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @gpiod_get_value(ptr noundef nonnull %9) #9
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 0, i32 16
  br label %17

15:                                               ; preds = %1
  %16 = tail call i32 @snd_soc_component_read(ptr noundef %3, i32 noundef 191) #9
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ %14, %11 ], [ %16, %15 ]
  %19 = getelementptr inbounds %struct.rt5640_priv, ptr %7, i32 0, i32 29
  %20 = load i8, ptr %19, align 4, !range !8
  %21 = icmp eq i8 %20, 0
  %22 = and i32 %18, 16
  %23 = icmp eq i32 %22, 0
  %24 = icmp ne i32 %22, 0
  %25 = select i1 %21, i1 %24, i1 %23
  br i1 %25, label %26, label %84

26:                                               ; preds = %17
  %27 = tail call i32 @snd_soc_component_read(ptr noundef %3, i32 noundef 190) #9
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %0, i32 -8
  store i32 0, ptr %31, align 4
  %32 = getelementptr i8, ptr %0, i32 -12
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4
  %35 = icmp sgt i32 %34, 2
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = getelementptr i8, ptr %0, i32 -15
  store i8 1, ptr %37, align 1
  br label %38

38:                                               ; preds = %36, %30
  %39 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 190, i32 noundef 8, i32 noundef 0) #9
  br label %45

40:                                               ; preds = %26
  %41 = getelementptr i8, ptr %0, i32 -12
  store i32 0, ptr %41, align 4
  %42 = getelementptr i8, ptr %0, i32 -8
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  br label %45

45:                                               ; preds = %40, %38
  %46 = getelementptr i8, ptr %0, i32 -4
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4
  %49 = icmp slt i32 %48, 8
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load ptr, ptr @system_wq, align 4
  %52 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %51, ptr noundef %0, i32 noundef 1) #9
  br label %84

53:                                               ; preds = %45
  %54 = getelementptr i8, ptr %0, i32 -15
  %55 = load i8, ptr %54, align 1, !range !8
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  %58 = getelementptr i8, ptr %0, i32 -14
  %59 = load i8, ptr %58, align 2, !range !8
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = getelementptr i8, ptr %0, i32 88
  %63 = load ptr, ptr %62, align 4
  tail call void @snd_soc_jack_report(ptr noundef %63, i32 noundef 16384, i32 noundef 16384) #9
  store i8 1, ptr %58, align 2
  br label %64

64:                                               ; preds = %61, %57, %53
  %65 = getelementptr i8, ptr %0, i32 -8
  %66 = load i32, ptr %65, align 4
  %67 = icmp sgt i32 %66, 2
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = getelementptr i8, ptr %0, i32 -14
  %70 = load i8, ptr %69, align 2, !range !8
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = getelementptr i8, ptr %0, i32 88
  %74 = load ptr, ptr %73, align 4
  tail call void @snd_soc_jack_report(ptr noundef %74, i32 noundef 0, i32 noundef 16384) #9
  br label %75

75:                                               ; preds = %72, %68
  %76 = load ptr, ptr %4, align 4
  %77 = getelementptr inbounds %struct.device, ptr %76, i32 0, i32 8
  %78 = load ptr, ptr %77, align 8
  %79 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 190, i32 noundef 32768, i32 noundef 32768) #9
  %80 = getelementptr inbounds %struct.rt5640_priv, ptr %78, i32 0, i32 18
  store i8 1, ptr %80, align 4
  br label %84

81:                                               ; preds = %64
  %82 = load ptr, ptr @system_wq, align 4
  %83 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %82, ptr noundef %0, i32 noundef 1) #9
  br label %84

84:                                               ; preds = %81, %75, %50, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt5640_jack_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -144
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 52
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 7
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = tail call i32 @snd_soc_component_read(ptr noundef %3, i32 noundef 191) #9
  %9 = and i32 %8, 16
  %10 = shl nuw nsw i32 %9, 7
  %11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 189, i32 noundef 2048, i32 noundef %10) #9
  %12 = lshr exact i32 %9, 3
  %13 = tail call i32 @snd_soc_component_read(ptr noundef %3, i32 noundef 251) #9
  %14 = and i32 %13, 2048
  %15 = lshr exact i32 %14, 1
  %16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 251, i32 noundef 1024, i32 noundef %15) #9
  %17 = lshr exact i32 %14, 11
  %18 = or i32 %17, %12
  %19 = xor i32 %18, 3
  %20 = getelementptr i8, ptr %0, i32 44
  %21 = load ptr, ptr %20, align 4
  tail call void @snd_soc_jack_report(ptr noundef %21, i32 noundef %19, i32 noundef 3) #9
  br label %137

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 8
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.rt5640_priv, ptr %26, i32 0, i32 27
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = tail call i32 @gpiod_get_value(ptr noundef nonnull %28) #9
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 0, i32 16
  br label %36

34:                                               ; preds = %22
  %35 = tail call i32 @snd_soc_component_read(ptr noundef %3, i32 noundef 191) #9
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i32 [ %33, %30 ], [ %35, %34 ]
  %38 = getelementptr inbounds %struct.rt5640_priv, ptr %26, i32 0, i32 29
  %39 = load i8, ptr %38, align 4, !range !8
  %40 = icmp eq i8 %39, 0
  %41 = and i32 %37, 16
  %42 = icmp eq i32 %41, 0
  %43 = icmp ne i32 %41, 0
  %44 = select i1 %40, i1 %43, i1 %42
  %45 = getelementptr i8, ptr %0, i32 44
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.snd_soc_jack, ptr %46, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %44, label %76, label %51

51:                                               ; preds = %36
  br i1 %50, label %137, label %52

52:                                               ; preds = %51
  %53 = and i32 %48, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %74, label %55

55:                                               ; preds = %52
  %56 = getelementptr i8, ptr %0, i32 -44
  %57 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %56) #9
  %58 = load ptr, ptr %23, align 4
  %59 = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 8
  %60 = load ptr, ptr %59, align 8
  %61 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 190, i32 noundef 32768, i32 noundef 0) #9
  %62 = getelementptr inbounds %struct.rt5640_priv, ptr %60, i32 0, i32 18
  store i8 0, ptr %62, align 4
  %63 = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 17
  %64 = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 17, i32 4
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.snd_soc_card, ptr %65, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %66) #9
  %67 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %63, ptr noundef nonnull @.str.2) #9
  %68 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %63, ptr noundef nonnull @.str.1) #9
  %69 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %63, ptr noundef nonnull @.str) #9
  %70 = tail call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %63) #9
  %71 = load ptr, ptr %64, align 4
  %72 = getelementptr inbounds %struct.snd_soc_card, ptr %71, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %72) #9
  %73 = load ptr, ptr %45, align 4
  br label %74

74:                                               ; preds = %55, %52
  %75 = phi ptr [ %73, %55 ], [ %46, %52 ]
  tail call void @snd_soc_jack_report(ptr noundef %75, i32 noundef 0, i32 noundef 16387) #9
  br label %137

76:                                               ; preds = %36
  %77 = getelementptr i8, ptr %0, i32 -60
  %78 = load i8, ptr %77, align 4, !range !8
  %79 = icmp eq i8 %78, 0
  br i1 %50, label %80, label %112

80:                                               ; preds = %76
  br i1 %79, label %82, label %81, !prof !10

81:                                               ; preds = %80
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2355, i32 noundef 9, ptr noundef null) #9
  br label %82

82:                                               ; preds = %81, %80
  %83 = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 17
  %84 = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 17, i32 4
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.snd_soc_card, ptr %85, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %86) #9
  %87 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %83, ptr noundef nonnull @.str) #9
  %88 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %83, ptr noundef nonnull @.str.1) #9
  %89 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %83, ptr noundef nonnull @.str.2) #9
  %90 = tail call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %83) #9
  %91 = load ptr, ptr %84, align 4
  %92 = getelementptr inbounds %struct.snd_soc_card, ptr %91, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %92) #9
  %93 = tail call i32 @rt5640_detect_headset(ptr noundef %3, ptr noundef null)
  %94 = icmp eq i32 %93, 3
  br i1 %94, label %95, label %101

95:                                               ; preds = %82
  %96 = load ptr, ptr %23, align 4
  %97 = getelementptr inbounds %struct.device, ptr %96, i32 0, i32 8
  %98 = load ptr, ptr %97, align 8
  %99 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 190, i32 noundef 32768, i32 noundef 32768) #9
  %100 = getelementptr inbounds %struct.rt5640_priv, ptr %98, i32 0, i32 18
  store i8 1, ptr %100, align 4
  br label %110

101:                                              ; preds = %82
  %102 = load ptr, ptr %84, align 4
  %103 = getelementptr inbounds %struct.snd_soc_card, ptr %102, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %103) #9
  %104 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %83, ptr noundef nonnull @.str.2) #9
  %105 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %83, ptr noundef nonnull @.str.1) #9
  %106 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %83, ptr noundef nonnull @.str) #9
  %107 = tail call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %83) #9
  %108 = load ptr, ptr %84, align 4
  %109 = getelementptr inbounds %struct.snd_soc_card, ptr %108, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %109) #9
  br label %110

110:                                              ; preds = %101, %95
  %111 = load ptr, ptr %45, align 4
  tail call void @snd_soc_jack_report(ptr noundef %111, i32 noundef %93, i32 noundef 3) #9
  br label %137

112:                                              ; preds = %76
  br i1 %79, label %137, label %113

113:                                              ; preds = %112
  %114 = tail call i32 @snd_soc_component_read(ptr noundef %3, i32 noundef 190) #9
  %115 = and i32 %114, 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %137, label %117

117:                                              ; preds = %113
  %118 = load ptr, ptr %23, align 4
  %119 = getelementptr inbounds %struct.device, ptr %118, i32 0, i32 8
  %120 = load ptr, ptr %119, align 8
  %121 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 190, i32 noundef 32768, i32 noundef 0) #9
  %122 = getelementptr inbounds %struct.rt5640_priv, ptr %120, i32 0, i32 18
  store i8 0, ptr %122, align 4
  %123 = load ptr, ptr %23, align 4
  %124 = getelementptr inbounds %struct.device, ptr %123, i32 0, i32 8
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr inbounds %struct.rt5640_priv, ptr %125, i32 0, i32 23
  store i32 0, ptr %126, align 4
  %127 = getelementptr inbounds %struct.rt5640_priv, ptr %125, i32 0, i32 21
  store i32 0, ptr %127, align 4
  %128 = getelementptr inbounds %struct.rt5640_priv, ptr %125, i32 0, i32 22
  store i32 0, ptr %128, align 4
  %129 = getelementptr inbounds %struct.rt5640_priv, ptr %125, i32 0, i32 19
  store i8 0, ptr %129, align 1
  %130 = getelementptr inbounds %struct.rt5640_priv, ptr %125, i32 0, i32 20
  store i8 0, ptr %130, align 2
  %131 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 190, i32 noundef 8, i32 noundef 0) #9
  %132 = getelementptr inbounds %struct.rt5640_priv, ptr %125, i32 0, i32 24
  %133 = load ptr, ptr @system_wq, align 4
  %134 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %133, ptr noundef %132, i32 noundef 1) #9
  %135 = load ptr, ptr @system_long_wq, align 4
  %136 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %135, ptr noundef %0, i32 noundef 0) #9
  br label %137

137:                                              ; preds = %117, %113, %112, %110, %74, %51, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt5640_cancel_work(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rt5640_priv, ptr %0, i32 0, i32 25
  %3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %2) #9
  %4 = getelementptr inbounds %struct.rt5640_priv, ptr %0, i32 0, i32 24
  %5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5640_readable_register(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = and i32 %1, -2
  %4 = icmp eq i32 %3, 108
  %5 = add i32 %1, -256
  %6 = icmp ult i32 %5, 181
  %7 = or i1 %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  switch i32 %1, label %9 [
    i32 0, label %10
    i32 1, label %10
    i32 2, label %10
    i32 3, label %10
    i32 4, label %10
    i32 13, label %10
    i32 14, label %10
    i32 15, label %10
    i32 25, label %10
    i32 26, label %10
    i32 27, label %10
    i32 28, label %10
    i32 29, label %10
    i32 30, label %10
    i32 39, label %10
    i32 40, label %10
    i32 41, label %10
    i32 42, label %10
    i32 43, label %10
    i32 44, label %10
    i32 45, label %10
    i32 46, label %10
    i32 47, label %10
    i32 59, label %10
    i32 60, label %10
    i32 61, label %10
    i32 62, label %10
    i32 69, label %10
    i32 70, label %10
    i32 71, label %10
    i32 72, label %10
    i32 73, label %10
    i32 74, label %10
    i32 76, label %10
    i32 77, label %10
    i32 78, label %10
    i32 79, label %10
    i32 80, label %10
    i32 81, label %10
    i32 82, label %10
    i32 83, label %10
    i32 97, label %10
    i32 98, label %10
    i32 99, label %10
    i32 100, label %10
    i32 101, label %10
    i32 102, label %10
    i32 106, label %10
    i32 108, label %10
    i32 112, label %10
    i32 113, label %10
    i32 115, label %10
    i32 116, label %10
    i32 117, label %10
    i32 128, label %10
    i32 129, label %10
    i32 130, label %10
    i32 131, label %10
    i32 132, label %10
    i32 133, label %10
    i32 137, label %10
    i32 138, label %10
    i32 139, label %10
    i32 140, label %10
    i32 141, label %10
    i32 142, label %10
    i32 143, label %10
    i32 144, label %10
    i32 145, label %10
    i32 146, label %10
    i32 147, label %10
    i32 176, label %10
    i32 177, label %10
    i32 178, label %10
    i32 180, label %10
    i32 181, label %10
    i32 182, label %10
    i32 183, label %10
    i32 184, label %10
    i32 185, label %10
    i32 186, label %10
    i32 187, label %10
    i32 188, label %10
    i32 189, label %10
    i32 190, label %10
    i32 191, label %10
    i32 192, label %10
    i32 193, label %10
    i32 194, label %10
    i32 196, label %10
    i32 197, label %10
    i32 198, label %10
    i32 199, label %10
    i32 200, label %10
    i32 201, label %10
    i32 202, label %10
    i32 203, label %10
    i32 204, label %10
    i32 205, label %10
    i32 206, label %10
    i32 207, label %10
    i32 208, label %10
    i32 209, label %10
    i32 210, label %10
    i32 211, label %10
    i32 214, label %10
    i32 215, label %10
    i32 217, label %10
    i32 218, label %10
    i32 250, label %10
    i32 251, label %10
    i32 252, label %10
    i32 253, label %10
    i32 254, label %10
    i32 255, label %10
  ]

9:                                                ; preds = %8
  br label %10

10:                                               ; preds = %9, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %2
  %11 = phi i1 [ false, %9 ], [ true, %2 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ]
  ret i1 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5640_volatile_register(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = and i32 %1, -2
  %4 = icmp eq i32 %3, 108
  %5 = add i32 %1, -256
  %6 = icmp ult i32 %5, 181
  %7 = or i1 %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  switch i32 %1, label %9 [
    i32 0, label %10
    i32 138, label %10
    i32 176, label %10
    i32 180, label %10
    i32 184, label %10
    i32 190, label %10
    i32 191, label %10
    i32 197, label %10
    i32 198, label %10
    i32 106, label %10
    i32 108, label %10
    i32 200, label %10
    i32 202, label %10
    i32 251, label %10
    i32 253, label %10
    i32 254, label %10
    i32 255, label %10
  ]

9:                                                ; preds = %8
  br label %10

10:                                               ; preds = %9, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %2
  %11 = phi i1 [ false, %9 ], [ true, %2 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ], [ true, %8 ]
  ret i1 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5640_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %4 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !9
  %8 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.300) #9
  %9 = getelementptr inbounds %struct.rt5640_priv, ptr %7, i32 0, i32 2
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, inttoptr (i32 -517 to ptr)
  br i1 %10, label %108, label %11

11:                                               ; preds = %1
  store ptr %0, ptr %7, align 4
  %12 = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %3, i32 noundef 0) #9
  %13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 250, i32 noundef 769, i32 noundef 769) #9
  %14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 147, i32 noundef 48, i32 noundef 48) #9
  %15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 46, i32 noundef 64512, i32 noundef 3072) #9
  %16 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 0) #9
  %17 = and i32 %16, 6
  switch i32 %17, label %25 [
    i32 4, label %18
    i32 6, label %18
    i32 0, label %22
  ]

18:                                               ; preds = %11, %11
  %19 = tail call i32 @snd_soc_add_component_controls(ptr noundef %0, ptr noundef nonnull @rt5640_specific_snd_controls, i32 noundef 1) #9
  %20 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %3, ptr noundef nonnull @rt5640_specific_dapm_widgets, i32 noundef 16) #9
  %21 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %3, ptr noundef nonnull @rt5640_specific_dapm_routes, i32 noundef 41) #9
  br label %27

22:                                               ; preds = %11
  %23 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %3, ptr noundef nonnull @rt5639_specific_dapm_widgets, i32 noundef 6) #9
  %24 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %3, ptr noundef nonnull @rt5639_specific_dapm_routes, i32 noundef 10) #9
  br label %27

25:                                               ; preds = %11
  %26 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.301) #10
  br label %108

27:                                               ; preds = %22, %18
  %28 = load ptr, ptr %4, align 4
  %29 = tail call zeroext i1 @device_property_present(ptr noundef %28, ptr noundef nonnull @.str.302) #9
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 13, i32 noundef 128, i32 noundef 128) #9
  br label %32

32:                                               ; preds = %30, %27
  %33 = load ptr, ptr %4, align 4
  %34 = tail call zeroext i1 @device_property_present(ptr noundef %33, ptr noundef nonnull @.str.303) #9
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 14, i32 noundef 64, i32 noundef 64) #9
  br label %37

37:                                               ; preds = %35, %32
  %38 = load ptr, ptr %4, align 4
  %39 = tail call zeroext i1 @device_property_present(ptr noundef %38, ptr noundef nonnull @.str.304) #9
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 13, i32 noundef 64, i32 noundef 64) #9
  br label %42

42:                                               ; preds = %40, %37
  %43 = load ptr, ptr %4, align 4
  %44 = call i32 @device_property_read_u32_array(ptr noundef %43, ptr noundef nonnull @.str.305, ptr noundef nonnull %2, i32 noundef 1) #9
  %45 = icmp eq i32 %44, 0
  %46 = load i32, ptr %2, align 4
  %47 = icmp ne i32 %46, 0
  %48 = select i1 %45, i1 %47, i1 false
  %49 = load ptr, ptr %4, align 4
  %50 = call i32 @device_property_read_u32_array(ptr noundef %49, ptr noundef nonnull @.str.306, ptr noundef nonnull %2, i32 noundef 1) #9
  %51 = icmp eq i32 %50, 0
  %52 = load i32, ptr %2, align 4
  %53 = icmp ne i32 %52, 0
  %54 = select i1 %51, i1 %53, i1 false
  %55 = select i1 %54, i1 true, i1 %48
  br i1 %55, label %56, label %62

56:                                               ; preds = %42
  %57 = icmp ne i32 %46, 1
  %58 = select i1 %48, i1 %57, i1 false
  %59 = icmp ne i32 %52, 1
  %60 = select i1 %54, i1 %59, i1 false
  %61 = call i32 @rt5640_dmic_enable(ptr noundef %0, i1 noundef zeroext %58, i1 noundef zeroext %60)
  br label %62

62:                                               ; preds = %56, %42
  %63 = load ptr, ptr %4, align 4
  %64 = call i32 @device_property_read_u32_array(ptr noundef %63, ptr noundef nonnull @.str.307, ptr noundef nonnull %2, i32 noundef 1) #9
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load i32, ptr %2, align 4
  %68 = icmp ult i32 %67, 7
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = shl nuw nsw i32 %67, 13
  %71 = getelementptr inbounds %struct.rt5640_priv, ptr %7, i32 0, i32 28
  store i32 %70, ptr %71, align 4
  br label %79

72:                                               ; preds = %66
  %73 = icmp eq i32 %67, 7
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.rt5640_priv, ptr %7, i32 0, i32 28
  store i32 7, ptr %75, align 4
  %76 = call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 250, i32 noundef 768, i32 noundef 0) #9
  br label %79

77:                                               ; preds = %72
  %78 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %78, ptr noundef nonnull @.str.308, i32 noundef %67) #10
  br label %79

79:                                               ; preds = %77, %74, %69, %62
  %80 = load ptr, ptr %4, align 4
  %81 = call zeroext i1 @device_property_present(ptr noundef %80, ptr noundef nonnull @.str.309) #9
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.rt5640_priv, ptr %7, i32 0, i32 29
  store i8 1, ptr %83, align 4
  br label %84

84:                                               ; preds = %82, %79
  %85 = getelementptr inbounds %struct.rt5640_priv, ptr %7, i32 0, i32 30
  store i32 1024, ptr %85, align 4
  %86 = getelementptr inbounds %struct.rt5640_priv, ptr %7, i32 0, i32 31
  store i32 256, ptr %86, align 4
  %87 = load ptr, ptr %4, align 4
  %88 = call i32 @device_property_read_u32_array(ptr noundef %87, ptr noundef nonnull @.str.310, ptr noundef nonnull %2, i32 noundef 1) #9
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load i32, ptr %2, align 4
  switch i32 %91, label %95 [
    i32 600, label %92
    i32 1500, label %93
    i32 2000, label %94
  ]

92:                                               ; preds = %90
  store i32 0, ptr %85, align 4
  br label %97

93:                                               ; preds = %90
  store i32 512, ptr %85, align 4
  br label %97

94:                                               ; preds = %90
  store i32 1024, ptr %85, align 4
  br label %97

95:                                               ; preds = %90
  %96 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %96, ptr noundef nonnull @.str.311, i32 noundef %91) #10
  br label %97

97:                                               ; preds = %95, %94, %93, %92, %84
  %98 = load ptr, ptr %4, align 4
  %99 = call i32 @device_property_read_u32_array(ptr noundef %98, ptr noundef nonnull @.str.312, ptr noundef nonnull %2, i32 noundef 1) #9
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = load i32, ptr %2, align 4
  %103 = icmp ult i32 %102, 4
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = shl nuw nsw i32 %102, 8
  store i32 %105, ptr %86, align 4
  br label %108

106:                                              ; preds = %101
  %107 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %107, ptr noundef nonnull @.str.313, i32 noundef %102) #10
  br label %108

108:                                              ; preds = %106, %104, %97, %25, %1
  %109 = phi i32 [ -19, %25 ], [ -517, %1 ], [ 0, %104 ], [ 0, %106 ], [ 0, %97 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt5640_remove(ptr noundef %0) #0 {
  %2 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 0, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5640_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 25
  %7 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %6) #9
  %8 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 24
  %9 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %8) #9
  %10 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %11 = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %10, i32 noundef 0) #9
  %12 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 0, i32 noundef 0) #9
  %13 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void @regcache_cache_only(ptr noundef %14, i1 noundef zeroext true) #9
  %15 = load ptr, ptr %13, align 4
  tail call void @regcache_mark_dirty(ptr noundef %15) #9
  %16 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %17, 2048
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = tail call ptr @gpio_to_desc(i32 noundef %17) #9
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %20, i32 noundef 0) #9
  br label %21

21:                                               ; preds = %19, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5640_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 2048
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = tail call ptr @gpio_to_desc(i32 noundef %7) #9
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %10, i32 noundef 1) #9
  tail call void @msleep(i32 noundef 400) #9
  br label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void @regcache_cache_only(ptr noundef %13, i1 noundef zeroext false) #9
  %14 = load ptr, ptr %12, align 4
  %15 = tail call i32 @regcache_sync(ptr noundef %14) #9
  %16 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 26
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 28
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 7
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 251, i32 noundef 4352, i32 noundef 4352) #9
  br label %27

25:                                               ; preds = %19
  %26 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 251, i32 noundef 16385) #9
  br label %27

27:                                               ; preds = %25, %23
  %28 = load ptr, ptr @system_long_wq, align 4
  %29 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 25
  %30 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %28, ptr noundef %29, i32 noundef 0) #9
  br label %31

31:                                               ; preds = %27, %11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5640_set_jack(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %1, null
  br i1 %8, label %111, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rt5640_priv, ptr %7, i32 0, i32 28
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 7
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 187, i32 noundef 57344, i32 noundef 16384) #9
  %15 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 189, i32 noundef 32768) #9
  %16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 251, i32 noundef 4352, i32 noundef 4352) #9
  %17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 192, i32 noundef 32768, i32 noundef 32768) #9
  %18 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 194, i32 noundef 4, i32 noundef 4) #9
  %19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 250, i32 noundef 1024, i32 noundef 0) #9
  %20 = getelementptr inbounds %struct.rt5640_priv, ptr %7, i32 0, i32 26
  store ptr %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.rt5640_priv, ptr %7, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @request_threaded_irq(i32 noundef %22, ptr noundef nonnull @rt5640_irq, ptr noundef null, i32 noundef 8193, ptr noundef nonnull @.str.4, ptr noundef %7) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %13
  %26 = load ptr, ptr %4, align 4
  %27 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.379, i32 noundef %27, i32 noundef %23) #10
  store i32 -6, ptr %21, align 4
  br label %112

28:                                               ; preds = %13
  %29 = load ptr, ptr @system_long_wq, align 4
  %30 = getelementptr inbounds %struct.rt5640_priv, ptr %7, i32 0, i32 25
  %31 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %29, ptr noundef %30, i32 noundef 0) #9
  br label %112

32:                                               ; preds = %9
  %33 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 187, i32 noundef 57344, i32 noundef %11) #9
  %34 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 192, i32 noundef 32768, i32 noundef 32768) #9
  %35 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 194, i32 noundef 4, i32 noundef 4) #9
  %36 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 250, i32 noundef 16193) #9
  %37 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 251, i32 noundef 16385) #9
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 8
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.rt5640_priv, ptr %40, i32 0, i32 31
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, 43008
  %44 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 277, i32 noundef %43) #9
  %45 = getelementptr inbounds %struct.rt5640_priv, ptr %40, i32 0, i32 30
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, 2048
  %48 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 147, i32 noundef 3584, i32 noundef %47) #9
  %49 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 190, i32 noundef 2048, i32 noundef 2048) #9
  %50 = getelementptr inbounds %struct.rt5640_priv, ptr %7, i32 0, i32 29
  %51 = load i8, ptr %50, align 4, !range !8
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %52, i32 34816, i32 32768
  %54 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 189, i32 noundef %53) #9
  %55 = getelementptr inbounds %struct.rt5640_priv, ptr %7, i32 0, i32 26
  store ptr %1, ptr %55, align 4
  %56 = getelementptr inbounds %struct.snd_soc_jack, ptr %1, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %32
  %61 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %62 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17, i32 4
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.snd_soc_card, ptr %63, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %64) #9
  %65 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %61, ptr noundef nonnull @.str) #9
  %66 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %61, ptr noundef nonnull @.str.1) #9
  %67 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %61, ptr noundef nonnull @.str.2) #9
  %68 = tail call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %61) #9
  %69 = load ptr, ptr %62, align 4
  %70 = getelementptr inbounds %struct.snd_soc_card, ptr %69, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %70) #9
  %71 = load ptr, ptr %4, align 4
  %72 = getelementptr inbounds %struct.device, ptr %71, i32 0, i32 8
  %73 = load ptr, ptr %72, align 8
  %74 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 190, i32 noundef 32768, i32 noundef 32768) #9
  %75 = getelementptr inbounds %struct.rt5640_priv, ptr %73, i32 0, i32 18
  store i8 1, ptr %75, align 4
  br label %76

76:                                               ; preds = %60, %32
  %77 = icmp eq ptr %2, null
  br i1 %77, label %98, label %78

78:                                               ; preds = %76
  %79 = load i32, ptr %2, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.rt5640_priv, ptr %7, i32 0, i32 4
  store i32 %79, ptr %82, align 4
  br label %83

83:                                               ; preds = %81, %78
  %84 = getelementptr inbounds %struct.rt5640_set_jack_data, ptr %2, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %98, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.rt5640_priv, ptr %7, i32 0, i32 27
  store ptr %85, ptr %88, align 4
  %89 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %85) #9
  %90 = getelementptr inbounds %struct.rt5640_priv, ptr %7, i32 0, i32 5
  store i32 %89, ptr %90, align 4
  %91 = tail call i32 @request_threaded_irq(i32 noundef %89, ptr noundef nonnull @rt5640_jd_gpio_irq, ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.380, ptr noundef %7) #9
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %87
  %94 = load ptr, ptr %4, align 4
  %95 = load i32, ptr %90, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %94, ptr noundef nonnull @.str.381, i32 noundef %95, i32 noundef %91) #10
  tail call fastcc void @rt5640_disable_jack_detect(ptr noundef %0) #9
  br label %112

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.rt5640_priv, ptr %7, i32 0, i32 17
  store i8 1, ptr %97, align 1
  br label %98

98:                                               ; preds = %96, %83, %76
  %99 = getelementptr inbounds %struct.rt5640_priv, ptr %7, i32 0, i32 4
  %100 = load i32, ptr %99, align 4
  %101 = tail call i32 @request_threaded_irq(i32 noundef %100, ptr noundef nonnull @rt5640_irq, ptr noundef null, i32 noundef 8195, ptr noundef nonnull @.str.4, ptr noundef %7) #9
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load ptr, ptr %4, align 4
  %105 = load i32, ptr %99, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %104, ptr noundef nonnull @.str.379, i32 noundef %105, i32 noundef %101) #10
  tail call fastcc void @rt5640_disable_jack_detect(ptr noundef %0) #9
  br label %112

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.rt5640_priv, ptr %7, i32 0, i32 16
  store i8 1, ptr %107, align 2
  %108 = load ptr, ptr @system_long_wq, align 4
  %109 = getelementptr inbounds %struct.rt5640_priv, ptr %7, i32 0, i32 25
  %110 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %108, ptr noundef %109, i32 noundef 0) #9
  br label %112

111:                                              ; preds = %3
  tail call fastcc void @rt5640_disable_jack_detect(ptr noundef %0)
  br label %112

112:                                              ; preds = %111, %106, %103, %93, %28, %25
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5640_set_bias_level(ptr noundef %0, i32 noundef %1) #0 {
  switch i32 %1, label %42 [
    i32 0, label %32
    i32 2, label %3
    i32 1, label %23
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rt5640_priv, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %42, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @clk_disable(ptr noundef %9) #9
  tail call void @clk_unprepare(ptr noundef %9) #9
  br label %42

16:                                               ; preds = %11
  %17 = tail call i32 @clk_prepare(ptr noundef %9) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %16
  %20 = tail call i32 @clk_enable(ptr noundef %9) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %19
  tail call void @clk_unprepare(ptr noundef %9) #9
  br label %42

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 99, i32 noundef 43024, i32 noundef 43024) #9
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #9
  %29 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 99, i32 noundef 16392, i32 noundef 16392) #9
  %30 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 250, i32 noundef 1, i32 noundef 1) #9
  %31 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 147, i32 noundef 48, i32 noundef 48) #9
  br label %42

32:                                               ; preds = %2
  %33 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 142, i32 noundef 4) #9
  %34 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 143, i32 noundef 4352) #9
  %35 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 250, i32 noundef 1, i32 noundef 0) #9
  %36 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 97, i32 noundef 0) #9
  %37 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 98, i32 noundef 0) #9
  %38 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 102, i32 noundef 0) #9
  %39 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 101, i32 noundef 0) #9
  %40 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 99, i32 noundef 0) #9
  %41 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 100, i32 noundef 0) #9
  br label %42

42:                                               ; preds = %32, %27, %23, %22, %19, %16, %15, %3, %2
  %43 = phi i32 [ 0, %19 ], [ 0, %2 ], [ 0, %23 ], [ 0, %27 ], [ 0, %15 ], [ 0, %3 ], [ 0, %32 ], [ %20, %22 ], [ %17, %16 ]
  ret i32 %43
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_dmic_clk(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -92
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.rt5640_priv, ptr %9, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rt5640_priv, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @rl6231_get_pre_div(ptr noundef %13, i32 noundef 115, i32 noundef 12) #9
  %15 = sdiv i32 %11, %14
  %16 = tail call i32 @rl6231_calc_dmic_clk(i32 noundef %15) #9
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.189) #10
  br label %24

20:                                               ; preds = %3
  %21 = getelementptr i8, ptr %5, i32 -104
  %22 = shl i32 %16, 5
  %23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %21, i32 noundef 117, i32 noundef 224, i32 noundef %22) #9
  br label %24

24:                                               ; preds = %20, %18
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5640_hp_power_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -104
  tail call fastcc void @hp_amp_power_on(ptr noundef %8)
  br label %9

9:                                                ; preds = %5, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5640_hp_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -92
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  switch i32 %2, label %27 [
    i32 2, label %10
    i32 4, label %25
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.rt5640_priv, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 143, i32 noundef 8256, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %14 = load ptr, ptr %11, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 145, i32 noundef 768, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %16 = load ptr, ptr %11, align 4
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 144, i32 noundef 1911, i32 noundef 1847, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %18 = load ptr, ptr %11, align 4
  %19 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 311, i32 noundef 7168) #9
  %20 = load ptr, ptr %11, align 4
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 142, i32 noundef 12, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %22 = load ptr, ptr %11, align 4
  %23 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 292, i32 noundef 1792, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %24 = getelementptr inbounds %struct.rt5640_priv, ptr %9, i32 0, i32 14
  store i8 0, ptr %24, align 4
  br label %27

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.rt5640_priv, ptr %9, i32 0, i32 14
  store i8 1, ptr %26, align 4
  tail call void @msleep(i32 noundef 70) #9
  br label %27

27:                                               ; preds = %25, %10, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5640_lout_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  switch i32 %2, label %13 [
    i32 2, label %7
    i32 4, label %10
  ]

7:                                                ; preds = %3
  tail call fastcc void @hp_amp_power_on(ptr noundef %6)
  %8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 99, i32 noundef 4096, i32 noundef 4096) #9
  %9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 3, i32 noundef 32896, i32 noundef 0) #9
  br label %13

10:                                               ; preds = %3
  %11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 3, i32 noundef 32896, i32 noundef 32896) #9
  %12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 99, i32 noundef 4096, i32 noundef 0) #9
  br label %13

13:                                               ; preds = %10, %7, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5640_hp_post_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -92
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.rt5640_priv, ptr %11, i32 0, i32 14
  %13 = load i8, ptr %12, align 4, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  tail call void @msleep(i32 noundef 80) #9
  br label %16

16:                                               ; preds = %15, %5, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_get_pre_div(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_calc_dmic_clk(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hp_amp_power_on(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 292, i32 noundef 1792, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %9 = load ptr, ptr %6, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 143, i32 noundef 8192, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %11 = load ptr, ptr %6, align 4
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 142, i32 noundef 13, i32 noundef 9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %13 = load ptr, ptr %6, align 4
  %14 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 375, i32 noundef 40704) #9
  %15 = load ptr, ptr %6, align 4
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 99, i32 noundef 16392, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %17 = load ptr, ptr %6, align 4
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 99, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #9
  %19 = load ptr, ptr %6, align 4
  %20 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 99, i32 noundef 16392, i32 noundef 16392, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @is_using_asrc(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #6 {
  %3 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -92
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.rt5640_priv, ptr %8, i32 0, i32 15
  %10 = load i8, ptr %9, align 1, !range !8
  %11 = zext i8 %10 to i32
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_bias_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rt5640_disable_jack_detect(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 26
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %54, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 17
  %11 = load i8, ptr %10, align 1, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @free_irq(i32 noundef %15, ptr noundef %5) #9
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 16
  %19 = load i8, ptr %18, align 2, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = tail call ptr @free_irq(i32 noundef %23, ptr noundef %5) #9
  br label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 25
  %27 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %26) #9
  %28 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 24
  %29 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %28) #9
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr inbounds %struct.snd_soc_jack, ptr %30, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %25
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 8
  %38 = load ptr, ptr %37, align 8
  %39 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 190, i32 noundef 32768, i32 noundef 0) #9
  %40 = getelementptr inbounds %struct.rt5640_priv, ptr %38, i32 0, i32 18
  store i8 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %42 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.snd_soc_card, ptr %43, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %44) #9
  %45 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %41, ptr noundef nonnull @.str.2) #9
  %46 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %41, ptr noundef nonnull @.str.1) #9
  %47 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %41, ptr noundef nonnull @.str) #9
  %48 = tail call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %41) #9
  %49 = load ptr, ptr %42, align 4
  %50 = getelementptr inbounds %struct.snd_soc_card, ptr %49, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %50) #9
  %51 = load ptr, ptr %6, align 4
  tail call void @snd_soc_jack_report(ptr noundef %51, i32 noundef 0, i32 noundef 16384) #9
  br label %52

52:                                               ; preds = %35, %25
  store i8 0, ptr %10, align 1
  store i8 0, ptr %18, align 2
  %53 = getelementptr inbounds %struct.rt5640_priv, ptr %5, i32 0, i32 27
  store ptr null, ptr %53, align 4
  store ptr null, ptr %6, align 4
  br label %54

54:                                               ; preds = %52, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5640_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rt5640_priv, ptr %1, i32 0, i32 26
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @system_long_wq, align 4
  %8 = getelementptr inbounds %struct.rt5640_priv, ptr %1, i32 0, i32 25
  %9 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %7, ptr noundef %8, i32 noundef 0) #9
  br label %10

10:                                               ; preds = %6, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5640_jd_gpio_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @system_long_wq, align 4
  %4 = getelementptr inbounds %struct.rt5640_priv, ptr %1, i32 0, i32 25
  %5 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %4, i32 noundef 10) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5640_set_dai_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rt5640_priv, ptr %10, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.rt5640_priv, ptr %10, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %28, label %18

18:                                               ; preds = %14, %4
  switch i32 %1, label %21 [
    i32 0, label %22
    i32 1, label %19
    i32 3, label %20
  ]

19:                                               ; preds = %18
  br label %22

20:                                               ; preds = %18
  br label %22

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.384, i32 noundef %1) #10
  br label %28

22:                                               ; preds = %20, %19, %18
  %23 = phi i32 [ 32768, %20 ], [ 16384, %19 ], [ %1, %18 ]
  %24 = phi i32 [ 0, %20 ], [ 512, %19 ], [ %1, %18 ]
  %25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 100, i32 noundef 512, i32 noundef %24) #9
  %26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 128, i32 noundef 49152, i32 noundef %23) #9
  store i32 %2, ptr %11, align 4
  %27 = getelementptr inbounds %struct.rt5640_priv, ptr %10, i32 0, i32 7
  store i32 %1, ptr %27, align 4
  br label %28

28:                                               ; preds = %22, %21, %14
  %29 = phi i32 [ -22, %21 ], [ 0, %22 ], [ 0, %14 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5640_set_dai_pll(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.rl6231_pll_code, align 4
  %7 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_component, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !9
  %13 = getelementptr inbounds %struct.rt5640_priv, ptr %12, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %16, label %24

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.rt5640_priv, ptr %12, i32 0, i32 12
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %3
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rt5640_priv, ptr %12, i32 0, i32 13
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %4
  br i1 %23, label %63, label %24

24:                                               ; preds = %20, %16, %5
  %25 = icmp ne i32 %3, 0
  %26 = icmp ne i32 %4, 0
  %27 = and i1 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rt5640_priv, ptr %12, i32 0, i32 12
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.rt5640_priv, ptr %12, i32 0, i32 13
  store i32 0, ptr %30, align 4
  %31 = tail call i32 @snd_soc_component_update_bits(ptr noundef %8, i32 noundef 128, i32 noundef 49152, i32 noundef 0) #9
  br label %63

32:                                               ; preds = %24
  %33 = icmp ult i32 %2, 3
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  %35 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.385, i32 noundef %2) #10
  br label %63

36:                                               ; preds = %32
  %37 = shl i32 %2, 12
  %38 = tail call i32 @snd_soc_component_update_bits(ptr noundef %8, i32 noundef 128, i32 noundef 12288, i32 noundef %37) #9
  %39 = call i32 @rl6231_pll_calc(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %6) #9
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.386, i32 noundef %3) #10
  br label %63

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.rl6231_pll_code, ptr %6, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = shl i32 %45, 7
  %47 = getelementptr inbounds %struct.rl6231_pll_code, ptr %6, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %46, %48
  %50 = call i32 @snd_soc_component_write(ptr noundef %8, i32 noundef 129, i32 noundef %49) #9
  %51 = load i8, ptr %6, align 4, !range !8
  %52 = icmp eq i8 %51, 0
  %53 = getelementptr inbounds %struct.rl6231_pll_code, ptr %6, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = shl i32 %54, 12
  %56 = select i1 %52, i32 %55, i32 0
  %57 = zext i8 %51 to i32
  %58 = shl nuw nsw i32 %57, 11
  %59 = or i32 %56, %58
  %60 = call i32 @snd_soc_component_write(ptr noundef %8, i32 noundef 130, i32 noundef %59) #9
  %61 = getelementptr inbounds %struct.rt5640_priv, ptr %12, i32 0, i32 12
  store i32 %3, ptr %61, align 4
  %62 = getelementptr inbounds %struct.rt5640_priv, ptr %12, i32 0, i32 13
  store i32 %4, ptr %62, align 4
  store i32 %2, ptr %13, align 4
  br label %63

63:                                               ; preds = %43, %41, %34, %28, %20
  %64 = phi i32 [ -22, %34 ], [ %39, %41 ], [ 0, %43 ], [ 0, %28 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5640_set_dai_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = trunc i32 %1 to i16
  %10 = and i16 %9, -4096
  switch i16 %10, label %49 [
    i16 4096, label %12
    i16 16384, label %11
  ]

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %2
  %13 = phi i32 [ 0, %11 ], [ 1, %2 ]
  %14 = phi i32 [ 32768, %11 ], [ 0, %2 ]
  %15 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.rt5640_priv, ptr %8, i32 0, i32 10, i32 %16
  store i32 %13, ptr %17, align 4
  %18 = and i32 %1, 3840
  switch i32 %18, label %49 [
    i32 0, label %21
    i32 768, label %19
  ]

19:                                               ; preds = %12
  %20 = or i32 %14, 128
  br label %21

21:                                               ; preds = %19, %12
  %22 = phi i32 [ %20, %19 ], [ %14, %12 ]
  %23 = and i32 %1, 15
  switch i32 %23, label %49 [
    i32 1, label %30
    i32 3, label %24
    i32 4, label %26
    i32 5, label %28
  ]

24:                                               ; preds = %21
  %25 = or i32 %22, 1
  br label %30

26:                                               ; preds = %21
  %27 = or i32 %22, 2
  br label %30

28:                                               ; preds = %21
  %29 = or i32 %22, 3
  br label %30

30:                                               ; preds = %28, %26, %24, %21
  %31 = phi i32 [ %29, %28 ], [ %27, %26 ], [ %25, %24 ], [ %22, %21 ]
  %32 = icmp eq ptr %4, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 @snd_soc_component_read(ptr noundef nonnull %4, i32 noundef 112) #9
  %37 = lshr i32 %36, 12
  %38 = and i32 %37, 7
  switch i32 %35, label %41 [
    i32 0, label %39
    i32 1, label %40
  ]

39:                                               ; preds = %33
  switch i32 %38, label %49 [
    i32 0, label %43
    i32 1, label %43
    i32 6, label %45
    i32 2, label %47
    i32 5, label %47
  ]

40:                                               ; preds = %33
  switch i32 %38, label %49 [
    i32 4, label %43
    i32 5, label %43
    i32 7, label %45
    i32 0, label %47
    i32 3, label %47
  ]

41:                                               ; preds = %33, %30
  %42 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.387, i32 noundef -22) #10
  br label %49

43:                                               ; preds = %40, %40, %39, %39
  %44 = tail call i32 @snd_soc_component_update_bits(ptr noundef nonnull %4, i32 noundef 112, i32 noundef 32899, i32 noundef %31) #9
  br label %49

45:                                               ; preds = %40, %39
  %46 = tail call i32 @snd_soc_component_update_bits(ptr noundef nonnull %4, i32 noundef 112, i32 noundef 32899, i32 noundef %31) #9
  br label %47

47:                                               ; preds = %45, %40, %40, %39, %39
  %48 = tail call i32 @snd_soc_component_update_bits(ptr noundef nonnull %4, i32 noundef 113, i32 noundef 32899, i32 noundef %31) #9
  br label %49

49:                                               ; preds = %47, %43, %41, %40, %39, %21, %12, %2
  %50 = phi i32 [ -22, %41 ], [ -22, %2 ], [ -22, %12 ], [ -22, %21 ], [ 0, %47 ], [ 0, %40 ], [ 0, %39 ], [ 0, %43 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5640_hw_params(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.rt5640_priv, ptr %9, i32 0, i32 8, i32 %13
  store i32 %11, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rt5640_priv, ptr %9, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %12, align 4
  %18 = getelementptr %struct.rt5640_priv, ptr %9, i32 0, i32 8, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @rl6231_get_clk_info(i32 noundef %16, i32 noundef %19) #9
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load ptr, ptr %6, align 4
  %24 = load i32, ptr %12, align 4
  %25 = getelementptr %struct.rt5640_priv, ptr %9, i32 0, i32 8, i32 %24
  %26 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.388, i32 noundef %26, i32 noundef %24) #10
  br label %101

27:                                               ; preds = %3
  %28 = tail call i32 @snd_soc_params_to_frame_size(ptr noundef %1) #9
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.389, i32 noundef %28) #10
  br label %101

32:                                               ; preds = %27
  %33 = icmp ugt i32 %28, 32
  %34 = zext i1 %33 to i32
  %35 = load i32, ptr %12, align 4
  %36 = getelementptr %struct.rt5640_priv, ptr %9, i32 0, i32 8, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = shl nuw nsw i32 32, %34
  %39 = mul i32 %37, %38
  %40 = getelementptr %struct.rt5640_priv, ptr %9, i32 0, i32 9, i32 %35
  store i32 %39, ptr %40, align 4
  %41 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %49, %32
  %45 = phi i32 [ 0, %32 ], [ 32, %49 ]
  %46 = phi i32 [ %42, %32 ], [ %51, %49 ]
  %47 = tail call i32 @llvm.cttz.i32(i32 %46, i1 true) #9, !range !11
  %48 = or i32 %47, %45
  br label %53

49:                                               ; preds = %32
  %50 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %44

53:                                               ; preds = %49, %44
  %54 = phi i32 [ %48, %44 ], [ 0, %49 ]
  %55 = tail call i32 @snd_pcm_format_width(i32 noundef %54) #9
  %56 = add i32 %55, -8
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 30)
  %58 = icmp ult i32 %57, 5
  br i1 %58, label %59, label %101

59:                                               ; preds = %53
  %60 = trunc i32 %57 to i8
  %61 = lshr i8 29, %60
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %101, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds [5 x i32], ptr @switch.table.rt5640_hw_params, i32 0, i32 %57
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq ptr %5, null
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = load i32, ptr %12, align 4
  %70 = tail call i32 @snd_soc_component_read(ptr noundef nonnull %5, i32 noundef 112) #9
  %71 = lshr i32 %70, 12
  %72 = and i32 %71, 7
  switch i32 %69, label %75 [
    i32 0, label %73
    i32 1, label %74
  ]

73:                                               ; preds = %68
  switch i32 %72, label %101 [
    i32 0, label %89
    i32 1, label %89
    i32 6, label %77
    i32 2, label %83
    i32 5, label %83
  ]

74:                                               ; preds = %68
  switch i32 %72, label %101 [
    i32 4, label %95
    i32 5, label %95
    i32 7, label %77
    i32 0, label %83
    i32 3, label %83
  ]

75:                                               ; preds = %68, %64
  %76 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.387, i32 noundef -22) #10
  br label %101

77:                                               ; preds = %74, %73
  %78 = select i1 %33, i32 32768, i32 0
  %79 = shl i32 %20, 12
  %80 = or i32 %78, %79
  %81 = tail call i32 @snd_soc_component_update_bits(ptr noundef nonnull %5, i32 noundef 112, i32 noundef 12, i32 noundef %66) #9
  %82 = tail call i32 @snd_soc_component_update_bits(ptr noundef nonnull %5, i32 noundef 115, i32 noundef 61440, i32 noundef %80) #9
  br label %83

83:                                               ; preds = %77, %74, %74, %73, %73
  %84 = select i1 %33, i32 2048, i32 0
  %85 = shl i32 %20, 8
  %86 = or i32 %84, %85
  %87 = tail call i32 @snd_soc_component_update_bits(ptr noundef nonnull %5, i32 noundef 113, i32 noundef 12, i32 noundef %66) #9
  %88 = tail call i32 @snd_soc_component_update_bits(ptr noundef nonnull %5, i32 noundef 115, i32 noundef 3840, i32 noundef %86) #9
  br label %101

89:                                               ; preds = %73, %73
  %90 = select i1 %33, i32 32768, i32 0
  %91 = shl i32 %20, 12
  %92 = or i32 %90, %91
  %93 = tail call i32 @snd_soc_component_update_bits(ptr noundef nonnull %5, i32 noundef 112, i32 noundef 12, i32 noundef %66) #9
  %94 = tail call i32 @snd_soc_component_update_bits(ptr noundef nonnull %5, i32 noundef 115, i32 noundef 61440, i32 noundef %92) #9
  br label %101

95:                                               ; preds = %74, %74
  %96 = select i1 %33, i32 32768, i32 0
  %97 = shl i32 %20, 12
  %98 = or i32 %96, %97
  %99 = tail call i32 @snd_soc_component_update_bits(ptr noundef nonnull %5, i32 noundef 112, i32 noundef 12, i32 noundef %66) #9
  %100 = tail call i32 @snd_soc_component_update_bits(ptr noundef nonnull %5, i32 noundef 115, i32 noundef 61440, i32 noundef %98) #9
  br label %101

101:                                              ; preds = %95, %89, %83, %75, %74, %73, %59, %53, %30, %22
  %102 = phi i32 [ -22, %22 ], [ %28, %30 ], [ -22, %75 ], [ -22, %53 ], [ 0, %83 ], [ 0, %74 ], [ 0, %73 ], [ 0, %89 ], [ 0, %95 ], [ -22, %59 ]
  ret i32 %102
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_pll_calc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_get_clk_info(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_frame_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i32 0, i32 33}
