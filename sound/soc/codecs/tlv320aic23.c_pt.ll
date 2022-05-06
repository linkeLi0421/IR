; ModuleID = '/llk/IR/sound/soc/codecs/tlv320aic23.c_pt.bc'
source_filename = "../sound/soc/codecs/tlv320aic23.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tlv320aic23_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22tlv320aic23_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_tlv320aic23_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tlv320aic23_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22tlv320aic23_probe\22\09\09\09\09\09"
module asm "__kstrtabns_tlv320aic23_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.reg_default = type { i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.85, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.85 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.77, i32 }
%union.anon.77 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.71, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.71 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.66, [128 x i8] }
%union.anon.66 = type { %union.anon.68 }
%union.anon.68 = type { [64 x i64] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.aic23 = type { ptr, i32, i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@tlv320aic23_reg = internal constant [10 x %struct.reg_default] [%struct.reg_default { i32 0, i32 151 }, %struct.reg_default { i32 1, i32 151 }, %struct.reg_default { i32 2, i32 249 }, %struct.reg_default { i32 3, i32 249 }, %struct.reg_default { i32 4, i32 26 }, %struct.reg_default { i32 5, i32 4 }, %struct.reg_default { i32 6, i32 7 }, %struct.reg_default { i32 7, i32 1 }, %struct.reg_default { i32 8, i32 32 }, %struct.reg_default { i32 9, i32 0 }], align 4
@tlv320aic23_regmap = dso_local constant %struct.regmap_config { ptr null, i32 7, i32 0, i32 0, i32 9, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tlv320aic23_reg, i32 10, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@__kstrtab_tlv320aic23_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_tlv320aic23_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_tlv320aic23_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tlv320aic23_regmap to i32), ptr @__kstrtab_tlv320aic23_regmap, ptr @__kstrtabns_tlv320aic23_regmap }, section "___ksymtab+tlv320aic23_regmap", align 4
@soc_component_dev_tlv320aic23 = internal constant %struct.snd_soc_component_driver { ptr null, ptr @tlv320aic23_snd_controls, i32 8, ptr @tlv320aic23_dapm_widgets, i32 13, ptr @tlv320aic23_intercon, i32 13, ptr @tlv320aic23_component_probe, ptr null, ptr null, ptr @tlv320aic23_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tlv320aic23_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 62, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@tlv320aic23_dai = internal global %struct.snd_soc_dai_driver { ptr @.str.43, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tlv320aic23_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.21, i64 73014445060, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.19, i64 73014445060, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, align 8
@__kstrtab_tlv320aic23_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_tlv320aic23_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_tlv320aic23_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tlv320aic23_probe to i32), ptr @__kstrtab_tlv320aic23_probe, ptr @__kstrtabns_tlv320aic23_probe }, section "___ksymtab+tlv320aic23_probe", align 4
@__UNIQUE_ID_description230 = internal constant [42 x i8] c"description=ASoC TLV320AIC23 codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [45 x i8] c"author=Arun KS <arunks@mistralsolutions.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@tlv320aic23_snd_controls = internal constant [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.77 { ptr @out_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.1, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.2 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.3, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.4 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.77 { ptr @input_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.6 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.8 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.10 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_tlv320aic23_get_volsw, ptr @snd_soc_tlv320aic23_put_volsw, %union.anon.77 { ptr @sidetone_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @tlv320aic23_deemph to i32) }], align 4
@tlv320aic23_intercon = internal constant [13 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.23, ptr @.str.37, ptr @.str.24, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.23, ptr @.str.41, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.23, ptr @.str.39, ptr @.str.25, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.27, ptr null, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.26, ptr null, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.28, ptr null, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.29, ptr null, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.24, ptr null, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.24, ptr null, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.25, ptr null, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.22, ptr @.str.35, ptr @.str.24, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.22, ptr @.str.36, ptr @.str.25, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.20, ptr null, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str = private unnamed_addr constant [24 x i8] c"Digital Playback Volume\00", align 1
@out_gain_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -12100, i32 100], align 4
@.compoundliteral = internal global %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 2, i32 3, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Digital Playback Switch\00", align 1
@.compoundliteral.2 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 3, i32 3, i32 0, i8 1 }, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Line Input Switch\00", align 1
@.compoundliteral.4 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 0, i32 1, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"Line Input Volume\00", align 1
@input_gain_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -1725, i32 75], align 4
@.compoundliteral.6 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 0, i32 1, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"Mic Input Switch\00", align 1
@.compoundliteral.8 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 1, i32 1, i32 0, i8 1 }, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"Mic Booster Switch\00", align 1
@.compoundliteral.10 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"Sidetone Volume\00", align 1
@sidetone_vol_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -1800, i32 300], align 4
@.compoundliteral.12 = internal global %struct.soc_mixer_control { i32 0, i32 4, i32 4, i32 4, i32 4, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.13 = private unnamed_addr constant [21 x i8] c"Playback De-emphasis\00", align 1
@tlv320aic23_deemph = internal constant %struct.soc_enum { i32 5, i8 1, i8 1, i32 4, i32 3, ptr @deemph_text, ptr null, i8 0 }, align 4
@deemph_text = internal global [4 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"32Khz\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"44.1Khz\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"48Khz\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"DAC\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Playback\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"ADC\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Capture\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"Capture Source\00", align 1
@tlv320aic23_rec_src_mux_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @rec_src_enum to i32) }, align 4
@.str.23 = private unnamed_addr constant [13 x i8] c"Output Mixer\00", align 1
@tlv320aic23_output_mixer_controls = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }], align 4
@.str.24 = private unnamed_addr constant [11 x i8] c"Line Input\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"Mic Input\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"LHPOUT\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"RHPOUT\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"LOUT\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"ROUT\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"LLINEIN\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"RLINEIN\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"MICIN\00", align 1
@tlv320aic23_dapm_widgets = internal constant [13 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.18, ptr @.str.19, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.20, ptr @.str.21, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.22, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @tlv320aic23_rec_src_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.23, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @tlv320aic23_output_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.24, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.25, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.26, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.27, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.28, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.29, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.30, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.31, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.32, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.34 = private unnamed_addr constant [13 x i8] c"Input Select\00", align 1
@rec_src_enum = internal constant %struct.soc_enum { i32 4, i8 2, i8 2, i32 2, i32 1, ptr @rec_src_text, ptr null, i8 0 }, align 4
@rec_src_text = internal global [2 x ptr] [ptr @.str.35, ptr @.str.36], align 4
@.str.35 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"Mic\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"Line Bypass Switch\00", align 1
@.compoundliteral.38 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 3, i32 3, i32 0, i8 0 }, align 4
@.str.39 = private unnamed_addr constant [20 x i8] c"Mic Sidetone Switch\00", align 1
@.compoundliteral.40 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.41 = private unnamed_addr constant [16 x i8] c"Playback Switch\00", align 1
@.compoundliteral.42 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.43 = private unnamed_addr constant [17 x i8] c"tlv320aic23-hifi\00", align 1
@tlv320aic23_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr @tlv320aic23_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @tlv320aic23_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tlv320aic23_mute, ptr null, ptr @tlv320aic23_shutdown, ptr @tlv320aic23_hw_params, ptr null, ptr @tlv320aic23_pcm_prepare, ptr null, ptr null, ptr null, ptr null, i32 0, i8 1 }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.44 = private unnamed_addr constant [35 x i8] c"\013%s:Invalid rate %u,%u requested\0A\00", align 1
@__func__.set_sample_rate_control = private unnamed_addr constant [24 x i8] c"set_sample_rate_control\00", align 1
@bosr_usb_divisor_table = internal unnamed_addr constant [4 x i32] [i32 128, i32 125, i32 192, i32 136], align 4
@sr_valid_mask = internal unnamed_addr constant [4 x i16] [i16 -28721, i16 207, i16 -28721, i16 -28928], align 2
@sr_adc_mult_table = internal unnamed_addr constant [16 x i8] c"BB\0B\0B\00\00,\84BB\0C\0C\00\00\00\84", align 1
@sr_dac_mult_table = internal unnamed_addr constant [16 x i8] c"B\0BB\0B\00\00,\84B\0CB\0C\00\00\00\84", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_license232, ptr @__ksymtab_tlv320aic23_probe, ptr @__ksymtab_tlv320aic23_regmap], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tlv320aic23_probe(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = ptrtoint ptr %1 to i32
  br label %12

6:                                                ; preds = %2
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 16, i32 noundef 3520) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  store ptr %1, ptr %7, align 4
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %7, ptr %10, align 8
  %11 = tail call i32 @devm_snd_soc_register_component(ptr noundef %0, ptr noundef nonnull @soc_component_dev_tlv320aic23, ptr noundef nonnull @tlv320aic23_dai, i32 noundef 1) #5
  br label %12

