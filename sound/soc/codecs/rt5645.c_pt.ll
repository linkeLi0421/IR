; ModuleID = '/llk/IR/sound/soc/codecs/rt5645.c_pt.bc'
source_filename = "../sound/soc/codecs/rt5645.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt5645_sel_asrc_clk_src:\09\09\09\09\09"
module asm "\09.asciz \09\22rt5645_sel_asrc_clk_src\22\09\09\09\09\09"
module asm "__kstrtabns_rt5645_sel_asrc_clk_src:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt5645_set_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22rt5645_set_jack_detect\22\09\09\09\09\09"
module asm "__kstrtabns_rt5645_set_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.rt5645_platform_data = type { i8, i32, i32, i32, i8, i8, i8, ptr, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.rt5645_priv = type { ptr, %struct.rt5645_platform_data, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, [2 x %struct.regulator_bulk_data], ptr, %struct.timer_list, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], i32, i32, i32, i32, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [80 x i8], [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.73, [64 x i8] }
%union.anon.73 = type { %struct.anon.76, [40 x i8] }
%struct.anon.76 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }
%struct.rt5645_eq_param_s = type { i16, i16 }
%struct.rt5645_eq_param_s_be16 = type { i16, i16 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.rl6231_pll_code = type { i8, i8, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__param_str_quirk = internal constant [6 x i8] c"quirk\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@quirk = internal global i32 -1, align 4
@__param_quirk = internal constant %struct.kernel_param { ptr @__param_str_quirk, ptr @__this_module, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @quirk } }, section "__param", align 4
@__UNIQUE_ID_quirktype255 = internal constant [20 x i8] c"parmtype=quirk:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_quirk256 = internal constant [39 x i8] c"parm=quirk:RT5645 pdata quirk override\00", section ".modinfo", align 1
@__kstrtab_rt5645_sel_asrc_clk_src = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt5645_sel_asrc_clk_src = external dso_local constant [0 x i8], align 1
@__ksymtab_rt5645_sel_asrc_clk_src = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt5645_sel_asrc_clk_src to i32), ptr @__kstrtab_rt5645_sel_asrc_clk_src, ptr @__kstrtabns_rt5645_sel_asrc_clk_src }, section "___ksymtab_gpl+rt5645_sel_asrc_clk_src", align 4
@__kstrtab_rt5645_set_jack_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt5645_set_jack_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_rt5645_set_jack_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt5645_set_jack_detect to i32), ptr @__kstrtab_rt5645_set_jack_detect, ptr @__kstrtabns_rt5645_set_jack_detect }, section "___ksymtab_gpl+rt5645_set_jack_detect", align 4
@rt5645_i2c_id = internal constant [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rt5645\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"rt5650\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@rt5645_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rt5645\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rt5650\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description257 = internal constant [31 x i8] c"description=ASoC RT5645 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author258 = internal constant [40 x i8] c"author=Bard Liao <bardliao@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@rt5645_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @rt5645_i2c_probe, ptr @rt5645_i2c_remove, ptr null, ptr @rt5645_i2c_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rt5645_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rt5645_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"rt5645\00", align 1
@dmi_platform_data = internal constant [18 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.13, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"Buddy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @buddy_platform_data }, %struct.dmi_system_id { ptr null, ptr @.str.14, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"Strago\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @intel_braswell_platform_data }, %struct.dmi_system_id { ptr null, ptr @.str.15, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"GOOGLE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @intel_braswell_platform_data }, %struct.dmi_system_id { ptr null, ptr @.str.16, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"Setzer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @intel_braswell_platform_data }, %struct.dmi_system_id { ptr null, ptr @.str.17, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"Surface 3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @intel_braswell_platform_data }, %struct.dmi_system_id { ptr null, ptr @.str.18, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"AMI Corporation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"Default string\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 16, [79 x i8] c"Default string\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Default string\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], ptr @gpd_win_platform_data }, %struct.dmi_system_id { ptr null, ptr @.str.19, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -122, [79 x i8] c"ASUSTeK COMPUTER INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"T100HAN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @asus_t100ha_platform_data }, %struct.dmi_system_id { ptr null, ptr @.str.20, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"ASUSTeK COMPUTER INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"T101HA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @asus_t101ha_platform_data }, %struct.dmi_system_id { ptr null, ptr @.str.21, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -122, [79 x i8] c"MINIX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Z83-4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @jd_mode3_platform_data }, %struct.dmi_system_id { ptr null, ptr @.str.22, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"TECLAST\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"X80 Pro\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @jd_mode3_platform_data }, %struct.dmi_system_id { ptr null, ptr @.str.23, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -122, [79 x i8] c"LENOVO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -121, [79 x i8] c"80SG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -120, [79 x i8] c"MIIX 310-10ICR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], ptr @lenovo_ideapad_miix_310_pdata }, %struct.dmi_system_id { ptr null, ptr @.str.24, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -122, [79 x i8] c"LENOVO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -121, [79 x i8] c"80XF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -120, [79 x i8] c"Lenovo MIIX 320-10ICR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], ptr @intel_braswell_platform_data }, %struct.dmi_system_id { ptr null, ptr @.str.25, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -115, [79 x i8] c"AMI Corporation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -114, [79 x i8] c"Cherry Trail CR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -113, [79 x i8] c"Default string\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], ptr @lattepanda_board_platform_data }, %struct.dmi_system_id { ptr null, ptr @.str.26, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"Kahlee\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @kahlee_platform_data }, %struct.dmi_system_id { ptr null, ptr @.str.27, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -122, [79 x i8] c"MEDION\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"E1239T MD60568\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @intel_braswell_platform_data }, %struct.dmi_system_id { ptr @cht_rt5645_ef20_quirk_cb, ptr @.str.28, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"EF20\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @ecs_ef20_platform_data }, %struct.dmi_system_id { ptr @cht_rt5645_ef20_quirk_cb, ptr @.str.29, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"EF20EA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @ecs_ef20_platform_data }, %struct.dmi_system_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Detected %s platform\0A\00", align 1
@jd_mode3_platform_data = internal constant %struct.rt5645_platform_data { i8 0, i32 0, i32 0, i32 3, i8 0, i8 0, i8 0, ptr null, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"hp-detect\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to initialize gpiod\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@temp_regmap = internal constant %struct.regmap_config { ptr @.str.38, i32 8, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 256, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"Failed to allocate temp register map: %d\0A\00", align 1
@rt5645_regmap = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr @rt5645_readable_register, ptr @rt5645_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 512, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5645_reg, i32 153, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr @rt5645_ranges, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@rt5650_regmap = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr @rt5645_readable_register, ptr @rt5645_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 512, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5650_reg, i32 154, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr @rt5645_ranges, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.8 = private unnamed_addr constant [53 x i8] c"Device with ID register %#x is not rt5645 or rt5650\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@init_list = internal constant [6 x %struct.reg_sequence] [%struct.reg_sequence { i32 317, i32 13824, i32 0 }, %struct.reg_sequence { i32 284, i32 64880, i32 0 }, %struct.reg_sequence { i32 288, i32 24863, i32 0 }, %struct.reg_sequence { i32 289, i32 16448, i32 0 }, %struct.reg_sequence { i32 291, i32 4, i32 0 }, %struct.reg_sequence { i32 138, i32 288, i32 0 }], align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"Failed to apply regmap patch: %d\0A\00", align 1
@rt5650_init_list = internal constant [1 x %struct.reg_sequence] [%struct.reg_sequence { i32 246, i32 256, i32 0 }], align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"Apply rt5650 patch failed: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Failed to reguest IRQ: %d\0A\00", align 1
@soc_component_dev_rt5645 = internal constant %struct.snd_soc_component_driver { ptr null, ptr @rt5645_snd_controls, i32 23, ptr @rt5645_dapm_widgets, i32 144, ptr @rt5645_dapm_routes, i32 227, ptr @rt5645_probe, ptr @rt5645_remove, ptr @rt5645_suspend, ptr @rt5645_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5645_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 56, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@rt5645_dai = internal global [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.446, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt5645_aif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.174, i64 68719476805, i32 2046, i32 0, i32 0, i32 1, i32 4, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.172, i64 68719476805, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.447, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt5645_aif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.178, i64 68719476805, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.176, i64 68719476805, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], align 8
@.str.13 = private unnamed_addr constant [13 x i8] c"Chrome Buddy\00", align 1
@buddy_platform_data = internal constant %struct.rt5645_platform_data { i8 0, i32 2, i32 1, i32 4, i8 1, i8 0, i8 0, ptr null, i8 0 }, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"Intel Strago\00", align 1
@intel_braswell_platform_data = internal constant %struct.rt5645_platform_data { i8 0, i32 0, i32 1, i32 3, i8 0, i8 0, i8 0, ptr null, i8 0 }, align 4
@.str.15 = private unnamed_addr constant [14 x i8] c"Google Chrome\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Google Setzer\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Microsoft Surface 3\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"GPD Win / Pocket\00", align 1
@gpd_win_platform_data = internal constant %struct.rt5645_platform_data { i8 1, i32 0, i32 0, i32 3, i8 0, i8 1, i8 0, ptr @.str.30, i8 0 }, align 4
@.str.19 = private unnamed_addr constant [13 x i8] c"ASUS T100HAN\00", align 1
@asus_t100ha_platform_data = internal constant %struct.rt5645_platform_data { i8 0, i32 1, i32 0, i32 3, i8 0, i8 1, i8 0, ptr null, i8 0 }, align 4
@.str.20 = private unnamed_addr constant [12 x i8] c"ASUS T101HA\00", align 1
@asus_t101ha_platform_data = internal constant %struct.rt5645_platform_data { i8 0, i32 1, i32 0, i32 3, i8 0, i8 0, i8 0, ptr null, i8 0 }, align 4
@.str.21 = private unnamed_addr constant [12 x i8] c"MINIX Z83-4\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Teclast X80 Pro\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"Lenovo Ideapad Miix 310\00", align 1
@lenovo_ideapad_miix_310_pdata = internal constant %struct.rt5645_platform_data { i8 1, i32 0, i32 0, i32 3, i8 0, i8 0, i8 0, ptr null, i8 0 }, align 4
@.str.24 = private unnamed_addr constant [24 x i8] c"Lenovo Ideapad Miix 320\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"LattePanda board\00", align 1
@lattepanda_board_platform_data = internal constant %struct.rt5645_platform_data { i8 0, i32 0, i32 0, i32 2, i8 0, i8 1, i8 0, ptr null, i8 0 }, align 4
@.str.26 = private unnamed_addr constant [14 x i8] c"Chrome Kahlee\00", align 1
@kahlee_platform_data = internal constant %struct.rt5645_platform_data { i8 0, i32 2, i32 1, i32 3, i8 0, i8 0, i8 0, ptr null, i8 0 }, align 4
@.str.27 = private unnamed_addr constant [14 x i8] c"Medion E1239T\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"EF20\00", align 1
@ecs_ef20_platform_data = internal constant %struct.rt5645_platform_data { i8 0, i32 0, i32 1, i32 0, i8 0, i8 0, i8 1, ptr null, i8 0 }, align 4
@.str.29 = private unnamed_addr constant [7 x i8] c"EF20EA\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"gpd-win-pocket-rt5645\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"realtek,in2-differential\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"realtek,dmic1-data-pin\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"realtek,dmic2-data-pin\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"realtek,jd-mode\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"avdd\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"cpvdd\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"nocache\00", align 1
@rt5645_reg = internal constant [153 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 51400 }, %struct.reg_default { i32 2, i32 51400 }, %struct.reg_default { i32 3, i32 51400 }, %struct.reg_default { i32 10, i32 2 }, %struct.reg_default { i32 11, i32 10279 }, %struct.reg_default { i32 12, i32 57344 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 2056 }, %struct.reg_default { i32 20, i32 13107 }, %struct.reg_default { i32 22, i32 19200 }, %struct.reg_default { i32 24, i32 395 }, %struct.reg_default { i32 25, i32 44975 }, %struct.reg_default { i32 26, i32 44975 }, %struct.reg_default { i32 27, i32 1 }, %struct.reg_default { i32 28, i32 12079 }, %struct.reg_default { i32 29, i32 12079 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 39, i32 28768 }, %struct.reg_default { i32 40, i32 28784 }, %struct.reg_default { i32 41, i32 32896 }, %struct.reg_default { i32 42, i32 22102 }, %struct.reg_default { i32 43, i32 21588 }, %struct.reg_default { i32 44, i32 43680 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 47, i32 4098 }, %struct.reg_default { i32 49, i32 20480 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 59, i32 0 }, %struct.reg_default { i32 60, i32 127 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 62, i32 127 }, %struct.reg_default { i32 63, i32 0 }, %struct.reg_default { i32 64, i32 31 }, %struct.reg_default { i32 65, i32 0 }, %struct.reg_default { i32 66, i32 31 }, %struct.reg_default { i32 69, i32 24576 }, %struct.reg_default { i32 70, i32 62 }, %struct.reg_default { i32 71, i32 62 }, %struct.reg_default { i32 72, i32 63495 }, %struct.reg_default { i32 74, i32 4 }, %struct.reg_default { i32 77, i32 0 }, %struct.reg_default { i32 78, i32 0 }, %struct.reg_default { i32 79, i32 511 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 81, i32 0 }, %struct.reg_default { i32 82, i32 511 }, %struct.reg_default { i32 83, i32 61440 }, %struct.reg_default { i32 86, i32 273 }, %struct.reg_default { i32 87, i32 100 }, %struct.reg_default { i32 88, i32 61198 }, %struct.reg_default { i32 89, i32 61680 }, %struct.reg_default { i32 90, i32 61198 }, %struct.reg_default { i32 91, i32 61680 }, %struct.reg_default { i32 92, i32 61198 }, %struct.reg_default { i32 93, i32 61680 }, %struct.reg_default { i32 94, i32 61440 }, %struct.reg_default { i32 95, i32 0 }, %struct.reg_default { i32 97, i32 768 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 99, i32 194 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 101, i32 0 }, %struct.reg_default { i32 102, i32 0 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 108, i32 2730 }, %struct.reg_default { i32 112, i32 32768 }, %struct.reg_default { i32 113, i32 32768 }, %struct.reg_default { i32 114, i32 32768 }, %struct.reg_default { i32 115, i32 30576 }, %struct.reg_default { i32 116, i32 15872 }, %struct.reg_default { i32 117, i32 9225 }, %struct.reg_default { i32 118, i32 10 }, %struct.reg_default { i32 119, i32 3072 }, %struct.reg_default { i32 120, i32 0 }, %struct.reg_default { i32 121, i32 291 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 129, i32 0 }, %struct.reg_default { i32 130, i32 0 }, %struct.reg_default { i32 131, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 133, i32 0 }, %struct.reg_default { i32 138, i32 288 }, %struct.reg_default { i32 142, i32 4 }, %struct.reg_default { i32 143, i32 4352 }, %struct.reg_default { i32 144, i32 1606 }, %struct.reg_default { i32 145, i32 3078 }, %struct.reg_default { i32 147, i32 0 }, %struct.reg_default { i32 148, i32 512 }, %struct.reg_default { i32 149, i32 0 }, %struct.reg_default { i32 154, i32 8580 }, %struct.reg_default { i32 155, i32 266 }, %struct.reg_default { i32 156, i32 2794 }, %struct.reg_default { i32 157, i32 12 }, %struct.reg_default { i32 158, i32 1024 }, %struct.reg_default { i32 160, i32 41128 }, %struct.reg_default { i32 161, i32 89 }, %struct.reg_default { i32 162, i32 1 }, %struct.reg_default { i32 174, i32 24576 }, %struct.reg_default { i32 175, i32 0 }, %struct.reg_default { i32 176, i32 24576 }, %struct.reg_default { i32 177, i32 0 }, %struct.reg_default { i32 178, i32 0 }, %struct.reg_default { i32 179, i32 31 }, %struct.reg_default { i32 180, i32 524 }, %struct.reg_default { i32 181, i32 7936 }, %struct.reg_default { i32 182, i32 0 }, %struct.reg_default { i32 187, i32 0 }, %struct.reg_default { i32 188, i32 0 }, %struct.reg_default { i32 189, i32 0 }, %struct.reg_default { i32 190, i32 0 }, %struct.reg_default { i32 191, i32 12544 }, %struct.reg_default { i32 192, i32 0 }, %struct.reg_default { i32 193, i32 0 }, %struct.reg_default { i32 194, i32 0 }, %struct.reg_default { i32 195, i32 8192 }, %struct.reg_default { i32 205, i32 0 }, %struct.reg_default { i32 206, i32 0 }, %struct.reg_default { i32 207, i32 6163 }, %struct.reg_default { i32 208, i32 1680 }, %struct.reg_default { i32 209, i32 7191 }, %struct.reg_default { i32 211, i32 45856 }, %struct.reg_default { i32 212, i32 0 }, %struct.reg_default { i32 214, i32 1024 }, %struct.reg_default { i32 217, i32 2057 }, %struct.reg_default { i32 218, i32 0 }, %struct.reg_default { i32 219, i32 3 }, %struct.reg_default { i32 220, i32 73 }, %struct.reg_default { i32 221, i32 27 }, %struct.reg_default { i32 223, i32 8 }, %struct.reg_default { i32 224, i32 16384 }, %struct.reg_default { i32 230, i32 32768 }, %struct.reg_default { i32 231, i32 512 }, %struct.reg_default { i32 236, i32 45824 }, %struct.reg_default { i32 237, i32 0 }, %struct.reg_default { i32 240, i32 31 }, %struct.reg_default { i32 241, i32 524 }, %struct.reg_default { i32 242, i32 7936 }, %struct.reg_default { i32 243, i32 0 }, %struct.reg_default { i32 244, i32 16384 }, %struct.reg_default { i32 248, i32 0 }, %struct.reg_default { i32 249, i32 0 }, %struct.reg_default { i32 250, i32 8288 }, %struct.reg_default { i32 251, i32 16448 }, %struct.reg_default { i32 252, i32 0 }, %struct.reg_default { i32 253, i32 2 }, %struct.reg_default { i32 254, i32 4332 }, %struct.reg_default { i32 255, i32 25352 }], align 4
@rt5645_ranges = internal constant [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr @.str.39, i32 256, i32 504, i32 106, i32 255, i32 0, i32 108, i32 1 }], align 4
@.str.39 = private unnamed_addr constant [3 x i8] c"PR\00", align 1
@rt5650_reg = internal constant [154 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 51400 }, %struct.reg_default { i32 2, i32 51400 }, %struct.reg_default { i32 3, i32 51400 }, %struct.reg_default { i32 10, i32 2 }, %struct.reg_default { i32 11, i32 10279 }, %struct.reg_default { i32 12, i32 57344 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 2056 }, %struct.reg_default { i32 20, i32 13107 }, %struct.reg_default { i32 22, i32 19200 }, %struct.reg_default { i32 24, i32 395 }, %struct.reg_default { i32 25, i32 44975 }, %struct.reg_default { i32 26, i32 44975 }, %struct.reg_default { i32 27, i32 1 }, %struct.reg_default { i32 28, i32 12079 }, %struct.reg_default { i32 29, i32 12079 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 39, i32 28768 }, %struct.reg_default { i32 40, i32 28784 }, %struct.reg_default { i32 41, i32 32896 }, %struct.reg_default { i32 42, i32 22102 }, %struct.reg_default { i32 43, i32 21588 }, %struct.reg_default { i32 44, i32 43680 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 47, i32 20482 }, %struct.reg_default { i32 49, i32 20480 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 59, i32 0 }, %struct.reg_default { i32 60, i32 127 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 62, i32 127 }, %struct.reg_default { i32 63, i32 0 }, %struct.reg_default { i32 64, i32 31 }, %struct.reg_default { i32 65, i32 0 }, %struct.reg_default { i32 66, i32 31 }, %struct.reg_default { i32 69, i32 24576 }, %struct.reg_default { i32 70, i32 62 }, %struct.reg_default { i32 71, i32 62 }, %struct.reg_default { i32 72, i32 63495 }, %struct.reg_default { i32 74, i32 4 }, %struct.reg_default { i32 77, i32 0 }, %struct.reg_default { i32 78, i32 0 }, %struct.reg_default { i32 79, i32 511 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 81, i32 0 }, %struct.reg_default { i32 82, i32 511 }, %struct.reg_default { i32 83, i32 61440 }, %struct.reg_default { i32 86, i32 273 }, %struct.reg_default { i32 87, i32 100 }, %struct.reg_default { i32 88, i32 61198 }, %struct.reg_default { i32 89, i32 61680 }, %struct.reg_default { i32 90, i32 61198 }, %struct.reg_default { i32 91, i32 61680 }, %struct.reg_default { i32 92, i32 61198 }, %struct.reg_default { i32 93, i32 61680 }, %struct.reg_default { i32 94, i32 61440 }, %struct.reg_default { i32 95, i32 0 }, %struct.reg_default { i32 97, i32 768 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 99, i32 194 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 101, i32 0 }, %struct.reg_default { i32 102, i32 0 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 108, i32 2730 }, %struct.reg_default { i32 112, i32 32768 }, %struct.reg_default { i32 113, i32 32768 }, %struct.reg_default { i32 114, i32 32768 }, %struct.reg_default { i32 115, i32 30576 }, %struct.reg_default { i32 116, i32 15872 }, %struct.reg_default { i32 117, i32 9225 }, %struct.reg_default { i32 118, i32 10 }, %struct.reg_default { i32 119, i32 3072 }, %struct.reg_default { i32 120, i32 0 }, %struct.reg_default { i32 121, i32 291 }, %struct.reg_default { i32 122, i32 291 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 129, i32 0 }, %struct.reg_default { i32 130, i32 0 }, %struct.reg_default { i32 131, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 133, i32 0 }, %struct.reg_default { i32 138, i32 288 }, %struct.reg_default { i32 142, i32 4 }, %struct.reg_default { i32 143, i32 4352 }, %struct.reg_default { i32 144, i32 1606 }, %struct.reg_default { i32 145, i32 3078 }, %struct.reg_default { i32 147, i32 0 }, %struct.reg_default { i32 148, i32 512 }, %struct.reg_default { i32 149, i32 0 }, %struct.reg_default { i32 154, i32 8580 }, %struct.reg_default { i32 155, i32 266 }, %struct.reg_default { i32 156, i32 2794 }, %struct.reg_default { i32 157, i32 12 }, %struct.reg_default { i32 158, i32 1024 }, %struct.reg_default { i32 160, i32 41128 }, %struct.reg_default { i32 161, i32 89 }, %struct.reg_default { i32 162, i32 1 }, %struct.reg_default { i32 174, i32 24576 }, %struct.reg_default { i32 175, i32 0 }, %struct.reg_default { i32 176, i32 24576 }, %struct.reg_default { i32 177, i32 0 }, %struct.reg_default { i32 178, i32 0 }, %struct.reg_default { i32 179, i32 31 }, %struct.reg_default { i32 180, i32 524 }, %struct.reg_default { i32 181, i32 7936 }, %struct.reg_default { i32 182, i32 0 }, %struct.reg_default { i32 187, i32 0 }, %struct.reg_default { i32 188, i32 0 }, %struct.reg_default { i32 189, i32 0 }, %struct.reg_default { i32 190, i32 0 }, %struct.reg_default { i32 191, i32 12544 }, %struct.reg_default { i32 192, i32 0 }, %struct.reg_default { i32 193, i32 0 }, %struct.reg_default { i32 194, i32 0 }, %struct.reg_default { i32 195, i32 8192 }, %struct.reg_default { i32 205, i32 0 }, %struct.reg_default { i32 206, i32 0 }, %struct.reg_default { i32 207, i32 6163 }, %struct.reg_default { i32 208, i32 1680 }, %struct.reg_default { i32 209, i32 7191 }, %struct.reg_default { i32 211, i32 45856 }, %struct.reg_default { i32 212, i32 0 }, %struct.reg_default { i32 214, i32 1024 }, %struct.reg_default { i32 217, i32 2057 }, %struct.reg_default { i32 218, i32 0 }, %struct.reg_default { i32 219, i32 3 }, %struct.reg_default { i32 220, i32 73 }, %struct.reg_default { i32 221, i32 27 }, %struct.reg_default { i32 223, i32 8 }, %struct.reg_default { i32 224, i32 16384 }, %struct.reg_default { i32 230, i32 32768 }, %struct.reg_default { i32 231, i32 512 }, %struct.reg_default { i32 236, i32 45824 }, %struct.reg_default { i32 237, i32 0 }, %struct.reg_default { i32 240, i32 31 }, %struct.reg_default { i32 241, i32 524 }, %struct.reg_default { i32 242, i32 7936 }, %struct.reg_default { i32 243, i32 0 }, %struct.reg_default { i32 244, i32 16384 }, %struct.reg_default { i32 248, i32 0 }, %struct.reg_default { i32 249, i32 0 }, %struct.reg_default { i32 250, i32 8288 }, %struct.reg_default { i32 251, i32 16448 }, %struct.reg_default { i32 252, i32 0 }, %struct.reg_default { i32 253, i32 2 }, %struct.reg_default { i32 254, i32 4332 }, %struct.reg_default { i32 255, i32 25352 }], align 4
@.str.40 = private unnamed_addr constant [31 x i8] c"Unexpected button code 0x%04x\0A\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"LDO2\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"Mic Det Power\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"ADC L power\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"ADC R power\00", align 1
@rt5645_snd_controls = internal constant [23 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @rt5645_spk_put_volsw, %union.anon.83 { ptr @out_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @spk_clsd_tlv }, i32 ptrtoint (ptr @.compoundliteral.49 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.51 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @out_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.53 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.55 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.57 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @out_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.59 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @dac_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @dac_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @in_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @adc_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.75 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.77 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @adc_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.79 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @adc_bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.81 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @adc_bst_tlv }, i32 ptrtoint (ptr @.compoundliteral.83 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.85 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @rt5645_hweq_info, ptr @rt5645_hweq_get, ptr @rt5645_hweq_put, %union.anon.83 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_dac1_vol_ctrl_mode to i32) }], align 4
@rt5645_dapm_routes = internal constant [227 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.101, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr null, ptr @.str.102, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr null, ptr @.str.103, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr null, ptr @.str.96, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr null, ptr @.str.97, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr null, ptr @.str.95, ptr @is_using_asrc, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr null, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr null, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr null, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr null, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr null, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr null, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr null, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr null, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.237, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.239, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.241, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.243, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.245, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.247, ptr @.str.228, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.249, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.241, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.243, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.253, ptr @.str.203, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr null, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr null, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr null, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr null, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr null, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr null, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr null, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr null, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr null, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.115, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.116, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.115, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.116, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr null, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.115, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.116, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr null, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.258, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.257, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.260, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.257, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.260, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.257, ptr @.str.195, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.258, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.257, ptr @.str.195, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.258, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.192, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.192, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.260, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.193, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.260, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.258, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.193, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr @.str.267, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr @.str.269, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.267, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.269, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.91, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr null, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.91, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.267, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.269, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr null, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr null, ptr @.str.91, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.267, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.269, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr null, ptr @.str.91, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.279, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.280, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.281, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr @.str.150, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr @.str.151, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr @.str.149, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr null, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr null, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr null, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr null, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr null, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr null, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr null, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr null, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr null, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr null, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr null, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr null, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr null, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr @.str.166, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr @.str.166, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr @.str.282, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr @.str.284, ptr @.str.185, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr null, ptr @.str.187, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr @.str.282, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr @.str.284, ptr @.str.186, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr null, ptr @.str.187, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr @.str.166, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr @.str.291, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr @.str.149, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr null, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr null, ptr @.str.188, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr @.str.166, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr @.str.291, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr @.str.293, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr null, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr null, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr @.str.296, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr @.str.300, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr @.str.298, ptr @.str.183, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr null, ptr @.str.187, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr @.str.300, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr @.str.296, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr @.str.303, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr null, ptr @.str.187, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr @.str.296, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr @.str.298, ptr @.str.183, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr @.str.303, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr null, ptr @.str.188, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr @.str.300, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr @.str.303, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr @.str.298, ptr @.str.183, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.194, ptr @.str.312, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.194, ptr @.str.298, ptr @.str.183, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.194, ptr @.str.303, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr @.str.316, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr @.str.303, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr @.str.298, ptr @.str.183, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr null, ptr @.str.91, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.198, ptr null, ptr @.str.91, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.197, ptr null, ptr @.str.91, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr null, ptr @.str.91, ptr @is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.200, ptr @.str.243, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.200, ptr @.str.239, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.200, ptr @.str.296, ptr @.str.196, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.200, ptr @.str.298, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr @.str.241, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr @.str.249, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr @.str.300, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr @.str.303, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr @.str.243, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr @.str.239, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr @.str.298, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr @.str.296, ptr @.str.196, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr @.str.241, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr @.str.249, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr @.str.303, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr @.str.300, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.284, ptr @.str.196, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.340, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.239, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.243, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr null, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.284, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.340, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.249, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.241, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr null, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.211, ptr null, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.211, ptr null, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr null, ptr @.str.196, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr null, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.213, ptr @.str.336, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.214, ptr @.str.336, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr null, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr null, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.217, ptr @.str.284, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.217, ptr @.str.359, ptr @.str.212, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr @.str.336, ptr @.str.200, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr @.str.336, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr @.str.296, ptr @.str.196, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr @.str.354, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.216, ptr @.str.300, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.216, ptr @.str.352, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr @.str.296, ptr @.str.196, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr @.str.300, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr @.str.363, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr @.str.365, ptr @.str.203, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.223, ptr @.str.369, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.223, ptr @.str.368, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.223, ptr null, ptr @.str.222, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.224, ptr @.str.369, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.224, ptr @.str.368, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.224, ptr null, ptr @.str.222, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr null, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr null, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.227, ptr null, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.228, ptr null, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.220, ptr null, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr null, ptr @.str.220, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.230, ptr null, ptr @.str.220, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.225, ptr @.str.336, ptr @.str.223, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.226, ptr @.str.336, ptr @.str.224, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.231, ptr null, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.232, ptr null, ptr @.str.226, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.221, ptr null, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.221, ptr null, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.233, ptr null, ptr @.str.221, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.234, ptr null, ptr @.str.221, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str.45 = private unnamed_addr constant [23 x i8] c"Speaker Channel Switch\00", align 1
@.compoundliteral = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1, i32 1, i32 14, i32 6, i32 0, i8 1 }, align 4
@.str.46 = private unnamed_addr constant [24 x i8] c"Speaker Playback Volume\00", align 1
@out_vol_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -4650, i32 150], align 4
@.compoundliteral.47 = internal global %struct.soc_mixer_control { i32 0, i32 39, i32 39, i32 1, i32 1, i32 8, i32 0, i32 0, i8 1 }, align 4
@.str.48 = private unnamed_addr constant [31 x i8] c"Speaker ClassD Playback Volume\00", align 1
@spk_clsd_tlv = internal constant [26 x i32] [i32 3, i32 96, i32 0, i32 4, i32 1, i32 8, i32 -600, i32 150, i32 5, i32 5, i32 1, i32 8, i32 82, i32 0, i32 6, i32 6, i32 1, i32 8, i32 158, i32 0, i32 7, i32 7, i32 1, i32 8, i32 228, i32 0], align 4
@.compoundliteral.49 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 74, i32 74, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.50 = private unnamed_addr constant [25 x i8] c"Headphone Channel Switch\00", align 1
@.compoundliteral.51 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 14, i32 6, i32 0, i8 1 }, align 4
@.str.52 = private unnamed_addr constant [26 x i8] c"Headphone Playback Volume\00", align 1
@.compoundliteral.53 = internal global %struct.soc_mixer_control { i32 0, i32 39, i32 39, i32 2, i32 2, i32 8, i32 0, i32 0, i8 1 }, align 4
@.str.54 = private unnamed_addr constant [20 x i8] c"OUT Playback Switch\00", align 1
@.compoundliteral.55 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 15, i32 7, i32 0, i8 1 }, align 4
@.str.56 = private unnamed_addr constant [19 x i8] c"OUT Channel Switch\00", align 1
@.compoundliteral.57 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 14, i32 6, i32 0, i8 1 }, align 4
@.str.58 = private unnamed_addr constant [20 x i8] c"OUT Playback Volume\00", align 1
@.compoundliteral.59 = internal global %struct.soc_mixer_control { i32 0, i32 39, i32 39, i32 3, i32 3, i32 8, i32 0, i32 0, i8 1 }, align 4
@.str.60 = private unnamed_addr constant [21 x i8] c"DAC2 Playback Switch\00", align 1
@.compoundliteral.61 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27, i32 27, i32 13, i32 12, i32 0, i8 1 }, align 4
@.str.62 = private unnamed_addr constant [21 x i8] c"DAC1 Playback Volume\00", align 1
@dac_vol_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -6525, i32 75], align 4
@.compoundliteral.63 = internal global %struct.soc_mixer_control { i32 0, i32 87, i32 87, i32 25, i32 25, i32 9, i32 1, i32 0, i8 0 }, align 4
@.str.64 = private unnamed_addr constant [25 x i8] c"Mono DAC Playback Volume\00", align 1
@.compoundliteral.65 = internal global %struct.soc_mixer_control { i32 0, i32 87, i32 87, i32 26, i32 26, i32 9, i32 1, i32 0, i8 0 }, align 4
@.str.66 = private unnamed_addr constant [10 x i8] c"IN1 Boost\00", align 1
@bst_tlv = internal constant [44 x i32] [i32 3, i32 168, i32 0, i32 0, i32 1, i32 8, i32 0, i32 0, i32 1, i32 1, i32 1, i32 8, i32 2000, i32 0, i32 2, i32 2, i32 1, i32 8, i32 2400, i32 0, i32 3, i32 5, i32 1, i32 8, i32 3000, i32 500, i32 6, i32 6, i32 1, i32 8, i32 4400, i32 0, i32 7, i32 7, i32 1, i32 8, i32 5000, i32 0, i32 8, i32 8, i32 1, i32 8, i32 5200, i32 0], align 4
@.compoundliteral.67 = internal global %struct.soc_mixer_control { i32 0, i32 12, i32 12, i32 10, i32 10, i32 12, i32 12, i32 0, i8 0 }, align 4
@.str.68 = private unnamed_addr constant [10 x i8] c"IN2 Boost\00", align 1
@.compoundliteral.69 = internal global %struct.soc_mixer_control { i32 0, i32 8, i32 8, i32 13, i32 13, i32 8, i32 8, i32 0, i8 0 }, align 4
@.str.70 = private unnamed_addr constant [18 x i8] c"IN Capture Volume\00", align 1
@in_vol_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -3450, i32 150], align 4
@.compoundliteral.71 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 15, i32 15, i32 8, i32 0, i32 0, i8 1 }, align 4
@.str.72 = private unnamed_addr constant [19 x i8] c"ADC Capture Switch\00", align 1
@.compoundliteral.73 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 15, i32 7, i32 0, i8 1 }, align 4
@.str.74 = private unnamed_addr constant [19 x i8] c"ADC Capture Volume\00", align 1
@adc_vol_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -1725, i32 75], align 4
@.compoundliteral.75 = internal global %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 28, i32 28, i32 9, i32 1, i32 0, i8 0 }, align 4
@.str.76 = private unnamed_addr constant [24 x i8] c"Mono ADC Capture Switch\00", align 1
@.compoundliteral.77 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 29, i32 29, i32 15, i32 7, i32 0, i8 1 }, align 4
@.str.78 = private unnamed_addr constant [24 x i8] c"Mono ADC Capture Volume\00", align 1
@.compoundliteral.79 = internal global %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 29, i32 29, i32 9, i32 1, i32 0, i8 0 }, align 4
@.str.80 = private unnamed_addr constant [25 x i8] c"ADC Boost Capture Volume\00", align 1
@adc_bst_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 0, i32 1200], align 4
@.compoundliteral.81 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 30, i32 30, i32 14, i32 12, i32 0, i8 0 }, align 4
@.str.82 = private unnamed_addr constant [30 x i8] c"Mono ADC Boost Capture Volume\00", align 1
@.compoundliteral.83 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 32, i32 32, i32 14, i32 12, i32 0, i8 0 }, align 4
@.str.84 = private unnamed_addr constant [17 x i8] c"I2S2 Func Switch\00", align 1
@.compoundliteral.85 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 192, i32 192, i32 8, i32 8, i32 0, i8 1 }, align 4
@.str.86 = private unnamed_addr constant [13 x i8] c"Speaker HWEQ\00", align 1
@.str.87 = private unnamed_addr constant [33 x i8] c"DAC1 Digital Volume Control Func\00", align 1
@rt5645_dac1_vol_ctrl_mode = internal constant %struct.soc_enum { i32 256, i8 6, i8 6, i32 3, i32 3, ptr @rt5645_dac1_vol_ctrl_mode_text, ptr null, i8 0 }, align 4
@rt5645_dac1_vol_ctrl_mode_text = internal constant [3 x ptr] [ptr @.str.88, ptr @.str.89, ptr @.str.90], align 4
@.str.88 = private unnamed_addr constant [12 x i8] c"immediately\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"zero crossing\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"soft ramp\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"PLL1\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"JD Power\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"I2S1 ASRC\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"I2S2 ASRC\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"DAC STO ASRC\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"DAC MONO L ASRC\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"DAC MONO R ASRC\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"DMIC STO1 ASRC\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"DMIC MONO L ASRC\00", align 1
@.str.100 = private unnamed_addr constant [17 x i8] c"DMIC MONO R ASRC\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"ADC STO1 ASRC\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"ADC MONO L ASRC\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"ADC MONO R ASRC\00", align 1
@.str.104 = private unnamed_addr constant [9 x i8] c"micbias1\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"micbias2\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"DMIC L1\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"DMIC R1\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"DMIC L2\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"DMIC R2\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"IN1P\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"IN1N\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"IN2P\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"IN2N\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"Haptic Generator\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"DMIC1\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"DMIC2\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"DMIC CLK\00", align 1
@.str.118 = private unnamed_addr constant [12 x i8] c"DMIC1 Power\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"DMIC2 Power\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"BST1\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"BST2\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"INL VOL\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"INR VOL\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"RECMIXL\00", align 1
@rt5645_rec_l_mix = internal constant [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.237, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.238 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.239, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.240 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.241, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.242 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.243, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.244 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.246 to i32) }], align 4
@.str.125 = private unnamed_addr constant [8 x i8] c"RECMIXR\00", align 1
@rt5645_rec_r_mix = internal constant [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.247, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.248 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.250 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.241, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.251 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.243, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.252 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.253, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.254 to i32) }], align 4
@.str.126 = private unnamed_addr constant [6 x i8] c"ADC L\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"ADC R\00", align 1
@.str.128 = private unnamed_addr constant [17 x i8] c"Stereo1 DMIC Mux\00", align 1
@rt5645_sto1_dmic_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_stereo1_dmic_enum to i32) }, align 4
@.str.129 = private unnamed_addr constant [19 x i8] c"Stereo1 ADC L2 Mux\00", align 1
@rt5645_sto_adc2_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.256, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_stereo1_adc2_enum to i32) }, align 4
@.str.130 = private unnamed_addr constant [19 x i8] c"Stereo1 ADC R2 Mux\00", align 1
@.str.131 = private unnamed_addr constant [19 x i8] c"Stereo1 ADC L1 Mux\00", align 1
@rt5645_sto_adc1_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.259, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_stereo1_adc1_enum to i32) }, align 4
@.str.132 = private unnamed_addr constant [19 x i8] c"Stereo1 ADC R1 Mux\00", align 1
@.str.133 = private unnamed_addr constant [16 x i8] c"Mono DMIC L Mux\00", align 1
@rt5645_mono_dmic_l_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.261, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_mono_dmic_l_enum to i32) }, align 4
@.str.134 = private unnamed_addr constant [16 x i8] c"Mono DMIC R Mux\00", align 1
@rt5645_mono_dmic_r_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.262, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_mono_dmic_r_enum to i32) }, align 4
@.str.135 = private unnamed_addr constant [16 x i8] c"Mono ADC L2 Mux\00", align 1
@rt5645_mono_adc_l2_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.263, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_mono_adc_l2_enum to i32) }, align 4
@.str.136 = private unnamed_addr constant [16 x i8] c"Mono ADC L1 Mux\00", align 1
@rt5645_mono_adc_l1_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.264, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_mono_adc_l1_enum to i32) }, align 4
@.str.137 = private unnamed_addr constant [16 x i8] c"Mono ADC R1 Mux\00", align 1
@rt5645_mono_adc_r1_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.265, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_mono_adc_r1_enum to i32) }, align 4
@.str.138 = private unnamed_addr constant [16 x i8] c"Mono ADC R2 Mux\00", align 1
@rt5645_mono_adc_r2_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.266, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_mono_adc_r2_enum to i32) }, align 4
@.str.139 = private unnamed_addr constant [19 x i8] c"adc stereo1 filter\00", align 1
@.str.140 = private unnamed_addr constant [14 x i8] c"Sto1 ADC MIXL\00", align 1
@rt5645_sto1_adc_l_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.267, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.268 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.269, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.270 to i32) }], align 4
@.str.141 = private unnamed_addr constant [14 x i8] c"Sto1 ADC MIXR\00", align 1
@rt5645_sto1_adc_r_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.267, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.271 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.269, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.272 to i32) }], align 4
@.str.142 = private unnamed_addr constant [21 x i8] c"adc mono left filter\00", align 1
@.str.143 = private unnamed_addr constant [14 x i8] c"Mono ADC MIXL\00", align 1
@rt5645_mono_adc_l_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.267, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.273 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.269, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.274 to i32) }], align 4
@.str.144 = private unnamed_addr constant [22 x i8] c"adc mono right filter\00", align 1
@.str.145 = private unnamed_addr constant [14 x i8] c"Mono ADC MIXR\00", align 1
@rt5645_mono_adc_r_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.267, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.275 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.269, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.276 to i32) }], align 4
@.str.146 = private unnamed_addr constant [17 x i8] c"Stereo1 ADC MIXL\00", align 1
@.str.147 = private unnamed_addr constant [17 x i8] c"Stereo1 ADC MIXR\00", align 1
@.str.148 = private unnamed_addr constant [16 x i8] c"Sto2 ADC LR MIX\00", align 1
@.str.149 = private unnamed_addr constant [8 x i8] c"VAD_ADC\00", align 1
@.str.150 = private unnamed_addr constant [8 x i8] c"IF_ADC1\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"IF_ADC2\00", align 1
@.str.152 = private unnamed_addr constant [9 x i8] c"IF1_ADC1\00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"IF1_ADC2\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"IF1_ADC3\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"IF1_ADC4\00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"IF2 ADC Mux\00", align 1
@rt5645_if2_adc_in_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.277, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_if2_adc_in_enum to i32) }, align 4
@.str.157 = private unnamed_addr constant [5 x i8] c"I2S1\00", align 1
@.str.158 = private unnamed_addr constant [9 x i8] c"IF1 DAC0\00", align 1
@.str.159 = private unnamed_addr constant [9 x i8] c"IF1 DAC1\00", align 1
@.str.160 = private unnamed_addr constant [9 x i8] c"IF1 DAC2\00", align 1
@.str.161 = private unnamed_addr constant [9 x i8] c"IF1 DAC3\00", align 1
@.str.162 = private unnamed_addr constant [8 x i8] c"IF1 ADC\00", align 1
@.str.163 = private unnamed_addr constant [10 x i8] c"IF1 ADC L\00", align 1
@.str.164 = private unnamed_addr constant [10 x i8] c"IF1 ADC R\00", align 1
@.str.165 = private unnamed_addr constant [5 x i8] c"I2S2\00", align 1
@.str.166 = private unnamed_addr constant [8 x i8] c"IF2 DAC\00", align 1
@.str.167 = private unnamed_addr constant [10 x i8] c"IF2 DAC L\00", align 1
@.str.168 = private unnamed_addr constant [10 x i8] c"IF2 DAC R\00", align 1
@.str.169 = private unnamed_addr constant [8 x i8] c"IF2 ADC\00", align 1
@.str.170 = private unnamed_addr constant [12 x i8] c"VAD ADC Mux\00", align 1
@rt5645_vad_adc_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.278, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_vad_adc_enum to i32) }, align 4
@.str.171 = private unnamed_addr constant [7 x i8] c"AIF1RX\00", align 1
@.str.172 = private unnamed_addr constant [14 x i8] c"AIF1 Playback\00", align 1
@.str.173 = private unnamed_addr constant [7 x i8] c"AIF1TX\00", align 1
@.str.174 = private unnamed_addr constant [13 x i8] c"AIF1 Capture\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c"AIF2RX\00", align 1
@.str.176 = private unnamed_addr constant [14 x i8] c"AIF2 Playback\00", align 1
@.str.177 = private unnamed_addr constant [7 x i8] c"AIF2TX\00", align 1
@.str.178 = private unnamed_addr constant [13 x i8] c"AIF2 Capture\00", align 1
@.str.179 = private unnamed_addr constant [10 x i8] c"DAC1 MIXL\00", align 1
@rt5645_dac_l_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.282, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.283 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.284, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.285 to i32) }], align 4
@.str.180 = private unnamed_addr constant [10 x i8] c"DAC1 MIXR\00", align 1
@rt5645_dac_r_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.282, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.286 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.284, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.287 to i32) }], align 4
@.str.181 = private unnamed_addr constant [11 x i8] c"DAC L2 Mux\00", align 1
@rt5645_dac_l2_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.288, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_dac2l_enum to i32) }, align 4
@.str.182 = private unnamed_addr constant [11 x i8] c"DAC R2 Mux\00", align 1
@rt5645_dac_r2_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.292, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_dac2r_enum to i32) }, align 4
@.str.183 = private unnamed_addr constant [14 x i8] c"DAC L2 Volume\00", align 1
@.str.184 = private unnamed_addr constant [14 x i8] c"DAC R2 Volume\00", align 1
@.str.185 = private unnamed_addr constant [11 x i8] c"DAC1 L Mux\00", align 1
@rt5645_dac1l_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.294, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_dac1l_enum to i32) }, align 4
@.str.186 = private unnamed_addr constant [11 x i8] c"DAC1 R Mux\00", align 1
@rt5645_dac1r_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.295, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_dac1r_enum to i32) }, align 4
@.str.187 = private unnamed_addr constant [19 x i8] c"dac stereo1 filter\00", align 1
@.str.188 = private unnamed_addr constant [21 x i8] c"dac mono left filter\00", align 1
@.str.189 = private unnamed_addr constant [22 x i8] c"dac mono right filter\00", align 1
@.str.190 = private unnamed_addr constant [16 x i8] c"Stereo DAC MIXL\00", align 1
@rt5645_sto_dac_l_mix = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.296, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.297 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.298, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.299 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.300, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.301 to i32) }], align 4
@.str.191 = private unnamed_addr constant [16 x i8] c"Stereo DAC MIXR\00", align 1
@rt5645_sto_dac_r_mix = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.300, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.302 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.303, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.304 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.296, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.305 to i32) }], align 4
@.str.192 = private unnamed_addr constant [14 x i8] c"Mono DAC MIXL\00", align 1
@rt5645_mono_dac_l_mix = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.296, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.306 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.298, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.307 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.303, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.308 to i32) }], align 4
@.str.193 = private unnamed_addr constant [14 x i8] c"Mono DAC MIXR\00", align 1
@rt5645_mono_dac_r_mix = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.300, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.309 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.303, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.310 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.298, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.311 to i32) }], align 4
@.str.194 = private unnamed_addr constant [9 x i8] c"DAC MIXL\00", align 1
@rt5645_dig_l_mix = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.312, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.313 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.298, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.314 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.303, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.315 to i32) }], align 4
@.str.195 = private unnamed_addr constant [9 x i8] c"DAC MIXR\00", align 1
@rt5645_dig_r_mix = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.316, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.317 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.303, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.318 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.298, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.319 to i32) }], align 4
@.str.196 = private unnamed_addr constant [7 x i8] c"DAC L1\00", align 1
@.str.197 = private unnamed_addr constant [7 x i8] c"DAC L2\00", align 1
@.str.198 = private unnamed_addr constant [7 x i8] c"DAC R1\00", align 1
@.str.199 = private unnamed_addr constant [7 x i8] c"DAC R2\00", align 1
@.str.200 = private unnamed_addr constant [9 x i8] c"SPK MIXL\00", align 1
@rt5645_spk_l_mix = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.296, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.320 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.298, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.321 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.239, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.322 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.243, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.323 to i32) }], align 4
@.str.201 = private unnamed_addr constant [9 x i8] c"SPK MIXR\00", align 1
@rt5645_spk_r_mix = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.300, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.324 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.303, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.325 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.326 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.241, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.327 to i32) }], align 4
@.str.202 = private unnamed_addr constant [9 x i8] c"OUT MIXL\00", align 1
@rt5645_out_l_mix = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.243, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.328 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.239, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.329 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.298, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.330 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.296, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.331 to i32) }], align 4
@.str.203 = private unnamed_addr constant [9 x i8] c"OUT MIXR\00", align 1
@rt5645_out_r_mix = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.241, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.332 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.333 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.303, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.334 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.300, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.335 to i32) }], align 4
@.str.204 = private unnamed_addr constant [9 x i8] c"SPKVOL L\00", align 1
@spk_l_vol_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.336, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.337 to i32) }, align 4
@.str.205 = private unnamed_addr constant [9 x i8] c"SPKVOL R\00", align 1
@spk_r_vol_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.336, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.338 to i32) }, align 4
@.str.206 = private unnamed_addr constant [12 x i8] c"HPOVOL MIXL\00", align 1
@rt5645_hpvoll_mix = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.284, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.339 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.340, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.341 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.239, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.342 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.243, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.343 to i32) }], align 4
@.str.207 = private unnamed_addr constant [12 x i8] c"HPOVOL MIXR\00", align 1
@rt5645_hpvolr_mix = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.284, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.344 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.340, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.345 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.346 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.241, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.347 to i32) }], align 4
@.str.208 = private unnamed_addr constant [18 x i8] c"HPOVOL MIXL Power\00", align 1
@.str.209 = private unnamed_addr constant [18 x i8] c"HPOVOL MIXR Power\00", align 1
@.str.210 = private unnamed_addr constant [6 x i8] c"DAC 1\00", align 1
@.str.211 = private unnamed_addr constant [6 x i8] c"DAC 2\00", align 1
@.str.212 = private unnamed_addr constant [7 x i8] c"HPOVOL\00", align 1
@.str.213 = private unnamed_addr constant [9 x i8] c"HPOVOL L\00", align 1
@hp_l_vol_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.336, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.348 to i32) }, align 4
@.str.214 = private unnamed_addr constant [9 x i8] c"HPOVOL R\00", align 1
@hp_r_vol_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.336, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.349 to i32) }, align 4
@.str.215 = private unnamed_addr constant [9 x i8] c"SPOL MIX\00", align 1
@rt5645_spo_l_mix = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.300, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.350 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.296, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.351 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.352, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.353 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.354, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.355 to i32) }], align 4
@.str.216 = private unnamed_addr constant [9 x i8] c"SPOR MIX\00", align 1
@rt5645_spo_r_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.300, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.356 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.352, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.357 to i32) }], align 4
@.str.217 = private unnamed_addr constant [8 x i8] c"HPO MIX\00", align 1
@rt5645_hpo_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.284, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.358 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.359, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.360 to i32) }], align 4
@.str.218 = private unnamed_addr constant [9 x i8] c"LOUT MIX\00", align 1
@rt5645_lout_mix = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.296, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.361 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.300, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.362 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.363, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.364 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.365, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.366 to i32) }], align 4
@.str.219 = private unnamed_addr constant [7 x i8] c"HP amp\00", align 1
@.str.220 = private unnamed_addr constant [9 x i8] c"LOUT amp\00", align 1
@.str.221 = private unnamed_addr constant [8 x i8] c"SPK amp\00", align 1
@.str.222 = private unnamed_addr constant [11 x i8] c"PDM1 Power\00", align 1
@.str.223 = private unnamed_addr constant [11 x i8] c"PDM1 L Mux\00", align 1
@rt5645_pdm1_l_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.367, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_pdm1_l_enum to i32) }, align 4
@.str.224 = private unnamed_addr constant [11 x i8] c"PDM1 R Mux\00", align 1
@rt5645_pdm1_r_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.370, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_pdm1_r_enum to i32) }, align 4
@.str.225 = private unnamed_addr constant [7 x i8] c"PDM1 L\00", align 1
@pdm1_l_vol_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.336, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.371 to i32) }, align 4
@.str.226 = private unnamed_addr constant [7 x i8] c"PDM1 R\00", align 1
@pdm1_r_vol_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.336, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.372 to i32) }, align 4
@.str.227 = private unnamed_addr constant [5 x i8] c"HPOL\00", align 1
@.str.228 = private unnamed_addr constant [5 x i8] c"HPOR\00", align 1
@.str.229 = private unnamed_addr constant [6 x i8] c"LOUTL\00", align 1
@.str.230 = private unnamed_addr constant [6 x i8] c"LOUTR\00", align 1
@.str.231 = private unnamed_addr constant [6 x i8] c"PDM1L\00", align 1
@.str.232 = private unnamed_addr constant [6 x i8] c"PDM1R\00", align 1
@.str.233 = private unnamed_addr constant [5 x i8] c"SPOL\00", align 1
@.str.234 = private unnamed_addr constant [5 x i8] c"SPOR\00", align 1
@rt5645_dapm_widgets = internal constant [144 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @rt5645_set_micbias1_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @rt5645_set_micbias2_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.115, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.116, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.117, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @set_dmic_clk, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.118, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 117, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.119, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 117, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.120, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt5645_bst2_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.124, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @rt5645_rec_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @rt5645_rec_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.128, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_sto1_dmic_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.129, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_sto_adc2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.130, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_sto_adc2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_sto_adc1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_sto_adc1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_mono_dmic_l_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.134, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_mono_dmic_r_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_mono_adc_l2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_mono_adc_l1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.137, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_mono_adc_r1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.138, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_mono_adc_r2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.139, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.140, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5645_sto1_adc_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.141, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5645_sto1_adc_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.142, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.143, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5645_mono_adc_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5645_mono_adc_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.149, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.150, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_if2_adc_in_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.158, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.159, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.161, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.162, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.163, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.164, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.165, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.167, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.169, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_vad_adc_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.171, ptr @.str.172, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.173, ptr @.str.174, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.175, ptr @.str.176, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.177, ptr @.str.178, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.179, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5645_dac_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.180, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5645_dac_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.181, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_dac_l2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.182, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_dac_r2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.183, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.184, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.185, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_dac1l_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.186, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_dac1r_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.187, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.188, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.189, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.190, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5645_sto_dac_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.191, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5645_sto_dac_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.192, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5645_mono_dac_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.193, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5645_mono_dac_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.194, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5645_dig_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.195, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @rt5645_dig_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.196, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.197, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.198, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.199, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.200, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5645_spk_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.201, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5645_spk_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.202, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5645_out_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.203, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5645_out_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.204, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @spk_l_vol_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.205, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @spk_r_vol_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.206, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5645_hpvoll_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.207, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5645_hpvolr_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.208, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.209, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.210, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.211, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.212, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.213, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hp_l_vol_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.214, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hp_r_vol_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.215, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5645_spo_l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.216, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5645_spo_r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.217, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @rt5645_hpo_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.218, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @rt5645_lout_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.219, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 6, ptr @rt5645_hp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.220, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 6, ptr @rt5645_lout_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.221, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 6, ptr @rt5645_spk_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.222, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.223, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_pdm1_l_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.224, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_pdm1_r_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.225, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @pdm1_l_vol_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.226, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @pdm1_r_vol_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.227, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.228, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.229, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.230, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.231, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.232, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.233, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.234, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.236 = private unnamed_addr constant [26 x i8] c"Failed to set DMIC clock\0A\00", align 1
@.str.237 = private unnamed_addr constant [12 x i8] c"HPOL Switch\00", align 1
@.compoundliteral.238 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 4, i32 4, i32 0, i8 1 }, align 4
@.str.239 = private unnamed_addr constant [11 x i8] c"INL Switch\00", align 1
@.compoundliteral.240 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 5, i32 5, i32 0, i8 1 }, align 4
@.str.241 = private unnamed_addr constant [12 x i8] c"BST2 Switch\00", align 1
@.compoundliteral.242 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 2, i32 2, i32 0, i8 1 }, align 4
@.str.243 = private unnamed_addr constant [12 x i8] c"BST1 Switch\00", align 1
@.compoundliteral.244 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 1, i32 1, i32 0, i8 1 }, align 4
@.str.245 = private unnamed_addr constant [16 x i8] c"OUT MIXL Switch\00", align 1
@.compoundliteral.246 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.247 = private unnamed_addr constant [12 x i8] c"HPOR Switch\00", align 1
@.compoundliteral.248 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 4, i32 4, i32 0, i8 1 }, align 4
@.str.249 = private unnamed_addr constant [11 x i8] c"INR Switch\00", align 1
@.compoundliteral.250 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 5, i32 5, i32 0, i8 1 }, align 4
@.compoundliteral.251 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 2, i32 2, i32 0, i8 1 }, align 4
@.compoundliteral.252 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 1, i32 1, i32 0, i8 1 }, align 4
@.str.253 = private unnamed_addr constant [16 x i8] c"OUT MIXR Switch\00", align 1
@.compoundliteral.254 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.255 = private unnamed_addr constant [20 x i8] c"Stereo1 DMIC source\00", align 1
@rt5645_stereo1_dmic_enum = internal constant %struct.soc_enum { i32 39, i8 8, i8 8, i32 2, i32 1, ptr @rt5645_stereo_dmic_src, ptr null, i8 0 }, align 4
@rt5645_stereo_dmic_src = internal constant [2 x ptr] [ptr @.str.115, ptr @.str.116], align 4
@.str.256 = private unnamed_addr constant [17 x i8] c"Stereo1 ADC2 Mux\00", align 1
@rt5645_stereo1_adc2_enum = internal constant %struct.soc_enum { i32 39, i8 11, i8 11, i32 2, i32 1, ptr @rt5645_stereo_adc2_src, ptr null, i8 0 }, align 4
@rt5645_stereo_adc2_src = internal constant [2 x ptr] [ptr @.str.257, ptr @.str.258], align 4
@.str.257 = private unnamed_addr constant [8 x i8] c"DAC MIX\00", align 1
@.str.258 = private unnamed_addr constant [5 x i8] c"DMIC\00", align 1
@.str.259 = private unnamed_addr constant [17 x i8] c"Stereo1 ADC1 Mux\00", align 1
@rt5645_stereo1_adc1_enum = internal constant %struct.soc_enum { i32 39, i8 12, i8 12, i32 2, i32 1, ptr @rt5645_stereo_adc1_src, ptr null, i8 0 }, align 4
@rt5645_stereo_adc1_src = internal constant [2 x ptr] [ptr @.str.257, ptr @.str.260], align 4
@.str.260 = private unnamed_addr constant [4 x i8] c"ADC\00", align 1
@.str.261 = private unnamed_addr constant [22 x i8] c"Mono DMIC left source\00", align 1
@rt5645_mono_dmic_l_enum = internal constant %struct.soc_enum { i32 40, i8 8, i8 8, i32 2, i32 1, ptr @rt5645_mono_dmic_src, ptr null, i8 0 }, align 4
@rt5645_mono_dmic_src = internal constant [2 x ptr] [ptr @.str.115, ptr @.str.116], align 4
@.str.262 = private unnamed_addr constant [23 x i8] c"Mono DMIC Right source\00", align 1
@rt5645_mono_dmic_r_enum = internal constant %struct.soc_enum { i32 40, i8 0, i8 0, i32 2, i32 1, ptr @rt5645_mono_dmic_src, ptr null, i8 0 }, align 4
@.str.263 = private unnamed_addr constant [22 x i8] c"Mono ADC2 left source\00", align 1
@rt5645_mono_adc_l2_enum = internal constant %struct.soc_enum { i32 40, i8 11, i8 11, i32 2, i32 1, ptr @rt5645_mono_adc_l2_src, ptr null, i8 0 }, align 4
@rt5645_mono_adc_l2_src = internal constant [2 x ptr] [ptr @.str.192, ptr @.str.258], align 4
@.str.264 = private unnamed_addr constant [22 x i8] c"Mono ADC1 left source\00", align 1
@rt5645_mono_adc_l1_enum = internal constant %struct.soc_enum { i32 40, i8 12, i8 12, i32 2, i32 1, ptr @rt5645_mono_adc_l1_src, ptr null, i8 0 }, align 4
@rt5645_mono_adc_l1_src = internal constant [2 x ptr] [ptr @.str.192, ptr @.str.260], align 4
@.str.265 = private unnamed_addr constant [23 x i8] c"Mono ADC1 right source\00", align 1
@rt5645_mono_adc_r1_enum = internal constant %struct.soc_enum { i32 40, i8 4, i8 4, i32 2, i32 1, ptr @rt5645_mono_adc_r1_src, ptr null, i8 0 }, align 4
@rt5645_mono_adc_r1_src = internal constant [2 x ptr] [ptr @.str.193, ptr @.str.260], align 4
@.str.266 = private unnamed_addr constant [23 x i8] c"Mono ADC2 right source\00", align 1
@rt5645_mono_adc_r2_enum = internal constant %struct.soc_enum { i32 40, i8 3, i8 3, i32 2, i32 1, ptr @rt5645_mono_adc_r2_src, ptr null, i8 0 }, align 4
@rt5645_mono_adc_r2_src = internal constant [2 x ptr] [ptr @.str.193, ptr @.str.258], align 4
@.str.267 = private unnamed_addr constant [12 x i8] c"ADC1 Switch\00", align 1
@.compoundliteral.268 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 14, i32 14, i32 0, i8 1 }, align 4
@.str.269 = private unnamed_addr constant [12 x i8] c"ADC2 Switch\00", align 1
@.compoundliteral.270 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 13, i32 13, i32 0, i8 1 }, align 4
@.compoundliteral.271 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 6, i32 6, i32 0, i8 1 }, align 4
@.compoundliteral.272 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 5, i32 5, i32 0, i8 1 }, align 4
@.compoundliteral.273 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 14, i32 14, i32 0, i8 1 }, align 4
@.compoundliteral.274 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 13, i32 13, i32 0, i8 1 }, align 4
@.compoundliteral.275 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 6, i32 6, i32 0, i8 1 }, align 4
@.compoundliteral.276 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 5, i32 5, i32 0, i8 1 }, align 4
@.str.277 = private unnamed_addr constant [18 x i8] c"IF2 ADC IN source\00", align 1
@rt5645_if2_adc_in_enum = internal constant %struct.soc_enum { i32 47, i8 12, i8 12, i32 3, i32 3, ptr @rt5645_if2_adc_in_src, ptr null, i8 0 }, align 4
@rt5645_if2_adc_in_src = internal constant [3 x ptr] [ptr @.str.150, ptr @.str.151, ptr @.str.149], align 4
@.str.278 = private unnamed_addr constant [15 x i8] c"VAD ADC source\00", align 1
@rt5645_vad_adc_enum = internal constant %struct.soc_enum { i32 157, i8 8, i8 8, i32 3, i32 3, ptr @rt5645_vad_adc_src, ptr null, i8 0 }, align 4
@rt5645_vad_adc_src = internal constant [3 x ptr] [ptr @.str.279, ptr @.str.280, ptr @.str.281], align 4
@.str.279 = private unnamed_addr constant [11 x i8] c"Sto1 ADC L\00", align 1
@.str.280 = private unnamed_addr constant [11 x i8] c"Mono ADC L\00", align 1
@.str.281 = private unnamed_addr constant [11 x i8] c"Mono ADC R\00", align 1
@.str.282 = private unnamed_addr constant [18 x i8] c"Stereo ADC Switch\00", align 1
@.compoundliteral.283 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 15, i32 15, i32 0, i8 1 }, align 4
@.str.284 = private unnamed_addr constant [12 x i8] c"DAC1 Switch\00", align 1
@.compoundliteral.285 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 14, i32 14, i32 0, i8 3 }, align 4
@.compoundliteral.286 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 7, i32 7, i32 0, i8 1 }, align 4
@.compoundliteral.287 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 6, i32 6, i32 0, i8 3 }, align 4
@.str.288 = private unnamed_addr constant [14 x i8] c"DAC2 L source\00", align 1
@rt5645_dac2l_enum = internal constant %struct.soc_enum { i32 27, i8 4, i8 4, i32 5, i32 7, ptr @rt5645_dac12_src, ptr null, i8 0 }, align 4
@rt5645_dac12_src = internal constant [5 x ptr] [ptr @.str.289, ptr @.str.166, ptr @.str.290, ptr @.str.291, ptr @.str.149], align 4
@.str.289 = private unnamed_addr constant [8 x i8] c"IF1 DAC\00", align 1
@.str.290 = private unnamed_addr constant [8 x i8] c"IF3 DAC\00", align 1
@.str.291 = private unnamed_addr constant [9 x i8] c"Mono ADC\00", align 1
@.str.292 = private unnamed_addr constant [14 x i8] c"DAC2 R source\00", align 1
@rt5645_dac2r_enum = internal constant %struct.soc_enum { i32 27, i8 0, i8 0, i32 5, i32 7, ptr @rt5645_dacr2_src, ptr null, i8 0 }, align 4
@rt5645_dacr2_src = internal constant [5 x ptr] [ptr @.str.289, ptr @.str.166, ptr @.str.290, ptr @.str.291, ptr @.str.293], align 4
@.str.293 = private unnamed_addr constant [7 x i8] c"Haptic\00", align 1
@.str.294 = private unnamed_addr constant [14 x i8] c"DAC1 L source\00", align 1
@rt5645_dac1l_enum = internal constant %struct.soc_enum { i32 41, i8 8, i8 8, i32 3, i32 3, ptr @rt5645_dac1_src, ptr null, i8 0 }, align 4
@rt5645_dac1_src = internal constant [3 x ptr] [ptr @.str.289, ptr @.str.166, ptr @.str.290], align 4
@.str.295 = private unnamed_addr constant [14 x i8] c"DAC1 R source\00", align 1
@rt5645_dac1r_enum = internal constant %struct.soc_enum { i32 41, i8 10, i8 10, i32 3, i32 3, ptr @rt5645_dac1_src, ptr null, i8 0 }, align 4
@.str.296 = private unnamed_addr constant [14 x i8] c"DAC L1 Switch\00", align 1
@.compoundliteral.297 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 14, i32 14, i32 0, i8 1 }, align 4
@.str.298 = private unnamed_addr constant [14 x i8] c"DAC L2 Switch\00", align 1
@.compoundliteral.299 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 12, i32 12, i32 0, i8 1 }, align 4
@.str.300 = private unnamed_addr constant [14 x i8] c"DAC R1 Switch\00", align 1
@.compoundliteral.301 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 9, i32 9, i32 0, i8 1 }, align 4
@.compoundliteral.302 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 6, i32 6, i32 0, i8 1 }, align 4
@.str.303 = private unnamed_addr constant [14 x i8] c"DAC R2 Switch\00", align 1
@.compoundliteral.304 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 4, i32 4, i32 0, i8 1 }, align 4
@.compoundliteral.305 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 1, i32 1, i32 0, i8 1 }, align 4
@.compoundliteral.306 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 14, i32 14, i32 0, i8 1 }, align 4
@.compoundliteral.307 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 12, i32 12, i32 0, i8 1 }, align 4
@.compoundliteral.308 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 10, i32 10, i32 0, i8 1 }, align 4
@.compoundliteral.309 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 6, i32 6, i32 0, i8 1 }, align 4
@.compoundliteral.310 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 4, i32 4, i32 0, i8 1 }, align 4
@.compoundliteral.311 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 2, i32 2, i32 0, i8 1 }, align 4
@.str.312 = private unnamed_addr constant [21 x i8] c"Sto DAC Mix L Switch\00", align 1
@.compoundliteral.313 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 15, i32 15, i32 0, i8 1 }, align 4
@.compoundliteral.314 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 13, i32 13, i32 0, i8 1 }, align 4
@.compoundliteral.315 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.316 = private unnamed_addr constant [21 x i8] c"Sto DAC Mix R Switch\00", align 1
@.compoundliteral.317 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 11, i32 11, i32 0, i8 1 }, align 4
@.compoundliteral.318 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 9, i32 9, i32 0, i8 1 }, align 4
@.compoundliteral.319 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 5, i32 5, i32 0, i8 1 }, align 4
@.compoundliteral.320 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 70, i32 70, i32 1, i32 1, i32 0, i8 1 }, align 4
@.compoundliteral.321 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 70, i32 70, i32 2, i32 2, i32 0, i8 1 }, align 4
@.compoundliteral.322 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 70, i32 70, i32 3, i32 3, i32 0, i8 1 }, align 4
@.compoundliteral.323 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 70, i32 70, i32 5, i32 5, i32 0, i8 1 }, align 4
@.compoundliteral.324 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 71, i32 71, i32 1, i32 1, i32 0, i8 1 }, align 4
@.compoundliteral.325 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 71, i32 71, i32 2, i32 2, i32 0, i8 1 }, align 4
@.compoundliteral.326 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 71, i32 71, i32 3, i32 3, i32 0, i8 1 }, align 4
@.compoundliteral.327 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 71, i32 71, i32 5, i32 5, i32 0, i8 1 }, align 4
@.compoundliteral.328 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 3, i32 3, i32 0, i8 1 }, align 4
@.compoundliteral.329 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 2, i32 2, i32 0, i8 1 }, align 4
@.compoundliteral.330 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 1, i32 1, i32 0, i8 1 }, align 4
@.compoundliteral.331 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 0, i32 0, i32 0, i8 1 }, align 4
@.compoundliteral.332 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 3, i32 3, i32 0, i8 1 }, align 4
@.compoundliteral.333 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 2, i32 2, i32 0, i8 1 }, align 4
@.compoundliteral.334 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 1, i32 1, i32 0, i8 1 }, align 4
@.compoundliteral.335 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.336 = private unnamed_addr constant [7 x i8] c"Switch\00", align 1
@.compoundliteral.337 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1, i32 1, i32 15, i32 15, i32 0, i8 3 }, align 4
@.compoundliteral.338 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1, i32 1, i32 7, i32 7, i32 0, i8 3 }, align 4
@.compoundliteral.339 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 64, i32 64, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.340 = private unnamed_addr constant [12 x i8] c"DAC2 Switch\00", align 1
@.compoundliteral.341 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 64, i32 64, i32 1, i32 1, i32 0, i8 1 }, align 4
@.compoundliteral.342 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 64, i32 64, i32 2, i32 2, i32 0, i8 1 }, align 4
@.compoundliteral.343 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 64, i32 64, i32 4, i32 4, i32 0, i8 1 }, align 4
@.compoundliteral.344 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 66, i32 66, i32 0, i32 0, i32 0, i8 1 }, align 4
@.compoundliteral.345 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 66, i32 66, i32 1, i32 1, i32 0, i8 1 }, align 4
@.compoundliteral.346 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 66, i32 66, i32 2, i32 2, i32 0, i8 1 }, align 4
@.compoundliteral.347 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 66, i32 66, i32 4, i32 4, i32 0, i8 1 }, align 4
@.compoundliteral.348 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 15, i32 15, i32 0, i8 3 }, align 4
@.compoundliteral.349 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 7, i32 7, i32 0, i8 3 }, align 4
@.compoundliteral.350 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 14, i32 14, i32 0, i8 1 }, align 4
@.compoundliteral.351 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 15, i32 15, i32 0, i8 1 }, align 4
@.str.352 = private unnamed_addr constant [16 x i8] c"SPKVOL R Switch\00", align 1
@.compoundliteral.353 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 12, i32 12, i32 0, i8 1 }, align 4
@.str.354 = private unnamed_addr constant [16 x i8] c"SPKVOL L Switch\00", align 1
@.compoundliteral.355 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 13, i32 13, i32 0, i8 1 }, align 4
@.compoundliteral.356 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 2, i32 2, i32 0, i8 1 }, align 4
@.compoundliteral.357 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 0, i32 0, i32 0, i8 1 }, align 4
@.compoundliteral.358 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 69, i32 69, i32 14, i32 14, i32 0, i8 1 }, align 4
@.str.359 = private unnamed_addr constant [13 x i8] c"HPVOL Switch\00", align 1
@.compoundliteral.360 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 69, i32 69, i32 13, i32 13, i32 0, i8 1 }, align 4
@.compoundliteral.361 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 15, i32 15, i32 0, i8 1 }, align 4
@.compoundliteral.362 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 14, i32 14, i32 0, i8 1 }, align 4
@.str.363 = private unnamed_addr constant [16 x i8] c"OUTMIX L Switch\00", align 1
@.compoundliteral.364 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 13, i32 13, i32 0, i8 1 }, align 4
@.str.365 = private unnamed_addr constant [16 x i8] c"OUTMIX R Switch\00", align 1
@.compoundliteral.366 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 12, i32 12, i32 0, i8 1 }, align 4
@hp_amp_power.hp_amp_power_count = internal unnamed_addr global i32 0, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.367 = private unnamed_addr constant [14 x i8] c"PDM1 L source\00", align 1
@rt5645_pdm1_l_enum = internal constant %struct.soc_enum { i32 49, i8 15, i8 15, i32 2, i32 1, ptr @rt5645_pdm_src, ptr null, i8 0 }, align 4
@rt5645_pdm_src = internal constant [2 x ptr] [ptr @.str.368, ptr @.str.369], align 4
@.str.368 = private unnamed_addr constant [9 x i8] c"Mono DAC\00", align 1
@.str.369 = private unnamed_addr constant [11 x i8] c"Stereo DAC\00", align 1
@.str.370 = private unnamed_addr constant [14 x i8] c"PDM1 R source\00", align 1
@rt5645_pdm1_r_enum = internal constant %struct.soc_enum { i32 49, i8 13, i8 13, i32 2, i32 1, ptr @rt5645_pdm_src, ptr null, i8 0 }, align 4
@.compoundliteral.371 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 49, i32 49, i32 16384, i32 16384, i32 0, i8 3 }, align 4
@.compoundliteral.372 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 49, i32 49, i32 4096, i32 4096, i32 0, i8 3 }, align 4
@rt5645_specific_dapm_routes = internal constant [44 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.196, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.198, ptr null, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.197, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr null, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.378, ptr @.str.396, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.378, ptr @.str.397, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.378, ptr @.str.398, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.378, ptr @.str.399, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.379, ptr @.str.396, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.379, ptr @.str.397, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.379, ptr @.str.398, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.379, ptr @.str.399, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.380, ptr @.str.396, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.380, ptr @.str.397, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.380, ptr @.str.398, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.380, ptr @.str.399, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.378, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.379, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.380, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.377, ptr @.str.391, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.377, ptr @.str.392, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.377, ptr @.str.393, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.377, ptr @.str.394, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr null, ptr @.str.377, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.373, ptr @.str.383, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.373, ptr @.str.384, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.373, ptr @.str.385, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.373, ptr @.str.386, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.374, ptr @.str.383, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.374, ptr @.str.384, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.374, ptr @.str.385, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.374, ptr @.str.386, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.375, ptr @.str.383, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.375, ptr @.str.384, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.375, ptr @.str.385, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.375, ptr @.str.386, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.376, ptr @.str.383, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.376, ptr @.str.384, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.376, ptr @.str.385, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.376, ptr @.str.386, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr @.str.289, ptr @.str.373, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr @.str.289, ptr @.str.374, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr @.str.289, ptr @.str.375, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr @.str.289, ptr @.str.376, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@rt5645_old_dapm_routes = internal constant [2 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.215, ptr @.str.300, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr @.str.352, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@rt5650_specific_dapm_routes = internal constant [72 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.402, ptr @.str.416, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.402, ptr @.str.417, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.403, ptr @.str.416, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.403, ptr @.str.417, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.404, ptr @.str.417, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.404, ptr @.str.420, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.405, ptr @.str.417, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.405, ptr @.str.420, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr null, ptr @.str.402, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.198, ptr null, ptr @.str.403, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.197, ptr null, ptr @.str.404, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr null, ptr @.str.405, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.406, ptr @.str.396, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.406, ptr @.str.397, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.406, ptr @.str.398, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.406, ptr @.str.399, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.407, ptr @.str.396, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.407, ptr @.str.397, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.407, ptr @.str.398, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.407, ptr @.str.399, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.408, ptr @.str.396, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.408, ptr @.str.397, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.408, ptr @.str.398, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.408, ptr @.str.399, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.406, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.407, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.408, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.422, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.423, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.424, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.425, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.426, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.427, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.428, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.429, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.430, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.431, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.432, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.433, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.434, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.435, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.436, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.437, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.438, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.439, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.440, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.441, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.442, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.443, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.444, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.445, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr null, ptr @.str.409, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.410, ptr @.str.383, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.410, ptr @.str.384, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.410, ptr @.str.385, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.410, ptr @.str.386, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.411, ptr @.str.383, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.411, ptr @.str.384, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.411, ptr @.str.385, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.411, ptr @.str.386, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.412, ptr @.str.383, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.412, ptr @.str.384, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.412, ptr @.str.385, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.412, ptr @.str.386, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.413, ptr @.str.383, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.413, ptr @.str.384, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.413, ptr @.str.385, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.413, ptr @.str.386, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr @.str.289, ptr @.str.410, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr @.str.289, ptr @.str.411, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr @.str.289, ptr @.str.412, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr @.str.289, ptr @.str.413, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str.373 = private unnamed_addr constant [22 x i8] c"RT5645 IF1 DAC1 L Mux\00", align 1
@rt5645_if1_dac0_tdm_sel_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.382, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_tdm_dac0_enum to i32) }, align 4
@.str.374 = private unnamed_addr constant [22 x i8] c"RT5645 IF1 DAC1 R Mux\00", align 1
@rt5645_if1_dac1_tdm_sel_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.387, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_tdm_dac1_enum to i32) }, align 4
@.str.375 = private unnamed_addr constant [22 x i8] c"RT5645 IF1 DAC2 L Mux\00", align 1
@rt5645_if1_dac2_tdm_sel_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.388, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_tdm_dac2_enum to i32) }, align 4
@.str.376 = private unnamed_addr constant [22 x i8] c"RT5645 IF1 DAC2 R Mux\00", align 1
@rt5645_if1_dac3_tdm_sel_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.389, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_tdm_dac3_enum to i32) }, align 4
@.str.377 = private unnamed_addr constant [19 x i8] c"RT5645 IF1 ADC Mux\00", align 1
@rt5645_if1_adc_in_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.390, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_if1_adc_in_enum to i32) }, align 4
@.str.378 = private unnamed_addr constant [25 x i8] c"RT5645 IF1 ADC1 Swap Mux\00", align 1
@rt5645_if1_adc1_in_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.395, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_tdm_adc_slot0_1_enum to i32) }, align 4
@.str.379 = private unnamed_addr constant [25 x i8] c"RT5645 IF1 ADC2 Swap Mux\00", align 1
@rt5645_if1_adc2_in_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.400, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_tdm_adc_slot2_3_enum to i32) }, align 4
@.str.380 = private unnamed_addr constant [25 x i8] c"RT5645 IF1 ADC3 Swap Mux\00", align 1
@rt5645_if1_adc3_in_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.401, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5645_tdm_adc_slot4_5_enum to i32) }, align 4
@rt5645_specific_dapm_widgets = internal constant [8 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.373, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_if1_dac0_tdm_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.374, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_if1_dac1_tdm_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.375, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_if1_dac2_tdm_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.376, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_if1_dac3_tdm_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.377, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_if1_adc_in_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.378, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_if1_adc1_in_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.379, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_if1_adc2_in_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.380, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5645_if1_adc3_in_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.382 = private unnamed_addr constant [16 x i8] c"IF1 DAC0 source\00", align 1
@rt5645_tdm_dac0_enum = internal constant %struct.soc_enum { i32 121, i8 12, i8 12, i32 4, i32 3, ptr @rt5645_tdm_dac_swap_select, ptr null, i8 0 }, align 4
@rt5645_tdm_dac_swap_select = internal constant [4 x ptr] [ptr @.str.383, ptr @.str.384, ptr @.str.385, ptr @.str.386], align 4
@.str.383 = private unnamed_addr constant [6 x i8] c"Slot0\00", align 1
@.str.384 = private unnamed_addr constant [6 x i8] c"Slot1\00", align 1
@.str.385 = private unnamed_addr constant [6 x i8] c"Slot2\00", align 1
@.str.386 = private unnamed_addr constant [6 x i8] c"Slot3\00", align 1
@.str.387 = private unnamed_addr constant [16 x i8] c"IF1 DAC1 source\00", align 1
@rt5645_tdm_dac1_enum = internal constant %struct.soc_enum { i32 121, i8 8, i8 8, i32 4, i32 3, ptr @rt5645_tdm_dac_swap_select, ptr null, i8 0 }, align 4
@.str.388 = private unnamed_addr constant [16 x i8] c"IF1 DAC2 source\00", align 1
@rt5645_tdm_dac2_enum = internal constant %struct.soc_enum { i32 121, i8 4, i8 4, i32 4, i32 3, ptr @rt5645_tdm_dac_swap_select, ptr null, i8 0 }, align 4
@.str.389 = private unnamed_addr constant [16 x i8] c"IF1 DAC3 source\00", align 1
@rt5645_tdm_dac3_enum = internal constant %struct.soc_enum { i32 121, i8 0, i8 0, i32 4, i32 3, ptr @rt5645_tdm_dac_swap_select, ptr null, i8 0 }, align 4
@.str.390 = private unnamed_addr constant [18 x i8] c"IF1 ADC IN source\00", align 1
@rt5645_if1_adc_in_enum = internal constant %struct.soc_enum { i32 119, i8 8, i8 8, i32 4, i32 3, ptr @rt5645_if1_adc_in_src, ptr null, i8 0 }, align 4
@rt5645_if1_adc_in_src = internal constant [4 x ptr] [ptr @.str.391, ptr @.str.392, ptr @.str.393, ptr @.str.394], align 4
@.str.391 = private unnamed_addr constant [24 x i8] c"IF_ADC1/IF_ADC2/VAD_ADC\00", align 1
@.str.392 = private unnamed_addr constant [24 x i8] c"IF_ADC2/IF_ADC1/VAD_ADC\00", align 1
@.str.393 = private unnamed_addr constant [24 x i8] c"VAD_ADC/IF_ADC1/IF_ADC2\00", align 1
@.str.394 = private unnamed_addr constant [24 x i8] c"VAD_ADC/IF_ADC2/IF_ADC1\00", align 1
@.str.395 = private unnamed_addr constant [19 x i8] c"IF1 ADC1 IN source\00", align 1
@rt5645_tdm_adc_slot0_1_enum = internal constant %struct.soc_enum { i32 119, i8 6, i8 6, i32 4, i32 3, ptr @rt5645_tdm_adc_swap_select, ptr null, i8 0 }, align 4
@rt5645_tdm_adc_swap_select = internal constant [4 x ptr] [ptr @.str.396, ptr @.str.397, ptr @.str.398, ptr @.str.399], align 4
@.str.396 = private unnamed_addr constant [4 x i8] c"L/R\00", align 1
@.str.397 = private unnamed_addr constant [4 x i8] c"R/L\00", align 1
@.str.398 = private unnamed_addr constant [4 x i8] c"L/L\00", align 1
@.str.399 = private unnamed_addr constant [4 x i8] c"R/R\00", align 1
@.str.400 = private unnamed_addr constant [19 x i8] c"IF1 ADC2 IN source\00", align 1
@rt5645_tdm_adc_slot2_3_enum = internal constant %struct.soc_enum { i32 119, i8 4, i8 4, i32 4, i32 3, ptr @rt5645_tdm_adc_swap_select, ptr null, i8 0 }, align 4
@.str.401 = private unnamed_addr constant [19 x i8] c"IF1 ADC3 IN source\00", align 1
@rt5645_tdm_adc_slot4_5_enum = internal constant %struct.soc_enum { i32 119, i8 2, i8 2, i32 4, i32 3, ptr @rt5645_tdm_adc_swap_select, ptr null, i8 0 }, align 4
@.str.402 = private unnamed_addr constant [13 x i8] c"A DAC1 L Mux\00", align 1
@rt5650_a_dac1_l_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.415, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5650_a_dac1_l_enum to i32) }, align 4
@.str.403 = private unnamed_addr constant [13 x i8] c"A DAC1 R Mux\00", align 1
@rt5650_a_dac1_r_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.418, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5650_a_dac1_r_enum to i32) }, align 4
@.str.404 = private unnamed_addr constant [13 x i8] c"A DAC2 L Mux\00", align 1
@rt5650_a_dac2_l_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.419, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5650_a_dac2_l_enum to i32) }, align 4
@.str.405 = private unnamed_addr constant [13 x i8] c"A DAC2 R Mux\00", align 1
@rt5650_a_dac2_r_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.421, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5650_a_dac2_r_enum to i32) }, align 4
@.str.406 = private unnamed_addr constant [25 x i8] c"RT5650 IF1 ADC1 Swap Mux\00", align 1
@rt5650_if1_adc1_in_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.395, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5650_tdm_adc_slot0_1_enum to i32) }, align 4
@.str.407 = private unnamed_addr constant [25 x i8] c"RT5650 IF1 ADC2 Swap Mux\00", align 1
@rt5650_if1_adc2_in_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.400, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5650_tdm_adc_slot2_3_enum to i32) }, align 4
@.str.408 = private unnamed_addr constant [25 x i8] c"RT5650 IF1 ADC3 Swap Mux\00", align 1
@rt5650_if1_adc3_in_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.401, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5650_tdm_adc_slot4_5_enum to i32) }, align 4
@.str.409 = private unnamed_addr constant [19 x i8] c"RT5650 IF1 ADC Mux\00", align 1
@rt5650_if1_adc_in_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.390, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5650_if1_adc_in_enum to i32) }, align 4
@.str.410 = private unnamed_addr constant [22 x i8] c"RT5650 IF1 DAC1 L Mux\00", align 1
@rt5650_if1_dac0_tdm_sel_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.382, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5650_tdm_dac0_enum to i32) }, align 4
@.str.411 = private unnamed_addr constant [22 x i8] c"RT5650 IF1 DAC1 R Mux\00", align 1
@rt5650_if1_dac1_tdm_sel_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.387, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5650_tdm_dac1_enum to i32) }, align 4
@.str.412 = private unnamed_addr constant [22 x i8] c"RT5650 IF1 DAC2 L Mux\00", align 1
@rt5650_if1_dac2_tdm_sel_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.388, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5650_tdm_dac2_enum to i32) }, align 4
@.str.413 = private unnamed_addr constant [22 x i8] c"RT5650 IF1 DAC2 R Mux\00", align 1
@rt5650_if1_dac3_tdm_sel_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.389, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt5650_tdm_dac3_enum to i32) }, align 4
@rt5650_specific_dapm_widgets = internal constant [12 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.402, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_a_dac1_l_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.403, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_a_dac1_r_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.404, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_a_dac2_l_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.405, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_a_dac2_r_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.406, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_if1_adc1_in_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.407, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_if1_adc2_in_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.408, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_if1_adc3_in_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.409, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_if1_adc_in_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.410, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_if1_dac0_tdm_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.411, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_if1_dac1_tdm_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.412, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_if1_dac2_tdm_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.413, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt5650_if1_dac3_tdm_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.415 = private unnamed_addr constant [16 x i8] c"A DAC1 L source\00", align 1
@rt5650_a_dac1_l_enum = internal constant %struct.soc_enum { i32 45, i8 3, i8 3, i32 2, i32 1, ptr @rt5650_a_dac1_src, ptr null, i8 0 }, align 4
@rt5650_a_dac1_src = internal constant [2 x ptr] [ptr @.str.416, ptr @.str.417], align 4
@.str.416 = private unnamed_addr constant [5 x i8] c"DAC1\00", align 1
@.str.417 = private unnamed_addr constant [17 x i8] c"Stereo DAC Mixer\00", align 1
@.str.418 = private unnamed_addr constant [16 x i8] c"A DAC1 R source\00", align 1
@rt5650_a_dac1_r_enum = internal constant %struct.soc_enum { i32 45, i8 2, i8 2, i32 2, i32 1, ptr @rt5650_a_dac1_src, ptr null, i8 0 }, align 4
@.str.419 = private unnamed_addr constant [16 x i8] c"A DAC2 L source\00", align 1
@rt5650_a_dac2_l_enum = internal constant %struct.soc_enum { i32 45, i8 1, i8 1, i32 2, i32 1, ptr @rt5650_a_dac2_src, ptr null, i8 0 }, align 4
@rt5650_a_dac2_src = internal constant [2 x ptr] [ptr @.str.417, ptr @.str.420], align 4
@.str.420 = private unnamed_addr constant [15 x i8] c"Mono DAC Mixer\00", align 1
@.str.421 = private unnamed_addr constant [16 x i8] c"A DAC2 R source\00", align 1
@rt5650_a_dac2_r_enum = internal constant %struct.soc_enum { i32 45, i8 0, i8 0, i32 2, i32 1, ptr @rt5650_a_dac2_src, ptr null, i8 0 }, align 4
@rt5650_tdm_adc_slot0_1_enum = internal constant %struct.soc_enum { i32 120, i8 14, i8 14, i32 4, i32 3, ptr @rt5645_tdm_adc_swap_select, ptr null, i8 0 }, align 4
@rt5650_tdm_adc_slot2_3_enum = internal constant %struct.soc_enum { i32 120, i8 12, i8 12, i32 4, i32 3, ptr @rt5645_tdm_adc_swap_select, ptr null, i8 0 }, align 4
@rt5650_tdm_adc_slot4_5_enum = internal constant %struct.soc_enum { i32 120, i8 10, i8 10, i32 4, i32 3, ptr @rt5645_tdm_adc_swap_select, ptr null, i8 0 }, align 4
@rt5650_if1_adc_in_enum = internal constant %struct.soc_enum { i32 120, i8 0, i8 0, i32 24, i32 31, ptr @rt5650_if1_adc_in_src, ptr null, i8 0 }, align 4
@rt5650_if1_adc_in_src = internal constant [24 x ptr] [ptr @.str.422, ptr @.str.423, ptr @.str.424, ptr @.str.425, ptr @.str.426, ptr @.str.427, ptr @.str.428, ptr @.str.429, ptr @.str.430, ptr @.str.431, ptr @.str.432, ptr @.str.433, ptr @.str.434, ptr @.str.435, ptr @.str.436, ptr @.str.437, ptr @.str.438, ptr @.str.439, ptr @.str.440, ptr @.str.441, ptr @.str.442, ptr @.str.443, ptr @.str.444, ptr @.str.445], align 4
@.str.422 = private unnamed_addr constant [29 x i8] c"IF_ADC1/IF_ADC2/DAC_REF/Null\00", align 1
@.str.423 = private unnamed_addr constant [29 x i8] c"IF_ADC1/IF_ADC2/Null/DAC_REF\00", align 1
@.str.424 = private unnamed_addr constant [29 x i8] c"IF_ADC1/DAC_REF/IF_ADC2/Null\00", align 1
@.str.425 = private unnamed_addr constant [29 x i8] c"IF_ADC1/DAC_REF/Null/IF_ADC2\00", align 1
@.str.426 = private unnamed_addr constant [29 x i8] c"IF_ADC1/Null/DAC_REF/IF_ADC2\00", align 1
@.str.427 = private unnamed_addr constant [29 x i8] c"IF_ADC1/Null/IF_ADC2/DAC_REF\00", align 1
@.str.428 = private unnamed_addr constant [29 x i8] c"IF_ADC2/IF_ADC1/DAC_REF/Null\00", align 1
@.str.429 = private unnamed_addr constant [29 x i8] c"IF_ADC2/IF_ADC1/Null/DAC_REF\00", align 1
@.str.430 = private unnamed_addr constant [29 x i8] c"IF_ADC2/DAC_REF/IF_ADC1/Null\00", align 1
@.str.431 = private unnamed_addr constant [29 x i8] c"IF_ADC2/DAC_REF/Null/IF_ADC1\00", align 1
@.str.432 = private unnamed_addr constant [29 x i8] c"IF_ADC2/Null/DAC_REF/IF_ADC1\00", align 1
@.str.433 = private unnamed_addr constant [29 x i8] c"IF_ADC2/Null/IF_ADC1/DAC_REF\00", align 1
@.str.434 = private unnamed_addr constant [29 x i8] c"DAC_REF/IF_ADC1/IF_ADC2/Null\00", align 1
@.str.435 = private unnamed_addr constant [29 x i8] c"DAC_REF/IF_ADC1/Null/IF_ADC2\00", align 1
@.str.436 = private unnamed_addr constant [29 x i8] c"DAC_REF/IF_ADC2/IF_ADC1/Null\00", align 1
@.str.437 = private unnamed_addr constant [29 x i8] c"DAC_REF/IF_ADC2/Null/IF_ADC1\00", align 1
@.str.438 = private unnamed_addr constant [29 x i8] c"DAC_REF/Null/IF_ADC1/IF_ADC2\00", align 1
@.str.439 = private unnamed_addr constant [29 x i8] c"DAC_REF/Null/IF_ADC2/IF_ADC1\00", align 1
@.str.440 = private unnamed_addr constant [29 x i8] c"Null/IF_ADC1/IF_ADC2/DAC_REF\00", align 1
@.str.441 = private unnamed_addr constant [29 x i8] c"Null/IF_ADC1/DAC_REF/IF_ADC2\00", align 1
@.str.442 = private unnamed_addr constant [29 x i8] c"Null/IF_ADC2/IF_ADC1/DAC_REF\00", align 1
@.str.443 = private unnamed_addr constant [29 x i8] c"Null/IF_ADC2/DAC_REF/IF_ADC1\00", align 1
@.str.444 = private unnamed_addr constant [29 x i8] c"Null/DAC_REF/IF_ADC1/IF_ADC2\00", align 1
@.str.445 = private unnamed_addr constant [29 x i8] c"Null/DAC_REF/IF_ADC2/IF_ADC1\00", align 1
@rt5650_tdm_dac0_enum = internal constant %struct.soc_enum { i32 122, i8 12, i8 12, i32 4, i32 3, ptr @rt5645_tdm_dac_swap_select, ptr null, i8 0 }, align 4
@rt5650_tdm_dac1_enum = internal constant %struct.soc_enum { i32 122, i8 8, i8 8, i32 4, i32 3, ptr @rt5645_tdm_dac_swap_select, ptr null, i8 0 }, align 4
@rt5650_tdm_dac2_enum = internal constant %struct.soc_enum { i32 122, i8 4, i8 4, i32 4, i32 3, ptr @rt5645_tdm_dac_swap_select, ptr null, i8 0 }, align 4
@rt5650_tdm_dac3_enum = internal constant %struct.soc_enum { i32 122, i8 0, i8 0, i32 4, i32 3, ptr @rt5645_tdm_dac_swap_select, ptr null, i8 0 }, align 4
@.str.446 = private unnamed_addr constant [12 x i8] c"rt5645-aif1\00", align 1
@rt5645_aif_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr @rt5645_set_dai_sysclk, ptr @rt5645_set_dai_pll, ptr null, ptr null, ptr @rt5645_set_dai_fmt, ptr null, ptr @rt5645_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt5645_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@.str.447 = private unnamed_addr constant [12 x i8] c"rt5645-aif2\00", align 1
@.str.448 = private unnamed_addr constant [23 x i8] c"Invalid clock id (%d)\0A\00", align 1
@.str.449 = private unnamed_addr constant [21 x i8] c"Invalid dai->id: %d\0A\00", align 1
@.str.450 = private unnamed_addr constant [23 x i8] c"Unknown PLL source %d\0A\00", align 1
@.str.451 = private unnamed_addr constant [28 x i8] c"Unsupported input clock %d\0A\00", align 1
@.str.452 = private unnamed_addr constant [27 x i8] c"Unsupported clock setting\0A\00", align 1
@.str.453 = private unnamed_addr constant [28 x i8] c"Unsupported frame size: %d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author258, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_license259, ptr @__UNIQUE_ID_quirk256, ptr @__UNIQUE_ID_quirktype255, ptr @__ksymtab_rt5645_sel_asrc_clk_src, ptr @__ksymtab_rt5645_set_jack_detect, ptr @__param_quirk], section "llvm.metadata"
@switch.table.rt5645_i2c_probe = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 2, i32 2], align 4
@switch.table.is_using_asrc = private unnamed_addr constant [11 x i32] [i32 133, i32 133, i32 133, i32 132, i32 133, i32 133, i32 133, i32 133, i32 132, i32 132, i32 132], align 4
@switch.table.is_using_asrc.454 = private unnamed_addr constant [11 x i32] [i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 8, i32 12], align 4
@switch.table.rt5645_hw_params = private unnamed_addr constant [5 x i32] [i32 3, i32 0, i32 0, i32 1, i32 2], align 4

