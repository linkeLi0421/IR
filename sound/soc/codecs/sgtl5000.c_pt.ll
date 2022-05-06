; ModuleID = '/llk/IR/sound/soc/codecs/sgtl5000.c_pt.bc'
source_filename = "../sound/soc/codecs/sgtl5000.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.sgtl5000_priv = type { i32, i32, i32, [3 x %struct.regulator_bulk_data], i32, ptr, ptr, i32, i8, i8, i8, i8, [3 x i16] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.81, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.81 = type { %struct.anon.84, [40 x i8] }
%struct.anon.84 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.79, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
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
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }

@sgtl5000_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sgtl5000\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@sgtl5000_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,sgtl5000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description269 = internal constant [53 x i8] c"description=Freescale SGTL5000 ALSA SoC Codec Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author270 = internal constant [47 x i8] c"author=Zeng Zhaoming <zengzm.kernel@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license271 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@sgtl5000_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @sgtl5000_i2c_probe, ptr @sgtl5000_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sgtl5000_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sgtl5000_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"sgtl5000\00", align 1
@sgtl5000_regmap = internal constant %struct.regmap_config { ptr null, i32 16, i32 2, i32 0, i32 16, ptr null, ptr @sgtl5000_readable, ptr @sgtl5000_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 314, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sgtl5000_reg_defaults, i32 35, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to allocate regmap: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed to get mclock\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Error enabling clock %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Error reading chip id %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Device with ID register %x is not a sgtl5000\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"sgtl5000 revision 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Error %d initializing CHIP_CLK_CTRL\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Error %d muting outputs via CHIP_ANA_CTRL\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Failed to read ANA_POWER: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Error %d disabling VAG\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Error %d setting LINREG_VDDD\0A\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"Using internal LDO instead of VDDD: check ER1 erratum\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Error %d setting CHIP_ANA_POWER to %04x\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"micbias-resistor-k-ohms\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Unsuitable MicBias resistor\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"micbias-voltage-m-volts\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"Unsuitable MicBias voltage\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"lrclk-strength\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"sclk-strength\00", align 1
@sgtl5000_driver = internal constant %struct.snd_soc_component_driver { ptr null, ptr @sgtl5000_snd_controls, i32 23, ptr @sgtl5000_dapm_widgets, i32 17, ptr @sgtl5000_dapm_routes, i32 20, ptr @sgtl5000_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sgtl5000_of_xlate_dai_id, ptr null, ptr null, ptr @sgtl5000_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 62, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@sgtl5000_dai = internal global %struct.snd_soc_dai_driver { ptr @.str, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @sgtl5000_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.85, i64 68719477828, i32 1278, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.83, i64 68719477828, i32 1278, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 1, i32 0, i32 0 }, align 8
@.str.20 = private unnamed_addr constant [5 x i8] c"VDDD\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"VDDA\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"VDDIO\00", align 1
@sgtl5000_reg_defaults = internal constant [35 x %struct.reg_default] [%struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 6, i32 16 }, %struct.reg_default { i32 10, i32 16 }, %struct.reg_default { i32 14, i32 524 }, %struct.reg_default { i32 16, i32 15420 }, %struct.reg_default { i32 20, i32 351 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 34, i32 6168 }, %struct.reg_default { i32 36, i32 273 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 46, i32 1028 }, %struct.reg_default { i32 50, i32 20480 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 60, i32 0 }, %struct.reg_default { i32 58, i32 0 }, %struct.reg_default { i32 256, i32 0 }, %struct.reg_default { i32 258, i32 0 }, %struct.reg_default { i32 260, i32 64 }, %struct.reg_default { i32 262, i32 1311 }, %struct.reg_default { i32 264, i32 0 }, %struct.reg_default { i32 266, i32 64 }, %struct.reg_default { i32 278, i32 47 }, %struct.reg_default { i32 280, i32 47 }, %struct.reg_default { i32 282, i32 47 }, %struct.reg_default { i32 284, i32 47 }, %struct.reg_default { i32 286, i32 47 }, %struct.reg_default { i32 288, i32 32768 }, %struct.reg_default { i32 290, i32 0 }, %struct.reg_default { i32 292, i32 20736 }, %struct.reg_default { i32 294, i32 5235 }, %struct.reg_default { i32 296, i32 40 }, %struct.reg_default { i32 298, i32 80 }], align 4
@.str.23 = private unnamed_addr constant [43 x i8] c"%s: error %d setting reg 0x%02x to 0x%04x\0A\00", align 1
@__func__.sgtl5000_fill_defaults = private unnamed_addr constant [23 x i8] c"sgtl5000_fill_defaults\00", align 1
@sgtl5000_snd_controls = internal constant [23 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 19, i32 0, ptr @dac_info_volsw, ptr @dac_get_volsw, ptr @dac_put_volsw, %union.anon.85 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @capture_6db_attenuate }, i32 ptrtoint (ptr @.compoundliteral.27 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.29 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.31 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @headphone_volume }, i32 ptrtoint (ptr @.compoundliteral.33 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.35 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @mic_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @lineout_volume }, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.43 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @dap_volume }, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @dap_volume }, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.49 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.51 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @avc_max_gain }, i32 ptrtoint (ptr @.compoundliteral.53 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.55 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @avc_get_threshold, ptr @avc_put_threshold, %union.anon.85 { ptr @avc_threshold }, i32 ptrtoint (ptr @.compoundliteral.57 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @bass_band }, i32 ptrtoint (ptr @.compoundliteral.59 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @bass_band }, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @bass_band }, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @bass_band }, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.85 { ptr @bass_band }, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }], align 4
@sgtl5000_dapm_routes = internal constant [20 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.76, ptr @.str.69, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr @.str.70, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr @.str.86, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr null, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.86, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr null, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.86, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr @.str.87, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr @.str.69, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.71, ptr null, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str.24 = private unnamed_addr constant [20 x i8] c"PCM Playback Volume\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"Capture Volume\00", align 1
@.compoundliteral = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 32, i32 32, i32 0, i32 4, i32 0, i8 0 }, align 4
@.str.26 = private unnamed_addr constant [32 x i8] c"Capture Attenuate Switch (-6dB)\00", align 1
@capture_6db_attenuate = internal constant [4 x i32] [i32 1, i32 8, i32 -600, i32 600], align 4
@.compoundliteral.27 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 8, i32 8, i32 0, i8 0 }, align 4
@.str.28 = private unnamed_addr constant [18 x i8] c"Capture ZC Switch\00", align 1
@.compoundliteral.29 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.30 = private unnamed_addr constant [15 x i8] c"Capture Switch\00", align 1
@.compoundliteral.31 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.32 = private unnamed_addr constant [26 x i8] c"Headphone Playback Volume\00", align 1
@headphone_volume = internal constant [4 x i32] [i32 1, i32 8, i32 -5150, i32 50], align 4
@.compoundliteral.33 = internal global %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 34, i32 34, i32 0, i32 8, i32 0, i8 1 }, align 4
@.str.34 = private unnamed_addr constant [26 x i8] c"Headphone Playback Switch\00", align 1
@.compoundliteral.35 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 4, i32 4, i32 0, i8 1 }, align 4
@.str.36 = private unnamed_addr constant [29 x i8] c"Headphone Playback ZC Switch\00", align 1
@.compoundliteral.37 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.38 = private unnamed_addr constant [11 x i8] c"Mic Volume\00", align 1
@mic_gain_tlv = internal constant [14 x i32] [i32 3, i32 48, i32 0, i32 0, i32 1, i32 8, i32 0, i32 0, i32 1, i32 3, i32 1, i32 8, i32 2000, i32 1000], align 4
@.compoundliteral.39 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 42, i32 42, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.40 = private unnamed_addr constant [24 x i8] c"Lineout Playback Volume\00", align 1
@lineout_volume = internal constant [4 x i32] [i32 1, i32 8, i32 -1550, i32 50], align 4
@.compoundliteral.41 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 46, i32 46, i32 0, i32 8, i32 0, i8 1 }, align 4
@.str.42 = private unnamed_addr constant [24 x i8] c"Lineout Playback Switch\00", align 1
@.compoundliteral.43 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 8, i32 8, i32 0, i8 1 }, align 4
@.str.44 = private unnamed_addr constant [17 x i8] c"DAP Main channel\00", align 1
@dap_volume = internal constant [4 x i32] [i32 1, i32 8, i32 0, i32 1], align 4
@.compoundliteral.45 = internal global %struct.soc_mixer_control { i32 0, i32 65535, i32 65535, i32 288, i32 288, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.46 = private unnamed_addr constant [16 x i8] c"DAP Mix channel\00", align 1
@.compoundliteral.47 = internal global %struct.soc_mixer_control { i32 0, i32 65535, i32 65535, i32 290, i32 290, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.48 = private unnamed_addr constant [11 x i8] c"AVC Switch\00", align 1
@.compoundliteral.49 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 292, i32 292, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.50 = private unnamed_addr constant [24 x i8] c"AVC Hard Limiter Switch\00", align 1
@.compoundliteral.51 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 292, i32 292, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.52 = private unnamed_addr constant [20 x i8] c"AVC Max Gain Volume\00", align 1
@avc_max_gain = internal constant [4 x i32] [i32 1, i32 8, i32 0, i32 600], align 4
@.compoundliteral.53 = internal global %struct.soc_mixer_control { i32 0, i32 2, i32 2, i32 292, i32 292, i32 12, i32 12, i32 0, i8 0 }, align 4
@.str.54 = private unnamed_addr constant [24 x i8] c"AVC Integrator Response\00", align 1
@.compoundliteral.55 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 292, i32 292, i32 8, i32 8, i32 0, i8 0 }, align 4
@.str.56 = private unnamed_addr constant [21 x i8] c"AVC Threshold Volume\00", align 1
@avc_threshold = internal constant [4 x i32] [i32 4, i32 8, i32 0, i32 9600], align 4
@.compoundliteral.57 = internal global %struct.soc_mixer_control { i32 0, i32 96, i32 96, i32 294, i32 294, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.58 = private unnamed_addr constant [7 x i8] c"BASS 0\00", align 1
@bass_band = internal constant [4 x i32] [i32 1, i32 8, i32 -1175, i32 25], align 4
@.compoundliteral.59 = internal global %struct.soc_mixer_control { i32 0, i32 95, i32 95, i32 278, i32 278, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.60 = private unnamed_addr constant [7 x i8] c"BASS 1\00", align 1
@.compoundliteral.61 = internal global %struct.soc_mixer_control { i32 0, i32 95, i32 95, i32 280, i32 280, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.62 = private unnamed_addr constant [7 x i8] c"BASS 2\00", align 1
@.compoundliteral.63 = internal global %struct.soc_mixer_control { i32 0, i32 95, i32 95, i32 282, i32 282, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.64 = private unnamed_addr constant [7 x i8] c"BASS 3\00", align 1
@.compoundliteral.65 = internal global %struct.soc_mixer_control { i32 0, i32 95, i32 95, i32 284, i32 284, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.66 = private unnamed_addr constant [7 x i8] c"BASS 4\00", align 1
@.compoundliteral.67 = internal global %struct.soc_mixer_control { i32 0, i32 95, i32 95, i32 286, i32 286, i32 0, i32 0, i32 0, i8 0 }, align 4
@avc_thr_db2reg = internal unnamed_addr constant <{ [87 x i16], [10 x i16] }> <{ [87 x i16] [i16 20840, i16 18574, i16 16554, i16 14753, i16 13149, i16 11719, i16 10444, i16 9309, i16 8296, i16 7394, i16 6590, i16 5873, i16 5234, i16 4665, i16 4158, i16 3706, i16 3302, i16 2943, i16 2623, i16 2338, i16 2084, i16 1857, i16 1655, i16 1475, i16 1314, i16 1171, i16 1044, i16 930, i16 829, i16 739, i16 659, i16 587, i16 523, i16 466, i16 415, i16 370, i16 330, i16 294, i16 262, i16 233, i16 208, i16 185, i16 165, i16 147, i16 131, i16 117, i16 104, i16 93, i16 82, i16 73, i16 65, i16 58, i16 52, i16 46, i16 41, i16 37, i16 33, i16 29, i16 26, i16 23, i16 20, i16 18, i16 16, i16 14, i16 13, i16 11, i16 10, i16 9, i16 8, i16 7, i16 6, i16 5, i16 5, i16 4, i16 4, i16 3, i16 3, i16 2, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1], [10 x i16] zeroinitializer }>, align 2
@.str.69 = private unnamed_addr constant [8 x i8] c"LINE_IN\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"MIC_IN\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"HP_OUT\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"LINE_OUT\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"Mic Bias\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"HP\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"LO\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"Capture Mux\00", align 1
@adc_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @adc_enum to i32) }, align 4
@.str.77 = private unnamed_addr constant [14 x i8] c"Headphone Mux\00", align 1
@hp_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @hp_enum to i32) }, align 4
@.str.78 = private unnamed_addr constant [18 x i8] c"Digital Input Mux\00", align 1
@dac_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @dac_enum to i32) }, align 4
@.str.79 = private unnamed_addr constant [8 x i8] c"DAP Mux\00", align 1
@dap_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @dap_enum to i32) }, align 4
@.str.80 = private unnamed_addr constant [12 x i8] c"DAP MIX Mux\00", align 1
@dapmix_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @dapmix_enum to i32) }, align 4
@.str.81 = private unnamed_addr constant [4 x i8] c"DAP\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"AIFIN\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"Playback\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"AIFOUT\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"Capture\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"ADC\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"DAC\00", align 1
@sgtl5000_dapm_widgets = internal constant [17 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 42, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @mic_bias_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 48, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @headphone_pga_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 48, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adc_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hp_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dac_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 256, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dap_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 256, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dapmix_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.82, ptr @.str.83, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.84, ptr @.str.85, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.86, ptr @.str.85, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 48, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @adc_updown_depop, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.87, ptr @.str.83, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 48, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @dac_updown_depop, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@vag_and_mute_control.mute_mask = internal unnamed_addr constant [3 x i16] [i16 16, i16 272, i16 272], align 2
@adc_enum = internal constant %struct.soc_enum { i32 36, i8 2, i8 2, i32 2, i32 1, ptr @adc_mux_text, ptr null, i8 0 }, align 4
@adc_mux_text = internal global [2 x ptr] [ptr @.str.70, ptr @.str.69], align 4
@hp_enum = internal constant %struct.soc_enum { i32 36, i8 6, i8 6, i32 2, i32 1, ptr @hp_mux_text, ptr null, i8 0 }, align 4
@hp_mux_text = internal global [2 x ptr] [ptr @.str.87, ptr @.str.69], align 4
@dac_enum = internal constant %struct.soc_enum { i32 10, i8 4, i8 4, i32 4, i32 3, ptr @dac_mux_text, ptr null, i8 0 }, align 4
@dac_mux_text = internal global [4 x ptr] [ptr @.str.86, ptr @.str.89, ptr @.str.90, ptr @.str.81], align 4
@.str.89 = private unnamed_addr constant [4 x i8] c"I2S\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"Rsvrd\00", align 1
@dap_enum = internal constant %struct.soc_enum { i32 10, i8 6, i8 6, i32 2, i32 1, ptr @dap_mux_text, ptr null, i8 0 }, align 4
@dap_mux_text = internal global [2 x ptr] [ptr @.str.86, ptr @.str.89], align 4
@dapmix_enum = internal constant %struct.soc_enum { i32 10, i8 8, i8 8, i32 2, i32 1, ptr @dapmix_mux_text, ptr null, i8 0 }, align 4
@dapmix_mux_text = internal global [2 x ptr] [ptr @.str.86, ptr @.str.89], align 4
@.str.91 = private unnamed_addr constant [37 x i8] c"regulator voltage not set correctly\0A\00", align 1
@.str.92 = private unnamed_addr constant [51 x i8] c"exceed max voltage vdda %dmV vddio %dmV vddd %dmV\0A\00", align 1
@vol_quot_table = internal unnamed_addr constant [32 x i8] c"*-/258<?CGKOTY^djpw~\85\8D\96\9E\A8\B2\BC\C8\D3\E0\ED\FB", align 1
@sgtl5000_ops = internal constant %struct.snd_soc_dai_ops { ptr @sgtl5000_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @sgtl5000_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sgtl5000_mute_stream, ptr null, ptr null, ptr @sgtl5000_pcm_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 1 }, align 4
@.str.93 = private unnamed_addr constant [23 x i8] c"%s: set sysclk first!\0A\00", align 1
@__func__.sgtl5000_pcm_hw_params = private unnamed_addr constant [23 x i8] c"sgtl5000_pcm_hw_params\00", align 1
@.str.94 = private unnamed_addr constant [29 x i8] c"frame rate %d not supported\0A\00", align 1
@.str.95 = private unnamed_addr constant [33 x i8] c"PLL not supported in slave mode\0A\00", align 1
@.str.96 = private unnamed_addr constant [70 x i8] c"%d ratio is not supported. SYS_MCLK needs to be 256, 384 or 512 * fs\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author270, ptr @__UNIQUE_ID_description269, ptr @__UNIQUE_ID_license271], section "llvm.metadata"

@__mod_i2c__sgtl5000_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @sgtl5000_id
@__mod_of__sgtl5000_dt_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @sgtl5000_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @sgtl5000_i2c_driver) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @sgtl5000_i2c_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sgtl5000_i2c_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 76, i32 noundef 3520) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %172, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %8, ptr %11, align 8
  %12 = getelementptr %struct.sgtl5000_priv, ptr %8, i32 0, i32 3, i32 0
  store ptr @.str.21, ptr %12, align 4
  %13 = getelementptr %struct.sgtl5000_priv, ptr %8, i32 0, i32 3, i32 1
  store ptr @.str.22, ptr %13, align 4
  %14 = getelementptr %struct.sgtl5000_priv, ptr %8, i32 0, i32 3, i32 2
  store ptr @.str.20, ptr %14, align 4
  %15 = tail call ptr @regulator_get_optional(ptr noundef %5, ptr noundef nonnull @.str.20) #10
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = icmp eq ptr %15, inttoptr (i32 -517 to ptr)
  br i1 %18, label %172, label %20

