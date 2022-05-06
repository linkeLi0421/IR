; ModuleID = '/llk/IR/sound/usb/mixer_quirks.c_pt.bc'
source_filename = "../sound/usb/mixer_quirks.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.73, i32 }
%union.anon.73 = type { ptr }
%struct.std_mono_table = type { i32, i32, i32, i32, ptr, ptr }
%struct.rc_config = type { i32, i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type {}
%struct.sb_jack = type { i32, ptr }
%struct.snd_djm_device = type { ptr, ptr, i32 }
%struct.snd_djm_ctl = type { ptr, ptr, i32, i16, i16 }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.usb_mixer_elem_info = type { %struct.usb_mixer_elem_list, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i8, i8, ptr }
%struct.usb_mixer_elem_list = type { ptr, ptr, ptr, i32, i8, ptr, ptr }
%struct.usb_mixer_interface = type { ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, ptr, ptr, i32, %struct.wait_queue_head, ptr, ptr, [6 x i8], ptr, i8, ptr, ptr, ptr }
%struct.snd_hwdep = type { ptr, %struct.list_head, i32, [32 x i8], [80 x i8], i32, %struct.snd_hwdep_ops, %struct.wait_queue_head, ptr, ptr, %struct.device, %struct.mutex, i32, i32, i8 }
%struct.snd_hwdep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.72, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.72 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.58, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.58 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.67, [128 x i8] }
%union.anon.67 = type { %union.anon.69 }
%union.anon.69 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.63, [64 x i8] }
%union.anon.63 = type { %struct.anon.66, [40 x i8] }
%struct.anon.66 = type { i32, i32, [64 x i8], i64, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"audigy2nx\00", align 1
@snd_nativeinstruments_ta6_mixers = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.73 zeroinitializer, i32 65539 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.73 zeroinitializer, i32 65541 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.73 zeroinitializer, i32 131075 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.73 zeroinitializer, i32 131077 }], align 4
@snd_nativeinstruments_ta10_mixers = internal constant [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.73 zeroinitializer, i32 65539 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.73 zeroinitializer, i32 65541 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.73 zeroinitializer, i32 65543 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.73 zeroinitializer, i32 65545 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.73 zeroinitializer, i32 131075 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.73 zeroinitializer, i32 131077 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.73 zeroinitializer, i32 131079 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.73 zeroinitializer, i32 131081 }], align 4
@ebox44_table = internal unnamed_addr constant [10 x %struct.std_mono_table] [%struct.std_mono_table { i32 4, i32 1, i32 0, i32 1, ptr @.str.57, ptr null }, %struct.std_mono_table { i32 4, i32 2, i32 1, i32 4, ptr @.str.58, ptr null }, %struct.std_mono_table { i32 4, i32 2, i32 2, i32 4, ptr @.str.59, ptr null }, %struct.std_mono_table { i32 7, i32 1, i32 0, i32 1, ptr @.str.60, ptr null }, %struct.std_mono_table { i32 7, i32 2, i32 1, i32 4, ptr @.str.61, ptr null }, %struct.std_mono_table { i32 7, i32 2, i32 2, i32 4, ptr @.str.62, ptr null }, %struct.std_mono_table { i32 10, i32 1, i32 0, i32 1, ptr @.str.63, ptr null }, %struct.std_mono_table { i32 10, i32 2, i32 1, i32 4, ptr @.str.64, ptr null }, %struct.std_mono_table { i32 10, i32 2, i32 2, i32 4, ptr @.str.65, ptr null }, %struct.std_mono_table zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Playback\00", align 1
@rc_configs = internal constant [8 x %struct.rc_config] [%struct.rc_config { i32 69087232, i8 0, i8 1, i8 2, i8 1, i8 18, i32 19 }, %struct.rc_config { i32 69087264, i8 2, i8 1, i8 6, i8 6, i8 18, i32 19 }, %struct.rc_config { i32 69087296, i8 2, i8 2, i8 6, i8 6, i8 2, i32 28305 }, %struct.rc_config { i32 69087298, i8 0, i8 1, i8 1, i8 1, i8 1, i32 13 }, %struct.rc_config { i32 69087455, i8 0, i8 1, i8 1, i8 1, i8 1, i32 13 }, %struct.rc_config { i32 69087799, i8 0, i8 1, i8 1, i8 1, i8 1, i32 13 }, %struct.rc_config { i32 69087843, i8 0, i8 1, i8 1, i8 1, i8 1, i32 13 }, %struct.rc_config { i32 69087304, i8 2, i8 2, i8 6, i8 6, i8 2, i32 28305 }], align 4
@snd_usb_soundblaster_remote_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"&mixer->rc_waitq\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SB remote control\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%s remote control\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@snd_audigy2nx_control = internal unnamed_addr constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_audigy2nx_led_get, ptr @snd_audigy2nx_led_put, %union.anon.73 zeroinitializer, i32 0 }, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"CMSS LED Switch\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Power LED Switch\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Dolby Digital LED Switch\00", align 1
@snd_audigy2nx_proc_read.jacks_audigy2nx = internal unnamed_addr constant [5 x %struct.sb_jack] [%struct.sb_jack { i32 4, ptr @.str.8 }, %struct.sb_jack { i32 7, ptr @.str.9 }, %struct.sb_jack { i32 19, ptr @.str.10 }, %struct.sb_jack { i32 20, ptr @.str.11 }, %struct.sb_jack { i32 -1, ptr null }], align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"dig in \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"line in\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"spk out\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"hph out\00", align 1
@snd_audigy2nx_proc_read.jacks_live24ext = internal unnamed_addr constant [4 x %struct.sb_jack] [%struct.sb_jack { i32 4, ptr @.str.9 }, %struct.sb_jack { i32 3, ptr @.str.11 }, %struct.sb_jack { i32 0, ptr @.str.12 }, %struct.sb_jack { i32 -1, ptr null }], align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"RC     \00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"%s jacks\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"%02x %02x\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"?\0A\00", align 1
@snd_emu0204_control = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @snd_emu0204_ch_switch_info, ptr @snd_emu0204_ch_switch_get, ptr @snd_emu0204_ch_switch_put, %union.anon.73 zeroinitializer, i32 0 }, align 4
@.str.17 = private unnamed_addr constant [20 x i8] c"Front Jack Channels\00", align 1
@snd_emu0204_ch_switch_info.texts = internal constant [2 x ptr] [ptr @.str.18, ptr @.str.19], align 4
@.str.18 = private unnamed_addr constant [4 x i8] c"1/2\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"3/4\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"PCM%d-Out%d Playback Volume\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"In%d-Out%d Playback Volume\00", align 1
@snd_usb_feature_unit_ctl = external dso_local local_unnamed_addr global ptr, align 4
@.str.22 = private unnamed_addr constant [19 x i8] c"Effect Send DOut%d\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"Effect Send AIn%d\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"Effect Return %d\00", align 1
@snd_ftu_create_effect_switch.template = internal global %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 3, i32 0, ptr @snd_ftu_eff_switch_info, ptr @snd_ftu_eff_switch_get, ptr @snd_ftu_eff_switch_put, %union.anon.73 zeroinitializer, i32 0 }, align 4
@.str.25 = private unnamed_addr constant [22 x i8] c"Effect Program Switch\00", align 1
@snd_ftu_eff_switch_info.texts = internal constant [8 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], align 4
@.str.26 = private unnamed_addr constant [7 x i8] c"Room 1\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"Room 2\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"Room 3\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"Hall 1\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"Hall 2\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Plate\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"Delay\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"Echo\00", align 1
@snd_c400_create_effect_volume_ctl.name = internal constant [14 x i8] c"Effect Volume\00", align 1
@snd_c400_create_effect_duration_ctl.name = internal constant [16 x i8] c"Effect Duration\00", align 1
@snd_c400_create_effect_feedback_ctl.name = internal constant [23 x i8] c"Effect Feedback Volume\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"AIn%d - Out%d Capture Volume\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"DIn%d - Out%d Playback Volume\00", align 1
@snd_ftu_create_effect_volume_ctl.name = internal constant [14 x i8] c"Effect Volume\00", align 1
@snd_ftu_create_effect_duration_ctl.name = internal constant [16 x i8] c"Effect Duration\00", align 1
@snd_ftu_create_effect_feedback_ctl.name = internal constant [23 x i8] c"Effect Feedback Volume\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"Effect Return %d Volume\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"Effect Send AIn%d Volume\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"Effect Send DIn%d Volume\00", align 1
@snd_xonar_u1_output_switch = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_xonar_u1_switch_get, ptr @snd_xonar_u1_switch_put, %union.anon.73 zeroinitializer, i32 5 }, align 4
@.str.39 = private unnamed_addr constant [24 x i8] c"Digital Playback Switch\00", align 1
@snd_microii_mixer_spdif = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_microii_spdif_info, ptr @snd_microii_spdif_default_get, ptr @snd_microii_spdif_default_put, %union.anon.73 zeroinitializer, i32 256 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.41, i32 0, i32 1, i32 0, ptr @snd_microii_spdif_info, ptr @snd_microii_spdif_mask_get, ptr null, %union.anon.73 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_microii_spdif_switch_get, ptr @snd_microii_spdif_switch_put, %union.anon.73 zeroinitializer, i32 40 }], align 4
@.str.40 = private unnamed_addr constant [24 x i8] c"IEC958 Playback Default\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"IEC958 Playback Mask\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"IEC958 Playback Switch\00", align 1
@snd_mbox1_clk_switch = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 3, i32 0, ptr @snd_mbox1_clk_switch_info, ptr @snd_mbox1_clk_switch_get, ptr @snd_mbox1_clk_switch_put, %union.anon.73 zeroinitializer, i32 0 }, align 4
@snd_mbox1_src_switch = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 1, i32 3, i32 0, ptr @snd_mbox1_src_switch_info, ptr @snd_mbox1_src_switch_get, ptr @snd_mbox1_src_switch_put, %union.anon.73 zeroinitializer, i32 0 }, align 4
@.str.43 = private unnamed_addr constant [13 x i8] c"Clock Source\00", align 1
@snd_mbox1_clk_switch_info.texts = internal constant [2 x ptr] [ptr @.str.44, ptr @.str.45], align 4
@.str.44 = private unnamed_addr constant [9 x i8] c"Internal\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"S/PDIF\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"Input Source\00", align 1
@snd_mbox1_src_switch_info.texts = internal constant [2 x ptr] [ptr @.str.47, ptr @.str.45], align 4
@.str.47 = private unnamed_addr constant [7 x i8] c"Analog\00", align 1
@__const.snd_nativeinstruments_create_mixer.template = private unnamed_addr constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_nativeinstruments_control_get, ptr @snd_nativeinstruments_control_put, %union.anon.73 zeroinitializer, i32 0 }, align 4
@.str.48 = private unnamed_addr constant [47 x i8] c"unable to issue vendor read request (ret = %d)\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"Direct Thru Channel A\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"Direct Thru Channel B\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"Phono Input Channel A\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"Phono Input Channel B\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"Direct Thru Channel C\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"Direct Thru Channel D\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"Phono Input Channel C\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"Phono Input Channel D\00", align 1
@.str.57 = private unnamed_addr constant [26 x i8] c"Headphone Playback Switch\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"Headphone A Mix Playback Volume\00", align 1
@.str.59 = private unnamed_addr constant [32 x i8] c"Headphone B Mix Playback Volume\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"Output Playback Switch\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"Output A Playback Volume\00", align 1
@.str.62 = private unnamed_addr constant [25 x i8] c"Output B Playback Volume\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"Input Capture Switch\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"Input A Capture Volume\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"Input B Capture Volume\00", align 1
@snd_soundblaster_e1_input_switch = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 0, i32 0, ptr @snd_soundblaster_e1_switch_info, ptr @snd_soundblaster_e1_switch_get, ptr @snd_soundblaster_e1_switch_put, %union.anon.73 zeroinitializer, i32 0 }, align 4
@snd_soundblaster_e1_switch_info.texts = internal constant [2 x ptr] [ptr @.str.66, ptr @.str.67], align 4
@.str.66 = private unnamed_addr constant [4 x i8] c"Mic\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"Aux\00", align 1
@snd_rme_controls = internal constant [9 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 5, i32 0, ptr @snd_rme_rate_info, ptr @snd_rme_rate_get, ptr null, %union.anon.73 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 5, i32 0, ptr @snd_rme_sync_state_info, ptr @snd_rme_sync_state_get, ptr null, %union.anon.73 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 5, i32 0, ptr @snd_rme_rate_info, ptr @snd_rme_rate_get, ptr null, %union.anon.73 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 5, i32 0, ptr @snd_rme_sync_state_info, ptr @snd_rme_sync_state_get, ptr null, %union.anon.73 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 5, i32 0, ptr @snd_rme_spdif_if_info, ptr @snd_rme_spdif_if_get, ptr null, %union.anon.73 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 5, i32 0, ptr @snd_rme_spdif_format_info, ptr @snd_rme_spdif_format_get, ptr null, %union.anon.73 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 5, i32 0, ptr @snd_rme_sync_source_info, ptr @snd_rme_sync_source_get, ptr null, %union.anon.73 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 5, i32 0, ptr @snd_rme_rate_info, ptr @snd_rme_rate_get, ptr null, %union.anon.73 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 5, i32 0, ptr @snd_rme_rate_info, ptr @snd_rme_current_freq_get, ptr null, %union.anon.73 zeroinitializer, i32 0 }], align 4
@.str.68 = private unnamed_addr constant [9 x i8] c"AES Rate\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"AES Sync\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"SPDIF Rate\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"SPDIF Sync\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"SPDIF Interface\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"SPDIF Format\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"Sync Source\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"System Rate\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"Current Frequency\00", align 1
@snd_rme_rate_table = internal unnamed_addr constant [20 x i32] [i32 32000, i32 44100, i32 48000, i32 50000, i32 64000, i32 88200, i32 96000, i32 100000, i32 128000, i32 176400, i32 192000, i32 200000, i32 256000, i32 352800, i32 384000, i32 400000, i32 512000, i32 705600, i32 768000, i32 800000], align 4
@.str.77 = private unnamed_addr constant [50 x i8] c"unable to issue vendor read request %d (ret = %d)\00", align 1
@snd_rme_sync_state_info.sync_states = internal constant [3 x ptr] [ptr @.str.78, ptr @.str.79, ptr @.str.80], align 4
@.str.78 = private unnamed_addr constant [8 x i8] c"No Lock\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"Lock\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"Sync\00", align 1
@snd_rme_spdif_if_info.spdif_if = internal constant [2 x ptr] [ptr @.str.81, ptr @.str.82], align 4
@.str.81 = private unnamed_addr constant [8 x i8] c"Coaxial\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"Optical\00", align 1
@snd_rme_spdif_format_info.optical_type = internal constant [2 x ptr] [ptr @.str.83, ptr @.str.84], align 4
@.str.83 = private unnamed_addr constant [9 x i8] c"Consumer\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"Professional\00", align 1
@snd_rme_sync_source_info.sync_sources = internal constant [4 x ptr] [ptr @.str.44, ptr @.str.85, ptr @.str.86, ptr @.str.44], align 4
@.str.85 = private unnamed_addr constant [4 x i8] c"AES\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"SPDIF\00", align 1
@snd_bbfpro_controls_create.input = internal unnamed_addr constant [12 x ptr] [ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98], align 4
@.str.87 = private unnamed_addr constant [4 x i8] c"AN1\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"AN2\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"IN3\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"IN4\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"AS1\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"AS2\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"ADAT3\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"ADAT4\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"ADAT5\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"ADAT6\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"ADAT7\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"ADAT8\00", align 1
@snd_bbfpro_controls_create.output = internal unnamed_addr constant [12 x ptr] [ptr @.str.87, ptr @.str.88, ptr @.str.99, ptr @.str.100, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98], align 4
@.str.99 = private unnamed_addr constant [4 x i8] c"PH3\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"PH4\00", align 1
@.str.101 = private unnamed_addr constant [25 x i8] c"%s-%s-%s Playback Volume\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.103 = private unnamed_addr constant [26 x i8] c"PCM-%s-%s Playback Volume\00", align 1
@.str.104 = private unnamed_addr constant [20 x i8] c"Sample Clock Source\00", align 1
@.str.105 = private unnamed_addr constant [16 x i8] c"IEC958 Pro Mask\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"IEC958 Emphasis\00", align 1
@.str.107 = private unnamed_addr constant [14 x i8] c"IEC958 Switch\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"Mic-AN1 48V\00", align 1
@.str.109 = private unnamed_addr constant [12 x i8] c"Mic-AN2 48V\00", align 1
@.str.110 = private unnamed_addr constant [15 x i8] c"Line-IN3 Sens.\00", align 1
@.str.111 = private unnamed_addr constant [15 x i8] c"Line-IN4 Sens.\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"Mic-AN1 PAD\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"Mic-AN2 PAD\00", align 1
@snd_bbfpro_vol_control = internal unnamed_addr constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 0, ptr @snd_bbfpro_vol_info, ptr @snd_bbfpro_vol_get, ptr @snd_bbfpro_vol_put, %union.anon.73 zeroinitializer, i32 0 }, align 4
@snd_bbfpro_ctl_control = internal unnamed_addr constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 0, ptr @snd_bbfpro_ctl_info, ptr @snd_bbfpro_ctl_get, ptr @snd_bbfpro_ctl_put, %union.anon.73 zeroinitializer, i32 0 }, align 4
@snd_bbfpro_ctl_info.texts = internal constant [2 x ptr] [ptr @.str.114, ptr @.str.44], align 4
@.str.114 = private unnamed_addr constant [9 x i8] c"AutoSync\00", align 1
@snd_bbfpro_ctl_info.texts.115 = internal constant [2 x ptr] [ptr @.str.116, ptr @.str.117], align 4
@.str.116 = private unnamed_addr constant [7 x i8] c"-10dBV\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"+4dBu\00", align 1
@snd_djm_devices = internal unnamed_addr constant [5 x %struct.snd_djm_device] [%struct.snd_djm_device { ptr null, ptr @snd_djm_ctls_250mk2, i32 7 }, %struct.snd_djm_device { ptr null, ptr @snd_djm_ctls_750, i32 5 }, %struct.snd_djm_device { ptr null, ptr @snd_djm_ctls_850, i32 5 }, %struct.snd_djm_device { ptr null, ptr @snd_djm_ctls_900nxs2, i32 6 }, %struct.snd_djm_device { ptr null, ptr @snd_djm_ctls_750mk2, i32 9 }], align 4
@__const.snd_djm_controls_create.knew = private unnamed_addr constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 0, ptr @snd_djm_controls_info, ptr @snd_djm_controls_get, ptr @snd_djm_controls_put, %union.anon.73 zeroinitializer, i32 0 }, align 4
@snd_djm_ctls_250mk2 = internal constant [7 x %struct.snd_djm_ctl] [%struct.snd_djm_ctl { ptr @.str.118, ptr @snd_djm_opts_cap_level, i32 4, i16 0, i16 -32765 }, %struct.snd_djm_ctl { ptr @.str.119, ptr @snd_djm_opts_250mk2_cap1, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.120, ptr @snd_djm_opts_250mk2_cap2, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.121, ptr @snd_djm_opts_250mk2_cap3, i32 7, i16 0, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.122, ptr @snd_djm_opts_250mk2_pb1, i32 3, i16 0, i16 -32746 }, %struct.snd_djm_ctl { ptr @.str.123, ptr @snd_djm_opts_250mk2_pb2, i32 3, i16 1, i16 -32746 }, %struct.snd_djm_ctl { ptr @.str.124, ptr @snd_djm_opts_250mk2_pb3, i32 3, i16 2, i16 -32746 }], align 4
@snd_djm_ctls_750 = internal constant [5 x %struct.snd_djm_ctl] [%struct.snd_djm_ctl { ptr @.str.118, ptr @snd_djm_opts_cap_level, i32 4, i16 0, i16 -32765 }, %struct.snd_djm_ctl { ptr @.str.119, ptr @snd_djm_opts_750_cap1, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.120, ptr @snd_djm_opts_750_cap2, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.121, ptr @snd_djm_opts_750_cap3, i32 8, i16 0, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.125, ptr @snd_djm_opts_750_cap4, i32 8, i16 0, i16 -32766 }], align 4
@snd_djm_ctls_850 = internal constant [5 x %struct.snd_djm_ctl] [%struct.snd_djm_ctl { ptr @.str.118, ptr @snd_djm_opts_cap_level, i32 4, i16 0, i16 -32765 }, %struct.snd_djm_ctl { ptr @.str.119, ptr @snd_djm_opts_850_cap1, i32 8, i16 1, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.120, ptr @snd_djm_opts_850_cap2, i32 8, i16 0, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.121, ptr @snd_djm_opts_850_cap3, i32 8, i16 0, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.125, ptr @snd_djm_opts_850_cap4, i32 8, i16 1, i16 -32766 }], align 4
@snd_djm_ctls_900nxs2 = internal constant [6 x %struct.snd_djm_ctl] [%struct.snd_djm_ctl { ptr @.str.118, ptr @snd_djm_opts_cap_level, i32 4, i16 0, i16 -32765 }, %struct.snd_djm_ctl { ptr @.str.119, ptr @snd_djm_opts_900nxs2_cap1, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.120, ptr @snd_djm_opts_900nxs2_cap2, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.121, ptr @snd_djm_opts_900nxs2_cap3, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.125, ptr @snd_djm_opts_900nxs2_cap4, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.126, ptr @snd_djm_opts_900nxs2_cap5, i32 8, i16 3, i16 -32766 }], align 4
@snd_djm_ctls_750mk2 = internal constant [9 x %struct.snd_djm_ctl] [%struct.snd_djm_ctl { ptr @.str.118, ptr @snd_djm_opts_cap_level, i32 4, i16 0, i16 -32765 }, %struct.snd_djm_ctl { ptr @.str.119, ptr @snd_djm_opts_750mk2_cap1, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.120, ptr @snd_djm_opts_750mk2_cap2, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.121, ptr @snd_djm_opts_750mk2_cap3, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.125, ptr @snd_djm_opts_750mk2_cap4, i32 8, i16 2, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.126, ptr @snd_djm_opts_750mk2_cap5, i32 8, i16 3, i16 -32766 }, %struct.snd_djm_ctl { ptr @.str.122, ptr @snd_djm_opts_750mk2_pb1, i32 3, i16 0, i16 -32746 }, %struct.snd_djm_ctl { ptr @.str.123, ptr @snd_djm_opts_750mk2_pb2, i32 3, i16 1, i16 -32746 }, %struct.snd_djm_ctl { ptr @.str.124, ptr @snd_djm_opts_750mk2_pb3, i32 3, i16 2, i16 -32746 }], align 4
@.str.118 = private unnamed_addr constant [14 x i8] c"Capture Level\00", align 1
@snd_djm_opts_cap_level = internal constant [4 x i16] [i16 0, i16 256, i16 512, i16 768], align 2
@.str.119 = private unnamed_addr constant [10 x i8] c"Ch1 Input\00", align 1
@snd_djm_opts_250mk2_cap1 = internal constant [8 x i16] [i16 259, i16 256, i16 262, i16 263, i16 264, i16 265, i16 269, i16 266], align 2
@.str.120 = private unnamed_addr constant [10 x i8] c"Ch2 Input\00", align 1
@snd_djm_opts_250mk2_cap2 = internal constant [8 x i16] [i16 515, i16 512, i16 518, i16 519, i16 520, i16 521, i16 525, i16 522], align 2
@.str.121 = private unnamed_addr constant [10 x i8] c"Ch3 Input\00", align 1
@snd_djm_opts_250mk2_cap3 = internal constant [7 x i16] [i16 778, i16 785, i16 786, i16 775, i16 776, i16 777, i16 781], align 2
@.str.122 = private unnamed_addr constant [11 x i8] c"Ch1 Output\00", align 1
@snd_djm_opts_250mk2_pb1 = internal constant [3 x i16] [i16 256, i16 257, i16 260], align 2
@.str.123 = private unnamed_addr constant [11 x i8] c"Ch2 Output\00", align 1
@snd_djm_opts_250mk2_pb2 = internal constant [3 x i16] [i16 512, i16 513, i16 516], align 2
@.str.124 = private unnamed_addr constant [11 x i8] c"Ch3 Output\00", align 1
@snd_djm_opts_250mk2_pb3 = internal constant [3 x i16] [i16 768, i16 769, i16 772], align 2
@snd_djm_opts_750_cap1 = internal constant [8 x i16] [i16 257, i16 259, i16 262, i16 263, i16 264, i16 265, i16 266, i16 271], align 2
@snd_djm_opts_750_cap2 = internal constant [8 x i16] [i16 512, i16 513, i16 518, i16 519, i16 520, i16 521, i16 522, i16 527], align 2
@snd_djm_opts_750_cap3 = internal constant [8 x i16] [i16 768, i16 769, i16 774, i16 775, i16 776, i16 777, i16 778, i16 783], align 2
@.str.125 = private unnamed_addr constant [10 x i8] c"Ch4 Input\00", align 1
@snd_djm_opts_750_cap4 = internal constant [8 x i16] [i16 1025, i16 1027, i16 1030, i16 1031, i16 1032, i16 1033, i16 1034, i16 1039], align 2
@snd_djm_opts_850_cap1 = internal constant [8 x i16] [i16 256, i16 259, i16 262, i16 263, i16 264, i16 265, i16 266, i16 271], align 2
@snd_djm_opts_850_cap2 = internal constant [8 x i16] [i16 512, i16 513, i16 518, i16 519, i16 520, i16 521, i16 522, i16 527], align 2
@snd_djm_opts_850_cap3 = internal constant [8 x i16] [i16 768, i16 769, i16 774, i16 775, i16 776, i16 777, i16 778, i16 783], align 2
@snd_djm_opts_850_cap4 = internal constant [8 x i16] [i16 1024, i16 1027, i16 1030, i16 1031, i16 1032, i16 1033, i16 1034, i16 1039], align 2
@snd_djm_opts_900nxs2_cap1 = internal constant [8 x i16] [i16 256, i16 258, i16 259, i16 262, i16 263, i16 264, i16 265, i16 266], align 2
@snd_djm_opts_900nxs2_cap2 = internal constant [8 x i16] [i16 512, i16 514, i16 515, i16 518, i16 519, i16 520, i16 521, i16 522], align 2
@snd_djm_opts_900nxs2_cap3 = internal constant [8 x i16] [i16 768, i16 770, i16 771, i16 774, i16 775, i16 776, i16 777, i16 778], align 2
@snd_djm_opts_900nxs2_cap4 = internal constant [8 x i16] [i16 1024, i16 1026, i16 1027, i16 1030, i16 1031, i16 1032, i16 1033, i16 1034], align 2
@.str.126 = private unnamed_addr constant [10 x i8] c"Ch5 Input\00", align 1
@snd_djm_opts_900nxs2_cap5 = internal constant [8 x i16] [i16 1287, i16 1288, i16 1289, i16 1290, i16 1297, i16 1298, i16 1299, i16 1300], align 2
@snd_djm_opts_750mk2_cap1 = internal constant [8 x i16] [i16 256, i16 258, i16 259, i16 262, i16 263, i16 264, i16 265, i16 266], align 2
@snd_djm_opts_750mk2_cap2 = internal constant [8 x i16] [i16 512, i16 514, i16 515, i16 518, i16 519, i16 520, i16 521, i16 522], align 2
@snd_djm_opts_750mk2_cap3 = internal constant [8 x i16] [i16 768, i16 770, i16 771, i16 774, i16 775, i16 776, i16 777, i16 778], align 2
@snd_djm_opts_750mk2_cap4 = internal constant [8 x i16] [i16 1024, i16 1026, i16 1027, i16 1030, i16 1031, i16 1032, i16 1033, i16 1034], align 2
@snd_djm_opts_750mk2_cap5 = internal constant [8 x i16] [i16 1287, i16 1288, i16 1289, i16 1290, i16 1297, i16 1298, i16 1299, i16 1300], align 2
@snd_djm_opts_750mk2_pb1 = internal constant [3 x i16] [i16 256, i16 257, i16 260], align 2
@snd_djm_opts_750mk2_pb2 = internal constant [3 x i16] [i16 512, i16 513, i16 516], align 2
@snd_djm_opts_750mk2_pb3 = internal constant [3 x i16] [i16 768, i16 769, i16 772], align 2
@.str.127 = private unnamed_addr constant [6 x i8] c"-19dB\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"-15dB\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"-10dB\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"-5dB\00", align 1
@.str.131 = private unnamed_addr constant [21 x i8] c"Control Tone CD/LINE\00", align 1
@.str.132 = private unnamed_addr constant [18 x i8] c"Control Tone LINE\00", align 1
@.str.133 = private unnamed_addr constant [21 x i8] c"Control Tone DIGITAL\00", align 1
@.str.134 = private unnamed_addr constant [19 x i8] c"Control Tone PHONO\00", align 1
@.str.135 = private unnamed_addr constant [11 x i8] c"Post Fader\00", align 1
@.str.136 = private unnamed_addr constant [14 x i8] c"Cross Fader A\00", align 1
@.str.137 = private unnamed_addr constant [14 x i8] c"Cross Fader B\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"Rec Out\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.140 = private unnamed_addr constant [15 x i8] c"Post Fader Ch1\00", align 1
@.str.141 = private unnamed_addr constant [15 x i8] c"Post Fader Ch2\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"Post Fader Ch3\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"Post Fader Ch4\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"Ch1\00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"Ch2\00", align 1
@snd_dragonfly_quirk_db_scale.scale = internal constant [62 x i32] [i32 3, i32 240, i32 0, i32 1, i32 4, i32 8, i32 -5300, i32 -4970, i32 2, i32 5, i32 4, i32 8, i32 -4710, i32 -4160, i32 6, i32 7, i32 4, i32 8, i32 -3884, i32 -3710, i32 8, i32 14, i32 4, i32 8, i32 -3443, i32 -2560, i32 15, i32 16, i32 4, i32 8, i32 -2475, i32 -2324, i32 17, i32 19, i32 4, i32 8, i32 -2228, i32 -2031, i32 20, i32 26, i32 4, i32 8, i32 -1910, i32 -1393, i32 27, i32 31, i32 4, i32 8, i32 -1322, i32 -1032, i32 32, i32 40, i32 4, i32 8, i32 -968, i32 -490, i32 41, i32 50, i32 4, i32 8, i32 -441, i32 0], align 4
@.str.146 = private unnamed_addr constant [50 x i8] c"applying DragonFly dB scale quirk (0-50 variant)\0A\00", align 1
@.str.147 = private unnamed_addr constant [51 x i8] c"ignoring too narrow dB range on a DragonFly device\00", align 1
@switch.table.snd_djm_controls_info = private unnamed_addr constant [4 x ptr] [ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130], align 4
@switch.table.snd_djm_controls_info.148 = private unnamed_addr constant [21 x ptr] [ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.131, ptr @.str.131, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.66, ptr @.str.138, ptr @.str.131, ptr @.str.131, ptr @.str.67, ptr @.str.131, ptr @.str.139, ptr @.str.131, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143], align 4
@switch.table.snd_djm_controls_info.149 = private unnamed_addr constant [21 x ptr] [ptr @.str.132, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.132, ptr @.str.132, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.66, ptr @.str.138, ptr @.str.132, ptr @.str.132, ptr @.str.67, ptr @.str.132, ptr @.str.139, ptr @.str.132, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_emuusb_set_samplerate(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 23
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %21, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr ptr, ptr %10, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %4, label %14

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %6, i32 -8
  %16 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %12, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %17, 8
  %19 = zext i8 %1 to i32
  %20 = tail call i32 @snd_usb_mixer_set_ctl_value(ptr noundef nonnull %12, i32 noundef 1, i32 noundef %18, i32 noundef %19) #13
  tail call void @snd_usb_mixer_notify_id(ptr noundef %15, i32 noundef 12) #13
  br label %21

21:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_mixer_set_ctl_value(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_mixer_notify_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_mixer_apply_create_quirk(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [48 x i8], align 1
  %3 = alloca [48 x i8], align 1
  %4 = alloca [64 x i8], align 1
  %5 = alloca [64 x i8], align 1
  %6 = alloca [64 x i8], align 1
  %7 = alloca [64 x i8], align 1
  %8 = alloca %struct.snd_kcontrol_new, align 4
  %9 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store ptr null, ptr %9, align 4, !annotation !8
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %10, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %85 [
    i32 69087232, label %20
    i32 69087264, label %13
    i32 69087296, label %14
    i32 69087298, label %15
    i32 69087455, label %16
    i32 69087799, label %17
    i32 69087843, label %18
    i32 69087304, label %19
  ]

13:                                               ; preds = %1
  br label %20

14:                                               ; preds = %1
  br label %20

15:                                               ; preds = %1
  br label %20

16:                                               ; preds = %1
  br label %20

17:                                               ; preds = %1
  br label %20

18:                                               ; preds = %1
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %18, %17, %16, %15, %14, %13, %1
  %21 = phi i32 [ 0, %1 ], [ 1, %13 ], [ 2, %14 ], [ 3, %15 ], [ 4, %16 ], [ 5, %17 ], [ 6, %18 ], [ 7, %19 ]
  %22 = getelementptr [8 x %struct.rc_config], ptr @rc_configs, i32 0, i32 %21
  %23 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 8
  store ptr %22, ptr %23, align 4
  %24 = getelementptr [8 x %struct.rc_config], ptr @rc_configs, i32 0, i32 %21, i32 3
  %25 = load i8, ptr %24, align 2
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %27, ptr noundef nonnull @.str.2, ptr noundef nonnull @snd_usb_soundblaster_remote_init.__key) #13
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @snd_hwdep_new(ptr noundef %30, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull %9) #13
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %83, label %33

33:                                               ; preds = %20
  %34 = load ptr, ptr %9, align 4
  %35 = getelementptr inbounds %struct.snd_hwdep, ptr %34, i32 0, i32 4
  %36 = load ptr, ptr %0, align 4
  %37 = getelementptr inbounds %struct.snd_usb_audio, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.snd_card, ptr %38, i32 0, i32 3
  %40 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %35, i32 noundef 80, ptr noundef nonnull @.str.4, ptr noundef %39) #13
  %41 = load ptr, ptr %9, align 4
  %42 = getelementptr inbounds %struct.snd_hwdep, ptr %41, i32 0, i32 5
  store i32 15, ptr %42, align 8
  %43 = getelementptr inbounds %struct.snd_hwdep, ptr %41, i32 0, i32 8
  store ptr %0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.snd_hwdep, ptr %41, i32 0, i32 6, i32 1
  store ptr @snd_usb_sbrc_hwdep_read, ptr %44, align 4
  %45 = getelementptr inbounds %struct.snd_hwdep, ptr %41, i32 0, i32 6, i32 5
  store ptr @snd_usb_sbrc_hwdep_poll, ptr %45, align 4
  %46 = getelementptr inbounds %struct.snd_hwdep, ptr %41, i32 0, i32 14
  %47 = load i8, ptr %46, align 4
  %48 = or i8 %47, 1
  store i8 %48, ptr %46, align 4
  %49 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #13
  %50 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 11
  store ptr %49, ptr %50, align 4
  %51 = icmp eq ptr %49, null
  br i1 %51, label %83, label %52

52:                                               ; preds = %33
  %53 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %54 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3264, i32 noundef 8) #14
  %55 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 12
  store ptr %54, ptr %55, align 4
  %56 = icmp eq ptr %54, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load ptr, ptr %50, align 4
  call void @usb_free_urb(ptr noundef %58) #13
  store ptr null, ptr %50, align 4
  br label %83

59:                                               ; preds = %52
  store i8 -95, ptr %54, align 8
  %60 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %54, i32 0, i32 1
  store i8 -123, ptr %60, align 1
  %61 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %54, i32 0, i32 2
  store i16 0, ptr %61, align 2
  %62 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %54, i32 0, i32 3
  store i16 0, ptr %62, align 4
  %63 = zext i8 %25 to i16
  %64 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %54, i32 0, i32 4
  store i16 %63, ptr %64, align 2
  %65 = load ptr, ptr %50, align 4
  %66 = load ptr, ptr %0, align 4
  %67 = getelementptr inbounds %struct.snd_usb_audio, ptr %66, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = load i32, ptr %68, align 8
  %70 = shl i32 %69, 8
  %71 = or i32 %70, -2147483520
  %72 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 13
  %73 = getelementptr inbounds %struct.urb, ptr %65, i32 0, i32 8
  store ptr %68, ptr %73, align 4
  %74 = getelementptr inbounds %struct.urb, ptr %65, i32 0, i32 10
  store i32 %71, ptr %74, align 4
  %75 = getelementptr inbounds %struct.urb, ptr %65, i32 0, i32 21
  store ptr %54, ptr %75, align 4
  %76 = getelementptr inbounds %struct.urb, ptr %65, i32 0, i32 14
  store ptr %72, ptr %76, align 4
  %77 = getelementptr inbounds %struct.urb, ptr %65, i32 0, i32 19
  store i32 %26, ptr %77, align 4
  %78 = getelementptr inbounds %struct.urb, ptr %65, i32 0, i32 28
  store ptr @snd_usb_soundblaster_remote_complete, ptr %78, align 4
  %79 = getelementptr inbounds %struct.urb, ptr %65, i32 0, i32 27
  store ptr %0, ptr %79, align 4
  %80 = load ptr, ptr %0, align 4
  %81 = getelementptr inbounds %struct.snd_usb_audio, ptr %80, i32 0, i32 4
  %82 = load i32, ptr %81, align 4
  br label %85

83:                                               ; preds = %57, %33, %20
  %84 = phi i32 [ -12, %33 ], [ %31, %20 ], [ -12, %57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  br label %450

85:                                               ; preds = %59, %1
  %86 = phi i32 [ %82, %59 ], [ %12, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  switch i32 %86, label %450 [
    i32 105152583, label %88
    i32 69087264, label %90
    i32 69087296, label %90
    i32 69087298, label %90
    i32 69087455, label %90
    i32 69087304, label %90
    i32 69091097, label %148
    i32 123936816, label %150
    i32 123936817, label %150
    i32 123936896, label %263
    i32 123936897, label %263
    i32 184883001, label %387
    i32 184883011, label %387
    i32 184883104, label %387
    i32 227279107, label %400
    i32 230297600, label %402
    i32 399249425, label %404
    i32 399249441, label %406
    i32 537661464, label %408
    i32 305496082, label %410
    i32 305496066, label %410
    i32 305496068, label %410
    i32 305496084, label %410
    i32 305496076, label %410
    i32 305496579, label %412
    i32 305496580, label %412
    i32 305496577, label %412
    i32 305496593, label %412
    i32 305496592, label %412
    i32 305496594, label %412
    i32 305496595, label %412
    i32 305496596, label %412
    i32 305496597, label %412
    i32 69087803, label %414
    i32 198852628, label %416
    i32 708394962, label %87
    i32 708394963, label %87
    i32 708394964, label %87
    i32 424608012, label %436
    i32 708394928, label %438
    i32 728956951, label %440
    i32 149160319, label %442
    i32 728956955, label %444
    i32 149160291, label %446
    i32 728956938, label %448
  ]

87:                                               ; preds = %85, %85, %85
  br label %420

88:                                               ; preds = %85
  %89 = call i32 @snd_us16x08_controls_create(ptr noundef %0) #13
  br label %450

90:                                               ; preds = %85, %85, %85, %85, %85
  %91 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %8, i32 0, i32 3
  %92 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %8, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #13
  switch i32 %86, label %93 [
    i32 69087455, label %109
    i32 69087298, label %109
  ]

93:                                               ; preds = %90
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %8, ptr noundef nonnull align 4 dereferenceable(48) @snd_audigy2nx_control, i32 44, i1 false) #13
  store ptr @.str.5, ptr %91, align 4
  store i32 256, ptr %92, align 4
  %94 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %95 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %94, i32 noundef 3520, i32 noundef 28) #14
  %96 = icmp eq ptr %95, null
  br i1 %96, label %141, label %97

97:                                               ; preds = %93
  store ptr %0, ptr %95, align 8
  %98 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %95, i32 0, i32 3
  store i32 0, ptr %98, align 4
  %99 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %95, i32 0, i32 6
  store ptr @snd_audigy2nx_led_resume, ptr %99, align 8
  %100 = call ptr @snd_ctl_new1(ptr noundef nonnull %8, ptr noundef nonnull %95) #13
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %130, %113, %97
  %103 = phi ptr [ %95, %97 ], [ %111, %113 ], [ %128, %130 ]
  call void @kfree(ptr noundef nonnull %103) #13
  br label %141

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.snd_kcontrol, ptr %100, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %105, align 4
  %106 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %95, ptr noundef nonnull %100, i1 noundef zeroext false) #13
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %141, label %109