@__mod_i2c__rt5645_i2c_id_device_table = dso_local alias [3 x %struct.i2c_device_id], ptr @rt5645_i2c_id
@__mod_of__rt5645_of_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @rt5645_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rt5645_sel_asrc_clk_src(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  switch i32 %2, label %48 [
    i32 0, label %4
    i32 1, label %4
    i32 2, label %4
    i32 5, label %4
  ]

4:                                                ; preds = %3, %3, %3, %3
  %5 = and i32 %1, 1
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 0, i32 61440
  %8 = and i32 %1, 2
  %9 = icmp eq i32 %8, 0
  %10 = or i32 %7, 3840
  %11 = select i1 %9, i32 %7, i32 %10
  %12 = and i32 %1, 4
  %13 = icmp eq i32 %12, 0
  %14 = or i32 %11, 240
  %15 = shl nuw nsw i32 %2, 4
  %16 = select i1 %13, i32 %11, i32 %14
  %17 = and i32 %1, 8
  %18 = icmp eq i32 %17, 0
  %19 = or i32 %16, 15
  %20 = select i1 %18, i32 %16, i32 %19
  %21 = and i32 %1, 16
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 0, i32 240
  %24 = select i1 %22, i32 0, i32 %15
  %25 = and i32 %1, 32
  %26 = icmp eq i32 %25, 0
  %27 = or i32 %23, 15
  %28 = select i1 %26, i32 %23, i32 %27
  %29 = select i1 %26, i32 0, i32 %2
  %30 = or i32 %24, %29
  %31 = icmp eq i32 %20, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %4
  %33 = shl nuw nsw i32 %2, 12
  %34 = select i1 %6, i32 0, i32 %33
  %35 = shl nuw nsw i32 %2, 8
  %36 = select i1 %9, i32 0, i32 %35
  %37 = or i32 %34, %36
  %38 = select i1 %13, i32 0, i32 %15
  %39 = or i32 %37, %38
  %40 = select i1 %18, i32 0, i32 %2
  %41 = or i32 %39, %40
  %42 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 132, i32 noundef %20, i32 noundef %41) #11
  br label %43