19:                                               ; preds = %10
  tail call void @regulator_put(ptr noundef %15) #10
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ 2, %17 ], [ 3, %19 ]
  %22 = getelementptr inbounds %struct.sgtl5000_priv, ptr %8, i32 0, i32 4
  store i32 %21, ptr %22, align 4
  %23 = tail call i32 @regulator_bulk_get(ptr noundef %5, i32 noundef %21, ptr noundef %12) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %172

25:                                               ; preds = %20
  %26 = load i32, ptr %22, align 4
  %27 = tail call i32 @regulator_bulk_enable(i32 noundef %26, ptr noundef %12) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %22, align 4
  tail call void @regulator_bulk_free(i32 noundef %30, ptr noundef %12) #10
  br label %172

31:                                               ; preds = %25
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #10
  %32 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @sgtl5000_regmap, ptr noundef null, ptr noundef null) #10
  %33 = getelementptr inbounds %struct.sgtl5000_priv, ptr %8, i32 0, i32 5
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = ptrtoint ptr %32 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef %36) #11
  br label %167

37:                                               ; preds = %31
  %38 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef null) #10
  %39 = getelementptr inbounds %struct.sgtl5000_priv, ptr %8, i32 0, i32 6
  store ptr %38, ptr %39, align 4
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = ptrtoint ptr %38 to i32
  %43 = icmp eq ptr %38, inttoptr (i32 -2 to ptr)
  %44 = select i1 %43, i32 -517, i32 %42
  %45 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %5, i32 noundef %44, ptr noundef nonnull @.str.2) #10
  br label %167