108:                                              ; preds = %122, %122, %122, %122
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #13
  br label %143

109:                                              ; preds = %104, %90, %90
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %8, ptr noundef nonnull align 4 dereferenceable(48) @snd_audigy2nx_control, i32 44, i1 false) #13
  store ptr @.str.6, ptr %91, align 4
  store i32 257, ptr %92, align 4
  %110 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %111 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %110, i32 noundef 3520, i32 noundef 28) #14
  %112 = icmp eq ptr %111, null
  br i1 %112, label %141, label %113

113:                                              ; preds = %109
  store ptr %0, ptr %111, align 8
  %114 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %111, i32 0, i32 3
  store i32 0, ptr %114, align 4
  %115 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %111, i32 0, i32 6
  store ptr @snd_audigy2nx_led_resume, ptr %115, align 8
  %116 = call ptr @snd_ctl_new1(ptr noundef nonnull %8, ptr noundef nonnull %111) #13
  %117 = icmp eq ptr %116, null
  br i1 %117, label %102, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.snd_kcontrol, ptr %116, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %119, align 4
  %120 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %111, ptr noundef nonnull %116, i1 noundef zeroext false) #13
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %141, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %0, align 4
  %124 = getelementptr inbounds %struct.snd_usb_audio, ptr %123, i32 0, i32 4
  %125 = load i32, ptr %124, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #13
  switch i32 %125, label %126 [
    i32 69087455, label %108
    i32 69087304, label %108
    i32 69087298, label %108
    i32 69087296, label %108
  ]