43:                                               ; preds = %32, %4
  %44 = and i32 %1, 48
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 133, i32 noundef %28, i32 noundef %30) #11
  br label %48

48:                                               ; preds = %46, %43, %3
  %49 = phi i32 [ -22, %3 ], [ 0, %46 ], [ 0, %43 ]
  ret i32 %49
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rt5645_set_jack_detect(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 5
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 6
  store ptr %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 7
  store ptr %3, ptr %11, align 4
  %12 = icmp eq ptr %3, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 23
  store i8 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 192, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %22 = load ptr, ptr %19, align 4
  %23 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 250, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %24

24:                                               ; preds = %17, %13, %4
  %25 = load ptr, ptr @system_power_efficient_wq, align 4
  %26 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 8
  %27 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %25, ptr noundef %26, i32 noundef 25) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5645_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @system_power_efficient_wq, align 4
  %4 = getelementptr inbounds %struct.rt5645_priv, ptr %1, i32 0, i32 8
  %5 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %4, i32 noundef 25) #11
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @rt5645_i2c_driver) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @rt5645_i2c_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5645_i2c_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 252, i32 noundef 3520) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %257, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 3
  store ptr %0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %5, ptr %9, align 8
  %10 = tail call ptr @dmi_first_match(ptr noundef nonnull @dmi_platform_data) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.dmi_system_id, ptr %10, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef %14) #12
  %15 = getelementptr inbounds %struct.dmi_system_id, ptr %10, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %19, ptr noundef nonnull align 4 dereferenceable(28) %16, i32 28, i1 false)
  br label %40