46:                                               ; preds = %37
  %47 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %38)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %47) #11
  br label %167

50:                                               ; preds = %46
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748) #10
  %52 = load ptr, ptr %33, align 4
  %53 = call i32 @regmap_read(ptr noundef %52, i32 noundef 0, ptr noundef nonnull %3) #10
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4, i32 noundef %53) #11
  br label %164

56:                                               ; preds = %50
  %57 = load i32, ptr %3, align 4
  %58 = and i32 %57, 65280
  %59 = icmp eq i32 %58, 40960
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %57) #11
  br label %164

61:                                               ; preds = %56
  %62 = and i32 %57, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %62) #11
  %63 = getelementptr inbounds %struct.sgtl5000_priv, ptr %8, i32 0, i32 7
  store i32 %62, ptr %63, align 4
  %64 = load ptr, ptr %33, align 4
  %65 = call i32 @regmap_write(ptr noundef %64, i32 noundef 4, i32 noundef 8) #10
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef %65) #11
  br label %68

68:                                               ; preds = %67, %61
  %69 = load ptr, ptr %33, align 4
  %70 = call i32 @regmap_write(ptr noundef %69, i32 noundef 36, i32 noundef 307) #10
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %70) #11
  br label %164

73:                                               ; preds = %68
  %74 = load ptr, ptr %33, align 4
  %75 = call i32 @regmap_read(ptr noundef %74, i32 noundef 48, ptr noundef nonnull %4) #10
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %75) #11
  br label %164

