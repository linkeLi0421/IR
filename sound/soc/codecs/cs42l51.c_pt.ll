; ModuleID = '/llk/IR/sound/soc/codecs/cs42l51.c_pt.bc'
source_filename = "../sound/soc/codecs/cs42l51.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cs42l51_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22cs42l51_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_cs42l51_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cs42l51_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22cs42l51_probe\22\09\09\09\09\09"
module asm "__kstrtabns_cs42l51_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cs42l51_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22cs42l51_remove\22\09\09\09\09\09"
module asm "__kstrtabns_cs42l51_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cs42l51_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22cs42l51_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_cs42l51_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cs42l51_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22cs42l51_resume\22\09\09\09\09\09"
module asm "__kstrtabns_cs42l51_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cs42l51_of_match:\09\09\09\09\09"
module asm "\09.asciz \09\22cs42l51_of_match\22\09\09\09\09\09"
module asm "__kstrtabns_cs42l51_of_match:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.cs42l51_ratios = type { i32, i8, i8 }
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
%struct.cs42l51_private = type { i32, ptr, i32, i32, [4 x %struct.regulator_bulk_data], ptr, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.77, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.77 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.72, [128 x i8] }
%union.anon.72 = type { %union.anon.74 }
%union.anon.74 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@cs42l51_regmap = dso_local constant %struct.regmap_config { ptr null, i32 8, i32 1, i32 0, i32 8, ptr @cs42l51_writeable_reg, ptr @cs42l51_readable_reg, ptr @cs42l51_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 33, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@__kstrtab_cs42l51_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cs42l51_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_cs42l51_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cs42l51_regmap to i32), ptr @__kstrtab_cs42l51_regmap, ptr @__kstrtabns_cs42l51_regmap }, section "___ksymtab_gpl+cs42l51_regmap", align 4
@.str = private unnamed_addr constant [5 x i8] c"MCLK\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"failed to read I2C\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Invalid chip id: %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Cirrus Logic CS42L51, Revision: %02X\0A\00", align 1
@soc_component_device_cs42l51 = internal constant %struct.snd_soc_component_driver { ptr null, ptr @cs42l51_snd_controls, i32 16, ptr @cs42l51_dapm_widgets, i32 20, ptr @cs42l51_routes, i32 20, ptr @cs42l51_component_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs42l51_of_xlate_dai_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 58, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@cs42l51_dai = internal global %struct.snd_soc_dai_driver { ptr @.str.81, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cs42l51_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.82, i64 3504693313740, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.79, i64 3504693313740, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, align 8
@__kstrtab_cs42l51_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_cs42l51_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_cs42l51_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cs42l51_probe to i32), ptr @__kstrtab_cs42l51_probe, ptr @__kstrtabns_cs42l51_probe }, section "___ksymtab_gpl+cs42l51_probe", align 4
@__kstrtab_cs42l51_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_cs42l51_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_cs42l51_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cs42l51_remove to i32), ptr @__kstrtab_cs42l51_remove, ptr @__kstrtabns_cs42l51_remove }, section "___ksymtab_gpl+cs42l51_remove", align 4
@__kstrtab_cs42l51_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_cs42l51_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_cs42l51_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cs42l51_suspend to i32), ptr @__kstrtab_cs42l51_suspend, ptr @__kstrtabns_cs42l51_suspend }, section "___ksymtab_gpl+cs42l51_suspend", align 4
@__kstrtab_cs42l51_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_cs42l51_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_cs42l51_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cs42l51_resume to i32), ptr @__kstrtab_cs42l51_resume, ptr @__kstrtabns_cs42l51_resume }, section "___ksymtab_gpl+cs42l51_resume", align 4
@cs42l51_of_match = dso_local constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs42l51\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__kstrtab_cs42l51_of_match = external dso_local constant [0 x i8], align 1
@__kstrtabns_cs42l51_of_match = external dso_local constant [0 x i8], align 1
@__ksymtab_cs42l51_of_match = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cs42l51_of_match to i32), ptr @__kstrtab_cs42l51_of_match, ptr @__kstrtabns_cs42l51_of_match }, section "___ksymtab_gpl+cs42l51_of_match", align 4
@__UNIQUE_ID_author253 = internal constant [49 x i8] c"author=Arnaud Patard <arnaud.patard@rtp-net.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [55 x i8] c"description=Cirrus Logic CS42L51 ALSA SoC Codec Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"VL\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"VD\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"VA\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"VAHP\00", align 1
@cs42l51_snd_controls = internal constant [16 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.83 { ptr @adc_pcm_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.12, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.13 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.83 { ptr @aout_tlv }, i32 ptrtoint (ptr @.compoundliteral.15 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.83 { ptr @adc_pcm_tlv }, i32 ptrtoint (ptr @.compoundliteral.17 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.19 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.83 { ptr @adc_att_tlv }, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.83 { ptr @pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.25 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.27 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.29 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.31 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.33 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @adc_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.35 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @tone_tlv }, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @tone_tlv }, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @cs42l51_get_chan_mix, ptr @cs42l51_set_chan_mix, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @cs42l51_chan_mix to i32) }], align 4
@cs42l51_routes = internal constant [20 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr @.str.68, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr @.str.69, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr null, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr null, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr null, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr null, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr @.str.71, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr @.str.72, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr @.str.73, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr @.str.74, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.75, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.76, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.77, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.78, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"PCM Playback Volume\00", align 1
@adc_pcm_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -5150, i32 50], align 4
@.compoundliteral = internal global %struct.soc_mixer_control { i32 25, i32 127, i32 0, i32 16, i32 17, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"PCM Playback Switch\00", align 1
@.compoundliteral.13 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 17, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"Analog Playback Volume\00", align 1
@aout_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -10200, i32 50], align 4
@.compoundliteral.15 = internal global %struct.soc_mixer_control { i32 52, i32 228, i32 0, i32 22, i32 23, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"ADC Mixer Volume\00", align 1
@.compoundliteral.17 = internal global %struct.soc_mixer_control { i32 25, i32 127, i32 0, i32 14, i32 15, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"ADC Mixer Switch\00", align 1
@.compoundliteral.19 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 15, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.20 = private unnamed_addr constant [22 x i8] c"ADC Attenuator Volume\00", align 1
@adc_att_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -9600, i32 100], align 4
@.compoundliteral.21 = internal global %struct.soc_mixer_control { i32 160, i32 96, i32 0, i32 12, i32 13, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.22 = private unnamed_addr constant [11 x i8] c"PGA Volume\00", align 1
@pga_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -300, i32 50], align 4
@.compoundliteral.23 = internal global %struct.soc_mixer_control { i32 26, i32 30, i32 0, i32 10, i32 11, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.24 = private unnamed_addr constant [27 x i8] c"Playback Deemphasis Switch\00", align 1
@.compoundliteral.25 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 9, i32 9, i32 3, i32 3, i32 0, i8 0 }, align 4
@.str.26 = private unnamed_addr constant [17 x i8] c"Auto-Mute Switch\00", align 1
@.compoundliteral.27 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 9, i32 9, i32 2, i32 2, i32 0, i8 0 }, align 4
@.str.28 = private unnamed_addr constant [17 x i8] c"Soft Ramp Switch\00", align 1
@.compoundliteral.29 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 9, i32 9, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.30 = private unnamed_addr constant [18 x i8] c"Zero Cross Switch\00", align 1
@.compoundliteral.31 = internal global %struct.soc_mixer_control { i32 0, i32 0, i32 0, i32 9, i32 9, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.32 = private unnamed_addr constant [17 x i8] c"Mic Boost Volume\00", align 1
@boost_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 1600, i32 1600], align 4
@.compoundliteral.33 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 0, i32 1, i32 0, i8 0 }, align 4
@.str.34 = private unnamed_addr constant [17 x i8] c"ADC Boost Volume\00", align 1
@adc_boost_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 2000, i32 2000], align 4
@.compoundliteral.35 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 5, i32 6, i32 0, i8 0 }, align 4
@.str.36 = private unnamed_addr constant [12 x i8] c"Bass Volume\00", align 1
@tone_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -1050, i32 150], align 4
@.compoundliteral.37 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 21, i32 21, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.38 = private unnamed_addr constant [14 x i8] c"Treble Volume\00", align 1
@.compoundliteral.39 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 21, i32 21, i32 4, i32 4, i32 0, i8 1 }, align 4
@.str.40 = private unnamed_addr constant [18 x i8] c"PCM channel mixer\00", align 1
@cs42l51_chan_mix = internal constant %struct.soc_enum { i32 0, i8 0, i8 0, i32 3, i32 0, ptr @chan_mix, ptr null, i8 0 }, align 4
@chan_mix = internal global [3 x ptr] [ptr @.str.41, ptr @.str.42, ptr @.str.43], align 4
@.str.41 = private unnamed_addr constant [4 x i8] c"L R\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"L+R\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"R L\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"Mic Bias\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"Left PGA\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"Right PGA\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"Left ADC\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"Left HiFi Capture\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"Right ADC\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"Right HiFi Capture\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"Left DAC\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"Right DAC\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"AIN1L\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"AIN1R\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"AIN2L\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"AIN2R\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"MICL\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"MICR\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"Mic Preamp Left\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"Mic Preamp Right\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"HPL\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"HPR\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"DAC Mux\00", align 1
@cs42l51_dac_mux_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @cs42l51_dac_mux_enum to i32) }, align 4
@.str.64 = private unnamed_addr constant [17 x i8] c"PGA-ADC Mux Left\00", align 1
@cs42l51_adcl_mux_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @cs42l51_adcl_mux_enum to i32) }, align 4
@.str.65 = private unnamed_addr constant [18 x i8] c"PGA-ADC Mux Right\00", align 1
@cs42l51_adcr_mux_controls = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @cs42l51_adcr_mux_enum to i32) }, align 4
@cs42l51_dapm_widgets = internal constant [20 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.45, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 12, ptr @cs42l51_pdn_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.46, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 12, ptr @cs42l51_pdn_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.47, ptr @.str.48, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 12, ptr @cs42l51_pdn_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.49, ptr @.str.50, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 12, ptr @cs42l51_pdn_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.51, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 12, ptr @cs42l51_pdn_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.52, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 12, ptr @cs42l51_pdn_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.53, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.54, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.55, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.56, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.57, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.58, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.60, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cs42l51_dac_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cs42l51_adcl_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cs42l51_adcr_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.67 = private unnamed_addr constant [6 x i8] c"Route\00", align 1
@cs42l51_dac_mux_enum = internal constant %struct.soc_enum { i32 9, i8 6, i8 6, i32 3, i32 3, ptr @cs42l51_dac_names, ptr null, i8 0 }, align 4
@cs42l51_dac_names = internal global [3 x ptr] [ptr @.str.68, ptr @.str.69, ptr @.str.70], align 4
@.str.68 = private unnamed_addr constant [11 x i8] c"Direct PCM\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"DSP PCM\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"ADC\00", align 1
@cs42l51_adcl_mux_enum = internal constant %struct.soc_enum { i32 7, i8 4, i8 4, i32 4, i32 3, ptr @cs42l51_adcl_names, ptr null, i8 0 }, align 4
@cs42l51_adcl_names = internal global [4 x ptr] [ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74], align 4
@.str.71 = private unnamed_addr constant [10 x i8] c"AIN1 Left\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"AIN2 Left\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"MIC Left\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"MIC+preamp Left\00", align 1
@cs42l51_adcr_mux_enum = internal constant %struct.soc_enum { i32 7, i8 6, i8 6, i32 4, i32 3, ptr @cs42l51_adcr_names, ptr null, i8 0 }, align 4
@cs42l51_adcr_names = internal global [4 x ptr] [ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], align 4
@.str.75 = private unnamed_addr constant [11 x i8] c"AIN1 Right\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"AIN2 Right\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"MIC Right\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"MIC+preamp Right\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"Playback\00", align 1
@cs42l51_dapm_mclk_widgets = internal constant [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @mclk_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.81 = private unnamed_addr constant [13 x i8] c"cs42l51-hifi\00", align 1
@cs42l51_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr @cs42l51_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @cs42l51_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs42l51_dai_mute, ptr null, ptr null, ptr @cs42l51_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 1 }, align 4
@.str.82 = private unnamed_addr constant [8 x i8] c"Capture\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"invalid DAI format\0A\00", align 1
@.str.84 = private unnamed_addr constant [36 x i8] c"Unknown master/slave configuration\0A\00", align 1
@master_ratios = internal unnamed_addr constant [2 x %struct.cs42l51_ratios] [%struct.cs42l51_ratios { i32 128, i8 1, i8 0 }, %struct.cs42l51_ratios { i32 256, i8 1, i8 1 }], align 4
@slave_ratios = internal unnamed_addr constant [22 x %struct.cs42l51_ratios] [%struct.cs42l51_ratios { i32 512, i8 3, i8 0 }, %struct.cs42l51_ratios { i32 768, i8 3, i8 0 }, %struct.cs42l51_ratios { i32 1024, i8 3, i8 0 }, %struct.cs42l51_ratios { i32 1536, i8 3, i8 0 }, %struct.cs42l51_ratios { i32 2048, i8 3, i8 0 }, %struct.cs42l51_ratios { i32 3072, i8 3, i8 0 }, %struct.cs42l51_ratios { i32 256, i8 2, i8 0 }, %struct.cs42l51_ratios { i32 384, i8 2, i8 0 }, %struct.cs42l51_ratios { i32 512, i8 2, i8 0 }, %struct.cs42l51_ratios { i32 768, i8 2, i8 0 }, %struct.cs42l51_ratios { i32 1024, i8 2, i8 0 }, %struct.cs42l51_ratios { i32 1536, i8 2, i8 0 }, %struct.cs42l51_ratios { i32 128, i8 1, i8 0 }, %struct.cs42l51_ratios { i32 192, i8 1, i8 0 }, %struct.cs42l51_ratios { i32 256, i8 1, i8 0 }, %struct.cs42l51_ratios { i32 384, i8 1, i8 0 }, %struct.cs42l51_ratios { i32 512, i8 1, i8 0 }, %struct.cs42l51_ratios { i32 768, i8 1, i8 0 }, %struct.cs42l51_ratios { i32 128, i8 0, i8 0 }, %struct.cs42l51_ratios { i32 192, i8 0, i8 0 }, %struct.cs42l51_ratios { i32 256, i8 0, i8 0 }, %struct.cs42l51_ratios { i32 384, i8 0, i8 0 }], align 4
@slave_auto_ratios = internal unnamed_addr constant [16 x %struct.cs42l51_ratios] [%struct.cs42l51_ratios { i32 1024, i8 3, i8 0 }, %struct.cs42l51_ratios { i32 1536, i8 3, i8 0 }, %struct.cs42l51_ratios { i32 2048, i8 3, i8 1 }, %struct.cs42l51_ratios { i32 3072, i8 3, i8 1 }, %struct.cs42l51_ratios { i32 512, i8 2, i8 0 }, %struct.cs42l51_ratios { i32 768, i8 2, i8 0 }, %struct.cs42l51_ratios { i32 1024, i8 2, i8 1 }, %struct.cs42l51_ratios { i32 1536, i8 2, i8 1 }, %struct.cs42l51_ratios { i32 256, i8 1, i8 0 }, %struct.cs42l51_ratios { i32 384, i8 1, i8 0 }, %struct.cs42l51_ratios { i32 512, i8 1, i8 1 }, %struct.cs42l51_ratios { i32 768, i8 1, i8 1 }, %struct.cs42l51_ratios { i32 128, i8 0, i8 0 }, %struct.cs42l51_ratios { i32 192, i8 0, i8 0 }, %struct.cs42l51_ratios { i32 256, i8 0, i8 1 }, %struct.cs42l51_ratios { i32 384, i8 0, i8 1 }], align 4
@.str.85 = private unnamed_addr constant [31 x i8] c"could not find matching ratio\0A\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"unknown format\0A\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_license255, ptr @__ksymtab_cs42l51_of_match, ptr @__ksymtab_cs42l51_probe, ptr @__ksymtab_cs42l51_regmap, ptr @__ksymtab_cs42l51_remove, ptr @__ksymtab_cs42l51_resume, ptr @__ksymtab_cs42l51_suspend], section "llvm.metadata"
@switch.table.cs42l51_get_chan_mix = private unnamed_addr constant [3 x i32] [i32 1, i32 1, i32 2], align 4
@switch.table.cs42l51_hw_params = private unnamed_addr constant [3 x ptr] [ptr @slave_ratios, ptr @slave_auto_ratios, ptr @master_ratios], align 4
@switch.table.cs42l51_hw_params.87 = private unnamed_addr constant [3 x i32] [i32 22, i32 16, i32 2], align 4
@switch.table.cs42l51_hw_params.88 = private unnamed_addr constant [9 x i32] [i32 40, i32 40, i32 32, i32 40, i32 24, i32 40, i32 40, i32 40, i32 16], align 4