20:                                               ; preds = %12, %7
  %21 = tail call zeroext i1 @device_property_present(ptr noundef %4, ptr noundef nonnull @.str.32) #11
  br i1 %21, label %28, label %22

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @device_property_present(ptr noundef %4, ptr noundef nonnull @.str.33) #11
  br i1 %23, label %28, label %24

24:                                               ; preds = %22
  %25 = tail call zeroext i1 @device_property_present(ptr noundef %4, ptr noundef nonnull @.str.34) #11
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  %27 = tail call zeroext i1 @device_property_present(ptr noundef %4, ptr noundef nonnull @.str.35) #11
  br i1 %27, label %28, label %38

28:                                               ; preds = %26, %24, %22, %20
  %29 = tail call zeroext i1 @device_property_present(ptr noundef %4, ptr noundef nonnull @.str.32) #11
  %30 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 1
  %31 = zext i1 %29 to i8
  store i8 %31, ptr %30, align 4
  %32 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 1, i32 1
  %33 = tail call i32 @device_property_read_u32_array(ptr noundef %4, ptr noundef nonnull @.str.33, ptr noundef %32, i32 noundef 1) #11
  %34 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 1, i32 2
  %35 = tail call i32 @device_property_read_u32_array(ptr noundef %4, ptr noundef nonnull @.str.34, ptr noundef %34, i32 noundef 1) #11
  %36 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 1, i32 3
  %37 = tail call i32 @device_property_read_u32_array(ptr noundef %4, ptr noundef nonnull @.str.35, ptr noundef %36, i32 noundef 1) #11
  br label %40

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %39, ptr noundef nonnull align 4 dereferenceable(28) @jd_mode3_platform_data, i32 28, i1 false)
  br label %40