78:                                               ; preds = %73
  %79 = load i32, ptr %4, align 4
  %80 = and i32 %79, 128
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %33, align 4
  %84 = call i32 @regmap_update_bits_base(ptr noundef %83, i32 noundef 48, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef %84) #11
  br label %164

87:                                               ; preds = %82
  call void @msleep(i32 noundef 500) #10
  br label %88

88:                                               ; preds = %87, %78
  %89 = load i32, ptr %22, align 4
  %90 = icmp slt i32 %89, 3
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load ptr, ptr %33, align 4
  %93 = call i32 @regmap_update_bits_base(ptr noundef %92, i32 noundef 38, i32 noundef 15, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef %93) #11
  br label %96

96:                                               ; preds = %95, %91
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.12) #11
  br label %97

97:                                               ; preds = %96, %88
  %98 = phi i32 [ 29280, %96 ], [ 16480, %88 ]
  %99 = load ptr, ptr %33, align 4
  %100 = call i32 @regmap_write(ptr noundef %99, i32 noundef 48, i32 noundef %98) #10
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef %100, i32 noundef %98) #11
  br label %103

103:                                              ; preds = %102, %97
  %104 = icmp eq ptr %7, null
  br i1 %104, label %139, label %105

105:                                              ; preds = %103
  %106 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.14, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #10
  %107 = icmp sgt i32 %106, -1
  br i1 %107, label %108, label %120

108:                                              ; preds = %105
  %109 = load i32, ptr %4, align 4
  switch i32 %109, label %118 [
    i32 0, label %110
    i32 2, label %112
    i32 4, label %114
    i32 8, label %116
  ]

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.sgtl5000_priv, ptr %8, i32 0, i32 8
  store i8 0, ptr %111, align 4
  br label %122

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.sgtl5000_priv, ptr %8, i32 0, i32 8
  store i8 1, ptr %113, align 4
  br label %122

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.sgtl5000_priv, ptr %8, i32 0, i32 8
  store i8 2, ptr %115, align 4
  br label %122

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.sgtl5000_priv, ptr %8, i32 0, i32 8
  store i8 3, ptr %117, align 4
  br label %122

118:                                              ; preds = %108
  %119 = getelementptr inbounds %struct.sgtl5000_priv, ptr %8, i32 0, i32 8
  store i8 2, ptr %119, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.15) #11
  br label %122

120:                                              ; preds = %105
  %121 = getelementptr inbounds %struct.sgtl5000_priv, ptr %8, i32 0, i32 8
  store i8 2, ptr %121, align 4
  br label %122

122:                                              ; preds = %120, %118, %116, %114, %112, %110
  %123 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.16, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #10
  %124 = icmp sgt i32 %123, -1
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = load i32, ptr %4, align 4
  %127 = add i32 %126, -1250
  %128 = icmp ult i32 %127, 1751
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = trunc i32 %126 to i16
  %131 = udiv i16 %130, 250
  %132 = trunc i16 %131 to i8
  %133 = add nsw i8 %132, -5
  %134 = getelementptr inbounds %struct.sgtl5000_priv, ptr %8, i32 0, i32 9
  store i8 %133, ptr %134, align 1
  br label %139

135:                                              ; preds = %125
  %136 = getelementptr inbounds %struct.sgtl5000_priv, ptr %8, i32 0, i32 9
  store i8 0, ptr %136, align 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.17) #11
  br label %139

137:                                              ; preds = %122
  %138 = getelementptr inbounds %struct.sgtl5000_priv, ptr %8, i32 0, i32 9
  store i8 0, ptr %138, align 1
  br label %139

139:                                              ; preds = %137, %135, %129, %103
  %140 = getelementptr inbounds %struct.sgtl5000_priv, ptr %8, i32 0, i32 10
  store i8 1, ptr %140, align 2
  %141 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.18, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #10
  %142 = icmp sgt i32 %141, -1
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load i32, ptr %4, align 4
  %145 = icmp ugt i32 %144, 3
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i32 1, ptr %4, align 4
  br label %147

147:                                              ; preds = %146, %143
  %148 = phi i32 [ 1, %146 ], [ %144, %143 ]
  %149 = trunc i32 %148 to i8
  store i8 %149, ptr %140, align 2
  br label %150

150:                                              ; preds = %147, %139
  %151 = getelementptr inbounds %struct.sgtl5000_priv, ptr %8, i32 0, i32 11
  store i8 1, ptr %151, align 1
  %152 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.19, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #10
  %153 = icmp sgt i32 %152, -1
  br i1 %153, label %154, label %161

154:                                              ; preds = %150
  %155 = load i32, ptr %4, align 4
  %156 = icmp ugt i32 %155, 3
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store i32 1, ptr %4, align 4
  br label %158

158:                                              ; preds = %157, %154
  %159 = phi i32 [ 1, %157 ], [ %155, %154 ]
  %160 = trunc i32 %159 to i8
  store i8 %160, ptr %151, align 1
  br label %161

161:                                              ; preds = %158, %150
  call fastcc void @sgtl5000_fill_defaults(ptr noundef %0)
  %162 = call i32 @devm_snd_soc_register_component(ptr noundef %5, ptr noundef nonnull @sgtl5000_driver, ptr noundef nonnull @sgtl5000_dai, i32 noundef 1) #10
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %172, label %164

164:                                              ; preds = %161, %86, %77, %72, %60, %55
  %165 = phi i32 [ %53, %55 ], [ -19, %60 ], [ %70, %72 ], [ %75, %77 ], [ %84, %86 ], [ %162, %161 ]
  %166 = load ptr, ptr %39, align 4
  call void @clk_disable(ptr noundef %166) #10
  call void @clk_unprepare(ptr noundef %166) #10
  br label %167