@__mod_of__cs42l51_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @cs42l51_of_match

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs42l51_writeable_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = add i32 %1, -2
  %4 = icmp ult i32 %3, 32
  %5 = lshr i32 -1073741825, %3
  %6 = and i32 %5, 1
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %4, i1 %7, i1 false
  ret i1 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs42l51_readable_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 33
  ret i1 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs42l51_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 32
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cs42l51_probe(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %1 to i32
  br label %58

7:                                                ; preds = %2
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 72, i32 noundef 3520) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %58, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %8, ptr %11, align 8
  %12 = getelementptr inbounds %struct.cs42l51_private, ptr %8, i32 0, i32 6
  store ptr %1, ptr %12, align 4
  %13 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str) #7
  %14 = getelementptr inbounds %struct.cs42l51_private, ptr %8, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = ptrtoint ptr %13 to i32
  %18 = icmp eq ptr %13, inttoptr (i32 -2 to ptr)
  br i1 %18, label %19, label %58

19:                                               ; preds = %16
  store ptr null, ptr %14, align 4
  br label %20

20:                                               ; preds = %19, %10
  %21 = getelementptr %struct.cs42l51_private, ptr %8, i32 0, i32 4, i32 0
  store ptr @.str.7, ptr %21, align 4
  %22 = getelementptr %struct.cs42l51_private, ptr %8, i32 0, i32 4, i32 1
  store ptr @.str.8, ptr %22, align 4
  %23 = getelementptr %struct.cs42l51_private, ptr %8, i32 0, i32 4, i32 2
  store ptr @.str.9, ptr %23, align 4
  %24 = getelementptr %struct.cs42l51_private, ptr %8, i32 0, i32 4, i32 3
  store ptr @.str.10, ptr %24, align 4
  %25 = tail call i32 @devm_regulator_bulk_get(ptr noundef %0, i32 noundef 4, ptr noundef %21) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %25) #8
  br label %58