40:                                               ; preds = %38, %28, %18
  %41 = load i32, ptr @quirk, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %65, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 1
  %45 = trunc i32 %41 to i8
  %46 = lshr i8 %45, 2
  %47 = and i8 %46, 1
  store i8 %47, ptr %44, align 4
  %48 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 1, i32 4
  %49 = lshr i8 %45, 1
  %50 = and i8 %49, 1
  store i8 %50, ptr %48, align 4
  %51 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 1, i32 5
  %52 = and i8 %45, 1
  store i8 %52, ptr %51, align 1
  %53 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 1, i32 6
  %54 = lshr i8 %45, 3
  %55 = and i8 %54, 1
  store i8 %55, ptr %53, align 2
  %56 = lshr i32 %41, 4
  %57 = and i32 %56, 7
  %58 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 1, i32 3
  store i32 %57, ptr %58, align 4
  %59 = lshr i32 %41, 8
  %60 = and i32 %59, 3
  %61 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 1, i32 1
  store i32 %60, ptr %61, align 4
  %62 = lshr i32 %41, 12
  %63 = and i32 %62, 3
  %64 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 1, i32 2
  store i32 %63, ptr %64, align 4
  br label %65

65:                                               ; preds = %43, %40
  %66 = tail call ptr @devm_gpiod_get_optional(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef 1) #11
  %67 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 4
  store ptr %66, ptr %67, align 4
  %68 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.4) #12
  %70 = load ptr, ptr %67, align 4
  %71 = ptrtoint ptr %70 to i32
  %72 = icmp eq ptr %70, inttoptr (i32 -2 to ptr)
  br i1 %72, label %73, label %257