167:                                              ; preds = %164, %49, %41, %35
  %168 = phi i32 [ %36, %35 ], [ %44, %41 ], [ %47, %49 ], [ %165, %164 ]
  %169 = load i32, ptr %22, align 4
  %170 = call i32 @regulator_bulk_disable(i32 noundef %169, ptr noundef %12) #10
  %171 = load i32, ptr %22, align 4
  call void @regulator_bulk_free(i32 noundef %171, ptr noundef %12) #10
  br label %172

172:                                              ; preds = %167, %161, %29, %20, %17, %2
  %173 = phi i32 [ %168, %167 ], [ -12, %2 ], [ 0, %161 ], [ %27, %29 ], [ %23, %20 ], [ -517, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %173
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sgtl5000_i2c_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sgtl5000_priv, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.sgtl5000_priv, ptr %3, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sgtl5000_priv, ptr %3, i32 0, i32 3
  %9 = tail call i32 @regulator_bulk_disable(i32 noundef %7, ptr noundef %8) #10
  %10 = load i32, ptr %6, align 4
  tail call void @regulator_bulk_free(i32 noundef %10, ptr noundef %8) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #10
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sgtl5000_fill_defaults(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sgtl5000_priv, ptr %3, i32 0, i32 5
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  br label %6

6:                                                ; preds = %16, %1
  %7 = phi i32 [ 0, %1 ], [ %17, %16 ]
  %8 = getelementptr [35 x %struct.reg_default], ptr @sgtl5000_reg_defaults, i32 0, i32 %7
  %9 = getelementptr [35 x %struct.reg_default], ptr @sgtl5000_reg_defaults, i32 0, i32 %7, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %8, align 4
  %12 = load ptr, ptr %4, align 4
  %13 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef %11, i32 noundef %10) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.sgtl5000_fill_defaults, i32 noundef %13, i32 noundef %11, i32 noundef %10) #11
  br label %16

16:                                               ; preds = %15, %6
  %17 = add nuw nsw i32 %7, 1
  %18 = icmp eq i32 %17, 35
  br i1 %18, label %19, label %6

19:                                               ; preds = %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_bulk_free(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sgtl5000_readable(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  switch i32 %1, label %3 [
    i32 0, label %4
    i32 2, label %4
    i32 4, label %4
    i32 6, label %4
    i32 10, label %4
    i32 14, label %4
    i32 16, label %4
    i32 20, label %4
    i32 32, label %4
    i32 34, label %4
    i32 36, label %4
    i32 38, label %4
    i32 40, label %4
    i32 42, label %4
    i32 44, label %4
    i32 46, label %4
    i32 48, label %4
    i32 50, label %4
    i32 52, label %4
    i32 54, label %4
    i32 60, label %4
    i32 58, label %4
    i32 256, label %4
    i32 258, label %4
    i32 260, label %4
    i32 262, label %4
    i32 264, label %4
    i32 266, label %4
    i32 268, label %4
    i32 270, label %4
    i32 272, label %4
    i32 278, label %4
    i32 280, label %4
    i32 282, label %4
    i32 284, label %4
    i32 286, label %4
    i32 288, label %4
    i32 290, label %4
    i32 292, label %4
    i32 294, label %4
    i32 296, label %4
    i32 298, label %4
    i32 300, label %4
    i32 302, label %4
    i32 304, label %4
    i32 306, label %4
    i32 308, label %4
    i32 310, label %4
    i32 312, label %4
    i32 314, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sgtl5000_volatile(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  switch i32 %1, label %3 [
    i32 0, label %4
    i32 14, label %4
    i32 54, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sgtl5000_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sgtl5000_priv, ptr %5, i32 0, i32 3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regulator_get_voltage(ptr noundef %7) #10
  %9 = getelementptr %struct.sgtl5000_priv, ptr %5, i32 0, i32 3, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regulator_get_voltage(ptr noundef %10) #10
  %12 = getelementptr inbounds %struct.sgtl5000_priv, ptr %5, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 2
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = getelementptr %struct.sgtl5000_priv, ptr %5, i32 0, i32 3, i32 2, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @regulator_get_voltage(ptr noundef %17) #10
  %19 = sdiv i32 %18, 1000
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i32 [ %19, %15 ], [ 1200, %1 ]
  %22 = sdiv i32 %8, 1000
  %23 = sdiv i32 %11, 1000
  %24 = icmp slt i32 %8, 1000
  %25 = icmp slt i32 %11, 1000
  %26 = select i1 %24, i1 true, i1 %25
  %27 = icmp slt i32 %21, 0
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.91) #11
  br label %144

31:                                               ; preds = %20
  %32 = icmp ugt i32 %8, 3600999
  %33 = icmp ugt i32 %11, 3600999
  %34 = select i1 %32, i1 true, i1 %33
  %35 = icmp ugt i32 %21, 1980
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.92, i32 noundef %22, i32 noundef %23, i32 noundef %21) #11
  br label %144

39:                                               ; preds = %31
  %40 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 48) #10
  %41 = trunc i32 %40 to i16
  %42 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 38) #10
  %43 = icmp ult i32 %11, 3100000
  %44 = icmp ult i32 %8, 3100000
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 52, i32 noundef 2048, i32 noundef 2048) #10
  %48 = or i16 %41, 18528
  br label %58

49:                                               ; preds = %39
  %50 = and i16 %41, -18529
  %51 = or i16 %50, 16480
  %52 = load ptr, ptr %6, align 4
  %53 = load ptr, ptr %9, align 4
  %54 = tail call zeroext i1 @regulator_is_equal(ptr noundef %52, ptr noundef %53) #10
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = and i32 %42, 65439
  %57 = or i32 %56, 96
  br label %58

58:                                               ; preds = %55, %49, %46
  %59 = phi i16 [ %48, %46 ], [ %51, %55 ], [ %51, %49 ]
  %60 = phi i32 [ %42, %46 ], [ %57, %55 ], [ %42, %49 ]
  %61 = and i32 %60, 65535
  %62 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 38, i32 noundef %61) #10
  %63 = zext i16 %59 to i32
  %64 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 48, i32 noundef %63) #10
  %65 = udiv i32 %8, 2000
  %66 = icmp ult i32 %8, 1602000
  br i1 %66, label %74, label %67

67:                                               ; preds = %58
  %68 = icmp ugt i32 %8, 3149999
  br i1 %68, label %74, label %69

69:                                               ; preds = %67
  %70 = trunc i32 %65 to i16
  %71 = add nsw i16 %70, -800
  %72 = sdiv i16 %71, 25
  %73 = sext i16 %72 to i32
  br label %74

74:                                               ; preds = %69, %67, %58
  %75 = phi i32 [ %73, %69 ], [ 0, %58 ], [ 31, %67 ]
  %76 = shl nsw i32 %75, 4
  %77 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 40, i32 noundef 496, i32 noundef %76) #10
  %78 = udiv i32 %11, 2000
  %79 = icmp ult i32 %11, 1602000
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 44, i32 noundef 3903, i32 noundef 768) #10
  br label %111