12:                                               ; preds = %9, %6, %4
  %13 = phi i32 [ %5, %4 ], [ %11, %9 ], [ -12, %6 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tlv320aic23_component_probe(ptr noundef %0) #0 {
  %2 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 15, i32 noundef 0) #5
  %3 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 5, i32 noundef 4) #5
  %4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 0, i32 noundef 128, i32 noundef 256) #5
  %5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 1, i32 noundef 128, i32 noundef 256) #5
  %6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 4, i32 noundef 10, i32 noundef 0) #5
  %7 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 2, i32 noundef 112) #5
  %8 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 3, i32 noundef 112) #5
  %9 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 9, i32 noundef 1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tlv320aic23_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  tail call void @regcache_mark_dirty(ptr noundef %6) #5
  %7 = load ptr, ptr %5, align 4
  %8 = tail call i32 @regcache_sync(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tlv320aic23_set_bias_level(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 6) #5
  switch i32 %1, label %14 [
    i32 3, label %4
    i32 0, label %9
    i32 1, label %6
  ]

4:                                                ; preds = %2
  %5 = and i32 %3, 343
  br label %11

6:                                                ; preds = %2
  %7 = and i32 %3, 319
  %8 = or i32 %7, 64
  br label %11

9:                                                ; preds = %2
  %10 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 9, i32 noundef 0) #5
  br label %11