73:                                               ; preds = %69, %65
  %74 = getelementptr %struct.rt5645_priv, ptr %5, i32 0, i32 10, i32 0
  store ptr @.str.36, ptr %74, align 4
  %75 = getelementptr %struct.rt5645_priv, ptr %5, i32 0, i32 10, i32 1
  store ptr @.str.37, ptr %75, align 4
  %76 = tail call i32 @devm_regulator_bulk_get(ptr noundef %4, i32 noundef 2, ptr noundef %74) #11
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef %76) #12
  br label %257

79:                                               ; preds = %73
  %80 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %74) #11
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %80) #12
  br label %257

83:                                               ; preds = %79
  %84 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @temp_regmap, ptr noundef null, ptr noundef null) #11
  %85 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = ptrtoint ptr %84 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %87) #12
  br label %257

88:                                               ; preds = %83
  tail call void @msleep(i32 noundef 400) #11
  %89 = call i32 @regmap_read(ptr noundef %84, i32 noundef 255, ptr noundef nonnull %3) #11
  %90 = load i32, ptr %3, align 4
  switch i32 %90, label %92 [
    i32 25352, label %93
    i32 25625, label %91
  ]

91:                                               ; preds = %88
  br label %93

92:                                               ; preds = %88
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %90) #12
  br label %254

93:                                               ; preds = %91, %88
  %94 = phi ptr [ @rt5650_regmap, %91 ], [ @rt5645_regmap, %88 ]
  %95 = phi i32 [ 1, %91 ], [ 0, %88 ]
  %96 = call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull %94, ptr noundef null, ptr noundef null) #11
  %97 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 2
  store ptr %96, ptr %97, align 4
  %98 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 13
  store i32 %95, ptr %98, align 4
  %99 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 2
  %100 = icmp ugt ptr %96, inttoptr (i32 -4096 to ptr)
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = ptrtoint ptr %96 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef %102) #12
  br label %257

103:                                              ; preds = %93
  %104 = call i32 @regmap_write(ptr noundef %96, i32 noundef 0, i32 noundef 0) #11
  %105 = call i32 @regmap_read(ptr noundef %84, i32 noundef 253, ptr noundef nonnull %3) #11
  %106 = load i32, ptr %3, align 4
  %107 = and i32 %106, 255
  %108 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 24
  store i32 %107, ptr %108, align 4
  %109 = load ptr, ptr %99, align 4
  %110 = call i32 @regmap_write(ptr noundef %109, i32 noundef 41, i32 noundef 32896) #11
  %111 = load ptr, ptr %99, align 4
  %112 = call i32 @regmap_register_patch(ptr noundef %111, ptr noundef nonnull @init_list, i32 noundef 6) #11
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %103
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef %112) #12
  br label %115

115:                                              ; preds = %114, %103
  %116 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 13
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load ptr, ptr %99, align 4
  %121 = call i32 @regmap_register_patch(ptr noundef %120, ptr noundef nonnull @rt5650_init_list, i32 noundef 1) #11
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef %121) #12
  br label %124

124:                                              ; preds = %123, %119, %115
  %125 = load ptr, ptr %99, align 4
  %126 = call i32 @regmap_update_bits_base(ptr noundef %125, i32 noundef 160, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %127 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 1
  %128 = load i8, ptr %127, align 4, !range !9
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %124
  %131 = load ptr, ptr %99, align 4
  %132 = call i32 @regmap_update_bits_base(ptr noundef %131, i32 noundef 13, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %133

133:                                              ; preds = %130, %124
  %134 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 1, i32 1
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 1, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %160, label %141

141:                                              ; preds = %137, %133
  %142 = load ptr, ptr %99, align 4
  %143 = call i32 @regmap_update_bits_base(ptr noundef %142, i32 noundef 192, i32 noundef 16384, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %144 = load i32, ptr %134, align 4
  switch i32 %144, label %160 [
    i32 1, label %145
    i32 2, label %148
    i32 3, label %155
  ]

145:                                              ; preds = %141
  %146 = load ptr, ptr %99, align 4
  %147 = call i32 @regmap_update_bits_base(ptr noundef %146, i32 noundef 117, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %160

148:                                              ; preds = %141
  %149 = load ptr, ptr %99, align 4
  %150 = call i32 @regmap_update_bits_base(ptr noundef %149, i32 noundef 192, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %151 = load ptr, ptr %99, align 4
  %152 = call i32 @regmap_update_bits_base(ptr noundef %151, i32 noundef 117, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %153 = load ptr, ptr %99, align 4
  %154 = call i32 @regmap_update_bits_base(ptr noundef %153, i32 noundef 192, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %160

155:                                              ; preds = %141
  %156 = load ptr, ptr %99, align 4
  %157 = call i32 @regmap_update_bits_base(ptr noundef %156, i32 noundef 117, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %158 = load ptr, ptr %99, align 4
  %159 = call i32 @regmap_update_bits_base(ptr noundef %158, i32 noundef 192, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %160

160:                                              ; preds = %155, %148, %145, %141, %137
  %161 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 1, i32 2
  %162 = load i32, ptr %161, align 4
  switch i32 %162, label %181 [
    i32 1, label %163
    i32 2, label %166
    i32 3, label %171
    i32 4, label %176
  ]

163:                                              ; preds = %160
  %164 = load ptr, ptr %99, align 4
  %165 = call i32 @regmap_update_bits_base(ptr noundef %164, i32 noundef 117, i32 noundef 3072, i32 noundef 3072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %181

166:                                              ; preds = %160
  %167 = load ptr, ptr %99, align 4
  %168 = call i32 @regmap_update_bits_base(ptr noundef %167, i32 noundef 117, i32 noundef 3072, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %169 = load ptr, ptr %99, align 4
  %170 = call i32 @regmap_update_bits_base(ptr noundef %169, i32 noundef 192, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %181

171:                                              ; preds = %160
  %172 = load ptr, ptr %99, align 4
  %173 = call i32 @regmap_update_bits_base(ptr noundef %172, i32 noundef 117, i32 noundef 3072, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %174 = load ptr, ptr %99, align 4
  %175 = call i32 @regmap_update_bits_base(ptr noundef %174, i32 noundef 192, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %181

176:                                              ; preds = %160
  %177 = load ptr, ptr %99, align 4
  %178 = call i32 @regmap_update_bits_base(ptr noundef %177, i32 noundef 117, i32 noundef 3072, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %179 = load ptr, ptr %99, align 4
  %180 = call i32 @regmap_update_bits_base(ptr noundef %179, i32 noundef 192, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %181

181:                                              ; preds = %176, %171, %166, %163, %160
  %182 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 1, i32 3
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %215, label %185

185:                                              ; preds = %181
  %186 = load ptr, ptr %99, align 4
  %187 = call i32 @regmap_update_bits_base(ptr noundef %186, i32 noundef 252, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %188 = load ptr, ptr %99, align 4
  %189 = call i32 @regmap_update_bits_base(ptr noundef %188, i32 noundef 147, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %190 = load ptr, ptr %99, align 4
  %191 = call i32 @regmap_update_bits_base(ptr noundef %190, i32 noundef 189, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %192 = load ptr, ptr %99, align 4
  %193 = call i32 @regmap_update_bits_base(ptr noundef %192, i32 noundef 252, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %194 = load ptr, ptr %99, align 4
  %195 = call i32 @regmap_update_bits_base(ptr noundef %194, i32 noundef 69, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %196 = load ptr, ptr %99, align 4
  %197 = call i32 @regmap_update_bits_base(ptr noundef %196, i32 noundef 147, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %198 = load ptr, ptr %99, align 4
  %199 = call i32 @regmap_update_bits_base(ptr noundef %198, i32 noundef 192, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %200 = load i32, ptr %182, align 4
  %201 = add i32 %200, -1
  %202 = icmp ult i32 %201, 4
  br i1 %202, label %203, label %208

203:                                              ; preds = %185
  %204 = getelementptr inbounds [4 x i32], ptr @switch.table.rt5645_i2c_probe, i32 0, i32 %201
  %205 = load i32, ptr %204, align 4
  %206 = load ptr, ptr %99, align 4
  %207 = call i32 @regmap_update_bits_base(ptr noundef %206, i32 noundef 148, i32 noundef 3, i32 noundef %205, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %208

208:                                              ; preds = %203, %185
  %209 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 1, i32 5
  %210 = load i8, ptr %209, align 1, !range !9
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %208
  %213 = load ptr, ptr %99, align 4
  %214 = call i32 @regmap_update_bits_base(ptr noundef %213, i32 noundef 189, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %215

215:                                              ; preds = %212, %208, %181
  %216 = load ptr, ptr %99, align 4
  %217 = call i32 @regmap_update_bits_base(ptr noundef %216, i32 noundef 115, i32 noundef 28672, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %218 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 1, i32 4
  %219 = load i8, ptr %218, align 4, !range !9
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %215
  %222 = load ptr, ptr %99, align 4
  %223 = call i32 @regmap_update_bits_base(ptr noundef %222, i32 noundef 189, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %224

224:                                              ; preds = %221, %215
  %225 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 12
  call void @init_timer_key(ptr noundef %225, ptr noundef nonnull @rt5645_btn_check_callback, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  %226 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 8
  store i32 -32, ptr %226, align 4
  %227 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 8, i32 0, i32 1
  store volatile ptr %227, ptr %227, align 4
  %228 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 8, i32 0, i32 1, i32 1
  store ptr %227, ptr %228, align 4
  %229 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 8, i32 0, i32 2
  store ptr @rt5645_jack_detect_work, ptr %229, align 4
  %230 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 8, i32 1
  call void @init_timer_key(ptr noundef %230, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #11
  %231 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 9
  store i32 -32, ptr %231, align 4
  %232 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 9, i32 0, i32 1
  store volatile ptr %232, ptr %232, align 4
  %233 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 9, i32 0, i32 1, i32 1
  store ptr %232, ptr %233, align 4
  %234 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 9, i32 0, i32 2
  store ptr @rt5645_rcclock_work, ptr %234, align 4
  %235 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 9, i32 1
  call void @init_timer_key(ptr noundef %235, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #11
  %236 = load ptr, ptr %8, align 4
  %237 = getelementptr inbounds %struct.i2c_client, ptr %236, i32 0, i32 6
  %238 = load i32, ptr %237, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %244, label %240

240:                                              ; preds = %224
  %241 = call i32 @request_threaded_irq(i32 noundef %238, ptr noundef null, ptr noundef nonnull @rt5645_irq, i32 noundef 8195, ptr noundef nonnull @.str, ptr noundef nonnull %5) #11
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %244, label %243

243:                                              ; preds = %240
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12, i32 noundef %241) #12
  br label %254

244:                                              ; preds = %240, %224
  %245 = call i32 @devm_snd_soc_register_component(ptr noundef %4, ptr noundef nonnull @soc_component_dev_rt5645, ptr noundef nonnull @rt5645_dai, i32 noundef 2) #11
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %257, label %247

247:                                              ; preds = %244
  %248 = load ptr, ptr %8, align 4
  %249 = getelementptr inbounds %struct.i2c_client, ptr %248, i32 0, i32 6
  %250 = load i32, ptr %249, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %254, label %252

252:                                              ; preds = %247
  %253 = call ptr @free_irq(i32 noundef %250, ptr noundef nonnull %5) #11
  br label %254

254:                                              ; preds = %252, %247, %243, %92
  %255 = phi i32 [ -19, %92 ], [ %241, %243 ], [ %245, %252 ], [ %245, %247 ]
  %256 = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %74) #11
  br label %257

257:                                              ; preds = %254, %244, %101, %86, %82, %78, %69, %2
  %258 = phi i32 [ %76, %78 ], [ %80, %82 ], [ %87, %86 ], [ %255, %254 ], [ %102, %101 ], [ -12, %2 ], [ %71, %69 ], [ 0, %244 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %258
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5645_i2c_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %3) #11
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 8
  %11 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %10) #11
  %12 = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 9
  %13 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %12) #11
  %14 = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 12
  %15 = tail call i32 @del_timer_sync(ptr noundef %14) #11
  %16 = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 10
  %17 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %16) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt5645_i2c_shutdown(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rt5645_priv, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 252, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %7 = load ptr, ptr %4, align 4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 11, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %9 = load ptr, ptr %4, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 10, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  tail call void @msleep(i32 noundef 20) #11
  %11 = load ptr, ptr %4, align 4
  %12 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 0, i32 noundef 0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmi_first_match(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt5645_btn_check_callback(ptr noundef %0) #0 {
  %2 = load ptr, ptr @system_power_efficient_wq, align 4
  %3 = getelementptr i8, ptr %0, i32 -116
  %4 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %2, ptr noundef %3, i32 noundef 1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt5645_jack_detect_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -56
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %80, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -40
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %26 [
    i32 0, label %8
    i32 4, label %27
  ]

8:                                                ; preds = %5
  %9 = getelementptr i8, ptr %0, i32 -16
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @gpiod_get_value(ptr noundef nonnull %10) #11
  %14 = getelementptr i8, ptr %0, i32 -34
  %15 = load i8, ptr %14, align 2, !range !9
  %16 = zext i8 %15 to i32
  %17 = xor i32 %13, %16
  %18 = load ptr, ptr %2, align 4
  %19 = tail call fastcc i32 @rt5645_jack_detect(ptr noundef %18, i32 noundef %17)
  br label %20

20:                                               ; preds = %12, %8
  %21 = phi i32 [ %19, %12 ], [ 0, %8 ]
  %22 = getelementptr i8, ptr %0, i32 -12
  %23 = load ptr, ptr %22, align 4
  tail call void @snd_soc_jack_report(ptr noundef %23, i32 noundef %21, i32 noundef 1) #11
  %24 = getelementptr i8, ptr %0, i32 -8
  %25 = load ptr, ptr %24, align 4
  tail call void @snd_soc_jack_report(ptr noundef %25, i32 noundef %21, i32 noundef 2) #11
  br label %80

26:                                               ; preds = %5
  br label %27

27:                                               ; preds = %26, %5
  %28 = phi i32 [ 191, %26 ], [ 148, %5 ]
  %29 = phi i32 [ 4096, %26 ], [ 32, %5 ]
  %30 = tail call i32 @snd_soc_component_read(ptr noundef nonnull %3, i32 noundef %28) #11
  %31 = and i32 %30, %29
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %27
  %34 = getelementptr i8, ptr %0, i32 184
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  %37 = load ptr, ptr %2, align 4
  br i1 %36, label %38, label %40

38:                                               ; preds = %33
  %39 = tail call fastcc i32 @rt5645_jack_detect(ptr noundef %37, i32 noundef 1)
  br label %68

40:                                               ; preds = %33
  %41 = tail call i32 @snd_soc_component_read(ptr noundef %37, i32 noundef 191) #11
  %42 = and i32 %41, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %2, align 4
  %46 = tail call i32 @snd_soc_component_read(ptr noundef %45, i32 noundef 223) #11
  %47 = and i32 %46, 65520
  %48 = tail call i32 @snd_soc_component_write(ptr noundef %45, i32 noundef 223, i32 noundef %46) #11
  %49 = trunc i32 %47 to i16
  switch i16 %49, label %53 [
    i16 -32768, label %59
    i16 16384, label %59
    i16 8192, label %59
    i16 4096, label %50
    i16 2048, label %50
    i16 1024, label %50
    i16 512, label %51
    i16 256, label %51
    i16 128, label %51
    i16 64, label %52
    i16 32, label %52
    i16 16, label %52
    i16 0, label %57
  ]

50:                                               ; preds = %44, %44, %44
  br label %59

51:                                               ; preds = %44, %44, %44
  br label %59

52:                                               ; preds = %44, %44, %44
  br label %59

53:                                               ; preds = %44
  %54 = load ptr, ptr %2, align 4
  %55 = getelementptr inbounds %struct.snd_soc_component, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.40, i32 noundef %47) #12
  br label %59

57:                                               ; preds = %44, %40
  %58 = load i32, ptr %34, align 4
  br label %68

59:                                               ; preds = %53, %52, %51, %50, %44, %44, %44
  %60 = phi i32 [ 8195, %50 ], [ 4099, %51 ], [ 2051, %52 ], [ 3, %53 ], [ 16387, %44 ], [ 16387, %44 ], [ 16387, %44 ]
  %61 = getelementptr i8, ptr %0, i32 116
  %62 = tail call i32 @mod_timer(ptr noundef %61, i32 noundef 10) #11
  br label %68

63:                                               ; preds = %27
  %64 = load ptr, ptr %2, align 4
  %65 = tail call i32 @snd_soc_component_update_bits(ptr noundef %64, i32 noundef 191, i32 noundef 1, i32 noundef 0) #11
  %66 = load ptr, ptr %2, align 4
  %67 = tail call fastcc i32 @rt5645_jack_detect(ptr noundef %66, i32 noundef 0)
  br label %68

68:                                               ; preds = %63, %59, %57, %38
  %69 = phi i32 [ 0, %63 ], [ %58, %57 ], [ %60, %59 ], [ %39, %38 ]
  %70 = getelementptr i8, ptr %0, i32 -12
  %71 = load ptr, ptr %70, align 4
  tail call void @snd_soc_jack_report(ptr noundef %71, i32 noundef %69, i32 noundef 1) #11
  %72 = getelementptr i8, ptr %0, i32 -8
  %73 = load ptr, ptr %72, align 4
  tail call void @snd_soc_jack_report(ptr noundef %73, i32 noundef %69, i32 noundef 2) #11
  %74 = getelementptr i8, ptr %0, i32 188
  %75 = load i8, ptr %74, align 4, !range !9
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %68
  %78 = getelementptr i8, ptr %0, i32 -4
  %79 = load ptr, ptr %78, align 4
  tail call void @snd_soc_jack_report(ptr noundef %79, i32 noundef %69, i32 noundef 30720) #11
  br label %80

80:                                               ; preds = %77, %68, %20, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt5645_rcclock_work(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -68
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 147, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cht_rt5645_ef20_quirk_cb(ptr nocapture noundef readnone %0) #6 {
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5645_readable_register(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  %3 = add i32 %1, -256
  %4 = icmp ult i32 %3, 249
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  switch i32 %1, label %6 [
    i32 0, label %7
    i32 1, label %7
    i32 2, label %7
    i32 3, label %7
    i32 10, label %7
    i32 11, label %7
    i32 12, label %7
    i32 13, label %7
    i32 15, label %7
    i32 20, label %7
    i32 22, label %7
    i32 25, label %7
    i32 26, label %7
    i32 27, label %7
    i32 28, label %7
    i32 29, label %7
    i32 30, label %7
    i32 32, label %7
    i32 39, label %7
    i32 40, label %7
    i32 41, label %7
    i32 42, label %7
    i32 43, label %7
    i32 44, label %7
    i32 45, label %7
    i32 47, label %7
    i32 49, label %7
    i32 59, label %7
    i32 60, label %7
    i32 61, label %7
    i32 62, label %7
    i32 63, label %7
    i32 64, label %7
    i32 65, label %7
    i32 66, label %7
    i32 69, label %7
    i32 70, label %7
    i32 71, label %7
    i32 72, label %7
    i32 74, label %7
    i32 79, label %7
    i32 82, label %7
    i32 77, label %7
    i32 78, label %7
    i32 80, label %7
    i32 81, label %7
    i32 83, label %7
    i32 86, label %7
    i32 87, label %7
    i32 88, label %7
    i32 89, label %7
    i32 90, label %7
    i32 91, label %7
    i32 92, label %7
    i32 93, label %7
    i32 94, label %7
    i32 95, label %7
    i32 97, label %7
    i32 98, label %7
    i32 99, label %7
    i32 100, label %7
    i32 101, label %7
    i32 102, label %7
    i32 106, label %7
    i32 108, label %7
    i32 112, label %7
    i32 113, label %7
    i32 115, label %7
    i32 116, label %7
    i32 117, label %7
    i32 118, label %7
    i32 119, label %7
    i32 120, label %7
    i32 121, label %7
    i32 122, label %7
    i32 128, label %7
    i32 129, label %7
    i32 130, label %7
    i32 131, label %7
    i32 132, label %7
    i32 133, label %7
    i32 138, label %7
    i32 142, label %7
    i32 143, label %7
    i32 144, label %7
    i32 145, label %7
    i32 147, label %7
    i32 148, label %7
    i32 157, label %7
    i32 160, label %7
    i32 174, label %7
    i32 175, label %7
    i32 176, label %7
    i32 177, label %7
    i32 179, label %7
    i32 180, label %7
    i32 181, label %7
    i32 182, label %7
    i32 183, label %7
    i32 187, label %7
    i32 188, label %7
    i32 189, label %7
    i32 190, label %7
    i32 191, label %7
    i32 192, label %7
    i32 193, label %7
    i32 194, label %7
    i32 207, label %7
    i32 208, label %7
    i32 209, label %7
    i32 211, label %7
    i32 212, label %7
    i32 214, label %7
    i32 217, label %7
    i32 218, label %7
    i32 219, label %7
    i32 220, label %7
    i32 221, label %7
    i32 223, label %7
    i32 224, label %7
    i32 231, label %7
    i32 233, label %7
    i32 236, label %7
    i32 237, label %7
    i32 240, label %7
    i32 241, label %7
    i32 242, label %7
    i32 243, label %7
    i32 244, label %7
    i32 248, label %7
    i32 249, label %7
    i32 250, label %7
    i32 251, label %7
    i32 252, label %7
    i32 253, label %7
    i32 254, label %7
    i32 255, label %7
  ]

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %6, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %2
  %8 = phi i1 [ false, %6 ], [ true, %2 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ]
  ret i1 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt5645_volatile_register(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  %3 = add i32 %1, -256
  %4 = icmp ult i32 %3, 249
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  switch i32 %1, label %6 [
    i32 0, label %7
    i32 106, label %7
    i32 108, label %7
    i32 10, label %7
    i32 11, label %7
    i32 12, label %7
    i32 148, label %7
    i32 174, label %7
    i32 176, label %7
    i32 179, label %7
    i32 189, label %7
    i32 190, label %7
    i32 191, label %7
    i32 219, label %7
    i32 223, label %7
    i32 253, label %7
    i32 254, label %7
    i32 255, label %7
  ]

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %6, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %2
  %8 = phi i1 [ false, %6 ], [ true, %2 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ]
  ret i1 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rt5645_jack_detect(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %73, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 145, i32 noundef 3590) #11
  %14 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %4, ptr noundef nonnull @.str.41) #11
  %15 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %4, ptr noundef nonnull @.str.42) #11
  %16 = tail call i32 @snd_soc_dapm_sync(ptr noundef %4) #11
  %17 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.snd_soc_card, ptr %18, i32 0, i32 57
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %10
  %24 = load ptr, ptr %11, align 4
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 99, i32 noundef 8208, i32 noundef 8208, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %26 = load ptr, ptr %11, align 4
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 101, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %28 = load ptr, ptr %11, align 4
  %29 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 102, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %30

30:                                               ; preds = %23, %10
  %31 = load ptr, ptr %11, align 4
  %32 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 248, i32 noundef 240) #11
  %33 = load ptr, ptr %11, align 4
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 11, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %35 = load ptr, ptr %11, align 4
  %36 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 10, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  tail call void @msleep(i32 noundef 100) #11
  %37 = load ptr, ptr %11, align 4
  %38 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 11, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  tail call void @msleep(i32 noundef 600) #11
  %39 = load ptr, ptr %11, align 4
  %40 = call i32 @regmap_read(ptr noundef %39, i32 noundef 12, ptr noundef nonnull %3) #11
  %41 = load i32, ptr %3, align 4
  %42 = and i32 %41, 7
  store i32 %42, ptr %3, align 4
  %43 = add nsw i32 %42, -1
  %44 = icmp ult i32 %43, 2
  br i1 %44, label %45, label %62

45:                                               ; preds = %30
  %46 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 1, i32 8
  %47 = load i8, ptr %46, align 4, !range !9
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 22
  store i32 3, ptr %50, align 4
  %51 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 23
  %52 = load i8, ptr %51, align 4, !range !9
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %49
  %55 = call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %4, ptr noundef nonnull @.str.43) #11
  %56 = call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %4, ptr noundef nonnull @.str.44) #11
  %57 = call i32 @snd_soc_dapm_sync(ptr noundef %4) #11
  %58 = call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 223, i32 noundef 3, i32 noundef 3) #11
  %59 = call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 191, i32 noundef 8, i32 noundef 8) #11
  %60 = call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 224, i32 noundef 32768, i32 noundef 32768) #11
  %61 = call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 223) #11
  br label %66

62:                                               ; preds = %45, %30
  %63 = call i32 @snd_soc_dapm_disable_pin(ptr noundef %4, ptr noundef nonnull @.str.42) #11
  %64 = call i32 @snd_soc_dapm_sync(ptr noundef %4) #11
  %65 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 22
  store i32 1, ptr %65, align 4
  br label %66

66:                                               ; preds = %62, %54, %49
  %67 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 1, i32 4
  %68 = load i8, ptr %67, align 4, !range !9
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %106, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %11, align 4
  %72 = call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef 189, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %106

73:                                               ; preds = %2
  %74 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 22
  store i32 0, ptr %74, align 4
  %75 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = tail call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef 2, i32 noundef 32896, i32 noundef 32896, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %78 = load ptr, ptr %75, align 4
  %79 = tail call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef 11, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %80 = load ptr, ptr %75, align 4
  %81 = tail call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef 10, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %82 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 23
  %83 = load i8, ptr %82, align 4, !range !9
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %73
  %86 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 224, i32 noundef 32768, i32 noundef 0) #11
  %87 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 191, i32 noundef 8, i32 noundef 0) #11
  %88 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %4, ptr noundef nonnull @.str.43) #11
  %89 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %4, ptr noundef nonnull @.str.44) #11
  %90 = tail call i32 @snd_soc_dapm_sync(ptr noundef %4) #11
  br label %91

91:                                               ; preds = %85, %73
  %92 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 1, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %4, ptr noundef nonnull @.str.41) #11
  br label %97

97:                                               ; preds = %95, %91
  %98 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %4, ptr noundef nonnull @.str.42) #11
  %99 = tail call i32 @snd_soc_dapm_sync(ptr noundef %4) #11
  %100 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 1, i32 4
  %101 = load i8, ptr %100, align 4, !range !9
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %97
  %104 = load ptr, ptr %75, align 4
  %105 = tail call i32 @regmap_update_bits_base(ptr noundef %104, i32 noundef 189, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %106

106:                                              ; preds = %103, %97, %70, %66
  %107 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 22
  %108 = load i32, ptr %107, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %108
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_enable_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5645_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rt5645_priv, ptr %6, i32 0, i32 13
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %20 [
    i32 0, label %9
    i32 1, label %17
  ]

9:                                                ; preds = %1
  %10 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %2, ptr noundef nonnull @rt5645_specific_dapm_widgets, i32 noundef 8) #11
  %11 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %2, ptr noundef nonnull @rt5645_specific_dapm_routes, i32 noundef 44) #11
  %12 = getelementptr inbounds %struct.rt5645_priv, ptr %6, i32 0, i32 24
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %2, ptr noundef nonnull @rt5645_old_dapm_routes, i32 noundef 2) #11
  br label %20

17:                                               ; preds = %1
  %18 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %2, ptr noundef nonnull @rt5650_specific_dapm_widgets, i32 noundef 12) #11
  %19 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %2, ptr noundef nonnull @rt5650_specific_dapm_routes, i32 noundef 72) #11
  br label %20

20:                                               ; preds = %17, %15, %9, %1
  %21 = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %2, i32 noundef 0) #11
  %22 = getelementptr inbounds %struct.rt5645_priv, ptr %6, i32 0, i32 1, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %2, ptr noundef nonnull @.str.92) #11
  %27 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %2, ptr noundef nonnull @.str.41) #11
  %28 = tail call i32 @snd_soc_dapm_sync(ptr noundef %2) #11
  br label %29

29:                                               ; preds = %25, %20
  %30 = getelementptr inbounds %struct.rt5645_priv, ptr %6, i32 0, i32 1, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.snd_soc_card, ptr %35, i32 0, i32 1
  store ptr %31, ptr %36, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load ptr, ptr %3, align 4
  %39 = tail call noalias ptr @devm_kmalloc(ptr noundef %38, i32 noundef 228, i32 noundef 3520) #11
  %40 = getelementptr inbounds %struct.rt5645_priv, ptr %6, i32 0, i32 11
  store ptr %39, ptr %40, align 4
  %41 = icmp eq ptr %39, null
  %42 = select i1 %41, i32 -12, i32 0
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt5645_remove(ptr noundef %0) #0 {
  %2 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 0, i32 noundef 0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5645_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @regcache_cache_only(ptr noundef %7, i1 noundef zeroext true) #11
  %8 = load ptr, ptr %6, align 4
  tail call void @regcache_mark_dirty(ptr noundef %8) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5645_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rt5645_priv, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @regcache_cache_only(ptr noundef %7, i1 noundef zeroext false) #11
  %8 = load ptr, ptr %6, align 4
  %9 = tail call i32 @regcache_sync(ptr noundef %8) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5645_set_bias_level(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  switch i32 %1, label %59 [
    i32 2, label %7
    i32 1, label %25
    i32 0, label %50
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %59

11:                                               ; preds = %7
  %12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 99, i32 noundef 43024, i32 noundef 43024) #11
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #11
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #11
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #11
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #11
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #11
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #11
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #11
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #11
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #11
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #11
  %23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 99, i32 noundef 16392, i32 noundef 16392) #11
  %24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 250, i32 noundef 1, i32 noundef 1) #11
  br label %59

25:                                               ; preds = %2
  %26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 99, i32 noundef 43024, i32 noundef 43024) #11
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #11
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #11
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #11
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #11
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #11
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #11
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #11
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #11
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #11
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #11
  %37 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 99, i32 noundef 16392, i32 noundef 16392) #11
  %38 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %25
  %42 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 143, i32 noundef 4416) #11
  tail call void @msleep(i32 noundef 40) #11
  %43 = getelementptr inbounds %struct.rt5645_priv, ptr %6, i32 0, i32 23
  %44 = load i8, ptr %43, align 4, !range !9
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr @system_power_efficient_wq, align 4
  %48 = getelementptr inbounds %struct.rt5645_priv, ptr %6, i32 0, i32 8
  %49 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %47, ptr noundef %48, i32 noundef 0) #11
  br label %59

50:                                               ; preds = %2
  %51 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 143, i32 noundef 4352) #11
  %52 = getelementptr inbounds %struct.rt5645_priv, ptr %6, i32 0, i32 23
  %53 = load i8, ptr %52, align 4, !range !9
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 250, i32 noundef 1, i32 noundef 0) #11
  br label %57