82:                                               ; preds = %74
  %83 = icmp ugt i32 %11, 3349999
  br i1 %83, label %84, label %86

84:                                               ; preds = %82
  %85 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 44, i32 noundef 3903, i32 noundef 803) #10
  br label %95

86:                                               ; preds = %82
  %87 = trunc i32 %78 to i16
  %88 = add nsw i16 %87, -800
  %89 = sdiv i16 %88, 25
  %90 = or i16 %89, 768
  %91 = sext i16 %90 to i32
  %92 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 44, i32 noundef 3903, i32 noundef %91) #10
  %93 = add nsw i16 %87, -776
  %94 = icmp ult i16 %93, 49
  br i1 %94, label %111, label %95

95:                                               ; preds = %86, %84
  %96 = phi i16 [ 35, %84 ], [ %89, %86 ]
  %97 = trunc i32 %75 to i16
  %98 = mul nsw i16 %97, 100
  %99 = sdiv i16 %98, %96
  %100 = sext i16 %99 to i32
  %101 = icmp slt i16 %99, 42
  br i1 %101, label %111, label %102

102:                                              ; preds = %106, %95
  %103 = phi i32 [ %104, %106 ], [ 0, %95 ]
  %104 = add nuw nsw i32 %103, 1
  %105 = icmp eq i32 %104, 32
  br i1 %105, label %111, label %106

106:                                              ; preds = %102
  %107 = getelementptr [32 x i8], ptr @vol_quot_table, i32 0, i32 %104
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp slt i32 %100, %109
  br i1 %110, label %111, label %102

111:                                              ; preds = %106, %102, %95, %86, %80
  %112 = phi i32 [ 0, %95 ], [ 0, %86 ], [ 0, %80 ], [ %103, %106 ], [ 31, %102 ]
  %113 = shl nuw nsw i32 %112, 8
  %114 = or i32 %113, %112
  %115 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 46, i32 noundef 7967, i32 noundef %114) #10
  %116 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 40, i32 noundef 1, i32 noundef 1) #10
  %117 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 60, i32 noundef 0) #10
  %118 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 2, i32 noundef 96) #10
  %119 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 14, i32 noundef 524) #10
  %120 = getelementptr inbounds %struct.sgtl5000_priv, ptr %5, i32 0, i32 10
  %121 = load i8, ptr %120, align 2
  %122 = zext i8 %121 to i32
  %123 = shl nuw nsw i32 %122, 8
  %124 = getelementptr inbounds %struct.sgtl5000_priv, ptr %5, i32 0, i32 11
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i32
  %127 = shl nuw nsw i32 %126, 6
  %128 = or i32 %123, %127
  %129 = or i32 %128, 31
  %130 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 20, i32 noundef %129) #10
  %131 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 36, i32 noundef 34, i32 noundef 34) #10
  %132 = getelementptr inbounds %struct.sgtl5000_priv, ptr %5, i32 0, i32 8
  %133 = load i8, ptr %132, align 4
  %134 = zext i8 %133 to i32
  %135 = shl nuw nsw i32 %134, 8
  %136 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 42, i32 noundef 768, i32 noundef %135) #10
  %137 = getelementptr inbounds %struct.sgtl5000_priv, ptr %5, i32 0, i32 9
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = shl nuw nsw i32 %139, 4
  %141 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 42, i32 noundef 112, i32 noundef %140) #10
  %142 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 264, i32 noundef 3) #10
  %143 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 14, i32 noundef 12, i32 noundef 0) #10
  br label %144

144:                                              ; preds = %111, %37, %29
  %145 = phi i32 [ 0, %111 ], [ -22, %29 ], [ -22, %37 ]
  ret i32 %145
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @sgtl5000_of_xlate_dai_id(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #6 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sgtl5000_set_bias_level(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  switch i32 %1, label %21 [
    i32 3, label %7
    i32 2, label %7
    i32 1, label %7
    i32 0, label %17
  ]

7:                                                ; preds = %2, %2, %2
  %8 = getelementptr inbounds %struct.sgtl5000_priv, ptr %6, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  tail call void @regcache_cache_only(ptr noundef %9, i1 noundef zeroext false) #10
  %10 = load ptr, ptr %8, align 4
  %11 = tail call i32 @regcache_sync(ptr noundef %10) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %8, align 4
  tail call void @regcache_cache_only(ptr noundef %14, i1 noundef zeroext true) #10
  br label %21

15:                                               ; preds = %7
  %16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 48, i32 noundef 32, i32 noundef 32) #10
  br label %21

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.sgtl5000_priv, ptr %6, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  tail call void @regcache_cache_only(ptr noundef %19, i1 noundef zeroext true) #10
  %20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 48, i32 noundef 32, i32 noundef 0) #10
  br label %21

21:                                               ; preds = %17, %15, %13, %2
  %22 = phi i32 [ %11, %13 ], [ 0, %2 ], [ 0, %17 ], [ 0, %15 ]
  ret i32 %22
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dac_info_volsw(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 2, ptr %3, align 8
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 2, ptr %4, align 8
  %5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 192, ptr %6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dac_get_volsw(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 16) #10
  %6 = and i32 %5, 255
  %7 = lshr i32 %5, 8
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.umax.i32(i32 %6, i32 60)
  %10 = tail call i32 @llvm.umax.i32(i32 %8, i32 60)
  %11 = tail call i32 @llvm.usub.sat.i32(i32 252, i32 %9)
  %12 = tail call i32 @llvm.usub.sat.i32(i32 252, i32 %10)
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %11, ptr %13, align 8
  %14 = getelementptr [128 x i32], ptr %13, i32 0, i32 1
  store i32 %12, ptr %14, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dac_put_volsw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr [128 x i32], ptr %5, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @llvm.smax.i32(i32 %6, i32 0)
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 192)
  %11 = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 192)
  %13 = sub nuw nsw i32 252, %10
  %14 = mul nsw i32 %12, -256
  %15 = add nsw i32 %14, 64512
  %16 = or i32 %15, %13
  %17 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 16, i32 noundef %16) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @avc_get_threshold(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 294) #10
  %6 = trunc i32 %5 to i16
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = trunc i32 %5 to i16
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ %15, %10 ], [ 0, %8 ]
  %12 = getelementptr [97 x i16], ptr @avc_thr_db2reg, i32 0, i32 %11
  %13 = load i16, ptr %12, align 2
  %14 = icmp ugt i16 %13, %9
  %15 = add i32 %11, 1
  br i1 %14, label %10, label %16