11:                                               ; preds = %9, %6, %4
  %12 = phi i32 [ 511, %9 ], [ %8, %6 ], [ %5, %4 ]
  %13 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 6, i32 noundef %12) #5
  br label %14

14:                                               ; preds = %11, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_soc_tlv320aic23_get_volsw(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 4) #5
  %6 = lshr i32 %5, 6
  %7 = and i32 %6, 7
  %8 = icmp ult i32 %7, 4
  %9 = sub nsw i32 3, %7
  %10 = and i32 %9, 65535
  %11 = select i1 %8, i32 %10, i32 4
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %11, ptr %12, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_soc_tlv320aic23_put_volsw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 7
  %8 = icmp ult i32 %7, 4
  %9 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 4) #5
  %10 = and i32 %9, 65087
  %11 = mul nuw nsw i32 %7, 4194240
  %12 = add nuw nsw i32 %11, 192
  %13 = and i32 %12, 4194240
  %14 = select i1 %8, i32 %13, i32 256
  %15 = or i32 %14, %10
  %16 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 4, i32 noundef %15) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tlv320aic23_set_dai_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.aic23, ptr %8, i32 0, i32 1
  store i32 %2, ptr %9, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tlv320aic23_set_dai_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 7) #5
  %6 = trunc i32 %1 to i16
  %7 = and i16 %6, -4096
  switch i16 %7, label %31 [
    i16 4096, label %8
    i16 16384, label %12
  ]

8:                                                ; preds = %2
  %9 = trunc i32 %5 to i16
  %10 = and i16 %9, -68
  %11 = or i16 %10, 64
  br label %15

12:                                               ; preds = %2
  %13 = trunc i32 %5 to i16
  %14 = and i16 %13, -68
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i16 [ %14, %12 ], [ %11, %8 ]
  %17 = and i32 %1, 15
  switch i32 %17, label %31 [
    i32 1, label %18
    i32 4, label %20
    i32 5, label %22
    i32 2, label %27
    i32 3, label %25
  ]

18:                                               ; preds = %15
  %19 = or i16 %16, 2
  br label %27

20:                                               ; preds = %15
  %21 = or i16 %16, 16
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi i16 [ %16, %15 ], [ %21, %20 ]
  %24 = or i16 %23, 3
  br label %27

25:                                               ; preds = %15
  %26 = or i16 %16, 1
  br label %27

27:                                               ; preds = %25, %22, %18, %15
  %28 = phi i16 [ %26, %25 ], [ %16, %15 ], [ %24, %22 ], [ %19, %18 ]
  %29 = zext i16 %28 to i32
  %30 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 7, i32 noundef %29) #5
  br label %31