57:                                               ; preds = %55, %50
  %58 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 99, i32 noundef 59416, i32 noundef 0) #11
  br label %59

59:                                               ; preds = %57, %46, %41, %25, %11, %7, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5645_spk_put_volsw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 147, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %12 = tail call i32 @snd_soc_put_volsw(ptr noundef %0, ptr noundef %1) #11
  %13 = load ptr, ptr @system_power_efficient_wq, align 4
  %14 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 9
  %15 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %13, ptr noundef %14, i32 noundef 20) #11
  ret i32 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @rt5645_hweq_info(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 4, ptr %3, align 8
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 228, ptr %4, align 8
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5645_hweq_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %10 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 11
  br label %11

11:                                               ; preds = %11, %2
  %12 = phi i32 [ 0, %2 ], [ %23, %11 ]
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr %struct.rt5645_eq_param_s, ptr %13, i32 %12
  %15 = load i16, ptr %14, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %17 = getelementptr %struct.rt5645_eq_param_s_be16, ptr %9, i32 %12
  store i16 %16, ptr %17, align 2
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr %struct.rt5645_eq_param_s, ptr %18, i32 %12, i32 1
  %20 = load i16, ptr %19, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %22 = getelementptr %struct.rt5645_eq_param_s_be16, ptr %9, i32 %12, i32 1
  store i16 %21, ptr %22, align 2
  %23 = add nuw nsw i32 %12, 1
  %24 = icmp eq i32 %23, 57
  br i1 %24, label %25, label %11

25:                                               ; preds = %11
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5645_hweq_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %10 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 11
  br label %13

11:                                               ; preds = %13
  %12 = load ptr, ptr %10, align 4
  br label %27

13:                                               ; preds = %13, %2
  %14 = phi i32 [ 0, %2 ], [ %25, %13 ]
  %15 = getelementptr %struct.rt5645_eq_param_s_be16, ptr %9, i32 %14
  %16 = load i16, ptr %15, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr %struct.rt5645_eq_param_s, ptr %18, i32 %14
  store i16 %17, ptr %19, align 2
  %20 = getelementptr %struct.rt5645_eq_param_s_be16, ptr %9, i32 %14, i32 1
  %21 = load i16, ptr %20, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %23 = load ptr, ptr %10, align 4
  %24 = getelementptr %struct.rt5645_eq_param_s, ptr %23, i32 %14, i32 1
  store i16 %22, ptr %24, align 2
  %25 = add nuw nsw i32 %14, 1
  %26 = icmp eq i32 %25, 57
  br i1 %26, label %11, label %13

27:                                               ; preds = %31, %11
  %28 = phi i32 [ 56, %11 ], [ %32, %31 ]
  %29 = getelementptr %struct.rt5645_eq_param_s, ptr %12, i32 %28
  %30 = load i16, ptr %29, align 2
  switch i16 %30, label %52 [
    i16 0, label %31
    i16 177, label %34
  ]

31:                                               ; preds = %27
  %32 = add nsw i32 %28, -1
  %33 = icmp eq i32 %28, 0
  br i1 %33, label %34, label %27

34:                                               ; preds = %31, %27
  br label %35

35:                                               ; preds = %50, %34
  %36 = phi i32 [ %51, %50 ], [ 0, %34 ]
  %37 = getelementptr %struct.rt5645_eq_param_s, ptr %12, i32 %36
  %38 = load i16, ptr %37, align 2
  %39 = add i16 %38, -420
  %40 = icmp ult i16 %39, 42
  br i1 %40, label %48, label %41

41:                                               ; preds = %35
  %42 = add i16 %38, -485
  %43 = icmp ult i16 %42, 20
  %44 = icmp eq i16 %38, 177
  %45 = or i1 %44, %43
  %46 = icmp ult i32 %36, 56
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %50, label %52

48:                                               ; preds = %35
  %49 = icmp ult i32 %36, 56
  br i1 %49, label %50, label %52

50:                                               ; preds = %48, %41
  %51 = add nuw nsw i32 %36, 1
  br label %35

52:                                               ; preds = %48, %41, %27
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5645_set_micbias1_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  switch i32 %2, label %11 [
    i32 1, label %8
    i32 8, label %7
  ]

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %7, %3
  %9 = phi i32 [ 0, %7 ], [ 32, %3 ]
  %10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 251, i32 noundef 32, i32 noundef %9) #11
  br label %11

11:                                               ; preds = %8, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5645_set_micbias2_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  switch i32 %2, label %11 [
    i32 1, label %8
    i32 8, label %7
  ]

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %7, %3
  %9 = phi i32 [ 0, %7 ], [ 16, %3 ]
  %10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 251, i32 noundef 16, i32 noundef %9) #11
  br label %11

11:                                               ; preds = %8, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_dmic_clk(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -92
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.rt5645_priv, ptr %9, i32 0, i32 14
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rt5645_priv, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @rl6231_get_pre_div(ptr noundef %13, i32 noundef 115, i32 noundef 12) #11
  %15 = sdiv i32 %11, %14
  %16 = tail call i32 @rl6231_calc_dmic_clk(i32 noundef %15) #11
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.236) #12
  br label %24

20:                                               ; preds = %3
  %21 = getelementptr i8, ptr %5, i32 -104
  %22 = shl i32 %16, 5
  %23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %21, i32 noundef 117, i32 noundef 224, i32 noundef %22) #11
  br label %24

24:                                               ; preds = %20, %18
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5645_bst2_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  switch i32 %2, label %11 [
    i32 2, label %8
    i32 4, label %7
  ]

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %7, %3
  %9 = phi i32 [ 0, %7 ], [ 32, %3 ]
  %10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 100, i32 noundef 32, i32 noundef %9) #11
  br label %11

11:                                               ; preds = %8, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5645_hp_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  %7 = getelementptr i8, ptr %5, i32 -92
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  switch i32 %2, label %37 [
    i32 2, label %11
    i32 4, label %24
  ]

11:                                               ; preds = %3
  tail call fastcc void @hp_amp_power(ptr noundef %6, i32 noundef 1)
  %12 = getelementptr inbounds %struct.rt5645_priv, ptr %10, i32 0, i32 13
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 144, i32 noundef 1911, i32 noundef 1847) #11
  %17 = getelementptr inbounds %struct.rt5645_priv, ptr %10, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 311, i32 noundef 64512) #11
  %20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 142, i32 noundef 32768, i32 noundef 32768) #11
  %21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 142, i32 noundef 64, i32 noundef 64) #11
  %22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 142, i32 noundef 832, i32 noundef 768) #11
  tail call void @msleep(i32 noundef 40) #11
  %23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 142, i32 noundef 772, i32 noundef 0) #11
  br label %37

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.rt5645_priv, ptr %10, i32 0, i32 13
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 144, i32 noundef 1911, i32 noundef 1590) #11
  %30 = getelementptr inbounds %struct.rt5645_priv, ptr %10, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 311, i32 noundef 64512) #11
  %33 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 142, i32 noundef 4, i32 noundef 4) #11
  %34 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 142, i32 noundef 32, i32 noundef 32) #11
  %35 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 142, i32 noundef 800, i32 noundef 768) #11
  tail call void @msleep(i32 noundef 30) #11
  br label %36

36:                                               ; preds = %28, %24
  tail call fastcc void @hp_amp_power(ptr noundef %6, i32 noundef 0)
  br label %37

37:                                               ; preds = %36, %15, %11, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5645_lout_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  switch i32 %2, label %13 [
    i32 2, label %7
    i32 4, label %10
  ]

7:                                                ; preds = %3
  tail call fastcc void @hp_amp_power(ptr noundef %6, i32 noundef 1)
  %8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 99, i32 noundef 4096, i32 noundef 4096) #11
  %9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 3, i32 noundef 32896, i32 noundef 0) #11
  br label %13