16:                                               ; preds = %10, %2
  %17 = phi i32 [ 96, %2 ], [ %11, %10 ]
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %20 = getelementptr [128 x i32], ptr %19, i32 0, i32 1
  store i32 %17, ptr %20, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @avc_put_threshold(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = icmp ugt i32 %4, 96
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr [97 x i16], ptr @avc_thr_db2reg, i32 0, i32 %4
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = tail call i32 @snd_soc_component_write(ptr noundef %8, i32 noundef 294, i32 noundef %11) #10
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %6 ], [ -22, %2 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mic_bias_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  switch i32 %2, label %19 [
    i32 2, label %7
    i32 4, label %16
  ]

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -92
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sgtl5000_priv, ptr %11, i32 0, i32 8
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  br label %16

16:                                               ; preds = %7, %3
  %17 = phi i32 [ %15, %7 ], [ 0, %3 ]
  %18 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 42, i32 noundef 768, i32 noundef %17) #10
  br label %19

19:                                               ; preds = %16, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @headphone_pga_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  tail call fastcc void @vag_and_mute_control(ptr noundef %6, i32 noundef %2, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adc_updown_depop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  tail call fastcc void @vag_and_mute_control(ptr noundef %6, i32 noundef %2, i32 noundef 2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dac_updown_depop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  tail call fastcc void @vag_and_mute_control(ptr noundef %6, i32 noundef %2, i32 noundef 1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vag_and_mute_control(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  switch i32 %1, label %75 [
    i32 1, label %8
    i32 2, label %16
    i32 4, label %36
    i32 8, label %67
  ]

8:                                                ; preds = %3
  %9 = getelementptr [3 x i16], ptr @vag_and_mute_control.mute_mask, i32 0, i32 %2
  %10 = load i16, ptr %9, align 2
  %11 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 36) #10
  %12 = trunc i32 %11 to i16
  %13 = zext i16 %10 to i32
  %14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 36, i32 noundef %13, i32 noundef %13) #10
  %15 = getelementptr %struct.sgtl5000_priv, ptr %7, i32 0, i32 12, i32 %2
  store i16 %12, ptr %15, align 2
  br label %75

16:                                               ; preds = %3
  %17 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 48) #10
  %18 = and i32 %17, 128
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 48, i32 noundef 128, i32 noundef 128) #10
  %22 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 36) #10
  %23 = and i32 %22, 64
  %24 = icmp ne i32 %23, 0
  %25 = icmp eq i32 %2, 0
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  tail call void @msleep(i32 noundef 500) #10
  br label %28

28:                                               ; preds = %27, %20, %16
  %29 = getelementptr [3 x i16], ptr @vag_and_mute_control.mute_mask, i32 0, i32 %2
  %30 = load i16, ptr %29, align 2
  %31 = getelementptr %struct.sgtl5000_priv, ptr %7, i32 0, i32 12, i32 %2
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %30 to i32
  %34 = zext i16 %32 to i32
  %35 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 36, i32 noundef %33, i32 noundef %34) #10
  br label %75

36:                                               ; preds = %3
  %37 = getelementptr [3 x i16], ptr @vag_and_mute_control.mute_mask, i32 0, i32 %2
  %38 = load i16, ptr %37, align 2
  %39 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 36) #10
  %40 = trunc i32 %39 to i16
  %41 = zext i16 %38 to i32
  %42 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 36, i32 noundef %41, i32 noundef %41) #10
  %43 = getelementptr %struct.sgtl5000_priv, ptr %7, i32 0, i32 12, i32 %2
  store i16 %40, ptr %43, align 2
  %44 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 48) #10
  %45 = and i32 %44, 128
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %75, label %47

47:                                               ; preds = %36
  %48 = icmp eq i32 %2, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 36) #10
  %51 = lshr i32 %50, 6
  br label %55

52:                                               ; preds = %47
  %53 = lshr i32 %44, 4
  %54 = and i32 %53, 4095
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i32 [ %51, %49 ], [ %54, %52 ]
  %57 = lshr i32 %44, 3
  %58 = and i32 %57, 1
  %59 = lshr i32 %44, 1
  %60 = and i32 %59, 1
  %61 = add nuw nsw i32 %58, %60
  %62 = and i32 %56, 1
  %63 = add nuw nsw i32 %61, %62
  %64 = icmp ugt i32 %63, 1
  br i1 %64, label %75, label %65

65:                                               ; preds = %55
  %66 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 48, i32 noundef 128, i32 noundef 0) #10
  tail call void @msleep(i32 noundef 500) #10
  br label %75

67:                                               ; preds = %3
  %68 = getelementptr [3 x i16], ptr @vag_and_mute_control.mute_mask, i32 0, i32 %2
  %69 = load i16, ptr %68, align 2
  %70 = getelementptr %struct.sgtl5000_priv, ptr %7, i32 0, i32 12, i32 %2
  %71 = load i16, ptr %70, align 2
  %72 = zext i16 %69 to i32
  %73 = zext i16 %71 to i32
  %74 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 36, i32 noundef %72, i32 noundef %73) #10
  br label %75

75:                                               ; preds = %67, %65, %55, %36, %28, %8, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regulator_is_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @sgtl5000_set_dai_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #8 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_component, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  store i32 %2, ptr %12, align 4
  br label %13

13:                                               ; preds = %6, %4
  %14 = phi i32 [ 0, %6 ], [ -22, %4 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sgtl5000_set_dai_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sgtl5000_priv, ptr %8, i32 0, i32 1
  store i32 0, ptr %9, align 4
  %10 = trunc i32 %1 to i16
  %11 = and i16 %10, -4096
  switch i16 %11, label %34 [
    i16 16384, label %13
    i16 4096, label %12
  ]

12:                                               ; preds = %2
  store i32 1, ptr %9, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = phi i16 [ 128, %12 ], [ 0, %2 ]
  %15 = and i32 %1, 15
  switch i32 %15, label %34 [
    i32 4, label %16
    i32 5, label %18
    i32 1, label %24
    i32 2, label %20
    i32 3, label %22
  ]

16:                                               ; preds = %13
  %17 = or i16 %14, 8
  br label %24

18:                                               ; preds = %13
  %19 = or i16 %14, 10
  br label %24

20:                                               ; preds = %13
  %21 = or i16 %14, 5
  br label %24

22:                                               ; preds = %13
  %23 = or i16 %14, 2
  br label %24

24:                                               ; preds = %22, %20, %18, %16, %13
  %25 = phi i16 [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %14, %13 ]
  %26 = getelementptr inbounds %struct.sgtl5000_priv, ptr %8, i32 0, i32 2
  store i32 %15, ptr %26, align 4
  %27 = and i32 %1, 3840
  switch i32 %27, label %34 [
    i32 0, label %30
    i32 768, label %28
  ]

28:                                               ; preds = %24
  %29 = or i16 %25, 64
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i16 [ %29, %28 ], [ %25, %24 ]
  %32 = zext i16 %31 to i32
  %33 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 6, i32 noundef %32) #10
  br label %34