31:                                               ; preds = %27, %15, %2
  %32 = phi i32 [ 0, %27 ], [ -22, %2 ], [ -22, %15 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tlv320aic23_mute(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 5) #5
  %7 = icmp eq i32 %1, 0
  %8 = and i32 %6, 65527
  %9 = or i32 %8, 8
  %10 = select i1 %7, i32 %8, i32 %9
  %11 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 5, i32 noundef %10) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tlv320aic23_shutdown(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 10737400) #5
  %14 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 9, i32 noundef 0) #5
  br label %15

15:                                               ; preds = %12, %2
  %16 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.aic23, ptr %8, i32 0, i32 2
  %20 = getelementptr inbounds %struct.aic23, ptr %8, i32 0, i32 3
  %21 = select i1 %18, ptr %20, ptr %19
  store i32 0, ptr %21, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tlv320aic23_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.aic23, ptr %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.aic23, ptr %9, i32 0, i32 3
  %12 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, ptr %10, align 4
  store i32 %13, ptr %11, align 4
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 %13, i32 %18
  br label %25

21:                                               ; preds = %3
  %22 = load i32, ptr %11, align 4
  store i32 %13, ptr %10, align 4
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 %13, i32 %22
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i32 [ %20, %17 ], [ %13, %21 ]
  %27 = phi i32 [ %13, %17 ], [ %24, %21 ]
  %28 = getelementptr inbounds %struct.aic23, ptr %9, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = mul i32 %26, 132
  %31 = mul i32 %27, 132
  %32 = lshr i32 %30, 5
  %33 = sub i32 %30, %32
  %34 = add i32 %32, %30
  %35 = lshr i32 %31, 5
  %36 = sub i32 %31, %35
  %37 = add i32 %35, %31
  br label %38

38:                                               ; preds = %117, %25
  %39 = phi i32 [ -1, %25 ], [ %113, %117 ]
  %40 = phi i32 [ 0, %25 ], [ %112, %117 ]
  %41 = phi i32 [ -1, %25 ], [ %111, %117 ]
  %42 = phi i32 [ -1, %25 ], [ %110, %117 ]
  %43 = phi i32 [ 0, %25 ], [ %118, %117 ]
  %44 = getelementptr [4 x i32], ptr @bosr_usb_divisor_table, i32 0, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = sdiv i32 %29, %45
  %47 = getelementptr [4 x i16], ptr @sr_valid_mask, i32 0, i32 %43
  %48 = load i16, ptr %47, align 2
  %49 = zext i16 %48 to i32
  br label %50

50:                                               ; preds = %109, %38
  %51 = phi i32 [ %49, %38 ], [ %115, %109 ]
  %52 = phi i32 [ %39, %38 ], [ %113, %109 ]
  %53 = phi i32 [ %40, %38 ], [ %112, %109 ]
  %54 = phi i32 [ %41, %38 ], [ %111, %109 ]
  %55 = phi i32 [ %42, %38 ], [ %110, %109 ]
  %56 = phi i32 [ 0, %38 ], [ %114, %109 ]
  %57 = and i32 %51, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %109, label %59

59:                                               ; preds = %50
  %60 = getelementptr [16 x i8], ptr @sr_adc_mult_table, i32 0, i32 %56
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = mul i32 %46, %62
  %64 = getelementptr [16 x i8], ptr @sr_dac_mult_table, i32 0, i32 %56
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = mul i32 %46, %66
  %68 = icmp slt i32 %63, %33
  %69 = icmp sgt i32 %63, %34
  %70 = or i1 %68, %69
  %71 = icmp slt i32 %67, %36
  %72 = or i1 %70, %71
  %73 = icmp sgt i32 %67, %37
  %74 = or i1 %73, %72
  br i1 %74, label %81, label %75

75:                                               ; preds = %59
  %76 = sub i32 %30, %63
  %77 = sub i32 %31, %67
  %78 = tail call i32 @llvm.abs.i32(i32 %76, i1 false) #5
  %79 = tail call i32 @llvm.abs.i32(i32 %77, i1 false) #5
  %80 = add i32 %79, %78
  br label %81