126:                                              ; preds = %122
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %8, ptr noundef nonnull align 4 dereferenceable(48) @snd_audigy2nx_control, i32 44, i1 false) #13
  store ptr @.str.7, ptr %91, align 4
  store i32 258, ptr %92, align 4
  %127 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %128 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %127, i32 noundef 3520, i32 noundef 28) #14
  %129 = icmp eq ptr %128, null
  br i1 %129, label %141, label %130

130:                                              ; preds = %126
  store ptr %0, ptr %128, align 8
  %131 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %128, i32 0, i32 3
  store i32 0, ptr %131, align 4
  %132 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %128, i32 0, i32 6
  store ptr @snd_audigy2nx_led_resume, ptr %132, align 8
  %133 = call ptr @snd_ctl_new1(ptr noundef nonnull %8, ptr noundef nonnull %128) #13
  %134 = icmp eq ptr %133, null
  br i1 %134, label %102, label %135

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.snd_kcontrol, ptr %133, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %136, align 4
  %137 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %128, ptr noundef nonnull %133, i1 noundef zeroext false) #13
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %135
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #13
  %140 = load ptr, ptr %0, align 4
  br label %143

141:                                              ; preds = %135, %126, %118, %109, %104, %102, %93
  %142 = phi i32 [ -12, %102 ], [ %106, %104 ], [ -12, %93 ], [ -12, %109 ], [ %120, %118 ], [ -12, %126 ], [ %137, %135 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #13
  br label %450

143:                                              ; preds = %139, %108
  %144 = phi ptr [ %123, %108 ], [ %140, %139 ]
  %145 = getelementptr inbounds %struct.snd_usb_audio, ptr %144, i32 0, i32 2
  %146 = load ptr, ptr %145, align 4
  %147 = call i32 @snd_card_rw_proc_new(ptr noundef %146, ptr noundef nonnull @.str, ptr noundef %0, ptr noundef nonnull @snd_audigy2nx_proc_read, ptr noundef null) #13
  br label %450

148:                                              ; preds = %85
  %149 = call fastcc i32 @snd_emu0204_controls_create(ptr noundef %0)
  br label %450

150:                                              ; preds = %85, %85
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %7, i8 0, i32 64, i1 false) #13, !annotation !8
  switch i32 %86, label %153 [
    i32 123936816, label %151
    i32 123936817, label %152
  ]

151:                                              ; preds = %150
  br label %153

152:                                              ; preds = %150
  br label %153

153:                                              ; preds = %152, %151, %150
  %154 = phi i1 [ false, %150 ], [ true, %152 ], [ true, %151 ]
  %155 = phi i32 [ 0, %150 ], [ 8, %152 ], [ 6, %151 ]
  %156 = phi i32 [ 0, %150 ], [ 6, %152 ], [ 4, %151 ]
  %157 = add nuw nsw i32 %156, %155
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %194, label %159

159:                                              ; preds = %153
  %160 = call i32 @llvm.umax.i32(i32 %155, i32 1) #13
  br label %161

161:                                              ; preds = %186, %159
  %162 = phi i32 [ 0, %159 ], [ %187, %186 ]
  br i1 %154, label %165, label %163

163:                                              ; preds = %161
  %164 = add nuw nsw i32 %162, 1
  br label %186

165:                                              ; preds = %161
  %166 = icmp ult i32 %162, %155
  %167 = add nuw nsw i32 %162, 1
  %168 = sub i32 %167, %155
  %169 = mul nuw nsw i32 %162, %155
  br label %172

170:                                              ; preds = %179
  %171 = icmp eq i32 %174, %160
  br i1 %171, label %186, label %172

172:                                              ; preds = %170, %165
  %173 = phi i32 [ 0, %165 ], [ %174, %170 ]
  %174 = add nuw nsw i32 %173, 1
  br i1 %166, label %175, label %177

175:                                              ; preds = %172
  %176 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 64, ptr noundef nonnull @.str.20, i32 noundef %167, i32 noundef %174) #13
  br label %179

177:                                              ; preds = %172
  %178 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 64, ptr noundef nonnull @.str.21, i32 noundef %168, i32 noundef %174) #13
  br label %179

179:                                              ; preds = %177, %175
  %180 = icmp eq i32 %173, 0
  %181 = add nsw i32 %173, -1
  %182 = shl nuw i32 1, %181
  %183 = select i1 %180, i32 0, i32 %182
  %184 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 64, i32 noundef 1, i32 noundef %183, i32 noundef 4, i32 noundef %169, ptr noundef nonnull %7, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %189, label %170

186:                                              ; preds = %170, %163
  %187 = phi i32 [ %164, %163 ], [ %167, %170 ]
  %188 = icmp eq i32 %187, %157
  br i1 %188, label %190, label %161

189:                                              ; preds = %179
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #13
  br label %450

190:                                              ; preds = %186
  %191 = load ptr, ptr %0, align 4
  %192 = getelementptr inbounds %struct.snd_usb_audio, ptr %191, i32 0, i32 4
  %193 = load i32, ptr %192, align 4
  br label %194

194:                                              ; preds = %190, %153
  %195 = phi i32 [ %193, %190 ], [ %86, %153 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %6, i8 0, i32 64, i1 false) #13, !annotation !8
  switch i32 %195, label %198 [
    i32 123936816, label %196
    i32 123936817, label %197
  ]

196:                                              ; preds = %194
  br label %198

197:                                              ; preds = %194
  br label %198

198:                                              ; preds = %197, %196, %194
  %199 = phi i32 [ 0, %194 ], [ 8, %197 ], [ 6, %196 ]
  %200 = phi i32 [ 0, %194 ], [ 6, %197 ], [ 4, %196 ]
  %201 = add nuw nsw i32 %200, %199
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %226, label %205

203:                                              ; preds = %214
  %204 = icmp eq i32 %208, %201
  br i1 %204, label %222, label %205

205:                                              ; preds = %203, %198
  %206 = phi i32 [ %208, %203 ], [ 0, %198 ]
  %207 = icmp ult i32 %206, %199
  %208 = add nuw nsw i32 %206, 1
  br i1 %207, label %209, label %211

209:                                              ; preds = %205
  %210 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 64, ptr noundef nonnull @.str.22, i32 noundef %208) #13
  br label %214

211:                                              ; preds = %205
  %212 = sub nsw i32 %208, %199
  %213 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 64, ptr noundef nonnull @.str.23, i32 noundef %212) #13
  br label %214

214:                                              ; preds = %211, %209
  %215 = icmp eq i32 %206, 0
  %216 = add nsw i32 %206, -1
  %217 = shl nuw i32 1, %216
  %218 = select i1 %215, i32 0, i32 %217
  %219 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 66, i32 noundef 1, i32 noundef %218, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %6, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %203

221:                                              ; preds = %214
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  br label %450

222:                                              ; preds = %203
  %223 = load ptr, ptr %0, align 4
  %224 = getelementptr inbounds %struct.snd_usb_audio, ptr %223, i32 0, i32 4
  %225 = load i32, ptr %224, align 4
  br label %226

226:                                              ; preds = %222, %198
  %227 = phi i32 [ %225, %222 ], [ %195, %198 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false) #13, !annotation !8
  switch i32 %227, label %230 [
    i32 123936816, label %228
    i32 123936817, label %229
  ]

228:                                              ; preds = %226
  br label %230

229:                                              ; preds = %226
  br label %230

230:                                              ; preds = %229, %228, %226
  %231 = phi i32 [ 0, %226 ], [ 8, %229 ], [ 6, %228 ]
  %232 = phi i32 [ 0, %226 ], [ 112, %229 ], [ 60, %228 ]
  br label %233

233:                                              ; preds = %246, %230
  %234 = phi i32 [ 0, %230 ], [ %237, %246 ]
  %235 = icmp eq i32 %234, %231
  br i1 %235, label %251, label %236

236:                                              ; preds = %233
  %237 = add nuw nsw i32 %234, 1
  %238 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 64, ptr noundef nonnull @.str.24, i32 noundef %237) #13
  %239 = icmp eq i32 %234, 0
  br i1 %239, label %246, label %240

240:                                              ; preds = %236
  %241 = and i32 %234, 1
  %242 = mul nuw nsw i32 %241, %231
  %243 = add nsw i32 %234, -1
  %244 = add i32 %243, %242
  %245 = shl nuw i32 1, %244
  br label %246

246:                                              ; preds = %240, %236
  %247 = phi i32 [ %245, %240 ], [ 0, %236 ]
  %248 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 64, i32 noundef 1, i32 noundef %247, i32 noundef 4, i32 noundef %232, ptr noundef nonnull %5, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %233

250:                                              ; preds = %246
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  br label %450

251:                                              ; preds = %233
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  %252 = call fastcc i32 @snd_ftu_create_effect_switch(ptr noundef %0, i32 noundef 2, i32 noundef 67) #13
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %450, label %254

254:                                              ; preds = %251
  %255 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 67, i32 noundef 3, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef nonnull @snd_c400_create_effect_volume_ctl.name, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %450, label %257

257:                                              ; preds = %254
  %258 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 67, i32 noundef 4, i32 noundef 0, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @snd_c400_create_effect_duration_ctl.name, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %450, label %260

260:                                              ; preds = %257
  %261 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 67, i32 noundef 5, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef nonnull @snd_c400_create_effect_feedback_ctl.name, ptr noundef null) #13
  %262 = call i32 @llvm.smin.i32(i32 %261, i32 0) #13
  br label %450

263:                                              ; preds = %85, %85
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %4, i8 0, i32 64, i1 false) #13, !annotation !8
  br label %264

264:                                              ; preds = %308, %263
  %265 = phi i32 [ 0, %263 ], [ %266, %308 ]
  %266 = add nuw nsw i32 %265, 1
  br label %267

267:                                              ; preds = %274, %264
  %268 = phi i32 [ 0, %264 ], [ %276, %274 ]
  %269 = icmp eq i32 %268, 8
  br i1 %269, label %270, label %274

270:                                              ; preds = %267
  %271 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 64, ptr noundef nonnull @.str.35, i32 noundef 1, i32 noundef %266) #13
  %272 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 5, i32 noundef %266, i32 noundef 256, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %310, label %280

274:                                              ; preds = %267
  %275 = shl nuw nsw i32 1, %268
  %276 = add nuw nsw i32 %268, 1
  %277 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 64, ptr noundef nonnull @.str.34, i32 noundef %276, i32 noundef %266) #13
  %278 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 5, i32 noundef %266, i32 noundef %275, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %310, label %267

280:                                              ; preds = %270
  %281 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 64, ptr noundef nonnull @.str.35, i32 noundef 2, i32 noundef %266) #13
  %282 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 5, i32 noundef %266, i32 noundef 512, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %310, label %284

284:                                              ; preds = %280
  %285 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 64, ptr noundef nonnull @.str.35, i32 noundef 3, i32 noundef %266) #13
  %286 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 5, i32 noundef %266, i32 noundef 1024, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %310, label %288

288:                                              ; preds = %284
  %289 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 64, ptr noundef nonnull @.str.35, i32 noundef 4, i32 noundef %266) #13
  %290 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 5, i32 noundef %266, i32 noundef 2048, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %310, label %292

292:                                              ; preds = %288
  %293 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 64, ptr noundef nonnull @.str.35, i32 noundef 5, i32 noundef %266) #13
  %294 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 5, i32 noundef %266, i32 noundef 4096, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %310, label %296

296:                                              ; preds = %292
  %297 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 64, ptr noundef nonnull @.str.35, i32 noundef 6, i32 noundef %266) #13
  %298 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 5, i32 noundef %266, i32 noundef 8192, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %310, label %300

300:                                              ; preds = %296
  %301 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 64, ptr noundef nonnull @.str.35, i32 noundef 7, i32 noundef %266) #13
  %302 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 5, i32 noundef %266, i32 noundef 16384, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %310, label %304

304:                                              ; preds = %300
  %305 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 64, ptr noundef nonnull @.str.35, i32 noundef 8, i32 noundef %266) #13
  %306 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 5, i32 noundef %266, i32 noundef 32768, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %307 = icmp slt i32 %306, 0
  br i1 %307, label %310, label %308

308:                                              ; preds = %304
  %309 = icmp eq i32 %266, 8
  br i1 %309, label %312, label %264

310:                                              ; preds = %304, %300, %296, %292, %288, %284, %280, %274, %270
  %311 = phi i32 [ %278, %274 ], [ %272, %270 ], [ %282, %280 ], [ %286, %284 ], [ %290, %288 ], [ %294, %292 ], [ %298, %296 ], [ %302, %300 ], [ %306, %304 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  br label %450

312:                                              ; preds = %308
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  %313 = call fastcc i32 @snd_ftu_create_effect_switch(ptr noundef %0, i32 noundef 1, i32 noundef 6) #13
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %450, label %315

315:                                              ; preds = %312
  %316 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef nonnull @snd_ftu_create_effect_volume_ctl.name, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %450, label %318

318:                                              ; preds = %315
  %319 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 6, i32 noundef 3, i32 noundef 0, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @snd_ftu_create_effect_duration_ctl.name, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %450, label %321

321:                                              ; preds = %318
  %322 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 6, i32 noundef 4, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef nonnull @snd_ftu_create_effect_feedback_ctl.name, ptr noundef null) #13
  %323 = icmp slt i32 %322, 0
  br i1 %323, label %450, label %324

324:                                              ; preds = %321
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(48) %3, i8 0, i32 48, i1 false) #13, !annotation !8
  %325 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 48, ptr noundef nonnull @.str.36, i32 noundef 1) #13
  %326 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 7, i32 noundef 7, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %336, label %328

328:                                              ; preds = %324
  %329 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 48, ptr noundef nonnull @.str.36, i32 noundef 2) #13
  %330 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 7, i32 noundef 7, i32 noundef 2, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %336, label %332

332:                                              ; preds = %328
  %333 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 48, ptr noundef nonnull @.str.36, i32 noundef 3) #13
  %334 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 7, i32 noundef 7, i32 noundef 4, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %335 = icmp slt i32 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %332, %328, %324
  %337 = phi i32 [ %334, %332 ], [ %330, %328 ], [ %326, %324 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  br label %450

338:                                              ; preds = %332
  %339 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 48, ptr noundef nonnull @.str.36, i32 noundef 4) #13
  %340 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 7, i32 noundef 7, i32 noundef 8, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %341 = call i32 @llvm.smin.i32(i32 %340, i32 0) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  %342 = icmp slt i32 %340, 0
  br i1 %342, label %450, label %343

343:                                              ; preds = %338
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(48) %2, i8 0, i32 48, i1 false) #13, !annotation !8
  br label %344

344:                                              ; preds = %351, %343
  %345 = phi i32 [ 0, %343 ], [ %353, %351 ]
  %346 = icmp eq i32 %345, 8
  br i1 %346, label %347, label %351

347:                                              ; preds = %344
  %348 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 48, ptr noundef nonnull @.str.38, i32 noundef 1) #13
  %349 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 5, i32 noundef 9, i32 noundef 256, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %385, label %357

351:                                              ; preds = %344
  %352 = shl nuw nsw i32 1, %345
  %353 = add nuw nsw i32 %345, 1
  %354 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 48, ptr noundef nonnull @.str.37, i32 noundef %353) #13
  %355 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 5, i32 noundef 9, i32 noundef %352, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %385, label %344

357:                                              ; preds = %347
  %358 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 48, ptr noundef nonnull @.str.38, i32 noundef 2) #13
  %359 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 5, i32 noundef 9, i32 noundef 512, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %360 = icmp slt i32 %359, 0
  br i1 %360, label %385, label %361

361:                                              ; preds = %357
  %362 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 48, ptr noundef nonnull @.str.38, i32 noundef 3) #13
  %363 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 5, i32 noundef 9, i32 noundef 1024, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %385, label %365

365:                                              ; preds = %361
  %366 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 48, ptr noundef nonnull @.str.38, i32 noundef 4) #13
  %367 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 5, i32 noundef 9, i32 noundef 2048, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %368 = icmp slt i32 %367, 0
  br i1 %368, label %385, label %369

369:                                              ; preds = %365
  %370 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 48, ptr noundef nonnull @.str.38, i32 noundef 5) #13
  %371 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 5, i32 noundef 9, i32 noundef 4096, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %372 = icmp slt i32 %371, 0
  br i1 %372, label %385, label %373

373:                                              ; preds = %369
  %374 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 48, ptr noundef nonnull @.str.38, i32 noundef 6) #13
  %375 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 5, i32 noundef 9, i32 noundef 8192, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %376 = icmp slt i32 %375, 0
  br i1 %376, label %385, label %377

