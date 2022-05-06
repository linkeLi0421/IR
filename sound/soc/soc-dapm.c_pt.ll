; ModuleID = '/llk/IR/sound/soc/soc-dapm.c_pt.bc'
source_filename = "../sound/soc/soc-dapm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dapm_mark_endpoints_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22dapm_mark_endpoints_dirty\22\09\09\09\09\09"
module asm "__kstrtabns_dapm_mark_endpoints_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dapm_kcontrol_get_value:\09\09\09\09\09"
module asm "\09.asciz \09\22dapm_kcontrol_get_value\22\09\09\09\09\09"
module asm "__kstrtabns_dapm_kcontrol_get_value:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_kcontrol_widget:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_kcontrol_widget\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_kcontrol_widget:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_kcontrol_dapm:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_kcontrol_dapm\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_kcontrol_dapm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_force_bias_level:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_force_bias_level\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_force_bias_level:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_dai_get_connected_widgets:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_dai_get_connected_widgets\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_dai_get_connected_widgets:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_dai_free_widgets:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_dai_free_widgets\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_dai_free_widgets:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dapm_regulator_event:\09\09\09\09\09"
module asm "\09.asciz \09\22dapm_regulator_event\22\09\09\09\09\09"
module asm "__kstrtabns_dapm_regulator_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dapm_pinctrl_event:\09\09\09\09\09"
module asm "\09.asciz \09\22dapm_pinctrl_event\22\09\09\09\09\09"
module asm "__kstrtabns_dapm_pinctrl_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dapm_clock_event:\09\09\09\09\09"
module asm "\09.asciz \09\22dapm_clock_event\22\09\09\09\09\09"
module asm "__kstrtabns_dapm_clock_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_mux_update_power:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_mux_update_power\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_mux_update_power:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_mixer_update_power:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_mixer_update_power\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_mixer_update_power:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_sync_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_sync_unlocked\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_sync_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_sync\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_update_dai:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_update_dai\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_update_dai:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_add_routes:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_add_routes\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_add_routes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_del_routes:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_del_routes\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_del_routes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_weak_routes:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_weak_routes\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_weak_routes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_new_widgets:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_new_widgets\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_new_widgets:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_get_volsw:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_get_volsw\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_get_volsw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_put_volsw:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_put_volsw\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_put_volsw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_get_enum_double:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_get_enum_double\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_get_enum_double:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_put_enum_double:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_put_enum_double\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_put_enum_double:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_info_pin_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_info_pin_switch\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_info_pin_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_get_pin_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_get_pin_switch\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_get_pin_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_put_pin_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_put_pin_switch\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_put_pin_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_new_control:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_new_control\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_new_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_new_controls:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_new_controls\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_new_controls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_stream_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_stream_stop\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_stream_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_enable_pin_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_enable_pin_unlocked\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_enable_pin_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_enable_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_enable_pin\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_enable_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_force_enable_pin_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_force_enable_pin_unlocked\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_force_enable_pin_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_force_enable_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_force_enable_pin\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_force_enable_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_disable_pin_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_disable_pin_unlocked\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_disable_pin_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_disable_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_disable_pin\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_disable_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_nc_pin_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_nc_pin_unlocked\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_nc_pin_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_nc_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_nc_pin\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_nc_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_get_pin_status:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_get_pin_status\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_get_pin_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_ignore_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_ignore_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_ignore_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_free:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_free\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_dapm_init:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_dapm_init\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_dapm_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [80 x i8], [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.89, ptr }
%union.anon.89 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.80, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.80 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.dapm_kcontrol_data = type { i32, ptr, %struct.list_head, ptr }
%struct.snd_soc_dapm_widget_list = type { i32, [0 x ptr] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_soc_dapm_path = type { ptr, %union.anon.92, i8, ptr, [2 x %struct.list_head], %struct.list_head, %struct.list_head }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_soc_dapm_pinctrl_priv = type { ptr, ptr }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8 }
%struct.async_domain = type { %struct.list_head, i8 }
%struct.snd_soc_dapm_update = type { ptr, i32, i32, i32, i32, i32, i32, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.81, i32 }
%union.anon.81 = type { ptr }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24 }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.75, [128 x i8] }
%union.anon.75 = type { %union.anon.77 }
%union.anon.77 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.71, [64 x i8] }
%union.anon.71 = type { %struct.anon.74, [40 x i8] }
%struct.anon.74 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8 }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, ptr, ptr, %struct.device }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.__va_list = type { ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }

@__kstrtab_dapm_mark_endpoints_dirty = external dso_local constant [0 x i8], align 1
@__kstrtabns_dapm_mark_endpoints_dirty = external dso_local constant [0 x i8], align 1
@__ksymtab_dapm_mark_endpoints_dirty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dapm_mark_endpoints_dirty to i32), ptr @__kstrtab_dapm_mark_endpoints_dirty, ptr @__kstrtabns_dapm_mark_endpoints_dirty }, section "___ksymtab_gpl+dapm_mark_endpoints_dirty", align 4
@__kstrtab_dapm_kcontrol_get_value = external dso_local constant [0 x i8], align 1
@__kstrtabns_dapm_kcontrol_get_value = external dso_local constant [0 x i8], align 1
@__ksymtab_dapm_kcontrol_get_value = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dapm_kcontrol_get_value to i32), ptr @__kstrtab_dapm_kcontrol_get_value, ptr @__kstrtabns_dapm_kcontrol_get_value }, section "___ksymtab_gpl+dapm_kcontrol_get_value", align 4
@__kstrtab_snd_soc_dapm_kcontrol_widget = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_kcontrol_widget = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_kcontrol_widget = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_kcontrol_widget to i32), ptr @__kstrtab_snd_soc_dapm_kcontrol_widget, ptr @__kstrtabns_snd_soc_dapm_kcontrol_widget }, section "___ksymtab_gpl+snd_soc_dapm_kcontrol_widget", align 4
@__kstrtab_snd_soc_dapm_kcontrol_dapm = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_kcontrol_dapm = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_kcontrol_dapm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_kcontrol_dapm to i32), ptr @__kstrtab_snd_soc_dapm_kcontrol_dapm, ptr @__kstrtabns_snd_soc_dapm_kcontrol_dapm }, section "___ksymtab_gpl+snd_soc_dapm_kcontrol_dapm", align 4
@__kstrtab_snd_soc_dapm_force_bias_level = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_force_bias_level = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_force_bias_level = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_force_bias_level to i32), ptr @__kstrtab_snd_soc_dapm_force_bias_level, ptr @__kstrtabns_snd_soc_dapm_force_bias_level }, section "___ksymtab_gpl+snd_soc_dapm_force_bias_level", align 4
@__kstrtab_snd_soc_dapm_dai_get_connected_widgets = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_dai_get_connected_widgets = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_dai_get_connected_widgets = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_dai_get_connected_widgets to i32), ptr @__kstrtab_snd_soc_dapm_dai_get_connected_widgets, ptr @__kstrtabns_snd_soc_dapm_dai_get_connected_widgets }, section "___ksymtab_gpl+snd_soc_dapm_dai_get_connected_widgets", align 4
@__kstrtab_snd_soc_dapm_dai_free_widgets = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_dai_free_widgets = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_dai_free_widgets = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_dai_free_widgets to i32), ptr @__kstrtab_snd_soc_dapm_dai_free_widgets, ptr @__kstrtabns_snd_soc_dapm_dai_free_widgets }, section "___ksymtab_gpl+snd_soc_dapm_dai_free_widgets", align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"ASoC: Failed to unbypass %s: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"ASoC: Failed to bypass %s: %d\0A\00", align 1
@__kstrtab_dapm_regulator_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_dapm_regulator_event = external dso_local constant [0 x i8], align 1
@__ksymtab_dapm_regulator_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dapm_regulator_event to i32), ptr @__kstrtab_dapm_regulator_event, ptr @__kstrtabns_dapm_regulator_event }, section "___ksymtab_gpl+dapm_regulator_event", align 4
@__kstrtab_dapm_pinctrl_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_dapm_pinctrl_event = external dso_local constant [0 x i8], align 1
@__ksymtab_dapm_pinctrl_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dapm_pinctrl_event to i32), ptr @__kstrtab_dapm_pinctrl_event, ptr @__kstrtabns_dapm_pinctrl_event }, section "___ksymtab_gpl+dapm_pinctrl_event", align 4
@__kstrtab_dapm_clock_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_dapm_clock_event = external dso_local constant [0 x i8], align 1
@__ksymtab_dapm_clock_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dapm_clock_event to i32), ptr @__kstrtab_dapm_clock_event, ptr @__kstrtabns_dapm_clock_event }, section "___ksymtab_gpl+dapm_clock_event", align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"dapm\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"bias_level\00", align 1
@dapm_bias_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @dapm_bias_read_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_snd_soc_dapm_mux_update_power = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_mux_update_power = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_mux_update_power = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_mux_update_power to i32), ptr @__kstrtab_snd_soc_dapm_mux_update_power, ptr @__kstrtabns_snd_soc_dapm_mux_update_power }, section "___ksymtab_gpl+snd_soc_dapm_mux_update_power", align 4
@__kstrtab_snd_soc_dapm_mixer_update_power = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_mixer_update_power = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_mixer_update_power = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_mixer_update_power to i32), ptr @__kstrtab_snd_soc_dapm_mixer_update_power, ptr @__kstrtabns_snd_soc_dapm_mixer_update_power }, section "___ksymtab_gpl+snd_soc_dapm_mixer_update_power", align 4
@dev_attr_dapm_widget = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @dapm_widget_show, ptr null }, align 4
@soc_dapm_dev_attrs = dso_local local_unnamed_addr global [2 x ptr] [ptr @dev_attr_dapm_widget, ptr null], align 4
@__kstrtab_snd_soc_dapm_sync_unlocked = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_sync_unlocked = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_sync_unlocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_sync_unlocked to i32), ptr @__kstrtab_snd_soc_dapm_sync_unlocked, ptr @__kstrtabns_snd_soc_dapm_sync_unlocked }, section "___ksymtab_gpl+snd_soc_dapm_sync_unlocked", align 4
@__kstrtab_snd_soc_dapm_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_sync to i32), ptr @__kstrtab_snd_soc_dapm_sync, ptr @__kstrtabns_snd_soc_dapm_sync }, section "___ksymtab_gpl+snd_soc_dapm_sync", align 4
@__kstrtab_snd_soc_dapm_update_dai = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_update_dai = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_update_dai = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_update_dai to i32), ptr @__kstrtab_snd_soc_dapm_update_dai, ptr @__kstrtabns_snd_soc_dapm_update_dai }, section "___ksymtab_gpl+snd_soc_dapm_update_dai", align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"ASoC: Failed to add route %s -> %s -> %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"direct\00", align 1
@__kstrtab_snd_soc_dapm_add_routes = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_add_routes = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_add_routes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_add_routes to i32), ptr @__kstrtab_snd_soc_dapm_add_routes, ptr @__kstrtabns_snd_soc_dapm_add_routes }, section "___ksymtab_gpl+snd_soc_dapm_add_routes", align 4
@__kstrtab_snd_soc_dapm_del_routes = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_del_routes = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_del_routes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_del_routes to i32), ptr @__kstrtab_snd_soc_dapm_del_routes, ptr @__kstrtabns_snd_soc_dapm_del_routes }, section "___ksymtab_gpl+snd_soc_dapm_del_routes", align 4
@__kstrtab_snd_soc_dapm_weak_routes = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_weak_routes = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_weak_routes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_weak_routes to i32), ptr @__kstrtab_snd_soc_dapm_weak_routes, ptr @__kstrtabns_snd_soc_dapm_weak_routes }, section "___ksymtab_gpl+snd_soc_dapm_weak_routes", align 4
@__kstrtab_snd_soc_dapm_new_widgets = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_new_widgets = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_new_widgets = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_new_widgets to i32), ptr @__kstrtab_snd_soc_dapm_new_widgets, ptr @__kstrtabns_snd_soc_dapm_new_widgets }, section "___ksymtab_gpl+snd_soc_dapm_new_widgets", align 4
@__kstrtab_snd_soc_dapm_get_volsw = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_get_volsw = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_get_volsw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_get_volsw to i32), ptr @__kstrtab_snd_soc_dapm_get_volsw, ptr @__kstrtabns_snd_soc_dapm_get_volsw }, section "___ksymtab_gpl+snd_soc_dapm_get_volsw", align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"ASoC: control %s field width limit exceeded\0A\00", align 1
@__kstrtab_snd_soc_dapm_put_volsw = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_put_volsw = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_put_volsw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_put_volsw to i32), ptr @__kstrtab_snd_soc_dapm_put_volsw, ptr @__kstrtabns_snd_soc_dapm_put_volsw }, section "___ksymtab_gpl+snd_soc_dapm_put_volsw", align 4
@__kstrtab_snd_soc_dapm_get_enum_double = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_get_enum_double = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_get_enum_double = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_get_enum_double to i32), ptr @__kstrtab_snd_soc_dapm_get_enum_double, ptr @__kstrtabns_snd_soc_dapm_get_enum_double }, section "___ksymtab_gpl+snd_soc_dapm_get_enum_double", align 4
@__kstrtab_snd_soc_dapm_put_enum_double = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_put_enum_double = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_put_enum_double = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_put_enum_double to i32), ptr @__kstrtab_snd_soc_dapm_put_enum_double, ptr @__kstrtabns_snd_soc_dapm_put_enum_double }, section "___ksymtab_gpl+snd_soc_dapm_put_enum_double", align 4
@__kstrtab_snd_soc_dapm_info_pin_switch = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_info_pin_switch = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_info_pin_switch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_info_pin_switch to i32), ptr @__kstrtab_snd_soc_dapm_info_pin_switch, ptr @__kstrtabns_snd_soc_dapm_info_pin_switch }, section "___ksymtab_gpl+snd_soc_dapm_info_pin_switch", align 4
@__kstrtab_snd_soc_dapm_get_pin_switch = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_get_pin_switch = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_get_pin_switch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_get_pin_switch to i32), ptr @__kstrtab_snd_soc_dapm_get_pin_switch, ptr @__kstrtabns_snd_soc_dapm_get_pin_switch }, section "___ksymtab_gpl+snd_soc_dapm_get_pin_switch", align 4
@__kstrtab_snd_soc_dapm_put_pin_switch = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_put_pin_switch = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_put_pin_switch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_put_pin_switch to i32), ptr @__kstrtab_snd_soc_dapm_put_pin_switch, ptr @__kstrtabns_snd_soc_dapm_put_pin_switch }, section "___ksymtab_gpl+snd_soc_dapm_put_pin_switch", align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"ASoC: Failed to request %s: %d\0A\00", align 1
@__kstrtab_snd_soc_dapm_new_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_new_control = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_new_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_new_control to i32), ptr @__kstrtab_snd_soc_dapm_new_control, ptr @__kstrtabns_snd_soc_dapm_new_control }, section "___ksymtab_gpl+snd_soc_dapm_new_control", align 4
@__kstrtab_snd_soc_dapm_new_controls = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_new_controls = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_new_controls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_new_controls to i32), ptr @__kstrtab_snd_soc_dapm_new_controls, ptr @__kstrtabns_snd_soc_dapm_new_controls }, section "___ksymtab_gpl+snd_soc_dapm_new_controls", align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"sound/soc/soc-dapm.c\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"N cpus to M codecs link is not supported yet\0A\00", align 1
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_snd_soc_dapm_stream_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_stream_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_stream_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_stream_stop to i32), ptr @__kstrtab_snd_soc_dapm_stream_stop, ptr @__kstrtabns_snd_soc_dapm_stream_stop }, section "___ksymtab_gpl+snd_soc_dapm_stream_stop", align 4
@__kstrtab_snd_soc_dapm_enable_pin_unlocked = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_enable_pin_unlocked = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_enable_pin_unlocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_enable_pin_unlocked to i32), ptr @__kstrtab_snd_soc_dapm_enable_pin_unlocked, ptr @__kstrtabns_snd_soc_dapm_enable_pin_unlocked }, section "___ksymtab_gpl+snd_soc_dapm_enable_pin_unlocked", align 4
@__kstrtab_snd_soc_dapm_enable_pin = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_enable_pin = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_enable_pin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_enable_pin to i32), ptr @__kstrtab_snd_soc_dapm_enable_pin, ptr @__kstrtabns_snd_soc_dapm_enable_pin }, section "___ksymtab_gpl+snd_soc_dapm_enable_pin", align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"ASoC: unknown pin %s\0A\00", align 1
@__kstrtab_snd_soc_dapm_force_enable_pin_unlocked = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_force_enable_pin_unlocked = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_force_enable_pin_unlocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_force_enable_pin_unlocked to i32), ptr @__kstrtab_snd_soc_dapm_force_enable_pin_unlocked, ptr @__kstrtabns_snd_soc_dapm_force_enable_pin_unlocked }, section "___ksymtab_gpl+snd_soc_dapm_force_enable_pin_unlocked", align 4
@__kstrtab_snd_soc_dapm_force_enable_pin = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_force_enable_pin = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_force_enable_pin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_force_enable_pin to i32), ptr @__kstrtab_snd_soc_dapm_force_enable_pin, ptr @__kstrtabns_snd_soc_dapm_force_enable_pin }, section "___ksymtab_gpl+snd_soc_dapm_force_enable_pin", align 4
@__kstrtab_snd_soc_dapm_disable_pin_unlocked = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_disable_pin_unlocked = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_disable_pin_unlocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_disable_pin_unlocked to i32), ptr @__kstrtab_snd_soc_dapm_disable_pin_unlocked, ptr @__kstrtabns_snd_soc_dapm_disable_pin_unlocked }, section "___ksymtab_gpl+snd_soc_dapm_disable_pin_unlocked", align 4
@__kstrtab_snd_soc_dapm_disable_pin = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_disable_pin = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_disable_pin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_disable_pin to i32), ptr @__kstrtab_snd_soc_dapm_disable_pin, ptr @__kstrtabns_snd_soc_dapm_disable_pin }, section "___ksymtab_gpl+snd_soc_dapm_disable_pin", align 4
@__kstrtab_snd_soc_dapm_nc_pin_unlocked = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_nc_pin_unlocked = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_nc_pin_unlocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_nc_pin_unlocked to i32), ptr @__kstrtab_snd_soc_dapm_nc_pin_unlocked, ptr @__kstrtabns_snd_soc_dapm_nc_pin_unlocked }, section "___ksymtab_gpl+snd_soc_dapm_nc_pin_unlocked", align 4
@__kstrtab_snd_soc_dapm_nc_pin = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_nc_pin = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_nc_pin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_nc_pin to i32), ptr @__kstrtab_snd_soc_dapm_nc_pin, ptr @__kstrtabns_snd_soc_dapm_nc_pin }, section "___ksymtab_gpl+snd_soc_dapm_nc_pin", align 4
@__kstrtab_snd_soc_dapm_get_pin_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_get_pin_status = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_get_pin_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_get_pin_status to i32), ptr @__kstrtab_snd_soc_dapm_get_pin_status, ptr @__kstrtabns_snd_soc_dapm_get_pin_status }, section "___ksymtab_gpl+snd_soc_dapm_get_pin_status", align 4
@__kstrtab_snd_soc_dapm_ignore_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_ignore_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_ignore_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_ignore_suspend to i32), ptr @__kstrtab_snd_soc_dapm_ignore_suspend, ptr @__kstrtabns_snd_soc_dapm_ignore_suspend }, section "___ksymtab_gpl+snd_soc_dapm_ignore_suspend", align 4
@__kstrtab_snd_soc_dapm_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_free = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_free to i32), ptr @__kstrtab_snd_soc_dapm_free, ptr @__kstrtabns_snd_soc_dapm_free }, section "___ksymtab_gpl+snd_soc_dapm_free", align 4
@__kstrtab_snd_soc_dapm_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_dapm_init = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_dapm_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_dapm_init to i32), ptr @__kstrtab_snd_soc_dapm_init, ptr @__kstrtabns_snd_soc_dapm_init }, section "___ksymtab_gpl+snd_soc_dapm_init", align 4
@__UNIQUE_ID_author283 = internal constant [42 x i8] c"author=Liam Girdwood, lrg@slimlogic.co.uk\00", section ".modinfo", align 1
@__UNIQUE_ID_description284 = internal constant [61 x i8] c"description=Dynamic Audio Power Management core for ALSA SoC\00", section ".modinfo", align 1
@__UNIQUE_ID_license285 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__tracepoint_snd_soc_dapm_path = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__tracepoint_snd_soc_dapm_connected = external dso_local global %struct.tracepoint, align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"On\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Prepare\0A\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"Standby\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"Off\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Unknown bias_level %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"Unknown\0A\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"dapm_widget\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"not set\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"Prepare\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"Standby\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"PM State: %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"DAPM sequencing finished, waiting %dms\0A\00", align 1
@__tracepoint_snd_soc_dapm_start = external dso_local global %struct.tracepoint, align 4
@dapm_up_seq = internal unnamed_addr constant [38 x i32] [i32 6, i32 6, i32 7, i32 7, i32 9, i32 9, i32 10, i32 12, i32 11, i32 8, i32 4, i32 6, i32 12, i32 12, i32 12, i32 9, i32 4, i32 1, i32 14, i32 3, i32 2, i32 2, i32 2, i32 5, i32 5, i32 6, i32 12, i32 5, i32 5, i32 3, i32 13, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10], align 4
@dapm_down_seq = internal unnamed_addr constant [38 x i32] [i32 8, i32 8, i32 10, i32 10, i32 6, i32 6, i32 5, i32 4, i32 3, i32 7, i32 9, i32 8, i32 4, i32 4, i32 4, i32 6, i32 9, i32 1, i32 15, i32 13, i32 14, i32 14, i32 14, i32 11, i32 11, i32 8, i32 4, i32 11, i32 11, i32 12, i32 2, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5], align 4
@dapm_seq_compare.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"offset a->id %d not initialized\0A\00", align 1
@dapm_seq_compare.__already_done.34 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"offset b->id %d not initialized\0A\00", align 1
@__tracepoint_snd_soc_dapm_widget_power = external dso_local global %struct.tracepoint, align 4
@__tracepoint_snd_soc_dapm_walk_done = external dso_local global %struct.tracepoint, align 4
@.str.37 = private unnamed_addr constant [34 x i8] c"ASoC: Failed to turn on bias: %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"ASoC: Failed to prepare bias: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"PRE_PMU\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"POST_PMU\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"PRE_PMD\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"POST_PMD\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"WILL_PMU\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"WILL_PMD\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"Unknown event %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"pop test : %s %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"ASoC: %s: %s event failed: %d\0A\00", align 1
@__tracepoint_snd_soc_dapm_widget_event_start = external dso_local global %struct.tracepoint, align 4
@__tracepoint_snd_soc_dapm_widget_event_done = external dso_local global %struct.tracepoint, align 4
@.str.48 = private unnamed_addr constant [40 x i8] c"ASoC: Failed to apply widget power: %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [42 x i8] c"pop test : Queue %s: reg=0x%x, 0x%x/0x%x\0A\00", align 1
@.str.50 = private unnamed_addr constant [45 x i8] c"pop test : Applying 0x%x/0x%x to %x in %dms\0A\00", align 1
@.str.51 = private unnamed_addr constant [36 x i8] c"ASoC: %s DAPM pre-event failed: %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"ASoC: %s DAPM update failed: %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"ASoC: %s DAPM post-event failed: %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [40 x i8] c"ASoC: Failed to apply standby bias: %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [35 x i8] c"ASoC: Failed to turn off bias: %d\0A\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"ASoC: Failed to apply active bias: %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__tracepoint_snd_soc_dapm_done = external dso_local global %struct.tracepoint, align 4
@.str.59 = private unnamed_addr constant [34 x i8] c"ASoC: sink widget %s overwritten\0A\00", align 1
@.str.60 = private unnamed_addr constant [36 x i8] c"ASoC: source widget %s overwritten\0A\00", align 1
@.str.61 = private unnamed_addr constant [37 x i8] c"ASoC: no source widget found for %s\0A\00", align 1
@.str.62 = private unnamed_addr constant [35 x i8] c"ASoC: no sink widget found for %s\0A\00", align 1
@.str.63 = private unnamed_addr constant [42 x i8] c"ASoC: no dapm match for %s --> %s --> %s\0A\00", align 1
@.str.64 = private unnamed_addr constant [53 x i8] c"ASoC: Removal of routes with controls not supported\0A\00", align 1
@.str.66 = private unnamed_addr constant [35 x i8] c"ASoC: Route %s->%s does not exist\0A\00", align 1
@.str.67 = private unnamed_addr constant [47 x i8] c"ASoC: Unable to find source %s for weak route\0A\00", align 1
@.str.68 = private unnamed_addr constant [45 x i8] c"ASoC: Unable to find sink %s for weak route\0A\00", align 1
@.str.69 = private unnamed_addr constant [46 x i8] c"ASoC: Ignoring control for weak route %s->%s\0A\00", align 1
@.str.70 = private unnamed_addr constant [43 x i8] c"ASoC: No path found for weak route %s->%s\0A\00", align 1
@.str.71 = private unnamed_addr constant [44 x i8] c"ASoC: %d paths found for weak route %s->%s\0A\00", align 1
@.str.72 = private unnamed_addr constant [52 x i8] c"ASoC: failed to add widget %s dapm kcontrol %s: %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [51 x i8] c"ASoC: Unsupported stereo autodisable control '%s'\0A\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"Autodisable\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"mux\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"demux\00", align 1
@.str.77 = private unnamed_addr constant [46 x i8] c"ASoC: %s %s has incorrect number of controls\0A\00", align 1
@.str.78 = private unnamed_addr constant [26 x i8] c"ASoC: %s %s has no paths\0A\00", align 1
@dapm_widget_power_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @dapm_widget_power_read_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.79 = private unnamed_addr constant [23 x i8] c"%s: %s%s  in %d out %d\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c" (forced)\00", align 1
@.str.81 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.82 = private unnamed_addr constant [23 x i8] c" - R%d(0x%x) mask 0x%x\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c" stream %s %s\0A\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"inactive\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c" %s  \22%s\22 \22%s\22\0A\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.91 = private unnamed_addr constant [27 x i8] c"ASoC: DAPM unknown pin %s\0A\00", align 1
@.str.93 = private unnamed_addr constant [75 x i8] c"Connecting non-supply widget to supply widget is not supported (%s -> %s)\0A\00", align 1
@.str.94 = private unnamed_addr constant [67 x i8] c"connected() callback only supported for supply widgets (%s -> %s)\0A\00", align 1
@.str.95 = private unnamed_addr constant [75 x i8] c"Conditional paths are not supported for supply widgets (%s -> [%s] -> %s)\0A\00", align 1
@.str.97 = private unnamed_addr constant [87 x i8] c"Direct connection between demux and mixer/mux not supported for path %s -> [%s] -> %s\0A\00", align 1
@.str.98 = private unnamed_addr constant [49 x i8] c"Control not supported for path %s -> [%s] -> %s\0A\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"playback\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.102 = private unnamed_addr constant [38 x i8] c"ASoC: Failed to create %s widget: %d\0A\00", align 1
@.str.103 = private unnamed_addr constant [27 x i8] c"ASoC: link config missing\0A\00", align 1
@.str.104 = private unnamed_addr constant [37 x i8] c"ASoC: Invalid format %llx specified\0A\00", align 1
@.str.105 = private unnamed_addr constant [43 x i8] c"ASoC: anonymous config %d for dai link %s\0A\00", align 1
@.str.106 = private unnamed_addr constant [27 x i8] c"Anonymous Configuration %d\00", align 1
@.str.107 = private unnamed_addr constant [46 x i8] c"ASoC: Failed to create control for %s widget\0A\00", align 1
@__tracepoint_snd_soc_bias_level_start = external dso_local global %struct.tracepoint, align 4
@__tracepoint_snd_soc_bias_level_done = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author283, ptr @__UNIQUE_ID_description284, ptr @__UNIQUE_ID_license285, ptr @__ksymtab_dapm_clock_event, ptr @__ksymtab_dapm_kcontrol_get_value, ptr @__ksymtab_dapm_mark_endpoints_dirty, ptr @__ksymtab_dapm_pinctrl_event, ptr @__ksymtab_dapm_regulator_event, ptr @__ksymtab_snd_soc_dapm_add_routes, ptr @__ksymtab_snd_soc_dapm_dai_free_widgets, ptr @__ksymtab_snd_soc_dapm_dai_get_connected_widgets, ptr @__ksymtab_snd_soc_dapm_del_routes, ptr @__ksymtab_snd_soc_dapm_disable_pin, ptr @__ksymtab_snd_soc_dapm_disable_pin_unlocked, ptr @__ksymtab_snd_soc_dapm_enable_pin, ptr @__ksymtab_snd_soc_dapm_enable_pin_unlocked, ptr @__ksymtab_snd_soc_dapm_force_bias_level, ptr @__ksymtab_snd_soc_dapm_force_enable_pin, ptr @__ksymtab_snd_soc_dapm_force_enable_pin_unlocked, ptr @__ksymtab_snd_soc_dapm_free, ptr @__ksymtab_snd_soc_dapm_get_enum_double, ptr @__ksymtab_snd_soc_dapm_get_pin_status, ptr @__ksymtab_snd_soc_dapm_get_pin_switch, ptr @__ksymtab_snd_soc_dapm_get_volsw, ptr @__ksymtab_snd_soc_dapm_ignore_suspend, ptr @__ksymtab_snd_soc_dapm_info_pin_switch, ptr @__ksymtab_snd_soc_dapm_init, ptr @__ksymtab_snd_soc_dapm_kcontrol_dapm, ptr @__ksymtab_snd_soc_dapm_kcontrol_widget, ptr @__ksymtab_snd_soc_dapm_mixer_update_power, ptr @__ksymtab_snd_soc_dapm_mux_update_power, ptr @__ksymtab_snd_soc_dapm_nc_pin, ptr @__ksymtab_snd_soc_dapm_nc_pin_unlocked, ptr @__ksymtab_snd_soc_dapm_new_control, ptr @__ksymtab_snd_soc_dapm_new_controls, ptr @__ksymtab_snd_soc_dapm_new_widgets, ptr @__ksymtab_snd_soc_dapm_put_enum_double, ptr @__ksymtab_snd_soc_dapm_put_pin_switch, ptr @__ksymtab_snd_soc_dapm_put_volsw, ptr @__ksymtab_snd_soc_dapm_stream_stop, ptr @__ksymtab_snd_soc_dapm_sync, ptr @__ksymtab_snd_soc_dapm_sync_unlocked, ptr @__ksymtab_snd_soc_dapm_update_dai, ptr @__ksymtab_snd_soc_dapm_weak_routes], section "llvm.metadata"
@switch.table.dapm_bias_read_file = private unnamed_addr constant [4 x ptr] [ptr @.str.19, ptr @.str.18, ptr @.str.17, ptr @.str.16], align 4
@switch.table.dapm_widget_show = private unnamed_addr constant [4 x ptr] [ptr @.str.28, ptr @.str.30, ptr @.str.29, ptr @.str.27], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dapm_mark_endpoints_dirty(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = alloca %struct.list_head, align 8
  %4 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %4) #20
  %5 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 46
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %118, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %10 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  br label %11

11:                                               ; preds = %115, %8
  %12 = phi ptr [ %6, %8 ], [ %116, %115 ]
  %13 = getelementptr i8, ptr %12, i32 44
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 1536
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %115, label %17

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %12, i32 144
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %12, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %23, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.snd_soc_card, ptr %25, i32 0, i32 49
  %27 = getelementptr inbounds %struct.snd_soc_card, ptr %25, i32 0, i32 49, i32 1
  %28 = load ptr, ptr %27, align 4
  store ptr %18, ptr %27, align 4
  store ptr %26, ptr %18, align 4
  %29 = getelementptr i8, ptr %12, i32 148
  store ptr %28, ptr %29, align 4
  store volatile ptr %18, ptr %28, align 4
  %30 = load i16, ptr %13, align 4
  br label %31

31:                                               ; preds = %21, %17
  %32 = phi i16 [ %14, %17 ], [ %30, %21 ]
  %33 = and i16 %32, 1024
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %75, label %35

35:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %36 = getelementptr i8, ptr %12, i32 156
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %73, label %39

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %12, i32 128
  store ptr %40, ptr %9, align 4
  store ptr %3, ptr %40, align 4
  %41 = getelementptr i8, ptr %12, i32 132
  store ptr %3, ptr %41, align 4
  store volatile ptr %40, ptr %3, align 8
  store i32 -1, ptr %36, align 4
  %42 = icmp eq ptr %40, %3
  br i1 %42, label %73, label %46

43:                                               ; preds = %69, %46
  %44 = load ptr, ptr %47, align 4
  %45 = icmp eq ptr %44, %3
  br i1 %45, label %73, label %46

46:                                               ; preds = %43, %39
  %47 = phi ptr [ %44, %43 ], [ %40, %39 ]
  %48 = getelementptr i8, ptr %47, i32 -16
  %49 = getelementptr i8, ptr %47, i32 -8
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 -8
  %52 = icmp eq ptr %51, %48
  br i1 %52, label %43, label %53

53:                                               ; preds = %69, %46
  %54 = phi ptr [ %70, %69 ], [ %50, %46 ]
  %55 = getelementptr i8, ptr %54, i32 -16
  %56 = load i8, ptr %55, align 4
  %57 = and i8 %56, 13
  %58 = icmp eq i8 %57, 1
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = getelementptr i8, ptr %54, i32 -24
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr %struct.snd_soc_dapm_widget, ptr %61, i32 0, i32 26, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  store i32 -1, ptr %62, align 4
  %66 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %61, i32 0, i32 23
  %67 = load ptr, ptr %9, align 4
  store ptr %66, ptr %9, align 4
  store ptr %3, ptr %66, align 4
  %68 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %61, i32 0, i32 23, i32 1
  store ptr %67, ptr %68, align 4
  store volatile ptr %66, ptr %67, align 4
  br label %69

69:                                               ; preds = %65, %59, %53
  %70 = load ptr, ptr %54, align 4
  %71 = getelementptr i8, ptr %70, i32 -8
  %72 = icmp eq ptr %71, %48
  br i1 %72, label %43, label %53

73:                                               ; preds = %43, %39, %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  %74 = load i16, ptr %13, align 4
  br label %75

75:                                               ; preds = %73, %31
  %76 = phi i16 [ %74, %73 ], [ %32, %31 ]
  %77 = and i16 %76, 512
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %115, label %79

79:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %80 = getelementptr i8, ptr %12, i32 152
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %114, label %83

83:                                               ; preds = %79
  %84 = getelementptr i8, ptr %12, i32 128
  store ptr %84, ptr %10, align 4
  store ptr %2, ptr %84, align 4
  %85 = getelementptr i8, ptr %12, i32 132
  store ptr %2, ptr %85, align 4
  store volatile ptr %84, ptr %2, align 8
  store i32 -1, ptr %80, align 4
  %86 = icmp eq ptr %84, %2
  br i1 %86, label %114, label %90

87:                                               ; preds = %111, %90
  %88 = load ptr, ptr %91, align 4
  %89 = icmp eq ptr %88, %2
  br i1 %89, label %114, label %90

90:                                               ; preds = %87, %83
  %91 = phi ptr [ %88, %87 ], [ %84, %83 ]
  %92 = getelementptr i8, ptr %91, i32 -16
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, %92
  br i1 %94, label %87, label %95

95:                                               ; preds = %111, %90
  %96 = phi ptr [ %112, %111 ], [ %93, %90 ]
  %97 = getelementptr i8, ptr %96, i32 -8
  %98 = load i8, ptr %97, align 4
  %99 = and i8 %98, 13
  %100 = icmp eq i8 %99, 1
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = getelementptr i8, ptr %96, i32 -12
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr %struct.snd_soc_dapm_widget, ptr %103, i32 0, i32 26, i32 0
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %111, label %107

107:                                              ; preds = %101
  store i32 -1, ptr %104, align 4
  %108 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %103, i32 0, i32 23
  %109 = load ptr, ptr %10, align 4
  store ptr %108, ptr %10, align 4
  store ptr %2, ptr %108, align 4
  %110 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %103, i32 0, i32 23, i32 1
  store ptr %109, ptr %110, align 4
  store volatile ptr %108, ptr %109, align 4
  br label %111

111:                                              ; preds = %107, %101, %95
  %112 = load ptr, ptr %96, align 4
  %113 = icmp eq ptr %112, %92
  br i1 %113, label %87, label %95

114:                                              ; preds = %87, %83, %79
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  br label %115

115:                                              ; preds = %114, %75, %11
  %116 = load ptr, ptr %12, align 4
  %117 = icmp eq ptr %116, %5
  br i1 %117, label %118, label %11

118:                                              ; preds = %115, %1
  call void @mutex_unlock(ptr noundef %4) #20
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @dapm_kcontrol_get_value(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @snd_soc_dapm_kcontrol_widget(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_dapm_widget_list, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @snd_soc_dapm_kcontrol_dapm(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_dapm_widget_list, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_force_bias_level(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @snd_soc_component_set_bias_level(ptr noundef nonnull %4, i32 noundef %1) #20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %2
  store i32 %1, ptr %0, align 4
  br label %10

10:                                               ; preds = %9, %6
  %11 = phi i32 [ 0, %9 ], [ %7, %6 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_set_bias_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_dai_get_connected_widgets(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.list_head, align 8
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_component, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store ptr %5, ptr %5, align 8
  %10 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.snd_soc_card, ptr %9, i32 0, i32 10
  call void @mutex_lock(ptr noundef %11) #20
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  call fastcc void @invalidate_paths_ep(ptr noundef %15, i32 noundef 1)
  %16 = call fastcc i32 @is_connected_output_ep(ptr noundef %15, ptr noundef nonnull %5, ptr noundef %3)
  br label %21

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  call fastcc void @invalidate_paths_ep(ptr noundef %19, i32 noundef 0)
  %20 = call fastcc i32 @is_connected_input_ep(ptr noundef %19, ptr noundef nonnull %5, ptr noundef %3)
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i32 [ %16, %13 ], [ %20, %17 ]
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %24, align 4
  br label %28

28:                                               ; preds = %28, %21
  %29 = phi i32 [ 0, %21 ], [ %33, %28 ]
  %30 = phi ptr [ %5, %21 ], [ %31, %28 ]
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %5
  %33 = add i32 %29, 1
  br i1 %32, label %34, label %28

34:                                               ; preds = %28
  %35 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %29, i32 4) #20
  %36 = extractvalue { i32, i1 } %35, 1
  %37 = extractvalue { i32, i1 } %35, 0
  %38 = call i32 @llvm.uadd.sat.i32(i32 %37, i32 4) #20
  %39 = select i1 %36, i32 -1, i32 %38
  %40 = call noalias align 64 ptr @__kmalloc(i32 noundef %39, i32 noundef 3520) #21
  store ptr %40, ptr %2, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %70, label %42

42:                                               ; preds = %34
  %43 = load ptr, ptr %5, align 8
  %44 = icmp eq ptr %43, %5
  br i1 %44, label %67, label %45

45:                                               ; preds = %42
  %46 = getelementptr i8, ptr %43, i32 -140
  %47 = getelementptr %struct.snd_soc_dapm_widget_list, ptr %40, i32 0, i32 1, i32 0
  store ptr %46, ptr %47, align 4
  %48 = load ptr, ptr %43, align 4
  %49 = icmp eq ptr %48, %5
  br i1 %49, label %67, label %50

50:                                               ; preds = %45
  %51 = getelementptr i8, ptr %48, i32 -140
  %52 = getelementptr %struct.snd_soc_dapm_widget_list, ptr %40, i32 0, i32 1, i32 1
  store ptr %51, ptr %52, align 8
  %53 = load ptr, ptr %48, align 4
  %54 = icmp eq ptr %53, %5
  br i1 %54, label %64, label %55

55:                                               ; preds = %55, %50
  %56 = phi ptr [ %62, %55 ], [ %53, %50 ]
  %57 = phi i32 [ %60, %55 ], [ 2, %50 ]
  %58 = load ptr, ptr %2, align 4
  %59 = getelementptr i8, ptr %56, i32 -140
  %60 = add i32 %57, 1
  %61 = getelementptr %struct.snd_soc_dapm_widget_list, ptr %58, i32 0, i32 1, i32 %57
  store ptr %59, ptr %61, align 4
  %62 = load ptr, ptr %56, align 4
  %63 = icmp eq ptr %62, %5
  br i1 %63, label %64, label %55

64:                                               ; preds = %55, %50
  %65 = phi i32 [ 2, %50 ], [ %60, %55 ]
  %66 = load ptr, ptr %2, align 4
  br label %67

67:                                               ; preds = %64, %45, %42
  %68 = phi ptr [ %40, %42 ], [ %40, %45 ], [ %66, %64 ]
  %69 = phi i32 [ 0, %42 ], [ 1, %45 ], [ %65, %64 ]
  store i32 %69, ptr %68, align 4
  br label %70

70:                                               ; preds = %67, %34
  %71 = phi i32 [ %22, %67 ], [ -12, %34 ]
  %72 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_dapm_connected, i32 0, i32 1), align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = tail call ptr @llvm.thread.pointer() #20
  %76 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %77 = load i32, ptr %76, align 8
  %78 = lshr i32 %77, 5
  %79 = getelementptr i32, ptr @__cpu_online_mask, i32 %78
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %77, 31
  %82 = shl nuw i32 1, %81
  %83 = and i32 %82, %80
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %74
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !8
  %86 = call i32 @__traceiter_snd_soc_dapm_connected(ptr noundef null, i32 noundef %71, i32 noundef %1) #20
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !9
  br label %87

87:                                               ; preds = %85, %74, %70
  call void @mutex_unlock(ptr noundef %11) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret i32 %71
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @invalidate_paths_ep(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = icmp eq i32 %1, 0
  %4 = zext i1 %3 to i32
  %5 = getelementptr %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 26, i32 %1
  store i32 -1, ptr %5, align 4
  %6 = getelementptr %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 22, i32 %4
  %7 = select i1 %3, i32 -28, i32 -20
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr i8, ptr %8, i32 %7
  %10 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %9, i32 0, i32 4
  %11 = getelementptr [2 x %struct.list_head], ptr %10, i32 0, i32 %4
  %12 = icmp eq ptr %11, %6
  br i1 %12, label %39, label %13

13:                                               ; preds = %33, %2
  %14 = phi ptr [ %37, %33 ], [ %11, %2 ]
  %15 = phi ptr [ %35, %33 ], [ %9, %2 ]
  %16 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %15, i32 0, i32 2
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 12
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %13
  %21 = and i8 %17, 2
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = and i8 %17, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = or i8 %17, 2
  store i8 %27, ptr %16, align 4
  %28 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %15, i32 0, i32 1
  %29 = getelementptr [2 x ptr], ptr %28, i32 0, i32 %1
  %30 = load ptr, ptr %29, align 4
  tail call fastcc void @invalidate_paths_ep(ptr noundef %30, i32 noundef %1)
  %31 = load i8, ptr %16, align 4
  %32 = and i8 %31, -3
  store i8 %32, ptr %16, align 4
  br label %33

33:                                               ; preds = %26, %23, %13
  %34 = load ptr, ptr %14, align 4
  %35 = getelementptr i8, ptr %34, i32 %7
  %36 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %35, i32 0, i32 4
  %37 = getelementptr [2 x %struct.list_head], ptr %36, i32 0, i32 %4
  %38 = icmp eq ptr %37, %6
  br i1 %38, label %39, label %13

39:                                               ; preds = %33, %20, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @is_connected_output_ep(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 26, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %104, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_soc_card, ptr %11, i32 0, i32 52, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4
  %15 = icmp eq ptr %1, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 23
  %18 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  store ptr %17, ptr %18, align 4
  store ptr %1, ptr %17, align 4
  %20 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 23, i32 1
  store ptr %19, ptr %20, align 4
  store volatile ptr %17, ptr %19, align 4
  br label %21

21:                                               ; preds = %16, %7
  %22 = icmp eq ptr %2, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %21
  %24 = tail call zeroext i1 %2(ptr noundef %0, i32 noundef 1) #20
  %25 = select i1 %24, ptr null, ptr %2
  %26 = select i1 %24, ptr null, ptr %1
  br label %27

27:                                               ; preds = %23, %21
  %28 = phi ptr [ null, %21 ], [ %25, %23 ]
  %29 = phi ptr [ %1, %21 ], [ %26, %23 ]
  %30 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 13
  %31 = load i16, ptr %30, align 4
  %32 = and i16 %31, 1028
  %33 = icmp eq i16 %32, 1028
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load ptr, ptr %8, align 4
  %36 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %35, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.snd_soc_card, ptr %37, i32 0, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.snd_card, ptr %39, i32 0, i32 37
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, -2
  %43 = icmp eq i32 %42, 768
  %44 = lshr i16 %31, 5
  %45 = and i16 %44, 1
  %46 = zext i16 %45 to i32
  %47 = select i1 %43, i32 %46, i32 1
  br label %102

48:                                               ; preds = %27
  %49 = getelementptr %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 22, i32 0
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %102, label %52

52:                                               ; preds = %98, %48
  %53 = phi ptr [ %100, %98 ], [ %50, %48 ]
  %54 = phi i32 [ %99, %98 ], [ 0, %48 ]
  %55 = getelementptr i8, ptr %53, i32 -20
  %56 = load ptr, ptr %8, align 4
  %57 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %56, i32 0, i32 4
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.snd_soc_card, ptr %58, i32 0, i32 52, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 4
  %62 = getelementptr i8, ptr %53, i32 -8
  %63 = load i8, ptr %62, align 4
  %64 = and i8 %63, 12
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %98

66:                                               ; preds = %52
  %67 = and i8 %63, 2
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %104

69:                                               ; preds = %66
  %70 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_dapm_path, i32 0, i32 1), align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = tail call ptr @llvm.thread.pointer() #20
  %74 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %75 = load i32, ptr %74, align 8
  %76 = lshr i32 %75, 5
  %77 = getelementptr i32, ptr @__cpu_online_mask, i32 %76
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %75, 31
  %80 = shl nuw i32 1, %79
  %81 = and i32 %80, %78
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %72
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %84 = tail call i32 @__traceiter_snd_soc_dapm_path(ptr noundef null, ptr noundef %0, i32 noundef 1, ptr noundef %55) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %85 = load i8, ptr %62, align 4
  br label %86

86:                                               ; preds = %83, %72, %69
  %87 = phi i8 [ %63, %69 ], [ %63, %72 ], [ %85, %83 ]
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %86
  %91 = or i8 %87, 2
  store i8 %91, ptr %62, align 4
  %92 = getelementptr i8, ptr %53, i32 -12
  %93 = load ptr, ptr %92, align 4
  %94 = tail call fastcc i32 @is_connected_output_ep(ptr noundef %93, ptr noundef %29, ptr noundef %28) #20, !callees !12
  %95 = add i32 %94, %54
  %96 = load i8, ptr %62, align 4
  %97 = and i8 %96, -3
  store i8 %97, ptr %62, align 4
  br label %98

98:                                               ; preds = %90, %86, %52
  %99 = phi i32 [ %54, %52 ], [ %95, %90 ], [ %54, %86 ]
  %100 = load ptr, ptr %53, align 4
  %101 = icmp eq ptr %100, %49
  br i1 %101, label %102, label %52

102:                                              ; preds = %98, %48, %34
  %103 = phi i32 [ %47, %34 ], [ 0, %48 ], [ %99, %98 ]
  store i32 %103, ptr %4, align 4
  br label %104

104:                                              ; preds = %102, %66, %3
  %105 = phi i32 [ %5, %3 ], [ %103, %102 ], [ 1, %66 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @is_connected_input_ep(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 26, i32 0
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %104, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_soc_card, ptr %11, i32 0, i32 52, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4
  %15 = icmp eq ptr %1, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 23
  %18 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  store ptr %17, ptr %18, align 4
  store ptr %1, ptr %17, align 4
  %20 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 23, i32 1
  store ptr %19, ptr %20, align 4
  store volatile ptr %17, ptr %19, align 4
  br label %21

21:                                               ; preds = %16, %7
  %22 = icmp eq ptr %2, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %21
  %24 = tail call zeroext i1 %2(ptr noundef %0, i32 noundef 0) #20
  %25 = select i1 %24, ptr null, ptr %2
  %26 = select i1 %24, ptr null, ptr %1
  br label %27

27:                                               ; preds = %23, %21
  %28 = phi ptr [ null, %21 ], [ %25, %23 ]
  %29 = phi ptr [ %1, %21 ], [ %26, %23 ]
  %30 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 13
  %31 = load i16, ptr %30, align 4
  %32 = and i16 %31, 516
  %33 = icmp eq i16 %32, 516
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load ptr, ptr %8, align 4
  %36 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %35, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.snd_soc_card, ptr %37, i32 0, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.snd_card, ptr %39, i32 0, i32 37
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, -2
  %43 = icmp eq i32 %42, 768
  %44 = lshr i16 %31, 5
  %45 = and i16 %44, 1
  %46 = zext i16 %45 to i32
  %47 = select i1 %43, i32 %46, i32 1
  br label %102

48:                                               ; preds = %27
  %49 = getelementptr %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 22, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %102, label %52

52:                                               ; preds = %98, %48
  %53 = phi ptr [ %100, %98 ], [ %50, %48 ]
  %54 = phi i32 [ %99, %98 ], [ 0, %48 ]
  %55 = getelementptr i8, ptr %53, i32 -28
  %56 = load ptr, ptr %8, align 4
  %57 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %56, i32 0, i32 4
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.snd_soc_card, ptr %58, i32 0, i32 52, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 4
  %62 = getelementptr i8, ptr %53, i32 -16
  %63 = load i8, ptr %62, align 4
  %64 = and i8 %63, 12
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %98

66:                                               ; preds = %52
  %67 = and i8 %63, 2
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %104

69:                                               ; preds = %66
  %70 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_dapm_path, i32 0, i32 1), align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = tail call ptr @llvm.thread.pointer() #20
  %74 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %75 = load i32, ptr %74, align 8
  %76 = lshr i32 %75, 5
  %77 = getelementptr i32, ptr @__cpu_online_mask, i32 %76
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %75, 31
  %80 = shl nuw i32 1, %79
  %81 = and i32 %80, %78
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %72
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !10
  %84 = tail call i32 @__traceiter_snd_soc_dapm_path(ptr noundef null, ptr noundef %0, i32 noundef 0, ptr noundef %55) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !11
  %85 = load i8, ptr %62, align 4
  br label %86

86:                                               ; preds = %83, %72, %69
  %87 = phi i8 [ %63, %69 ], [ %63, %72 ], [ %85, %83 ]
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %86
  %91 = or i8 %87, 2
  store i8 %91, ptr %62, align 4
  %92 = getelementptr i8, ptr %53, i32 -24
  %93 = load ptr, ptr %92, align 4
  %94 = tail call fastcc i32 @is_connected_input_ep(ptr noundef %93, ptr noundef %29, ptr noundef %28) #20, !callees !12
  %95 = add i32 %94, %54
  %96 = load i8, ptr %62, align 4
  %97 = and i8 %96, -3
  store i8 %97, ptr %62, align 4
  br label %98

98:                                               ; preds = %90, %86, %52
  %99 = phi i32 [ %54, %52 ], [ %95, %90 ], [ %54, %86 ]
  %100 = load ptr, ptr %53, align 4
  %101 = icmp eq ptr %100, %49
  br i1 %101, label %102, label %52

102:                                              ; preds = %98, %48, %34
  %103 = phi i32 [ %47, %34 ], [ 0, %48 ], [ %99, %98 ]
  store i32 %103, ptr %4, align 4
  br label %104

104:                                              ; preds = %102, %66, %3
  %105 = phi i32 [ %5, %3 ], [ %103, %102 ], [ 1, %66 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_soc_dapm_dai_free_widgets(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %2) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dapm_regulator_event(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @snd_soc_component_async_complete(ptr noundef nonnull %7) #20
  br label %10

10:                                               ; preds = %9, %3
  %11 = and i32 %2, 3
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %12, label %33, label %17

17:                                               ; preds = %10
  br i1 %16, label %29, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @regulator_allow_bypass(ptr noundef %20, i1 noundef zeroext false) #20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.1, ptr noundef %28, i32 noundef %21) #22
  br label %29

29:                                               ; preds = %23, %18, %17
  %30 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @regulator_enable(ptr noundef %31) #20
  br label %52

33:                                               ; preds = %10
  br i1 %16, label %45, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @regulator_allow_bypass(ptr noundef %36, i1 noundef zeroext true) #20
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.2, ptr noundef %44, i32 noundef %37) #22
  br label %45

45:                                               ; preds = %39, %34, %33
  %46 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 6
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 9
  %49 = load i8, ptr %48, align 4
  %50 = zext i8 %49 to i32
  %51 = tail call i32 @regulator_disable_deferred(ptr noundef %47, i32 noundef %50) #20
  br label %52

52:                                               ; preds = %45, %29
  %53 = phi i32 [ %32, %29 ], [ %51, %45 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_allow_bypass(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_deferred(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dapm_pinctrl_event(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ne ptr %7, null
  %9 = icmp ne ptr %5, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = and i32 %2, 3
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.snd_soc_dapm_pinctrl_priv, ptr %5, i32 0, i32 1
  %15 = select i1 %13, ptr %14, ptr %5
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @pinctrl_lookup_state(ptr noundef nonnull %7, ptr noundef %16) #20
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = ptrtoint ptr %17 to i32
  br label %23

21:                                               ; preds = %11
  %22 = tail call i32 @pinctrl_select_state(ptr noundef nonnull %7, ptr noundef %17) #20
  br label %23

23:                                               ; preds = %21, %19, %3
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ], [ -5, %3 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dapm_clock_event(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @snd_soc_component_async_complete(ptr noundef nonnull %11) #20
  br label %14

14:                                               ; preds = %13, %7
  %15 = and i32 %2, 3
  %16 = icmp eq i32 %15, 0
  %17 = load ptr, ptr %4, align 4
  br i1 %16, label %24, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @clk_prepare(ptr noundef %17) #20
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = tail call i32 @clk_enable(ptr noundef %17) #20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %25

24:                                               ; preds = %14
  tail call void @clk_disable(ptr noundef %17) #20
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32 [ 0, %24 ], [ %22, %21 ]
  tail call void @clk_unprepare(ptr noundef %17) #20
  br label %27

27:                                               ; preds = %25, %21, %18, %3
  %28 = phi i32 [ -5, %3 ], [ %19, %18 ], [ 0, %21 ], [ %26, %25 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_soc_dapm_debugfs_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  %4 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.3, ptr noundef nonnull %1) #20
  %8 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 9
  store ptr %7, ptr %8, align 4
  %9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %7, ptr noundef %0, ptr noundef nonnull @dapm_bias_fops) #20
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_mux_update_power(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %8) #20
  %9 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 53
  store ptr %4, ptr %9, align 4
  %10 = tail call fastcc i32 @soc_dapm_mux_update_power(ptr noundef %7, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  store ptr null, ptr %9, align 4
  tail call void @mutex_unlock(ptr noundef %8) #20
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = tail call i32 @snd_soc_dpcm_runtime_update(ptr noundef %7) #20
  br label %14

14:                                               ; preds = %12, %5
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @soc_dapm_mux_update_power(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %80, label %10

10:                                               ; preds = %4
  %11 = icmp eq ptr %3, null
  %12 = getelementptr inbounds %struct.soc_enum, ptr %3, i32 0, i32 5
  br label %13

13:                                               ; preds = %72, %10
  %14 = phi ptr [ %6, %10 ], [ %73, %72 ]
  %15 = phi ptr [ %8, %10 ], [ %74, %72 ]
  %16 = getelementptr i8, ptr %15, i32 -36
  br i1 %11, label %24, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %16, align 4
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr ptr, ptr %19, i32 %2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @strcmp(ptr noundef %18, ptr noundef %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %17, %13
  %25 = getelementptr i8, ptr %15, i32 -24
  %26 = load i8, ptr %25, align 4
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %72, label %34

29:                                               ; preds = %17
  %30 = getelementptr i8, ptr %15, i32 -24
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %72

34:                                               ; preds = %29, %24
  %35 = phi i8 [ %26, %24 ], [ %31, %29 ]
  %36 = phi ptr [ %25, %24 ], [ %30, %29 ]
  %37 = phi i1 [ false, %24 ], [ true, %29 ]
  %38 = zext i1 %37 to i8
  %39 = and i8 %35, -2
  %40 = or i8 %39, %38
  store i8 %40, ptr %36, align 4
  %41 = getelementptr i8, ptr %15, i32 -32
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %42, i32 0, i32 25
  %44 = load volatile ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %43
  br i1 %45, label %46, label %55

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %42, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %48, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.snd_soc_card, ptr %50, i32 0, i32 49
  %52 = getelementptr inbounds %struct.snd_soc_card, ptr %50, i32 0, i32 49, i32 1
  %53 = load ptr, ptr %52, align 4
  store ptr %43, ptr %52, align 4
  store ptr %51, ptr %43, align 4
  %54 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %42, i32 0, i32 25, i32 1
  store ptr %53, ptr %54, align 4
  store volatile ptr %43, ptr %53, align 4
  br label %55

55:                                               ; preds = %46, %34
  %56 = getelementptr i8, ptr %15, i32 -28
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %57, i32 0, i32 25
  %59 = load volatile ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %58
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %57, i32 0, i32 4
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %63, i32 0, i32 4
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.snd_soc_card, ptr %65, i32 0, i32 49
  %67 = getelementptr inbounds %struct.snd_soc_card, ptr %65, i32 0, i32 49, i32 1
  %68 = load ptr, ptr %67, align 4
  store ptr %58, ptr %67, align 4
  store ptr %66, ptr %58, align 4
  %69 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %57, i32 0, i32 25, i32 1
  store ptr %68, ptr %69, align 4
  store volatile ptr %58, ptr %68, align 4
  br label %70

70:                                               ; preds = %61, %55
  tail call fastcc void @dapm_path_invalidate(ptr noundef %16) #20
  %71 = load ptr, ptr %5, align 4
  br label %72

72:                                               ; preds = %70, %29, %24
  %73 = phi ptr [ %14, %24 ], [ %14, %29 ], [ %71, %70 ]
  %74 = load ptr, ptr %15, align 4
  %75 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %73, i32 0, i32 2
  %76 = icmp eq ptr %74, %75
  br i1 %76, label %77, label %13

77:                                               ; preds = %72
  br i1 %9, label %80, label %78

78:                                               ; preds = %77
  %79 = tail call fastcc i32 @dapm_power_widgets(ptr noundef %0, i32 noundef 0)
  br label %80

80:                                               ; preds = %78, %77, %4
  %81 = phi i32 [ 1, %78 ], [ 1, %77 ], [ 0, %4 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dpcm_runtime_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_mixer_update_power(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_card, ptr %6, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %7) #20
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %6, i32 0, i32 53
  store ptr %3, ptr %8, align 4
  %9 = tail call fastcc i32 @soc_dapm_mixer_update_power(ptr noundef %6, ptr noundef %1, i32 noundef %2, i32 noundef -1)
  store ptr null, ptr %8, align 4
  tail call void @mutex_unlock(ptr noundef %7) #20
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = tail call i32 @snd_soc_dpcm_runtime_update(ptr noundef %6) #20
  br label %13

13:                                               ; preds = %11, %4
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @soc_dapm_mixer_update_power(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %102, label %10

10:                                               ; preds = %4
  %11 = icmp sgt i32 %3, -1
  %12 = icmp ne i32 %2, 0
  %13 = zext i1 %12 to i8
  %14 = icmp ne i32 %3, 0
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %94, %10
  %17 = phi ptr [ %8, %10 ], [ %95, %94 ]
  %18 = phi i1 [ false, %10 ], [ true, %94 ]
  %19 = getelementptr i8, ptr %17, i32 -36
  %20 = and i1 %11, %18
  %21 = getelementptr i8, ptr %17, i32 -24
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %20, label %25, label %59

25:                                               ; preds = %16
  %26 = xor i1 %14, %24
  br i1 %26, label %94, label %27

27:                                               ; preds = %25
  %28 = and i8 %22, -2
  %29 = or i8 %28, %15
  store i8 %29, ptr %21, align 4
  %30 = getelementptr i8, ptr %17, i32 -32
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %31, i32 0, i32 25
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %31, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %37, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.snd_soc_card, ptr %39, i32 0, i32 49
  %41 = getelementptr inbounds %struct.snd_soc_card, ptr %39, i32 0, i32 49, i32 1
  %42 = load ptr, ptr %41, align 4
  store ptr %32, ptr %41, align 4
  store ptr %40, ptr %32, align 4
  %43 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %31, i32 0, i32 25, i32 1
  store ptr %42, ptr %43, align 4
  store volatile ptr %32, ptr %42, align 4
  br label %44

44:                                               ; preds = %35, %27
  %45 = getelementptr i8, ptr %17, i32 -28
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %46, i32 0, i32 25
  %48 = load volatile ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %47
  br i1 %49, label %50, label %93

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %46, i32 0, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %52, i32 0, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.snd_soc_card, ptr %54, i32 0, i32 49
  %56 = getelementptr inbounds %struct.snd_soc_card, ptr %54, i32 0, i32 49, i32 1
  %57 = load ptr, ptr %56, align 4
  store ptr %47, ptr %56, align 4
  store ptr %55, ptr %47, align 4
  %58 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %46, i32 0, i32 25, i32 1
  store ptr %57, ptr %58, align 4
  store volatile ptr %47, ptr %57, align 4
  br label %93

59:                                               ; preds = %16
  %60 = xor i1 %12, %24
  br i1 %60, label %94, label %61

61:                                               ; preds = %59
  %62 = and i8 %22, -2
  %63 = or i8 %62, %13
  store i8 %63, ptr %21, align 4
  %64 = getelementptr i8, ptr %17, i32 -32
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %65, i32 0, i32 25
  %67 = load volatile ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %66
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %65, i32 0, i32 4
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %71, i32 0, i32 4
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.snd_soc_card, ptr %73, i32 0, i32 49
  %75 = getelementptr inbounds %struct.snd_soc_card, ptr %73, i32 0, i32 49, i32 1
  %76 = load ptr, ptr %75, align 4
  store ptr %66, ptr %75, align 4
  store ptr %74, ptr %66, align 4
  %77 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %65, i32 0, i32 25, i32 1
  store ptr %76, ptr %77, align 4
  store volatile ptr %66, ptr %76, align 4
  br label %78

78:                                               ; preds = %69, %61
  %79 = getelementptr i8, ptr %17, i32 -28
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %80, i32 0, i32 25
  %82 = load volatile ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, %81
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %80, i32 0, i32 4
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %86, i32 0, i32 4
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.snd_soc_card, ptr %88, i32 0, i32 49
  %90 = getelementptr inbounds %struct.snd_soc_card, ptr %88, i32 0, i32 49, i32 1
  %91 = load ptr, ptr %90, align 4
  store ptr %81, ptr %90, align 4
  store ptr %89, ptr %81, align 4
  %92 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %80, i32 0, i32 25, i32 1
  store ptr %91, ptr %92, align 4
  store volatile ptr %81, ptr %91, align 4
  br label %93

93:                                               ; preds = %84, %78, %50, %44
  tail call fastcc void @dapm_path_invalidate(ptr noundef %19) #20
  br label %94

94:                                               ; preds = %93, %59, %25
  %95 = load ptr, ptr %17, align 4
  %96 = load ptr, ptr %5, align 4
  %97 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %96, i32 0, i32 2
  %98 = icmp eq ptr %95, %97
  br i1 %98, label %99, label %16

99:                                               ; preds = %94
  br i1 %9, label %102, label %100

100:                                              ; preds = %99
  %101 = tail call fastcc i32 @dapm_power_widgets(ptr noundef %0, i32 noundef 0)
  br label %102

102:                                              ; preds = %100, %99, %4
  %103 = phi i32 [ 1, %100 ], [ 1, %99 ], [ 0, %4 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_soc_dapm_free_widget(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  %7 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 25
  %8 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 25, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  %12 = getelementptr %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 22, i32 0
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %38, label %15

15:                                               ; preds = %15, %1
  %16 = phi ptr [ %18, %15 ], [ %13, %1 ]
  %17 = getelementptr i8, ptr %16, i32 -20
  %18 = load ptr, ptr %16, align 4
  %19 = getelementptr i8, ptr %16, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %18, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  %22 = getelementptr i8, ptr %16, i32 8
  %23 = getelementptr i8, ptr %16, i32 12
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %22, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %24, ptr %26, align 4
  store volatile ptr %25, ptr %24, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %23, align 4
  %27 = getelementptr i8, ptr %16, i32 16
  %28 = getelementptr i8, ptr %16, i32 20
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %27, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %29, ptr %31, align 4
  store volatile ptr %30, ptr %29, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %27, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %28, align 4
  %32 = getelementptr i8, ptr %16, i32 24
  %33 = getelementptr i8, ptr %16, i32 28
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %32, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  tail call void @kfree(ptr noundef %17) #20
  %37 = icmp eq ptr %18, %12
  br i1 %37, label %38, label %15

38:                                               ; preds = %15, %1
  %39 = getelementptr %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 22, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %66, label %42

42:                                               ; preds = %42, %38
  %43 = phi ptr [ %46, %42 ], [ %40, %38 ]
  %44 = getelementptr i8, ptr %43, i32 -28
  %45 = getelementptr i8, ptr %43, i32 -8
  %46 = load ptr, ptr %43, align 4
  %47 = getelementptr i8, ptr %43, i32 -4
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %45, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %48, ptr %50, align 4
  store volatile ptr %49, ptr %48, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %45, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %47, align 4
  %51 = getelementptr i8, ptr %43, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %43, align 4
  %54 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  store ptr %52, ptr %54, align 4
  store volatile ptr %53, ptr %52, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %43, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %51, align 4
  %55 = getelementptr i8, ptr %43, i32 8
  %56 = getelementptr i8, ptr %43, i32 12
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %55, align 4
  %59 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %57, ptr %59, align 4
  store volatile ptr %58, ptr %57, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %55, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %56, align 4
  %60 = getelementptr i8, ptr %43, i32 16
  %61 = getelementptr i8, ptr %43, i32 20
  %62 = load ptr, ptr %61, align 4
  %63 = load ptr, ptr %60, align 4
  %64 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %62, ptr %64, align 4
  store volatile ptr %63, ptr %62, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %60, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %61, align 4
  tail call void @kfree(ptr noundef %44) #20
  %65 = icmp eq ptr %46, %39
  br i1 %65, label %66, label %42

66:                                               ; preds = %42, %38
  %67 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 20
  %68 = load ptr, ptr %67, align 4
  tail call void @kfree(ptr noundef %68) #20
  %69 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  tail call void @kfree_const(ptr noundef %70) #20
  %71 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  tail call void @kfree_const(ptr noundef %72) #20
  tail call void @kfree(ptr noundef %0) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @snd_soc_dapm_reset_cache(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 7
  store ptr null, ptr %2, align 4
  %3 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 8
  store ptr null, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_sync_unlocked(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call fastcc i32 @dapm_power_widgets(ptr noundef nonnull %3, i32 noundef 0)
  br label %12

12:                                               ; preds = %10, %5, %1
  %13 = phi i32 [ %11, %10 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dapm_power_widgets(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  %4 = alloca %struct.list_head, align 8
  %5 = alloca %struct.async_domain, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store ptr %3, ptr %3, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store ptr %4, ptr %4, align 8
  %7 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  %8 = getelementptr inbounds i8, ptr %5, i32 8
  store i32 0, ptr %8, align 4, !annotation !13
  store ptr %5, ptr %5, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %9, align 4
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_dapm_start, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = tail call ptr @llvm.thread.pointer() #20
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !14
  %24 = call i32 @__traceiter_snd_soc_dapm_start(ptr noundef null, ptr noundef %0) #20
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !15
  br label %25

25:                                               ; preds = %23, %12, %2
  %26 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 48
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %53, label %29

29:                                               ; preds = %48, %25
  %30 = phi ptr [ %51, %48 ], [ %27, %25 ]
  %31 = getelementptr i8, ptr %30, i32 -20
  %32 = load i8, ptr %31, align 4
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = getelementptr i8, ptr %30, i32 -8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.snd_soc_card, ptr %37, i32 0, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.snd_card, ptr %39, i32 0, i32 37
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, -2
  %43 = icmp ne i32 %42, 768
  %44 = and i8 %32, 2
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %43, i1 true, i1 %45
  %47 = zext i1 %46 to i32
  br label %48

48:                                               ; preds = %35, %29
  %49 = phi i32 [ 0, %29 ], [ %47, %35 ]
  %50 = getelementptr i8, ptr %30, i32 -4
  store i32 %49, ptr %50, align 4
  %51 = load ptr, ptr %30, align 4
  %52 = icmp eq ptr %51, %26
  br i1 %52, label %53, label %29

53:                                               ; preds = %48, %25
  %54 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 52
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %54, i8 0, i32 12, i1 false) #20
  %55 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 46
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, %55
  br i1 %57, label %68, label %58

58:                                               ; preds = %58, %53
  %59 = phi ptr [ %66, %58 ], [ %56, %53 ]
  %60 = getelementptr i8, ptr %59, i32 44
  %61 = load i16, ptr %60, align 4
  %62 = shl i16 %61, 6
  %63 = and i16 %62, 64
  %64 = and i16 %61, -193
  %65 = or i16 %63, %64
  store i16 %65, ptr %60, align 4
  %66 = load ptr, ptr %59, align 4
  %67 = icmp eq ptr %66, %55
  br i1 %67, label %68, label %58

68:                                               ; preds = %58, %53
  %69 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 49
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, %69
  br i1 %71, label %72, label %75

72:                                               ; preds = %205, %68
  %73 = load ptr, ptr %55, align 4
  %74 = icmp eq ptr %73, %55
  br i1 %74, label %208, label %211

75:                                               ; preds = %205, %68
  %76 = phi ptr [ %206, %205 ], [ %70, %68 ]
  %77 = getelementptr i8, ptr %76, i32 -156
  %78 = load i32, ptr %77, align 4
  switch i32 %78, label %81 [
    i32 17, label %79
    i32 18, label %80
  ]

79:                                               ; preds = %75
  call fastcc void @dapm_seq_insert(ptr noundef %77, ptr noundef nonnull %4, i1 noundef zeroext false) #20
  br label %205

80:                                               ; preds = %75
  call fastcc void @dapm_seq_insert(ptr noundef %77, ptr noundef nonnull %3, i1 noundef zeroext true) #20
  br label %205

81:                                               ; preds = %75
  %82 = getelementptr i8, ptr %76, i32 -100
  %83 = load i16, ptr %82, align 4
  %84 = and i16 %83, 128
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %81
  %87 = and i16 %83, 16
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = or i16 %83, 64
  br label %101

91:                                               ; preds = %86
  %92 = getelementptr i8, ptr %76, i32 -92
  %93 = load ptr, ptr %92, align 4
  %94 = call i32 %93(ptr noundef %77) #20
  %95 = trunc i32 %94 to i16
  %96 = load i16, ptr %82, align 4
  %97 = shl i16 %95, 6
  %98 = and i16 %97, 64
  %99 = and i16 %96, -65
  %100 = or i16 %98, %99
  br label %101

101:                                              ; preds = %91, %89
  %102 = phi i16 [ %100, %91 ], [ %90, %89 ]
  %103 = or i16 %102, 128
  store i16 %103, ptr %82, align 4
  br label %104

104:                                              ; preds = %101, %81
  %105 = phi i16 [ %103, %101 ], [ %83, %81 ]
  %106 = phi i16 [ %102, %101 ], [ %83, %81 ]
  %107 = and i16 %106, 64
  %108 = icmp ne i16 %107, 0
  %109 = and i16 %105, 1
  %110 = icmp eq i16 %109, 0
  %111 = xor i1 %110, %108
  br i1 %111, label %205, label %112

112:                                              ; preds = %104
  %113 = lshr exact i16 %107, 6
  %114 = zext i16 %113 to i32
  %115 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_dapm_widget_power, i32 0, i32 1), align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %112
  %118 = tail call ptr @llvm.thread.pointer() #20
  %119 = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 2
  %120 = load i32, ptr %119, align 8
  %121 = lshr i32 %120, 5
  %122 = getelementptr i32, ptr @__cpu_online_mask, i32 %121
  %123 = load volatile i32, ptr %122, align 4
  %124 = and i32 %120, 31
  %125 = shl nuw i32 1, %124
  %126 = and i32 %125, %123
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %117
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !16
  %129 = call i32 @__traceiter_snd_soc_dapm_widget_power(ptr noundef null, ptr noundef %77, i32 noundef %114) #20
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !17
  br label %130

130:                                              ; preds = %128, %117, %112
  %131 = getelementptr i8, ptr %76, i32 -32
  %132 = getelementptr i8, ptr %76, i32 -24
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, %132
  br i1 %134, label %165, label %135

135:                                              ; preds = %162, %130
  %136 = phi ptr [ %163, %162 ], [ %133, %130 ]
  %137 = getelementptr i8, ptr %136, i32 -24
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr i8, ptr %136, i32 -16
  %140 = load i8, ptr %139, align 4
  %141 = and i8 %140, 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %162, label %143

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %138, i32 0, i32 13
  %145 = load i16, ptr %144, align 4
  %146 = and i16 %145, 1
  %147 = icmp eq i16 %146, 0
  %148 = xor i1 %108, %147
  br i1 %148, label %162, label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %138, i32 0, i32 25
  %151 = load volatile ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, %150
  br i1 %152, label %153, label %162

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %138, i32 0, i32 4
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %155, i32 0, i32 4
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.snd_soc_card, ptr %157, i32 0, i32 49
  %159 = getelementptr inbounds %struct.snd_soc_card, ptr %157, i32 0, i32 49, i32 1
  %160 = load ptr, ptr %159, align 4
  store ptr %150, ptr %159, align 4
  store ptr %158, ptr %150, align 4
  %161 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %138, i32 0, i32 25, i32 1
  store ptr %160, ptr %161, align 4
  store volatile ptr %150, ptr %160, align 4
  br label %162

162:                                              ; preds = %153, %149, %143, %135
  %163 = load ptr, ptr %136, align 4
  %164 = icmp eq ptr %163, %132
  br i1 %164, label %165, label %135

165:                                              ; preds = %162, %130
  %166 = load i16, ptr %82, align 4
  %167 = and i16 %166, 256
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %169, label %202

169:                                              ; preds = %165
  %170 = load ptr, ptr %131, align 4
  %171 = icmp eq ptr %170, %131
  br i1 %171, label %202, label %172

172:                                              ; preds = %199, %169
  %173 = phi ptr [ %200, %199 ], [ %170, %169 ]
  %174 = getelementptr i8, ptr %173, i32 -12
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr i8, ptr %173, i32 -8
  %177 = load i8, ptr %176, align 4
  %178 = and i8 %177, 1
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %199, label %180

180:                                              ; preds = %172
  %181 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %175, i32 0, i32 13
  %182 = load i16, ptr %181, align 4
  %183 = and i16 %182, 1
  %184 = icmp eq i16 %183, 0
  %185 = xor i1 %108, %184
  br i1 %185, label %199, label %186

186:                                              ; preds = %180
  %187 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %175, i32 0, i32 25
  %188 = load volatile ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, %187
  br i1 %189, label %190, label %199

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %175, i32 0, i32 4
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %192, i32 0, i32 4
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr inbounds %struct.snd_soc_card, ptr %194, i32 0, i32 49
  %196 = getelementptr inbounds %struct.snd_soc_card, ptr %194, i32 0, i32 49, i32 1
  %197 = load ptr, ptr %196, align 4
  store ptr %187, ptr %196, align 4
  store ptr %195, ptr %187, align 4
  %198 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %175, i32 0, i32 25, i32 1
  store ptr %197, ptr %198, align 4
  store volatile ptr %187, ptr %197, align 4
  br label %199

199:                                              ; preds = %190, %186, %180, %172
  %200 = load ptr, ptr %173, align 4
  %201 = icmp eq ptr %200, %131
  br i1 %201, label %202, label %172

202:                                              ; preds = %199, %169, %165
  br i1 %108, label %203, label %204

203:                                              ; preds = %202
  call fastcc void @dapm_seq_insert(ptr noundef %77, ptr noundef nonnull %3, i1 noundef zeroext true) #20
  br label %205

204:                                              ; preds = %202
  call fastcc void @dapm_seq_insert(ptr noundef %77, ptr noundef nonnull %4, i1 noundef zeroext false) #20
  br label %205

205:                                              ; preds = %204, %203, %104, %80, %79
  %206 = load ptr, ptr %76, align 4
  %207 = icmp eq ptr %206, %69
  br i1 %207, label %72, label %75

208:                                              ; preds = %239, %72
  %209 = load ptr, ptr %26, align 4
  %210 = icmp eq ptr %209, %26
  br i1 %210, label %274, label %243

211:                                              ; preds = %239, %72
  %212 = phi ptr [ %240, %239 ], [ %73, %72 ]
  %213 = getelementptr i8, ptr %212, i32 -12
  %214 = load i32, ptr %213, align 4
  %215 = add i32 %214, -17
  %216 = icmp ult i32 %215, 2
  br i1 %216, label %223, label %217

217:                                              ; preds = %211
  %218 = getelementptr i8, ptr %212, i32 144
  %219 = getelementptr i8, ptr %212, i32 148
  %220 = load ptr, ptr %219, align 4
  %221 = load ptr, ptr %218, align 4
  %222 = getelementptr inbounds %struct.list_head, ptr %221, i32 0, i32 1
  store ptr %220, ptr %222, align 4
  store volatile ptr %221, ptr %220, align 4
  store volatile ptr %218, ptr %218, align 4
  store ptr %218, ptr %219, align 4
  br label %223

223:                                              ; preds = %217, %211
  %224 = getelementptr i8, ptr %212, i32 44
  %225 = load i16, ptr %224, align 4
  %226 = and i16 %225, 64
  %227 = icmp eq i16 %226, 0
  br i1 %227, label %239, label %228

228:                                              ; preds = %223
  %229 = getelementptr i8, ptr %212, i32 8
  %230 = load ptr, ptr %229, align 4
  %231 = load i32, ptr %213, align 4
  switch i32 %231, label %237 [
    i32 25, label %239
    i32 16, label %239
    i32 19, label %232
    i32 21, label %232
    i32 20, label %232
    i32 22, label %232
    i32 10, label %232
  ]

232:                                              ; preds = %228, %228, %228, %228, %228
  %233 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %230, i32 0, i32 5
  %234 = load i32, ptr %233, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %232
  store i32 1, ptr %233, align 4
  br label %239

237:                                              ; preds = %228
  %238 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %230, i32 0, i32 5
  store i32 3, ptr %238, align 4
  br label %239

239:                                              ; preds = %237, %236, %232, %228, %228, %223
  %240 = load ptr, ptr %212, align 4
  %241 = icmp eq ptr %240, %55
  br i1 %241, label %208, label %211

242:                                              ; preds = %243
  br i1 %210, label %274, label %251

243:                                              ; preds = %243, %208
  %244 = phi ptr [ %249, %243 ], [ %209, %208 ]
  %245 = phi i32 [ %248, %243 ], [ 0, %208 ]
  %246 = getelementptr i8, ptr %244, i32 -4
  %247 = load i32, ptr %246, align 4
  %248 = call i32 @llvm.umax.i32(i32 %247, i32 %245)
  %249 = load ptr, ptr %244, align 4
  %250 = icmp eq ptr %249, %26
  br i1 %250, label %242, label %243

251:                                              ; preds = %271, %242
  %252 = phi ptr [ %272, %271 ], [ %209, %242 ]
  %253 = getelementptr i8, ptr %252, i32 -20
  %254 = load i8, ptr %253, align 4
  %255 = and i8 %254, 1
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %271

257:                                              ; preds = %251
  %258 = getelementptr i8, ptr %252, i32 -8
  %259 = load ptr, ptr %258, align 4
  %260 = getelementptr inbounds %struct.snd_soc_card, ptr %259, i32 0, i32 7
  %261 = load ptr, ptr %260, align 4
  %262 = getelementptr inbounds %struct.snd_card, ptr %261, i32 0, i32 37
  %263 = load volatile i32, ptr %262, align 4
  %264 = and i32 %263, -2
  %265 = icmp eq i32 %264, 768
  %266 = and i8 %254, 2
  %267 = icmp ne i8 %266, 0
  %268 = select i1 %265, i1 %267, i1 false
  br i1 %268, label %271, label %269

269:                                              ; preds = %257
  %270 = getelementptr i8, ptr %252, i32 -4
  store i32 %248, ptr %270, align 4
  br label %271

271:                                              ; preds = %269, %257, %251
  %272 = load ptr, ptr %252, align 4
  %273 = icmp eq ptr %272, %26
  br i1 %273, label %274, label %251

274:                                              ; preds = %271, %242, %208
  %275 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_dapm_walk_done, i32 0, i32 1), align 4
  %276 = icmp sgt i32 %275, 0
  br i1 %276, label %277, label %290

277:                                              ; preds = %274
  %278 = tail call ptr @llvm.thread.pointer() #20
  %279 = getelementptr inbounds %struct.thread_info, ptr %278, i32 0, i32 2
  %280 = load i32, ptr %279, align 8
  %281 = lshr i32 %280, 5
  %282 = getelementptr i32, ptr @__cpu_online_mask, i32 %281
  %283 = load volatile i32, ptr %282, align 4
  %284 = and i32 %280, 31
  %285 = shl nuw i32 1, %284
  %286 = and i32 %285, %283
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %277
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !18
  %289 = call i32 @__traceiter_snd_soc_dapm_walk_done(ptr noundef null, ptr noundef %0) #20
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !19
  br label %290

290:                                              ; preds = %288, %277, %274
  %291 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 51
  call void @dapm_pre_sequence_async(ptr noundef %291, i64 noundef 0)
  %292 = load ptr, ptr %26, align 4
  %293 = icmp eq ptr %292, %26
  br i1 %293, label %308, label %294

294:                                              ; preds = %305, %290
  %295 = phi ptr [ %306, %305 ], [ %292, %290 ]
  %296 = getelementptr i8, ptr %295, i32 -24
  %297 = icmp eq ptr %296, %291
  br i1 %297, label %305, label %298

298:                                              ; preds = %294
  %299 = load i32, ptr %296, align 4
  %300 = getelementptr i8, ptr %295, i32 -4
  %301 = load i32, ptr %300, align 4
  %302 = icmp eq i32 %299, %301
  br i1 %302, label %305, label %303

303:                                              ; preds = %298
  %304 = call i64 @async_schedule_node_domain(ptr noundef nonnull @dapm_pre_sequence_async, ptr noundef %296, i32 noundef -1, ptr noundef nonnull %5) #20
  br label %305

305:                                              ; preds = %303, %298, %294
  %306 = load ptr, ptr %295, align 4
  %307 = icmp eq ptr %306, %26
  br i1 %307, label %308, label %294

308:                                              ; preds = %305, %290
  call void @async_synchronize_full_domain(ptr noundef nonnull %5) #20
  %309 = load ptr, ptr %4, align 8
  %310 = icmp eq ptr %309, %4
  br i1 %310, label %311, label %314

311:                                              ; preds = %314, %308
  %312 = load ptr, ptr %3, align 8
  %313 = icmp eq ptr %312, %3
  br i1 %313, label %324, label %319

314:                                              ; preds = %314, %308
  %315 = phi ptr [ %317, %314 ], [ %309, %308 ]
  %316 = getelementptr i8, ptr %315, i32 -148
  call fastcc void @dapm_seq_check_event(ptr noundef %0, ptr noundef %316, i32 noundef 128)
  %317 = load ptr, ptr %315, align 4
  %318 = icmp eq ptr %317, %4
  br i1 %318, label %311, label %314

319:                                              ; preds = %319, %311
  %320 = phi ptr [ %322, %319 ], [ %312, %311 ]
  %321 = getelementptr i8, ptr %320, i32 -148
  call fastcc void @dapm_seq_check_event(ptr noundef %0, ptr noundef %321, i32 noundef 64)
  %322 = load ptr, ptr %320, align 4
  %323 = icmp eq ptr %322, %3
  br i1 %323, label %324, label %319

324:                                              ; preds = %319, %311
  call fastcc void @dapm_seq_run(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, i1 noundef zeroext false)
  %325 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 53
  %326 = load ptr, ptr %325, align 4
  %327 = icmp eq ptr %326, null
  br i1 %327, label %457, label %328

328:                                              ; preds = %324
  %329 = load ptr, ptr %326, align 4
  %330 = getelementptr inbounds %struct.snd_kcontrol, ptr %329, i32 0, i32 8
  %331 = load ptr, ptr %330, align 4
  %332 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %331, i32 0, i32 1
  %333 = load ptr, ptr %332, align 4
  %334 = icmp eq ptr %333, null
  br i1 %334, label %340, label %335

335:                                              ; preds = %328
  %336 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %333, i32 0, i32 13
  %337 = load i16, ptr %336, align 4
  %338 = and i16 %337, 1
  %339 = icmp eq i16 %338, 0
  br i1 %339, label %457, label %340

340:                                              ; preds = %335, %328
  %341 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %331, i32 0, i32 3
  %342 = load ptr, ptr %341, align 4
  %343 = load i32, ptr %342, align 4
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %457, label %345

345:                                              ; preds = %370, %340
  %346 = phi i32 [ %371, %370 ], [ 0, %340 ]
  %347 = getelementptr %struct.snd_soc_dapm_widget_list, ptr %342, i32 0, i32 1, i32 %346
  %348 = load ptr, ptr %347, align 4
  %349 = icmp eq ptr %348, null
  br i1 %349, label %457, label %350

350:                                              ; preds = %345
  %351 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %348, i32 0, i32 17
  %352 = load ptr, ptr %351, align 4
  %353 = icmp eq ptr %352, null
  br i1 %353, label %370, label %354

354:                                              ; preds = %350
  %355 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %348, i32 0, i32 16
  %356 = load i16, ptr %355, align 4
  %357 = and i16 %356, 16
  %358 = icmp eq i16 %357, 0
  br i1 %358, label %370, label %359

359:                                              ; preds = %354
  %360 = load ptr, ptr %326, align 4
  %361 = call i32 %352(ptr noundef nonnull %348, ptr noundef %360, i32 noundef 16) #20
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %370, label %363

363:                                              ; preds = %359
  %364 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %348, i32 0, i32 4
  %365 = load ptr, ptr %364, align 4
  %366 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %365, i32 0, i32 2
  %367 = load ptr, ptr %366, align 4
  %368 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %348, i32 0, i32 1
  %369 = load ptr, ptr %368, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %367, ptr noundef nonnull @.str.51, ptr noundef %369, i32 noundef %361) #22
  br label %370

370:                                              ; preds = %363, %359, %354, %350
  %371 = add nuw i32 %346, 1
  %372 = load i32, ptr %342, align 4
  %373 = icmp ult i32 %371, %372
  br i1 %373, label %345, label %374

374:                                              ; preds = %370
  %375 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %348, i32 0, i32 4
  %376 = load ptr, ptr %375, align 4
  %377 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %376, i32 0, i32 3
  %378 = load ptr, ptr %377, align 4
  %379 = icmp eq ptr %378, null
  br i1 %379, label %391, label %380

380:                                              ; preds = %374
  %381 = getelementptr inbounds %struct.snd_soc_dapm_update, ptr %326, i32 0, i32 3
  %382 = load i32, ptr %381, align 4
  %383 = getelementptr inbounds %struct.snd_soc_dapm_update, ptr %326, i32 0, i32 2
  %384 = load i32, ptr %383, align 4
  %385 = getelementptr inbounds %struct.snd_soc_dapm_update, ptr %326, i32 0, i32 1
  %386 = load i32, ptr %385, align 4
  %387 = call i32 @snd_soc_component_update_bits(ptr noundef nonnull %378, i32 noundef %386, i32 noundef %384, i32 noundef %382) #20
  %388 = icmp slt i32 %387, 0
  br i1 %388, label %389, label %398

389:                                              ; preds = %380
  %390 = load ptr, ptr %375, align 4
  br label %391

391:                                              ; preds = %389, %374
  %392 = phi ptr [ %390, %389 ], [ %376, %374 ]
  %393 = phi i32 [ %387, %389 ], [ -5, %374 ]
  %394 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %392, i32 0, i32 2
  %395 = load ptr, ptr %394, align 4
  %396 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %348, i32 0, i32 1
  %397 = load ptr, ptr %396, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %395, ptr noundef nonnull @.str.52, ptr noundef %397, i32 noundef %393) #22
  br label %398

398:                                              ; preds = %391, %380
  %399 = getelementptr inbounds %struct.snd_soc_dapm_update, ptr %326, i32 0, i32 7
  %400 = load i8, ptr %399, align 4, !range !20
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %425, label %402

402:                                              ; preds = %398
  %403 = load ptr, ptr %375, align 4
  %404 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %403, i32 0, i32 3
  %405 = load ptr, ptr %404, align 4
  %406 = icmp eq ptr %405, null
  br i1 %406, label %418, label %407

407:                                              ; preds = %402
  %408 = getelementptr inbounds %struct.snd_soc_dapm_update, ptr %326, i32 0, i32 6
  %409 = load i32, ptr %408, align 4
  %410 = getelementptr inbounds %struct.snd_soc_dapm_update, ptr %326, i32 0, i32 5
  %411 = load i32, ptr %410, align 4
  %412 = getelementptr inbounds %struct.snd_soc_dapm_update, ptr %326, i32 0, i32 4
  %413 = load i32, ptr %412, align 4
  %414 = call i32 @snd_soc_component_update_bits(ptr noundef nonnull %405, i32 noundef %413, i32 noundef %411, i32 noundef %409) #20
  %415 = icmp slt i32 %414, 0
  br i1 %415, label %416, label %425

416:                                              ; preds = %407
  %417 = load ptr, ptr %375, align 4
  br label %418

418:                                              ; preds = %416, %402
  %419 = phi ptr [ %417, %416 ], [ %403, %402 ]
  %420 = phi i32 [ %414, %416 ], [ -5, %402 ]
  %421 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %419, i32 0, i32 2
  %422 = load ptr, ptr %421, align 4
  %423 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %348, i32 0, i32 1
  %424 = load ptr, ptr %423, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %422, ptr noundef nonnull @.str.52, ptr noundef %424, i32 noundef %420) #22
  br label %425

425:                                              ; preds = %418, %407, %398
  %426 = load i32, ptr %342, align 4
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %457, label %428

428:                                              ; preds = %453, %425
  %429 = phi i32 [ %454, %453 ], [ 0, %425 ]
  %430 = getelementptr %struct.snd_soc_dapm_widget_list, ptr %342, i32 0, i32 1, i32 %429
  %431 = load ptr, ptr %430, align 4
  %432 = icmp eq ptr %431, null
  br i1 %432, label %457, label %433

433:                                              ; preds = %428
  %434 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %431, i32 0, i32 17
  %435 = load ptr, ptr %434, align 4
  %436 = icmp eq ptr %435, null
  br i1 %436, label %453, label %437

437:                                              ; preds = %433
  %438 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %431, i32 0, i32 16
  %439 = load i16, ptr %438, align 4
  %440 = and i16 %439, 32
  %441 = icmp eq i16 %440, 0
  br i1 %441, label %453, label %442

442:                                              ; preds = %437
  %443 = load ptr, ptr %326, align 4
  %444 = call i32 %435(ptr noundef nonnull %431, ptr noundef %443, i32 noundef 32) #20
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %453, label %446

446:                                              ; preds = %442
  %447 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %431, i32 0, i32 4
  %448 = load ptr, ptr %447, align 4
  %449 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %448, i32 0, i32 2
  %450 = load ptr, ptr %449, align 4
  %451 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %431, i32 0, i32 1
  %452 = load ptr, ptr %451, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %450, ptr noundef nonnull @.str.53, ptr noundef %452, i32 noundef %444) #22
  br label %453

453:                                              ; preds = %446, %442, %437, %433
  %454 = add nuw i32 %429, 1
  %455 = load i32, ptr %342, align 4
  %456 = icmp ult i32 %454, %455
  br i1 %456, label %428, label %457

457:                                              ; preds = %453, %428, %425, %345, %340, %335, %324
  call fastcc void @dapm_seq_run(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %1, i1 noundef zeroext true)
  %458 = load ptr, ptr %26, align 4
  %459 = icmp eq ptr %458, %26
  br i1 %459, label %474, label %460

460:                                              ; preds = %471, %457
  %461 = phi ptr [ %472, %471 ], [ %458, %457 ]
  %462 = getelementptr i8, ptr %461, i32 -24
  %463 = icmp eq ptr %462, %291
  br i1 %463, label %471, label %464

464:                                              ; preds = %460
  %465 = load i32, ptr %462, align 4
  %466 = getelementptr i8, ptr %461, i32 -4
  %467 = load i32, ptr %466, align 4
  %468 = icmp eq i32 %465, %467
  br i1 %468, label %471, label %469

469:                                              ; preds = %464
  %470 = call i64 @async_schedule_node_domain(ptr noundef nonnull @dapm_post_sequence_async, ptr noundef %462, i32 noundef -1, ptr noundef nonnull %5) #20
  br label %471

471:                                              ; preds = %469, %464, %460
  %472 = load ptr, ptr %461, align 4
  %473 = icmp eq ptr %472, %26
  br i1 %473, label %474, label %460

474:                                              ; preds = %471, %457
  call void @async_synchronize_full_domain(ptr noundef nonnull %5) #20
  call void @dapm_post_sequence_async(ptr noundef %291, i64 noundef 0)
  %475 = load ptr, ptr %26, align 4
  %476 = icmp eq ptr %475, %26
  br i1 %476, label %488, label %477

477:                                              ; preds = %485, %474
  %478 = phi ptr [ %486, %485 ], [ %475, %474 ]
  %479 = getelementptr i8, ptr %478, i32 -12
  %480 = load ptr, ptr %479, align 4
  %481 = icmp eq ptr %480, null
  br i1 %481, label %485, label %482

482:                                              ; preds = %477
  %483 = call i32 @snd_soc_component_stream_event(ptr noundef nonnull %480, i32 noundef %1) #20
  %484 = icmp slt i32 %483, 0
  br i1 %484, label %514, label %485

485:                                              ; preds = %482, %477
  %486 = load ptr, ptr %478, align 4
  %487 = icmp eq ptr %486, %26
  br i1 %487, label %488, label %477

488:                                              ; preds = %485, %474
  %489 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %490 = load ptr, ptr %489, align 4
  %491 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 56
  %492 = load i32, ptr %491, align 4
  call void (ptr, i32, ptr, ...) @pop_dbg(ptr noundef %490, i32 noundef %492, ptr noundef nonnull @.str.32, i32 noundef %492)
  %493 = load i32, ptr %491, align 4
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %498, label %495

495:                                              ; preds = %488
  %496 = call i32 @__msecs_to_jiffies(i32 noundef %493) #20
  %497 = call i32 @schedule_timeout_uninterruptible(i32 noundef %496) #20
  br label %498

498:                                              ; preds = %495, %488
  %499 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_dapm_done, i32 0, i32 1), align 4
  %500 = icmp sgt i32 %499, 0
  br i1 %500, label %501, label %514

501:                                              ; preds = %498
  %502 = tail call ptr @llvm.thread.pointer() #20
  %503 = getelementptr inbounds %struct.thread_info, ptr %502, i32 0, i32 2
  %504 = load i32, ptr %503, align 8
  %505 = lshr i32 %504, 5
  %506 = getelementptr i32, ptr @__cpu_online_mask, i32 %505
  %507 = load volatile i32, ptr %506, align 4
  %508 = and i32 %504, 31
  %509 = shl nuw i32 1, %508
  %510 = and i32 %509, %507
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %514, label %512

512:                                              ; preds = %501
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !21
  %513 = call i32 @__traceiter_snd_soc_dapm_done(ptr noundef null, ptr noundef %0) #20
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !22
  br label %514

514:                                              ; preds = %512, %501, %498, %482
  %515 = phi i32 [ 0, %498 ], [ 0, %501 ], [ 0, %512 ], [ %483, %482 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret i32 %515
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_sync(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %4) #20
  %5 = load ptr, ptr %2, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 57
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = tail call fastcc i32 @dapm_power_widgets(ptr noundef nonnull %5, i32 noundef 0) #20
  %14 = load ptr, ptr %2, align 4
  br label %15

15:                                               ; preds = %12, %7, %1
  %16 = phi ptr [ %14, %12 ], [ %5, %7 ], [ null, %1 ]
  %17 = phi i32 [ %13, %12 ], [ 0, %7 ], [ 0, %1 ]
  %18 = getelementptr inbounds %struct.snd_soc_card, ptr %16, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %18) #20
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_update_dai(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %8) #20
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %10, 0
  %14 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 5
  %15 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 6
  %16 = select i1 %13, ptr %14, ptr %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %17, i32 0, i32 22
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %30, label %23

23:                                               ; preds = %23, %19
  %24 = phi ptr [ %28, %23 ], [ %21, %19 ]
  %25 = getelementptr i8, ptr %24, i32 -20
  %26 = getelementptr i8, ptr %24, i32 -12
  %27 = load ptr, ptr %26, align 4
  tail call fastcc void @dapm_update_dai_chan(ptr noundef %25, ptr noundef %27, i32 noundef %12) #20
  %28 = load ptr, ptr %24, align 4
  %29 = icmp eq ptr %28, %20
  br i1 %29, label %30, label %23

30:                                               ; preds = %23, %19
  %31 = getelementptr %struct.snd_soc_dapm_widget, ptr %17, i32 0, i32 22, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %41, label %34

34:                                               ; preds = %34, %30
  %35 = phi ptr [ %39, %34 ], [ %32, %30 ]
  %36 = getelementptr i8, ptr %35, i32 -28
  %37 = getelementptr i8, ptr %35, i32 -24
  %38 = load ptr, ptr %37, align 4
  tail call fastcc void @dapm_update_dai_chan(ptr noundef %36, ptr noundef %38, i32 noundef %12) #20
  %39 = load ptr, ptr %35, align 4
  %40 = icmp eq ptr %39, %31
  br i1 %40, label %41, label %34

41:                                               ; preds = %34, %30, %3
  %42 = load ptr, ptr %6, align 4
  %43 = getelementptr inbounds %struct.snd_soc_card, ptr %42, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %43) #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_add_routes(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca [80 x i8], align 1
  %5 = alloca [80 x i8], align 1
  %6 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %8) #20
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %10, label %210

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 8
  %13 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 7
  %14 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 2
  br label %15

15:                                               ; preds = %205, %10
  %16 = phi i32 [ 0, %10 ], [ %206, %205 ]
  %17 = phi i32 [ 0, %10 ], [ %208, %205 ]
  %18 = phi ptr [ %1, %10 ], [ %207, %205 ]
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %4, i8 0, i32 80, i1 false) #20, !annotation !13
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %5, i8 0, i32 80, i1 false) #20, !annotation !13
  %19 = load ptr, ptr %11, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.snd_soc_component, ptr %19, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %18, align 4
  %27 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 80, ptr noundef nonnull @.str.9, ptr noundef nonnull %23, ptr noundef %26) #20
  %28 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %18, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 80, ptr noundef nonnull @.str.9, ptr noundef nonnull %23, ptr noundef %29) #20
  br label %35

31:                                               ; preds = %21, %15
  %32 = load ptr, ptr %18, align 4
  %33 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %18, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = phi ptr [ %4, %25 ], [ %32, %31 ]
  %37 = phi ptr [ %5, %25 ], [ %34, %31 ]
  %38 = load ptr, ptr %12, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %66, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %38, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %42, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.snd_soc_card, ptr %44, i32 0, i32 46
  %46 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %38, i32 0, i32 3
  %47 = icmp eq ptr %46, %45
  br i1 %47, label %66, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %38, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 @strcmp(ptr noundef %37, ptr noundef %50) #20
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr %46, align 4
  %55 = icmp eq ptr %54, %45
  br i1 %55, label %66, label %56

56:                                               ; preds = %53
  %57 = getelementptr i8, ptr %54, i32 -12
  %58 = getelementptr i8, ptr %54, i32 -8
  %59 = load ptr, ptr %58, align 4
  %60 = call i32 @strcmp(ptr noundef %37, ptr noundef %59) #20
  %61 = icmp eq i32 %60, 0
  br label %62

62:                                               ; preds = %56, %48
  %63 = phi ptr [ %38, %48 ], [ %57, %56 ]
  %64 = phi i1 [ %52, %48 ], [ %61, %56 ]
  %65 = select i1 %64, ptr %63, ptr null
  br label %66

66:                                               ; preds = %62, %53, %40, %35
  %67 = phi ptr [ null, %35 ], [ %65, %62 ], [ null, %40 ], [ null, %53 ]
  %68 = load ptr, ptr %13, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %99, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %68, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %72, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.snd_soc_card, ptr %74, i32 0, i32 46
  %76 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %68, i32 0, i32 3
  %77 = icmp eq ptr %76, %75
  br i1 %77, label %99, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %68, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = call i32 @strcmp(ptr noundef %36, ptr noundef %80) #20
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %78
  %84 = load ptr, ptr %76, align 4
  %85 = icmp eq ptr %84, %75
  br i1 %85, label %99, label %86

86:                                               ; preds = %83
  %87 = getelementptr i8, ptr %84, i32 -12
  %88 = getelementptr i8, ptr %84, i32 -8
  %89 = load ptr, ptr %88, align 4
  %90 = call i32 @strcmp(ptr noundef %36, ptr noundef %89) #20
  %91 = icmp eq i32 %90, 0
  br label %92

92:                                               ; preds = %86, %78
  %93 = phi ptr [ %68, %78 ], [ %87, %86 ]
  %94 = phi i1 [ %82, %78 ], [ %91, %86 ]
  %95 = select i1 %94, ptr %93, ptr null
  %96 = icmp ne ptr %95, null
  %97 = icmp ne ptr %67, null
  %98 = select i1 %96, i1 %97, i1 false
  br i1 %98, label %180, label %99

99:                                               ; preds = %92, %83, %70, %66
  %100 = phi ptr [ %95, %92 ], [ null, %66 ], [ null, %70 ], [ null, %83 ]
  %101 = load ptr, ptr %6, align 4
  %102 = getelementptr inbounds %struct.snd_soc_card, ptr %101, i32 0, i32 46
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, %102
  br i1 %104, label %161, label %105

105:                                              ; preds = %150, %99
  %106 = phi ptr [ %157, %150 ], [ %103, %99 ]
  %107 = phi ptr [ %156, %150 ], [ %67, %99 ]
  %108 = phi ptr [ %155, %150 ], [ %100, %99 ]
  %109 = phi i32 [ %154, %150 ], [ 0, %99 ]
  %110 = phi i32 [ %153, %150 ], [ 0, %99 ]
  %111 = phi ptr [ %152, %150 ], [ null, %99 ]
  %112 = phi ptr [ %151, %150 ], [ null, %99 ]
  %113 = getelementptr i8, ptr %106, i32 -12
  %114 = icmp eq ptr %108, null
  br i1 %114, label %115, label %132

115:                                              ; preds = %105
  %116 = getelementptr i8, ptr %106, i32 -8
  %117 = load ptr, ptr %116, align 4
  %118 = call i32 @strcmp(ptr noundef %117, ptr noundef %36) #20
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %115
  %121 = getelementptr i8, ptr %106, i32 8
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, %0
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = icmp eq ptr %107, null
  br i1 %125, label %126, label %161

126:                                              ; preds = %124, %120
  %127 = phi ptr [ %113, %124 ], [ null, %120 ]
  %128 = add i32 %110, 1
  %129 = icmp ugt i32 %128, 1
  br i1 %129, label %130, label %150

130:                                              ; preds = %126
  %131 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %131, ptr noundef nonnull @.str.59, ptr noundef %117) #22
  br label %150

132:                                              ; preds = %115, %105
  %133 = icmp eq ptr %107, null
  br i1 %133, label %134, label %150

134:                                              ; preds = %132
  %135 = getelementptr i8, ptr %106, i32 -8
  %136 = load ptr, ptr %135, align 4
  %137 = call i32 @strcmp(ptr noundef %136, ptr noundef %37) #20
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %134
  %140 = getelementptr i8, ptr %106, i32 8
  %141 = load ptr, ptr %140, align 4
  %142 = icmp ne ptr %141, %0
  %143 = select i1 %142, i1 true, i1 %114
  %144 = select i1 %142, ptr null, ptr %113
  br i1 %143, label %145, label %161

145:                                              ; preds = %139
  %146 = add i32 %109, 1
  %147 = icmp ugt i32 %146, 1
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %149, ptr noundef nonnull @.str.60, ptr noundef %136) #22
  br label %150

150:                                              ; preds = %148, %145, %134, %132, %130, %126
  %151 = phi ptr [ %112, %132 ], [ %112, %134 ], [ %113, %148 ], [ %113, %145 ], [ %112, %130 ], [ %112, %126 ]
  %152 = phi ptr [ %111, %132 ], [ %111, %134 ], [ %111, %148 ], [ %111, %145 ], [ %113, %130 ], [ %113, %126 ]
  %153 = phi i32 [ %110, %132 ], [ %110, %134 ], [ %110, %148 ], [ %110, %145 ], [ %128, %130 ], [ %128, %126 ]
  %154 = phi i32 [ %109, %132 ], [ %109, %134 ], [ %146, %148 ], [ %146, %145 ], [ %109, %130 ], [ %109, %126 ]
  %155 = phi ptr [ %108, %132 ], [ %108, %134 ], [ %108, %148 ], [ %108, %145 ], [ %127, %130 ], [ %127, %126 ]
  %156 = phi ptr [ %107, %132 ], [ null, %134 ], [ %144, %148 ], [ %144, %145 ], [ %107, %130 ], [ %107, %126 ]
  %157 = load ptr, ptr %106, align 4
  %158 = load ptr, ptr %6, align 4
  %159 = getelementptr inbounds %struct.snd_soc_card, ptr %158, i32 0, i32 46
  %160 = icmp eq ptr %157, %159
  br i1 %160, label %161, label %105

161:                                              ; preds = %150, %139, %124, %99
  %162 = phi ptr [ null, %99 ], [ %151, %150 ], [ %112, %124 ], [ %113, %139 ]
  %163 = phi ptr [ null, %99 ], [ %152, %150 ], [ %113, %124 ], [ %111, %139 ]
  %164 = phi ptr [ %100, %99 ], [ %155, %150 ], [ %113, %124 ], [ %108, %139 ]
  %165 = phi ptr [ %67, %99 ], [ %156, %150 ], [ %107, %124 ], [ %113, %139 ]
  %166 = icmp eq ptr %165, null
  %167 = select i1 %166, ptr %162, ptr %165
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %161
  %170 = load ptr, ptr %14, align 4
  %171 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %18, i32 0, i32 2
  %172 = load ptr, ptr %171, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %170, ptr noundef nonnull @.str.61, ptr noundef %172) #22
  br label %190

173:                                              ; preds = %161
  %174 = icmp eq ptr %164, null
  %175 = select i1 %174, ptr %163, ptr %164
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load ptr, ptr %14, align 4
  %179 = load ptr, ptr %18, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %178, ptr noundef nonnull @.str.62, ptr noundef %179) #22
  br label %190

180:                                              ; preds = %173, %92
  %181 = phi ptr [ %93, %92 ], [ %175, %173 ]
  %182 = phi ptr [ %67, %92 ], [ %167, %173 ]
  store ptr %181, ptr %13, align 4
  store ptr %182, ptr %12, align 4
  %183 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %18, i32 0, i32 1
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %18, i32 0, i32 3
  %186 = load ptr, ptr %185, align 4
  %187 = call fastcc i32 @snd_soc_dapm_add_path(ptr noundef %0, ptr noundef nonnull %182, ptr noundef %181, ptr noundef %184, ptr noundef %186) #20
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %180
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #20
  br label %205

190:                                              ; preds = %177, %169
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #20
  br label %195

191:                                              ; preds = %180
  %192 = load ptr, ptr %14, align 4
  %193 = load ptr, ptr %183, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %192, ptr noundef nonnull @.str.63, ptr noundef %37, ptr noundef %193, ptr noundef %36) #22
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #20
  %194 = icmp slt i32 %187, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %191, %190
  %196 = phi i32 [ -19, %190 ], [ %187, %191 ]
  %197 = load ptr, ptr %14, align 4
  %198 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %18, i32 0, i32 2
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %18, i32 0, i32 1
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  %203 = select i1 %202, ptr @.str.6, ptr %201
  %204 = load ptr, ptr %18, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %197, ptr noundef nonnull @.str.5, ptr noundef %199, ptr noundef nonnull %203, ptr noundef %204) #22
  br label %205

205:                                              ; preds = %195, %191, %189
  %206 = phi i32 [ %196, %195 ], [ %16, %191 ], [ %16, %189 ]
  %207 = getelementptr %struct.snd_soc_dapm_route, ptr %18, i32 1
  %208 = add nuw nsw i32 %17, 1
  %209 = icmp eq i32 %208, %2
  br i1 %209, label %210, label %15

210:                                              ; preds = %205, %3
  %211 = phi i32 [ 0, %3 ], [ %206, %205 ]
  %212 = load ptr, ptr %6, align 4
  %213 = getelementptr inbounds %struct.snd_soc_card, ptr %212, i32 0, i32 10
  call void @mutex_unlock(ptr noundef %213) #20
  ret i32 %211
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_del_routes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca [80 x i8], align 1
  %5 = alloca [80 x i8], align 1
  %6 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %8) #20
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %10, label %237

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 2
  %12 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 3
  br label %13

13:                                               ; preds = %233, %10
  %14 = phi i32 [ 0, %10 ], [ %235, %233 ]
  %15 = phi ptr [ %1, %10 ], [ %234, %233 ]
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %4, i8 0, i32 80, i1 false) #20, !annotation !13
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %5, i8 0, i32 80, i1 false) #20, !annotation !13
  %16 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.64) #22
  br label %233

21:                                               ; preds = %13
  %22 = load ptr, ptr %12, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.snd_soc_component, ptr %22, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %15, align 4
  %30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 80, ptr noundef nonnull @.str.9, ptr noundef nonnull %26, ptr noundef %29) #20
  %31 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %15, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 80, ptr noundef nonnull @.str.9, ptr noundef nonnull %26, ptr noundef %32) #20
  br label %38

34:                                               ; preds = %24, %21
  %35 = load ptr, ptr %15, align 4
  %36 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %15, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = phi ptr [ %5, %28 ], [ %37, %34 ]
  %40 = phi ptr [ %4, %28 ], [ %35, %34 ]
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr inbounds %struct.snd_soc_card, ptr %41, i32 0, i32 47
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %42
  br i1 %44, label %231, label %45

45:                                               ; preds = %60, %38
  %46 = phi ptr [ %61, %60 ], [ %43, %38 ]
  %47 = getelementptr i8, ptr %46, i32 -40
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 @strcmp(ptr noundef %50, ptr noundef %39) #20
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = getelementptr i8, ptr %46, i32 -36
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 @strcmp(ptr noundef %57, ptr noundef %40) #20
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %53, %45
  %61 = load ptr, ptr %46, align 4
  %62 = icmp eq ptr %61, %42
  br i1 %62, label %231, label %45

63:                                               ; preds = %53
  %64 = getelementptr i8, ptr %46, i32 -44
  %65 = icmp eq ptr %64, null
  br i1 %65, label %231, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %48, i32 0, i32 25
  %68 = load volatile ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %67
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %48, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %72, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.snd_soc_card, ptr %74, i32 0, i32 49
  %76 = getelementptr inbounds %struct.snd_soc_card, ptr %74, i32 0, i32 49, i32 1
  %77 = load ptr, ptr %76, align 4
  store ptr %67, ptr %76, align 4
  store ptr %75, ptr %67, align 4
  %78 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %48, i32 0, i32 25, i32 1
  store ptr %77, ptr %78, align 4
  store volatile ptr %67, ptr %77, align 4
  br label %79

79:                                               ; preds = %70, %66
  %80 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %55, i32 0, i32 25
  %81 = load volatile ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, %80
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %55, i32 0, i32 4
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %85, i32 0, i32 4
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.snd_soc_card, ptr %87, i32 0, i32 49
  %89 = getelementptr inbounds %struct.snd_soc_card, ptr %87, i32 0, i32 49, i32 1
  %90 = load ptr, ptr %89, align 4
  store ptr %80, ptr %89, align 4
  store ptr %88, ptr %80, align 4
  %91 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %55, i32 0, i32 25, i32 1
  store ptr %90, ptr %91, align 4
  store volatile ptr %80, ptr %90, align 4
  br label %92

92:                                               ; preds = %83, %79
  %93 = getelementptr i8, ptr %46, i32 -32
  %94 = load i8, ptr %93, align 4
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  call fastcc void @dapm_path_invalidate(ptr noundef nonnull %64) #20
  br label %98

98:                                               ; preds = %97, %92
  %99 = getelementptr i8, ptr %46, i32 -24
  %100 = getelementptr i8, ptr %46, i32 -20
  %101 = load ptr, ptr %100, align 4
  %102 = load ptr, ptr %99, align 4
  %103 = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  store ptr %101, ptr %103, align 4
  store volatile ptr %102, ptr %101, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %99, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %100, align 4
  %104 = getelementptr i8, ptr %46, i32 -16
  %105 = getelementptr i8, ptr %46, i32 -12
  %106 = load ptr, ptr %105, align 4
  %107 = load ptr, ptr %104, align 4
  %108 = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  store ptr %106, ptr %108, align 4
  store volatile ptr %107, ptr %106, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %104, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %105, align 4
  %109 = getelementptr i8, ptr %46, i32 -8
  %110 = getelementptr i8, ptr %46, i32 -4
  %111 = load ptr, ptr %110, align 4
  %112 = load ptr, ptr %109, align 4
  %113 = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  store ptr %111, ptr %113, align 4
  store volatile ptr %112, ptr %111, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %109, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %110, align 4
  %114 = getelementptr i8, ptr %46, i32 4
  %115 = load ptr, ptr %114, align 4
  %116 = load ptr, ptr %46, align 4
  %117 = getelementptr inbounds %struct.list_head, ptr %116, i32 0, i32 1
  store ptr %115, ptr %117, align 4
  store volatile ptr %116, ptr %115, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %46, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %114, align 4
  call void @kfree(ptr noundef nonnull %64) #20
  %118 = load i32, ptr %48, align 4
  switch i32 %118, label %174 [
    i32 0, label %130
    i32 1, label %149
    i32 14, label %119
  ]

119:                                              ; preds = %98
  %120 = getelementptr %struct.snd_soc_dapm_widget, ptr %48, i32 0, i32 22, i32 0
  %121 = load volatile ptr, ptr %120, align 4
  %122 = icmp ne ptr %121, %120
  %123 = zext i1 %122 to i16
  %124 = getelementptr %struct.snd_soc_dapm_widget, ptr %48, i32 0, i32 22, i32 1
  %125 = load volatile ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, %124
  %127 = select i1 %126, i16 0, i16 2
  %128 = or i16 %127, %123
  %129 = shl nuw nsw i16 %128, 9
  br label %168

130:                                              ; preds = %98
  %131 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %48, i32 0, i32 4
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %132, i32 0, i32 4
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.snd_soc_card, ptr %134, i32 0, i32 57
  %136 = load i8, ptr %135, align 4
  %137 = and i8 %136, 4
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %174

139:                                              ; preds = %130
  %140 = getelementptr %struct.snd_soc_dapm_widget, ptr %48, i32 0, i32 22, i32 1
  br label %141

141:                                              ; preds = %145, %139
  %142 = phi ptr [ %140, %139 ], [ %143, %145 ]
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, %140
  br i1 %144, label %168, label %145

145:                                              ; preds = %141
  %146 = getelementptr i8, ptr %143, i32 -24
  %147 = load ptr, ptr %146, align 4
  %148 = load i32, ptr %147, align 4
  switch i32 %148, label %141 [
    i32 10, label %168
    i32 11, label %168
    i32 14, label %168
    i32 1, label %168
  ]

149:                                              ; preds = %98
  %150 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %48, i32 0, i32 4
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %151, i32 0, i32 4
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.snd_soc_card, ptr %153, i32 0, i32 57
  %155 = load i8, ptr %154, align 4
  %156 = and i8 %155, 4
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %174

158:                                              ; preds = %149
  %159 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %48, i32 0, i32 22
  br label %160

160:                                              ; preds = %164, %158
  %161 = phi ptr [ %159, %158 ], [ %162, %164 ]
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, %159
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = getelementptr i8, ptr %162, i32 -12
  %166 = load ptr, ptr %165, align 4
  %167 = load i32, ptr %166, align 4
  switch i32 %167, label %160 [
    i32 13, label %168
    i32 12, label %168
    i32 14, label %168
    i32 0, label %168
  ]

168:                                              ; preds = %164, %164, %164, %164, %160, %145, %145, %145, %145, %141, %119
  %169 = phi i16 [ %129, %119 ], [ 0, %145 ], [ 0, %145 ], [ 0, %145 ], [ 0, %145 ], [ 512, %141 ], [ 0, %164 ], [ 0, %164 ], [ 0, %164 ], [ 0, %164 ], [ 1024, %160 ]
  %170 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %48, i32 0, i32 13
  %171 = load i16, ptr %170, align 4
  %172 = and i16 %171, -1537
  %173 = or i16 %172, %169
  store i16 %173, ptr %170, align 4
  br label %174

174:                                              ; preds = %168, %149, %130, %98
  %175 = load i32, ptr %55, align 4
  switch i32 %175, label %233 [
    i32 0, label %187
    i32 1, label %206
    i32 14, label %176
  ]

176:                                              ; preds = %174
  %177 = getelementptr %struct.snd_soc_dapm_widget, ptr %55, i32 0, i32 22, i32 0
  %178 = load volatile ptr, ptr %177, align 4
  %179 = icmp ne ptr %178, %177
  %180 = zext i1 %179 to i16
  %181 = getelementptr %struct.snd_soc_dapm_widget, ptr %55, i32 0, i32 22, i32 1
  %182 = load volatile ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, %181
  %184 = select i1 %183, i16 0, i16 2
  %185 = or i16 %184, %180
  %186 = shl nuw nsw i16 %185, 9
  br label %225

187:                                              ; preds = %174
  %188 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %55, i32 0, i32 4
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %189, i32 0, i32 4
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr inbounds %struct.snd_soc_card, ptr %191, i32 0, i32 57
  %193 = load i8, ptr %192, align 4
  %194 = and i8 %193, 4
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %196, label %233

196:                                              ; preds = %187
  %197 = getelementptr %struct.snd_soc_dapm_widget, ptr %55, i32 0, i32 22, i32 1
  br label %198

198:                                              ; preds = %202, %196
  %199 = phi ptr [ %197, %196 ], [ %200, %202 ]
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, %197
  br i1 %201, label %225, label %202

202:                                              ; preds = %198
  %203 = getelementptr i8, ptr %200, i32 -24
  %204 = load ptr, ptr %203, align 4
  %205 = load i32, ptr %204, align 4
  switch i32 %205, label %198 [
    i32 10, label %225
    i32 11, label %225
    i32 14, label %225
    i32 1, label %225
  ]

206:                                              ; preds = %174
  %207 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %55, i32 0, i32 4
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %208, i32 0, i32 4
  %210 = load ptr, ptr %209, align 4
  %211 = getelementptr inbounds %struct.snd_soc_card, ptr %210, i32 0, i32 57
  %212 = load i8, ptr %211, align 4
  %213 = and i8 %212, 4
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %215, label %233

215:                                              ; preds = %206
  %216 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %55, i32 0, i32 22
  br label %217

217:                                              ; preds = %221, %215
  %218 = phi ptr [ %216, %215 ], [ %219, %221 ]
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, %216
  br i1 %220, label %225, label %221

221:                                              ; preds = %217
  %222 = getelementptr i8, ptr %219, i32 -12
  %223 = load ptr, ptr %222, align 4
  %224 = load i32, ptr %223, align 4
  switch i32 %224, label %217 [
    i32 13, label %225
    i32 12, label %225
    i32 14, label %225
    i32 0, label %225
  ]

225:                                              ; preds = %221, %221, %221, %221, %217, %202, %202, %202, %202, %198, %176
  %226 = phi i16 [ %186, %176 ], [ 0, %202 ], [ 0, %202 ], [ 0, %202 ], [ 0, %202 ], [ 512, %198 ], [ 0, %221 ], [ 0, %221 ], [ 0, %221 ], [ 0, %221 ], [ 1024, %217 ]
  %227 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %55, i32 0, i32 13
  %228 = load i16, ptr %227, align 4
  %229 = and i16 %228, -1537
  %230 = or i16 %229, %226
  store i16 %230, ptr %227, align 4
  br label %233

231:                                              ; preds = %63, %60, %38
  %232 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %232, ptr noundef nonnull @.str.66, ptr noundef %39, ptr noundef %40) #22
  br label %233

233:                                              ; preds = %231, %225, %206, %187, %174, %19
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #20
  %234 = getelementptr %struct.snd_soc_dapm_route, ptr %15, i32 1
  %235 = add nuw nsw i32 %14, 1
  %236 = icmp eq i32 %235, %2
  br i1 %236, label %237, label %13

237:                                              ; preds = %233, %3
  %238 = load ptr, ptr %6, align 4
  %239 = getelementptr inbounds %struct.snd_soc_card, ptr %238, i32 0, i32 10
  call void @mutex_unlock(ptr noundef %239) #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_weak_routes(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca [80 x i8], align 1
  %5 = alloca [80 x i8], align 1
  %6 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %8) #20
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %10, label %146

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 2
  br label %13

13:                                               ; preds = %141, %10
  %14 = phi i32 [ 0, %10 ], [ %142, %141 ]
  %15 = phi i32 [ 0, %10 ], [ %144, %141 ]
  %16 = phi ptr [ %1, %10 ], [ %143, %141 ]
  %17 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %5, i8 0, i32 80, i1 false) #20, !annotation !13
  %19 = load ptr, ptr %11, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.snd_soc_component, ptr %19, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 80, ptr noundef nonnull @.str.9, ptr noundef nonnull %23, ptr noundef %18) #20
  br label %27

27:                                               ; preds = %25, %21, %13
  %28 = phi ptr [ %5, %25 ], [ %18, %21 ], [ %18, %13 ]
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr inbounds %struct.snd_soc_card, ptr %29, i32 0, i32 46
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %49, label %33

33:                                               ; preds = %45, %27
  %34 = phi ptr [ %47, %45 ], [ %31, %27 ]
  %35 = phi ptr [ %46, %45 ], [ null, %27 ]
  %36 = getelementptr i8, ptr %34, i32 -8
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 @strcmp(ptr noundef %37, ptr noundef %28) #20
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = getelementptr i8, ptr %34, i32 -12
  %42 = getelementptr i8, ptr %34, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40, %33
  %46 = phi ptr [ %35, %33 ], [ %41, %40 ]
  %47 = load ptr, ptr %34, align 4
  %48 = icmp eq ptr %47, %30
  br i1 %48, label %49, label %33

49:                                               ; preds = %45, %40, %27
  %50 = phi ptr [ null, %27 ], [ %41, %40 ], [ %46, %45 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #20
  %51 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %4, i8 0, i32 80, i1 false) #20, !annotation !13
  %52 = load ptr, ptr %11, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.snd_soc_component, ptr %52, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 80, ptr noundef nonnull @.str.9, ptr noundef nonnull %56, ptr noundef %51) #20
  %60 = load ptr, ptr %6, align 4
  %61 = getelementptr inbounds %struct.snd_soc_card, ptr %60, i32 0, i32 46
  %62 = load ptr, ptr %61, align 4
  br label %63

63:                                               ; preds = %58, %54, %49
  %64 = phi ptr [ %62, %58 ], [ %31, %54 ], [ %31, %49 ]
  %65 = phi ptr [ %60, %58 ], [ %29, %54 ], [ %29, %49 ]
  %66 = phi ptr [ %4, %58 ], [ %51, %54 ], [ %51, %49 ]
  %67 = getelementptr inbounds %struct.snd_soc_card, ptr %65, i32 0, i32 46
  %68 = icmp eq ptr %64, %67
  br i1 %68, label %88, label %69

69:                                               ; preds = %81, %63
  %70 = phi ptr [ %83, %81 ], [ %64, %63 ]
  %71 = phi ptr [ %82, %81 ], [ null, %63 ]
  %72 = getelementptr i8, ptr %70, i32 -8
  %73 = load ptr, ptr %72, align 4
  %74 = call i32 @strcmp(ptr noundef %73, ptr noundef %66) #20
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = getelementptr i8, ptr %70, i32 -12
  %78 = getelementptr i8, ptr %70, i32 8
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, %0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76, %69
  %82 = phi ptr [ %71, %69 ], [ %77, %76 ]
  %83 = load ptr, ptr %70, align 4
  %84 = icmp eq ptr %83, %67
  br i1 %84, label %85, label %69

85:                                               ; preds = %81, %76
  %86 = phi ptr [ %77, %76 ], [ %82, %81 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #20
  %87 = icmp eq ptr %50, null
  br i1 %87, label %90, label %93

88:                                               ; preds = %63
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #20
  %89 = icmp eq ptr %50, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %88, %85
  %91 = load ptr, ptr %12, align 4
  %92 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.67, ptr noundef %92) #22
  br label %141

93:                                               ; preds = %85
  %94 = icmp eq ptr %86, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %93, %88
  %96 = load ptr, ptr %12, align 4
  %97 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.68, ptr noundef %97) #22
  br label %141

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %16, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %16, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %102, %98
  %107 = load ptr, ptr %12, align 4
  %108 = load ptr, ptr %17, align 4
  %109 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %107, ptr noundef nonnull @.str.69, ptr noundef %108, ptr noundef %109) #22
  br label %110

110:                                              ; preds = %106, %102
  %111 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %50, i32 0, i32 22
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, %111
  br i1 %113, label %131, label %114

114:                                              ; preds = %125, %110
  %115 = phi ptr [ %127, %125 ], [ %112, %110 ]
  %116 = phi i32 [ %126, %125 ], [ 0, %110 ]
  %117 = getelementptr i8, ptr %115, i32 -12
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, %86
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = getelementptr i8, ptr %115, i32 -8
  %122 = load i8, ptr %121, align 4
  %123 = or i8 %122, 4
  store i8 %123, ptr %121, align 4
  %124 = add i32 %116, 1
  br label %125

125:                                              ; preds = %120, %114
  %126 = phi i32 [ %124, %120 ], [ %116, %114 ]
  %127 = load ptr, ptr %115, align 4
  %128 = icmp eq ptr %127, %111
  br i1 %128, label %129, label %114

129:                                              ; preds = %125
  %130 = icmp eq i32 %126, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %129, %110
  %132 = load ptr, ptr %12, align 4
  %133 = load ptr, ptr %17, align 4
  %134 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.70, ptr noundef %133, ptr noundef %134) #22
  br label %141

135:                                              ; preds = %129
  %136 = icmp sgt i32 %126, 1
  br i1 %136, label %137, label %141

137:                                              ; preds = %135
  %138 = load ptr, ptr %12, align 4
  %139 = load ptr, ptr %17, align 4
  %140 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %138, ptr noundef nonnull @.str.71, i32 noundef %126, ptr noundef %139, ptr noundef %140) #22
  br label %141

141:                                              ; preds = %137, %135, %131, %95, %90
  %142 = phi i32 [ -19, %95 ], [ -19, %90 ], [ %14, %137 ], [ %14, %135 ], [ %14, %131 ]
  %143 = getelementptr %struct.snd_soc_dapm_route, ptr %16, i32 1
  %144 = add nuw nsw i32 %15, 1
  %145 = icmp eq i32 %144, %2
  br i1 %145, label %146, label %13

146:                                              ; preds = %141, %3
  %147 = phi i32 [ 0, %3 ], [ %142, %141 ]
  %148 = load ptr, ptr %6, align 4
  %149 = getelementptr inbounds %struct.snd_soc_card, ptr %148, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %149) #20
  ret i32 %147
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_new_widgets(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %2) #20
  %3 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 46
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %257, label %6

6:                                                ; preds = %254, %1
  %7 = phi ptr [ %255, %254 ], [ %4, %1 ]
  %8 = getelementptr i8, ptr %7, i32 -12
  %9 = getelementptr i8, ptr %7, i32 44
  %10 = load i16, ptr %9, align 4
  %11 = and i16 %10, 8
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %254

13:                                               ; preds = %6
  %14 = getelementptr i8, ptr %7, i32 64
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 4) #20
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %20, label %22, !prof !23

20:                                               ; preds = %17
  %21 = getelementptr i8, ptr %7, i32 72
  store ptr null, ptr %21, align 4
  br label %259

22:                                               ; preds = %17
  %23 = extractvalue { i32, i1 } %18, 0
  %24 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #21
  %25 = getelementptr i8, ptr %7, i32 72
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %259, label %27

27:                                               ; preds = %22, %13
  %28 = load i32, ptr %8, align 4
  switch i32 %28, label %200 [
    i32 15, label %29
    i32 4, label %29
    i32 5, label %29
    i32 2, label %93
    i32 3, label %93
    i32 6, label %146
    i32 33, label %146
    i32 7, label %146
    i32 29, label %157
  ]

29:                                               ; preds = %27, %27, %27
  %30 = load i32, ptr %14, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %200

32:                                               ; preds = %29
  %33 = getelementptr i8, ptr %7, i32 120
  %34 = getelementptr i8, ptr %7, i32 68
  %35 = getelementptr i8, ptr %7, i32 72
  br label %36

36:                                               ; preds = %89, %32
  %37 = phi i32 [ %30, %32 ], [ %90, %89 ]
  %38 = phi i32 [ 0, %32 ], [ %91, %89 ]
  %39 = load ptr, ptr %33, align 4
  %40 = icmp eq ptr %39, %33
  br i1 %40, label %89, label %41

41:                                               ; preds = %84, %36
  %42 = phi ptr [ %85, %84 ], [ %39, %36 ]
  %43 = getelementptr i8, ptr %42, i32 -28
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %34, align 4
  %46 = getelementptr %struct.snd_kcontrol_new, ptr %45, i32 %38, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %44, %47
  br i1 %48, label %49, label %84

49:                                               ; preds = %41
  %50 = load ptr, ptr %35, align 4
  %51 = getelementptr ptr, ptr %50, i32 %38
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = tail call fastcc i32 @dapm_create_or_share_kcontrol(ptr noundef %8, i32 noundef %38) #20
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %200, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %35, align 4
  %59 = getelementptr ptr, ptr %58, i32 %38
  %60 = load ptr, ptr %59, align 4
  br label %61

61:                                               ; preds = %57, %49
  %62 = phi ptr [ %60, %57 ], [ %52, %49 ]
  %63 = getelementptr inbounds %struct.snd_kcontrol, ptr %62, i32 0, i32 8
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %42, i32 8
  %66 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %64, i32 0, i32 2
  %67 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %64, i32 0, i32 2, i32 1
  %68 = load ptr, ptr %67, align 4
  store ptr %65, ptr %67, align 4
  store ptr %66, ptr %65, align 4
  %69 = getelementptr i8, ptr %42, i32 12
  store ptr %68, ptr %69, align 4
  store volatile ptr %65, ptr %68, align 4
  %70 = load ptr, ptr %35, align 4
  %71 = getelementptr ptr, ptr %70, i32 %38
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.snd_kcontrol, ptr %72, i32 0, i32 8
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %74, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %61
  %79 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %76, i32 0, i32 4
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i8, ptr %42, i32 -24
  %82 = load ptr, ptr %81, align 4
  %83 = tail call fastcc i32 @snd_soc_dapm_add_path(ptr noundef %80, ptr noundef nonnull %76, ptr noundef %82, ptr noundef null, ptr noundef null) #20
  br label %84

84:                                               ; preds = %78, %61, %41
  %85 = load ptr, ptr %42, align 4
  %86 = icmp eq ptr %85, %33
  br i1 %86, label %87, label %41

87:                                               ; preds = %84
  %88 = load i32, ptr %14, align 4
  br label %89

89:                                               ; preds = %87, %36
  %90 = phi i32 [ %88, %87 ], [ %37, %36 ]
  %91 = add nuw nsw i32 %38, 1
  %92 = icmp slt i32 %91, %90
  br i1 %92, label %36, label %200

93:                                               ; preds = %27, %27
  %94 = getelementptr i8, ptr %7, i32 8
  %95 = load ptr, ptr %94, align 4
  switch i32 %28, label %200 [
    i32 2, label %97
    i32 3, label %96
  ]

96:                                               ; preds = %93
  br label %97

97:                                               ; preds = %96, %93
  %98 = phi ptr [ @.str.76, %96 ], [ @.str.75, %93 ]
  %99 = phi i32 [ 0, %96 ], [ 1, %93 ]
  %100 = load i32, ptr %14, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %140

102:                                              ; preds = %97
  %103 = getelementptr %struct.snd_soc_dapm_widget, ptr %8, i32 0, i32 22, i32 %99
  %104 = load volatile ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, %103
  br i1 %105, label %140, label %106

106:                                              ; preds = %102
  %107 = tail call fastcc i32 @dapm_create_or_share_kcontrol(ptr noundef %8, i32 noundef 0) #20
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %200, label %109

109:                                              ; preds = %106
  %110 = mul nuw nsw i32 %99, -8
  %111 = add nsw i32 %110, -20
  %112 = load ptr, ptr %103, align 4
  %113 = getelementptr i8, ptr %112, i32 %111
  %114 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %113, i32 0, i32 4
  %115 = getelementptr [2 x %struct.list_head], ptr %114, i32 0, i32 %99
  %116 = icmp eq ptr %115, %103
  br i1 %116, label %200, label %117

117:                                              ; preds = %109
  %118 = getelementptr i8, ptr %7, i32 72
  br label %119

119:                                              ; preds = %134, %117
  %120 = phi ptr [ %115, %117 ], [ %138, %134 ]
  %121 = phi ptr [ %113, %117 ], [ %136, %134 ]
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %134, label %124

124:                                              ; preds = %119
  %125 = load ptr, ptr %118, align 4
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.snd_kcontrol, ptr %126, i32 0, i32 8
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %121, i32 0, i32 5
  %130 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %128, i32 0, i32 2
  %131 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %128, i32 0, i32 2, i32 1
  %132 = load ptr, ptr %131, align 4
  store ptr %129, ptr %131, align 4
  store ptr %130, ptr %129, align 4
  %133 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %121, i32 0, i32 5, i32 1
  store ptr %132, ptr %133, align 4
  store volatile ptr %129, ptr %132, align 4
  br label %134

134:                                              ; preds = %124, %119
  %135 = load ptr, ptr %120, align 4
  %136 = getelementptr i8, ptr %135, i32 %111
  %137 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %136, i32 0, i32 4
  %138 = getelementptr [2 x %struct.list_head], ptr %137, i32 0, i32 %99
  %139 = icmp eq ptr %138, %103
  br i1 %139, label %200, label %119

140:                                              ; preds = %102, %97
  %141 = phi ptr [ @.str.77, %97 ], [ @.str.78, %102 ]
  %142 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %95, i32 0, i32 2
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr i8, ptr %7, i32 -8
  %145 = load ptr, ptr %144, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull %141, ptr noundef nonnull %98, ptr noundef %145) #22
  br label %200

146:                                              ; preds = %27, %27, %27
  %147 = load i32, ptr %14, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %153, label %200

149:                                              ; preds = %153
  %150 = add nuw nsw i32 %154, 1
  %151 = load i32, ptr %14, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %200

153:                                              ; preds = %149, %146
  %154 = phi i32 [ %150, %149 ], [ 0, %146 ]
  %155 = tail call fastcc i32 @dapm_create_or_share_kcontrol(ptr noundef %8, i32 noundef %154) #20
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %200, label %149

157:                                              ; preds = %27
  %158 = getelementptr i8, ptr %7, i32 12
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %159, i32 0, i32 2
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %161, i32 0, i32 10
  %163 = load i32, ptr %162, align 4
  %164 = icmp ult i32 %163, 2
  br i1 %164, label %200, label %165

165:                                              ; preds = %157
  %166 = load i32, ptr %14, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %200

168:                                              ; preds = %165
  %169 = getelementptr i8, ptr %7, i32 8
  %170 = getelementptr i8, ptr %7, i32 68
  %171 = getelementptr i8, ptr %7, i32 -8
  %172 = getelementptr i8, ptr %7, i32 72
  br label %173

173:                                              ; preds = %193, %168
  %174 = phi i32 [ 0, %168 ], [ %197, %193 ]
  %175 = load ptr, ptr %169, align 4
  %176 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %175, i32 0, i32 4
  %177 = load ptr, ptr %176, align 4
  %178 = getelementptr inbounds %struct.snd_soc_card, ptr %177, i32 0, i32 7
  %179 = load ptr, ptr %178, align 4
  %180 = load ptr, ptr %170, align 4
  %181 = getelementptr %struct.snd_kcontrol_new, ptr %180, i32 %174
  %182 = load ptr, ptr %171, align 4
  %183 = tail call ptr @snd_soc_cnew(ptr noundef %181, ptr noundef %8, ptr noundef %182, ptr noundef null) #20
  %184 = tail call i32 @snd_ctl_add(ptr noundef %179, ptr noundef %183) #20
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %173
  %187 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %175, i32 0, i32 2
  %188 = load ptr, ptr %187, align 4
  %189 = load ptr, ptr %171, align 4
  %190 = load ptr, ptr %170, align 4
  %191 = getelementptr %struct.snd_kcontrol_new, ptr %190, i32 %174, i32 3
  %192 = load ptr, ptr %191, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %188, ptr noundef nonnull @.str.72, ptr noundef %189, ptr noundef %192, i32 noundef %184) #22
  br label %200

193:                                              ; preds = %173
  %194 = getelementptr inbounds %struct.snd_kcontrol, ptr %183, i32 0, i32 8
  store ptr %8, ptr %194, align 4
  %195 = load ptr, ptr %172, align 4
  %196 = getelementptr ptr, ptr %195, i32 %174
  store ptr %183, ptr %196, align 4
  %197 = add nuw nsw i32 %174, 1
  %198 = load i32, ptr %14, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %173, label %200

200:                                              ; preds = %193, %186, %165, %157, %153, %149, %146, %140, %134, %109, %106, %93, %89, %54, %29, %27
  %201 = getelementptr i8, ptr %7, i32 24
  %202 = load i32, ptr %201, align 4
  %203 = icmp sgt i32 %202, -1
  br i1 %203, label %204, label %227

204:                                              ; preds = %200
  %205 = getelementptr i8, ptr %7, i32 8
  %206 = load ptr, ptr %205, align 4
  %207 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %206, i32 0, i32 3
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %212, label %210

210:                                              ; preds = %204
  %211 = tail call i32 @snd_soc_component_read(ptr noundef nonnull %208, i32 noundef %202) #20
  br label %212

212:                                              ; preds = %210, %204
  %213 = phi i32 [ %211, %210 ], [ -5, %204 ]
  %214 = getelementptr i8, ptr %7, i32 28
  %215 = load i8, ptr %214, align 4
  %216 = zext i8 %215 to i32
  %217 = lshr i32 %213, %216
  %218 = getelementptr i8, ptr %7, i32 32
  %219 = load i32, ptr %218, align 4
  %220 = and i32 %217, %219
  %221 = getelementptr i8, ptr %7, i32 36
  %222 = load i32, ptr %221, align 4
  %223 = icmp eq i32 %220, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %212
  %225 = load i16, ptr %9, align 4
  %226 = or i16 %225, 1
  store i16 %226, ptr %9, align 4
  br label %227

227:                                              ; preds = %224, %212, %200
  %228 = load i16, ptr %9, align 4
  %229 = or i16 %228, 8
  store i16 %229, ptr %9, align 4
  %230 = getelementptr i8, ptr %7, i32 144
  %231 = load volatile ptr, ptr %230, align 4
  %232 = icmp eq ptr %231, %230
  br i1 %232, label %233, label %242

233:                                              ; preds = %227
  %234 = getelementptr i8, ptr %7, i32 8
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %235, i32 0, i32 4
  %237 = load ptr, ptr %236, align 4
  %238 = getelementptr inbounds %struct.snd_soc_card, ptr %237, i32 0, i32 49
  %239 = getelementptr inbounds %struct.snd_soc_card, ptr %237, i32 0, i32 49, i32 1
  %240 = load ptr, ptr %239, align 4
  store ptr %230, ptr %239, align 4
  store ptr %238, ptr %230, align 4
  %241 = getelementptr i8, ptr %7, i32 148
  store ptr %240, ptr %241, align 4
  store volatile ptr %230, ptr %240, align 4
  br label %242

242:                                              ; preds = %233, %227
  %243 = getelementptr i8, ptr %7, i32 8
  %244 = load ptr, ptr %243, align 4
  %245 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %244, i32 0, i32 9
  %246 = load ptr, ptr %245, align 4
  %247 = icmp eq ptr %246, null
  br i1 %247, label %254, label %248

248:                                              ; preds = %242
  %249 = getelementptr i8, ptr %7, i32 -8
  %250 = load ptr, ptr %249, align 4
  %251 = icmp eq ptr %250, null
  br i1 %251, label %254, label %252

252:                                              ; preds = %248
  %253 = tail call ptr @debugfs_create_file(ptr noundef nonnull %250, i16 noundef zeroext 292, ptr noundef nonnull %246, ptr noundef %8, ptr noundef nonnull @dapm_widget_power_fops) #20
  br label %254

254:                                              ; preds = %252, %248, %242, %6
  %255 = load ptr, ptr %7, align 4
  %256 = icmp eq ptr %255, %3
  br i1 %256, label %257, label %6

257:                                              ; preds = %254, %1
  %258 = tail call fastcc i32 @dapm_power_widgets(ptr noundef %0, i32 noundef 0)
  br label %259

259:                                              ; preds = %257, %22, %20
  %260 = phi i32 [ 0, %257 ], [ -12, %20 ], [ -12, %22 ]
  tail call void @mutex_unlock(ptr noundef %2) #20
  ret i32 %260
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_get_volsw(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_dapm_widget_list, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.soc_mixer_control, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.soc_mixer_control, ptr %15, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.soc_mixer_control, ptr %15, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = tail call i32 @llvm.ctlz.i32(i32 %21, i1 false) #20, !range !24
  %24 = sub nuw nsw i32 32, %23
  %25 = select i1 %22, i32 0, i32 %24
  %26 = shl nsw i32 -1, %25
  %27 = xor i32 %26, -1
  %28 = getelementptr inbounds %struct.soc_mixer_control, ptr %15, i32 0, i32 8
  %29 = load i8, ptr %28, align 4
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.snd_soc_card, ptr %12, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %31) #20
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %34, i32 0, i32 13
  %38 = load i16, ptr %37, align 4
  %39 = and i16 %38, 1
  %40 = icmp ne i16 %39, 0
  br label %41

41:                                               ; preds = %36, %2
  %42 = phi i1 [ %40, %36 ], [ true, %2 ]
  %43 = icmp ne i32 %17, -1
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %80

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %10, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = tail call i32 @snd_soc_component_read(ptr noundef nonnull %47, i32 noundef %17) #20
  br label %51

51:                                               ; preds = %49, %45
  %52 = phi i32 [ %50, %49 ], [ -5, %45 ]
  %53 = lshr i32 %52, %19
  %54 = getelementptr inbounds %struct.soc_mixer_control, ptr %15, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %17, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr %46, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = tail call i32 @snd_soc_component_read(ptr noundef nonnull %58, i32 noundef %55) #20
  %62 = load i32, ptr %54, align 4
  br label %63

63:                                               ; preds = %60, %57, %51
  %64 = phi i32 [ %17, %51 ], [ %62, %60 ], [ %55, %57 ]
  %65 = phi i32 [ %52, %51 ], [ %61, %60 ], [ -5, %57 ]
  %66 = load i32, ptr %16, align 4
  %67 = icmp eq i32 %66, %64
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.soc_mixer_control, ptr %15, i32 0, i32 6
  %70 = load i32, ptr %69, align 4
  br label %76

71:                                               ; preds = %63
  %72 = load i32, ptr %18, align 4
  %73 = getelementptr inbounds %struct.soc_mixer_control, ptr %15, i32 0, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %94, label %76

76:                                               ; preds = %71, %68
  %77 = phi i32 [ %70, %68 ], [ %74, %71 ]
  %78 = lshr i32 %65, %77
  %79 = and i32 %78, %27
  br label %94

80:                                               ; preds = %41
  %81 = load i32, ptr %32, align 4
  %82 = load i32, ptr %16, align 4
  %83 = getelementptr inbounds %struct.soc_mixer_control, ptr %15, i32 0, i32 4
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load i32, ptr %18, align 4
  %88 = getelementptr inbounds %struct.soc_mixer_control, ptr %15, i32 0, i32 6
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %94, label %91

91:                                               ; preds = %86, %80
  %92 = lshr i32 %81, %25
  %93 = and i32 %92, %27
  br label %94

94:                                               ; preds = %91, %86, %76, %71
  %95 = phi i32 [ %53, %76 ], [ %81, %91 ], [ %53, %71 ], [ %81, %86 ]
  %96 = phi i32 [ %79, %76 ], [ %93, %91 ], [ 0, %71 ], [ 0, %86 ]
  %97 = and i32 %95, %27
  tail call void @mutex_unlock(ptr noundef %31) #20
  %98 = icmp eq i8 %30, 0
  %99 = sub i32 %21, %97
  %100 = select i1 %98, i32 %97, i32 %99
  %101 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %100, ptr %101, align 8
  %102 = load i32, ptr %16, align 4
  %103 = getelementptr inbounds %struct.soc_mixer_control, ptr %15, i32 0, i32 4
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %94
  %107 = load i32, ptr %18, align 4
  %108 = getelementptr inbounds %struct.soc_mixer_control, ptr %15, i32 0, i32 6
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %106, %94
  %112 = sub i32 %21, %96
  %113 = select i1 %98, i32 %96, i32 %112
  %114 = getelementptr [128 x i32], ptr %101, i32 0, i32 1
  store i32 %113, ptr %114, align 4
  br label %115

115:                                              ; preds = %111, %106
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.snd_soc_dapm_update, align 4
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_dapm_widget_list, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.soc_mixer_control, ptr %16, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.soc_mixer_control, ptr %16, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.soc_mixer_control, ptr %16, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = tail call i32 @llvm.ctlz.i32(i32 %22, i1 false) #20, !range !24
  %25 = sub nuw nsw i32 32, %24
  %26 = select i1 %23, i32 0, i32 %25
  %27 = shl nsw i32 -1, %26
  %28 = xor i32 %27, -1
  %29 = getelementptr inbounds %struct.soc_mixer_control, ptr %16, i32 0, i32 8
  %30 = load i8, ptr %29, align 4
  %31 = and i8 %30, 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false)
  %32 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, %28
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = icmp eq i8 %31, 0
  %38 = sub i32 %22, %34
  %39 = select i1 %37, i32 %34, i32 %38
  %40 = load i32, ptr %17, align 4
  %41 = getelementptr inbounds %struct.soc_mixer_control, ptr %16, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %2
  %45 = load i32, ptr %19, align 4
  %46 = getelementptr inbounds %struct.soc_mixer_control, ptr %16, i32 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %44, %2
  %50 = getelementptr [128 x i32], ptr %32, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, %28
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = sub i32 %22, %52
  %56 = select i1 %37, i32 %52, i32 %55
  br label %57

57:                                               ; preds = %49, %44
  %58 = phi i32 [ %56, %49 ], [ 0, %44 ]
  %59 = phi i32 [ %54, %49 ], [ -1, %44 ]
  %60 = getelementptr inbounds %struct.snd_soc_card, ptr %13, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %60) #20
  %61 = icmp ugt i32 %26, 16
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %11, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.8, ptr noundef %65) #22
  br label %66

66:                                               ; preds = %62, %57
  %67 = shl i32 %58, %26
  %68 = or i32 %67, %39
  %69 = load ptr, ptr %4, align 4
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, %68
  br i1 %71, label %95, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %69, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %94, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %69, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.snd_soc_dapm_widget_list, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = load i32, ptr %80, align 4
  switch i32 %81, label %91 [
    i32 15, label %82
    i32 4, label %82
    i32 5, label %82
    i32 3, label %86
    i32 2, label %86
  ]

82:                                               ; preds = %76, %76, %76
  %83 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %74, i32 0, i32 10
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, %68
  br label %91

86:                                               ; preds = %76, %76
  %87 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %74, i32 0, i32 9
  %88 = load i8, ptr %87, align 4
  %89 = zext i8 %88 to i32
  %90 = lshr i32 %68, %89
  br label %91

91:                                               ; preds = %86, %82, %76
  %92 = phi i32 [ %85, %82 ], [ %90, %86 ], [ %68, %76 ]
  %93 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %74, i32 0, i32 11
  store i32 %92, ptr %93, align 4
  br label %94

94:                                               ; preds = %91, %72
  store i32 %68, ptr %69, align 4
  br label %95

95:                                               ; preds = %94, %66
  %96 = xor i1 %71, true
  %97 = zext i1 %96 to i32
  %98 = icmp eq i32 %18, -1
  br i1 %98, label %129, label %99

99:                                               ; preds = %95
  %100 = shl i32 %39, %20
  %101 = getelementptr inbounds %struct.soc_mixer_control, ptr %16, i32 0, i32 6
  %102 = load i32, ptr %101, align 4
  %103 = shl i32 %58, %102
  %104 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %11, i32 0, i32 3
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %99
  %108 = shl i32 %28, %20
  %109 = tail call i32 @snd_soc_component_test_bits(ptr noundef nonnull %105, i32 noundef %18, i32 noundef %108, i32 noundef %100) #20
  br label %110

110:                                              ; preds = %107, %99
  %111 = phi i32 [ %109, %107 ], [ -5, %99 ]
  %112 = load i32, ptr %17, align 4
  %113 = load i32, ptr %41, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i32, ptr %19, align 4
  %117 = load i32, ptr %101, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %129, label %119

119:                                              ; preds = %115, %110
  %120 = load ptr, ptr %104, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = load i32, ptr %101, align 4
  %124 = shl i32 %28, %123
  %125 = tail call i32 @snd_soc_component_test_bits(ptr noundef nonnull %120, i32 noundef %113, i32 noundef %124, i32 noundef %103) #20
  br label %126

126:                                              ; preds = %122, %119
  %127 = phi i32 [ %125, %122 ], [ -5, %119 ]
  %128 = or i32 %127, %111
  br label %129

129:                                              ; preds = %126, %115, %95
  %130 = phi i32 [ %100, %126 ], [ %39, %95 ], [ %100, %115 ]
  %131 = phi i32 [ %103, %126 ], [ %58, %95 ], [ %103, %115 ]
  %132 = phi i32 [ %128, %126 ], [ 0, %95 ], [ %111, %115 ]
  %133 = icmp ne i32 %132, 0
  %134 = select i1 %96, i1 true, i1 %133
  br i1 %134, label %136, label %135

135:                                              ; preds = %129
  tail call void @mutex_unlock(ptr noundef %60) #20
  br label %168

136:                                              ; preds = %129
  br i1 %133, label %137, label %161

137:                                              ; preds = %136
  %138 = load i32, ptr %17, align 4
  %139 = load i32, ptr %41, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = load i32, ptr %19, align 4
  %143 = getelementptr inbounds %struct.soc_mixer_control, ptr %16, i32 0, i32 6
  %144 = load i32, ptr %143, align 4
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %155, label %146

146:                                              ; preds = %141, %137
  %147 = getelementptr inbounds %struct.snd_soc_dapm_update, ptr %3, i32 0, i32 7
  store i8 1, ptr %147, align 4
  %148 = load i32, ptr %41, align 4
  %149 = getelementptr inbounds %struct.snd_soc_dapm_update, ptr %3, i32 0, i32 4
  store i32 %148, ptr %149, align 4
  %150 = getelementptr inbounds %struct.soc_mixer_control, ptr %16, i32 0, i32 6
  %151 = load i32, ptr %150, align 4
  %152 = shl i32 %28, %151
  %153 = getelementptr inbounds %struct.snd_soc_dapm_update, ptr %3, i32 0, i32 5
  store i32 %152, ptr %153, align 4
  %154 = getelementptr inbounds %struct.snd_soc_dapm_update, ptr %3, i32 0, i32 6
  store i32 %131, ptr %154, align 4
  br label %155

155:                                              ; preds = %146, %141
  store ptr %0, ptr %3, align 4
  %156 = getelementptr inbounds %struct.snd_soc_dapm_update, ptr %3, i32 0, i32 1
  store i32 %18, ptr %156, align 4
  %157 = shl i32 %28, %20
  %158 = getelementptr inbounds %struct.snd_soc_dapm_update, ptr %3, i32 0, i32 2
  store i32 %157, ptr %158, align 4
  %159 = getelementptr inbounds %struct.snd_soc_dapm_update, ptr %3, i32 0, i32 3
  store i32 %130, ptr %159, align 4
  %160 = getelementptr inbounds %struct.snd_soc_card, ptr %13, i32 0, i32 53
  store ptr %3, ptr %160, align 4
  br label %161

161:                                              ; preds = %155, %136
  %162 = or i32 %132, %97
  %163 = call fastcc i32 @soc_dapm_mixer_update_power(ptr noundef %13, ptr noundef %0, i32 noundef %36, i32 noundef %59)
  %164 = getelementptr inbounds %struct.snd_soc_card, ptr %13, i32 0, i32 53
  store ptr null, ptr %164, align 4
  %165 = icmp sgt i32 %163, 0
  call void @mutex_unlock(ptr noundef %60) #20
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = call i32 @snd_soc_dpcm_runtime_update(ptr noundef %13) #20
  br label %168

168:                                              ; preds = %166, %161, %135
  %169 = phi i32 [ %97, %135 ], [ %162, %166 ], [ %162, %161 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  ret i32 %169
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_get_enum_double(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_dapm_widget_list, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.snd_soc_card, ptr %12, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %16) #20
  %17 = load i32, ptr %15, align 4
  %18 = icmp eq i32 %17, -1
  %19 = load ptr, ptr %3, align 4
  br i1 %18, label %35, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %22, i32 0, i32 13
  %26 = load i16, ptr %25, align 4
  %27 = and i16 %26, 1
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24, %20
  %30 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %10, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @snd_soc_component_read(ptr noundef nonnull %31, i32 noundef %17) #20
  br label %37

35:                                               ; preds = %24, %2
  %36 = load i32, ptr %19, align 4
  br label %37

37:                                               ; preds = %35, %33, %29
  %38 = phi i32 [ %36, %35 ], [ %34, %33 ], [ -5, %29 ]
  tail call void @mutex_unlock(ptr noundef %16) #20
  %39 = getelementptr inbounds %struct.soc_enum, ptr %15, i32 0, i32 1
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i32
  %42 = lshr i32 %38, %41
  %43 = getelementptr inbounds %struct.soc_enum, ptr %15, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %42, %44
  %46 = getelementptr inbounds %struct.soc_enum, ptr %15, i32 0, i32 6
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %61, label %49

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.soc_enum, ptr %15, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %58, %49
  %54 = phi i32 [ %59, %58 ], [ 0, %49 ]
  %55 = getelementptr i32, ptr %47, i32 %54
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, %45
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = add nuw i32 %54, 1
  %60 = icmp eq i32 %59, %51
  br i1 %60, label %61, label %53

61:                                               ; preds = %58, %53, %49, %37
  %62 = phi i32 [ %45, %37 ], [ 0, %49 ], [ 0, %58 ], [ %54, %53 ]
  %63 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %62, ptr %63, align 8
  %64 = load i8, ptr %39, align 4
  %65 = getelementptr inbounds %struct.soc_enum, ptr %15, i32 0, i32 2
  %66 = load i8, ptr %65, align 1
  %67 = icmp eq i8 %64, %66
  br i1 %67, label %90, label %68

68:                                               ; preds = %61
  %69 = zext i8 %66 to i32
  %70 = lshr i32 %38, %69
  %71 = load i32, ptr %43, align 4
  %72 = and i32 %71, %70
  %73 = load ptr, ptr %46, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %87, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.soc_enum, ptr %15, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %84, %75
  %80 = phi i32 [ %85, %84 ], [ 0, %75 ]
  %81 = getelementptr i32, ptr %73, i32 %80
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, %72
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = add nuw i32 %80, 1
  %86 = icmp eq i32 %85, %77
  br i1 %86, label %87, label %79

87:                                               ; preds = %84, %79, %75, %68
  %88 = phi i32 [ %72, %68 ], [ 0, %75 ], [ 0, %84 ], [ %80, %79 ]
  %89 = getelementptr [128 x i32], ptr %63, i32 0, i32 1
  store i32 %88, ptr %89, align 4
  br label %90

90:                                               ; preds = %87, %61
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.snd_soc_dapm_update, align 4
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_dapm_widget_list, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false)
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.soc_enum, ptr %16, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %119

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.soc_enum, ptr %16, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr i32, ptr %24, i32 %18
  %28 = load i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i32 [ %28, %26 ], [ %18, %22 ]
  %31 = getelementptr inbounds %struct.soc_enum, ptr %16, i32 0, i32 1
  %32 = load i8, ptr %31, align 4
  %33 = zext i8 %32 to i32
  %34 = shl i32 %30, %33
  %35 = getelementptr inbounds %struct.soc_enum, ptr %16, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = shl i32 %36, %33
  %38 = getelementptr inbounds %struct.soc_enum, ptr %16, i32 0, i32 2
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %32, %39
  br i1 %40, label %56, label %41

41:                                               ; preds = %29
  %42 = getelementptr i32, ptr %17, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp ugt i32 %43, %20
  br i1 %44, label %119, label %45

45:                                               ; preds = %41
  br i1 %25, label %49, label %46

46:                                               ; preds = %45
  %47 = getelementptr i32, ptr %24, i32 %43
  %48 = load i32, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %45
  %50 = phi i32 [ %48, %46 ], [ %43, %45 ]
  %51 = zext i8 %39 to i32
  %52 = shl i32 %50, %51
  %53 = or i32 %52, %34
  %54 = shl i32 %36, %51
  %55 = or i32 %54, %37
  br label %56

56:                                               ; preds = %49, %29
  %57 = phi i32 [ %53, %49 ], [ %34, %29 ]
  %58 = phi i32 [ %55, %49 ], [ %37, %29 ]
  %59 = getelementptr inbounds %struct.snd_soc_card, ptr %13, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %59) #20
  %60 = load ptr, ptr %4, align 4
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, %57
  br i1 %62, label %86, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %60, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %85, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %60, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.snd_soc_dapm_widget_list, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = load i32, ptr %71, align 4
  switch i32 %72, label %82 [
    i32 15, label %73
    i32 4, label %73
    i32 5, label %73
    i32 3, label %77
    i32 2, label %77
  ]

73:                                               ; preds = %67, %67, %67
  %74 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %65, i32 0, i32 10
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, %57
  br label %82

77:                                               ; preds = %67, %67
  %78 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %65, i32 0, i32 9
  %79 = load i8, ptr %78, align 4
  %80 = zext i8 %79 to i32
  %81 = lshr i32 %57, %80
  br label %82

82:                                               ; preds = %77, %73, %67
  %83 = phi i32 [ %76, %73 ], [ %81, %77 ], [ %57, %67 ]
  %84 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %65, i32 0, i32 11
  store i32 %83, ptr %84, align 4
  br label %85

85:                                               ; preds = %82, %63
  store i32 %57, ptr %60, align 4
  br label %86

86:                                               ; preds = %85, %56
  %87 = xor i1 %62, true
  %88 = zext i1 %87 to i32
  %89 = load i32, ptr %16, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %97, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %11, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %103, label %95

95:                                               ; preds = %91
  %96 = tail call i32 @snd_soc_component_test_bits(ptr noundef nonnull %93, i32 noundef %89, i32 noundef %58, i32 noundef %57) #20
  br label %97

97:                                               ; preds = %95, %86
  %98 = phi i32 [ 0, %86 ], [ %96, %95 ]
  %99 = icmp ne i32 %98, 0
  %100 = select i1 %87, i1 true, i1 %99
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  tail call void @mutex_unlock(ptr noundef %59) #20
  br label %119

102:                                              ; preds = %97
  br i1 %99, label %103, label %110

103:                                              ; preds = %102, %91
  %104 = phi i32 [ %98, %102 ], [ -5, %91 ]
  store ptr %0, ptr %3, align 4
  %105 = load i32, ptr %16, align 4
  %106 = getelementptr inbounds %struct.snd_soc_dapm_update, ptr %3, i32 0, i32 1
  store i32 %105, ptr %106, align 4
  %107 = getelementptr inbounds %struct.snd_soc_dapm_update, ptr %3, i32 0, i32 2
  store i32 %58, ptr %107, align 4
  %108 = getelementptr inbounds %struct.snd_soc_dapm_update, ptr %3, i32 0, i32 3
  store i32 %57, ptr %108, align 4
  %109 = getelementptr inbounds %struct.snd_soc_card, ptr %13, i32 0, i32 53
  store ptr %3, ptr %109, align 4
  br label %110

110:                                              ; preds = %103, %102
  %111 = phi i32 [ %104, %103 ], [ 0, %102 ]
  %112 = or i32 %111, %88
  %113 = load i32, ptr %17, align 4
  %114 = call fastcc i32 @soc_dapm_mux_update_power(ptr noundef %13, ptr noundef %0, i32 noundef %113, ptr noundef %16)
  %115 = getelementptr inbounds %struct.snd_soc_card, ptr %13, i32 0, i32 53
  store ptr null, ptr %115, align 4
  %116 = icmp sgt i32 %114, 0
  call void @mutex_unlock(ptr noundef %59) #20
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = call i32 @snd_soc_dpcm_runtime_update(ptr noundef %13) #20
  br label %119

119:                                              ; preds = %117, %110, %101, %41, %2
  %120 = phi i32 [ -22, %2 ], [ -22, %41 ], [ %112, %117 ], [ %112, %110 ], [ %88, %101 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  ret i32 %120
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @snd_soc_dapm_info_pin_switch(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 1, ptr %3, align 8
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 1, ptr %6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_get_pin_switch(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [80 x i8], align 1
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %9) #20
  %10 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 51
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %3, i8 0, i32 80, i1 false) #20, !annotation !13
  %11 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 51, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.snd_soc_component, ptr %12, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 80, ptr noundef nonnull @.str.9, ptr noundef nonnull %16, ptr noundef %8) #20
  br label %20

20:                                               ; preds = %18, %14, %2
  %21 = phi ptr [ %3, %18 ], [ %8, %14 ], [ %8, %2 ]
  %22 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 51, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.snd_soc_card, ptr %23, i32 0, i32 46
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #20
  br label %53

28:                                               ; preds = %40, %20
  %29 = phi ptr [ %42, %40 ], [ %25, %20 ]
  %30 = phi ptr [ %41, %40 ], [ null, %20 ]
  %31 = getelementptr i8, ptr %29, i32 -8
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 @strcmp(ptr noundef %32, ptr noundef %21) #20
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = getelementptr i8, ptr %29, i32 -12
  %37 = getelementptr i8, ptr %29, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %10
  br i1 %39, label %44, label %40

40:                                               ; preds = %35, %28
  %41 = phi ptr [ %30, %28 ], [ %36, %35 ]
  %42 = load ptr, ptr %29, align 4
  %43 = icmp eq ptr %42, %24
  br i1 %43, label %44, label %28

44:                                               ; preds = %40, %35
  %45 = phi ptr [ %36, %35 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #20
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %45, i32 0, i32 13
  %49 = load i16, ptr %48, align 4
  %50 = lshr i16 %49, 2
  %51 = and i16 %50, 1
  %52 = zext i16 %51 to i32
  br label %53

53:                                               ; preds = %47, %44, %27
  %54 = phi i32 [ %52, %47 ], [ 0, %44 ], [ 0, %27 ]
  %55 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %54, ptr %55, align 8
  tail call void @mutex_unlock(ptr noundef %9) #20
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_get_pin_status(ptr noundef readonly %0, ptr noundef %1) #8 {
  %3 = alloca [80 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %3, i8 0, i32 80, i1 false) #20, !annotation !13
  %4 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 80, ptr noundef nonnull @.str.9, ptr noundef nonnull %9, ptr noundef %1) #20
  br label %13

13:                                               ; preds = %11, %7, %2
  %14 = phi ptr [ %3, %11 ], [ %1, %7 ], [ %1, %2 ]
  %15 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.snd_soc_card, ptr %16, i32 0, i32 46
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #20
  br label %46

21:                                               ; preds = %33, %13
  %22 = phi ptr [ %35, %33 ], [ %18, %13 ]
  %23 = phi ptr [ %34, %33 ], [ null, %13 ]
  %24 = getelementptr i8, ptr %22, i32 -8
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @strcmp(ptr noundef %25, ptr noundef %14) #20
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = getelementptr i8, ptr %22, i32 -12
  %30 = getelementptr i8, ptr %22, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28, %21
  %34 = phi ptr [ %23, %21 ], [ %29, %28 ]
  %35 = load ptr, ptr %22, align 4
  %36 = icmp eq ptr %35, %17
  br i1 %36, label %37, label %21

37:                                               ; preds = %33, %28
  %38 = phi ptr [ %29, %28 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #20
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %38, i32 0, i32 13
  %42 = load i16, ptr %41, align 4
  %43 = lshr i16 %42, 2
  %44 = and i16 %43, 1
  %45 = zext i16 %44 to i32
  br label %46

46:                                               ; preds = %40, %37, %20
  %47 = phi i32 [ %45, %40 ], [ 0, %37 ], [ 0, %20 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_put_pin_switch(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %8) #20
  %9 = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 51
  %10 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = tail call fastcc i32 @__snd_soc_dapm_set_pin(ptr noundef %9, ptr noundef %7, i32 noundef %13)
  tail call void @mutex_unlock(ptr noundef %8) #20
  %15 = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 51, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.snd_soc_card, ptr %16, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %17) #20
  %18 = load ptr, ptr %15, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.snd_soc_card, ptr %18, i32 0, i32 57
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = tail call fastcc i32 @dapm_power_widgets(ptr noundef nonnull %18, i32 noundef 0) #20
  %27 = load ptr, ptr %15, align 4
  br label %28

28:                                               ; preds = %25, %20, %2
  %29 = phi ptr [ %27, %25 ], [ %18, %20 ], [ null, %2 ]
  %30 = getelementptr inbounds %struct.snd_soc_card, ptr %29, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %30) #20
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__snd_soc_dapm_set_pin(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.list_head, align 8
  %5 = alloca %struct.list_head, align 8
  %6 = alloca [80 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %6, i8 0, i32 80, i1 false) #20, !annotation !13
  %7 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.snd_soc_component, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 80, ptr noundef nonnull @.str.9, ptr noundef nonnull %12, ptr noundef %1) #20
  br label %16

16:                                               ; preds = %14, %10, %3
  %17 = phi ptr [ %6, %14 ], [ %1, %10 ], [ %1, %3 ]
  %18 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.snd_soc_card, ptr %19, i32 0, i32 46
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #20
  br label %43

24:                                               ; preds = %36, %16
  %25 = phi ptr [ %38, %36 ], [ %21, %16 ]
  %26 = phi ptr [ %37, %36 ], [ null, %16 ]
  %27 = getelementptr i8, ptr %25, i32 -8
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 @strcmp(ptr noundef %28, ptr noundef %17) #20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = getelementptr i8, ptr %25, i32 -12
  %33 = getelementptr i8, ptr %25, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31, %24
  %37 = phi ptr [ %26, %24 ], [ %32, %31 ]
  %38 = load ptr, ptr %25, align 4
  %39 = icmp eq ptr %38, %20
  br i1 %39, label %40, label %24

40:                                               ; preds = %36, %31
  %41 = phi ptr [ %32, %31 ], [ %37, %36 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #20
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %23
  %44 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.91, ptr noundef %1) #22
  br label %154

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %41, i32 0, i32 13
  %48 = load i16, ptr %47, align 4
  %49 = lshr i16 %48, 2
  %50 = and i16 %49, 1
  %51 = zext i16 %50 to i32
  %52 = icmp eq i32 %51, %2
  br i1 %52, label %143, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %41, i32 0, i32 25
  %55 = load volatile ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %54
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %41, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %59, i32 0, i32 4
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.snd_soc_card, ptr %61, i32 0, i32 49
  %63 = getelementptr inbounds %struct.snd_soc_card, ptr %61, i32 0, i32 49, i32 1
  %64 = load ptr, ptr %63, align 4
  store ptr %54, ptr %63, align 4
  store ptr %62, ptr %54, align 4
  %65 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %41, i32 0, i32 25, i32 1
  store ptr %64, ptr %65, align 4
  store volatile ptr %54, ptr %64, align 4
  br label %66

66:                                               ; preds = %57, %53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %67 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %68 = getelementptr %struct.snd_soc_dapm_widget, ptr %41, i32 0, i32 26, i32 0
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %102, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %41, i32 0, i32 23
  store ptr %72, ptr %67, align 4
  store ptr %5, ptr %72, align 4
  %73 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %41, i32 0, i32 23, i32 1
  store ptr %5, ptr %73, align 4
  store volatile ptr %72, ptr %5, align 8
  store i32 -1, ptr %68, align 4
  %74 = icmp eq ptr %72, %5
  br i1 %74, label %102, label %78

75:                                               ; preds = %99, %78
  %76 = load ptr, ptr %79, align 4
  %77 = icmp eq ptr %76, %5
  br i1 %77, label %102, label %78

78:                                               ; preds = %75, %71
  %79 = phi ptr [ %76, %75 ], [ %72, %71 ]
  %80 = getelementptr i8, ptr %79, i32 -16
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, %80
  br i1 %82, label %75, label %83

83:                                               ; preds = %99, %78
  %84 = phi ptr [ %100, %99 ], [ %81, %78 ]
  %85 = getelementptr i8, ptr %84, i32 -8
  %86 = load i8, ptr %85, align 4
  %87 = and i8 %86, 13
  %88 = icmp eq i8 %87, 1
  br i1 %88, label %89, label %99

89:                                               ; preds = %83
  %90 = getelementptr i8, ptr %84, i32 -12
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr %struct.snd_soc_dapm_widget, ptr %91, i32 0, i32 26, i32 0
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %99, label %95

95:                                               ; preds = %89
  store i32 -1, ptr %92, align 4
  %96 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %91, i32 0, i32 23
  %97 = load ptr, ptr %67, align 4
  store ptr %96, ptr %67, align 4
  store ptr %5, ptr %96, align 4
  %98 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %91, i32 0, i32 23, i32 1
  store ptr %97, ptr %98, align 4
  store volatile ptr %96, ptr %97, align 4
  br label %99

99:                                               ; preds = %95, %89, %83
  %100 = load ptr, ptr %84, align 4
  %101 = icmp eq ptr %100, %80
  br i1 %101, label %75, label %83

102:                                              ; preds = %75, %71, %66
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %103 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %104 = getelementptr %struct.snd_soc_dapm_widget, ptr %41, i32 0, i32 26, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %141, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %41, i32 0, i32 23
  store ptr %108, ptr %103, align 4
  store ptr %4, ptr %108, align 4
  %109 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %41, i32 0, i32 23, i32 1
  store ptr %4, ptr %109, align 4
  store volatile ptr %108, ptr %4, align 8
  store i32 -1, ptr %104, align 4
  %110 = icmp eq ptr %108, %4
  br i1 %110, label %141, label %114

111:                                              ; preds = %137, %114
  %112 = load ptr, ptr %115, align 4
  %113 = icmp eq ptr %112, %4
  br i1 %113, label %141, label %114

114:                                              ; preds = %111, %107
  %115 = phi ptr [ %112, %111 ], [ %108, %107 ]
  %116 = getelementptr i8, ptr %115, i32 -16
  %117 = getelementptr i8, ptr %115, i32 -8
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr i8, ptr %118, i32 -8
  %120 = icmp eq ptr %119, %116
  br i1 %120, label %111, label %121

121:                                              ; preds = %137, %114
  %122 = phi ptr [ %138, %137 ], [ %118, %114 ]
  %123 = getelementptr i8, ptr %122, i32 -16
  %124 = load i8, ptr %123, align 4
  %125 = and i8 %124, 13
  %126 = icmp eq i8 %125, 1
  br i1 %126, label %127, label %137

127:                                              ; preds = %121
  %128 = getelementptr i8, ptr %122, i32 -24
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr %struct.snd_soc_dapm_widget, ptr %129, i32 0, i32 26, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %137, label %133

133:                                              ; preds = %127
  store i32 -1, ptr %130, align 4
  %134 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %129, i32 0, i32 23
  %135 = load ptr, ptr %103, align 4
  store ptr %134, ptr %103, align 4
  store ptr %4, ptr %134, align 4
  %136 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %129, i32 0, i32 23, i32 1
  store ptr %135, ptr %136, align 4
  store volatile ptr %134, ptr %135, align 4
  br label %137

137:                                              ; preds = %133, %127, %121
  %138 = load ptr, ptr %122, align 4
  %139 = getelementptr i8, ptr %138, i32 -8
  %140 = icmp eq ptr %139, %116
  br i1 %140, label %111, label %121

141:                                              ; preds = %111, %107, %102
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  %142 = load i16, ptr %47, align 4
  br label %143

143:                                              ; preds = %141, %46
  %144 = phi i16 [ %142, %141 ], [ %48, %46 ]
  %145 = phi i32 [ 1, %141 ], [ 0, %46 ]
  %146 = trunc i32 %2 to i16
  %147 = shl i16 %146, 2
  %148 = and i16 %147, 4
  %149 = and i16 %144, -5
  %150 = or i16 %149, %148
  %151 = icmp eq i32 %2, 0
  %152 = and i16 %150, -17
  %153 = select i1 %151, i16 %152, i16 %150
  store i16 %153, ptr %47, align 4
  br label %154

154:                                              ; preds = %143, %43
  %155 = phi i32 [ %145, %143 ], [ -22, %43 ]
  ret i32 %155
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @snd_soc_dapm_new_control_unlocked(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 180, i32 noundef 3264) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %170, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @kstrdup_const(ptr noundef nonnull %7, i32 noundef 3264) #20
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 2
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @kfree(ptr noundef nonnull %3) #20
  br label %170

14:                                               ; preds = %9, %5
  %15 = load i32, ptr %3, align 4
  switch i32 %15, label %62 [
    i32 21, label %16
    i32 20, label %35
    i32 22, label %54
  ]

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call ptr @devm_regulator_get(ptr noundef %18, ptr noundef %20) #20
  %22 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 6
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %158, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 11
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %62, label %29

29:                                               ; preds = %24
  %30 = tail call i32 @regulator_allow_bypass(ptr noundef %21, i1 noundef zeroext true) #20
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %62, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %17, align 4
  %34 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.2, ptr noundef %34, i32 noundef %30) #22
  br label %62

35:                                               ; preds = %14
  %36 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = tail call ptr @devm_pinctrl_get(ptr noundef %37) #20
  %39 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 7
  store ptr %38, ptr %39, align 4
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %158, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = icmp ne ptr %38, null
  %45 = icmp ne ptr %43, null
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.snd_soc_dapm_pinctrl_priv, ptr %43, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = tail call ptr @pinctrl_lookup_state(ptr noundef nonnull %38, ptr noundef %49) #20
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = tail call i32 @pinctrl_select_state(ptr noundef nonnull %38, ptr noundef %50) #20
  br label %62

54:                                               ; preds = %14
  %55 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = tail call ptr @devm_clk_get(ptr noundef %56, ptr noundef %58) #20
  %60 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 27
  store ptr %59, ptr %60, align 4
  %61 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %158, label %62

62:                                               ; preds = %54, %52, %47, %41, %32, %29, %24, %14
  %63 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.snd_soc_component, ptr %64, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.9, ptr noundef nonnull %68, ptr noundef %72) #20
  br label %78

74:                                               ; preds = %66, %62
  %75 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = tail call ptr @kstrdup_const(ptr noundef %76, i32 noundef 3264) #20
  br label %78

78:                                               ; preds = %74, %70
  %79 = phi ptr [ %77, %74 ], [ %73, %70 ]
  %80 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 1
  store ptr %79, ptr %80, align 4
  %81 = icmp eq ptr %79, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  tail call void @kfree_const(ptr noundef %84) #20
  tail call void @kfree(ptr noundef nonnull %3) #20
  br label %170

85:                                               ; preds = %78
  %86 = load i32, ptr %3, align 4
  switch i32 %86, label %135 [
    i32 11, label %87
    i32 0, label %92
    i32 13, label %104
    i32 12, label %104
    i32 1, label %109
    i32 16, label %121
    i32 25, label %121
    i32 26, label %126
    i32 2, label %136
    i32 3, label %136
    i32 15, label %136
    i32 4, label %136
    i32 5, label %136
    i32 8, label %136
    i32 24, label %136
    i32 9, label %136
    i32 23, label %136
    i32 6, label %136
    i32 31, label %136
    i32 32, label %136
    i32 33, label %136
    i32 34, label %136
    i32 35, label %136
    i32 36, label %136
    i32 37, label %136
    i32 7, label %136
    i32 10, label %136
    i32 14, label %136
    i32 29, label %136
    i32 28, label %136
    i32 27, label %136
    i32 19, label %131
    i32 21, label %131
    i32 20, label %131
    i32 22, label %131
    i32 30, label %131
  ]

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 13
  %89 = load i16, ptr %88, align 4
  %90 = and i16 %89, -1537
  %91 = or i16 %90, 512
  store i16 %91, ptr %88, align 4
  br label %136

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.snd_soc_card, ptr %94, i32 0, i32 57
  %96 = load i8, ptr %95, align 4
  %97 = and i8 %96, 4
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %136

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 13
  %101 = load i16, ptr %100, align 4
  %102 = and i16 %101, -1537
  %103 = or i16 %102, 512
  store i16 %103, ptr %100, align 4
  br label %136

104:                                              ; preds = %85, %85
  %105 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 13
  %106 = load i16, ptr %105, align 4
  %107 = and i16 %106, -1537
  %108 = or i16 %107, 1024
  store i16 %108, ptr %105, align 4
  br label %136

109:                                              ; preds = %85
  %110 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.snd_soc_card, ptr %111, i32 0, i32 57
  %113 = load i8, ptr %112, align 4
  %114 = and i8 %113, 4
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %136

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 13
  %118 = load i16, ptr %117, align 4
  %119 = and i16 %118, -1537
  %120 = or i16 %119, 1024
  store i16 %120, ptr %117, align 4
  br label %136

121:                                              ; preds = %85, %85
  %122 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 13
  %123 = load i16, ptr %122, align 4
  %124 = and i16 %123, -1537
  %125 = or i16 %124, 512
  store i16 %125, ptr %122, align 4
  br label %136

126:                                              ; preds = %85
  %127 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 13
  %128 = load i16, ptr %127, align 4
  %129 = and i16 %128, -1537
  %130 = or i16 %129, 1024
  store i16 %130, ptr %127, align 4
  br label %136

131:                                              ; preds = %85, %85, %85, %85, %85
  %132 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 13
  %133 = load i16, ptr %132, align 4
  %134 = or i16 %133, 256
  store i16 %134, ptr %132, align 4
  br label %136

135:                                              ; preds = %85
  br label %136

136:                                              ; preds = %135, %131, %126, %121, %116, %109, %104, %99, %92, %87, %85, %85, %85, %85, %85, %85, %85, %85, %85, %85, %85, %85, %85, %85, %85, %85, %85, %85, %85, %85, %85, %85, %85
  %137 = phi ptr [ @dapm_always_on_check_power, %135 ], [ @dapm_supply_check_power, %131 ], [ @dapm_always_on_check_power, %126 ], [ @dapm_always_on_check_power, %121 ], [ @dapm_generic_check_power, %104 ], [ @dapm_generic_check_power, %87 ], [ @dapm_generic_check_power, %99 ], [ @dapm_generic_check_power, %92 ], [ @dapm_generic_check_power, %116 ], [ @dapm_generic_check_power, %109 ], [ @dapm_generic_check_power, %85 ], [ @dapm_generic_check_power, %85 ], [ @dapm_generic_check_power, %85 ], [ @dapm_generic_check_power, %85 ], [ @dapm_generic_check_power, %85 ], [ @dapm_generic_check_power, %85 ], [ @dapm_generic_check_power, %85 ], [ @dapm_generic_check_power, %85 ], [ @dapm_generic_check_power, %85 ], [ @dapm_generic_check_power, %85 ], [ @dapm_generic_check_power, %85 ], [ @dapm_generic_check_power, %85 ], [ @dapm_generic_check_power, %85 ], [ @dapm_generic_check_power, %85 ], [ @dapm_generic_check_power, %85 ], [ @dapm_generic_check_power, %85 ], [ @dapm_generic_check_power, %85 ], [ @dapm_generic_check_power, %85 ], [ @dapm_generic_check_power, %85 ], [ @dapm_generic_check_power, %85 ], [ @dapm_generic_check_power, %85 ], [ @dapm_generic_check_power, %85 ], [ @dapm_generic_check_power, %85 ]
  %138 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 15
  store ptr %137, ptr %138, align 4
  %139 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 4
  store ptr %0, ptr %139, align 4
  %140 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 3
  store volatile ptr %140, ptr %140, align 4
  %141 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 3, i32 1
  store ptr %140, ptr %141, align 4
  %142 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 25
  store volatile ptr %142, ptr %142, align 4
  %143 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 25, i32 1
  store ptr %142, ptr %143, align 4
  %144 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.snd_soc_card, ptr %145, i32 0, i32 46
  %147 = getelementptr inbounds %struct.snd_soc_card, ptr %145, i32 0, i32 46, i32 1
  %148 = load ptr, ptr %147, align 4
  store ptr %140, ptr %147, align 4
  store ptr %146, ptr %140, align 4
  store ptr %148, ptr %141, align 4
  store volatile ptr %140, ptr %148, align 4
  %149 = getelementptr %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 22, i32 0
  store volatile ptr %149, ptr %149, align 4
  %150 = getelementptr %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 22, i32 0, i32 1
  store ptr %149, ptr %150, align 4
  %151 = getelementptr %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 26, i32 0
  store i32 -1, ptr %151, align 4
  %152 = getelementptr %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 22, i32 1
  store volatile ptr %152, ptr %152, align 4
  %153 = getelementptr %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 22, i32 1, i32 1
  store ptr %152, ptr %153, align 4
  %154 = getelementptr %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 26, i32 1
  store i32 -1, ptr %154, align 4
  %155 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 13
  %156 = load i16, ptr %155, align 4
  %157 = or i16 %156, 4
  store i16 %157, ptr %155, align 4
  br label %170

158:                                              ; preds = %54, %35, %16
  %159 = phi ptr [ %21, %16 ], [ %38, %35 ], [ %59, %54 ]
  %160 = icmp eq ptr %159, inttoptr (i32 -517 to ptr)
  br i1 %160, label %167, label %161

161:                                              ; preds = %158
  %162 = ptrtoint ptr %159 to i32
  %163 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 2
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 1
  %166 = load ptr, ptr %165, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.10, ptr noundef %166, i32 noundef %162) #22
  br label %167

167:                                              ; preds = %161, %158
  %168 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 2
  %169 = load ptr, ptr %168, align 4
  tail call void @kfree_const(ptr noundef %169) #20
  tail call void @kfree(ptr noundef nonnull %3) #20
  br label %170

170:                                              ; preds = %167, %136, %82, %13, %2
  %171 = phi ptr [ inttoptr (i32 -12 to ptr), %82 ], [ %3, %136 ], [ %159, %167 ], [ inttoptr (i32 -12 to ptr), %13 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %171
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dapm_generic_check_power(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 52
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 4
  %9 = tail call fastcc i32 @is_connected_input_ep(ptr noundef %0, ptr noundef null, ptr noundef null)
  %10 = tail call fastcc i32 @is_connected_output_ep(ptr noundef %0, ptr noundef null, ptr noundef null)
  %11 = icmp ne i32 %10, 0
  %12 = icmp ne i32 %9, 0
  %13 = select i1 %11, i1 %12, i1 false
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dapm_always_on_check_power(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 13
  %3 = load i16, ptr %2, align 4
  %4 = lshr i16 %3, 2
  %5 = and i16 %4, 1
  %6 = zext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dapm_supply_check_power(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 52
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 22
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %67, label %12

12:                                               ; preds = %64, %1
  %13 = phi ptr [ %65, %64 ], [ %10, %1 ]
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.snd_soc_card, ptr %16, i32 0, i32 52, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  %20 = getelementptr i8, ptr %13, i32 -8
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %12
  %25 = getelementptr i8, ptr %13, i32 -4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %13, i32 -16
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %13, i32 -12
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %26(ptr noundef %30, ptr noundef %32) #20
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %64, label %35

35:                                               ; preds = %28, %24
  %36 = getelementptr i8, ptr %13, i32 -12
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %37, i32 0, i32 13
  %39 = load i16, ptr %38, align 4
  %40 = and i16 %39, 128
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %35
  %43 = and i16 %39, 16
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = or i16 %39, 64
  br label %57

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %37, i32 0, i32 15
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 %49(ptr noundef %37) #20
  %51 = trunc i32 %50 to i16
  %52 = load i16, ptr %38, align 4
  %53 = shl i16 %51, 6
  %54 = and i16 %53, 64
  %55 = and i16 %52, -65
  %56 = or i16 %54, %55
  br label %57

57:                                               ; preds = %47, %45
  %58 = phi i16 [ %56, %47 ], [ %46, %45 ]
  %59 = or i16 %58, 128
  store i16 %59, ptr %38, align 4
  br label %60

60:                                               ; preds = %57, %35
  %61 = phi i16 [ %58, %57 ], [ %39, %35 ]
  %62 = and i16 %61, 64
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60, %28, %12
  %65 = load ptr, ptr %13, align 4
  %66 = icmp eq ptr %65, %9
  br i1 %66, label %67, label %12

67:                                               ; preds = %64, %60, %1
  %68 = phi i32 [ 0, %1 ], [ 0, %64 ], [ 1, %60 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @snd_soc_dapm_new_control(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %5) #20
  %6 = tail call ptr @snd_soc_dapm_new_control_unlocked(ptr noundef %0, ptr noundef %1)
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %8) #20
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_new_controls(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %6) #20
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %15, %3
  %9 = phi i32 [ %17, %15 ], [ 0, %3 ]
  %10 = phi ptr [ %16, %15 ], [ %1, %3 ]
  %11 = tail call ptr @snd_soc_dapm_new_control_unlocked(ptr noundef %0, ptr noundef %10)
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = ptrtoint ptr %11 to i32
  br label %19

15:                                               ; preds = %8
  %16 = getelementptr %struct.snd_soc_dapm_widget, ptr %10, i32 1
  %17 = add nuw nsw i32 %9, 1
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %19, label %8

19:                                               ; preds = %15, %13, %3
  %20 = phi i32 [ %14, %13 ], [ 0, %3 ], [ 0, %15 ]
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr inbounds %struct.snd_soc_card, ptr %21, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %22) #20
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_new_dai_widgets(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.snd_soc_dapm_widget, align 4
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %3) #20
  %4 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %10, label %9, !prof !25

9:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 4217, i32 noundef 9, ptr noundef null) #20
  br label %10

10:                                               ; preds = %9, %2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(180) %3, i8 0, i32 180, i1 false)
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 8
  store i32 -1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %13, i32 0, i32 11
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %10
  store i32 27, ptr %3, align 4
  %18 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 1
  store ptr %15, ptr %18, align 4
  %19 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 2
  store ptr %15, ptr %19, align 4
  %20 = call ptr @snd_soc_dapm_new_control_unlocked(ptr noundef %0, ptr noundef nonnull %3)
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = ptrtoint ptr %20 to i32
  br label %43

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %20, i32 0, i32 5
  store ptr %1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 5
  store ptr %20, ptr %26, align 4
  %27 = load ptr, ptr %12, align 4
  br label %28

28:                                               ; preds = %24, %10
  %29 = phi ptr [ %27, %24 ], [ %13, %10 ]
  %30 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %29, i32 0, i32 10
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  store i32 28, ptr %3, align 4
  %34 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 1
  store ptr %31, ptr %34, align 4
  %35 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 2
  store ptr %31, ptr %35, align 4
  %36 = call ptr @snd_soc_dapm_new_control_unlocked(ptr noundef %0, ptr noundef nonnull %3)
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = ptrtoint ptr %36 to i32
  br label %43

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %36, i32 0, i32 5
  store ptr %1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 6
  store ptr %36, ptr %42, align 4
  br label %43

43:                                               ; preds = %40, %38, %28, %22
  %44 = phi i32 [ %23, %22 ], [ %39, %38 ], [ 0, %40 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %3) #20
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_link_dai_widgets(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 46
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %52, label %5

5:                                                ; preds = %49, %1
  %6 = phi ptr [ %50, %49 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -12
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -27
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %49

11:                                               ; preds = %5
  %12 = getelementptr i8, ptr %6, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %49, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %2, align 4
  %17 = icmp eq ptr %16, %2
  br i1 %17, label %49, label %18

18:                                               ; preds = %15
  %19 = getelementptr i8, ptr %6, i32 8
  %20 = getelementptr i8, ptr %6, i32 -4
  br label %21

21:                                               ; preds = %46, %18
  %22 = phi ptr [ %16, %18 ], [ %47, %46 ]
  %23 = getelementptr i8, ptr %22, i32 -12
  %24 = getelementptr i8, ptr %22, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %19, align 4
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %21
  %29 = load i32, ptr %23, align 4
  %30 = add i32 %29, -27
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %22, i32 -4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %20, align 4
  %38 = tail call ptr @strstr(ptr noundef nonnull %34, ptr noundef %37)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr %7, align 4
  %42 = icmp eq i32 %41, 27
  %43 = select i1 %42, ptr %23, ptr %7
  %44 = select i1 %42, ptr %7, ptr %23
  %45 = tail call fastcc i32 @snd_soc_dapm_add_path(ptr noundef %25, ptr noundef %44, ptr noundef %43, ptr noundef null, ptr noundef null)
  br label %46

46:                                               ; preds = %40, %36, %32, %28, %21
  %47 = load ptr, ptr %22, align 4
  %48 = icmp eq ptr %47, %2
  br i1 %48, label %49, label %21

49:                                               ; preds = %46, %15, %11, %5
  %50 = load ptr, ptr %6, align 4
  %51 = icmp eq ptr %50, %2
  br i1 %51, label %52, label %5

52:                                               ; preds = %49, %1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_soc_dapm_add_path(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %2, i32 0, i32 13
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 256
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 13
  %12 = load i16, ptr %11, align 4
  %13 = and i16 %12, 256
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %2, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.93, ptr noundef %19, ptr noundef %21) #22
  br label %378

22:                                               ; preds = %10, %5
  %23 = icmp ne ptr %4, null
  %24 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 13
  %25 = load i16, ptr %24, align 4
  %26 = and i16 %25, 256
  %27 = icmp eq i16 %26, 0
  %28 = select i1 %23, i1 %27, i1 false
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %2, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.94, ptr noundef %33, ptr noundef %35) #22
  br label %378

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 13
  %38 = icmp ne i16 %26, 0
  %39 = icmp ne ptr %3, null
  %40 = and i1 %39, %38
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %2, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.95, ptr noundef %45, ptr noundef nonnull %3, ptr noundef %47) #22
  br label %378

48:                                               ; preds = %36
  %49 = icmp eq ptr %3, null
  br i1 %49, label %64, label %50

50:                                               ; preds = %48
  %51 = load i32, ptr %1, align 4
  %52 = icmp eq i32 %51, 3
  %53 = load i32, ptr %2, align 4
  switch i32 %53, label %55 [
    i32 2, label %54
    i32 15, label %54
    i32 4, label %54
    i32 5, label %54
  ]

54:                                               ; preds = %50, %50, %50, %50
  br i1 %52, label %56, label %64

55:                                               ; preds = %50
  br i1 %52, label %64, label %56

56:                                               ; preds = %55, %54
  %57 = phi ptr [ @.str.97, %54 ], [ @.str.98, %55 ]
  %58 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %2, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull %57, ptr noundef %61, ptr noundef nonnull %3, ptr noundef %63) #22
  br label %378

64:                                               ; preds = %55, %54, %48
  %65 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %66 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3520, i32 noundef 52) #23
  %67 = icmp eq ptr %66, null
  br i1 %67, label %378, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %66, i32 0, i32 1
  store ptr %1, ptr %69, align 4
  %70 = getelementptr %struct.snd_soc_dapm_path, ptr %66, i32 0, i32 1, i32 0, i32 1
  store ptr %2, ptr %70, align 8
  %71 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %66, i32 0, i32 3
  store ptr %4, ptr %71, align 8
  %72 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %66, i32 0, i32 6
  store volatile ptr %72, ptr %72, align 4
  %73 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %66, i32 0, i32 6, i32 1
  store ptr %72, ptr %73, align 8
  %74 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %66, i32 0, i32 5
  store volatile ptr %74, ptr %74, align 4
  %75 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %66, i32 0, i32 5, i32 1
  store ptr %74, ptr %75, align 8
  %76 = load i16, ptr %37, align 4
  %77 = and i16 %76, 256
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %68
  %80 = load i16, ptr %6, align 4
  %81 = and i16 %80, 256
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79, %68
  %84 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %66, i32 0, i32 2
  %85 = load i8, ptr %84, align 4
  %86 = or i8 %85, 8
  store i8 %86, ptr %84, align 4
  br label %87

87:                                               ; preds = %83, %79
  br i1 %49, label %88, label %92

88:                                               ; preds = %87
  %89 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %66, i32 0, i32 2
  %90 = load i8, ptr %89, align 4
  %91 = or i8 %90, 1
  store i8 %91, ptr %89, align 4
  br label %217

92:                                               ; preds = %87
  %93 = load i32, ptr %1, align 4
  %94 = icmp eq i32 %93, 3
  br i1 %94, label %95, label %151

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 19
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %97, i32 0, i32 11
  %99 = load i32, ptr %98, align 4
  %100 = inttoptr i32 %99 to ptr
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %133, label %103

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 3
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = tail call i32 @snd_soc_component_read(ptr noundef nonnull %105, i32 noundef %101) #20
  br label %109

109:                                              ; preds = %107, %103
  %110 = phi i32 [ %108, %107 ], [ -5, %103 ]
  %111 = getelementptr inbounds %struct.soc_enum, ptr %100, i32 0, i32 1
  %112 = load i8, ptr %111, align 4
  %113 = zext i8 %112 to i32
  %114 = lshr i32 %110, %113
  %115 = getelementptr inbounds %struct.soc_enum, ptr %100, i32 0, i32 4
  %116 = load i32, ptr %115, align 4
  %117 = and i32 %114, %116
  %118 = getelementptr inbounds %struct.soc_enum, ptr %100, i32 0, i32 6
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %133, label %121

121:                                              ; preds = %109
  %122 = getelementptr inbounds %struct.soc_enum, ptr %100, i32 0, i32 3
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %130, %121
  %126 = phi i32 [ %131, %130 ], [ 0, %121 ]
  %127 = getelementptr i32, ptr %119, i32 %126
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, %117
  br i1 %129, label %133, label %130

130:                                              ; preds = %125
  %131 = add nuw i32 %126, 1
  %132 = icmp eq i32 %131, %123
  br i1 %132, label %133, label %125

133:                                              ; preds = %130, %125, %121, %109, %95
  %134 = phi i32 [ 0, %95 ], [ %117, %109 ], [ 0, %121 ], [ %126, %125 ], [ 0, %130 ]
  %135 = getelementptr inbounds %struct.soc_enum, ptr %100, i32 0, i32 5
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.soc_enum, ptr %100, i32 0, i32 3
  %138 = load i32, ptr %137, align 4
  %139 = tail call i32 @match_string(ptr noundef %136, i32 noundef %138, ptr noundef nonnull %3) #20
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %376, label %141

141:                                              ; preds = %133
  %142 = load ptr, ptr %135, align 4
  %143 = getelementptr ptr, ptr %142, i32 %139
  %144 = load ptr, ptr %143, align 4
  store ptr %144, ptr %66, align 8
  %145 = icmp eq i32 %139, %134
  %146 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %66, i32 0, i32 2
  %147 = zext i1 %145 to i8
  %148 = load i8, ptr %146, align 4
  %149 = and i8 %148, -2
  %150 = or i8 %149, %147
  store i8 %150, ptr %146, align 4
  br label %151

151:                                              ; preds = %141, %92
  %152 = load i32, ptr %2, align 4
  switch i32 %152, label %217 [
    i32 2, label %153
    i32 15, label %156
    i32 4, label %156
    i32 5, label %156
  ]

153:                                              ; preds = %151
  %154 = tail call fastcc i32 @dapm_connect_mux(ptr noundef %0, ptr noundef nonnull %66, ptr noundef nonnull %3, ptr noundef %2)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %217, label %376

156:                                              ; preds = %151, %151, %151
  %157 = load ptr, ptr %70, align 8
  %158 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %157, i32 0, i32 18
  %159 = load i32, ptr %158, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %376

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %157, i32 0, i32 19
  %163 = load ptr, ptr %162, align 4
  br label %164

164:                                              ; preds = %208, %161
  %165 = phi i32 [ 0, %161 ], [ %209, %208 ]
  %166 = getelementptr %struct.snd_kcontrol_new, ptr %163, i32 %165, i32 3
  %167 = load ptr, ptr %166, align 4
  %168 = tail call i32 @strcmp(ptr noundef nonnull %3, ptr noundef %167) #20
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %208

170:                                              ; preds = %164
  store ptr %167, ptr %66, align 8
  %171 = load ptr, ptr %162, align 4
  %172 = getelementptr %struct.snd_kcontrol_new, ptr %171, i32 %165, i32 11
  %173 = load i32, ptr %172, align 4
  %174 = inttoptr i32 %173 to ptr
  %175 = getelementptr inbounds %struct.soc_mixer_control, ptr %174, i32 0, i32 3
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr inbounds %struct.soc_mixer_control, ptr %174, i32 0, i32 8
  %178 = load i8, ptr %177, align 4
  %179 = and i8 %178, 1
  %180 = icmp eq i32 %176, -1
  br i1 %180, label %211, label %181

181:                                              ; preds = %170
  %182 = getelementptr inbounds %struct.soc_mixer_control, ptr %174, i32 0, i32 5
  %183 = load i32, ptr %182, align 4
  %184 = getelementptr inbounds %struct.soc_mixer_control, ptr %174, i32 0, i32 1
  %185 = load i32, ptr %184, align 4
  %186 = icmp eq i32 %185, 0
  %187 = tail call i32 @llvm.ctlz.i32(i32 %185, i1 false) #20, !range !24
  %188 = sub nuw nsw i32 32, %187
  %189 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %157, i32 0, i32 4
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %190, i32 0, i32 3
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %196, label %194

194:                                              ; preds = %181
  %195 = tail call i32 @snd_soc_component_read(ptr noundef nonnull %192, i32 noundef %176) #20
  br label %196

196:                                              ; preds = %194, %181
  %197 = phi i32 [ %195, %194 ], [ -5, %181 ]
  %198 = shl nsw i32 -1, %188
  %199 = xor i32 %198, -1
  %200 = select i1 %186, i32 0, i32 %199
  %201 = lshr i32 %197, %183
  %202 = and i32 %201, %200
  %203 = icmp eq i8 %179, 0
  %204 = sub i32 %185, %202
  %205 = select i1 %203, i32 %202, i32 %204
  %206 = icmp ne i32 %205, 0
  %207 = zext i1 %206 to i8
  br label %211

208:                                              ; preds = %164
  %209 = add nuw nsw i32 %165, 1
  %210 = icmp eq i32 %209, %159
  br i1 %210, label %376, label %164

211:                                              ; preds = %196, %170
  %212 = phi i8 [ %207, %196 ], [ %179, %170 ]
  %213 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %66, i32 0, i32 2
  %214 = load i8, ptr %213, align 4
  %215 = and i8 %214, -2
  %216 = or i8 %215, %212
  store i8 %216, ptr %213, align 4
  br label %217

217:                                              ; preds = %211, %153, %151, %88
  %218 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %219 = load ptr, ptr %218, align 4
  %220 = getelementptr inbounds %struct.snd_soc_card, ptr %219, i32 0, i32 47
  %221 = load ptr, ptr %220, align 4
  %222 = getelementptr inbounds %struct.list_head, ptr %221, i32 0, i32 1
  store ptr %72, ptr %222, align 4
  store ptr %221, ptr %72, align 4
  store ptr %220, ptr %73, align 8
  store volatile ptr %72, ptr %220, align 4
  %223 = getelementptr %struct.snd_soc_dapm_path, ptr %66, i32 0, i32 4, i32 0
  %224 = getelementptr %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 22, i32 0
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr inbounds %struct.list_head, ptr %225, i32 0, i32 1
  store ptr %223, ptr %226, align 4
  store ptr %225, ptr %223, align 4
  %227 = getelementptr %struct.snd_soc_dapm_path, ptr %66, i32 0, i32 4, i32 0, i32 1
  store ptr %224, ptr %227, align 8
  store volatile ptr %223, ptr %224, align 4
  %228 = getelementptr %struct.snd_soc_dapm_path, ptr %66, i32 0, i32 4, i32 1
  %229 = getelementptr %struct.snd_soc_dapm_widget, ptr %2, i32 0, i32 22, i32 1
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr inbounds %struct.list_head, ptr %230, i32 0, i32 1
  store ptr %228, ptr %231, align 4
  store ptr %230, ptr %228, align 4
  %232 = getelementptr %struct.snd_soc_dapm_path, ptr %66, i32 0, i32 4, i32 1, i32 1
  store ptr %229, ptr %232, align 8
  store volatile ptr %228, ptr %229, align 4
  %233 = load i32, ptr %1, align 4
  switch i32 %233, label %285 [
    i32 0, label %244
    i32 1, label %263
    i32 14, label %234
  ]

234:                                              ; preds = %217
  %235 = load volatile ptr, ptr %224, align 4
  %236 = icmp ne ptr %235, %224
  %237 = zext i1 %236 to i16
  %238 = getelementptr %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 22, i32 1
  %239 = load volatile ptr, ptr %238, align 4
  %240 = icmp eq ptr %239, %238
  %241 = select i1 %240, i16 0, i16 2
  %242 = or i16 %241, %237
  %243 = shl nuw nsw i16 %242, 9
  br label %280

244:                                              ; preds = %217
  %245 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 4
  %246 = load ptr, ptr %245, align 4
  %247 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %246, i32 0, i32 4
  %248 = load ptr, ptr %247, align 4
  %249 = getelementptr inbounds %struct.snd_soc_card, ptr %248, i32 0, i32 57
  %250 = load i8, ptr %249, align 4
  %251 = and i8 %250, 4
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %285

253:                                              ; preds = %244
  %254 = getelementptr %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 22, i32 1
  br label %255

255:                                              ; preds = %259, %253
  %256 = phi ptr [ %254, %253 ], [ %257, %259 ]
  %257 = load ptr, ptr %256, align 4
  %258 = icmp eq ptr %257, %254
  br i1 %258, label %280, label %259

259:                                              ; preds = %255
  %260 = getelementptr i8, ptr %257, i32 -24
  %261 = load ptr, ptr %260, align 4
  %262 = load i32, ptr %261, align 4
  switch i32 %262, label %255 [
    i32 10, label %280
    i32 11, label %280
    i32 14, label %280
    i32 1, label %280
  ]

263:                                              ; preds = %217
  %264 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 4
  %265 = load ptr, ptr %264, align 4
  %266 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %265, i32 0, i32 4
  %267 = load ptr, ptr %266, align 4
  %268 = getelementptr inbounds %struct.snd_soc_card, ptr %267, i32 0, i32 57
  %269 = load i8, ptr %268, align 4
  %270 = and i8 %269, 4
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %272, label %285

272:                                              ; preds = %276, %263
  %273 = phi ptr [ %274, %276 ], [ %224, %263 ]
  %274 = load ptr, ptr %273, align 4
  %275 = icmp eq ptr %274, %224
  br i1 %275, label %280, label %276

276:                                              ; preds = %272
  %277 = getelementptr i8, ptr %274, i32 -12
  %278 = load ptr, ptr %277, align 4
  %279 = load i32, ptr %278, align 4
  switch i32 %279, label %272 [
    i32 13, label %280
    i32 12, label %280
    i32 14, label %280
    i32 0, label %280
  ]

280:                                              ; preds = %276, %276, %276, %276, %272, %259, %259, %259, %259, %255, %234
  %281 = phi i16 [ %243, %234 ], [ 512, %255 ], [ 0, %259 ], [ 0, %259 ], [ 0, %259 ], [ 0, %259 ], [ 1024, %272 ], [ 0, %276 ], [ 0, %276 ], [ 0, %276 ], [ 0, %276 ]
  %282 = load i16, ptr %37, align 4
  %283 = and i16 %282, -1537
  %284 = or i16 %283, %281
  store i16 %284, ptr %37, align 4
  br label %285

285:                                              ; preds = %280, %263, %244, %217
  %286 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 25
  %287 = load volatile ptr, ptr %286, align 4
  %288 = icmp eq ptr %287, %286
  br i1 %288, label %289, label %298

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 4
  %291 = load ptr, ptr %290, align 4
  %292 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %291, i32 0, i32 4
  %293 = load ptr, ptr %292, align 4
  %294 = getelementptr inbounds %struct.snd_soc_card, ptr %293, i32 0, i32 49
  %295 = getelementptr inbounds %struct.snd_soc_card, ptr %293, i32 0, i32 49, i32 1
  %296 = load ptr, ptr %295, align 4
  store ptr %286, ptr %295, align 4
  store ptr %294, ptr %286, align 4
  %297 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 25, i32 1
  store ptr %296, ptr %297, align 4
  store volatile ptr %286, ptr %296, align 4
  br label %298

298:                                              ; preds = %289, %285
  %299 = load i32, ptr %2, align 4
  switch i32 %299, label %351 [
    i32 0, label %329
    i32 1, label %310
    i32 14, label %300
  ]

300:                                              ; preds = %298
  %301 = getelementptr %struct.snd_soc_dapm_widget, ptr %2, i32 0, i32 22, i32 0
  %302 = load volatile ptr, ptr %301, align 4
  %303 = icmp ne ptr %302, %301
  %304 = zext i1 %303 to i16
  %305 = load volatile ptr, ptr %229, align 4
  %306 = icmp eq ptr %305, %229
  %307 = select i1 %306, i16 0, i16 2
  %308 = or i16 %307, %304
  %309 = shl nuw nsw i16 %308, 9
  br label %346

310:                                              ; preds = %298
  %311 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %2, i32 0, i32 4
  %312 = load ptr, ptr %311, align 4
  %313 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %312, i32 0, i32 4
  %314 = load ptr, ptr %313, align 4
  %315 = getelementptr inbounds %struct.snd_soc_card, ptr %314, i32 0, i32 57
  %316 = load i8, ptr %315, align 4
  %317 = and i8 %316, 4
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %319, label %351

319:                                              ; preds = %310
  %320 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %2, i32 0, i32 22
  br label %321

321:                                              ; preds = %325, %319
  %322 = phi ptr [ %320, %319 ], [ %323, %325 ]
  %323 = load ptr, ptr %322, align 4
  %324 = icmp eq ptr %323, %320
  br i1 %324, label %346, label %325

325:                                              ; preds = %321
  %326 = getelementptr i8, ptr %323, i32 -12
  %327 = load ptr, ptr %326, align 4
  %328 = load i32, ptr %327, align 4
  switch i32 %328, label %321 [
    i32 13, label %346
    i32 12, label %346
    i32 14, label %346
    i32 0, label %346
  ]

329:                                              ; preds = %298
  %330 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %2, i32 0, i32 4
  %331 = load ptr, ptr %330, align 4
  %332 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %331, i32 0, i32 4
  %333 = load ptr, ptr %332, align 4
  %334 = getelementptr inbounds %struct.snd_soc_card, ptr %333, i32 0, i32 57
  %335 = load i8, ptr %334, align 4
  %336 = and i8 %335, 4
  %337 = icmp eq i8 %336, 0
  br i1 %337, label %338, label %351

338:                                              ; preds = %342, %329
  %339 = phi ptr [ %340, %342 ], [ %229, %329 ]
  %340 = load ptr, ptr %339, align 4
  %341 = icmp eq ptr %340, %229
  br i1 %341, label %346, label %342

342:                                              ; preds = %338
  %343 = getelementptr i8, ptr %340, i32 -24
  %344 = load ptr, ptr %343, align 4
  %345 = load i32, ptr %344, align 4
  switch i32 %345, label %338 [
    i32 10, label %346
    i32 11, label %346
    i32 14, label %346
    i32 1, label %346
  ]

346:                                              ; preds = %342, %342, %342, %342, %338, %325, %325, %325, %325, %321, %300
  %347 = phi i16 [ %309, %300 ], [ 512, %338 ], [ 0, %342 ], [ 0, %342 ], [ 0, %342 ], [ 0, %342 ], [ 1024, %321 ], [ 0, %325 ], [ 0, %325 ], [ 0, %325 ], [ 0, %325 ]
  %348 = load i16, ptr %6, align 4
  %349 = and i16 %348, -1537
  %350 = or i16 %349, %347
  store i16 %350, ptr %6, align 4
  br label %351

351:                                              ; preds = %346, %329, %310, %298
  %352 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %2, i32 0, i32 25
  %353 = load volatile ptr, ptr %352, align 4
  %354 = icmp eq ptr %353, %352
  br i1 %354, label %355, label %364

355:                                              ; preds = %351
  %356 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %2, i32 0, i32 4
  %357 = load ptr, ptr %356, align 4
  %358 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %357, i32 0, i32 4
  %359 = load ptr, ptr %358, align 4
  %360 = getelementptr inbounds %struct.snd_soc_card, ptr %359, i32 0, i32 49
  %361 = getelementptr inbounds %struct.snd_soc_card, ptr %359, i32 0, i32 49, i32 1
  %362 = load ptr, ptr %361, align 4
  store ptr %352, ptr %361, align 4
  store ptr %360, ptr %352, align 4
  %363 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %2, i32 0, i32 25, i32 1
  store ptr %362, ptr %363, align 4
  store volatile ptr %352, ptr %362, align 4
  br label %364

364:                                              ; preds = %355, %351
  %365 = load ptr, ptr %218, align 4
  %366 = getelementptr inbounds %struct.snd_soc_card, ptr %365, i32 0, i32 57
  %367 = load i8, ptr %366, align 4
  %368 = and i8 %367, 1
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %378, label %370

370:                                              ; preds = %364
  %371 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %66, i32 0, i32 2
  %372 = load i8, ptr %371, align 4
  %373 = and i8 %372, 1
  %374 = icmp eq i8 %373, 0
  br i1 %374, label %378, label %375

375:                                              ; preds = %370
  tail call fastcc void @dapm_path_invalidate(ptr noundef nonnull %66)
  br label %378

376:                                              ; preds = %208, %156, %153, %133
  %377 = phi i32 [ %154, %153 ], [ -19, %133 ], [ -19, %156 ], [ -19, %208 ]
  tail call void @kfree(ptr noundef nonnull %66) #20
  br label %378

378:                                              ; preds = %376, %375, %370, %364, %64, %56, %41, %29, %15
  %379 = phi i32 [ -22, %41 ], [ %377, %376 ], [ -22, %29 ], [ -22, %15 ], [ -22, %56 ], [ -12, %64 ], [ 0, %375 ], [ 0, %370 ], [ 0, %364 ]
  ret i32 %379
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_soc_dapm_connect_dai_link_widgets(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %78, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  br label %7

7:                                                ; preds = %75, %5
  %8 = phi ptr [ %3, %5 ], [ %76, %75 ]
  %9 = getelementptr i8, ptr %8, i32 -1456
  %10 = getelementptr i8, ptr %8, i32 -1448
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %11, i32 0, i32 18
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %75

16:                                               ; preds = %7
  %17 = getelementptr i8, ptr %8, i32 -68
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %8, i32 -76
  %22 = getelementptr i8, ptr %8, i32 -72
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %75, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %21, align 4
  %27 = getelementptr ptr, ptr %26, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %75, label %30

30:                                               ; preds = %38, %25
  %31 = phi ptr [ %43, %38 ], [ %28, %25 ]
  %32 = phi ptr [ %40, %38 ], [ %26, %25 ]
  %33 = phi i32 [ %35, %38 ], [ 0, %25 ]
  %34 = load ptr, ptr %32, align 4
  tail call fastcc void @dapm_connect_dai_pair(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %31, ptr noundef %34)
  %35 = add nuw i32 %33, 1
  %36 = load i32, ptr %22, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %75

38:                                               ; preds = %30
  %39 = load i32, ptr %17, align 4
  %40 = load ptr, ptr %21, align 4
  %41 = add i32 %39, %35
  %42 = getelementptr ptr, ptr %40, i32 %41
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %75, label %30

45:                                               ; preds = %16
  %46 = getelementptr i8, ptr %8, i32 -72
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, %18
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %8, i32 -76
  %51 = icmp eq i32 %18, 0
  br i1 %51, label %75, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %50, align 4
  %54 = getelementptr ptr, ptr %53, i32 %18
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %75, label %57

57:                                               ; preds = %66, %52
  %58 = phi ptr [ %71, %66 ], [ %55, %52 ]
  %59 = phi ptr [ %68, %66 ], [ %53, %52 ]
  %60 = phi i32 [ %63, %66 ], [ 0, %52 ]
  %61 = getelementptr ptr, ptr %59, i32 %60
  %62 = load ptr, ptr %61, align 4
  tail call fastcc void @dapm_connect_dai_pair(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %58, ptr noundef %62)
  %63 = add nuw i32 %60, 1
  %64 = load i32, ptr %46, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %57
  %67 = load i32, ptr %17, align 4
  %68 = load ptr, ptr %50, align 4
  %69 = add i32 %67, %63
  %70 = getelementptr ptr, ptr %68, i32 %69
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %57

73:                                               ; preds = %45
  %74 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.12) #22
  br label %75

75:                                               ; preds = %73, %66, %57, %52, %49, %38, %30, %25, %20, %7
  %76 = load ptr, ptr %8, align 4
  %77 = icmp eq ptr %76, %2
  br i1 %77, label %78, label %7

78:                                               ; preds = %75, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dapm_connect_dai_pair(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.snd_soc_dai, ptr %3, i32 0, i32 6
  %13 = getelementptr inbounds %struct.snd_soc_dai, ptr %3, i32 0, i32 5
  %14 = select i1 %11, ptr %13, ptr %12
  %15 = select i1 %11, ptr %12, ptr %13
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp ne ptr %17, null
  %21 = icmp ne ptr %19, null
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %48

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 12
  %25 = load ptr, ptr %24, align 4
  br i1 %11, label %36, label %26

26:                                               ; preds = %23
  %27 = icmp eq ptr %25, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 51
  br label %40

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.snd_pcm, ptr %8, i32 0, i32 8, i32 0, i32 4
  %32 = load ptr, ptr %31, align 8
  %33 = tail call fastcc ptr @snd_soc_dapm_new_dai(ptr noundef %0, ptr noundef %32, ptr noundef nonnull @.str.99)
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %48, label %35

35:                                               ; preds = %30
  store ptr %33, ptr %24, align 4
  br label %36

36:                                               ; preds = %35, %23
  %37 = phi ptr [ %33, %35 ], [ %25, %23 ]
  %38 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 51
  %39 = icmp eq ptr %37, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %36, %28
  %41 = phi ptr [ %29, %28 ], [ %38, %36 ]
  %42 = phi ptr [ %25, %28 ], [ %37, %36 ]
  %43 = tail call fastcc i32 @snd_soc_dapm_add_path(ptr noundef %41, ptr noundef nonnull %17, ptr noundef nonnull %42, ptr noundef null, ptr noundef null) #20
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi ptr [ %41, %40 ], [ %38, %36 ]
  %46 = phi ptr [ %42, %40 ], [ %17, %36 ]
  %47 = tail call fastcc i32 @snd_soc_dapm_add_path(ptr noundef %45, ptr noundef nonnull %46, ptr noundef nonnull %19, ptr noundef null, ptr noundef null) #20
  br label %48

48:                                               ; preds = %44, %30, %4
  %49 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = icmp ne ptr %50, null
  %52 = icmp ne ptr %16, null
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %54, label %81

54:                                               ; preds = %48
  %55 = load ptr, ptr %9, align 4
  %56 = icmp eq ptr %55, null
  %57 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 13
  %58 = load ptr, ptr %57, align 4
  br i1 %56, label %69, label %59

59:                                               ; preds = %54
  %60 = icmp eq ptr %58, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 51
  br label %73

63:                                               ; preds = %59
  %64 = getelementptr %struct.snd_pcm, ptr %8, i32 0, i32 8, i32 1, i32 4
  %65 = load ptr, ptr %64, align 8
  %66 = tail call fastcc ptr @snd_soc_dapm_new_dai(ptr noundef %0, ptr noundef %65, ptr noundef nonnull @.str.100)
  %67 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %81, label %68

68:                                               ; preds = %63
  store ptr %66, ptr %57, align 4
  br label %69

69:                                               ; preds = %68, %54
  %70 = phi ptr [ %66, %68 ], [ %58, %54 ]
  %71 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 51
  %72 = icmp eq ptr %70, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %69, %61
  %74 = phi ptr [ %62, %61 ], [ %71, %69 ]
  %75 = phi ptr [ %58, %61 ], [ %70, %69 ]
  %76 = tail call fastcc i32 @snd_soc_dapm_add_path(ptr noundef %74, ptr noundef nonnull %50, ptr noundef nonnull %75, ptr noundef null, ptr noundef null) #20
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi ptr [ %74, %73 ], [ %71, %69 ]
  %79 = phi ptr [ %75, %73 ], [ %50, %69 ]
  %80 = tail call fastcc i32 @snd_soc_dapm_add_path(ptr noundef %78, ptr noundef nonnull %79, ptr noundef nonnull %16, ptr noundef null, ptr noundef null) #20
  br label %81

81:                                               ; preds = %77, %63, %48
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_soc_dapm_stream_event(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.list_head, align 8
  %5 = alloca %struct.list_head, align 8
  %6 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %8) #20
  %9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 9
  %10 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 11
  %11 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 10
  %12 = load i32, ptr %10, align 4
  %13 = load i32, ptr %11, align 4
  %14 = sub i32 0, %12
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %143, label %16

16:                                               ; preds = %3
  %17 = icmp eq i32 %1, 0
  %18 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %19 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  br label %20

20:                                               ; preds = %137, %16
  %21 = phi i32 [ 0, %16 ], [ %138, %137 ]
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr ptr, ptr %22, i32 %21
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %143, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.snd_soc_dai, ptr %24, i32 0, i32 5
  %28 = getelementptr inbounds %struct.snd_soc_dai, ptr %24, i32 0, i32 6
  %29 = select i1 %17, ptr %27, ptr %28
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %137, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %30, i32 0, i32 25
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %30, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %38, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.snd_soc_card, ptr %40, i32 0, i32 49
  %42 = getelementptr inbounds %struct.snd_soc_card, ptr %40, i32 0, i32 49, i32 1
  %43 = load ptr, ptr %42, align 4
  store ptr %33, ptr %42, align 4
  store ptr %41, ptr %33, align 4
  %44 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %30, i32 0, i32 25, i32 1
  store ptr %43, ptr %44, align 4
  store volatile ptr %33, ptr %43, align 4
  br label %45

45:                                               ; preds = %36, %32
  %46 = load i32, ptr %30, align 4
  %47 = icmp eq i32 %46, 27
  br i1 %47, label %48, label %84

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %49 = getelementptr %struct.snd_soc_dapm_widget, ptr %30, i32 0, i32 26, i32 0
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %83, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %30, i32 0, i32 23
  store ptr %53, ptr %19, align 4
  store ptr %5, ptr %53, align 4
  %54 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %30, i32 0, i32 23, i32 1
  store ptr %5, ptr %54, align 4
  store volatile ptr %53, ptr %5, align 8
  store i32 -1, ptr %49, align 4
  %55 = icmp eq ptr %53, %5
  br i1 %55, label %83, label %59

56:                                               ; preds = %80, %59
  %57 = load ptr, ptr %60, align 4
  %58 = icmp eq ptr %57, %5
  br i1 %58, label %83, label %59

59:                                               ; preds = %56, %52
  %60 = phi ptr [ %57, %56 ], [ %53, %52 ]
  %61 = getelementptr i8, ptr %60, i32 -16
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %61
  br i1 %63, label %56, label %64

64:                                               ; preds = %80, %59
  %65 = phi ptr [ %81, %80 ], [ %62, %59 ]
  %66 = getelementptr i8, ptr %65, i32 -8
  %67 = load i8, ptr %66, align 4
  %68 = and i8 %67, 13
  %69 = icmp eq i8 %68, 1
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = getelementptr i8, ptr %65, i32 -12
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr %struct.snd_soc_dapm_widget, ptr %72, i32 0, i32 26, i32 0
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %80, label %76

76:                                               ; preds = %70
  store i32 -1, ptr %73, align 4
  %77 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %72, i32 0, i32 23
  %78 = load ptr, ptr %19, align 4
  store ptr %77, ptr %19, align 4
  store ptr %5, ptr %77, align 4
  %79 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %72, i32 0, i32 23, i32 1
  store ptr %78, ptr %79, align 4
  store volatile ptr %77, ptr %78, align 4
  br label %80

80:                                               ; preds = %76, %70, %64
  %81 = load ptr, ptr %65, align 4
  %82 = icmp eq ptr %81, %61
  br i1 %82, label %56, label %64

83:                                               ; preds = %56, %52, %48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  br label %123

84:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %85 = getelementptr %struct.snd_soc_dapm_widget, ptr %30, i32 0, i32 26, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %122, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %30, i32 0, i32 23
  store ptr %89, ptr %18, align 4
  store ptr %4, ptr %89, align 4
  %90 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %30, i32 0, i32 23, i32 1
  store ptr %4, ptr %90, align 4
  store volatile ptr %89, ptr %4, align 8
  store i32 -1, ptr %85, align 4
  %91 = icmp eq ptr %89, %4
  br i1 %91, label %122, label %95

92:                                               ; preds = %118, %95
  %93 = load ptr, ptr %96, align 4
  %94 = icmp eq ptr %93, %4
  br i1 %94, label %122, label %95

95:                                               ; preds = %92, %88
  %96 = phi ptr [ %93, %92 ], [ %89, %88 ]
  %97 = getelementptr i8, ptr %96, i32 -16
  %98 = getelementptr i8, ptr %96, i32 -8
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr i8, ptr %99, i32 -8
  %101 = icmp eq ptr %100, %97
  br i1 %101, label %92, label %102

102:                                              ; preds = %118, %95
  %103 = phi ptr [ %119, %118 ], [ %99, %95 ]
  %104 = getelementptr i8, ptr %103, i32 -16
  %105 = load i8, ptr %104, align 4
  %106 = and i8 %105, 13
  %107 = icmp eq i8 %106, 1
  br i1 %107, label %108, label %118

108:                                              ; preds = %102
  %109 = getelementptr i8, ptr %103, i32 -24
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr %struct.snd_soc_dapm_widget, ptr %110, i32 0, i32 26, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %118, label %114

114:                                              ; preds = %108
  store i32 -1, ptr %111, align 4
  %115 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %110, i32 0, i32 23
  %116 = load ptr, ptr %18, align 4
  store ptr %115, ptr %18, align 4
  store ptr %4, ptr %115, align 4
  %117 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %110, i32 0, i32 23, i32 1
  store ptr %116, ptr %117, align 4
  store volatile ptr %115, ptr %116, align 4
  br label %118

118:                                              ; preds = %114, %108, %102
  %119 = load ptr, ptr %103, align 4
  %120 = getelementptr i8, ptr %119, i32 -8
  %121 = icmp eq ptr %120, %97
  br i1 %121, label %92, label %102

122:                                              ; preds = %92, %88, %84
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %123

123:                                              ; preds = %122, %83
  %124 = phi i8 [ 1, %83 ], [ 2, %122 ]
  switch i32 %2, label %137 [
    i32 1, label %125
    i32 2, label %133
  ]

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %30, i32 0, i32 13
  %127 = load i16, ptr %126, align 4
  %128 = zext i8 %124 to i16
  %129 = shl nuw nsw i16 %128, 9
  %130 = and i16 %127, -1539
  %131 = or i16 %130, %129
  %132 = or i16 %131, 2
  store i16 %132, ptr %126, align 4
  br label %137

133:                                              ; preds = %123
  %134 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %30, i32 0, i32 13
  %135 = load i16, ptr %134, align 4
  %136 = and i16 %135, -1539
  store i16 %136, ptr %134, align 4
  br label %137

137:                                              ; preds = %133, %125, %123, %26
  %138 = add nuw i32 %21, 1
  %139 = load i32, ptr %10, align 4
  %140 = load i32, ptr %11, align 4
  %141 = add i32 %140, %139
  %142 = icmp ult i32 %138, %141
  br i1 %142, label %20, label %143

143:                                              ; preds = %137, %20, %3
  %144 = load ptr, ptr %6, align 4
  %145 = call fastcc i32 @dapm_power_widgets(ptr noundef %144, i32 noundef %2) #20
  call void @mutex_unlock(ptr noundef %8) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_soc_dapm_stream_stop(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = tail call zeroext i1 @snd_soc_runtime_ignore_pmdown_time(ptr noundef %0) #20
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @snd_soc_dapm_stream_event(ptr noundef %0, i32 noundef 0, i32 noundef 2)
  br label %18

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 23
  %9 = load i8, ptr %8, align 4
  %10 = or i8 %9, 1
  store i8 %10, ptr %8, align 4
  %11 = load ptr, ptr @system_power_efficient_wq, align 4
  %12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 14
  %13 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @__msecs_to_jiffies(i32 noundef %14) #20
  %16 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %11, ptr noundef %12, i32 noundef %15) #20
  br label %18

17:                                               ; preds = %2
  tail call void @snd_soc_dapm_stream_event(ptr noundef %0, i32 noundef 1, i32 noundef 2)
  br label %18

18:                                               ; preds = %17, %7, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_soc_runtime_ignore_pmdown_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_enable_pin_unlocked(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @__snd_soc_dapm_set_pin(ptr noundef %0, ptr noundef %1, i32 noundef 1) #20
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 0) #20
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_enable_pin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %5) #20
  %6 = tail call fastcc i32 @__snd_soc_dapm_set_pin(ptr noundef %0, ptr noundef %1, i32 noundef 1) #20
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 0) #20
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %9) #20
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.list_head, align 8
  %4 = alloca %struct.list_head, align 8
  %5 = alloca [80 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %5, i8 0, i32 80, i1 false) #20, !annotation !13
  %6 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.snd_soc_component, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 80, ptr noundef nonnull @.str.9, ptr noundef nonnull %11, ptr noundef %1) #20
  br label %15

15:                                               ; preds = %13, %9, %2
  %16 = phi ptr [ %5, %13 ], [ %1, %9 ], [ %1, %2 ]
  %17 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.snd_soc_card, ptr %18, i32 0, i32 46
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #20
  br label %42

23:                                               ; preds = %35, %15
  %24 = phi ptr [ %37, %35 ], [ %20, %15 ]
  %25 = phi ptr [ %36, %35 ], [ null, %15 ]
  %26 = getelementptr i8, ptr %24, i32 -8
  %27 = load ptr, ptr %26, align 4
  %28 = call i32 @strcmp(ptr noundef %27, ptr noundef %16) #20
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = getelementptr i8, ptr %24, i32 -12
  %32 = getelementptr i8, ptr %24, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30, %23
  %36 = phi ptr [ %25, %23 ], [ %31, %30 ]
  %37 = load ptr, ptr %24, align 4
  %38 = icmp eq ptr %37, %19
  br i1 %38, label %39, label %23

39:                                               ; preds = %35, %30
  %40 = phi ptr [ %31, %30 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #20
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39, %22
  %43 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.13, ptr noundef %1) #22
  br label %143

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %40, i32 0, i32 13
  %47 = load i16, ptr %46, align 4
  %48 = and i16 %47, 4
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %128

50:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %51 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %52 = getelementptr %struct.snd_soc_dapm_widget, ptr %40, i32 0, i32 26, i32 0
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %86, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %40, i32 0, i32 23
  store ptr %56, ptr %51, align 4
  store ptr %4, ptr %56, align 4
  %57 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %40, i32 0, i32 23, i32 1
  store ptr %4, ptr %57, align 4
  store volatile ptr %56, ptr %4, align 8
  store i32 -1, ptr %52, align 4
  %58 = icmp eq ptr %56, %4
  br i1 %58, label %86, label %62

59:                                               ; preds = %83, %62
  %60 = load ptr, ptr %63, align 4
  %61 = icmp eq ptr %60, %4
  br i1 %61, label %86, label %62

62:                                               ; preds = %59, %55
  %63 = phi ptr [ %60, %59 ], [ %56, %55 ]
  %64 = getelementptr i8, ptr %63, i32 -16
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %64
  br i1 %66, label %59, label %67

67:                                               ; preds = %83, %62
  %68 = phi ptr [ %84, %83 ], [ %65, %62 ]
  %69 = getelementptr i8, ptr %68, i32 -8
  %70 = load i8, ptr %69, align 4
  %71 = and i8 %70, 13
  %72 = icmp eq i8 %71, 1
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = getelementptr i8, ptr %68, i32 -12
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr %struct.snd_soc_dapm_widget, ptr %75, i32 0, i32 26, i32 0
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %83, label %79

79:                                               ; preds = %73
  store i32 -1, ptr %76, align 4
  %80 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %75, i32 0, i32 23
  %81 = load ptr, ptr %51, align 4
  store ptr %80, ptr %51, align 4
  store ptr %4, ptr %80, align 4
  %82 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %75, i32 0, i32 23, i32 1
  store ptr %81, ptr %82, align 4
  store volatile ptr %80, ptr %81, align 4
  br label %83

83:                                               ; preds = %79, %73, %67
  %84 = load ptr, ptr %68, align 4
  %85 = icmp eq ptr %84, %64
  br i1 %85, label %59, label %67

86:                                               ; preds = %59, %55, %50
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %87 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %88 = getelementptr %struct.snd_soc_dapm_widget, ptr %40, i32 0, i32 26, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %125, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %40, i32 0, i32 23
  store ptr %92, ptr %87, align 4
  store ptr %3, ptr %92, align 4
  %93 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %40, i32 0, i32 23, i32 1
  store ptr %3, ptr %93, align 4
  store volatile ptr %92, ptr %3, align 8
  store i32 -1, ptr %88, align 4
  %94 = icmp eq ptr %92, %3
  br i1 %94, label %125, label %98

95:                                               ; preds = %121, %98
  %96 = load ptr, ptr %99, align 4
  %97 = icmp eq ptr %96, %3
  br i1 %97, label %125, label %98

98:                                               ; preds = %95, %91
  %99 = phi ptr [ %96, %95 ], [ %92, %91 ]
  %100 = getelementptr i8, ptr %99, i32 -16
  %101 = getelementptr i8, ptr %99, i32 -8
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr i8, ptr %102, i32 -8
  %104 = icmp eq ptr %103, %100
  br i1 %104, label %95, label %105

105:                                              ; preds = %121, %98
  %106 = phi ptr [ %122, %121 ], [ %102, %98 ]
  %107 = getelementptr i8, ptr %106, i32 -16
  %108 = load i8, ptr %107, align 4
  %109 = and i8 %108, 13
  %110 = icmp eq i8 %109, 1
  br i1 %110, label %111, label %121

111:                                              ; preds = %105
  %112 = getelementptr i8, ptr %106, i32 -24
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr %struct.snd_soc_dapm_widget, ptr %113, i32 0, i32 26, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %121, label %117

117:                                              ; preds = %111
  store i32 -1, ptr %114, align 4
  %118 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %113, i32 0, i32 23
  %119 = load ptr, ptr %87, align 4
  store ptr %118, ptr %87, align 4
  store ptr %3, ptr %118, align 4
  %120 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %113, i32 0, i32 23, i32 1
  store ptr %119, ptr %120, align 4
  store volatile ptr %118, ptr %119, align 4
  br label %121

121:                                              ; preds = %117, %111, %105
  %122 = load ptr, ptr %106, align 4
  %123 = getelementptr i8, ptr %122, i32 -8
  %124 = icmp eq ptr %123, %100
  br i1 %124, label %95, label %105

125:                                              ; preds = %95, %91, %86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  %126 = load i16, ptr %46, align 4
  %127 = or i16 %126, 4
  store i16 %127, ptr %46, align 4
  br label %128

128:                                              ; preds = %125, %45
  %129 = phi i16 [ %127, %125 ], [ %47, %45 ]
  %130 = or i16 %129, 16
  store i16 %130, ptr %46, align 4
  %131 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %40, i32 0, i32 25
  %132 = load volatile ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, %131
  br i1 %133, label %134, label %143

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %40, i32 0, i32 4
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %136, i32 0, i32 4
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.snd_soc_card, ptr %138, i32 0, i32 49
  %140 = getelementptr inbounds %struct.snd_soc_card, ptr %138, i32 0, i32 49, i32 1
  %141 = load ptr, ptr %140, align 4
  store ptr %131, ptr %140, align 4
  store ptr %139, ptr %131, align 4
  %142 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %40, i32 0, i32 25, i32 1
  store ptr %141, ptr %142, align 4
  store volatile ptr %131, ptr %141, align 4
  br label %143

143:                                              ; preds = %134, %128, %42
  %144 = phi i32 [ -22, %42 ], [ 0, %128 ], [ 0, %134 ]
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_force_enable_pin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %5) #20
  %6 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %0, ptr noundef %1)
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %8) #20
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @__snd_soc_dapm_set_pin(ptr noundef %0, ptr noundef %1, i32 noundef 0) #20
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 0) #20
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_disable_pin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %5) #20
  %6 = tail call fastcc i32 @__snd_soc_dapm_set_pin(ptr noundef %0, ptr noundef %1, i32 noundef 0) #20
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 0) #20
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %9) #20
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_nc_pin_unlocked(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @__snd_soc_dapm_set_pin(ptr noundef %0, ptr noundef %1, i32 noundef 0) #20
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 0) #20
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_nc_pin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %5) #20
  %6 = tail call fastcc i32 @__snd_soc_dapm_set_pin(ptr noundef %0, ptr noundef %1, i32 noundef 0) #20
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 0) #20
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %9) #20
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_dapm_ignore_suspend(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca [80 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %3, i8 0, i32 80, i1 false) #20, !annotation !13
  %4 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 80, ptr noundef nonnull @.str.9, ptr noundef nonnull %9, ptr noundef %1) #20
  br label %13

13:                                               ; preds = %11, %7, %2
  %14 = phi ptr [ %3, %11 ], [ %1, %7 ], [ %1, %2 ]
  %15 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.snd_soc_card, ptr %16, i32 0, i32 46
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %33, label %20

20:                                               ; preds = %30, %13
  %21 = phi ptr [ %31, %30 ], [ %18, %13 ]
  %22 = getelementptr i8, ptr %21, i32 -8
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @strcmp(ptr noundef %23, ptr noundef %14) #20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = getelementptr i8, ptr %21, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26, %20
  %31 = load ptr, ptr %21, align 4
  %32 = icmp eq ptr %31, %17
  br i1 %32, label %33, label %20

33:                                               ; preds = %30, %13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #20
  br label %37

34:                                               ; preds = %26
  %35 = getelementptr i8, ptr %21, i32 -12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #20
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %33
  %38 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.13, ptr noundef %1) #22
  br label %44

40:                                               ; preds = %34
  %41 = getelementptr i8, ptr %21, i32 44
  %42 = load i16, ptr %41, align 4
  %43 = or i16 %42, 32
  store i16 %43, ptr %41, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i32 [ 0, %40 ], [ -22, %37 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_soc_dapm_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  tail call void @debugfs_remove(ptr noundef %3) #20
  store ptr null, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 46
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %23, label %9

9:                                                ; preds = %19, %1
  %10 = phi ptr [ %20, %19 ], [ %5, %1 ]
  %11 = phi ptr [ %12, %19 ], [ %7, %1 ]
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %11, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = getelementptr i8, ptr %11, i32 -12
  tail call void @snd_soc_dapm_free_widget(ptr noundef %17) #20
  %18 = load ptr, ptr %4, align 4
  br label %19

19:                                               ; preds = %16, %9
  %20 = phi ptr [ %10, %9 ], [ %18, %16 ]
  %21 = getelementptr inbounds %struct.snd_soc_card, ptr %20, i32 0, i32 46
  %22 = icmp eq ptr %12, %21
  br i1 %22, label %23, label %9

23:                                               ; preds = %19, %1
  %24 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 7
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 8
  store ptr null, ptr %25, align 4
  %26 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 6
  %27 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 6, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store volatile ptr %29, ptr %28, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %26, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %27, align 4
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_soc_dapm_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  store ptr %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 3
  store ptr %2, ptr %5, align 4
  store i32 0, ptr %0, align 4
  %6 = icmp eq ptr %2, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_soc_component, ptr %2, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 2
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.snd_soc_component, ptr %2, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_soc_component_driver, ptr %12, i32 0, i32 41
  %14 = load i8, ptr %13, align 4
  %15 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 1
  %16 = lshr i8 %14, 1
  %17 = and i8 %16, 1
  %18 = load i8, ptr %15, align 4
  %19 = and i8 %18, -2
  %20 = or i8 %17, %19
  %21 = xor i8 %20, 1
  store i8 %21, ptr %15, align 4
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr inbounds %struct.snd_soc_component_driver, ptr %22, i32 0, i32 41
  %24 = load i8, ptr %23, align 4
  %25 = lshr i8 %24, 1
  %26 = and i8 %25, 2
  %27 = and i8 %21, -3
  %28 = or i8 %26, %27
  store i8 %28, ptr %15, align 4
  br label %33

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 2
  store ptr %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %29, %7
  %34 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 6
  store volatile ptr %34, ptr %34, align 4
  %35 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 6, i32 1
  store ptr %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 48
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %34, ptr %38, align 4
  store ptr %37, ptr %34, align 4
  store ptr %36, ptr %35, align 4
  store volatile ptr %34, ptr %36, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_soc_dapm_shutdown(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 48
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 51
  br label %7

7:                                                ; preds = %16, %5
  %8 = phi ptr [ %3, %5 ], [ %17, %16 ]
  %9 = getelementptr i8, ptr %8, i32 -24
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  tail call fastcc void @soc_dapm_shutdown_dapm(ptr noundef %9)
  %12 = load i32, ptr %9, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call fastcc i32 @snd_soc_dapm_set_bias_level(ptr noundef %9, i32 noundef 0)
  br label %16

16:                                               ; preds = %14, %11, %7
  %17 = load ptr, ptr %8, align 4
  %18 = icmp eq ptr %17, %2
  br i1 %18, label %19, label %7

19:                                               ; preds = %16, %1
  %20 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 51
  tail call fastcc void @soc_dapm_shutdown_dapm(ptr noundef %20)
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = tail call fastcc i32 @snd_soc_dapm_set_bias_level(ptr noundef %20, i32 noundef 0)
  br label %25

25:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @soc_dapm_shutdown_dapm(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  store ptr %2, ptr %2, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 10
  call void @mutex_lock(ptr noundef %6) #20
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 46
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %46, label %11

11:                                               ; preds = %28, %1
  %12 = phi ptr [ %29, %28 ], [ %7, %1 ]
  %13 = phi ptr [ %31, %28 ], [ %9, %1 ]
  %14 = phi i32 [ %30, %28 ], [ 0, %1 ]
  %15 = getelementptr i8, ptr %13, i32 -12
  %16 = getelementptr i8, ptr %13, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %28

19:                                               ; preds = %11
  %20 = getelementptr i8, ptr %13, i32 44
  %21 = load i16, ptr %20, align 4
  %22 = and i16 %21, 1
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  call fastcc void @dapm_seq_insert(ptr noundef %15, ptr noundef nonnull %2, i1 noundef zeroext false)
  %25 = load i16, ptr %20, align 4
  %26 = and i16 %25, -65
  store i16 %26, ptr %20, align 4
  %27 = load ptr, ptr %3, align 4
  br label %28

28:                                               ; preds = %24, %19, %11
  %29 = phi ptr [ %12, %11 ], [ %27, %24 ], [ %12, %19 ]
  %30 = phi i32 [ %14, %11 ], [ 1, %24 ], [ %14, %19 ]
  %31 = load ptr, ptr %13, align 4
  %32 = getelementptr inbounds %struct.snd_soc_card, ptr %29, i32 0, i32 46
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %34, label %11

34:                                               ; preds = %28
  %35 = icmp eq i32 %30, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %34
  %37 = load i32, ptr %0, align 4
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call fastcc i32 @snd_soc_dapm_set_bias_level(ptr noundef %0, i32 noundef 2)
  br label %41

41:                                               ; preds = %39, %36
  call fastcc void @dapm_seq_run(ptr noundef %4, ptr noundef nonnull %2, i32 noundef 0, i1 noundef zeroext false)
  %42 = load i32, ptr %0, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call fastcc i32 @snd_soc_dapm_set_bias_level(ptr noundef %0, i32 noundef 1)
  br label %46

46:                                               ; preds = %44, %41, %34, %1
  call void @mutex_unlock(ptr noundef %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_soc_dapm_set_bias_level(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_bias_level_start, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #20
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !26
  %19 = tail call i32 @__traceiter_snd_soc_bias_level_start(ptr noundef null, ptr noundef %4, i32 noundef %1) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !27
  br label %20

20:                                               ; preds = %18, %7, %2
  %21 = tail call i32 @snd_soc_card_set_bias_level(ptr noundef %4, ptr noundef %0, i32 noundef %1) #20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = icmp ne ptr %4, null
  %25 = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 51
  %26 = icmp eq ptr %25, %0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = tail call i32 @snd_soc_component_set_bias_level(ptr noundef nonnull %30, i32 noundef %1) #20
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %28
  store i32 %1, ptr %0, align 4
  br label %36

36:                                               ; preds = %35, %23
  %37 = tail call i32 @snd_soc_card_set_bias_level_post(ptr noundef %4, ptr noundef %0, i32 noundef %1) #20
  br label %38

38:                                               ; preds = %36, %32, %20
  %39 = phi i32 [ %21, %20 ], [ %37, %36 ], [ %33, %32 ]
  %40 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_bias_level_done, i32 0, i32 1), align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = tail call ptr @llvm.thread.pointer() #20
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = lshr i32 %45, 5
  %47 = getelementptr i32, ptr @__cpu_online_mask, i32 %46
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %45, 31
  %50 = shl nuw i32 1, %49
  %51 = and i32 %50, %48
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %42
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !28
  %54 = tail call i32 @__traceiter_snd_soc_bias_level_done(ptr noundef null, ptr noundef %4, i32 noundef %1) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !29
  br label %55

55:                                               ; preds = %53, %42, %38
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_snd_soc_dapm_path(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_snd_soc_dapm_connected(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_async_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dapm_bias_read_file(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 2195, i32 noundef 9, ptr noundef nonnull @.str.20, i32 noundef %7) #20
  br label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds [4 x ptr], ptr @switch.table.dapm_bias_read_file, i32 0, i32 %7
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %9
  %14 = phi ptr [ @.str.21, %9 ], [ %12, %10 ]
  %15 = tail call i32 @strlen(ptr noundef nonnull %14)
  %16 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %14, i32 noundef %15) #20
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dapm_path_invalidate(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = alloca %struct.list_head, align 8
  %3 = alloca %struct.list_head, align 8
  %4 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 12
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %100

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %10, i32 0, i32 26
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %53, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %0, i32 0, i32 1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %17 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %18 = getelementptr %struct.snd_soc_dapm_widget, ptr %16, i32 0, i32 26, i32 0
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %52, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %16, i32 0, i32 23
  store ptr %22, ptr %17, align 4
  store ptr %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %16, i32 0, i32 23, i32 1
  store ptr %3, ptr %23, align 4
  store volatile ptr %22, ptr %3, align 8
  store i32 -1, ptr %18, align 4
  %24 = icmp eq ptr %22, %3
  br i1 %24, label %52, label %28

25:                                               ; preds = %49, %28
  %26 = load ptr, ptr %29, align 4
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %52, label %28

28:                                               ; preds = %25, %21
  %29 = phi ptr [ %26, %25 ], [ %22, %21 ]
  %30 = getelementptr i8, ptr %29, i32 -16
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %25, label %33

33:                                               ; preds = %49, %28
  %34 = phi ptr [ %50, %49 ], [ %31, %28 ]
  %35 = getelementptr i8, ptr %34, i32 -8
  %36 = load i8, ptr %35, align 4
  %37 = and i8 %36, 13
  %38 = icmp eq i8 %37, 1
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = getelementptr i8, ptr %34, i32 -12
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr %struct.snd_soc_dapm_widget, ptr %41, i32 0, i32 26, i32 0
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  store i32 -1, ptr %42, align 4
  %46 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %41, i32 0, i32 23
  %47 = load ptr, ptr %17, align 4
  store ptr %46, ptr %17, align 4
  store ptr %3, ptr %46, align 4
  %48 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %41, i32 0, i32 23, i32 1
  store ptr %47, ptr %48, align 4
  store volatile ptr %46, ptr %47, align 4
  br label %49

49:                                               ; preds = %45, %39, %33
  %50 = load ptr, ptr %34, align 4
  %51 = icmp eq ptr %50, %30
  br i1 %51, label %25, label %33

52:                                               ; preds = %25, %21, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  br label %53

53:                                               ; preds = %52, %8
  %54 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %0, i32 0, i32 1, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr %struct.snd_soc_dapm_widget, ptr %55, i32 0, i32 26, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %100, label %59

59:                                               ; preds = %53
  %60 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %61 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %62 = getelementptr %struct.snd_soc_dapm_widget, ptr %60, i32 0, i32 26, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %99, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %60, i32 0, i32 23
  store ptr %66, ptr %61, align 4
  store ptr %2, ptr %66, align 4
  %67 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %60, i32 0, i32 23, i32 1
  store ptr %2, ptr %67, align 4
  store volatile ptr %66, ptr %2, align 8
  store i32 -1, ptr %62, align 4
  %68 = icmp eq ptr %66, %2
  br i1 %68, label %99, label %72

69:                                               ; preds = %95, %72
  %70 = load ptr, ptr %73, align 4
  %71 = icmp eq ptr %70, %2
  br i1 %71, label %99, label %72

72:                                               ; preds = %69, %65
  %73 = phi ptr [ %70, %69 ], [ %66, %65 ]
  %74 = getelementptr i8, ptr %73, i32 -16
  %75 = getelementptr i8, ptr %73, i32 -8
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i8, ptr %76, i32 -8
  %78 = icmp eq ptr %77, %74
  br i1 %78, label %69, label %79

79:                                               ; preds = %95, %72
  %80 = phi ptr [ %96, %95 ], [ %76, %72 ]
  %81 = getelementptr i8, ptr %80, i32 -16
  %82 = load i8, ptr %81, align 4
  %83 = and i8 %82, 13
  %84 = icmp eq i8 %83, 1
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = getelementptr i8, ptr %80, i32 -24
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr %struct.snd_soc_dapm_widget, ptr %87, i32 0, i32 26, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %95, label %91

91:                                               ; preds = %85
  store i32 -1, ptr %88, align 4
  %92 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %87, i32 0, i32 23
  %93 = load ptr, ptr %61, align 4
  store ptr %92, ptr %61, align 4
  store ptr %2, ptr %92, align 4
  %94 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %87, i32 0, i32 23, i32 1
  store ptr %93, ptr %94, align 4
  store volatile ptr %92, ptr %93, align 4
  br label %95

95:                                               ; preds = %91, %85, %79
  %96 = load ptr, ptr %80, align 4
  %97 = getelementptr i8, ptr %96, i32 -8
  %98 = icmp eq ptr %97, %74
  br i1 %98, label %69, label %79

99:                                               ; preds = %69, %65, %59
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  br label %100

100:                                              ; preds = %99, %53, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dapm_widget_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %8) #20
  %9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 9
  %10 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %86, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 11
  br label %15

15:                                               ; preds = %80, %13
  %16 = phi i32 [ %11, %13 ], [ %81, %80 ]
  %17 = phi i32 [ 0, %13 ], [ %83, %80 ]
  %18 = phi i32 [ 0, %13 ], [ %84, %80 ]
  %19 = load ptr, ptr %9, align 4
  %20 = load i32, ptr %14, align 4
  %21 = add i32 %20, %18
  %22 = getelementptr ptr, ptr %19, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %86, label %25

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.snd_soc_dai, ptr %23, i32 0, i32 12
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %2, i32 %17
  %29 = getelementptr inbounds %struct.snd_soc_component, ptr %27, i32 0, i32 17
  %30 = getelementptr inbounds %struct.snd_soc_component, ptr %27, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %80, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.snd_soc_card, ptr %31, i32 0, i32 46
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %67, label %37

37:                                               ; preds = %61, %33
  %38 = phi ptr [ %62, %61 ], [ %31, %33 ]
  %39 = phi ptr [ %64, %61 ], [ %35, %33 ]
  %40 = phi i32 [ %63, %61 ], [ 0, %33 ]
  %41 = getelementptr i8, ptr %39, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %29
  br i1 %43, label %44, label %61

44:                                               ; preds = %37
  %45 = getelementptr i8, ptr %39, i32 -12
  %46 = load i32, ptr %45, align 4
  switch i32 %46, label %61 [
    i32 12, label %47
    i32 11, label %47
    i32 13, label %47
    i32 14, label %47
    i32 10, label %47
    i32 9, label %47
    i32 8, label %47
    i32 6, label %47
    i32 33, label %47
    i32 7, label %47
    i32 4, label %47
    i32 5, label %47
    i32 19, label %47
    i32 21, label %47
    i32 20, label %47
    i32 22, label %47
  ]

47:                                               ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %48 = getelementptr i8, ptr %39, i32 -8
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %47
  %52 = getelementptr i8, ptr %28, i32 %40
  %53 = getelementptr i8, ptr %39, i32 44
  %54 = load i16, ptr %53, align 4
  %55 = and i16 %54, 1
  %56 = icmp eq i16 %55, 0
  %57 = select i1 %56, ptr @.str.28, ptr @.str.27
  %58 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %52, ptr noundef nonnull @.str.26, ptr noundef nonnull %49, ptr noundef nonnull %57) #20
  %59 = add i32 %58, %40
  %60 = load ptr, ptr %30, align 4
  br label %61

61:                                               ; preds = %51, %47, %44, %37
  %62 = phi ptr [ %38, %37 ], [ %38, %44 ], [ %60, %51 ], [ %38, %47 ]
  %63 = phi i32 [ %40, %37 ], [ %40, %44 ], [ %59, %51 ], [ %40, %47 ]
  %64 = load ptr, ptr %39, align 4
  %65 = getelementptr inbounds %struct.snd_soc_card, ptr %62, i32 0, i32 46
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %67, label %37

67:                                               ; preds = %61, %33
  %68 = phi i32 [ 0, %33 ], [ %63, %61 ]
  %69 = load i32, ptr %29, align 4
  %70 = icmp ult i32 %69, 4
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = getelementptr inbounds [4 x ptr], ptr @switch.table.dapm_widget_show, i32 0, i32 %69
  %73 = load ptr, ptr %72, align 4
  br label %74

74:                                               ; preds = %71, %67
  %75 = phi ptr [ @.str.25, %67 ], [ %73, %71 ]
  %76 = getelementptr i8, ptr %28, i32 %68
  %77 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %76, ptr noundef nonnull @.str.31, ptr noundef nonnull %75) #20
  %78 = add i32 %77, %68
  %79 = load i32, ptr %10, align 4
  br label %80

80:                                               ; preds = %74, %25
  %81 = phi i32 [ %79, %74 ], [ %16, %25 ]
  %82 = phi i32 [ %78, %74 ], [ 0, %25 ]
  %83 = add i32 %82, %17
  %84 = add nuw i32 %18, 1
  %85 = icmp ult i32 %84, %81
  br i1 %85, label %15, label %86

86:                                               ; preds = %80, %15, %3
  %87 = phi i32 [ 0, %3 ], [ %83, %80 ], [ %17, %15 ]
  %88 = load ptr, ptr %6, align 4
  %89 = getelementptr inbounds %struct.snd_soc_card, ptr %88, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %89) #20
  ret i32 %87
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dapm_pre_sequence_async(ptr noundef %0, i64 noundef %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ne ptr %11, null
  %13 = icmp ne i64 %1, 0
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %11, i32 noundef 4) #20
  br label %17

17:                                               ; preds = %15, %9
  %18 = tail call fastcc i32 @snd_soc_dapm_set_bias_level(ptr noundef %0, i32 noundef 1)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.37, i32 noundef %18) #22
  br label %22

22:                                               ; preds = %20, %17, %5, %2
  %23 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 3
  %26 = load i32, ptr %0, align 4
  %27 = icmp eq i32 %26, 3
  br i1 %25, label %28, label %29

28:                                               ; preds = %22
  br i1 %27, label %36, label %30

29:                                               ; preds = %22
  br i1 %27, label %30, label %36

30:                                               ; preds = %29, %28
  %31 = tail call fastcc i32 @snd_soc_dapm_set_bias_level(ptr noundef %0, i32 noundef 2)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.38, i32 noundef %31) #22
  br label %36

36:                                               ; preds = %33, %30, %29, %28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_synchronize_full_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dapm_seq_check_event(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  switch i32 %2, label %9 [
    i32 1, label %10
    i32 2, label %4
    i32 4, label %5
    i32 8, label %6
    i32 64, label %7
    i32 128, label %8
  ]

4:                                                ; preds = %3
  br label %10

5:                                                ; preds = %3
  br label %10

6:                                                ; preds = %3
  br label %10

7:                                                ; preds = %3
  br label %10

8:                                                ; preds = %3
  br label %10

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1561, i32 noundef 9, ptr noundef nonnull @.str.45, i32 noundef %2) #20
  br label %84

10:                                               ; preds = %8, %7, %6, %5, %4, %3
  %11 = phi i32 [ 0, %8 ], [ 1, %7 ], [ 0, %6 ], [ 0, %5 ], [ 1, %4 ], [ %2, %3 ]
  %12 = phi ptr [ @.str.44, %8 ], [ @.str.43, %7 ], [ @.str.42, %6 ], [ @.str.41, %5 ], [ @.str.40, %4 ], [ @.str.39, %3 ]
  %13 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 13
  %14 = load i16, ptr %13, align 4
  %15 = lshr i16 %14, 6
  %16 = and i16 %15, 1
  %17 = zext i16 %16 to i32
  %18 = icmp eq i32 %11, %17
  br i1 %18, label %19, label %84

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %84, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 16
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, %2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %84, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 56
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void (ptr, i32, ptr, ...) @pop_dbg(ptr noundef %33, i32 noundef %35, ptr noundef nonnull @.str.46, ptr noundef %37, ptr noundef nonnull %12)
  %38 = load ptr, ptr %30, align 4
  %39 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %29
  tail call void @snd_soc_component_async_complete(ptr noundef nonnull %40) #20
  br label %43

43:                                               ; preds = %42, %29
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_dapm_widget_event_start, i32 0, i32 1), align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = tail call ptr @llvm.thread.pointer() #20
  %48 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 5
  %51 = getelementptr i32, ptr @__cpu_online_mask, i32 %50
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %49, 31
  %54 = shl nuw i32 1, %53
  %55 = and i32 %54, %52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %46
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !30
  %58 = tail call i32 @__traceiter_snd_soc_dapm_widget_event_start(ptr noundef null, ptr noundef %1, i32 noundef %2) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !31
  br label %59

59:                                               ; preds = %57, %46, %43
  %60 = load ptr, ptr %20, align 4
  %61 = tail call i32 %60(ptr noundef %1, ptr noundef null, i32 noundef %2) #20
  %62 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_dapm_widget_event_done, i32 0, i32 1), align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = tail call ptr @llvm.thread.pointer() #20
  %66 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %67 = load i32, ptr %66, align 8
  %68 = lshr i32 %67, 5
  %69 = getelementptr i32, ptr @__cpu_online_mask, i32 %68
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %67, 31
  %72 = shl nuw i32 1, %71
  %73 = and i32 %72, %70
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %64
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !32
  %76 = tail call i32 @__traceiter_snd_soc_dapm_widget_event_done(ptr noundef null, ptr noundef %1, i32 noundef %2) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !33
  br label %77

77:                                               ; preds = %75, %64, %59
  %78 = icmp slt i32 %61, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %77
  %80 = load ptr, ptr %30, align 4
  %81 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %80, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = load ptr, ptr %36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.47, ptr noundef nonnull %12, ptr noundef %83, i32 noundef %61) #22
  br label %84

84:                                               ; preds = %79, %77, %23, %19, %10, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dapm_seq_run(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store ptr %5, ptr %5, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = select i1 %3, ptr @dapm_up_seq, ptr @dapm_down_seq
  %8 = load ptr, ptr %1, align 4
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %156, label %10

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %8, i32 -148
  br label %12

12:                                               ; preds = %148, %10
  %13 = phi ptr [ %154, %148 ], [ %8, %10 ]
  %14 = phi ptr [ %149, %148 ], [ %11, %10 ]
  %15 = phi i32 [ %150, %148 ], [ -1, %10 ]
  %16 = phi i32 [ %151, %148 ], [ -1, %10 ]
  %17 = phi i32 [ %152, %148 ], [ -1, %10 ]
  %18 = phi ptr [ %153, %148 ], [ null, %10 ]
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr i8, ptr %19, i32 -148
  %21 = load i32, ptr %14, align 4
  %22 = getelementptr i32, ptr %7, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %15
  br i1 %24, label %25, label %37

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %14, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %17
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %14, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %18
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %14, i32 0, i32 14
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, %16
  br i1 %36, label %67, label %37

37:                                               ; preds = %33, %29, %25, %12
  %38 = load volatile ptr, ptr %5, align 8
  %39 = icmp eq ptr %38, %5
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  call fastcc void @dapm_seq_run_coalesced(ptr noundef %0, ptr noundef nonnull %5)
  br label %41

41:                                               ; preds = %40, %37
  %42 = icmp eq ptr %18, null
  br i1 %42, label %65, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %18, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %54, %43
  %48 = phi i32 [ %55, %54 ], [ 0, %43 ]
  %49 = getelementptr i32, ptr %7, i32 %48
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, %15
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load ptr, ptr %44, align 4
  call void @snd_soc_component_seq_notifier(ptr noundef %53, i32 noundef %48, i32 noundef %16) #20
  br label %54

54:                                               ; preds = %52, %47
  %55 = add nuw nsw i32 %48, 1
  %56 = icmp eq i32 %55, 38
  br i1 %56, label %57, label %47

57:                                               ; preds = %54, %43
  %58 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %14, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %18
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %44, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  call void @snd_soc_component_async_complete(ptr noundef nonnull %62) #20
  br label %65

65:                                               ; preds = %64, %61, %57, %41
  store volatile ptr %5, ptr %5, align 8
  store ptr %5, ptr %6, align 4
  %66 = load i32, ptr %14, align 4
  br label %67

67:                                               ; preds = %65, %33
  %68 = phi i32 [ %66, %65 ], [ %21, %33 ]
  %69 = phi ptr [ null, %65 ], [ %18, %33 ]
  %70 = phi i32 [ -1, %65 ], [ %17, %33 ]
  %71 = phi i32 [ -2147483648, %65 ], [ %16, %33 ]
  %72 = phi i32 [ -1, %65 ], [ %15, %33 ]
  switch i32 %68, label %123 [
    i32 17, label %73
    i32 18, label %98
  ]

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %14, i32 0, i32 17
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = load ptr, ptr %13, align 4
  %79 = getelementptr i8, ptr %78, i32 -148
  br label %80

80:                                               ; preds = %80, %77
  %81 = phi ptr [ %78, %77 ], [ %83, %80 ]
  %82 = phi ptr [ %79, %77 ], [ %84, %80 ]
  %83 = load ptr, ptr %81, align 4
  %84 = getelementptr i8, ptr %83, i32 -148
  %85 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %82, i32 0, i32 24
  %86 = icmp eq ptr %85, %1
  br i1 %86, label %87, label %80

87:                                               ; preds = %80, %73
  %88 = phi ptr [ %20, %73 ], [ %84, %80 ]
  %89 = phi ptr [ %14, %73 ], [ %82, %80 ]
  switch i32 %2, label %148 [
    i32 1, label %90
    i32 2, label %94
  ]

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %89, i32 0, i32 17
  %92 = load ptr, ptr %91, align 4
  %93 = call i32 %92(ptr noundef %89, ptr noundef null, i32 noundef 1) #20
  br label %138

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %89, i32 0, i32 17
  %96 = load ptr, ptr %95, align 4
  %97 = call i32 %96(ptr noundef %89, ptr noundef null, i32 noundef 4) #20
  br label %138

98:                                               ; preds = %67
  %99 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %14, i32 0, i32 17
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = load ptr, ptr %13, align 4
  %104 = getelementptr i8, ptr %103, i32 -148
  br label %105

105:                                              ; preds = %105, %102
  %106 = phi ptr [ %103, %102 ], [ %108, %105 ]
  %107 = phi ptr [ %104, %102 ], [ %109, %105 ]
  %108 = load ptr, ptr %106, align 4
  %109 = getelementptr i8, ptr %108, i32 -148
  %110 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %107, i32 0, i32 24
  %111 = icmp eq ptr %110, %1
  br i1 %111, label %112, label %105

112:                                              ; preds = %105, %98
  %113 = phi ptr [ %20, %98 ], [ %109, %105 ]
  %114 = phi ptr [ %14, %98 ], [ %107, %105 ]
  switch i32 %2, label %148 [
    i32 1, label %115
    i32 2, label %119
  ]

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %114, i32 0, i32 17
  %117 = load ptr, ptr %116, align 4
  %118 = call i32 %117(ptr noundef %114, ptr noundef null, i32 noundef 2) #20
  br label %138

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %114, i32 0, i32 17
  %121 = load ptr, ptr %120, align 4
  %122 = call i32 %121(ptr noundef %114, ptr noundef null, i32 noundef 8) #20
  br label %138

123:                                              ; preds = %67
  %124 = getelementptr i32, ptr %7, i32 %68
  %125 = load i32, ptr %124, align 4
  %126 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %14, i32 0, i32 14
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %14, i32 0, i32 8
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %14, i32 0, i32 4
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %14, i32 0, i32 24, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = load ptr, ptr %13, align 4
  %135 = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  store ptr %133, ptr %135, align 4
  store volatile ptr %134, ptr %133, align 4
  %136 = load ptr, ptr %5, align 8
  %137 = getelementptr inbounds %struct.list_head, ptr %136, i32 0, i32 1
  store ptr %13, ptr %137, align 4
  store ptr %136, ptr %13, align 4
  store ptr %5, ptr %132, align 4
  store volatile ptr %13, ptr %5, align 8
  br label %148

138:                                              ; preds = %119, %115, %94, %90
  %139 = phi i32 [ %118, %115 ], [ %122, %119 ], [ %93, %90 ], [ %97, %94 ]
  %140 = phi ptr [ %113, %115 ], [ %113, %119 ], [ %88, %90 ], [ %88, %94 ]
  %141 = phi ptr [ %114, %115 ], [ %114, %119 ], [ %89, %90 ], [ %89, %94 ]
  %142 = icmp slt i32 %139, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %141, i32 0, i32 4
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %145, i32 0, i32 2
  %147 = load ptr, ptr %146, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.48, i32 noundef %139) #22
  br label %148

148:                                              ; preds = %143, %138, %123, %112, %87
  %149 = phi ptr [ %140, %143 ], [ %140, %138 ], [ %113, %112 ], [ %88, %87 ], [ %20, %123 ]
  %150 = phi i32 [ %72, %143 ], [ %72, %138 ], [ %72, %112 ], [ %72, %87 ], [ %125, %123 ]
  %151 = phi i32 [ %71, %143 ], [ %71, %138 ], [ %71, %112 ], [ %71, %87 ], [ %127, %123 ]
  %152 = phi i32 [ %70, %143 ], [ %70, %138 ], [ %70, %112 ], [ %70, %87 ], [ %129, %123 ]
  %153 = phi ptr [ %69, %143 ], [ %69, %138 ], [ %69, %112 ], [ %69, %87 ], [ %131, %123 ]
  %154 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %149, i32 0, i32 24
  %155 = icmp eq ptr %154, %1
  br i1 %155, label %156, label %12

156:                                              ; preds = %148, %4
  %157 = phi ptr [ null, %4 ], [ %153, %148 ]
  %158 = phi i32 [ -1, %4 ], [ %151, %148 ]
  %159 = phi i32 [ -1, %4 ], [ %150, %148 ]
  %160 = load volatile ptr, ptr %5, align 8
  %161 = icmp eq ptr %160, %5
  br i1 %161, label %163, label %162

162:                                              ; preds = %156
  call fastcc void @dapm_seq_run_coalesced(ptr noundef %0, ptr noundef nonnull %5)
  br label %163

163:                                              ; preds = %162, %156
  %164 = icmp eq ptr %157, null
  br i1 %164, label %179, label %165

165:                                              ; preds = %163
  %166 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %157, i32 0, i32 3
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %179, label %169

169:                                              ; preds = %176, %165
  %170 = phi i32 [ %177, %176 ], [ 0, %165 ]
  %171 = getelementptr i32, ptr %7, i32 %170
  %172 = load i32, ptr %171, align 4
  %173 = icmp eq i32 %172, %159
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = load ptr, ptr %166, align 4
  call void @snd_soc_component_seq_notifier(ptr noundef %175, i32 noundef %170, i32 noundef %158) #20
  br label %176

176:                                              ; preds = %174, %169
  %177 = add nuw nsw i32 %170, 1
  %178 = icmp eq i32 %177, 38
  br i1 %178, label %179, label %169

179:                                              ; preds = %176, %165, %163
  %180 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 48
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, %180
  br i1 %182, label %192, label %183

183:                                              ; preds = %189, %179
  %184 = phi ptr [ %190, %189 ], [ %181, %179 ]
  %185 = getelementptr i8, ptr %184, i32 -12
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %183
  call void @snd_soc_component_async_complete(ptr noundef nonnull %186) #20
  br label %189

189:                                              ; preds = %188, %183
  %190 = load ptr, ptr %184, align 4
  %191 = icmp eq ptr %190, %180
  br i1 %191, label %192, label %183

192:                                              ; preds = %189, %179
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dapm_post_sequence_async(ptr noundef %0, i64 noundef %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = tail call fastcc i32 @snd_soc_dapm_set_bias_level(ptr noundef %0, i32 noundef 1)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.54, i32 noundef %10) #22
  br label %15

15:                                               ; preds = %12, %9, %5
  %16 = load i32, ptr %0, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi i32 [ %16, %15 ], [ %3, %2 ]
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = tail call fastcc i32 @snd_soc_dapm_set_bias_level(ptr noundef %0, i32 noundef 0)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.55, i32 noundef %25) #22
  br label %30

30:                                               ; preds = %27, %24
  %31 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp ne ptr %32, null
  %34 = icmp ne i64 %1, 0
  %35 = and i1 %34, %33
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %32, i32 noundef 5) #20
  br label %38

38:                                               ; preds = %36, %30, %20, %17
  %39 = load i32, ptr %0, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = tail call fastcc i32 @snd_soc_dapm_set_bias_level(ptr noundef %0, i32 noundef 3)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.56, i32 noundef %46) #22
  br label %51

51:                                               ; preds = %48, %45, %41, %38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_stream_event(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pop_dbg(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ...) unnamed_addr #0 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !annotation !13
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 4096) #23
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  call void @llvm.va_start(ptr nonnull %4)
  %11 = load i32, ptr %4, align 4
  %12 = insertvalue [1 x i32] poison, i32 %11, 0
  %13 = call i32 @vsnprintf(ptr noundef nonnull %8, i32 noundef 4096, ptr noundef %2, [1 x i32] %12)
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.57, ptr noundef nonnull %8) #22
  call void @llvm.va_end(ptr nonnull %4)
  call void @kfree(ptr noundef nonnull %8) #20
  br label %14

14:                                               ; preds = %10, %6, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_snd_soc_dapm_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dapm_seq_insert(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = select i1 %2, ptr @dapm_up_seq, ptr @dapm_down_seq
  %5 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 14
  %6 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 8
  %7 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  br label %8

8:                                                ; preds = %68, %3
  %9 = phi ptr [ %1, %3 ], [ %10, %68 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %76, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %10, i32 -148
  %14 = load i32, ptr %0, align 4
  %15 = getelementptr i32, ptr %4, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = load i1, ptr @dapm_seq_compare.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !23

21:                                               ; preds = %12
  store i1 true, ptr @dapm_seq_compare.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1494, i32 noundef 9, ptr noundef nonnull @.str.33, i32 noundef %14) #20
  br label %22

22:                                               ; preds = %21, %12
  %23 = load i32, ptr %13, align 4
  %24 = getelementptr i32, ptr %4, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  %27 = load i1, ptr @dapm_seq_compare.__already_done.34, align 1
  %28 = xor i1 %27, true
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %34, !prof !23

30:                                               ; preds = %22
  store i1 true, ptr @dapm_seq_compare.__already_done.34, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1495, i32 noundef 9, ptr noundef nonnull @.str.35, i32 noundef %23) #20
  %31 = load i32, ptr %13, align 4
  %32 = getelementptr i32, ptr %4, i32 %31
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %30, %22
  %35 = phi i32 [ %33, %30 ], [ %25, %22 ]
  %36 = load i32, ptr %0, align 4
  %37 = getelementptr i32, ptr %4, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, %35
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = sub i32 %38, %35
  br label %68

42:                                               ; preds = %34
  %43 = load i32, ptr %5, align 4
  %44 = getelementptr i8, ptr %10, i32 -88
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  br i1 %2, label %48, label %50

48:                                               ; preds = %47
  %49 = sub i32 %43, %45
  br label %68

50:                                               ; preds = %47
  %51 = sub i32 %45, %43
  br label %68

52:                                               ; preds = %42
  %53 = load i32, ptr %6, align 4
  %54 = getelementptr i8, ptr %10, i32 -112
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = sub i32 %53, %55
  br label %68

59:                                               ; preds = %52
  %60 = load ptr, ptr %7, align 4
  %61 = getelementptr i8, ptr %10, i32 -128
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %60, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = ptrtoint ptr %60 to i32
  %66 = ptrtoint ptr %62 to i32
  %67 = sub i32 %65, %66
  br label %68

68:                                               ; preds = %64, %59, %57, %50, %48, %40
  %69 = phi i32 [ %41, %40 ], [ %49, %48 ], [ %51, %50 ], [ %58, %57 ], [ %67, %64 ], [ 0, %59 ]
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %8

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 24
  %73 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  store ptr %72, ptr %73, align 4
  store ptr %10, ptr %72, align 4
  %75 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 24, i32 1
  store ptr %74, ptr %75, align 4
  store volatile ptr %72, ptr %74, align 4
  br label %81

76:                                               ; preds = %8
  %77 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 24
  %78 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  store ptr %77, ptr %78, align 4
  store ptr %1, ptr %77, align 4
  %80 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 24, i32 1
  store ptr %79, ptr %80, align 4
  store volatile ptr %77, ptr %79, align 4
  br label %81

81:                                               ; preds = %76, %71
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_snd_soc_dapm_widget_power(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_snd_soc_dapm_walk_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @async_schedule_node_domain(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_snd_soc_dapm_widget_event_start(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_snd_soc_dapm_widget_event_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dapm_seq_run_coalesced(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 -112
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 -128
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %3, %1
  br i1 %8, label %55, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %7, i32 0, i32 2
  %11 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 56
  br label %12

12:                                               ; preds = %52, %9
  %13 = phi i32 [ %5, %9 ], [ %54, %52 ]
  %14 = phi ptr [ %3, %9 ], [ %50, %52 ]
  %15 = phi i32 [ 0, %9 ], [ %45, %52 ]
  %16 = phi i32 [ 0, %9 ], [ %39, %52 ]
  %17 = getelementptr i8, ptr %14, i32 -148
  %18 = icmp eq i32 %5, %13
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %14, i32 -128
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %7, %21
  br i1 %22, label %24, label %23, !prof !25

23:                                               ; preds = %19, %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1598, i32 noundef 9, ptr noundef null) #20
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr i8, ptr %14, i32 -92
  %26 = load i16, ptr %25, align 4
  %27 = trunc i16 %26 to i8
  %28 = lshr i8 %27, 6
  %29 = and i8 %28, 1
  %30 = zext i8 %29 to i16
  %31 = and i16 %26, -2
  %32 = or i16 %31, %30
  store i16 %32, ptr %25, align 4
  %33 = getelementptr i8, ptr %14, i32 -104
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i8, ptr %14, i32 -108
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i32
  %38 = shl i32 %34, %37
  %39 = or i32 %38, %16
  %40 = icmp eq i8 %29, 0
  %41 = select i1 %40, i32 -96, i32 -100
  %42 = getelementptr i8, ptr %14, i32 %41
  %43 = load i32, ptr %42, align 4
  %44 = shl i32 %43, %37
  %45 = or i32 %44, %15
  %46 = load ptr, ptr %10, align 4
  %47 = load i32, ptr %11, align 4
  %48 = getelementptr i8, ptr %14, i32 -144
  %49 = load ptr, ptr %48, align 4
  tail call void (ptr, i32, ptr, ...) @pop_dbg(ptr noundef %46, i32 noundef %47, ptr noundef nonnull @.str.49, ptr noundef %49, i32 noundef %5, i32 noundef %45, i32 noundef %39)
  tail call fastcc void @dapm_seq_check_event(ptr noundef %0, ptr noundef %17, i32 noundef 1)
  tail call fastcc void @dapm_seq_check_event(ptr noundef %0, ptr noundef %17, i32 noundef 4)
  %50 = load ptr, ptr %14, align 4
  %51 = icmp eq ptr %50, %1
  br i1 %51, label %55, label %52

52:                                               ; preds = %24
  %53 = getelementptr i8, ptr %50, i32 -112
  %54 = load i32, ptr %53, align 4
  br label %12

55:                                               ; preds = %24, %2
  %56 = phi i32 [ 0, %2 ], [ %39, %24 ]
  %57 = phi i32 [ 0, %2 ], [ %45, %24 ]
  %58 = icmp sgt i32 %5, -1
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %7, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 56
  %63 = load i32, ptr %62, align 4
  tail call void (ptr, i32, ptr, ...) @pop_dbg(ptr noundef %61, i32 noundef %63, ptr noundef nonnull @.str.50, i32 noundef %57, i32 noundef %56, i32 noundef %5, i32 noundef %63)
  %64 = load i32, ptr %62, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = tail call i32 @__msecs_to_jiffies(i32 noundef %64) #20
  %68 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %67) #20
  br label %69

69:                                               ; preds = %66, %59
  %70 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %7, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = tail call i32 @snd_soc_component_update_bits(ptr noundef nonnull %71, i32 noundef %5, i32 noundef %56, i32 noundef %57) #20
  br label %75

75:                                               ; preds = %73, %69, %55
  %76 = load ptr, ptr %1, align 4
  %77 = icmp eq ptr %76, %1
  br i1 %77, label %83, label %78

78:                                               ; preds = %78, %75
  %79 = phi ptr [ %81, %78 ], [ %76, %75 ]
  %80 = getelementptr i8, ptr %79, i32 -148
  tail call fastcc void @dapm_seq_check_event(ptr noundef %0, ptr noundef %80, i32 noundef 2)
  tail call fastcc void @dapm_seq_check_event(ptr noundef %0, ptr noundef %80, i32 noundef 8)
  %81 = load ptr, ptr %79, align 4
  %82 = icmp eq ptr %81, %1
  br i1 %82, label %83, label %78

83:                                               ; preds = %78, %75
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_seq_notifier(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #16

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_snd_soc_dapm_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dapm_update_dai_chan(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #8 {
  %4 = load i32, ptr %1, align 4
  %5 = add i32 %4, -23
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %80

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 28
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %9, %2
  %11 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %10, label %15, label %47

15:                                               ; preds = %7
  br i1 %14, label %16, label %80

16:                                               ; preds = %15
  %17 = or i8 %12, 1
  store i8 %17, ptr %11, align 4
  %18 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %19, i32 0, i32 25
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %19, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.snd_soc_card, ptr %27, i32 0, i32 49
  %29 = getelementptr inbounds %struct.snd_soc_card, ptr %27, i32 0, i32 49, i32 1
  %30 = load ptr, ptr %29, align 4
  store ptr %20, ptr %29, align 4
  store ptr %28, ptr %20, align 4
  %31 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %19, i32 0, i32 25, i32 1
  store ptr %30, ptr %31, align 4
  store volatile ptr %20, ptr %30, align 4
  br label %32

32:                                               ; preds = %23, %16
  %33 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %0, i32 0, i32 1, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %34, i32 0, i32 25
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %38, label %79

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %34, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %40, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.snd_soc_card, ptr %42, i32 0, i32 49
  %44 = getelementptr inbounds %struct.snd_soc_card, ptr %42, i32 0, i32 49, i32 1
  %45 = load ptr, ptr %44, align 4
  store ptr %35, ptr %44, align 4
  store ptr %43, ptr %35, align 4
  %46 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %34, i32 0, i32 25, i32 1
  store ptr %45, ptr %46, align 4
  store volatile ptr %35, ptr %45, align 4
  br label %79

47:                                               ; preds = %7
  br i1 %14, label %80, label %48

48:                                               ; preds = %47
  %49 = and i8 %12, -2
  store i8 %49, ptr %11, align 4
  %50 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %51, i32 0, i32 25
  %53 = load volatile ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %52
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %51, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %57, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.snd_soc_card, ptr %59, i32 0, i32 49
  %61 = getelementptr inbounds %struct.snd_soc_card, ptr %59, i32 0, i32 49, i32 1
  %62 = load ptr, ptr %61, align 4
  store ptr %52, ptr %61, align 4
  store ptr %60, ptr %52, align 4
  %63 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %51, i32 0, i32 25, i32 1
  store ptr %62, ptr %63, align 4
  store volatile ptr %52, ptr %62, align 4
  br label %64

64:                                               ; preds = %55, %48
  %65 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %0, i32 0, i32 1, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %66, i32 0, i32 25
  %68 = load volatile ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %67
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %66, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %72, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.snd_soc_card, ptr %74, i32 0, i32 49
  %76 = getelementptr inbounds %struct.snd_soc_card, ptr %74, i32 0, i32 49, i32 1
  %77 = load ptr, ptr %76, align 4
  store ptr %67, ptr %76, align 4
  store ptr %75, ptr %67, align 4
  %78 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %66, i32 0, i32 25, i32 1
  store ptr %77, ptr %78, align 4
  store volatile ptr %67, ptr %77, align 4
  br label %79

79:                                               ; preds = %70, %64, %38, %32
  tail call fastcc void @dapm_path_invalidate(ptr noundef %0) #20
  br label %80

80:                                               ; preds = %79, %47, %15, %3
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dapm_create_or_share_kcontrol(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.snd_soc_dapm_widget, align 4
  %4 = alloca %struct.snd_soc_dapm_widget, align 4
  %5 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %6, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.snd_soc_component, ptr %12, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @strlen(ptr noundef nonnull %16)
  %20 = add i32 %19, 1
  br label %21

21:                                               ; preds = %18, %14, %2
  %22 = phi ptr [ %16, %18 ], [ null, %14 ], [ null, %2 ]
  %23 = phi i32 [ %20, %18 ], [ 0, %14 ], [ 0, %2 ]
  %24 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 19
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr %struct.snd_kcontrol_new, ptr %25, i32 %1
  %27 = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 46
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %63, label %30

30:                                               ; preds = %56, %21
  %31 = phi ptr [ %57, %56 ], [ %28, %21 ]
  %32 = getelementptr i8, ptr %31, i32 -12
  %33 = icmp eq ptr %32, %0
  br i1 %33, label %56, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %31, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %31, i32 64
  %40 = load i32, ptr %39, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %31, i32 68
  %44 = load ptr, ptr %43, align 4
  br label %45

45:                                               ; preds = %53, %42
  %46 = phi i32 [ 0, %42 ], [ %54, %53 ]
  %47 = getelementptr %struct.snd_kcontrol_new, ptr %44, i32 %46
  %48 = icmp eq ptr %47, %26
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %31, i32 72
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %79, label %59

53:                                               ; preds = %45
  %54 = add nuw nsw i32 %46, 1
  %55 = icmp eq i32 %54, %40
  br i1 %55, label %56, label %45

56:                                               ; preds = %53, %38, %34, %30
  %57 = load ptr, ptr %31, align 4
  %58 = icmp eq ptr %57, %27
  br i1 %58, label %63, label %30

59:                                               ; preds = %49
  %60 = getelementptr ptr, ptr %51, i32 %46
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %79, label %221

63:                                               ; preds = %56, %21
  %64 = load i32, ptr %0, align 4
  switch i32 %64, label %250 [
    i32 15, label %65
    i32 4, label %65
    i32 6, label %65
    i32 33, label %65
    i32 7, label %65
    i32 5, label %79
    i32 3, label %75
    i32 2, label %75
  ]

65:                                               ; preds = %63, %63, %63, %63, %63
  %66 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 %23
  %69 = getelementptr %struct.snd_kcontrol_new, ptr %25, i32 %1, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.9, ptr noundef %68, ptr noundef %70) #20
  %72 = icmp eq ptr %71, null
  br i1 %72, label %250, label %73

73:                                               ; preds = %65
  %74 = load ptr, ptr %24, align 4
  br label %82

75:                                               ; preds = %63, %63
  %76 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i8, ptr %77, i32 %23
  br label %82

79:                                               ; preds = %63, %59, %49
  %80 = getelementptr %struct.snd_kcontrol_new, ptr %25, i32 %1, i32 3
  %81 = load ptr, ptr %80, align 4
  br label %82

82:                                               ; preds = %79, %75, %73
  %83 = phi ptr [ %25, %75 ], [ %25, %79 ], [ %74, %73 ]
  %84 = phi ptr [ null, %75 ], [ null, %79 ], [ %71, %73 ]
  %85 = phi ptr [ %78, %75 ], [ %81, %79 ], [ %71, %73 ]
  %86 = getelementptr %struct.snd_kcontrol_new, ptr %83, i32 %1
  %87 = tail call ptr @snd_soc_cnew(ptr noundef %86, ptr noundef null, ptr noundef %85, ptr noundef %22) #20
  %88 = icmp eq ptr %87, null
  br i1 %88, label %247, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.snd_kcontrol, ptr %87, i32 0, i32 9
  store ptr @dapm_kcontrol_free, ptr %90, align 4
  %91 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %92 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %91, i32 noundef 3520, i32 noundef 20) #23
  %93 = icmp eq ptr %92, null
  br i1 %93, label %214, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %92, i32 0, i32 2
  store volatile ptr %95, ptr %95, align 8
  %96 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %92, i32 0, i32 2, i32 1
  store ptr %95, ptr %96, align 4
  %97 = load i32, ptr %0, align 4
  switch i32 %97, label %208 [
    i32 15, label %98
    i32 4, label %98
    i32 5, label %98
    i32 3, label %165
    i32 2, label %165
  ]

98:                                               ; preds = %94, %94, %94
  %99 = getelementptr inbounds %struct.snd_kcontrol, ptr %87, i32 0, i32 7
  %100 = load i32, ptr %99, align 4
  %101 = inttoptr i32 %100 to ptr
  %102 = getelementptr inbounds %struct.soc_mixer_control, ptr %101, i32 0, i32 8
  %103 = load i8, ptr %102, align 4
  %104 = and i8 %103, 2
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %208, label %106

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.soc_mixer_control, ptr %101, i32 0, i32 3
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.soc_mixer_control, ptr %101, i32 0, i32 4
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.soc_mixer_control, ptr %101, i32 0, i32 5
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr inbounds %struct.soc_mixer_control, ptr %101, i32 0, i32 6
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %125, label %118

118:                                              ; preds = %112, %106
  %119 = load ptr, ptr %5, align 4
  %120 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %119, i32 0, i32 2
  %121 = load ptr, ptr %120, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %121, ptr noundef nonnull @.str.73, ptr noundef %85) #22
  %122 = load i8, ptr %102, align 4
  %123 = and i8 %122, 2
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %208, label %125

125:                                              ; preds = %118, %112
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %3) #20
  %126 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.9, ptr noundef %85, ptr noundef nonnull @.str.74) #20
  %127 = icmp eq ptr %126, null
  br i1 %127, label %162, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(180) %129, i8 0, i32 172, i1 false) #20
  %130 = load i32, ptr %107, align 4
  %131 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 8
  store i32 %130, ptr %131, align 4
  %132 = getelementptr inbounds %struct.soc_mixer_control, ptr %101, i32 0, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, 0
  %135 = tail call i32 @llvm.ctlz.i32(i32 %133, i1 false) #20, !range !24
  %136 = sub nuw nsw i32 32, %135
  %137 = shl nsw i32 -1, %136
  %138 = xor i32 %137, -1
  %139 = select i1 %134, i32 0, i32 %138
  %140 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 10
  store i32 %139, ptr %140, align 4
  %141 = getelementptr inbounds %struct.soc_mixer_control, ptr %101, i32 0, i32 5
  %142 = load i32, ptr %141, align 4
  %143 = trunc i32 %142 to i8
  %144 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 9
  store i8 %143, ptr %144, align 4
  %145 = load i8, ptr %102, align 4
  %146 = and i8 %145, 1
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %128
  %149 = load i32, ptr %132, align 4
  br label %150

150:                                              ; preds = %148, %128
  %151 = phi i32 [ %149, %148 ], [ 0, %128 ]
  %152 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 12
  store i32 %151, ptr %152, align 4
  %153 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 11
  store i32 %151, ptr %153, align 4
  store i32 30, ptr %3, align 4
  %154 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 1
  store ptr %126, ptr %154, align 4
  store i32 %151, ptr %92, align 8
  %155 = load ptr, ptr %5, align 4
  %156 = call ptr @snd_soc_dapm_new_control_unlocked(ptr noundef %155, ptr noundef nonnull %3) #20
  %157 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %92, i32 0, i32 1
  store ptr %156, ptr %157, align 4
  call void @kfree(ptr noundef nonnull %126) #20
  %158 = load ptr, ptr %157, align 4
  %159 = icmp ugt ptr %158, inttoptr (i32 -4096 to ptr)
  br i1 %159, label %160, label %164

160:                                              ; preds = %150
  %161 = ptrtoint ptr %158 to i32
  br label %162

162:                                              ; preds = %160, %125
  %163 = phi i32 [ -12, %125 ], [ %161, %160 ]
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %3) #20
  br label %212

164:                                              ; preds = %150
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %3) #20
  br label %208

165:                                              ; preds = %94, %94
  %166 = getelementptr inbounds %struct.snd_kcontrol, ptr %87, i32 0, i32 7
  %167 = load i32, ptr %166, align 4
  %168 = inttoptr i32 %167 to ptr
  %169 = getelementptr inbounds %struct.soc_enum, ptr %168, i32 0, i32 7
  %170 = load i8, ptr %169, align 4
  %171 = and i8 %170, 1
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %208, label %173

173:                                              ; preds = %165
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %4) #20
  %174 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.9, ptr noundef %85, ptr noundef nonnull @.str.74) #20
  %175 = icmp eq ptr %174, null
  br i1 %175, label %203, label %176

176:                                              ; preds = %173
  %177 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(180) %177, i8 0, i32 172, i1 false) #20
  %178 = load i32, ptr %168, align 4
  %179 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %4, i32 0, i32 8
  store i32 %178, ptr %179, align 4
  %180 = getelementptr inbounds %struct.soc_enum, ptr %168, i32 0, i32 4
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %4, i32 0, i32 10
  store i32 %181, ptr %182, align 4
  %183 = getelementptr inbounds %struct.soc_enum, ptr %168, i32 0, i32 1
  %184 = load i8, ptr %183, align 4
  %185 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %4, i32 0, i32 9
  store i8 %184, ptr %185, align 4
  %186 = getelementptr inbounds %struct.soc_enum, ptr %168, i32 0, i32 6
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %176
  %190 = load i32, ptr %187, align 4
  br label %191

191:                                              ; preds = %189, %176
  %192 = phi i32 [ %190, %189 ], [ 0, %176 ]
  %193 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %4, i32 0, i32 12
  store i32 %192, ptr %193, align 4
  %194 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %4, i32 0, i32 11
  store i32 %192, ptr %194, align 4
  store i32 30, ptr %4, align 4
  %195 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %4, i32 0, i32 1
  store ptr %174, ptr %195, align 4
  store i32 %192, ptr %92, align 8
  %196 = load ptr, ptr %5, align 4
  %197 = call ptr @snd_soc_dapm_new_control_unlocked(ptr noundef %196, ptr noundef nonnull %4) #20
  %198 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %92, i32 0, i32 1
  store ptr %197, ptr %198, align 4
  call void @kfree(ptr noundef nonnull %174) #20
  %199 = load ptr, ptr %198, align 4
  %200 = icmp ugt ptr %199, inttoptr (i32 -4096 to ptr)
  br i1 %200, label %201, label %205

201:                                              ; preds = %191
  %202 = ptrtoint ptr %199 to i32
  br label %203

203:                                              ; preds = %201, %173
  %204 = phi i32 [ -12, %173 ], [ %202, %201 ]
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %4) #20
  br label %212

205:                                              ; preds = %191
  %206 = load ptr, ptr %5, align 4
  %207 = call fastcc i32 @snd_soc_dapm_add_path(ptr noundef %206, ptr noundef %199, ptr noundef %0, ptr noundef null, ptr noundef null) #20
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %4) #20
  br label %208

208:                                              ; preds = %205, %165, %164, %118, %98, %94
  %209 = getelementptr inbounds %struct.snd_kcontrol, ptr %87, i32 0, i32 8
  store ptr %92, ptr %209, align 4
  %210 = call i32 @snd_ctl_add(ptr noundef %10, ptr noundef nonnull %87) #20
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %216, label %221

212:                                              ; preds = %203, %162
  %213 = phi i32 [ %163, %162 ], [ %204, %203 ]
  call void @kfree(ptr noundef nonnull %92) #20
  br label %214

214:                                              ; preds = %212, %89
  %215 = phi i32 [ %213, %212 ], [ -12, %89 ]
  call void @snd_ctl_free_one(ptr noundef nonnull %87) #20
  br label %247

216:                                              ; preds = %208
  %217 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %6, i32 0, i32 2
  %218 = load ptr, ptr %217, align 4
  %219 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 1
  %220 = load ptr, ptr %219, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %218, ptr noundef nonnull @.str.72, ptr noundef %220, ptr noundef %85, i32 noundef %210) #22
  br label %247

221:                                              ; preds = %208, %59
  %222 = phi ptr [ %87, %208 ], [ %61, %59 ]
  %223 = phi ptr [ %84, %208 ], [ null, %59 ]
  %224 = getelementptr inbounds %struct.snd_kcontrol, ptr %222, i32 0, i32 8
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %225, i32 0, i32 3
  %227 = load ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %232, label %229

229:                                              ; preds = %221
  %230 = load i32, ptr %227, align 4
  %231 = add i32 %230, 1
  br label %232

232:                                              ; preds = %229, %221
  %233 = phi i32 [ %231, %229 ], [ 1, %221 ]
  %234 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %233, i32 4) #20
  %235 = extractvalue { i32, i1 } %234, 1
  %236 = extractvalue { i32, i1 } %234, 0
  %237 = call i32 @llvm.uadd.sat.i32(i32 %236, i32 4) #20
  %238 = select i1 %235, i32 -1, i32 %237
  %239 = call noalias ptr @krealloc(ptr noundef %227, i32 noundef %238, i32 noundef 3264) #24
  %240 = icmp eq ptr %239, null
  br i1 %240, label %247, label %241

241:                                              ; preds = %232
  %242 = add i32 %233, -1
  %243 = getelementptr %struct.snd_soc_dapm_widget_list, ptr %239, i32 0, i32 1, i32 %242
  store ptr %0, ptr %243, align 4
  store i32 %233, ptr %239, align 4
  store ptr %239, ptr %226, align 4
  %244 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 20
  %245 = load ptr, ptr %244, align 4
  %246 = getelementptr ptr, ptr %245, i32 %1
  store ptr %222, ptr %246, align 4
  br label %247

247:                                              ; preds = %241, %232, %216, %214, %82
  %248 = phi ptr [ %223, %241 ], [ %84, %214 ], [ %84, %216 ], [ %84, %82 ], [ %223, %232 ]
  %249 = phi i32 [ 0, %241 ], [ %215, %214 ], [ %210, %216 ], [ -12, %82 ], [ -12, %232 ]
  call void @kfree(ptr noundef %248) #20
  br label %250

250:                                              ; preds = %247, %65, %63
  %251 = phi i32 [ %249, %247 ], [ -22, %63 ], [ -12, %65 ]
  ret i32 %251
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_cnew(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dapm_kcontrol_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %3, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  %9 = getelementptr inbounds %struct.dapm_kcontrol_data, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %10) #20
  tail call void @kfree(ptr noundef %3) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_free_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dapm_widget_power_read_file(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 4096) #23
  %13 = icmp eq ptr %12, null
  br i1 %13, label %152, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.snd_soc_card, ptr %10, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %15) #20
  %16 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %6, i32 0, i32 13
  %17 = load i16, ptr %16, align 4
  %18 = and i16 %17, 256
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = tail call fastcc i32 @is_connected_input_ep(ptr noundef %6, ptr noundef null, ptr noundef null)
  %22 = tail call fastcc i32 @is_connected_output_ep(ptr noundef %6, ptr noundef null, ptr noundef null)
  %23 = load i16, ptr %16, align 4
  br label %24

24:                                               ; preds = %20, %14
  %25 = phi i16 [ %23, %20 ], [ %17, %14 ]
  %26 = phi i32 [ %21, %20 ], [ 0, %14 ]
  %27 = phi i32 [ %22, %20 ], [ 0, %14 ]
  %28 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %6, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = and i16 %25, 1
  %31 = icmp eq i16 %30, 0
  %32 = select i1 %31, ptr @.str.28, ptr @.str.27
  %33 = and i16 %25, 16
  %34 = icmp eq i16 %33, 0
  %35 = select i1 %34, ptr @.str.81, ptr @.str.80
  %36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %12, i32 noundef 4096, ptr noundef nonnull @.str.79, ptr noundef %29, ptr noundef nonnull %32, ptr noundef nonnull %35, i32 noundef %26, i32 noundef %27) #20
  %37 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %6, i32 0, i32 8
  %38 = load i32, ptr %37, align 4
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %51

40:                                               ; preds = %24
  %41 = getelementptr i8, ptr %12, i32 %36
  %42 = sub i32 4096, %36
  %43 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %6, i32 0, i32 10
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %6, i32 0, i32 9
  %46 = load i8, ptr %45, align 4
  %47 = zext i8 %46 to i32
  %48 = shl i32 %44, %47
  %49 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %41, i32 noundef %42, ptr noundef nonnull @.str.82, i32 noundef %38, i32 noundef %38, i32 noundef %48) #20
  %50 = add i32 %49, %36
  br label %51

51:                                               ; preds = %40, %24
  %52 = phi i32 [ %50, %40 ], [ %36, %24 ]
  %53 = getelementptr i8, ptr %12, i32 %52
  %54 = sub i32 4096, %52
  %55 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %53, i32 noundef %54, ptr noundef nonnull @.str.83) #20
  %56 = add i32 %55, %52
  %57 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %6, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %69, label %60

60:                                               ; preds = %51
  %61 = getelementptr i8, ptr %12, i32 %56
  %62 = sub i32 4096, %56
  %63 = load i16, ptr %16, align 4
  %64 = and i16 %63, 2
  %65 = icmp eq i16 %64, 0
  %66 = select i1 %65, ptr @.str.86, ptr @.str.85
  %67 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %61, i32 noundef %62, ptr noundef nonnull @.str.84, ptr noundef nonnull %58, ptr noundef nonnull %66) #20
  %68 = add i32 %67, %56
  br label %69

69:                                               ; preds = %60, %51
  %70 = phi i32 [ %68, %60 ], [ %56, %51 ]
  %71 = getelementptr %struct.snd_soc_dapm_widget, ptr %6, i32 0, i32 22, i32 0
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, %71
  br i1 %73, label %109, label %74

74:                                               ; preds = %105, %69
  %75 = phi ptr [ %107, %105 ], [ %72, %69 ]
  %76 = phi i32 [ %106, %105 ], [ %70, %69 ]
  %77 = getelementptr i8, ptr %75, i32 -20
  %78 = getelementptr i8, ptr %75, i32 -4
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %88, label %81

81:                                               ; preds = %74
  %82 = getelementptr i8, ptr %75, i32 -16
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr i8, ptr %75, i32 -12
  %85 = load ptr, ptr %84, align 4
  %86 = tail call i32 %79(ptr noundef %83, ptr noundef %85) #20
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %105, label %88

88:                                               ; preds = %81, %74
  %89 = getelementptr i8, ptr %75, i32 -8
  %90 = load i8, ptr %89, align 4
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %88
  %94 = getelementptr i8, ptr %12, i32 %76
  %95 = sub i32 4096, %76
  %96 = load ptr, ptr %77, align 4
  %97 = icmp eq ptr %96, null
  %98 = select i1 %97, ptr @.str.90, ptr %96
  %99 = getelementptr i8, ptr %75, i32 -12
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %94, i32 noundef %95, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.89, ptr noundef nonnull %98, ptr noundef %102) #20
  %104 = add i32 %103, %76
  br label %105

105:                                              ; preds = %93, %88, %81
  %106 = phi i32 [ %104, %93 ], [ %76, %88 ], [ %76, %81 ]
  %107 = load ptr, ptr %75, align 4
  %108 = icmp eq ptr %107, %71
  br i1 %108, label %109, label %74

109:                                              ; preds = %105, %69
  %110 = phi i32 [ %70, %69 ], [ %106, %105 ]
  %111 = getelementptr %struct.snd_soc_dapm_widget, ptr %6, i32 0, i32 22, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, %111
  br i1 %113, label %149, label %114

114:                                              ; preds = %145, %109
  %115 = phi ptr [ %147, %145 ], [ %112, %109 ]
  %116 = phi i32 [ %146, %145 ], [ %110, %109 ]
  %117 = getelementptr i8, ptr %115, i32 -28
  %118 = getelementptr i8, ptr %115, i32 -12
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %128, label %121

121:                                              ; preds = %114
  %122 = getelementptr i8, ptr %115, i32 -24
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr i8, ptr %115, i32 -20
  %125 = load ptr, ptr %124, align 4
  %126 = tail call i32 %119(ptr noundef %123, ptr noundef %125) #20
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %145, label %128

128:                                              ; preds = %121, %114
  %129 = getelementptr i8, ptr %115, i32 -16
  %130 = load i8, ptr %129, align 4
  %131 = and i8 %130, 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %145, label %133

133:                                              ; preds = %128
  %134 = getelementptr i8, ptr %12, i32 %116
  %135 = sub i32 4096, %116
  %136 = load ptr, ptr %117, align 4
  %137 = icmp eq ptr %136, null
  %138 = select i1 %137, ptr @.str.90, ptr %136
  %139 = getelementptr i8, ptr %115, i32 -24
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %140, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %134, i32 noundef %135, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, ptr noundef nonnull %138, ptr noundef %142) #20
  %144 = add i32 %143, %116
  br label %145

145:                                              ; preds = %133, %128, %121
  %146 = phi i32 [ %144, %133 ], [ %116, %128 ], [ %116, %121 ]
  %147 = load ptr, ptr %115, align 4
  %148 = icmp eq ptr %147, %111
  br i1 %148, label %149, label %114

149:                                              ; preds = %145, %109
  %150 = phi i32 [ %110, %109 ], [ %146, %145 ]
  tail call void @mutex_unlock(ptr noundef %15) #20
  %151 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %12, i32 noundef %150) #20
  tail call void @kfree(ptr noundef nonnull %12) #20
  br label %152

152:                                              ; preds = %149, %4
  %153 = phi i32 [ %151, %149 ], [ -12, %4 ]
  ret i32 %153
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_test_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dapm_connect_mux(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %6, i32 0, i32 11
  %8 = load i32, ptr %7, align 4
  %9 = inttoptr i32 %8 to ptr
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %42, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @snd_soc_component_read(ptr noundef nonnull %14, i32 noundef %10) #20
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi i32 [ %17, %16 ], [ -5, %12 ]
  %20 = getelementptr inbounds %struct.soc_enum, ptr %9, i32 0, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i32
  %23 = lshr i32 %19, %22
  %24 = getelementptr inbounds %struct.soc_enum, ptr %9, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %23, %25
  %27 = getelementptr inbounds %struct.soc_enum, ptr %9, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.soc_enum, ptr %9, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %39, %30
  %35 = phi i32 [ %40, %39 ], [ 0, %30 ]
  %36 = getelementptr i32, ptr %28, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, %26
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = add nuw i32 %35, 1
  %41 = icmp eq i32 %40, %32
  br i1 %41, label %42, label %34

42:                                               ; preds = %39, %34, %30, %18, %4
  %43 = phi i32 [ 0, %4 ], [ %26, %18 ], [ 0, %30 ], [ 0, %39 ], [ %35, %34 ]
  %44 = getelementptr inbounds %struct.soc_enum, ptr %9, i32 0, i32 5
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.soc_enum, ptr %9, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 @match_string(ptr noundef %45, i32 noundef %47, ptr noundef %2) #20
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %42
  %51 = load ptr, ptr %44, align 4
  %52 = getelementptr ptr, ptr %51, i32 %48
  %53 = load ptr, ptr %52, align 4
  store ptr %53, ptr %1, align 4
  %54 = icmp eq i32 %48, %43
  %55 = getelementptr inbounds %struct.snd_soc_dapm_path, ptr %1, i32 0, i32 2
  %56 = zext i1 %54 to i8
  %57 = load i8, ptr %55, align 4
  %58 = and i8 %57, -2
  %59 = or i8 %58, %56
  store i8 %59, ptr %55, align 4
  br label %60

60:                                               ; preds = %50, %42
  %61 = phi i32 [ 0, %50 ], [ -19, %42 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @snd_soc_dapm_new_dai(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [1 x %struct.soc_enum], align 4
  %5 = alloca [1 x %struct.snd_kcontrol_new], align 4
  %6 = alloca %struct.snd_soc_dapm_widget, align 4
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %6) #20
  %9 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %10, i32 noundef 3264, ptr noundef nonnull @.str.101, ptr noundef %13, ptr noundef %2) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %133, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(180) %17, i8 0, i32 172, i1 false)
  %18 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %6, i32 0, i32 8
  store i32 -1, ptr %18, align 4
  store i32 29, ptr %6, align 4
  %19 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %6, i32 0, i32 1
  store ptr %14, ptr %19, align 4
  %20 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %6, i32 0, i32 17
  store ptr @snd_soc_dai_link_event, ptr %20, align 4
  %21 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %6, i32 0, i32 16
  store i16 15, ptr %21, align 4
  %22 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %6, i32 0, i32 19
  %23 = load ptr, ptr %11, align 4
  %24 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %23, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = icmp ugt i32 %25, 1
  br i1 %26, label %27, label %100

27:                                               ; preds = %16
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 4) #20
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %129, label %30, !prof !23

30:                                               ; preds = %27
  %31 = load ptr, ptr %9, align 4
  %32 = extractvalue { i32, i1 } %28, 0
  %33 = tail call noalias ptr @devm_kmalloc(ptr noundef %31, i32 noundef %32, i32 noundef 3520) #20
  %34 = icmp eq ptr %33, null
  br i1 %34, label %129, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %6, i32 0, i32 18
  store i32 1, ptr %36, align 4
  %37 = load ptr, ptr %11, align 4
  %38 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %37, i32 0, i32 9
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %37, i32 0, i32 10
  %41 = load i32, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false) #20
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #20
  store i32 2, ptr %5, align 4
  %42 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %5, i32 0, i32 1
  %43 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %5, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %42, i8 0, i64 24, i1 false) #20
  store ptr @snd_soc_info_enum_double, ptr %43, align 4
  %44 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %5, i32 0, i32 8
  store ptr @snd_soc_dapm_dai_link_get, ptr %44, align 4
  %45 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %5, i32 0, i32 9
  store ptr @snd_soc_dapm_dai_link_put, ptr %45, align 4
  %46 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %5, i32 0, i32 10
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %5, i32 0, i32 11
  %48 = ptrtoint ptr %4 to i32
  store i32 %48, ptr %47, align 4
  %49 = icmp sgt i32 %41, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %35
  %51 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 51, i32 2
  br label %52

52:                                               ; preds = %70, %50
  %53 = phi i32 [ 0, %50 ], [ %72, %70 ]
  %54 = phi ptr [ %39, %50 ], [ %71, %70 ]
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load ptr, ptr %51, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.105, i32 noundef %53, ptr noundef nonnull %14) #22
  %59 = load ptr, ptr %9, align 4
  %60 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %59, i32 noundef 3264, ptr noundef nonnull @.str.106, i32 noundef %53) #20
  br label %66

61:                                               ; preds = %52
  %62 = load ptr, ptr %9, align 4
  %63 = call i32 @strlen(ptr noundef nonnull %55) #20
  %64 = add i32 %63, 1
  %65 = call ptr @devm_kmemdup(ptr noundef %62, ptr noundef nonnull %55, i32 noundef %64, i32 noundef 3264) #20
  br label %66

66:                                               ; preds = %61, %57
  %67 = phi ptr [ %60, %57 ], [ %65, %61 ]
  %68 = getelementptr ptr, ptr %33, i32 %53
  store ptr %67, ptr %68, align 4
  %69 = icmp eq ptr %67, null
  br i1 %69, label %87, label %70

70:                                               ; preds = %66
  %71 = getelementptr %struct.snd_soc_pcm_stream, ptr %54, i32 1
  %72 = add nuw nsw i32 %53, 1
  %73 = icmp eq i32 %72, %41
  br i1 %73, label %74, label %52

74:                                               ; preds = %70, %35
  %75 = getelementptr inbounds %struct.soc_enum, ptr %4, i32 0, i32 3
  store i32 %41, ptr %75, align 4
  %76 = getelementptr inbounds %struct.soc_enum, ptr %4, i32 0, i32 5
  store ptr %33, ptr %76, align 4
  %77 = load ptr, ptr %9, align 4
  %78 = call ptr @devm_kmemdup(ptr noundef %77, ptr noundef nonnull %4, i32 noundef 28, i32 noundef 3264) #20
  %79 = icmp eq ptr %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %74
  %81 = ptrtoint ptr %78 to i32
  store i32 %81, ptr %47, align 4
  %82 = load ptr, ptr %9, align 4
  %83 = call ptr @devm_kmemdup(ptr noundef %82, ptr noundef nonnull %5, i32 noundef 48, i32 noundef 3264) #20
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %99

85:                                               ; preds = %80, %74
  %86 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.107, ptr noundef nonnull %14) #22
  br label %87

87:                                               ; preds = %85, %66
  %88 = phi ptr [ %78, %85 ], [ null, %66 ]
  %89 = load ptr, ptr %9, align 4
  call void @devm_kfree(ptr noundef %89, ptr noundef %88) #20
  br i1 %49, label %90, label %97

90:                                               ; preds = %90, %87
  %91 = phi i32 [ %95, %90 ], [ 0, %87 ]
  %92 = load ptr, ptr %9, align 4
  %93 = getelementptr ptr, ptr %33, i32 %91
  %94 = load ptr, ptr %93, align 4
  call void @devm_kfree(ptr noundef %92, ptr noundef %94) #20
  %95 = add nuw nsw i32 %91, 1
  %96 = icmp eq i32 %95, %41
  br i1 %96, label %97, label %90

97:                                               ; preds = %90, %87
  %98 = load ptr, ptr %9, align 4
  call void @devm_kfree(ptr noundef %98, ptr noundef nonnull %33) #20
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #20
  store ptr null, ptr %22, align 4
  br label %129

99:                                               ; preds = %80
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #20
  store ptr %83, ptr %22, align 4
  br label %100

100:                                              ; preds = %99, %16
  %101 = phi ptr [ %78, %99 ], [ null, %16 ]
  %102 = phi ptr [ %33, %99 ], [ null, %16 ]
  %103 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 51
  %104 = call ptr @snd_soc_dapm_new_control_unlocked(ptr noundef %103, ptr noundef nonnull %6)
  %105 = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  br i1 %105, label %106, label %127

106:                                              ; preds = %100
  %107 = ptrtoint ptr %104 to i32
  %108 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.102, ptr noundef nonnull %14, i32 noundef %107) #22
  %109 = load ptr, ptr %9, align 4
  %110 = load ptr, ptr %22, align 4
  call void @devm_kfree(ptr noundef %109, ptr noundef %110) #20
  %111 = load ptr, ptr %11, align 4
  %112 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %111, i32 0, i32 10
  %113 = load i32, ptr %112, align 4
  %114 = load ptr, ptr %9, align 4
  call void @devm_kfree(ptr noundef %114, ptr noundef %101) #20
  %115 = icmp eq ptr %102, null
  br i1 %115, label %129, label %116

116:                                              ; preds = %106
  %117 = icmp sgt i32 %113, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %118, %116
  %119 = phi i32 [ %123, %118 ], [ 0, %116 ]
  %120 = load ptr, ptr %9, align 4
  %121 = getelementptr ptr, ptr %102, i32 %119
  %122 = load ptr, ptr %121, align 4
  call void @devm_kfree(ptr noundef %120, ptr noundef %122) #20
  %123 = add nuw nsw i32 %119, 1
  %124 = icmp eq i32 %123, %113
  br i1 %124, label %125, label %118

125:                                              ; preds = %118, %116
  %126 = load ptr, ptr %9, align 4
  call void @devm_kfree(ptr noundef %126, ptr noundef nonnull %102) #20
  br label %129

127:                                              ; preds = %100
  %128 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %104, i32 0, i32 5
  store ptr %1, ptr %128, align 4
  br label %133

129:                                              ; preds = %125, %106, %97, %30, %27
  %130 = phi i32 [ -12, %30 ], [ -12, %97 ], [ %107, %106 ], [ %107, %125 ], [ -12, %27 ]
  %131 = load ptr, ptr %9, align 4
  call void @devm_kfree(ptr noundef %131, ptr noundef nonnull %14) #20
  %132 = inttoptr i32 %130 to ptr
  br label %133

133:                                              ; preds = %129, %127, %3
  %134 = phi ptr [ %132, %129 ], [ %104, %127 ], [ inttoptr (i32 -12 to ptr), %3 ]
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %6) #20
  ret ptr %134
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_soc_dai_link_event(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 22
  %9 = getelementptr %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 22, i32 1
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load volatile ptr, ptr %8, align 4
  %14 = icmp eq ptr %13, %8
  br i1 %14, label %15, label %16, !prof !23

15:                                               ; preds = %12, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 3949, i32 noundef 9, ptr noundef null) #20
  br label %321

16:                                               ; preds = %12
  switch i32 %2, label %318 [
    i32 1, label %17
    i32 2, label %237
    i32 4, label %246
    i32 8, label %315
  ]

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 604) #23
  %22 = icmp eq ptr %21, null
  br i1 %22, label %319, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 608) #23
  %26 = icmp eq ptr %25, null
  br i1 %26, label %235, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 11
  store ptr %25, ptr %28, align 4
  store i32 1, ptr %6, align 4
  %29 = load ptr, ptr %9, align 4
  %30 = icmp eq ptr %29, %9
  br i1 %30, label %43, label %31

31:                                               ; preds = %39, %27
  %32 = phi ptr [ %41, %39 ], [ %29, %27 ]
  %33 = getelementptr i8, ptr %32, i32 -24
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @snd_soc_dai_startup(ptr noundef %36, ptr noundef %5) #20
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %235, label %39

39:                                               ; preds = %31
  %40 = load i32, ptr %6, align 4
  tail call void @snd_soc_dai_action(ptr noundef %36, i32 noundef %40, i32 noundef 1) #20
  %41 = load ptr, ptr %32, align 4
  %42 = icmp eq ptr %41, %9
  br i1 %42, label %43, label %31

43:                                               ; preds = %39, %27
  %44 = phi i32 [ 0, %27 ], [ %37, %39 ]
  store i32 0, ptr %6, align 4
  %45 = load ptr, ptr %8, align 4
  %46 = icmp eq ptr %45, %8
  br i1 %46, label %59, label %47

47:                                               ; preds = %55, %43
  %48 = phi ptr [ %57, %55 ], [ %45, %43 ]
  %49 = getelementptr i8, ptr %48, i32 -12
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %50, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 @snd_soc_dai_startup(ptr noundef %52, ptr noundef %5) #20
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %235, label %55

55:                                               ; preds = %47
  %56 = load i32, ptr %6, align 4
  tail call void @snd_soc_dai_action(ptr noundef %52, i32 noundef %56, i32 noundef 1) #20
  %57 = load ptr, ptr %48, align 4
  %58 = icmp eq ptr %57, %8
  br i1 %58, label %59, label %47

59:                                               ; preds = %55, %43
  %60 = phi i32 [ %44, %43 ], [ %53, %55 ]
  %61 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 25
  %62 = load i8, ptr %61, align 4
  %63 = or i8 %62, 1
  store i8 %63, ptr %61, align 4
  %64 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %19, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %65, i32 0, i32 9
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %19, i32 0, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr %struct.snd_soc_pcm_stream, ptr %67, i32 %69
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %77, !prof !23

72:                                               ; preds = %59
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 3881, i32 noundef 9, ptr noundef null) #20
  %73 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.103) #22
  br label %235

77:                                               ; preds = %59
  %78 = getelementptr %struct.snd_soc_pcm_stream, ptr %67, i32 %69, i32 1
  %79 = load i64, ptr %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %107, label %81

81:                                               ; preds = %77
  %82 = trunc i64 %79 to i32
  %83 = tail call i32 @llvm.cttz.i32(i32 %82, i1 true) #20, !range !24
  %84 = icmp eq i32 %82, 0
  %85 = select i1 %84, i32 -1, i32 %83
  %86 = getelementptr %struct.snd_pcm_hw_params, ptr %21, i32 0, i32 1, i32 1
  %87 = and i32 %85, 31
  %88 = shl nuw i32 1, %87
  %89 = lshr i32 %85, 5
  %90 = getelementptr [8 x i32], ptr %86, i32 0, i32 %89
  %91 = load i32, ptr %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, ptr %90, align 4
  %93 = getelementptr %struct.snd_soc_pcm_stream, ptr %67, i32 %69, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr %struct.snd_pcm_hw_params, ptr %21, i32 0, i32 3, i32 3
  store i32 %94, ptr %95, align 8
  %96 = getelementptr %struct.snd_soc_pcm_stream, ptr %67, i32 %69, i32 4
  %97 = load i32, ptr %96, align 8
  %98 = getelementptr %struct.snd_pcm_hw_params, ptr %21, i32 0, i32 3, i32 3, i32 1
  store i32 %97, ptr %98, align 4
  %99 = getelementptr %struct.snd_soc_pcm_stream, ptr %67, i32 %69, i32 5
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr %struct.snd_pcm_hw_params, ptr %21, i32 0, i32 3, i32 2
  store i32 %100, ptr %101, align 4
  %102 = getelementptr %struct.snd_soc_pcm_stream, ptr %67, i32 %69, i32 6
  %103 = load i32, ptr %102, align 8
  %104 = getelementptr %struct.snd_pcm_hw_params, ptr %21, i32 0, i32 3, i32 2, i32 1
  store i32 %103, ptr %104, align 8
  store i32 1, ptr %6, align 4
  %105 = load ptr, ptr %9, align 4
  %106 = icmp eq ptr %105, %9
  br i1 %106, label %154, label %112

107:                                              ; preds = %77
  %108 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %109, i32 0, i32 2
  %111 = load ptr, ptr %110, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %111, ptr noundef nonnull @.str.104, i64 noundef 0) #22
  br label %235

112:                                              ; preds = %151, %81
  %113 = phi ptr [ %152, %151 ], [ %105, %81 ]
  %114 = getelementptr i8, ptr %113, i32 -24
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %115, i32 0, i32 5
  %117 = load ptr, ptr %116, align 4
  %118 = tail call i32 @snd_soc_dai_hw_params(ptr noundef %117, ptr noundef %5, ptr noundef nonnull %21) #20
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %235, label %120

120:                                              ; preds = %112
  %121 = load i32, ptr %6, align 4
  %122 = load i32, ptr %101, align 4
  %123 = icmp eq i32 %121, 0
  %124 = getelementptr inbounds %struct.snd_soc_dai, ptr %117, i32 0, i32 5
  %125 = getelementptr inbounds %struct.snd_soc_dai, ptr %117, i32 0, i32 6
  %126 = select i1 %123, ptr %124, ptr %125
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %151, label %129

129:                                              ; preds = %120
  %130 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %127, i32 0, i32 22
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, %130
  br i1 %132, label %140, label %133

133:                                              ; preds = %133, %129
  %134 = phi ptr [ %138, %133 ], [ %131, %129 ]
  %135 = getelementptr i8, ptr %134, i32 -20
  %136 = getelementptr i8, ptr %134, i32 -12
  %137 = load ptr, ptr %136, align 4
  tail call fastcc void @dapm_update_dai_chan(ptr noundef %135, ptr noundef %137, i32 noundef %122) #20
  %138 = load ptr, ptr %134, align 4
  %139 = icmp eq ptr %138, %130
  br i1 %139, label %140, label %133

140:                                              ; preds = %133, %129
  %141 = getelementptr %struct.snd_soc_dapm_widget, ptr %127, i32 0, i32 22, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, %141
  br i1 %143, label %151, label %144

144:                                              ; preds = %144, %140
  %145 = phi ptr [ %149, %144 ], [ %142, %140 ]
  %146 = getelementptr i8, ptr %145, i32 -28
  %147 = getelementptr i8, ptr %145, i32 -24
  %148 = load ptr, ptr %147, align 4
  tail call fastcc void @dapm_update_dai_chan(ptr noundef %146, ptr noundef %148, i32 noundef %122) #20
  %149 = load ptr, ptr %145, align 4
  %150 = icmp eq ptr %149, %141
  br i1 %150, label %151, label %144

151:                                              ; preds = %144, %140, %120
  %152 = load ptr, ptr %113, align 4
  %153 = icmp eq ptr %152, %9
  br i1 %153, label %154, label %112

154:                                              ; preds = %151, %81
  %155 = phi i32 [ %60, %81 ], [ %118, %151 ]
  store i32 0, ptr %6, align 4
  %156 = load ptr, ptr %8, align 4
  %157 = icmp eq ptr %156, %8
  br i1 %157, label %200, label %158

158:                                              ; preds = %197, %154
  %159 = phi ptr [ %198, %197 ], [ %156, %154 ]
  %160 = getelementptr i8, ptr %159, i32 -12
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %161, i32 0, i32 5
  %163 = load ptr, ptr %162, align 4
  %164 = tail call i32 @snd_soc_dai_hw_params(ptr noundef %163, ptr noundef %5, ptr noundef nonnull %21) #20
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %235, label %166

166:                                              ; preds = %158
  %167 = load i32, ptr %6, align 4
  %168 = load i32, ptr %101, align 4
  %169 = icmp eq i32 %167, 0
  %170 = getelementptr inbounds %struct.snd_soc_dai, ptr %163, i32 0, i32 5
  %171 = getelementptr inbounds %struct.snd_soc_dai, ptr %163, i32 0, i32 6
  %172 = select i1 %169, ptr %170, ptr %171
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %197, label %175

175:                                              ; preds = %166
  %176 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %173, i32 0, i32 22
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, %176
  br i1 %178, label %186, label %179

179:                                              ; preds = %179, %175
  %180 = phi ptr [ %184, %179 ], [ %177, %175 ]
  %181 = getelementptr i8, ptr %180, i32 -20
  %182 = getelementptr i8, ptr %180, i32 -12
  %183 = load ptr, ptr %182, align 4
  tail call fastcc void @dapm_update_dai_chan(ptr noundef %181, ptr noundef %183, i32 noundef %168) #20
  %184 = load ptr, ptr %180, align 4
  %185 = icmp eq ptr %184, %176
  br i1 %185, label %186, label %179

186:                                              ; preds = %179, %175
  %187 = getelementptr %struct.snd_soc_dapm_widget, ptr %173, i32 0, i32 22, i32 1
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, %187
  br i1 %189, label %197, label %190

190:                                              ; preds = %190, %186
  %191 = phi ptr [ %195, %190 ], [ %188, %186 ]
  %192 = getelementptr i8, ptr %191, i32 -28
  %193 = getelementptr i8, ptr %191, i32 -24
  %194 = load ptr, ptr %193, align 4
  tail call fastcc void @dapm_update_dai_chan(ptr noundef %192, ptr noundef %194, i32 noundef %168) #20
  %195 = load ptr, ptr %191, align 4
  %196 = icmp eq ptr %195, %187
  br i1 %196, label %197, label %190

197:                                              ; preds = %190, %186, %166
  %198 = load ptr, ptr %159, align 4
  %199 = icmp eq ptr %198, %8
  br i1 %199, label %200, label %158

200:                                              ; preds = %197, %154
  %201 = phi i32 [ %155, %154 ], [ %164, %197 ]
  %202 = load i32, ptr %86, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %209, %200
  %205 = phi i32 [ 0, %200 ], [ 32, %209 ]
  %206 = phi i32 [ %202, %200 ], [ %211, %209 ]
  %207 = tail call i32 @llvm.cttz.i32(i32 %206, i1 true) #20, !range !24
  %208 = or i32 %207, %205
  br label %213

209:                                              ; preds = %200
  %210 = getelementptr %struct.snd_pcm_hw_params, ptr %21, i32 0, i32 1, i32 1, i32 0, i32 1
  %211 = load i32, ptr %210, align 8
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %204

213:                                              ; preds = %209, %204
  %214 = phi i32 [ %208, %204 ], [ 0, %209 ]
  %215 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 12
  store i32 %214, ptr %215, align 4
  %216 = getelementptr %struct.snd_pcm_hw_params, ptr %21, i32 0, i32 1, i32 2
  %217 = load i32, ptr %216, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %224, %213
  %220 = phi i32 [ 0, %213 ], [ 32, %224 ]
  %221 = phi i32 [ %217, %213 ], [ %226, %224 ]
  %222 = tail call i32 @llvm.cttz.i32(i32 %221, i1 true) #20, !range !24
  %223 = or i32 %222, %220
  br label %228

224:                                              ; preds = %213
  %225 = getelementptr %struct.snd_pcm_hw_params, ptr %21, i32 0, i32 1, i32 2, i32 0, i32 1
  %226 = load i32, ptr %225, align 8
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %219

228:                                              ; preds = %224, %219
  %229 = phi i32 [ %223, %219 ], [ 0, %224 ]
  %230 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 13
  store i32 %229, ptr %230, align 8
  %231 = load i32, ptr %101, align 4
  %232 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 15
  store i32 %231, ptr %232, align 8
  %233 = load i32, ptr %95, align 8
  %234 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 14
  store i32 %233, ptr %234, align 4
  br label %235

235:                                              ; preds = %228, %158, %112, %107, %72, %47, %31, %23
  %236 = phi i32 [ -22, %72 ], [ %201, %228 ], [ -22, %107 ], [ -12, %23 ], [ %164, %158 ], [ %118, %112 ], [ %53, %47 ], [ %37, %31 ]
  tail call void @kfree(ptr noundef nonnull %21) #20
  br label %319

237:                                              ; preds = %237, %16
  %238 = phi ptr [ %244, %237 ], [ %13, %16 ]
  %239 = getelementptr i8, ptr %238, i32 -12
  %240 = load ptr, ptr %239, align 4
  %241 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %240, i32 0, i32 5
  %242 = load ptr, ptr %241, align 4
  %243 = tail call i32 @snd_soc_dai_digital_mute(ptr noundef %242, i32 noundef 0, i32 noundef 0) #20
  %244 = load ptr, ptr %238, align 4
  %245 = icmp eq ptr %244, %8
  br i1 %245, label %319, label %237

246:                                              ; preds = %246, %16
  %247 = phi ptr [ %253, %246 ], [ %13, %16 ]
  %248 = getelementptr i8, ptr %247, i32 -12
  %249 = load ptr, ptr %248, align 4
  %250 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %249, i32 0, i32 5
  %251 = load ptr, ptr %250, align 4
  %252 = tail call i32 @snd_soc_dai_digital_mute(ptr noundef %251, i32 noundef 1, i32 noundef 0) #20
  %253 = load ptr, ptr %247, align 4
  %254 = icmp eq ptr %253, %8
  br i1 %254, label %255, label %246

255:                                              ; preds = %246
  store i32 1, ptr %6, align 4
  %256 = load ptr, ptr %9, align 4
  %257 = icmp eq ptr %256, %9
  br i1 %257, label %266, label %258

258:                                              ; preds = %258, %255
  %259 = phi ptr [ %264, %258 ], [ %256, %255 ]
  %260 = getelementptr i8, ptr %259, i32 -24
  %261 = load ptr, ptr %260, align 4
  %262 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %261, i32 0, i32 5
  %263 = load ptr, ptr %262, align 4
  tail call void @snd_soc_dai_hw_free(ptr noundef %263, ptr noundef %5, i32 noundef 0) #20
  %264 = load ptr, ptr %259, align 4
  %265 = icmp eq ptr %264, %9
  br i1 %265, label %266, label %258

266:                                              ; preds = %258, %255
  store i32 0, ptr %6, align 4
  %267 = load ptr, ptr %8, align 4
  %268 = icmp eq ptr %267, %8
  br i1 %268, label %277, label %269

269:                                              ; preds = %269, %266
  %270 = phi ptr [ %275, %269 ], [ %267, %266 ]
  %271 = getelementptr i8, ptr %270, i32 -12
  %272 = load ptr, ptr %271, align 4
  %273 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %272, i32 0, i32 5
  %274 = load ptr, ptr %273, align 4
  tail call void @snd_soc_dai_hw_free(ptr noundef %274, ptr noundef %5, i32 noundef 0) #20
  %275 = load ptr, ptr %270, align 4
  %276 = icmp eq ptr %275, %8
  br i1 %276, label %277, label %269

277:                                              ; preds = %269, %266
  store i32 1, ptr %6, align 4
  %278 = load ptr, ptr %9, align 4
  %279 = icmp eq ptr %278, %9
  br i1 %279, label %296, label %280

280:                                              ; preds = %277
  %281 = getelementptr i8, ptr %278, i32 -24
  %282 = load ptr, ptr %281, align 4
  %283 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %282, i32 0, i32 5
  %284 = load ptr, ptr %283, align 4
  tail call void @snd_soc_dai_action(ptr noundef %284, i32 noundef 1, i32 noundef -1) #20
  tail call void @snd_soc_dai_shutdown(ptr noundef %284, ptr noundef %5, i32 noundef 0) #20
  %285 = load ptr, ptr %278, align 4
  %286 = icmp eq ptr %285, %9
  br i1 %286, label %296, label %287

287:                                              ; preds = %287, %280
  %288 = phi ptr [ %294, %287 ], [ %285, %280 ]
  %289 = load i32, ptr %6, align 4
  %290 = getelementptr i8, ptr %288, i32 -24
  %291 = load ptr, ptr %290, align 4
  %292 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %291, i32 0, i32 5
  %293 = load ptr, ptr %292, align 4
  tail call void @snd_soc_dai_action(ptr noundef %293, i32 noundef %289, i32 noundef -1) #20
  tail call void @snd_soc_dai_shutdown(ptr noundef %293, ptr noundef %5, i32 noundef 0) #20
  %294 = load ptr, ptr %288, align 4
  %295 = icmp eq ptr %294, %9
  br i1 %295, label %296, label %287

296:                                              ; preds = %287, %280, %277
  store i32 0, ptr %6, align 4
  %297 = load ptr, ptr %8, align 4
  %298 = icmp eq ptr %297, %8
  br i1 %298, label %319, label %299

299:                                              ; preds = %296
  %300 = getelementptr i8, ptr %297, i32 -12
  %301 = load ptr, ptr %300, align 4
  %302 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %301, i32 0, i32 5
  %303 = load ptr, ptr %302, align 4
  tail call void @snd_soc_dai_action(ptr noundef %303, i32 noundef 0, i32 noundef -1) #20
  tail call void @snd_soc_dai_shutdown(ptr noundef %303, ptr noundef %5, i32 noundef 0) #20
  %304 = load ptr, ptr %297, align 4
  %305 = icmp eq ptr %304, %8
  br i1 %305, label %319, label %306

306:                                              ; preds = %306, %299
  %307 = phi ptr [ %313, %306 ], [ %304, %299 ]
  %308 = load i32, ptr %6, align 4
  %309 = getelementptr i8, ptr %307, i32 -12
  %310 = load ptr, ptr %309, align 4
  %311 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %310, i32 0, i32 5
  %312 = load ptr, ptr %311, align 4
  tail call void @snd_soc_dai_action(ptr noundef %312, i32 noundef %308, i32 noundef -1) #20
  tail call void @snd_soc_dai_shutdown(ptr noundef %312, ptr noundef %5, i32 noundef 0) #20
  %313 = load ptr, ptr %307, align 4
  %314 = icmp eq ptr %313, %8
  br i1 %314, label %319, label %306

315:                                              ; preds = %16
  %316 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 11
  %317 = load ptr, ptr %316, align 4
  tail call void @kfree(ptr noundef %317) #20
  br label %319

318:                                              ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 4009, i32 noundef 9, ptr noundef nonnull @.str.45, i32 noundef %2) #20
  br label %319

319:                                              ; preds = %318, %315, %306, %299, %296, %237, %235, %17
  %320 = phi i32 [ -22, %318 ], [ 0, %315 ], [ %236, %235 ], [ -12, %17 ], [ 0, %296 ], [ 0, %299 ], [ 0, %237 ], [ 0, %306 ]
  store i32 %7, ptr %6, align 4
  br label %321

321:                                              ; preds = %319, %15
  %322 = phi i32 [ -22, %15 ], [ %320, %319 ]
  ret i32 %322
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_digital_mute(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_dai_hw_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_dai_shutdown(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_startup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_hw_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_dai_action(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_soc_dapm_dai_link_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #19 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %6, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %8, ptr %9, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_soc_dapm_dai_link_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #19 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %4, i32 0, i32 13
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %6, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %6, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %19, i32 0, i32 10
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 %13, ptr %14, align 4
  br label %24

24:                                               ; preds = %23, %17, %11, %2
  %25 = phi i32 [ 1, %23 ], [ -16, %2 ], [ 0, %11 ], [ -22, %17 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_card_set_bias_level(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_card_set_bias_level_post(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_snd_soc_bias_level_start(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_snd_soc_bias_level_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind allocsize(2) }
attributes #24 = { nounwind allocsize(1) }

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
!8 = !{i64 2154503067}
!9 = !{i64 2154503249}
!10 = !{i64 2154489981}
!11 = !{i64 2154490161}
!12 = !{ptr @is_connected_input_ep, ptr @is_connected_output_ep}
!13 = !{!"auto-init"}
!14 = !{i64 2154399563}
!15 = !{i64 2154399719}
!16 = !{i64 2154429863}
!17 = !{i64 2154430037}
!18 = !{i64 2154475697}
!19 = !{i64 2154475861}
!20 = !{i8 0, i8 2}
!21 = !{i64 2154416514}
!22 = !{i64 2154416668}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i32 0, i32 33}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2154372820}
!27 = !{i64 2154372998}
!28 = !{i64 2154386395}
!29 = !{i64 2154386571}
!30 = !{i64 2154443812}
!31 = !{i64 2154443998}
!32 = !{i64 2154457999}
!33 = !{i64 2154458183}