34:                                               ; preds = %30, %24, %13, %2
  %35 = phi i32 [ 0, %30 ], [ -22, %2 ], [ -22, %13 ], [ -22, %24 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sgtl5000_mute_stream(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %1, 0
  %7 = zext i1 %6 to i32
  %8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 2, i32 noundef 1, i32 noundef %7) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sgtl5000_pcm_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.93, ptr noundef nonnull @__func__.sgtl5000_pcm_hw_params) #11
  br label %128

13:                                               ; preds = %3
  %14 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 16384, i32 64
  %20 = icmp eq i32 %15, 1
  %21 = select i1 %20, i32 0, i32 %19
  %22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 48, i32 noundef %19, i32 noundef %21) #10
  %23 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 8
  %27 = load ptr, ptr %26, align 8
  switch i32 %24, label %29 [
    i32 8000, label %30
    i32 16000, label %30
    i32 11025, label %28
    i32 22050, label %28
  ]

28:                                               ; preds = %13, %13
  br label %30

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29, %28, %13, %13
  %31 = phi i32 [ %24, %29 ], [ 44100, %28 ], [ 32000, %13 ], [ 32000, %13 ]
  %32 = sdiv i32 %31, %24
  switch i32 %32, label %128 [
    i32 4, label %35
    i32 2, label %33
    i32 1, label %34
  ]

33:                                               ; preds = %30
  br label %35

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %34, %33, %30
  %36 = phi i32 [ 0, %34 ], [ 16, %33 ], [ 32, %30 ]
  switch i32 %31, label %43 [
    i32 32000, label %44
    i32 44100, label %37
    i32 48000, label %39
    i32 96000, label %41
  ]

37:                                               ; preds = %35
  %38 = or i32 %36, 4
  br label %44

39:                                               ; preds = %35
  %40 = or i32 %36, 8
  br label %44

41:                                               ; preds = %35
  %42 = or i32 %36, 12
  br label %44

43:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.94, i32 noundef %24) #11
  br label %128

44:                                               ; preds = %41, %39, %37, %35
  %45 = phi i32 [ %42, %41 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ]
  %46 = load i32, ptr %27, align 4
  %47 = sdiv i32 %46, %24
  switch i32 %47, label %52 [
    i32 256, label %62
    i32 384, label %48
    i32 512, label %50
  ]

48:                                               ; preds = %44
  %49 = or i32 %45, 1
  br label %62

50:                                               ; preds = %44
  %51 = or i32 %45, 2
  br label %62

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.sgtl5000_priv, ptr %27, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = or i32 %45, 3
  br label %62

58:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.95) #11
  %59 = load ptr, ptr %6, align 4
  %60 = load i32, ptr %27, align 4
  %61 = sdiv i32 %60, %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.96, i32 noundef %61) #11
  br label %128

62:                                               ; preds = %56, %50, %48, %44
  %63 = phi i32 [ %57, %56 ], [ %51, %50 ], [ %49, %48 ], [ %45, %44 ]
  %64 = and i32 %63, 3
  %65 = icmp eq i32 %64, 3
  br i1 %65, label %66, label %95

66:                                               ; preds = %62
  %67 = icmp sgt i32 %46, 17000000
  %68 = sdiv i32 %46, 2
  %69 = select i1 %67, i32 %68, i32 %46
  %70 = icmp eq i32 %31, 44100
  %71 = select i1 %70, i32 180633600, i32 196608000
  %72 = freeze i32 %69
  %73 = udiv i32 %71, %72
  %74 = mul i32 %73, %72
  %75 = sub i32 %71, %74
  %76 = zext i32 %75 to i64
  %77 = shl nuw nsw i64 %76, 11
  %78 = icmp ult i32 %75, 2097152
  br i1 %78, label %79, label %82, !prof !9

79:                                               ; preds = %66
  %80 = trunc i64 %77 to i32
  %81 = udiv i32 %80, %69
  br label %86

82:                                               ; preds = %66
  %83 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %69, i64 %77) #12, !srcloc !10
  %84 = extractvalue { i64, i64 } %83, 1
  %85 = trunc i64 %84 to i32
  br label %86

86:                                               ; preds = %82, %79
  %87 = phi i32 [ %81, %79 ], [ %85, %82 ]
  %88 = shl i32 %73, 11
  %89 = or i32 %88, %87
  %90 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 50, i32 noundef %89) #10
  %91 = select i1 %67, i32 8, i32 0
  %92 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 52, i32 noundef 8, i32 noundef %91) #10
  %93 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 48, i32 noundef 1280, i32 noundef 1280) #10
  %94 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 4, i32 noundef %63) #10
  br label %98

95:                                               ; preds = %62
  %96 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 4, i32 noundef %63) #10
  %97 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 48, i32 noundef 1280, i32 noundef 0) #10
  br label %98

98:                                               ; preds = %95, %86
  %99 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %107, %98
  %103 = phi i32 [ 0, %98 ], [ 32, %107 ]
  %104 = phi i32 [ %100, %98 ], [ %109, %107 ]
  %105 = tail call i32 @llvm.cttz.i32(i32 %104, i1 true) #10, !range !11
  %106 = or i32 %105, %103
  br label %111

107:                                              ; preds = %98
  %108 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %102

111:                                              ; preds = %107, %102
  %112 = phi i32 [ %106, %102 ], [ 0, %107 ]
  %113 = tail call i32 @snd_pcm_format_width(i32 noundef %112) #10
  %114 = add i32 %113, -16
  %115 = tail call i32 @llvm.fshl.i32(i32 %114, i32 %114, i32 30)
  switch i32 %115, label %128 [
    i32 0, label %116
    i32 1, label %125
    i32 2, label %120
    i32 4, label %121
  ]

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.sgtl5000_priv, ptr %9, i32 0, i32 2
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %128, label %125

120:                                              ; preds = %111
  br label %125

121:                                              ; preds = %111
  %122 = getelementptr inbounds %struct.sgtl5000_priv, ptr %9, i32 0, i32 2
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %128, label %125

125:                                              ; preds = %121, %120, %116, %111
  %126 = phi i32 [ 16, %120 ], [ 304, %116 ], [ 32, %111 ], [ 0, %121 ]
  %127 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 6, i32 noundef 304, i32 noundef %126) #10
  br label %128

128:                                              ; preds = %125, %121, %116, %111, %58, %43, %30, %12
  %129 = phi i32 [ 0, %125 ], [ -14, %12 ], [ -22, %116 ], [ -22, %121 ], [ -22, %111 ], [ -22, %43 ], [ -22, %58 ], [ -22, %30 ]
  ret i32 %129
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

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
!10 = !{i64 2147939953, i64 2147940233, i64 2147940567, i64 2147940901}
!11 = !{i32 0, i32 33}