28:                                               ; preds = %20
  %29 = tail call i32 @regulator_bulk_enable(i32 noundef 4, ptr noundef %21) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %29) #8
  br label %58

32:                                               ; preds = %28
  %33 = tail call ptr @devm_gpiod_get_optional(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef 3) #7
  %34 = getelementptr inbounds %struct.cs42l51_private, ptr %8, i32 0, i32 5
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = ptrtoint ptr %33 to i32
  br label %58

38:                                               ; preds = %32
  %39 = icmp eq ptr %33, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %38
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %33, i32 noundef 0) #7
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 429496000) #7
  br label %42

42:                                               ; preds = %40, %38
  %43 = call i32 @regmap_read(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %3) #7
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4) #8
  br label %55

46:                                               ; preds = %42
  %47 = load i32, ptr %3, align 4
  %48 = add i32 %47, -218
  %49 = icmp ult i32 %48, -2
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %47) #8
  br label %55

51:                                               ; preds = %46
  %52 = and i32 %47, 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %52) #8
  %53 = call i32 @devm_snd_soc_register_component(ptr noundef %0, ptr noundef nonnull @soc_component_device_cs42l51, ptr noundef nonnull @cs42l51_dai, i32 noundef 1) #7
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51, %50, %45
  %56 = phi i32 [ %43, %45 ], [ -19, %50 ], [ %53, %51 ]
  %57 = call i32 @regulator_bulk_disable(i32 noundef 4, ptr noundef %21) #7
  br label %58