81:                                               ; preds = %75, %59
  %82 = phi i32 [ %80, %75 ], [ -1, %59 ]
  %83 = icmp ugt i32 %52, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %84, %81
  %86 = phi i32 [ %43, %84 ], [ %55, %81 ]
  %87 = phi i32 [ %56, %84 ], [ %54, %81 ]
  %88 = phi i32 [ 0, %84 ], [ %53, %81 ]
  %89 = phi i32 [ %82, %84 ], [ %52, %81 ]
  %90 = ashr i32 %63, 1
  %91 = ashr i32 %67, 1
  %92 = icmp slt i32 %90, %33
  %93 = icmp sgt i32 %90, %34
  %94 = or i1 %92, %93
  %95 = icmp slt i32 %91, %36
  %96 = or i1 %94, %95
  %97 = icmp sgt i32 %91, %37
  %98 = or i1 %97, %96
  br i1 %98, label %109, label %99

99:                                               ; preds = %85
  %100 = sub i32 %30, %90
  %101 = sub i32 %31, %91
  %102 = tail call i32 @llvm.abs.i32(i32 %100, i1 false) #5
  %103 = tail call i32 @llvm.abs.i32(i32 %101, i1 false) #5
  %104 = add i32 %103, %102
  %105 = icmp eq i32 %104, -1
  %106 = icmp ult i32 %89, %104
  %107 = select i1 %105, i1 true, i1 %106
  br i1 %107, label %109, label %108

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108, %99, %85, %50
  %110 = phi i32 [ %55, %50 ], [ %43, %108 ], [ %86, %99 ], [ %86, %85 ]
  %111 = phi i32 [ %54, %50 ], [ %56, %108 ], [ %87, %99 ], [ %87, %85 ]
  %112 = phi i32 [ %53, %50 ], [ 1, %108 ], [ %88, %99 ], [ %88, %85 ]
  %113 = phi i32 [ %52, %50 ], [ %104, %108 ], [ %89, %99 ], [ %89, %85 ]
  %114 = add nuw nsw i32 %56, 1
  %115 = lshr i32 %51, 1
  %116 = icmp eq i32 %114, 16
  br i1 %116, label %117, label %50

117:                                              ; preds = %109
  %118 = add nuw nsw i32 %43, 1
  %119 = icmp eq i32 %118, 4
  br i1 %119, label %120, label %38

120:                                              ; preds = %117
  %121 = shl i32 %111, 2
  %122 = or i32 %121, %110
  %123 = shl i32 %112, 6
  %124 = or i32 %122, %123
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.set_sample_rate_control, i32 noundef %26, i32 noundef %27) #6
  br label %158

128:                                              ; preds = %120
  %129 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 8, i32 noundef %124) #5
  %130 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 7) #5
  %131 = trunc i32 %130 to i16
  %132 = and i16 %131, -13
  %133 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %141, %128
  %137 = phi i32 [ 0, %128 ], [ 32, %141 ]
  %138 = phi i32 [ %134, %128 ], [ %143, %141 ]
  %139 = tail call i32 @llvm.cttz.i32(i32 %138, i1 true) #5, !range !8
  %140 = or i32 %139, %137
  br label %145

141:                                              ; preds = %128
  %142 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %136

145:                                              ; preds = %141, %136
  %146 = phi i32 [ %140, %136 ], [ 0, %141 ]
  %147 = tail call i32 @snd_pcm_format_width(i32 noundef %146) #5
  switch i32 %147, label %154 [
    i32 32, label %152
    i32 20, label %148
    i32 24, label %150
  ]

148:                                              ; preds = %145
  %149 = or i16 %132, 4
  br label %154

150:                                              ; preds = %145
  %151 = or i16 %132, 8
  br label %154

152:                                              ; preds = %145
  %153 = or i16 %131, 12
  br label %154

154:                                              ; preds = %152, %150, %148, %145
  %155 = phi i16 [ %132, %145 ], [ %151, %150 ], [ %149, %148 ], [ %153, %152 ]
  %156 = zext i16 %155 to i32
  %157 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 7, i32 noundef %156) #5
  br label %158

158:                                              ; preds = %154, %126
  %159 = phi i32 [ 0, %154 ], [ -22, %126 ]
  ret i32 %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tlv320aic23_pcm_prepare(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 9, i32 noundef 1) #5
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i32 0, i32 33}