377:                                              ; preds = %373
  %378 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 48, ptr noundef nonnull @.str.38, i32 noundef 7) #13
  %379 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 5, i32 noundef 9, i32 noundef 16384, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %380 = icmp slt i32 %379, 0
  br i1 %380, label %385, label %381

381:                                              ; preds = %377
  %382 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 48, ptr noundef nonnull @.str.38, i32 noundef 8) #13
  %383 = call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef 5, i32 noundef 9, i32 noundef 32768, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull @snd_usb_mixer_vol_tlv) #13
  %384 = call i32 @llvm.smin.i32(i32 %383, i32 0) #13
  br label %385

385:                                              ; preds = %381, %377, %373, %369, %365, %361, %357, %351, %347
  %386 = phi i32 [ %349, %347 ], [ %359, %357 ], [ %363, %361 ], [ %367, %365 ], [ %371, %369 ], [ %375, %373 ], [ %379, %377 ], [ %384, %381 ], [ %355, %351 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #13
  br label %450

387:                                              ; preds = %85, %85, %85
  %388 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %389 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %388, i32 noundef 3520, i32 noundef 28) #14
  %390 = icmp eq ptr %389, null
  br i1 %390, label %450, label %391

391:                                              ; preds = %387
  store ptr %0, ptr %389, align 8
  %392 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %389, i32 0, i32 3
  store i32 0, ptr %392, align 4
  %393 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %389, i32 0, i32 6
  store ptr @snd_xonar_u1_switch_resume, ptr %393, align 8
  %394 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_xonar_u1_output_switch, ptr noundef nonnull %389) #13
  %395 = icmp eq ptr %394, null
  br i1 %395, label %396, label %397

396:                                              ; preds = %391
  call void @kfree(ptr noundef nonnull %389) #13
  br label %450

397:                                              ; preds = %391
  %398 = getelementptr inbounds %struct.snd_kcontrol, ptr %394, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %398, align 4
  %399 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %389, ptr noundef nonnull %394, i1 noundef zeroext false) #13
  br label %450

400:                                              ; preds = %85
  %401 = call fastcc i32 @snd_microii_controls_create(ptr noundef %0)
  br label %450

402:                                              ; preds = %85
  %403 = call fastcc i32 @snd_mbox1_controls_create(ptr noundef %0)
  br label %450

404:                                              ; preds = %85
  %405 = call fastcc i32 @snd_nativeinstruments_create_mixer(ptr noundef %0, ptr noundef nonnull @snd_nativeinstruments_ta6_mixers, i32 noundef 4)
  br label %450

406:                                              ; preds = %85
  %407 = call fastcc i32 @snd_nativeinstruments_create_mixer(ptr noundef %0, ptr noundef nonnull @snd_nativeinstruments_ta10_mixers, i32 noundef 8)
  br label %450

408:                                              ; preds = %85
  %409 = call fastcc i32 @snd_create_std_mono_table(ptr noundef %0)
  br label %450

410:                                              ; preds = %85, %85, %85, %85, %85
  %411 = call i32 @snd_scarlett_controls_create(ptr noundef %0) #13
  br label %450

412:                                              ; preds = %85, %85, %85, %85, %85, %85, %85, %85, %85
  %413 = call i32 @snd_scarlett_gen2_init(ptr noundef %0) #13
  br label %450

414:                                              ; preds = %85
  %415 = call fastcc i32 @snd_soundblaster_e1_switch_create(ptr noundef %0)
  br label %450

416:                                              ; preds = %85
  call fastcc void @dell_dock_mixer_init(ptr noundef %0)
  br label %450

417:                                              ; preds = %432
  %418 = add nuw nsw i32 %421, 1
  %419 = icmp eq i32 %418, 9
  br i1 %419, label %450, label %420

420:                                              ; preds = %417, %87
  %421 = phi i32 [ %418, %417 ], [ 0, %87 ]
  %422 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %423 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %422, i32 noundef 3520, i32 noundef 28) #14
  %424 = icmp eq ptr %423, null
  br i1 %424, label %450, label %425

425:                                              ; preds = %420
  %426 = getelementptr [9 x %struct.snd_kcontrol_new], ptr @snd_rme_controls, i32 0, i32 %421
  store ptr %0, ptr %423, align 8
  %427 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %423, i32 0, i32 3
  store i32 0, ptr %427, align 4
  %428 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %423, i32 0, i32 6
  store ptr null, ptr %428, align 8
  %429 = call ptr @snd_ctl_new1(ptr noundef %426, ptr noundef nonnull %423) #13
  %430 = icmp eq ptr %429, null
  br i1 %430, label %431, label %432

431:                                              ; preds = %425
  call void @kfree(ptr noundef nonnull %423) #13
  br label %450

432:                                              ; preds = %425
  %433 = getelementptr inbounds %struct.snd_kcontrol, ptr %429, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %433, align 4
  %434 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %423, ptr noundef nonnull %429, i1 noundef zeroext false) #13
  %435 = icmp slt i32 %434, 0
  br i1 %435, label %450, label %417

436:                                              ; preds = %85
  %437 = call i32 @snd_sc1810_init_mixer(ptr noundef %0) #13
  br label %450

438:                                              ; preds = %85
  %439 = call fastcc i32 @snd_bbfpro_controls_create(ptr noundef %0)
  br label %450

440:                                              ; preds = %85
  %441 = call fastcc i32 @snd_djm_controls_create(ptr noundef %0, i8 noundef zeroext 0)
  br label %450

442:                                              ; preds = %85
  %443 = call fastcc i32 @snd_djm_controls_create(ptr noundef %0, i8 noundef zeroext 1)
  br label %450

444:                                              ; preds = %85
  %445 = call fastcc i32 @snd_djm_controls_create(ptr noundef %0, i8 noundef zeroext 4)
  br label %450

446:                                              ; preds = %85
  %447 = call fastcc i32 @snd_djm_controls_create(ptr noundef %0, i8 noundef zeroext 2)
  br label %450

448:                                              ; preds = %85
  %449 = call fastcc i32 @snd_djm_controls_create(ptr noundef %0, i8 noundef zeroext 3)
  br label %450

450:                                              ; preds = %448, %446, %444, %442, %440, %438, %436, %432, %431, %420, %417, %416, %414, %412, %410, %408, %406, %404, %402, %400, %397, %396, %387, %385, %338, %336, %321, %318, %315, %312, %310, %260, %257, %254, %251, %250, %221, %189, %148, %143, %141, %88, %85, %83
  %451 = phi i32 [ 0, %85 ], [ %449, %448 ], [ %447, %446 ], [ %445, %444 ], [ %443, %442 ], [ %441, %440 ], [ %439, %438 ], [ %437, %436 ], [ 0, %416 ], [ %415, %414 ], [ %413, %412 ], [ %411, %410 ], [ %409, %408 ], [ %407, %406 ], [ %405, %404 ], [ %403, %402 ], [ %401, %400 ], [ %149, %148 ], [ %142, %141 ], [ 0, %143 ], [ %89, %88 ], [ %84, %83 ], [ %184, %189 ], [ %219, %221 ], [ %252, %251 ], [ %255, %254 ], [ %258, %257 ], [ %262, %260 ], [ %248, %250 ], [ %313, %312 ], [ %316, %315 ], [ %319, %318 ], [ %322, %321 ], [ %341, %338 ], [ %386, %385 ], [ %311, %310 ], [ %337, %336 ], [ %399, %397 ], [ -12, %396 ], [ -12, %387 ], [ -12, %431 ], [ %434, %432 ], [ 0, %417 ], [ -12, %420 ]
  ret i32 %451
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_us16x08_controls_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_audigy2nx_proc_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  %6 = load ptr, ptr %1, align 4
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %6, ptr noundef nonnull @.str.13, ptr noundef %10) #13
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.snd_usb_audio, ptr %11, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %60 [
    i32 69087264, label %15
    i32 69087296, label %14
    i32 69087304, label %14
  ]

14:                                               ; preds = %2, %2
  br label %15

15:                                               ; preds = %14, %2
  %16 = phi ptr [ @snd_audigy2nx_proc_read.jacks_live24ext, %14 ], [ @snd_audigy2nx_proc_read.jacks_audigy2nx, %2 ]
  %17 = getelementptr %struct.sb_jack, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %60, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %22 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  br label %23

23:                                               ; preds = %54, %20
  %24 = phi ptr [ %18, %20 ], [ %58, %54 ]
  %25 = phi ptr [ %16, %20 ], [ %56, %54 ]
  %26 = phi i32 [ 0, %20 ], [ %55, %54 ]
  %27 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull @.str.14, ptr noundef nonnull %24) #13
  %28 = load ptr, ptr %5, align 4
  %29 = call i32 @snd_usb_lock_shutdown(ptr noundef %28) #13
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %60, label %31

31:                                               ; preds = %23
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr inbounds %struct.snd_usb_audio, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %34, align 8
  %36 = shl i32 %35, 8
  %37 = or i32 %36, -2147483520
  %38 = load i32, ptr %25, align 4
  %39 = trunc i32 %38 to i16
  %40 = shl i16 %39, 8
  %41 = call i32 @snd_usb_ctl_msg(ptr noundef %34, i32 noundef %37, i8 noundef zeroext -123, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext %40, ptr noundef nonnull %3, i16 noundef zeroext 3) #13
  %42 = load ptr, ptr %5, align 4
  call void @snd_usb_unlock_shutdown(ptr noundef %42) #13
  %43 = icmp eq i32 %41, 3
  br i1 %43, label %44, label %52

44:                                               ; preds = %31
  %45 = load i8, ptr %3, align 1
  switch i8 %45, label %52 [
    i8 6, label %46
    i8 3, label %46
  ]

46:                                               ; preds = %44, %44
  %47 = load ptr, ptr %1, align 4
  %48 = load i8, ptr %21, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, ptr %22, align 1
  %51 = zext i8 %50 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %47, ptr noundef nonnull @.str.15, i32 noundef %49, i32 noundef %51) #13
  br label %54

52:                                               ; preds = %44, %31
  %53 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %53, ptr noundef nonnull @.str.16) #13
  br label %54

54:                                               ; preds = %52, %46
  %55 = add i32 %26, 1
  %56 = getelementptr %struct.sb_jack, ptr %16, i32 %55
  %57 = getelementptr %struct.sb_jack, ptr %16, i32 %55, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %23

60:                                               ; preds = %54, %23, %15, %2
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_emu0204_controls_create(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 28) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  store ptr %0, ptr %3, align 8
  %6 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %3, i32 0, i32 3
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %3, i32 0, i32 6
  store ptr @snd_emu0204_ch_switch_resume, ptr %7, align 8
  %8 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu0204_control, ptr noundef nonnull %3) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #13
  br label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.snd_kcontrol, ptr %8, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %12, align 4
  %13 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %3, ptr noundef nonnull %8, i1 noundef zeroext false) #13
  br label %14

14:                                               ; preds = %11, %10, %1
  %15 = phi i32 [ %13, %11 ], [ -12, %10 ], [ -12, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_microii_controls_create(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 28) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %42, label %31

5:                                                ; preds = %38
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 28) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %42, label %9

9:                                                ; preds = %5
  store ptr %0, ptr %7, align 8
  %10 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %7, i32 0, i32 3
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %7, i32 0, i32 6
  store ptr null, ptr %11, align 8
  %12 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @snd_microii_mixer_spdif, i32 0, i32 1), ptr noundef nonnull %7) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %36, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.snd_kcontrol, ptr %12, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %15, align 4
  %16 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %7, ptr noundef nonnull %12, i1 noundef zeroext false) #13
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 28) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %18
  store ptr %0, ptr %20, align 8
  %23 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %20, i32 0, i32 3
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %20, i32 0, i32 6
  store ptr @snd_microii_spdif_switch_update, ptr %24, align 8
  %25 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @snd_microii_mixer_spdif, i32 0, i32 2), ptr noundef nonnull %20) #13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.snd_kcontrol, ptr %25, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %28, align 4
  %29 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %20, ptr noundef nonnull %25, i1 noundef zeroext false) #13
  %30 = call i32 @llvm.smin.i32(i32 %29, i32 0)
  br label %42

31:                                               ; preds = %1
  store ptr %0, ptr %3, align 8
  %32 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %3, i32 0, i32 3
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %3, i32 0, i32 6
  store ptr @snd_microii_spdif_default_update, ptr %33, align 8
  %34 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_microii_mixer_spdif, ptr noundef nonnull %3) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %22, %9
  %37 = phi ptr [ %3, %31 ], [ %7, %9 ], [ %20, %22 ]
  tail call void @kfree(ptr noundef nonnull %37) #13
  br label %42

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.snd_kcontrol, ptr %34, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %39, align 4
  %40 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %3, ptr noundef nonnull %34, i1 noundef zeroext false) #13
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %5

42:                                               ; preds = %38, %36, %27, %18, %14, %5, %1
  %43 = phi i32 [ -12, %36 ], [ %40, %38 ], [ -12, %1 ], [ -12, %5 ], [ %16, %14 ], [ -12, %18 ], [ %30, %27 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_mbox1_controls_create(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 28) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  store ptr %0, ptr %3, align 8
  %6 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %3, i32 0, i32 3
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %3, i32 0, i32 6
  store ptr @snd_mbox1_clk_switch_resume, ptr %7, align 8
  %8 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_mbox1_clk_switch, ptr noundef nonnull %3) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #13
  br label %28

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.snd_kcontrol, ptr %8, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %12, align 4
  %13 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %3, ptr noundef nonnull %8, i1 noundef zeroext false) #13
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 28) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  store ptr %0, ptr %17, align 8
  %20 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %17, i32 0, i32 3
  store i32 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %17, i32 0, i32 6
  store ptr @snd_mbox1_src_switch_resume, ptr %21, align 8
  %22 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_mbox1_src_switch, ptr noundef nonnull %17) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  tail call void @kfree(ptr noundef nonnull %17) #13
  br label %28

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.snd_kcontrol, ptr %22, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %26, align 4
  %27 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %17, ptr noundef nonnull %22, i1 noundef zeroext false) #13
  br label %28

28:                                               ; preds = %25, %24, %15, %11, %10, %1
  %29 = phi i32 [ %13, %11 ], [ %27, %25 ], [ -12, %24 ], [ -12, %15 ], [ -12, %10 ], [ -12, %1 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_nativeinstruments_create_mixer(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.snd_kcontrol_new, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %5, ptr noundef nonnull align 4 dereferenceable(48) @__const.snd_nativeinstruments_create_mixer.template, i32 44, i1 false)
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %56, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %5, i32 0, i32 3
  %9 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %5, i32 0, i32 11
  br label %10

10:                                               ; preds = %53, %7
  %11 = phi i32 [ 0, %7 ], [ %54, %53 ]
  %12 = getelementptr %struct.snd_kcontrol_new, ptr %1, i32 %11, i32 3
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %8, align 4
  %14 = getelementptr %struct.snd_kcontrol_new, ptr %1, i32 %11, i32 11
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %9, align 4
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 28) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %56, label %19

19:                                               ; preds = %10
  store ptr %0, ptr %17, align 8
  %20 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %17, i32 0, i32 3
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %17, i32 0, i32 6
  store ptr @snd_ni_update_cur_val, ptr %21, align 8
  %22 = call ptr @snd_ctl_new1(ptr noundef nonnull %5, ptr noundef nonnull %17) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  call void @kfree(ptr noundef nonnull %17) #13
  br label %56

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.snd_kcontrol, ptr %22, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %26, align 4
  %27 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %17, ptr noundef nonnull %22, i1 noundef zeroext false) #13
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %56, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %17, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr inbounds %struct.snd_usb_audio, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.snd_kcontrol, ptr %31, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  store i8 0, ptr %4, align 1, !annotation !8
  %37 = load i32, ptr %34, align 8
  %38 = shl i32 %37, 8
  %39 = or i32 %38, -2147483520
  %40 = lshr i32 %36, 16
  %41 = trunc i32 %40 to i8
  %42 = trunc i32 %36 to i16
  %43 = call i32 @snd_usb_ctl_msg(ptr noundef %34, i32 noundef %39, i8 noundef zeroext %41, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %42, ptr noundef nonnull %4, i16 noundef zeroext 1) #13
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.48, i32 noundef %43) #15
  br label %53

47:                                               ; preds = %29
  %48 = load i8, ptr %4, align 1
  %49 = zext i8 %48 to i32
  %50 = shl nuw i32 %49, 24
  %51 = load i32, ptr %35, align 4
  %52 = or i32 %50, %51
  store i32 %52, ptr %35, align 4
  br label %53

53:                                               ; preds = %47, %45
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  %54 = add nuw i32 %11, 1
  %55 = icmp eq i32 %54, %2
  br i1 %55, label %56, label %10

56:                                               ; preds = %53, %25, %24, %10, %3
  %57 = phi i32 [ -12, %24 ], [ 0, %3 ], [ %27, %53 ], [ %27, %25 ], [ -12, %10 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #13
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_create_std_mono_table(ptr noundef %0) unnamed_addr #0 {
  br label %7

2:                                                ; preds = %7
  %3 = getelementptr %struct.std_mono_table, ptr %9, i32 1
  %4 = getelementptr %struct.std_mono_table, ptr %9, i32 1, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %2, %1
  %8 = phi ptr [ @.str.57, %1 ], [ %5, %2 ]
  %9 = phi ptr [ @ebox44_table, %1 ], [ %3, %2 ]
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.std_mono_table, ptr %9, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.std_mono_table, ptr %9, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.std_mono_table, ptr %9, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.std_mono_table, ptr %9, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = tail call fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef 0, ptr noundef nonnull %8, ptr noundef %18) #13
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %2

21:                                               ; preds = %7, %2
  %22 = phi i32 [ %19, %7 ], [ 0, %2 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_scarlett_controls_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_scarlett_gen2_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_soundblaster_e1_switch_create(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 28) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  store ptr %0, ptr %3, align 8
  %6 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %3, i32 0, i32 3
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %3, i32 0, i32 6
  store ptr @snd_soundblaster_e1_switch_resume, ptr %7, align 8
  %8 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_soundblaster_e1_input_switch, ptr noundef nonnull %3) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #13
  br label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.snd_kcontrol, ptr %8, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %12, align 4
  %13 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %3, ptr noundef nonnull %8, i1 noundef zeroext false) #13
  br label %14