58:                                               ; preds = %55, %51, %36, %31, %27, %16, %7, %5
  %59 = phi i32 [ %6, %5 ], [ %25, %27 ], [ %29, %31 ], [ %37, %36 ], [ %56, %55 ], [ -12, %7 ], [ 0, %51 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %59
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cs42l51_remove(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cs42l51_private, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #7
  %6 = getelementptr inbounds %struct.cs42l51_private, ptr %3, i32 0, i32 4
  %7 = tail call i32 @regulator_bulk_disable(i32 noundef 4, ptr noundef %6) #7
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cs42l51_suspend(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cs42l51_private, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #7
  %6 = load ptr, ptr %4, align 4
  tail call void @regcache_mark_dirty(ptr noundef %6) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cs42l51_resume(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cs42l51_private, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext false) #7
  %6 = load ptr, ptr %4, align 4
  %7 = tail call i32 @regcache_sync(ptr noundef %6) #7
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cs42l51_component_probe(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cs42l51_private, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %11 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %10, ptr noundef nonnull @cs42l51_dapm_mclk_widgets, i32 noundef 1) #7
  br label %12

12:                                               ; preds = %9, %1
  %13 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 9, i32 noundef 68) #7
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 0)
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cs42l51_of_xlate_dai_id(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw_sx(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw_sx(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw_sx(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cs42l51_get_chan_mix(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 24) #7
  %6 = and i32 %5, 3
  %7 = add nsw i32 %6, -1
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds [3 x i32], ptr @switch.table.cs42l51_get_chan_mix, i32 0, i32 %7
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i32 [ 0, %2 ], [ %11, %9 ]
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %13, ptr %14, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cs42l51_set_chan_mix(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 1
  %8 = select i1 %7, i32 85, i32 0
  %9 = icmp eq i32 %6, 2
  %10 = select i1 %9, i32 255, i32 %8
  %11 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 24, i32 noundef %10) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cs42l51_pdn_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  %7 = icmp eq i32 %2, 4
  %8 = zext i1 %7 to i32
  %9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 2, i32 noundef 1, i32 noundef %8) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mclk_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -92
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  switch i32 %2, label %24 [
    i32 1, label %10
    i32 8, label %18
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.cs42l51_private, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_prepare(ptr noundef %12) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = tail call i32 @clk_enable(ptr noundef %12) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %21

18:                                               ; preds = %3
  tail call void @msleep(i32 noundef 20) #7
  %19 = getelementptr inbounds %struct.cs42l51_private, ptr %9, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void @clk_disable(ptr noundef %20) #7
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi ptr [ %20, %18 ], [ %12, %15 ]
  %23 = phi i32 [ 0, %18 ], [ %16, %15 ]
  tail call void @clk_unprepare(ptr noundef %22) #7
  br label %24

24:                                               ; preds = %21, %15, %10, %3
  %25 = phi i32 [ 0, %3 ], [ %13, %10 ], [ 0, %15 ], [ %23, %21 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @cs42l51_set_dai_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5 {
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  store i32 %2, ptr %10, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cs42l51_set_dai_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = and i32 %1, 15
  %10 = add nsw i32 %9, -1
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.cs42l51_private, ptr %8, i32 0, i32 2
  store i32 %9, ptr %13, align 4
  %14 = trunc i32 %1 to i16
  %15 = and i16 %14, -4096
  switch i16 %15, label %21 [
    i16 4096, label %17
    i16 16384, label %19
  ]

16:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.83) #8
  br label %23

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.cs42l51_private, ptr %8, i32 0, i32 3
  store i32 2, ptr %18, align 4
  br label %23

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.cs42l51_private, ptr %8, i32 0, i32 3
  store i32 1, ptr %20, align 4
  br label %23

21:                                               ; preds = %12
  %22 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.84) #8
  br label %23

23:                                               ; preds = %21, %19, %17, %16
  %24 = phi i32 [ -22, %16 ], [ -22, %21 ], [ 0, %19 ], [ 0, %17 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cs42l51_dai_mute(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 8) #7
  %7 = icmp eq i32 %1, 0
  %8 = and i32 %6, -4
  %9 = select i1 %7, i32 0, i32 3
  %10 = or i32 %8, %9
  %11 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 8, i32 noundef %10) #7
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cs42l51_hw_params(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.cs42l51_private, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %13, label %32

13:                                               ; preds = %3
  %14 = getelementptr inbounds [3 x ptr], ptr @switch.table.cs42l51_hw_params, i32 0, i32 %11
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds [3 x i32], ptr @switch.table.cs42l51_hw_params.87, i32 0, i32 %11
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %9, align 4
  %21 = udiv i32 %20, %19
  br label %22

22:                                               ; preds = %27, %13
  %23 = phi i32 [ %28, %27 ], [ 0, %13 ]
  %24 = getelementptr %struct.cs42l51_ratios, ptr %15, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %21
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = add nuw nsw i32 %23, 1
  %29 = icmp eq i32 %28, %17
  br i1 %29, label %32, label %22

30:                                               ; preds = %22
  %31 = icmp eq i32 %23, %17
  br i1 %31, label %32, label %33

32:                                               ; preds = %30, %27, %3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.85) #8
  br label %108

33:                                               ; preds = %30
  %34 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 4) #7
  %35 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 3) #7
  %36 = and i32 %34, -125
  %37 = and i32 %35, -98
  %38 = load i32, ptr %10, align 4
  switch i32 %38, label %58 [
    i32 2, label %39
    i32 0, label %49
    i32 1, label %56
  ]

39:                                               ; preds = %33
  %40 = or i32 %36, 64
  %41 = getelementptr %struct.cs42l51_ratios, ptr %15, i32 %23, i32 1
  %42 = load i8, ptr %41, align 4
  %43 = icmp ugt i32 %19, 50000
  %44 = shl i8 %42, 5
  %45 = zext i8 %44 to i32
  %46 = select i1 %43, i32 0, i32 %45
  %47 = or i32 %46, %37
  %48 = and i32 %47, -130
  br label %58

49:                                               ; preds = %33
  %50 = getelementptr %struct.cs42l51_ratios, ptr %15, i32 %23, i32 1
  %51 = load i8, ptr %50, align 4
  %52 = shl i8 %51, 5
  %53 = and i8 %52, 96
  %54 = zext i8 %53 to i32
  %55 = or i32 %37, %54
  br label %58

56:                                               ; preds = %33
  %57 = or i32 %37, 128
  br label %58

58:                                               ; preds = %56, %49, %39, %33
  %59 = phi i32 [ %36, %33 ], [ %36, %56 ], [ %36, %49 ], [ %40, %39 ]
  %60 = phi i32 [ %37, %33 ], [ %57, %56 ], [ %55, %49 ], [ %48, %39 ]
  %61 = getelementptr inbounds %struct.cs42l51_private, ptr %9, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  switch i32 %62, label %94 [
    i32 1, label %63
    i32 3, label %96
    i32 2, label %65
  ]

63:                                               ; preds = %58
  %64 = or i32 %59, 12
  br label %96

65:                                               ; preds = %58
  %66 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %74, %65
  %70 = phi i32 [ 0, %65 ], [ 32, %74 ]
  %71 = phi i32 [ %67, %65 ], [ %76, %74 ]
  %72 = tail call i32 @llvm.cttz.i32(i32 %71, i1 true) #7, !range !9
  %73 = or i32 %72, %70
  br label %78

74:                                               ; preds = %65
  %75 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %69

78:                                               ; preds = %74, %69
  %79 = phi i32 [ %73, %69 ], [ 0, %74 ]
  %80 = tail call i32 @snd_pcm_format_width(i32 noundef %79) #7
  %81 = add i32 %80, -16
  %82 = icmp ult i32 %81, 9
  br i1 %82, label %85, label %83

83:                                               ; preds = %85, %78
  %84 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.86) #8
  br label %108

85:                                               ; preds = %78
  %86 = trunc i32 %81 to i16
  %87 = lshr i16 277, %86
  %88 = and i16 %87, 1
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %83, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds [9 x i32], ptr @switch.table.cs42l51_hw_params.88, i32 0, i32 %81
  %92 = load i32, ptr %91, align 4
  %93 = or i32 %92, %59
  br label %96

94:                                               ; preds = %58
  %95 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.86) #8
  br label %108

96:                                               ; preds = %90, %63, %58
  %97 = phi i32 [ %93, %90 ], [ %64, %63 ], [ %59, %58 ]
  %98 = getelementptr %struct.cs42l51_ratios, ptr %15, i32 %23, i32 2
  %99 = load i8, ptr %98, align 1
  %100 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 4, i32 noundef %97) #7
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = icmp ne i8 %99, 0
  %104 = zext i1 %103 to i32
  %105 = or i32 %60, %104
  %106 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 3, i32 noundef %105) #7
  %107 = tail call i32 @llvm.smin.i32(i32 %106, i32 0)
  br label %108

108:                                              ; preds = %102, %96, %94, %83, %32
  %109 = phi i32 [ -22, %32 ], [ -22, %94 ], [ -22, %83 ], [ %100, %96 ], [ %107, %102 ]
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{i32 0, i32 33}