10:                                               ; preds = %3
  %11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 3, i32 noundef 32896, i32 noundef 32896) #11
  %12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 99, i32 noundef 4096, i32 noundef 0) #11
  tail call fastcc void @hp_amp_power(ptr noundef %6, i32 noundef 0)
  br label %13

13:                                               ; preds = %10, %7, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5645_spk_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  switch i32 %2, label %42 [
    i32 2, label %7
    i32 4, label %38
  ]

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -92
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.rt5645_priv, ptr %11, i32 0, i32 11
  %13 = getelementptr inbounds %struct.rt5645_priv, ptr %11, i32 0, i32 2
  br label %14

14:                                               ; preds = %26, %7
  %15 = phi i32 [ 0, %7 ], [ %33, %26 ]
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr %struct.rt5645_eq_param_s, ptr %16, i32 %15
  %18 = load i16, ptr %17, align 2
  %19 = add i16 %18, -420
  %20 = icmp ult i16 %19, 42
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = add i16 %18, -485
  %23 = icmp ult i16 %22, 20
  %24 = icmp eq i16 %18, 177
  %25 = or i1 %24, %23
  br i1 %25, label %26, label %35

26:                                               ; preds = %21, %14
  %27 = load ptr, ptr %13, align 4
  %28 = zext i16 %18 to i32
  %29 = getelementptr %struct.rt5645_eq_param_s, ptr %16, i32 %15, i32 1
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef %28, i32 noundef %31) #11
  %33 = add nuw nsw i32 %15, 1
  %34 = icmp eq i32 %33, 57
  br i1 %34, label %35, label %14

35:                                               ; preds = %26, %21
  %36 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 97, i32 noundef 769, i32 noundef 769) #11
  %37 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 252, i32 noundef 1536, i32 noundef 512) #11
  br label %42

38:                                               ; preds = %3
  %39 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 252, i32 noundef 1536, i32 noundef 0) #11
  %40 = tail call i32 @snd_soc_component_write(ptr noundef %6, i32 noundef 177, i32 noundef 0) #11
  %41 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 97, i32 noundef 769, i32 noundef 0) #11
  br label %42

42:                                               ; preds = %38, %35, %3
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
define internal fastcc void @hp_amp_power(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %8 = icmp eq i32 %1, 0
  %9 = load i32, ptr @hp_amp_power.hp_amp_power_count, align 4
  br i1 %8, label %70, label %10

10:                                               ; preds = %2
  %11 = icmp slt i32 %9, 1
  br i1 %11, label %12, label %67

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.rt5645_priv, ptr %7, i32 0, i32 13
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  %17 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 143, i32 noundef 12544) #11
  %18 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 145, i32 noundef 3590) #11
  %19 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 142, i32 noundef 13) #11
  %20 = getelementptr inbounds %struct.rt5645_priv, ptr %7, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 375, i32 noundef 40705) #11
  br label %23

23:                                               ; preds = %23, %16
  %24 = phi i32 [ 0, %16 ], [ %30, %23 ]
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #11
  %25 = load ptr, ptr %20, align 4
  %26 = call i32 @regmap_read(ptr noundef %25, i32 noundef 375, ptr noundef nonnull %3) #11
  %27 = load i32, ptr %3, align 4
  %28 = and i32 %27, 32768
  %29 = icmp eq i32 %28, 0
  %30 = add nuw nsw i32 %24, 1
  %31 = icmp eq i32 %30, 20
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %33, label %23

33:                                               ; preds = %23
  %34 = call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 142, i32 noundef 16, i32 noundef 16) #11
  %35 = load ptr, ptr %20, align 4
  %36 = call i32 @regmap_write(ptr noundef %35, i32 noundef 318, i32 noundef 29696) #11
  %37 = call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 144, i32 noundef 1847) #11
  %38 = load ptr, ptr %20, align 4
  %39 = call i32 @regmap_write(ptr noundef %38, i32 noundef 311, i32 noundef 64512) #11
  %40 = call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 143, i32 noundef 4416) #11
  call void @msleep(i32 noundef 90) #11
  br label %67

41:                                               ; preds = %12
  %42 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 143, i32 noundef 8192, i32 noundef 8192) #11
  %43 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 142, i32 noundef 13) #11
  %44 = getelementptr inbounds %struct.rt5645_priv, ptr %7, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 375, i32 noundef 40705) #11
  br label %47

47:                                               ; preds = %47, %41
  %48 = phi i32 [ 150, %41 ], [ %49, %47 ]
  %49 = add nsw i32 %48, -1
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #11
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %52, label %47

52:                                               ; preds = %47
  %53 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 99, i32 noundef 16392, i32 noundef 0) #11
  %54 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 102, i32 noundef 3072, i32 noundef 3072) #11
  %55 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 99, i32 noundef 224, i32 noundef 224) #11
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #11
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #11
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #11
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #11
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #11
  %61 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 99, i32 noundef 16392, i32 noundef 16392) #11
  %62 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 142, i32 noundef 20, i32 noundef 20) #11
  %63 = load ptr, ptr %44, align 4
  %64 = tail call i32 @regmap_write(ptr noundef %63, i32 noundef 276, i32 noundef 6826) #11
  %65 = load ptr, ptr %44, align 4
  %66 = tail call i32 @regmap_write(ptr noundef %65, i32 noundef 292, i32 noundef 1072) #11
  br label %67

67:                                               ; preds = %52, %33, %10
  %68 = load i32, ptr @hp_amp_power.hp_amp_power_count, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr @hp_amp_power.hp_amp_power_count, align 4
  br label %91

70:                                               ; preds = %2
  %71 = add i32 %9, -1
  store i32 %71, ptr @hp_amp_power.hp_amp_power_count, align 4
  %72 = icmp slt i32 %71, 1
  br i1 %72, label %73, label %91

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.rt5645_priv, ptr %7, i32 0, i32 13
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.rt5645_priv, ptr %7, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 @regmap_write(ptr noundef %79, i32 noundef 318, i32 noundef 29696) #11
  %81 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 144, i32 noundef 1847) #11
  %82 = load ptr, ptr %78, align 4
  %83 = tail call i32 @regmap_write(ptr noundef %82, i32 noundef 311, i32 noundef 64512) #11
  %84 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 143, i32 noundef 4416) #11
  tail call void @msleep(i32 noundef 100) #11
  %85 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 142, i32 noundef 1) #11
  br label %91

86:                                               ; preds = %73
  %87 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 142, i32 noundef 772, i32 noundef 0) #11
  %88 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 142, i32 noundef 0) #11
  %89 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 99, i32 noundef 224, i32 noundef 0) #11
  %90 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 143, i32 noundef 8192, i32 noundef 0) #11
  br label %91

91:                                               ; preds = %86, %77, %70, %67
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @is_using_asrc(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -104
  %6 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 9
  %7 = load i8, ptr %6, align 4
  %8 = icmp ult i8 %7, 11
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = zext i8 %7 to i16
  %11 = lshr i16 1803, %10
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %9
  %15 = sext i8 %7 to i32
  %16 = getelementptr inbounds [11 x i32], ptr @switch.table.is_using_asrc, i32 0, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = sext i8 %7 to i32
  %19 = getelementptr inbounds [11 x i32], ptr @switch.table.is_using_asrc.454, i32 0, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef %17) #11
  %22 = lshr i32 %21, %20
  %23 = and i32 %22, 15
  %24 = add nsw i32 %23, -1
  %25 = icmp ult i32 %24, 4
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %14, %9, %2
  %28 = phi i32 [ 0, %2 ], [ %26, %14 ], [ 0, %9 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @is_sys_clk_from_pll(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -104
  %6 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 128) #11
  %7 = and i32 %6, 49152
  %8 = icmp eq i32 %7, 16384
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_bias_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5645_set_dai_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rt5645_priv, ptr %10, i32 0, i32 14
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.rt5645_priv, ptr %10, i32 0, i32 15
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %25, label %18

18:                                               ; preds = %14, %4
  %19 = icmp ult i32 %1, 3
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.448, i32 noundef %1) #12
  br label %25

21:                                               ; preds = %18
  %22 = shl i32 %1, 14
  %23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 128, i32 noundef 49152, i32 noundef %22) #11
  store i32 %2, ptr %11, align 4
  %24 = getelementptr inbounds %struct.rt5645_priv, ptr %10, i32 0, i32 15
  store i32 %1, ptr %24, align 4
  br label %25

25:                                               ; preds = %21, %20, %14
  %26 = phi i32 [ -22, %20 ], [ 0, %21 ], [ 0, %14 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5645_set_dai_pll(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.rl6231_pll_code, align 4
  %7 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_component, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !8
  %13 = getelementptr inbounds %struct.rt5645_priv, ptr %12, i32 0, i32 19
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %16, label %24

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.rt5645_priv, ptr %12, i32 0, i32 20
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %3
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rt5645_priv, ptr %12, i32 0, i32 21
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %4
  br i1 %23, label %68, label %24

24:                                               ; preds = %20, %16, %5
  %25 = icmp ne i32 %3, 0
  %26 = icmp ne i32 %4, 0
  %27 = and i1 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rt5645_priv, ptr %12, i32 0, i32 20
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.rt5645_priv, ptr %12, i32 0, i32 21
  store i32 0, ptr %30, align 4
  %31 = tail call i32 @snd_soc_component_update_bits(ptr noundef %8, i32 noundef 128, i32 noundef 49152, i32 noundef 0) #11
  br label %68

32:                                               ; preds = %24
  switch i32 %2, label %39 [
    i32 0, label %41
    i32 1, label %33
    i32 2, label %33
  ]

33:                                               ; preds = %32, %32
  %34 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  switch i32 %35, label %37 [
    i32 0, label %41
    i32 1, label %36
  ]

36:                                               ; preds = %33
  br label %41

37:                                               ; preds = %33
  %38 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.449, i32 noundef %35) #12
  br label %68

39:                                               ; preds = %32
  %40 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.450, i32 noundef %2) #12
  br label %68

41:                                               ; preds = %36, %33, %32
  %42 = phi i32 [ 4096, %36 ], [ %2, %32 ], [ 2048, %33 ]
  %43 = tail call i32 @snd_soc_component_update_bits(ptr noundef %8, i32 noundef 128, i32 noundef 14336, i32 noundef %42) #11
  %44 = call i32 @rl6231_pll_calc(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %6) #11
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.451, i32 noundef %3) #12
  br label %68

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.rl6231_pll_code, ptr %6, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = shl i32 %50, 7
  %52 = getelementptr inbounds %struct.rl6231_pll_code, ptr %6, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = or i32 %51, %53
  %55 = call i32 @snd_soc_component_write(ptr noundef %8, i32 noundef 129, i32 noundef %54) #11
  %56 = load i8, ptr %6, align 4, !range !9
  %57 = icmp eq i8 %56, 0
  %58 = getelementptr inbounds %struct.rl6231_pll_code, ptr %6, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = shl i32 %59, 12
  %61 = select i1 %57, i32 %60, i32 0
  %62 = zext i8 %56 to i32
  %63 = shl nuw nsw i32 %62, 11
  %64 = or i32 %61, %63
  %65 = call i32 @snd_soc_component_write(ptr noundef %8, i32 noundef 130, i32 noundef %64) #11
  %66 = getelementptr inbounds %struct.rt5645_priv, ptr %12, i32 0, i32 20
  store i32 %3, ptr %66, align 4
  %67 = getelementptr inbounds %struct.rt5645_priv, ptr %12, i32 0, i32 21
  store i32 %4, ptr %67, align 4
  store i32 %2, ptr %13, align 4
  br label %68

68:                                               ; preds = %48, %46, %39, %37, %28, %20
  %69 = phi i32 [ -22, %39 ], [ -22, %37 ], [ %44, %46 ], [ 0, %48 ], [ 0, %28 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5645_set_dai_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.rt5645_priv, ptr %8, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  %12 = select i1 %11, i32 8, i32 7
  %13 = trunc i32 %1 to i16
  %14 = and i16 %13, -4096
  switch i16 %14, label %49 [
    i16 4096, label %16
    i16 16384, label %15
  ]

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %2
  %17 = phi i32 [ 0, %15 ], [ 1, %2 ]
  %18 = phi i32 [ 32768, %15 ], [ 0, %2 ]
  %19 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr %struct.rt5645_priv, ptr %8, i32 0, i32 18, i32 %20
  store i32 %17, ptr %21, align 4
  %22 = and i32 %1, 3840
  switch i32 %22, label %49 [
    i32 0, label %26
    i32 768, label %23
  ]

23:                                               ; preds = %16
  %24 = shl nuw nsw i32 1, %12
  %25 = or i32 %18, %24
  br label %26

26:                                               ; preds = %23, %16
  %27 = phi i32 [ %25, %23 ], [ %18, %16 ]
  %28 = and i32 %1, 15
  switch i32 %28, label %49 [
    i32 1, label %35
    i32 3, label %29
    i32 4, label %31
    i32 5, label %33
  ]

29:                                               ; preds = %26
  %30 = or i32 %27, 1
  br label %35

31:                                               ; preds = %26
  %32 = or i32 %27, 2
  br label %35

33:                                               ; preds = %26
  %34 = or i32 %27, 3
  br label %35

35:                                               ; preds = %33, %31, %29, %26
  %36 = phi i32 [ %34, %33 ], [ %32, %31 ], [ %30, %29 ], [ %27, %26 ]
  %37 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  switch i32 %38, label %47 [
    i32 0, label %39
    i32 1, label %43
  ]

39:                                               ; preds = %35
  %40 = shl nuw nsw i32 1, %12
  %41 = or i32 %40, 32771
  %42 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 112, i32 noundef %41, i32 noundef %36) #11
  br label %49

43:                                               ; preds = %35
  %44 = shl nuw nsw i32 1, %12
  %45 = or i32 %44, 32771
  %46 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 113, i32 noundef %45, i32 noundef %36) #11
  br label %49

47:                                               ; preds = %35
  %48 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.449, i32 noundef %38) #12
  br label %49

49:                                               ; preds = %47, %43, %39, %26, %16, %2
  %50 = phi i32 [ -22, %47 ], [ -22, %2 ], [ -22, %16 ], [ -22, %26 ], [ 0, %43 ], [ 0, %39 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5645_set_tdm_slot(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_component, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.rt5645_priv, ptr %11, i32 0, i32 13
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1
  %15 = select i1 %14, i32 10, i32 12
  %16 = select i1 %14, i32 8, i32 12
  %17 = select i1 %14, i32 6, i32 10
  %18 = select i1 %14, i32 4, i32 10
  %19 = or i32 %2, %1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %5
  %22 = select i1 %14, i32 32768, i32 16384
  %23 = icmp eq i32 %13, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 207, i32 noundef 63, i32 noundef 20) #11
  br label %26

26:                                               ; preds = %24, %21, %5
  %27 = phi i32 [ %22, %24 ], [ %22, %21 ], [ 0, %5 ]
  switch i32 %3, label %43 [
    i32 4, label %28
    i32 6, label %33
    i32 8, label %38
  ]

28:                                               ; preds = %26
  %29 = shl nuw nsw i32 1, %15
  %30 = shl nuw nsw i32 1, %16
  %31 = or i32 %29, %30
  %32 = or i32 %31, %27
  br label %43

33:                                               ; preds = %26
  %34 = shl nuw nsw i32 2, %15
  %35 = shl nuw nsw i32 2, %16
  %36 = or i32 %34, %35
  %37 = or i32 %36, %27
  br label %43

38:                                               ; preds = %26
  %39 = shl nuw nsw i32 3, %15
  %40 = shl nuw nsw i32 3, %16
  %41 = or i32 %39, %40
  %42 = or i32 %41, %27
  br label %43

43:                                               ; preds = %38, %33, %28, %26
  %44 = phi i32 [ %27, %26 ], [ %42, %38 ], [ %37, %33 ], [ %32, %28 ]
  %45 = add i32 %4, -16
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 30)
  switch i32 %46, label %62 [
    i32 1, label %47
    i32 2, label %52
    i32 4, label %57
  ]

47:                                               ; preds = %43
  %48 = shl nuw nsw i32 1, %17
  %49 = shl nuw nsw i32 1, %18
  %50 = or i32 %48, %49
  %51 = or i32 %50, %44
  br label %62

52:                                               ; preds = %43
  %53 = shl nuw nsw i32 2, %17
  %54 = shl nuw nsw i32 2, %18
  %55 = or i32 %53, %54
  %56 = or i32 %55, %44
  br label %62

57:                                               ; preds = %43
  %58 = shl nuw nsw i32 3, %17
  %59 = shl nuw nsw i32 3, %18
  %60 = or i32 %58, %59
  %61 = or i32 %60, %44
  br label %62

62:                                               ; preds = %57, %52, %47, %43
  %63 = phi i32 [ %44, %43 ], [ %61, %57 ], [ %56, %52 ], [ %51, %47 ]
  %64 = select i1 %14, i32 36848, i32 31744
  %65 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 119, i32 noundef %64, i32 noundef %63) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt5645_hw_params(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
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
  %14 = getelementptr %struct.rt5645_priv, ptr %9, i32 0, i32 16, i32 %13
  store i32 %11, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rt5645_priv, ptr %9, i32 0, i32 14
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %12, align 4
  %18 = getelementptr %struct.rt5645_priv, ptr %9, i32 0, i32 16, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @rl6231_get_clk_info(i32 noundef %16, i32 noundef %19) #11
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.452) #12
  br label %85

24:                                               ; preds = %3
  %25 = tail call i32 @snd_soc_params_to_frame_size(ptr noundef %1) #11
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.453, i32 noundef %25) #12
  br label %85

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.rt5645_priv, ptr %9, i32 0, i32 13
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 1
  %33 = select i1 %32, i32 4, i32 2
  %34 = icmp ugt i32 %25, 32
  %35 = zext i1 %34 to i32
  %36 = load i32, ptr %12, align 4
  %37 = getelementptr %struct.rt5645_priv, ptr %9, i32 0, i32 16, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = shl nuw nsw i32 32, %35
  %40 = mul i32 %38, %39
  %41 = getelementptr %struct.rt5645_priv, ptr %9, i32 0, i32 17, i32 %36
  store i32 %40, ptr %41, align 4
  %42 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %50, %29
  %46 = phi i32 [ 0, %29 ], [ 32, %50 ]
  %47 = phi i32 [ %43, %29 ], [ %52, %50 ]
  %48 = tail call i32 @llvm.cttz.i32(i32 %47, i1 true) #11, !range !10
  %49 = or i32 %48, %46
  br label %54

50:                                               ; preds = %29
  %51 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %45

54:                                               ; preds = %50, %45
  %55 = phi i32 [ %49, %45 ], [ 0, %50 ]
  %56 = tail call i32 @snd_pcm_format_width(i32 noundef %55) #11
  %57 = add i32 %56, -8
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 30)
  %59 = icmp ult i32 %58, 5
  br i1 %59, label %60, label %85

60:                                               ; preds = %54
  %61 = trunc i32 %58 to i8
  %62 = lshr i8 29, %61
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %85, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds [5 x i32], ptr @switch.table.rt5645_hw_params, i32 0, i32 %58
  %67 = load i32, ptr %66, align 4
  %68 = load i32, ptr %12, align 4
  switch i32 %68, label %83 [
    i32 0, label %69
    i32 1, label %75
  ]

69:                                               ; preds = %65
  %70 = shl i32 %20, 12
  %71 = shl nuw nsw i32 3, %33
  %72 = shl nuw nsw i32 %67, %33
  %73 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 112, i32 noundef %71, i32 noundef %72) #11
  %74 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 115, i32 noundef 28672, i32 noundef %70) #11
  br label %85

75:                                               ; preds = %65
  %76 = select i1 %34, i32 2048, i32 0
  %77 = shl i32 %20, 8
  %78 = or i32 %76, %77
  %79 = shl nuw nsw i32 3, %33
  %80 = shl nuw nsw i32 %67, %33
  %81 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 113, i32 noundef %79, i32 noundef %80) #11
  %82 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 115, i32 noundef 3840, i32 noundef %78) #11
  br label %85

83:                                               ; preds = %65
  %84 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.449, i32 noundef %68) #12
  br label %85

85:                                               ; preds = %83, %75, %69, %60, %54, %27, %22
  %86 = phi i32 [ -22, %22 ], [ -22, %27 ], [ -22, %83 ], [ -22, %54 ], [ 0, %75 ], [ 0, %69 ], [ -22, %60 ]
  ret i32 %86
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_pll_calc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_get_clk_info(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_frame_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{i32 0, i32 33}