14:                                               ; preds = %11, %10, %1
  %15 = phi i32 [ %13, %11 ], [ -12, %10 ], [ -12, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dell_dock_mixer_init(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i16 0, ptr %5, align 2
  %7 = getelementptr inbounds %struct.snd_usb_audio, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 8
  %10 = shl i32 %9, 8
  %11 = or i32 %10, -2147483648
  %12 = getelementptr inbounds %struct.snd_usb_audio, ptr %6, i32 0, i32 28
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %13, i32 0, i32 2
  %15 = load i8, ptr %14, align 2
  %16 = zext i8 %15 to i16
  %17 = or i16 %16, 4096
  %18 = call i32 @snd_usb_ctl_msg(ptr noundef %8, i32 noundef %11, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 1, i16 noundef zeroext %17, ptr noundef nonnull %5, i16 noundef zeroext 2) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %19 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2
  %20 = getelementptr inbounds %struct.snd_usb_audio, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %21, align 8
  %23 = shl i32 %22, 8
  %24 = or i32 %23, -2147483648
  %25 = getelementptr inbounds %struct.snd_usb_audio, ptr %19, i32 0, i32 28
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %26, i32 0, i32 2
  %28 = load i8, ptr %27, align 2
  %29 = zext i8 %28 to i16
  %30 = or i16 %29, 4096
  %31 = call i32 @snd_usb_ctl_msg(ptr noundef %21, i32 noundef %24, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 2, i16 noundef zeroext %30, ptr noundef nonnull %4, i16 noundef zeroext 2) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %32 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 0, ptr %3, align 2
  %33 = getelementptr inbounds %struct.snd_usb_audio, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %34, align 8
  %36 = shl i32 %35, 8
  %37 = or i32 %36, -2147483648
  %38 = getelementptr inbounds %struct.snd_usb_audio, ptr %32, i32 0, i32 28
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %39, i32 0, i32 2
  %41 = load i8, ptr %40, align 2
  %42 = zext i8 %41 to i16
  %43 = or i16 %42, 4864
  %44 = call i32 @snd_usb_ctl_msg(ptr noundef %34, i32 noundef %37, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 1, i16 noundef zeroext %43, ptr noundef nonnull %3, i16 noundef zeroext 2) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %45 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i16 0, ptr %2, align 2
  %46 = getelementptr inbounds %struct.snd_usb_audio, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = load i32, ptr %47, align 8
  %49 = shl i32 %48, 8
  %50 = or i32 %49, -2147483648
  %51 = getelementptr inbounds %struct.snd_usb_audio, ptr %45, i32 0, i32 28
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %52, i32 0, i32 2
  %54 = load i8, ptr %53, align 2
  %55 = zext i8 %54 to i16
  %56 = or i16 %55, 4864
  %57 = call i32 @snd_usb_ctl_msg(ptr noundef %47, i32 noundef %50, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 2, i16 noundef zeroext %56, ptr noundef nonnull %2, i16 noundef zeroext 2) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sc1810_init_mixer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_bbfpro_controls_create(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.snd_kcontrol_new, align 4
  %3 = alloca %struct.snd_kcontrol_new, align 4
  %4 = alloca %struct.snd_kcontrol_new, align 4
  %5 = alloca %struct.snd_kcontrol_new, align 4
  %6 = alloca [48 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(48) %6, i8 0, i32 48, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %5, i32 0, i32 3
  %8 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %5, i32 0, i32 11
  %9 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %4, i32 0, i32 3
  %10 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %4, i32 0, i32 11
  br label %11

11:                                               ; preds = %60, %1
  %12 = phi i32 [ 0, %1 ], [ %61, %60 ]
  %13 = getelementptr [12 x ptr], ptr @snd_bbfpro_controls_create.output, i32 0, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = mul nuw nsw i32 %12, 26
  br label %19

16:                                               ; preds = %56
  %17 = add nuw nsw i32 %20, 1
  %18 = icmp eq i32 %17, 12
  br i1 %18, label %60, label %19

19:                                               ; preds = %16, %11
  %20 = phi i32 [ 0, %11 ], [ %17, %16 ]
  %21 = icmp ult i32 %20, 2
  %22 = select i1 %21, ptr @.str.66, ptr @.str.102
  %23 = getelementptr [12 x ptr], ptr @snd_bbfpro_controls_create.input, i32 0, i32 %20
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 48, ptr noundef nonnull @.str.101, ptr noundef nonnull %22, ptr noundef %24, ptr noundef %14)
  %26 = add nuw nsw i32 %20, %15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %5, ptr noundef nonnull align 4 dereferenceable(48) @snd_bbfpro_vol_control, i32 44, i1 false) #13
  store ptr %6, ptr %7, align 4
  store i32 %26, ptr %8, align 4
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %28 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 28) #14
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %19
  store ptr %0, ptr %28, align 8
  %31 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %28, i32 0, i32 3
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %28, i32 0, i32 6
  store ptr @snd_bbfpro_vol_resume, ptr %32, align 8
  %33 = call ptr @snd_ctl_new1(ptr noundef nonnull %5, ptr noundef nonnull %28) #13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  call void @kfree(ptr noundef nonnull %28) #13
  br label %36

36:                                               ; preds = %35, %19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #13
  br label %121

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.snd_kcontrol, ptr %33, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %38, align 4
  %39 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %28, ptr noundef nonnull %33, i1 noundef zeroext false) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #13
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %121, label %41

41:                                               ; preds = %37
  %42 = getelementptr [12 x ptr], ptr @snd_bbfpro_controls_create.output, i32 0, i32 %20
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 48, ptr noundef nonnull @.str.103, ptr noundef %43, ptr noundef %14)
  %45 = add nuw nsw i32 %26, 12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(48) @snd_bbfpro_vol_control, i32 44, i1 false) #13
  store ptr %6, ptr %9, align 4
  store i32 %45, ptr %10, align 4
  %46 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %47 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 28) #14
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %41
  store ptr %0, ptr %47, align 8
  %50 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %47, i32 0, i32 3
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %47, i32 0, i32 6
  store ptr @snd_bbfpro_vol_resume, ptr %51, align 8
  %52 = call ptr @snd_ctl_new1(ptr noundef nonnull %4, ptr noundef nonnull %47) #13
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  call void @kfree(ptr noundef nonnull %47) #13
  br label %55

55:                                               ; preds = %54, %41
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  br label %121

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.snd_kcontrol, ptr %52, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %57, align 4
  %58 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %47, ptr noundef nonnull %52, i1 noundef zeroext false) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %121, label %16

60:                                               ; preds = %16
  %61 = add nuw nsw i32 %12, 1
  %62 = icmp eq i32 %61, 12
  br i1 %62, label %63, label %11

63:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(48) @snd_bbfpro_ctl_control, i32 44, i1 false) #13
  %64 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 3
  store ptr @.str.104, ptr %64, align 4
  %65 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 11
  store i32 2, ptr %65, align 4
  %66 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %67 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %66, i32 noundef 3520, i32 noundef 28) #14
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  store ptr %0, ptr %67, align 8
  %70 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %67, i32 0, i32 3
  store i32 0, ptr %70, align 4
  %71 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %67, i32 0, i32 6
  store ptr @snd_bbfpro_ctl_resume, ptr %71, align 8
  %72 = call ptr @snd_ctl_new1(ptr noundef nonnull %3, ptr noundef nonnull %67) #13
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  call void @kfree(ptr noundef nonnull %67) #13
  br label %75

75:                                               ; preds = %74, %63
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  br label %121

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.snd_kcontrol, ptr %72, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %77, align 4
  %78 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %67, ptr noundef nonnull %72, i1 noundef zeroext false) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %121, label %80

80:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(48) @snd_bbfpro_ctl_control, i32 44, i1 false) #13
  %81 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 3
  store ptr @.str.105, ptr %81, align 4
  %82 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 11
  store i32 14, ptr %82, align 4
  %83 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %84 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %83, i32 noundef 3520, i32 noundef 28) #14
  %85 = icmp eq ptr %84, null
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  store ptr %0, ptr %84, align 8
  %87 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %84, i32 0, i32 3
  store i32 0, ptr %87, align 4
  %88 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %84, i32 0, i32 6
  store ptr @snd_bbfpro_ctl_resume, ptr %88, align 8
  %89 = call ptr @snd_ctl_new1(ptr noundef nonnull %2, ptr noundef nonnull %84) #13
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  call void @kfree(ptr noundef nonnull %84) #13
  br label %92

92:                                               ; preds = %91, %80
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #13
  br label %121

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.snd_kcontrol, ptr %89, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %94, align 4
  %95 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %84, ptr noundef nonnull %89, i1 noundef zeroext false) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #13
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %121, label %97

97:                                               ; preds = %93
  %98 = call fastcc i32 @snd_bbfpro_ctl_add(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 8, ptr noundef nonnull @.str.106)
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %121, label %100

100:                                              ; preds = %97
  %101 = call fastcc i32 @snd_bbfpro_ctl_add(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 10, ptr noundef nonnull @.str.107)
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %121, label %103

103:                                              ; preds = %100
  %104 = call fastcc i32 @snd_bbfpro_ctl_add(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @.str.108)
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %121, label %106

106:                                              ; preds = %103
  %107 = call fastcc i32 @snd_bbfpro_ctl_add(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull @.str.109)
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %121, label %109

109:                                              ; preds = %106
  %110 = call fastcc i32 @snd_bbfpro_ctl_add(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 2, ptr noundef nonnull @.str.110)
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %109
  %113 = call fastcc i32 @snd_bbfpro_ctl_add(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 3, ptr noundef nonnull @.str.111)
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %112
  %116 = call fastcc i32 @snd_bbfpro_ctl_add(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 4, ptr noundef nonnull @.str.112)
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = call fastcc i32 @snd_bbfpro_ctl_add(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 5, ptr noundef nonnull @.str.113)
  %120 = call i32 @llvm.smin.i32(i32 %119, i32 0)
  br label %121

121:                                              ; preds = %118, %115, %112, %109, %106, %103, %100, %97, %93, %92, %76, %75, %56, %55, %37, %36
  %122 = phi i32 [ %78, %76 ], [ %95, %93 ], [ %98, %97 ], [ %101, %100 ], [ %104, %103 ], [ %107, %106 ], [ %110, %109 ], [ %113, %112 ], [ %116, %115 ], [ %120, %118 ], [ -12, %36 ], [ -12, %55 ], [ -12, %75 ], [ -12, %92 ], [ %58, %56 ], [ %39, %37 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #13
  ret i32 %122
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_djm_controls_create(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.snd_kcontrol_new, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(48) @__const.snd_djm_controls_create.knew, i32 44, i1 false)
  %4 = zext i8 %1 to i32
  %5 = getelementptr [5 x %struct.snd_djm_device], ptr @snd_djm_devices, i32 0, i32 %4, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr [5 x %struct.snd_djm_device], ptr @snd_djm_devices, i32 0, i32 %4, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 3
  %10 = shl nuw i32 %4, 24
  %11 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 11
  %12 = call i32 @llvm.umax.i32(i32 %6, i32 1)
  br label %16

13:                                               ; preds = %39
  %14 = add nuw i32 %17, 1
  %15 = icmp eq i32 %14, %12
  br i1 %15, label %43, label %16

16:                                               ; preds = %13, %2
  %17 = phi i32 [ 0, %2 ], [ %14, %13 ]
  %18 = getelementptr %struct.snd_djm_ctl, ptr %8, i32 %17
  %19 = getelementptr %struct.snd_djm_ctl, ptr %8, i32 %17, i32 3
  %20 = load i16, ptr %19, align 4
  %21 = load ptr, ptr %18, align 4
  store ptr %21, ptr %9, align 4
  %22 = shl i32 %17, 16
  %23 = or i32 %22, %10
  %24 = zext i16 %20 to i32
  %25 = or i32 %23, %24
  store i32 %25, ptr %11, align 4
  %26 = trunc i32 %17 to i8
  %27 = call fastcc i32 @snd_djm_controls_update(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %26, i16 noundef zeroext %20)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %16
  %30 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %31 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 28) #14
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  store ptr %0, ptr %31, align 8
  %34 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %31, i32 0, i32 3
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %31, i32 0, i32 6
  store ptr @snd_djm_controls_resume, ptr %35, align 8
  %36 = call ptr @snd_ctl_new1(ptr noundef nonnull %3, ptr noundef nonnull %31) #13
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  call void @kfree(ptr noundef nonnull %31) #13
  br label %43

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.snd_kcontrol, ptr %36, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %40, align 4
  %41 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %31, ptr noundef nonnull %36, i1 noundef zeroext false) #13
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %13, label %43

43:                                               ; preds = %39, %38, %29, %16, %13
  %44 = phi i32 [ -12, %38 ], [ %27, %16 ], [ %41, %39 ], [ 0, %13 ], [ -12, %29 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usb_mixer_resume_quirk(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.snd_usb_audio, ptr %2, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 198852628
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call fastcc void @dell_dock_mixer_init(ptr noundef %0)
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usb_mixer_rc_memory_change(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  switch i32 %1, label %24 [
    i32 0, label %7
    i32 3, label %16
  ]

7:                                                ; preds = %6
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.snd_usb_audio, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 8
  store ptr %10, ptr %13, align 4
  %14 = load ptr, ptr %11, align 4
  %15 = tail call i32 @usb_submit_urb(ptr noundef %14, i32 noundef 2592) #13
  br label %24

16:                                               ; preds = %6
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.snd_usb_audio, ptr %17, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %24 [
    i32 69087296, label %20
    i32 69087304, label %20
  ]

20:                                               ; preds = %16, %16
  %21 = getelementptr inbounds %struct.rc_config, ptr %4, i32 0, i32 5
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  tail call void @snd_usb_mixer_notify_id(ptr noundef %0, i32 noundef %23) #13
  br label %24

24:                                               ; preds = %20, %16, %7, %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usb_mixer_fu_apply_quirk(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %46 [
    i32 565444737, label %8
    i32 227278860, label %40
    i32 227278868, label %40
  ]

8:                                                ; preds = %4
  %9 = icmp eq i32 %2, 7
  br i1 %9, label %10, label %46

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 50
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.146) #15
  %26 = getelementptr inbounds %struct.snd_kcontrol, ptr %3, i32 0, i32 6
  store ptr @snd_dragonfly_quirk_db_scale.scale, ptr %26, align 4
  %27 = getelementptr inbounds %struct.snd_kcontrol, ptr %3, i32 1, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, -268435473
  %30 = or i32 %29, 16
  store i32 %30, ptr %27, align 4
  br label %46

31:                                               ; preds = %18
  %32 = icmp slt i32 %20, 1001
  br i1 %32, label %33, label %46

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.147) #15
  %37 = getelementptr inbounds %struct.snd_kcontrol, ptr %3, i32 1, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, -268435457
  store i32 %39, ptr %37, align 4
  br label %46

40:                                               ; preds = %4, %4
  %41 = getelementptr inbounds %struct.snd_kcontrol, ptr %3, i32 0, i32 1, i32 4
  %42 = tail call ptr @strstr(ptr noundef %41, ptr noundef nonnull @.str.1)
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 16
  store i8 1, ptr %45, align 1
  br label %46

46:                                               ; preds = %44, %40, %33, %31, %22, %14, %10, %8, %4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hwdep_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_usb_sbrc_hwdep_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.snd_hwdep, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  switch i32 %2, label %54 [
    i32 4, label %8
    i32 1, label %8
  ]

8:                                                ; preds = %4, %4
  %9 = getelementptr inbounds %struct.usb_mixer_interface, ptr %7, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #13, !srcloc !10
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %9) #13, !srcloc !11
  %11 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #13
  %14 = getelementptr inbounds %struct.usb_mixer_interface, ptr %7, i32 0, i32 10
  %15 = call i32 @prepare_to_wait_event(ptr noundef %14, ptr noundef nonnull %5, i32 noundef 1) #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #13, !srcloc !10
  %16 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %9) #13, !srcloc !11
  %17 = extractvalue { i32, i32 } %16, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %22, %13
  %20 = phi i32 [ %23, %22 ], [ %15, %13 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  call void @schedule() #13
  %23 = call i32 @prepare_to_wait_event(ptr noundef %14, ptr noundef nonnull %5, i32 noundef 1) #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #13, !srcloc !10
  %24 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %9) #13, !srcloc !11
  %25 = extractvalue { i32, i32 } %24, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %19, label %27

27:                                               ; preds = %22
  %28 = extractvalue { i32, i32 } %24, 0
  br label %29

29:                                               ; preds = %27, %13
  %30 = phi i32 [ %17, %13 ], [ %28, %27 ]
  call void @finish_wait(ptr noundef %14, ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #13
  br label %32

31:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #13
  br label %50

32:                                               ; preds = %29, %8
  %33 = phi i32 [ %30, %29 ], [ %11, %8 ]
  %34 = icmp eq i32 %2, 1
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = trunc i32 %33 to i8
  %37 = tail call ptr @llvm.thread.pointer() #13
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %39 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %38) #16, !srcloc !15
  %40 = and i32 %39, -13
  %41 = or i32 %40, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #13, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !17
  %42 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i8 %36, i32 -1090519041) #13, !srcloc !18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #13, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !17
  br label %50

43:                                               ; preds = %32
  %44 = tail call ptr @llvm.thread.pointer() #13
  %45 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 3
  %46 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %45) #16, !srcloc !15
  %47 = and i32 %46, -13
  %48 = or i32 %47, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #13, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !17
  %49 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i32 %33, i32 -1090519041) #13, !srcloc !19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #13, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !17
  br label %50

50:                                               ; preds = %43, %35, %31
  %51 = phi i32 [ %42, %35 ], [ %49, %43 ], [ %20, %31 ]
  %52 = icmp slt i32 %51, 0
  %53 = select i1 %52, i32 %51, i32 %2
  br label %54

54:                                               ; preds = %50, %4
  %55 = phi i32 [ %53, %50 ], [ -22, %4 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_usb_sbrc_hwdep_poll(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_hwdep, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 10
  %7 = icmp eq ptr %2, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 4
  %10 = icmp ne ptr %9, null
  %11 = icmp ne ptr %6, null
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void %9(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %2) #13
  br label %14

14:                                               ; preds = %13, %8, %3
  %15 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 0, i32 65
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usb_soundblaster_remote_complete(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_mixer_interface, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rc_config, ptr %5, i32 0, i32 4
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %45, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rc_config, ptr %5, i32 0, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = getelementptr %struct.usb_mixer_interface, ptr %3, i32 0, i32 13, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds %struct.rc_config, ptr %5, i32 0, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 2
  br i1 %25, label %26, label %33

26:                                               ; preds = %16
  %27 = add nuw nsw i32 %19, 1
  %28 = getelementptr %struct.usb_mixer_interface, ptr %3, i32 0, i32 13, i32 %27
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 8
  %32 = or i32 %31, %22
  br label %33

33:                                               ; preds = %26, %16
  %34 = phi i32 [ %32, %26 ], [ %22, %16 ]
  %35 = getelementptr inbounds %struct.rc_config, ptr %5, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.rc_config, ptr %5, i32 0, i32 5
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i32
  tail call void @snd_usb_mixer_notify_id(ptr noundef %3, i32 noundef %41) #13
  br label %42

42:                                               ; preds = %38, %33
  %43 = getelementptr inbounds %struct.usb_mixer_interface, ptr %3, i32 0, i32 9
  store i32 %34, ptr %43, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !20
  tail call void @arm_heavy_mb() #13
  %44 = getelementptr inbounds %struct.usb_mixer_interface, ptr %3, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %44, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %45

45:                                               ; preds = %42, %9, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_audigy2nx_led_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = ashr i32 %5, 8
  %8 = and i32 %5, 255
  %9 = tail call fastcc i32 @snd_audigy2nx_led_update(ptr noundef %6, i32 noundef %7, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_audigy2nx_led_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 8
  %6 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %5, ptr %6, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_audigy2nx_led_put(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 255
  %9 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = lshr i32 %7, 8
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = shl nuw nsw i32 %10, 8
  %17 = or i32 %16, %8
  store i32 %17, ptr %6, align 4
  %18 = tail call fastcc i32 @snd_audigy2nx_led_update(ptr noundef %5, i32 noundef %10, i32 noundef %8)
  %19 = icmp slt i32 %18, 0
  %20 = select i1 %19, i32 %18, i32 1
  br label %21

21:                                               ; preds = %15, %12, %2
  %22 = phi i32 [ %20, %15 ], [ -22, %2 ], [ 0, %12 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_audigy2nx_led_update(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %4) #13
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %40, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 69087298
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 8
  %15 = shl i32 %14, 8
  %16 = or i32 %15, -2147483648
  %17 = icmp eq i32 %1, 0
  %18 = zext i1 %17 to i16
  %19 = tail call i32 @snd_usb_ctl_msg(ptr noundef %13, i32 noundef %16, i8 noundef zeroext 36, i8 noundef zeroext 67, i16 noundef zeroext %18, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #13
  %20 = load i32, ptr %8, align 4
  br label %21

21:                                               ; preds = %11, %7
  %22 = phi i32 [ %20, %11 ], [ %9, %7 ]
  %23 = icmp eq i32 %22, 69087455
  %24 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %25, align 8
  %27 = shl i32 %26, 8
  %28 = or i32 %27, -2147483648
  br i1 %23, label %29, label %33

29:                                               ; preds = %21
  %30 = icmp eq i32 %1, 0
  %31 = zext i1 %30 to i16
  %32 = tail call i32 @snd_usb_ctl_msg(ptr noundef %25, i32 noundef %28, i8 noundef zeroext 36, i8 noundef zeroext 67, i16 noundef zeroext %31, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #13
  br label %38

33:                                               ; preds = %21
  %34 = trunc i32 %1 to i16
  %35 = trunc i32 %2 to i16
  %36 = add i16 %35, 2
  %37 = tail call i32 @snd_usb_ctl_msg(ptr noundef %25, i32 noundef %28, i8 noundef zeroext 36, i8 noundef zeroext 67, i16 noundef zeroext %34, i16 noundef zeroext %36, ptr noundef null, i16 noundef zeroext 0) #13
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i32 [ %32, %29 ], [ %37, %33 ]
  tail call void @snd_usb_unlock_shutdown(ptr noundef %4) #13
  br label %40

40:                                               ; preds = %38, %3
  %41 = phi i32 [ %39, %38 ], [ %5, %3 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_lock_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_ctl_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_unlock_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_mixer_elem_free(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_mixer_add_list(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_emu0204_ch_switch_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i16 1, ptr %2, align 2, !annotation !8
  %9 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %8) #13
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = icmp eq i32 %7, 0
  %13 = select i1 %12, i8 1, i8 2
  %14 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 %13, ptr %14, align 1
  %15 = getelementptr inbounds %struct.snd_usb_audio, ptr %8, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 8
  %18 = shl i32 %17, 8
  %19 = or i32 %18, -2147483648
  %20 = call i32 @snd_usb_ctl_msg(ptr noundef %16, i32 noundef %19, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 1024, i16 noundef zeroext 3584, ptr noundef nonnull %2, i16 noundef zeroext 2) #13
  call void @snd_usb_unlock_shutdown(ptr noundef %8) #13
  br label %21

21:                                               ; preds = %11, %1
  %22 = phi i32 [ %20, %11 ], [ %9, %1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_emu0204_ch_switch_info(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_emu0204_ch_switch_info.texts) #13
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_emu0204_ch_switch_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %4, ptr %5, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_emu0204_ch_switch_put(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = icmp ugt i32 %8, 1
  br i1 %9, label %32, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %8, %12
  br i1 %13, label %32, label %14

14:                                               ; preds = %10
  store i32 %8, ptr %11, align 4
  %15 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 1, ptr %3, align 2, !annotation !8
  %16 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %15) #13
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = icmp eq i32 %8, 0
  %20 = select i1 %19, i8 1, i8 2
  %21 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 %20, ptr %21, align 1
  %22 = getelementptr inbounds %struct.snd_usb_audio, ptr %15, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %23, align 8
  %25 = shl i32 %24, 8
  %26 = or i32 %25, -2147483648
  %27 = call i32 @snd_usb_ctl_msg(ptr noundef %23, i32 noundef %26, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 1024, i16 noundef zeroext 3584, ptr noundef nonnull %3, i16 noundef zeroext 2) #13
  call void @snd_usb_unlock_shutdown(ptr noundef %15) #13
  br label %28

28:                                               ; preds = %18, %14
  %29 = phi i32 [ %27, %18 ], [ %16, %14 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %30 = icmp slt i32 %29, 0
  %31 = select i1 %30, i32 %29, i32 1
  br label %32

32:                                               ; preds = %28, %10, %2
  %33 = phi i32 [ %31, %28 ], [ -22, %2 ], [ 0, %10 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_ftu_create_effect_switch(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 28) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %52, label %8

8:                                                ; preds = %3
  store ptr %0, ptr %6, align 8
  %9 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %6, i32 0, i32 3
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %6, i32 0, i32 6
  store ptr @snd_ftu_eff_switch_update, ptr %10, align 8
  %11 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ftu_create_effect_switch.template, ptr noundef nonnull %6) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %6) #13
  br label %52

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.snd_kcontrol, ptr %11, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %15, align 4
  %16 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %6, ptr noundef nonnull %11, i1 noundef zeroext false) #13
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %52, label %18

18:                                               ; preds = %14
  %19 = shl i32 %1, 8
  %20 = or i32 %19, %2
  %21 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %6, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.snd_kcontrol, ptr %22, i32 0, i32 7
  store i32 %20, ptr %23, align 4
  %24 = load ptr, ptr %21, align 8
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.snd_usb_audio, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.snd_kcontrol, ptr %24, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2
  %30 = load i32, ptr %27, align 8
  %31 = shl i32 %30, 8
  %32 = or i32 %31, -2147483520
  %33 = trunc i32 %29 to i16
  %34 = and i16 %33, -256
  %35 = getelementptr inbounds %struct.snd_usb_audio, ptr %25, i32 0, i32 28
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %36, i32 0, i32 2
  %38 = load i8, ptr %37, align 2
  %39 = zext i8 %38 to i32
  %40 = shl i32 %29, 8
  %41 = or i32 %40, %39
  %42 = trunc i32 %41 to i16
  %43 = call i32 @snd_usb_ctl_msg(ptr noundef %27, i32 noundef %32, i8 noundef zeroext -127, i8 noundef zeroext -95, i16 noundef zeroext %34, i16 noundef zeroext %42, ptr noundef nonnull %4, i16 noundef zeroext 2) #13
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %18
  %46 = load i8, ptr %4, align 2
  %47 = zext i8 %46 to i32
  %48 = shl nuw i32 %47, 24
  %49 = load i32, ptr %28, align 4
  %50 = or i32 %48, %49
  store i32 %50, ptr %28, align 4
  br label %51

51:                                               ; preds = %45, %18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  br label %52

52:                                               ; preds = %51, %14, %13, %3
  %53 = phi i32 [ 0, %51 ], [ %16, %14 ], [ -12, %13 ], [ -12, %3 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_create_std_mono_ctl_offset(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, ptr noundef %7) unnamed_addr #0 {
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 152) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %8
  tail call void @snd_usb_mixer_elem_init_std(ptr noundef nonnull %10, ptr noundef %0, i32 noundef %1) #13
  %13 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %10, i32 0, i32 7
  store i32 %4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %10, i32 0, i32 6
  store i32 1, ptr %14, align 8
  %15 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %10, i32 0, i32 1
  store i32 %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %10, i32 0, i32 2
  store i32 %3, ptr %16, align 8
  %17 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %10, i32 0, i32 3
  store i32 %5, ptr %17, align 4
  %18 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %10, i32 0, i32 8
  store i32 0, ptr %18, align 8
  %19 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %10, i32 0, i32 9
  store i32 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %10, i32 0, i32 10
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %10, i32 0, i32 11
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %10, i32 0, i32 12
  store i32 0, ptr %22, align 8
  %23 = load ptr, ptr @snd_usb_feature_unit_ctl, align 4
  %24 = tail call ptr @snd_ctl_new1(ptr noundef %23, ptr noundef nonnull %10) #13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %12
  tail call void @kfree(ptr noundef nonnull %10) #13
  br label %39

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.snd_kcontrol, ptr %24, i32 0, i32 1, i32 4
  %29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %28, i32 noundef 44, ptr noundef %6)
  %30 = getelementptr inbounds %struct.snd_kcontrol, ptr %24, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %30, align 4
  %31 = icmp eq ptr %7, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.snd_kcontrol, ptr %24, i32 0, i32 6
  store ptr %7, ptr %33, align 4
  %34 = getelementptr inbounds %struct.snd_kcontrol, ptr %24, i32 1, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, 268435472
  store i32 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %10, ptr noundef nonnull %24, i1 noundef zeroext true) #13
  br label %39

39:                                               ; preds = %37, %26, %8
  %40 = phi i32 [ %38, %37 ], [ -12, %26 ], [ -12, %8 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_mixer_vol_tlv(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_mixer_elem_init_std(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_ftu_eff_switch_info(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef 1, i32 noundef 8, ptr noundef nonnull @snd_ftu_eff_switch_info.texts) #13
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_ftu_eff_switch_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 24
  %6 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %5, ptr %6, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_ftu_eff_switch_put(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_kcontrol, ptr %7, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 24
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %51, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 16777215
  %18 = shl i32 %12, 24
  %19 = or i32 %17, %18
  store i32 %19, ptr %15, align 4
  %20 = load ptr, ptr %5, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr inbounds %struct.snd_kcontrol, ptr %22, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  %25 = lshr i32 %24, 24
  %26 = trunc i32 %25 to i8
  store i8 %26, ptr %3, align 2
  %27 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %27, align 1
  %28 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %21) #13
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.snd_usb_audio, ptr %21, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %32, align 8
  %34 = shl i32 %33, 8
  %35 = or i32 %34, -2147483648
  %36 = trunc i32 %24 to i16
  %37 = and i16 %36, -256
  %38 = getelementptr inbounds %struct.snd_usb_audio, ptr %21, i32 0, i32 28
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %39, i32 0, i32 2
  %41 = load i8, ptr %40, align 2
  %42 = zext i8 %41 to i32
  %43 = shl i32 %24, 8
  %44 = or i32 %43, %42
  %45 = trunc i32 %44 to i16
  %46 = call i32 @snd_usb_ctl_msg(ptr noundef %32, i32 noundef %35, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext %37, i16 noundef zeroext %45, ptr noundef nonnull %3, i16 noundef zeroext 2) #13
  call void @snd_usb_unlock_shutdown(ptr noundef %21) #13
  br label %47

47:                                               ; preds = %30, %14
  %48 = phi i32 [ %46, %30 ], [ %28, %14 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %49 = icmp slt i32 %48, 0
  %50 = select i1 %49, i32 %48, i32 1
  br label %51

51:                                               ; preds = %47, %2
  %52 = phi i32 [ %50, %47 ], [ 0, %2 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_ftu_eff_switch_update(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_kcontrol, ptr %6, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  %9 = lshr i32 %8, 24
  %10 = trunc i32 %9 to i8
  store i8 %10, ptr %2, align 2
  %11 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 0, ptr %11, align 1
  %12 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %4) #13
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 8
  %18 = shl i32 %17, 8
  %19 = or i32 %18, -2147483648
  %20 = trunc i32 %8 to i16
  %21 = and i16 %20, -256
  %22 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 28
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %23, i32 0, i32 2
  %25 = load i8, ptr %24, align 2
  %26 = zext i8 %25 to i32
  %27 = shl i32 %8, 8
  %28 = or i32 %27, %26
  %29 = trunc i32 %28 to i16
  %30 = call i32 @snd_usb_ctl_msg(ptr noundef %16, i32 noundef %19, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext %21, i16 noundef zeroext %29, ptr noundef nonnull %2, i16 noundef zeroext 2) #13
  call void @snd_usb_unlock_shutdown(ptr noundef %4) #13
  br label %31

31:                                               ; preds = %14, %1
  %32 = phi i32 [ %30, %14 ], [ %12, %1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_xonar_u1_switch_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i8, align 1
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = trunc i32 %7 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 %8, ptr %2, align 1
  %9 = load ptr, ptr %3, align 4
  %10 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %9) #13
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.snd_usb_audio, ptr %9, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 8
  %16 = shl i32 %15, 8
  %17 = or i32 %16, -2147483648
  %18 = call i32 @snd_usb_ctl_msg(ptr noundef %14, i32 noundef %17, i8 noundef zeroext 8, i8 noundef zeroext 67, i16 noundef zeroext 50, i16 noundef zeroext 0, ptr noundef nonnull %2, i16 noundef zeroext 1) #13
  call void @snd_usb_unlock_shutdown(ptr noundef %9) #13
  br label %19

19:                                               ; preds = %12, %1
  %20 = phi i32 [ %18, %12 ], [ %10, %1 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  ret i32 %20
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_xonar_u1_switch_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 1
  %6 = and i32 %5, 1
  %7 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %6, ptr %7, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_xonar_u1_switch_put(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  %9 = trunc i32 %5 to i8
  %10 = and i8 %9, -3
  %11 = select i1 %8, i8 0, i8 2
  %12 = or i8 %11, %10
  %13 = zext i8 %12 to i32
  %14 = and i32 %5, 255
  %15 = icmp eq i32 %14, %13
  br i1 %15, label %34, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  store i32 %13, ptr %4, align 4
  %19 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %12, ptr %3, align 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %20) #13
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.snd_usb_audio, ptr %20, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %25, align 8
  %27 = shl i32 %26, 8
  %28 = or i32 %27, -2147483648
  %29 = call i32 @snd_usb_ctl_msg(ptr noundef %25, i32 noundef %28, i8 noundef zeroext 8, i8 noundef zeroext 67, i16 noundef zeroext 50, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 1) #13
  call void @snd_usb_unlock_shutdown(ptr noundef %20) #13
  br label %30

30:                                               ; preds = %23, %16
  %31 = phi i32 [ %29, %23 ], [ %21, %16 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %32 = icmp slt i32 %31, 0
  %33 = select i1 %32, i32 %31, i32 1
  br label %34

34:                                               ; preds = %30, %2
  %35 = phi i32 [ %33, %30 ], [ 0, %2 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_microii_spdif_default_update(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %3) #13
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %1
  %11 = lshr i32 %7, 4
  %12 = and i32 %11, 240
  %13 = and i32 %7, 15
  %14 = or i32 %12, %13
  %15 = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 8
  %18 = shl i32 %17, 8
  %19 = or i32 %18, -2147483648
  %20 = trunc i32 %14 to i16
  %21 = tail call i32 @snd_usb_ctl_msg(ptr noundef %16, i32 noundef %19, i8 noundef zeroext 1, i8 noundef zeroext 67, i16 noundef zeroext %20, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0) #13
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %10
  %24 = and i32 %7, 2
  %25 = icmp eq i32 %24, 0
  %26 = lshr i32 %7, 12
  %27 = and i32 %26, 15
  %28 = select i1 %25, i32 32, i32 160
  %29 = or i32 %28, %27
  %30 = load ptr, ptr %15, align 4
  %31 = load i32, ptr %30, align 8
  %32 = shl i32 %31, 8
  %33 = or i32 %32, -2147483648
  %34 = trunc i32 %29 to i16
  %35 = tail call i32 @snd_usb_ctl_msg(ptr noundef %30, i32 noundef %33, i8 noundef zeroext 1, i8 noundef zeroext 67, i16 noundef zeroext %34, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0) #13
  br label %36

36:                                               ; preds = %23, %10
  %37 = phi i32 [ %21, %10 ], [ %35, %23 ]
  tail call void @snd_usb_unlock_shutdown(ptr noundef %3) #13
  br label %38

38:                                               ; preds = %36, %1
  %39 = phi i32 [ %37, %36 ], [ %8, %1 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_microii_spdif_switch_update(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %3) #13
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 8
  %14 = shl i32 %13, 8
  %15 = or i32 %14, -2147483648
  %16 = trunc i32 %7 to i16
  %17 = and i16 %16, 255
  %18 = tail call i32 @snd_usb_ctl_msg(ptr noundef %12, i32 noundef %15, i8 noundef zeroext 1, i8 noundef zeroext 67, i16 noundef zeroext %17, i16 noundef zeroext 9, ptr noundef null, i16 noundef zeroext 0) #13
  tail call void @snd_usb_unlock_shutdown(ptr noundef %3) #13
  br label %19

19:                                               ; preds = %10, %1
  %20 = phi i32 [ %18, %10 ], [ %8, %1 ]
  ret i32 %20
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_microii_spdif_info(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 5, ptr %3, align 8
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 1, ptr %4, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_microii_spdif_default_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  %8 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %7) #13
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %63, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i8 %13, ptr %14, align 8
  %15 = load i32, ptr %11, align 4
  %16 = lshr i32 %15, 8
  %17 = trunc i32 %16 to i8
  %18 = getelementptr [24 x i8], ptr %14, i32 0, i32 1
  store i8 %17, ptr %18, align 1
  %19 = getelementptr [24 x i8], ptr %14, i32 0, i32 2
  store i8 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr @usb_ifnum_to_if(ptr noundef %21, i32 noundef 1) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %61, label %24

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.usb_interface, ptr %22, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %61, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %22, align 8
  %30 = getelementptr %struct.usb_host_interface, ptr %29, i32 1, i32 0, i32 4
  %31 = load i8, ptr %30, align 4
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %61, label %33

33:                                               ; preds = %28
  %34 = getelementptr %struct.usb_host_interface, ptr %29, i32 1, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %35, i32 0, i32 2
  %37 = load i8, ptr %36, align 2
  %38 = load ptr, ptr %20, align 4
  %39 = load i32, ptr %38, align 8
  %40 = shl i32 %39, 8
  %41 = or i32 %40, -2147483520
  %42 = zext i8 %37 to i16
  %43 = call i32 @snd_usb_ctl_msg(ptr noundef %38, i32 noundef %41, i8 noundef zeroext -127, i8 noundef zeroext -94, i16 noundef zeroext 256, i16 noundef zeroext %42, ptr noundef nonnull %3, i16 noundef zeroext 3) #13
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %33
  %46 = load i8, ptr %3, align 1
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 8
  %52 = or i32 %51, %47
  %53 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl nuw nsw i32 %55, 16
  %57 = or i32 %52, %56
  %58 = icmp eq i32 %57, 48000
  %59 = select i1 %58, i8 2, i8 0
  %60 = getelementptr [24 x i8], ptr %14, i32 0, i32 3
  store i8 %59, ptr %60, align 1
  br label %61

61:                                               ; preds = %45, %33, %28, %24, %10
  %62 = phi i32 [ %43, %33 ], [ 0, %45 ], [ -22, %24 ], [ -22, %10 ], [ -22, %28 ]
  call void @snd_usb_unlock_shutdown(ptr noundef %7) #13
  br label %63

63:                                               ; preds = %61, %2
  %64 = phi i32 [ %62, %61 ], [ %8, %2 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #13
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_microii_spdif_default_put(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, -65296
  %6 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %7 = getelementptr [24 x i8], ptr %6, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %11 = load i8, ptr %6, align 8
  %12 = and i8 %11, 15
  %13 = zext i8 %12 to i32
  %14 = and i32 %10, 3840
  %15 = or i32 %14, %5
  %16 = or i32 %15, %13
  %17 = and i32 %10, 61440
  %18 = or i32 %16, %17
  %19 = icmp eq i32 %18, %4
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  store i32 %18, ptr %3, align 4
  %23 = tail call i32 @snd_microii_spdif_default_update(ptr noundef %22)
  %24 = icmp slt i32 %23, 0
  %25 = select i1 %24, i32 %23, i32 1
  br label %26

26:                                               ; preds = %20, %2
  %27 = phi i32 [ %25, %20 ], [ 0, %2 ]
  ret i32 %27
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_microii_spdif_mask_get(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i8 15, ptr %3, align 8
  %4 = getelementptr [24 x i8], ptr %3, i32 0, i32 1
  store i8 -1, ptr %4, align 1
  %5 = getelementptr [24 x i8], ptr %3, i32 0, i32 2
  store i8 0, ptr %5, align 2
  %6 = getelementptr [24 x i8], ptr %3, i32 0, i32 3
  store i8 0, ptr %6, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_microii_spdif_switch_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 1
  %6 = and i32 %5, 1
  %7 = xor i32 %6, 1
  %8 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %7, ptr %8, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_microii_spdif_switch_put(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 42, i32 40
  %9 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_kcontrol, ptr %10, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %8, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  store i32 %8, ptr %15, align 4
  %16 = load ptr, ptr %4, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr inbounds %struct.snd_kcontrol, ptr %18, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %17) #13
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.snd_usb_audio, ptr %17, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %25, align 8
  %27 = shl i32 %26, 8
  %28 = or i32 %27, -2147483648
  %29 = trunc i32 %20 to i16
  %30 = and i16 %29, 255
  %31 = tail call i32 @snd_usb_ctl_msg(ptr noundef %25, i32 noundef %28, i8 noundef zeroext 1, i8 noundef zeroext 67, i16 noundef zeroext %30, i16 noundef zeroext 9, ptr noundef null, i16 noundef zeroext 0) #13
  tail call void @snd_usb_unlock_shutdown(ptr noundef %17) #13
  br label %32

32:                                               ; preds = %23, %14
  %33 = phi i32 [ %31, %23 ], [ %21, %14 ]
  %34 = icmp slt i32 %33, 0
  %35 = select i1 %34, i32 %33, i32 1
  br label %36

36:                                               ; preds = %32, %2
  %37 = phi i32 [ %35, %32 ], [ 0, %2 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_mbox1_clk_switch_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_kcontrol, ptr %4, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = tail call fastcc i32 @snd_mbox1_clk_switch_update(ptr noundef %2, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_mbox1_src_switch_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_kcontrol, ptr %4, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = tail call fastcc i32 @snd_mbox1_src_switch_update(ptr noundef %2, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_mbox1_clk_switch_update(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca [3 x i8], align 1
  %5 = alloca [3 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = load ptr, ptr %0, align 4
  %8 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %7) #13
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %60, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  store i8 0, ptr %6, align 1, !annotation !8
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 8
  %14 = shl i32 %13, 8
  %15 = or i32 %14, -2147483520
  %16 = call i32 @snd_usb_ctl_msg(ptr noundef %12, i32 noundef %15, i8 noundef zeroext -127, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext 1280, ptr noundef nonnull %6, i16 noundef zeroext 1) #13
  %17 = icmp slt i32 %16, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  br i1 %17, label %58, label %18

18:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %5, i8 0, i32 3, i1 false) #13, !annotation !8
  %19 = load ptr, ptr %11, align 4
  %20 = load i32, ptr %19, align 8
  %21 = shl i32 %20, 8
  %22 = or i32 %21, -2147483520
  %23 = call i32 @snd_usb_ctl_msg(ptr noundef %19, i32 noundef %22, i8 noundef zeroext -127, i8 noundef zeroext -94, i16 noundef zeroext 256, i16 noundef zeroext 129, ptr noundef nonnull %5, i16 noundef zeroext 3) #13
  %24 = icmp slt i32 %23, 0
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #13
  br i1 %24, label %58, label %25

25:                                               ; preds = %18
  %26 = icmp eq i32 %1, 0
  %27 = select i1 %26, i32 48000, i32 0
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #13
  %28 = trunc i32 %27 to i8
  store i8 %28, ptr %4, align 1
  %29 = lshr i32 %27, 8
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  store i8 %30, ptr %31, align 1
  %32 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  store i8 0, ptr %32, align 1
  %33 = load ptr, ptr %11, align 4
  %34 = load i32, ptr %33, align 8
  %35 = shl i32 %34, 8
  %36 = or i32 %35, -2147483648
  %37 = call i32 @snd_usb_ctl_msg(ptr noundef %33, i32 noundef %36, i8 noundef zeroext 1, i8 noundef zeroext 34, i16 noundef zeroext 256, i16 noundef zeroext 129, ptr noundef nonnull %4, i16 noundef zeroext 3) #13
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #13
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false) #13, !annotation !8
  %40 = load ptr, ptr %11, align 4
  %41 = load i32, ptr %40, align 8
  %42 = shl i32 %41, 8
  %43 = or i32 %42, -2147483520
  %44 = call i32 @snd_usb_ctl_msg(ptr noundef %40, i32 noundef %43, i8 noundef zeroext -127, i8 noundef zeroext -94, i16 noundef zeroext 256, i16 noundef zeroext 129, ptr noundef nonnull %3, i16 noundef zeroext 3) #13
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %39
  %47 = load i8, ptr %3, align 1
  %48 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = or i8 %49, %47
  %51 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = or i8 %50, %52
  %54 = icmp eq i8 %53, 0
  %55 = zext i1 %54 to i32
  br label %56

56:                                               ; preds = %46, %39
  %57 = phi i32 [ %55, %46 ], [ %44, %39 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #13
  br label %58

58:                                               ; preds = %56, %25, %18, %10
  %59 = phi i32 [ %16, %10 ], [ %37, %25 ], [ %57, %56 ], [ %23, %18 ]
  call void @snd_usb_unlock_shutdown(ptr noundef %7) #13
  br label %60

60:                                               ; preds = %58, %2
  %61 = phi i32 [ %59, %58 ], [ %8, %2 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_mbox1_clk_switch_info(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_mbox1_clk_switch_info.texts) #13
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_mbox1_clk_switch_get(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %7) #13
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false) #13, !annotation !8
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 8
  %14 = shl i32 %13, 8
  %15 = or i32 %14, -2147483520
  %16 = call i32 @snd_usb_ctl_msg(ptr noundef %12, i32 noundef %15, i8 noundef zeroext -127, i8 noundef zeroext -94, i16 noundef zeroext 256, i16 noundef zeroext 129, ptr noundef nonnull %3, i16 noundef zeroext 3) #13
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #13
  br label %31

19:                                               ; preds = %10
  %20 = load i8, ptr %3, align 1
  %21 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = or i8 %22, %20
  %24 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = or i8 %23, %25
  %27 = icmp eq i8 %26, 0
  %28 = zext i1 %27 to i32
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #13
  %29 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %28, ptr %30, align 8
  br label %31

31:                                               ; preds = %19, %18, %2
  %32 = phi i32 [ %8, %2 ], [ 0, %19 ], [ %16, %18 ]
  call void @snd_usb_unlock_shutdown(ptr noundef %7) #13
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_mbox1_clk_switch_put(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %5, %8
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = zext i1 %8 to i32
  %12 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  store i32 %11, ptr %3, align 4
  %15 = tail call fastcc i32 @snd_mbox1_clk_switch_update(ptr noundef %14, i32 noundef %11)
  %16 = icmp slt i32 %15, 0
  %17 = select i1 %16, i32 %15, i32 1
  br label %18

18:                                               ; preds = %10, %2
  %19 = phi i32 [ %17, %10 ], [ 0, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_mbox1_src_switch_update(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [1 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = load ptr, ptr %0, align 4
  %8 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %7) #13
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %56, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  store i8 0, ptr %6, align 1, !annotation !8
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 8
  %14 = shl i32 %13, 8
  %15 = or i32 %14, -2147483520
  %16 = call i32 @snd_usb_ctl_msg(ptr noundef %12, i32 noundef %15, i8 noundef zeroext -127, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext 1280, ptr noundef nonnull %6, i16 noundef zeroext 1) #13
  %17 = icmp slt i32 %16, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  br i1 %17, label %54, label %18

18:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  %19 = trunc i32 %1 to i8
  %20 = and i8 %19, 1
  %21 = add nuw nsw i8 %20, 1
  store i8 %21, ptr %5, align 1
  %22 = load ptr, ptr %11, align 4
  %23 = load i32, ptr %22, align 8
  %24 = shl i32 %23, 8
  %25 = or i32 %24, -2147483648
  %26 = call i32 @snd_usb_ctl_msg(ptr noundef %22, i32 noundef %25, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext 1280, ptr noundef nonnull %5, i16 noundef zeroext 1) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %54, label %28

28:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  store i8 0, ptr %4, align 1, !annotation !8
  %29 = load ptr, ptr %11, align 4
  %30 = load i32, ptr %29, align 8
  %31 = shl i32 %30, 8
  %32 = or i32 %31, -2147483520
  %33 = call i32 @snd_usb_ctl_msg(ptr noundef %29, i32 noundef %32, i8 noundef zeroext -127, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext 1280, ptr noundef nonnull %4, i16 noundef zeroext 1) #13
  %34 = icmp slt i32 %33, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  br i1 %34, label %54, label %35

35:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false) #13, !annotation !8
  %36 = load ptr, ptr %11, align 4
  %37 = load i32, ptr %36, align 8
  %38 = shl i32 %37, 8
  %39 = or i32 %38, -2147483520
  %40 = call i32 @snd_usb_ctl_msg(ptr noundef %36, i32 noundef %39, i8 noundef zeroext -127, i8 noundef zeroext -94, i16 noundef zeroext 256, i16 noundef zeroext 129, ptr noundef nonnull %3, i16 noundef zeroext 3) #13
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %35
  %43 = load i8, ptr %3, align 1
  %44 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = or i8 %45, %43
  %47 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %48 = load i8, ptr %47, align 1
  %49 = or i8 %46, %48
  %50 = icmp eq i8 %49, 0
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %42, %35
  %53 = phi i32 [ %51, %42 ], [ %40, %35 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #13
  br label %54

54:                                               ; preds = %52, %28, %18, %10
  %55 = phi i32 [ %16, %10 ], [ %26, %18 ], [ %33, %28 ], [ %53, %52 ]
  call void @snd_usb_unlock_shutdown(ptr noundef %7) #13
  br label %56

56:                                               ; preds = %54, %2
  %57 = phi i32 [ %55, %54 ], [ %8, %2 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_mbox1_src_switch_info(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_mbox1_src_switch_info.texts) #13
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_mbox1_src_switch_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %4, ptr %5, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_mbox1_src_switch_put(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %5, %8
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = zext i1 %8 to i32
  %12 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  store i32 %11, ptr %3, align 4
  %15 = tail call fastcc i32 @snd_mbox1_src_switch_update(ptr noundef %14, i32 noundef %11)
  %16 = icmp slt i32 %15, 0
  %17 = select i1 %16, i32 %15, i32 1
  br label %18

18:                                               ; preds = %10, %2
  %19 = phi i32 [ %17, %10 ], [ 0, %2 ]
  ret i32 %19
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_nativeinstruments_control_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 24
  %6 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %5, ptr %6, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_nativeinstruments_control_put(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 24
  %6 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %40, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = and i32 %4, 16777215
  %14 = shl i32 %7, 24
  %15 = or i32 %14, %13
  store i32 %15, ptr %3, align 4
  %16 = load ptr, ptr %12, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %12, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.snd_kcontrol, ptr %19, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %17) #13
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.snd_usb_audio, ptr %17, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %26, align 8
  %28 = shl i32 %27, 8
  %29 = or i32 %28, -2147483648
  %30 = lshr i32 %21, 16
  %31 = trunc i32 %30 to i8
  %32 = lshr i32 %21, 24
  %33 = trunc i32 %32 to i16
  %34 = trunc i32 %21 to i16
  %35 = tail call i32 @usb_control_msg(ptr noundef %26, i32 noundef %29, i8 noundef zeroext %31, i8 noundef zeroext 64, i16 noundef zeroext %33, i16 noundef zeroext %34, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #13
  tail call void @snd_usb_unlock_shutdown(ptr noundef %17) #13
  br label %36

36:                                               ; preds = %24, %10
  %37 = phi i32 [ %35, %24 ], [ %22, %10 ]
  %38 = icmp slt i32 %37, 0
  %39 = select i1 %38, i32 %37, i32 1
  br label %40

40:                                               ; preds = %36, %2
  %41 = phi i32 [ %39, %36 ], [ 0, %2 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_ni_update_cur_val(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %3) #13
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 8
  %14 = shl i32 %13, 8
  %15 = or i32 %14, -2147483648
  %16 = lshr i32 %7, 16
  %17 = trunc i32 %16 to i8
  %18 = lshr i32 %7, 24
  %19 = trunc i32 %18 to i16
  %20 = trunc i32 %7 to i16
  %21 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %15, i8 noundef zeroext %17, i8 noundef zeroext 64, i16 noundef zeroext %19, i16 noundef zeroext %20, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #13
  tail call void @snd_usb_unlock_shutdown(ptr noundef %3) #13
  br label %22

22:                                               ; preds = %10, %1
  %23 = phi i32 [ %21, %10 ], [ %8, %1 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_soundblaster_e1_switch_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = trunc i32 %7 to i8
  %9 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i16 2, ptr %2, align 2, !annotation !8
  %10 = icmp eq i8 %8, 0
  %11 = select i1 %10, i8 0, i8 2
  %12 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 %11, ptr %12, align 1
  %13 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %9) #13
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.snd_usb_audio, ptr %9, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %17, align 8
  %19 = shl i32 %18, 8
  %20 = or i32 %19, -2147483648
  %21 = call i32 @snd_usb_ctl_msg(ptr noundef %17, i32 noundef %20, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 514, i16 noundef zeroext 3, ptr noundef nonnull %2, i16 noundef zeroext 2) #13
  call void @snd_usb_unlock_shutdown(ptr noundef %9) #13
  br label %22

22:                                               ; preds = %15, %1
  %23 = phi i32 [ %21, %15 ], [ %13, %1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_soundblaster_e1_switch_info(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_soundblaster_e1_switch_info.texts) #13
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_soundblaster_e1_switch_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %4, ptr %5, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_soundblaster_e1_switch_put(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = icmp ne i32 %5, 0
  %7 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = zext i1 %6 to i32
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %31, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  store i32 %9, ptr %7, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 2, ptr %3, align 2, !annotation !8
  %16 = select i1 %6, i8 2, i8 0
  %17 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 %16, ptr %17, align 1
  %18 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %15) #13
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.snd_usb_audio, ptr %15, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %22, align 8
  %24 = shl i32 %23, 8
  %25 = or i32 %24, -2147483648
  %26 = call i32 @snd_usb_ctl_msg(ptr noundef %22, i32 noundef %25, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 514, i16 noundef zeroext 3, ptr noundef nonnull %3, i16 noundef zeroext 2) #13
  call void @snd_usb_unlock_shutdown(ptr noundef %15) #13
  br label %27

27:                                               ; preds = %20, %11
  %28 = phi i32 [ %26, %20 ], [ %18, %11 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %29 = icmp slt i32 %28, 0
  %30 = select i1 %29, i32 %28, i32 1
  br label %31

31:                                               ; preds = %27, %2
  %32 = phi i32 [ %30, %27 ], [ 0, %2 ]
  ret i32 %32
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_rme_rate_info(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 2, ptr %3, align 8
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 32000, i32 0
  %9 = select i1 %7, i32 800000, i32 200000
  %10 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 %8, ptr %10, align 8
  %11 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 %9, ptr %11, align 4
  %12 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 2
  store i32 0, ptr %12, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_rme_rate_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %7) #13
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %45, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 8
  %14 = shl i32 %13, 8
  %15 = or i32 %14, -2147483520
  %16 = call i32 @snd_usb_ctl_msg(ptr noundef %12, i32 noundef %15, i8 noundef zeroext 23, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 4) #13
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.77, i32 noundef 23, i32 noundef %16) #15
  call void @snd_usb_unlock_shutdown(ptr noundef %7) #13
  br label %45

20:                                               ; preds = %10
  call void @snd_usb_unlock_shutdown(ptr noundef %7) #13
  %21 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %45 [
    i32 0, label %23
    i32 1, label %28
    i32 2, label %33
  ]

23:                                               ; preds = %20
  %24 = load i32, ptr %3, align 4
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 31
  %27 = icmp ult i32 %26, 20
  br i1 %27, label %38, label %42

28:                                               ; preds = %20
  %29 = load i32, ptr %3, align 4
  %30 = lshr i32 %29, 8
  %31 = and i32 %30, 15
  %32 = icmp ult i32 %31, 12
  br i1 %32, label %38, label %42

33:                                               ; preds = %20
  %34 = load i32, ptr %3, align 4
  %35 = lshr i32 %34, 12
  %36 = and i32 %35, 15
  %37 = icmp ult i32 %36, 12
  br i1 %37, label %38, label %42

38:                                               ; preds = %33, %28, %23
  %39 = phi i32 [ %26, %23 ], [ %31, %28 ], [ %36, %33 ]
  %40 = getelementptr [20 x i32], ptr @snd_rme_rate_table, i32 0, i32 %39
  %41 = load i32, ptr %40, align 4
  br label %42

42:                                               ; preds = %38, %33, %28, %23
  %43 = phi i32 [ 0, %33 ], [ 0, %28 ], [ 0, %23 ], [ %41, %38 ]
  %44 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %43, ptr %44, align 8
  br label %45

45:                                               ; preds = %42, %20, %18, %2
  %46 = phi i32 [ 0, %42 ], [ -22, %20 ], [ %16, %18 ], [ %8, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_rme_sync_state_info(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @snd_rme_sync_state_info.sync_states) #13
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_rme_sync_state_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %7) #13
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %39, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 8
  %14 = shl i32 %13, 8
  %15 = or i32 %14, -2147483520
  %16 = call i32 @snd_usb_ctl_msg(ptr noundef %12, i32 noundef %15, i8 noundef zeroext 23, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 4) #13
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.77, i32 noundef 23, i32 noundef %16) #15
  call void @snd_usb_unlock_shutdown(ptr noundef %7) #13
  br label %39

20:                                               ; preds = %10
  call void @snd_usb_unlock_shutdown(ptr noundef %7) #13
  %21 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %39 [
    i32 1, label %23
    i32 2, label %29
  ]

23:                                               ; preds = %20
  %24 = load i32, ptr %3, align 4
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  %27 = and i32 %24, 1
  %28 = select i1 %26, i32 %27, i32 2
  br label %36

29:                                               ; preds = %20
  %30 = load i32, ptr %3, align 4
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = lshr i32 %30, 1
  %35 = and i32 %34, 1
  br label %36

36:                                               ; preds = %33, %29, %23
  %37 = phi i32 [ 2, %29 ], [ %35, %33 ], [ %28, %23 ]
  %38 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %37, ptr %38, align 8
  br label %39

39:                                               ; preds = %36, %20, %18, %2
  %40 = phi i32 [ 0, %36 ], [ -22, %20 ], [ %16, %18 ], [ %8, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_rme_spdif_if_info(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_rme_spdif_if_info.spdif_if) #13
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_rme_spdif_if_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %7) #13
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 8
  %14 = shl i32 %13, 8
  %15 = or i32 %14, -2147483520
  %16 = call i32 @snd_usb_ctl_msg(ptr noundef %12, i32 noundef %15, i8 noundef zeroext 23, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 4) #13
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.77, i32 noundef 23, i32 noundef %16) #15
  call void @snd_usb_unlock_shutdown(ptr noundef %7) #13
  br label %25

20:                                               ; preds = %10
  call void @snd_usb_unlock_shutdown(ptr noundef %7) #13
  %21 = load i32, ptr %3, align 4
  %22 = lshr i32 %21, 4
  %23 = and i32 %22, 1
  %24 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %23, ptr %24, align 8
  br label %25

25:                                               ; preds = %20, %18, %2
  %26 = phi i32 [ 0, %20 ], [ %16, %18 ], [ %8, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_rme_spdif_format_info(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_rme_spdif_format_info.optical_type) #13
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_rme_spdif_format_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %7) #13
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 8
  %14 = shl i32 %13, 8
  %15 = or i32 %14, -2147483520
  %16 = call i32 @snd_usb_ctl_msg(ptr noundef %12, i32 noundef %15, i8 noundef zeroext 23, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 4) #13
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.77, i32 noundef 23, i32 noundef %16) #15
  call void @snd_usb_unlock_shutdown(ptr noundef %7) #13
  br label %25

20:                                               ; preds = %10
  call void @snd_usb_unlock_shutdown(ptr noundef %7) #13
  %21 = load i32, ptr %3, align 4
  %22 = lshr i32 %21, 5
  %23 = and i32 %22, 1
  %24 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %23, ptr %24, align 8
  br label %25

25:                                               ; preds = %20, %18, %2
  %26 = phi i32 [ 0, %20 ], [ %16, %18 ], [ %8, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_rme_sync_source_info(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef 1, i32 noundef 4, ptr noundef nonnull @snd_rme_sync_source_info.sync_sources) #13
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_rme_sync_source_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %7) #13
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 8
  %14 = shl i32 %13, 8
  %15 = or i32 %14, -2147483520
  %16 = call i32 @snd_usb_ctl_msg(ptr noundef %12, i32 noundef %15, i8 noundef zeroext 23, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 4) #13
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.77, i32 noundef 23, i32 noundef %16) #15
  call void @snd_usb_unlock_shutdown(ptr noundef %7) #13
  br label %25

20:                                               ; preds = %10
  call void @snd_usb_unlock_shutdown(ptr noundef %7) #13
  %21 = load i32, ptr %3, align 4
  %22 = lshr i32 %21, 6
  %23 = and i32 %22, 3
  %24 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %23, ptr %24, align 8
  br label %25

25:                                               ; preds = %20, %18, %2
  %26 = phi i32 [ 0, %20 ], [ %16, %18 ], [ %8, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_rme_current_freq_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %9 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %8) #13
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %46, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.snd_usb_audio, ptr %8, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 8
  %15 = shl i32 %14, 8
  %16 = or i32 %15, -2147483520
  %17 = call i32 @snd_usb_ctl_msg(ptr noundef %13, i32 noundef %16, i8 noundef zeroext 23, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 4) #13
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.77, i32 noundef 23, i32 noundef %17) #15
  br label %44

21:                                               ; preds = %11
  %22 = load ptr, ptr %12, align 4
  %23 = load i32, ptr %22, align 8
  %24 = shl i32 %23, 8
  %25 = or i32 %24, -2147483520
  %26 = call i32 @snd_usb_ctl_msg(ptr noundef %22, i32 noundef %25, i8 noundef zeroext 17, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %4, i16 noundef zeroext 4) #13
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.77, i32 noundef 17, i32 noundef %26) #15
  br label %44

30:                                               ; preds = %21
  %31 = load i32, ptr %4, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = zext i32 %31 to i64
  %35 = call i64 @div64_u64(i64 noundef 104857600000000, i64 noundef %34) #13
  %36 = trunc i64 %35 to i32
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i32 [ %36, %33 ], [ 0, %30 ]
  %39 = load i32, ptr %3, align 4
  %40 = lshr i32 %39, 18
  %41 = and i32 %40, 7
  %42 = shl i32 %38, %41
  %43 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %42, ptr %43, align 8
  br label %44

44:                                               ; preds = %37, %28, %19
  %45 = phi i32 [ %26, %37 ], [ %17, %19 ], [ %26, %28 ]
  call void @snd_usb_unlock_shutdown(ptr noundef %8) #13
  br label %46

46:                                               ; preds = %44, %2
  %47 = phi i32 [ %45, %44 ], [ %9, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_bbfpro_ctl_add(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.snd_kcontrol_new, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %5, ptr noundef nonnull align 4 dereferenceable(48) @snd_bbfpro_ctl_control, i32 44, i1 false)
  %6 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %5, i32 0, i32 3
  store ptr %3, ptr %6, align 4
  %7 = and i8 %1, 1
  %8 = zext i8 %7 to i32
  %9 = zext i8 %2 to i32
  %10 = shl nuw nsw i32 %9, 1
  %11 = or i32 %10, %8
  %12 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %5, i32 0, i32 11
  store i32 %11, ptr %12, align 4
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 28) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %4
  store ptr %0, ptr %14, align 8
  %17 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %14, i32 0, i32 3
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %14, i32 0, i32 6
  store ptr @snd_bbfpro_ctl_resume, ptr %18, align 8
  %19 = call ptr @snd_ctl_new1(ptr noundef nonnull %5, ptr noundef nonnull %14) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  call void @kfree(ptr noundef nonnull %14) #13
  br label %25

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.snd_kcontrol, ptr %19, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %23, align 4
  %24 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %14, ptr noundef nonnull %19, i1 noundef zeroext false) #13
  br label %25

25:                                               ; preds = %22, %21, %4
  %26 = phi i32 [ %24, %22 ], [ -12, %21 ], [ -12, %4 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #13
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_bbfpro_vol_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %7) #13
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %1
  %11 = trunc i32 %5 to i16
  %12 = and i16 %11, 511
  %13 = shl i16 %11, 5
  %14 = and i16 %13, -16384
  %15 = or i16 %14, %12
  %16 = lshr i32 %5, 11
  %17 = trunc i32 %16 to i16
  %18 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 8
  %21 = shl i32 %20, 8
  %22 = or i32 %21, -2147483648
  %23 = tail call i32 @snd_usb_ctl_msg(ptr noundef %19, i32 noundef %22, i8 noundef zeroext 18, i8 noundef zeroext 64, i16 noundef zeroext %17, i16 noundef zeroext %15, ptr noundef null, i16 noundef zeroext 0) #13
  tail call void @snd_usb_unlock_shutdown(ptr noundef %7) #13
  br label %24

24:                                               ; preds = %10, %1
  %25 = phi i32 [ %23, %10 ], [ %8, %1 ]
  ret i32 %25
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_bbfpro_vol_info(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 2, ptr %3, align 8
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 65536, ptr %6, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_bbfpro_vol_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 9
  %6 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %5, ptr %6, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_bbfpro_vol_put(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = trunc i32 %9 to i16
  %11 = and i16 %10, 511
  %12 = icmp ugt i32 %7, 65536
  br i1 %12, label %39, label %13

13:                                               ; preds = %2
  %14 = lshr i32 %9, 9
  %15 = icmp eq i32 %7, %14
  br i1 %15, label %39, label %16

16:                                               ; preds = %13
  %17 = zext i16 %11 to i32
  %18 = shl nuw nsw i32 %7, 9
  %19 = or i32 %18, %17
  store i32 %19, ptr %8, align 4
  %20 = load ptr, ptr %5, align 4
  %21 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %20) #13
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %16
  %24 = trunc i32 %7 to i16
  %25 = shl i16 %24, 14
  %26 = or i16 %11, %25
  %27 = lshr i32 %7, 2
  %28 = trunc i32 %27 to i16
  %29 = getelementptr inbounds %struct.snd_usb_audio, ptr %20, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load i32, ptr %30, align 8
  %32 = shl i32 %31, 8
  %33 = or i32 %32, -2147483648
  %34 = tail call i32 @snd_usb_ctl_msg(ptr noundef %30, i32 noundef %33, i8 noundef zeroext 18, i8 noundef zeroext 64, i16 noundef zeroext %28, i16 noundef zeroext %26, ptr noundef null, i16 noundef zeroext 0) #13
  tail call void @snd_usb_unlock_shutdown(ptr noundef %20) #13
  br label %35

35:                                               ; preds = %23, %16
  %36 = phi i32 [ %34, %23 ], [ %21, %16 ]
  %37 = icmp slt i32 %36, 0
  %38 = select i1 %37, i32 %36, i32 1
  br label %39

39:                                               ; preds = %35, %13, %2
  %40 = phi i32 [ %38, %35 ], [ -22, %2 ], [ 0, %13 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_bbfpro_ctl_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 1
  %7 = trunc i32 %6 to i8
  %8 = load ptr, ptr %0, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %9) #13
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %1
  %13 = and i32 %5, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = icmp eq i8 %7, 1
  br i1 %16, label %25, label %17

17:                                               ; preds = %15
  %18 = and i32 %6, 255
  %19 = shl nuw i32 1, %18
  %20 = trunc i32 %19 to i16
  br label %25

21:                                               ; preds = %12
  %22 = and i32 %6, 255
  %23 = shl nuw i32 1, %22
  %24 = trunc i32 %23 to i16
  br label %25

25:                                               ; preds = %21, %17, %15
  %26 = phi i16 [ %20, %17 ], [ %24, %21 ], [ 3, %15 ]
  %27 = phi i8 [ 16, %17 ], [ 23, %21 ], [ 16, %15 ]
  %28 = and i32 %5, 512
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i16 0, i16 %26
  %31 = getelementptr inbounds %struct.snd_usb_audio, ptr %9, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %32, align 8
  %34 = shl i32 %33, 8
  %35 = or i32 %34, -2147483648
  %36 = tail call i32 @snd_usb_ctl_msg(ptr noundef %32, i32 noundef %35, i8 noundef zeroext %27, i8 noundef zeroext 64, i16 noundef zeroext %30, i16 noundef zeroext %26, ptr noundef null, i16 noundef zeroext 0) #13
  tail call void @snd_usb_unlock_shutdown(ptr noundef %9) #13
  br label %37

37:                                               ; preds = %25, %1
  %38 = phi i32 [ %36, %25 ], [ %10, %1 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_bbfpro_ctl_info(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 511
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_bbfpro_ctl_info.texts) #13
  br label %19

9:                                                ; preds = %2
  %10 = and i32 %4, 509
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_bbfpro_ctl_info.texts.115) #13
  br label %19

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 1, ptr %15, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 1, ptr %18, align 8
  br label %19

19:                                               ; preds = %14, %12, %7
  %20 = phi i32 [ %8, %7 ], [ %13, %12 ], [ 0, %14 ]
  ret i32 %20
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_bbfpro_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 9
  %6 = and i32 %5, 255
  %7 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %6, ptr %7, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_bbfpro_ctl_put(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = trunc i32 %7 to i8
  %9 = and i8 %8, 1
  %10 = lshr i32 %7, 1
  %11 = trunc i32 %10 to i8
  %12 = zext i8 %9 to i32
  %13 = icmp eq i8 %9, 0
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %57, label %17

17:                                               ; preds = %2
  %18 = lshr i32 %7, 9
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %15, %19
  br i1 %20, label %57, label %21

21:                                               ; preds = %17
  %22 = and i32 %7, 510
  %23 = or i32 %22, %12
  %24 = shl i32 %15, 9
  %25 = and i32 %24, 512
  %26 = or i32 %23, %25
  store i32 %26, ptr %6, align 4
  %27 = trunc i32 %15 to i8
  %28 = load ptr, ptr %5, align 4
  %29 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %28) #13
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %53, label %31

31:                                               ; preds = %21
  br i1 %13, label %32, label %38

32:                                               ; preds = %31
  %33 = icmp eq i8 %11, 1
  br i1 %33, label %42, label %34

34:                                               ; preds = %32
  %35 = and i32 %10, 255
  %36 = shl nuw i32 1, %35
  %37 = trunc i32 %36 to i16
  br label %42

38:                                               ; preds = %31
  %39 = and i32 %10, 255
  %40 = shl nuw i32 1, %39
  %41 = trunc i32 %40 to i16
  br label %42

42:                                               ; preds = %38, %34, %32
  %43 = phi i16 [ %37, %34 ], [ %41, %38 ], [ 3, %32 ]
  %44 = phi i8 [ 16, %34 ], [ 23, %38 ], [ 16, %32 ]
  %45 = icmp eq i8 %27, 0
  %46 = select i1 %45, i16 0, i16 %43
  %47 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load i32, ptr %48, align 8
  %50 = shl i32 %49, 8
  %51 = or i32 %50, -2147483648
  %52 = tail call i32 @snd_usb_ctl_msg(ptr noundef %48, i32 noundef %51, i8 noundef zeroext %44, i8 noundef zeroext 64, i16 noundef zeroext %46, i16 noundef zeroext %43, ptr noundef null, i16 noundef zeroext 0) #13
  tail call void @snd_usb_unlock_shutdown(ptr noundef %28) #13
  br label %53

53:                                               ; preds = %42, %21
  %54 = phi i32 [ %52, %42 ], [ %29, %21 ]
  %55 = icmp slt i32 %54, 0
  %56 = select i1 %55, i32 %54, i32 1
  br label %57

57:                                               ; preds = %53, %17, %2
  %58 = phi i32 [ %56, %53 ], [ -22, %2 ], [ 0, %17 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_djm_controls_info(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 24
  %6 = lshr i32 %4, 16
  %7 = and i32 %6, 255
  %8 = getelementptr [5 x %struct.snd_djm_device], ptr @snd_djm_devices, i32 0, i32 %5, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %73

11:                                               ; preds = %2
  %12 = getelementptr [5 x %struct.snd_djm_device], ptr @snd_djm_devices, i32 0, i32 %5, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.snd_djm_ctl, ptr %13, i32 %7, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  %17 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %18, %15
  br i1 %19, label %22, label %20

20:                                               ; preds = %11
  %21 = add i32 %15, -1
  store i32 %21, ptr %17, align 4
  br label %22

22:                                               ; preds = %20, %11
  %23 = phi i32 [ %21, %20 ], [ %18, %11 ]
  %24 = getelementptr %struct.snd_djm_ctl, ptr %13, i32 %7, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i16, ptr %25, i32 %23
  %27 = load i16, ptr %26, align 2
  %28 = getelementptr %struct.snd_djm_ctl, ptr %13, i32 %7, i32 4
  %29 = load i16, ptr %28, align 2
  switch i16 %29, label %73 [
    i16 -32765, label %30
    i16 -32766, label %34
    i16 -32746, label %40
  ]

30:                                               ; preds = %22
  %31 = zext i16 %27 to i32
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 24) #13
  %33 = icmp ult i32 %32, 4
  br i1 %33, label %44, label %73

34:                                               ; preds = %22
  %35 = icmp eq i32 %5, 2
  %36 = trunc i16 %27 to i8
  %37 = icmp ult i8 %36, 21
  br i1 %35, label %38, label %39

38:                                               ; preds = %34
  br i1 %37, label %47, label %73

39:                                               ; preds = %34
  br i1 %37, label %57, label %73

40:                                               ; preds = %22
  %41 = trunc i16 %27 to i8
  switch i8 %41, label %73 [
    i8 0, label %67
    i8 1, label %42
    i8 4, label %43
  ]

42:                                               ; preds = %40
  br label %67

43:                                               ; preds = %40
  br label %67

44:                                               ; preds = %30
  %45 = getelementptr inbounds [4 x ptr], ptr @switch.table.snd_djm_controls_info, i32 0, i32 %32
  %46 = load ptr, ptr %45, align 4
  br label %67

47:                                               ; preds = %38
  %48 = and i16 %27, 255
  %49 = zext i16 %48 to i32
  %50 = lshr i32 2009039, %49
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %47
  %54 = sext i8 %36 to i32
  %55 = getelementptr inbounds [21 x ptr], ptr @switch.table.snd_djm_controls_info.148, i32 0, i32 %54
  %56 = load ptr, ptr %55, align 4
  br label %67

57:                                               ; preds = %39
  %58 = and i16 %27, 255
  %59 = zext i16 %58 to i32
  %60 = lshr i32 2009039, %59
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %57
  %64 = sext i8 %36 to i32
  %65 = getelementptr inbounds [21 x ptr], ptr @switch.table.snd_djm_controls_info.149, i32 0, i32 %64
  %66 = load ptr, ptr %65, align 4
  br label %67

67:                                               ; preds = %63, %53, %44, %43, %42, %40
  %68 = phi ptr [ @.str.144, %40 ], [ @.str.145, %42 ], [ @.str.67, %43 ], [ %46, %44 ], [ %56, %53 ], [ %66, %63 ]
  %69 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 2
  %70 = tail call i32 @strscpy(ptr noundef %69, ptr noundef nonnull %68, i32 noundef 64) #13
  %71 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 3, ptr %71, align 8
  %72 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 1, ptr %72, align 8
  store i32 %15, ptr %16, align 8
  br label %73

73:                                               ; preds = %67, %57, %47, %40, %39, %38, %30, %22, %2
  %74 = phi i32 [ 0, %67 ], [ -22, %2 ], [ -22, %22 ], [ -22, %30 ], [ -22, %38 ], [ -22, %39 ], [ -22, %40 ], [ -22, %47 ], [ -22, %57 ]
  ret i32 %74
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_djm_controls_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 65535
  %6 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %5, ptr %6, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_djm_controls_put(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 24
  %9 = trunc i32 %8 to i8
  %10 = lshr i32 %7, 16
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = trunc i32 %13 to i16
  %15 = and i32 %7, -65536
  %16 = and i32 %13, 65535
  %17 = or i32 %16, %15
  store i32 %17, ptr %6, align 4
  %18 = tail call fastcc i32 @snd_djm_controls_update(ptr noundef %5, i8 noundef zeroext %9, i8 noundef zeroext %11, i16 noundef zeroext %14)
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_djm_controls_update(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3) unnamed_addr #0 {
  %5 = zext i8 %1 to i32
  %6 = zext i8 %2 to i32
  %7 = getelementptr [5 x %struct.snd_djm_device], ptr @snd_djm_devices, i32 0, i32 %5, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %6
  br i1 %9, label %10, label %36

10:                                               ; preds = %4
  %11 = zext i16 %3 to i32
  %12 = getelementptr [5 x %struct.snd_djm_device], ptr @snd_djm_devices, i32 0, i32 %5, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.snd_djm_ctl, ptr %13, i32 %6, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %11
  br i1 %16, label %17, label %36

17:                                               ; preds = %10
  %18 = load ptr, ptr %0, align 4
  %19 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %18) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.snd_usb_audio, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %24, align 8
  %26 = shl i32 %25, 8
  %27 = or i32 %26, -2147483648
  %28 = getelementptr %struct.snd_djm_ctl, ptr %13, i32 %6, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i16, ptr %29, i32 %11
  %31 = load i16, ptr %30, align 2
  %32 = getelementptr %struct.snd_djm_ctl, ptr %13, i32 %6, i32 4
  %33 = load i16, ptr %32, align 2
  %34 = tail call i32 @snd_usb_ctl_msg(ptr noundef %24, i32 noundef %27, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext %31, i16 noundef zeroext %33, ptr noundef null, i16 noundef zeroext 0) #13
  %35 = load ptr, ptr %0, align 4
  tail call void @snd_usb_unlock_shutdown(ptr noundef %35) #13
  br label %36

36:                                               ; preds = %21, %17, %10, %4
  %37 = phi i32 [ %34, %21 ], [ -22, %10 ], [ -22, %4 ], [ %19, %17 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_djm_controls_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 24
  %7 = trunc i32 %6 to i8
  %8 = lshr i32 %5, 16
  %9 = trunc i32 %8 to i8
  %10 = trunc i32 %5 to i16
  %11 = load ptr, ptr %0, align 4
  %12 = tail call fastcc i32 @snd_djm_controls_update(ptr noundef %11, i8 noundef zeroext %7, i8 noundef zeroext %9, i16 noundef zeroext %10)
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readonly }

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
!9 = !{i64 2152887132}
!10 = !{i64 491944, i64 2147981915, i64 2147981941, i64 2147981988, i64 2147982010, i64 2147982038, i64 2147982058}
!11 = !{i64 501391, i64 501408, i64 501432, i64 501458, i64 501476}
!12 = !{i64 2152887361}
!13 = !{i64 2152889926}
!14 = !{i64 2152890155}
!15 = !{i64 4297635}
!16 = !{i64 4297832}
!17 = !{i64 2151783111}
!18 = !{i64 2152892135, i64 2152892415, i64 2152892749, i64 2152893083}
!19 = !{i64 2152908017, i64 2152908297, i64 2152908631, i64 2152908965}
!20 = !{i64 2152885327}
