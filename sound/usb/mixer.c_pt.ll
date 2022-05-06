; ModuleID = '/llk/IR/sound/usb/mixer.c_pt.bc'
source_filename = "../sound/usb/mixer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.73, i32 }
%union.anon.73 = type { ptr }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.usbmix_ctl_map = type { i32, ptr, ptr, ptr }
%struct.uac3_badd_profile = type { i32, ptr, i32, i32, i32 }
%struct.usbmix_name_map = type { i32, ptr, i32, ptr }
%struct.usb_feature_control_info = type { i32, ptr, i32, i32 }
%struct.iterm_name_combo = type { i32, ptr }
%struct.usbmix_selector_map = type { i32, i32, ptr }
%struct.usbmix_connector_map = type { i8, i8, i8, i8 }
%struct.usbmix_dB_map = type { i32, i32, i8 }
%struct.procunit_info = type { i32, ptr, ptr }
%struct.procunit_value_info = type { i32, ptr, i32, i32 }
%struct.usb_mixer_elem_info = type { %struct.usb_mixer_elem_list, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i8, i8, ptr }
%struct.usb_mixer_elem_list = type { ptr, ptr, ptr, i32, i8, ptr, ptr }
%struct.usb_mixer_interface = type { ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, ptr, ptr, i32, %struct.wait_queue_head, ptr, ptr, [6 x i8], ptr, i8, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.72, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.72 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mixer_build = type { ptr, ptr, ptr, i32, [8 x i32], [8 x i32], %struct.usb_audio_term, ptr, ptr }
%struct.usb_audio_term = type { i32, i32, i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
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
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.uac1_output_terminal_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.uac2_output_terminal_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i16, i8 }>
%struct.uac3_output_terminal_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i32, i16, i16, i16 }>
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.58, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.58 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.63, [64 x i8] }
%union.anon.63 = type { %struct.anon.66, [40 x i8] }
%struct.anon.66 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.67, [128 x i8] }
%union.anon.67 = type { %union.anon.69 }
%union.anon.69 = type { [64 x i64] }
%struct.uac2_connectors_ctl_blk = type <{ i8, i32, i8 }>
%struct.uac3_insertion_ctl_blk = type { i8, i8 }
%struct.uac_feature_unit_descriptor = type { i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.uac2_input_terminal_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i32, i8, i16, i8 }>
%struct.uac3_input_terminal_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i32, i16, i16, i16, i16 }
%struct.uac_mixer_unit_descriptor = type { i8, i8, i8, i8, i8, [0 x i8] }
%struct.uac_selector_unit_descriptor = type { i8, i8, i8, i8, i8, [0 x i8] }
%struct.uac2_feature_unit_descriptor = type { i8, i8, i8, i8, i8, [0 x i8] }
%struct.uac3_feature_unit_descriptor = type { i8, i8, i8, i8, i8, [0 x i8] }
%struct.uac_clock_source_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.uac_input_terminal_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16, i8, i8 }
%struct.uac_processing_unit_descriptor = type <{ i8, i8, i8, i8, i16, i8, [0 x i8] }>
%struct.uac2_effect_unit_descriptor = type <{ i8, i8, i8, i8, i16, i8, [0 x i8] }>
%struct.uac3_clock_source_descriptor = type <{ i8, i8, i8, i8, i8, i32, i8, i16 }>
%struct.uac3_cluster_header_descriptor = type <{ i16, i8, i8, i16, i8 }>
%struct.uac1_status_word = type { i8, i8 }
%struct.uac2_interrupt_data_msg = type { i8, i8, i16, i16 }

@usb_feature_unit_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.4, i32 0, i32 0, i32 0, ptr @mixer_ctl_feature_info, ptr @mixer_ctl_feature_get, ptr @mixer_ctl_feature_put, %union.anon.73 zeroinitializer, i32 0 }, align 4
@snd_usb_feature_unit_ctl = dso_local local_unnamed_addr global ptr @usb_feature_unit_ctl, align 4
@snd_usb_create_mixer.dev_ops = internal constant %struct.snd_device_ops { ptr @snd_usb_mixer_dev_free, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [10 x i8] c"USB Mixer\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"usbmixer\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"%d:%d: cannot get min/max values for control %d (id %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"%d:%d: bogus dB values (%d/%d), disabling dB reporting\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Effect Duration\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Effect Volume\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Effect Feedback Volume\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Effect Return\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Playback Volume\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Effect Send\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"set quirk for FTU Effect Duration\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"set quirks for FTU Effect Feedback/Volume\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"PCM Playback Volume\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"set volume quirk for CM102-A+/102S+\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"set volume quirk for UDA1321/N101 chip\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Mic Capture Volume\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"set volume quirk for QuickCam E3500\0A\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"set resolution quirk: cval->res = 384\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Capture Volume\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"set resolution quirk: cval->res = 16\0A\00", align 1
@.str.23 = private unnamed_addr constant [51 x i8] c"%d:%d: failed to get current value for ch %d (%d)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.24 = private unnamed_addr constant [48 x i8] c"incorrect wMaxPacketSize 0x%x for BADD profile\0A\00", align 1
@uac3_badd_usbmix_ctl_maps = internal unnamed_addr constant [8 x %struct.usbmix_ctl_map] [%struct.usbmix_ctl_map { i32 32, ptr @uac3_badd_generic_io_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 33, ptr @uac3_badd_headphone_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 34, ptr @uac3_badd_speaker_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 35, ptr @uac3_badd_microphone_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 36, ptr @uac3_badd_headset_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 37, ptr @uac3_badd_headset_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 38, ptr @uac3_badd_speakerphone_map, ptr null, ptr null }, %struct.usbmix_ctl_map zeroinitializer], align 4
@uac3_badd_profiles = internal unnamed_addr constant [8 x %struct.uac3_badd_profile] [%struct.uac3_badd_profile { i32 32, ptr @.str.33, i32 -1, i32 -1, i32 0 }, %struct.uac3_badd_profile { i32 33, ptr @.str.34, i32 0, i32 3, i32 0 }, %struct.uac3_badd_profile { i32 34, ptr @.str.35, i32 0, i32 -1, i32 0 }, %struct.uac3_badd_profile { i32 35, ptr @.str.36, i32 -1, i32 0, i32 0 }, %struct.uac3_badd_profile { i32 36, ptr @.str.37, i32 1, i32 -1, i32 1 }, %struct.uac3_badd_profile { i32 37, ptr @.str.38, i32 1, i32 3, i32 1 }, %struct.uac3_badd_profile { i32 38, ptr @.str.39, i32 1, i32 1, i32 0 }, %struct.uac3_badd_profile zeroinitializer], align 4
@uac3_badd_generic_io_map = internal constant [3 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 2, ptr @.str.25, i32 0, ptr null }, %struct.usbmix_name_map { i32 5, ptr @.str.26, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@uac3_badd_headphone_map = internal constant [2 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 2, ptr @.str.27, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@uac3_badd_speaker_map = internal constant [2 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 2, ptr @.str.28, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@uac3_badd_microphone_map = internal constant [2 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 5, ptr @.str.29, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@uac3_badd_headset_map = internal constant [4 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 2, ptr @.str.30, i32 0, ptr null }, %struct.usbmix_name_map { i32 5, ptr @.str.31, i32 0, ptr null }, %struct.usbmix_name_map { i32 7, ptr @.str.32, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@uac3_badd_speakerphone_map = internal constant [3 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 2, ptr @.str.28, i32 0, ptr null }, %struct.usbmix_name_map { i32 5, ptr @.str.29, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@.str.25 = private unnamed_addr constant [21 x i8] c"Generic Out Playback\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"Generic In Capture\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"Headphone Playback\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"Speaker Playback\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"Mic Capture\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Headset Playback\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"Headset Capture\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"Sidetone Mixing\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"GENERIC IO\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"HEADPHONE\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"SPEAKER\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"MICROPHONE\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"HEADSET\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"HEADSET ADAPTER\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"SPEAKERPHONE\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"BAAD %s: no channels?\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"BAAD %s c_chmask mismatch\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"BAAD %s p_chmask mismatch\00", align 1
@usb_feature_unit_ctl_ro = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.4, i32 0, i32 0, i32 0, ptr @mixer_ctl_feature_info, ptr @mixer_ctl_feature_get, ptr null, %union.anon.73 zeroinitializer, i32 0 }, align 4
@.str.43 = private unnamed_addr constant [24 x i8] c"cannot malloc kcontrol\0A\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"Feature %d\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c" Capture\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c" Playback\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c" Switch\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c" Volume\00", align 1
@audio_feature_info = internal unnamed_addr constant [13 x %struct.usb_feature_control_info] [%struct.usb_feature_control_info { i32 1, ptr @.str.98, i32 1, i32 -1 }, %struct.usb_feature_control_info { i32 2, ptr @.str.99, i32 4, i32 -1 }, %struct.usb_feature_control_info { i32 3, ptr @.str.100, i32 2, i32 -1 }, %struct.usb_feature_control_info { i32 4, ptr @.str.101, i32 2, i32 -1 }, %struct.usb_feature_control_info { i32 5, ptr @.str.102, i32 2, i32 -1 }, %struct.usb_feature_control_info { i32 6, ptr @.str.103, i32 2, i32 -1 }, %struct.usb_feature_control_info { i32 7, ptr @.str.104, i32 0, i32 -1 }, %struct.usb_feature_control_info { i32 8, ptr @.str.105, i32 5, i32 7 }, %struct.usb_feature_control_info { i32 9, ptr @.str.106, i32 0, i32 -1 }, %struct.usb_feature_control_info { i32 10, ptr @.str.107, i32 0, i32 -1 }, %struct.usb_feature_control_info { i32 11, ptr @.str.108, i32 4, i32 -1 }, %struct.usb_feature_control_info { i32 12, ptr @.str.109, i32 4, i32 -1 }, %struct.usb_feature_control_info { i32 13, ptr @.str.110, i32 0, i32 -1 }], align 4
@.str.49 = private unnamed_addr constant [71 x i8] c"Warning! Unlikely big volume range (=%u), cval->res is probably wrong.\00", align 1
@.str.50 = private unnamed_addr constant [37 x i8] c"[%d] FU [%s] ch = %d, val = %d/%d/%d\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"Selector\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"Process Unit\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"Ext Unit\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"Mixer\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"Unit %d\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"PCM\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"Mic\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"Headset\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"Phone\00", align 1
@iterm_names = internal unnamed_addr constant [37 x %struct.iterm_name_combo] [%struct.iterm_name_combo { i32 768, ptr @.str.60 }, %struct.iterm_name_combo { i32 769, ptr @.str.61 }, %struct.iterm_name_combo { i32 770, ptr @.str.62 }, %struct.iterm_name_combo { i32 771, ptr @.str.63 }, %struct.iterm_name_combo { i32 772, ptr @.str.64 }, %struct.iterm_name_combo { i32 773, ptr @.str.65 }, %struct.iterm_name_combo { i32 774, ptr @.str.66 }, %struct.iterm_name_combo { i32 775, ptr @.str.67 }, %struct.iterm_name_combo { i32 1536, ptr @.str.68 }, %struct.iterm_name_combo { i32 1537, ptr @.str.69 }, %struct.iterm_name_combo { i32 1538, ptr @.str.70 }, %struct.iterm_name_combo { i32 1539, ptr @.str.71 }, %struct.iterm_name_combo { i32 1540, ptr @.str.72 }, %struct.iterm_name_combo { i32 1541, ptr @.str.73 }, %struct.iterm_name_combo { i32 1542, ptr @.str.74 }, %struct.iterm_name_combo { i32 1543, ptr @.str.75 }, %struct.iterm_name_combo { i32 1792, ptr @.str.76 }, %struct.iterm_name_combo { i32 1793, ptr @.str.77 }, %struct.iterm_name_combo { i32 1794, ptr @.str.78 }, %struct.iterm_name_combo { i32 1795, ptr @.str.79 }, %struct.iterm_name_combo { i32 1796, ptr @.str.80 }, %struct.iterm_name_combo { i32 1797, ptr @.str.81 }, %struct.iterm_name_combo { i32 1798, ptr @.str.82 }, %struct.iterm_name_combo { i32 1799, ptr @.str.83 }, %struct.iterm_name_combo { i32 1800, ptr @.str.84 }, %struct.iterm_name_combo { i32 1801, ptr @.str.85 }, %struct.iterm_name_combo { i32 1802, ptr @.str.86 }, %struct.iterm_name_combo { i32 1803, ptr @.str.87 }, %struct.iterm_name_combo { i32 1804, ptr @.str.88 }, %struct.iterm_name_combo { i32 1805, ptr @.str.89 }, %struct.iterm_name_combo { i32 1806, ptr @.str.90 }, %struct.iterm_name_combo { i32 1807, ptr @.str.91 }, %struct.iterm_name_combo { i32 1808, ptr @.str.92 }, %struct.iterm_name_combo { i32 1809, ptr @.str.93 }, %struct.iterm_name_combo { i32 1810, ptr @.str.94 }, %struct.iterm_name_combo { i32 1811, ptr @.str.95 }, %struct.iterm_name_combo zeroinitializer], align 4
@.str.60 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"Headphone\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"HMD Audio\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"Desktop Speaker\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"Room Speaker\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"Com Speaker\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"LFE\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"External In\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"Analog In\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"Digital In\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"Legacy In\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"IEC958 In\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"1394 DA Stream\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"1394 DV Stream\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"Embedded\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"Noise Source\00", align 1
@.str.78 = private unnamed_addr constant [19 x i8] c"Equalization Noise\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"CD\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"DAT\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"DCC\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"MiniDisk\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"Analog Tape\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"Phonograph\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"VCR Audio\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"Video Disk Audio\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"DVD Audio\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"TV Tuner Audio\00", align 1
@.str.89 = private unnamed_addr constant [20 x i8] c"Satellite Rec Audio\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"Cable Tuner Audio\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"DSS Audio\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"Radio Receiver\00", align 1
@.str.93 = private unnamed_addr constant [18 x i8] c"Radio Transmitter\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"Multi-Track Recorder\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"Synthesizer\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"headset\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"headphone\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"Mute\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"Volume\00", align 1
@.str.100 = private unnamed_addr constant [20 x i8] c"Tone Control - Bass\00", align 1
@.str.101 = private unnamed_addr constant [19 x i8] c"Tone Control - Mid\00", align 1
@.str.102 = private unnamed_addr constant [22 x i8] c"Tone Control - Treble\00", align 1
@.str.103 = private unnamed_addr constant [18 x i8] c"Graphic Equalizer\00", align 1
@.str.104 = private unnamed_addr constant [18 x i8] c"Auto Gain Control\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"Delay Control\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"Bass Boost\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"Loudness\00", align 1
@.str.108 = private unnamed_addr constant [19 x i8] c"Input Gain Control\00", align 1
@.str.109 = private unnamed_addr constant [23 x i8] c"Input Gain Pad Control\00", align 1
@.str.110 = private unnamed_addr constant [23 x i8] c"Phase Inverter Control\00", align 1
@usb_connector_ctl_ro = internal constant %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.4, i32 0, i32 1, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @mixer_ctl_connector_get, ptr null, %union.anon.73 zeroinitializer, i32 0 }, align 4
@.str.111 = private unnamed_addr constant [6 x i8] c" Jack\00", align 1
@.str.112 = private unnamed_addr constant [80 x i8] c"cannot get connectors status: req = %#x, wValue = %#x, wIndex = %#x, type = %d\0A\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c" - Input Jack\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c" - Output Jack\00", align 1
@usbmix_ctl_maps = internal unnamed_addr constant [37 x %struct.usbmix_ctl_map] [%struct.usbmix_ctl_map { i32 69087232, ptr @extigy_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 69087248, ptr @mp3plus_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 69087264, ptr @audigy2nx_map, ptr @audigy2nx_selectors, ptr null }, %struct.usbmix_ctl_map { i32 69087296, ptr @live24ext_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 69087304, ptr @audigy2nx_map, ptr @audigy2nx_selectors, ptr null }, %struct.usbmix_ctl_map { i32 75481104, ptr @gamecom780_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 116965376, ptr @hercules_usb51_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 123936816, ptr null, ptr @c400_selectors, ptr null }, %struct.usbmix_ctl_map { i32 123936817, ptr null, ptr @c400_selectors, ptr null }, %struct.usbmix_ctl_map { i32 146482946, ptr @linex_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 177340561, ptr @maya44_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 205853016, ptr @justlink_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 214761512, ptr @aureon_51_2_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 198852628, ptr @dell_alc4020_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 230297600, ptr @mbox1_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 333774849, ptr @scratch_live_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 537661464, ptr @ebox44_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 628293640, ptr @maya44_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 665587712, ptr @scms_usb3318_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 633602051, ptr @scms_usb3318_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 94834720, ptr @bose_companion5_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 94847226, ptr @bose_soundlink_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 454822461, ptr @corsair_virtuoso_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 454822462, ptr @corsair_virtuoso_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 454822465, ptr @corsair_virtuoso_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 454822466, ptr @corsair_virtuoso_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 68460545, ptr @aorus_master_alc1220vb_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 68460546, ptr @trx40_mobo_map, ptr null, ptr @trx40_mobo_connector_map }, %struct.usbmix_ctl_map { i32 184883478, ptr @asus_rog_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 184883479, ptr @trx40_mobo_map, ptr null, ptr @trx40_mobo_connector_map }, %struct.usbmix_ctl_map { i32 229641572, ptr @trx40_mobo_map, ptr null, ptr @trx40_mobo_connector_map }, %struct.usbmix_ctl_map { i32 229654940, ptr @msi_mpg_x570s_carbon_max_wifi_alc4080_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 229659709, ptr @trx40_mobo_map, ptr null, ptr @trx40_mobo_connector_map }, %struct.usbmix_ctl_map { i32 651037185, ptr @trx40_mobo_map, ptr null, ptr @trx40_mobo_connector_map }, %struct.usbmix_ctl_map { i32 397021254, ptr @lenovo_p620_rear_map, ptr null, ptr null }, %struct.usbmix_ctl_map { i32 328532005, ptr @sennheiser_pc8_map, ptr null, ptr null }, %struct.usbmix_ctl_map zeroinitializer], align 4
@extigy_map = internal constant [20 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 2, ptr @.str.116, i32 0, ptr null }, %struct.usbmix_name_map { i32 5, ptr null, i32 0, ptr null }, %struct.usbmix_name_map { i32 6, ptr @.str.70, i32 0, ptr null }, %struct.usbmix_name_map { i32 8, ptr @.str.117, i32 0, ptr null }, %struct.usbmix_name_map { i32 10, ptr @.str.118, i32 0, ptr null }, %struct.usbmix_name_map { i32 11, ptr @.str.119, i32 0, ptr null }, %struct.usbmix_name_map { i32 12, ptr @.str.120, i32 0, ptr null }, %struct.usbmix_name_map { i32 17, ptr null, i32 1, ptr null }, %struct.usbmix_name_map { i32 17, ptr @.str.121, i32 2, ptr null }, %struct.usbmix_name_map { i32 18, ptr @.str.100, i32 3, ptr null }, %struct.usbmix_name_map { i32 18, ptr @.str.102, i32 5, ptr null }, %struct.usbmix_name_map { i32 18, ptr @.str.122, i32 0, ptr null }, %struct.usbmix_name_map { i32 21, ptr null, i32 0, ptr null }, %struct.usbmix_name_map { i32 22, ptr @.str.123, i32 0, ptr null }, %struct.usbmix_name_map { i32 23, ptr @.str.124, i32 0, ptr null }, %struct.usbmix_name_map { i32 25, ptr @.str.125, i32 0, ptr null }, %struct.usbmix_name_map { i32 26, ptr @.str.125, i32 0, ptr null }, %struct.usbmix_name_map { i32 27, ptr null, i32 0, ptr null }, %struct.usbmix_name_map { i32 29, ptr null, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@mp3plus_map = internal constant [9 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 8, ptr @.str.119, i32 0, ptr null }, %struct.usbmix_name_map { i32 9, ptr @.str.122, i32 0, ptr null }, %struct.usbmix_name_map { i32 10, ptr null, i32 2, ptr @mp3plus_dB_2 }, %struct.usbmix_name_map { i32 10, ptr @.str.126, i32 7, ptr null }, %struct.usbmix_name_map { i32 11, ptr @.str.127, i32 0, ptr @mp3plus_dB_2 }, %struct.usbmix_name_map { i32 12, ptr @.str.128, i32 0, ptr null }, %struct.usbmix_name_map { i32 13, ptr null, i32 0, ptr @mp3plus_dB_1 }, %struct.usbmix_name_map { i32 14, ptr @.str.117, i32 0, ptr @mp3plus_dB_1 }, %struct.usbmix_name_map zeroinitializer], align 4
@audigy2nx_map = internal constant [17 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 6, ptr @.str.128, i32 0, ptr null }, %struct.usbmix_name_map { i32 8, ptr @.str.117, i32 0, ptr null }, %struct.usbmix_name_map { i32 11, ptr @.str.129, i32 0, ptr null }, %struct.usbmix_name_map { i32 12, ptr @.str.127, i32 0, ptr null }, %struct.usbmix_name_map { i32 13, ptr @.str.130, i32 0, ptr null }, %struct.usbmix_name_map { i32 14, ptr @.str.119, i32 0, ptr null }, %struct.usbmix_name_map { i32 17, ptr null, i32 0, ptr null }, %struct.usbmix_name_map { i32 18, ptr @.str.122, i32 0, ptr null }, %struct.usbmix_name_map { i32 21, ptr null, i32 0, ptr null }, %struct.usbmix_name_map { i32 22, ptr @.str.123, i32 0, ptr null }, %struct.usbmix_name_map { i32 23, ptr null, i32 0, ptr null }, %struct.usbmix_name_map { i32 27, ptr null, i32 0, ptr null }, %struct.usbmix_name_map { i32 28, ptr @.str.28, i32 0, ptr null }, %struct.usbmix_name_map { i32 29, ptr @.str.131, i32 0, ptr null }, %struct.usbmix_name_map { i32 30, ptr @.str.27, i32 0, ptr null }, %struct.usbmix_name_map { i32 31, ptr @.str.132, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@audigy2nx_selectors = internal constant [4 x %struct.usbmix_selector_map] [%struct.usbmix_selector_map { i32 14, i32 3, ptr @.compoundliteral }, %struct.usbmix_selector_map { i32 29, i32 3, ptr @.compoundliteral.135 }, %struct.usbmix_selector_map { i32 31, i32 2, ptr @.compoundliteral.137 }, %struct.usbmix_selector_map zeroinitializer], align 4
@live24ext_map = internal constant [2 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 5, ptr @.str.29, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@gamecom780_map = internal constant [2 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 9, ptr null, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@hercules_usb51_map = internal constant [7 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 8, ptr @.str.119, i32 0, ptr null }, %struct.usbmix_name_map { i32 9, ptr @.str.122, i32 0, ptr null }, %struct.usbmix_name_map { i32 10, ptr @.str.126, i32 7, ptr null }, %struct.usbmix_name_map { i32 11, ptr @.str.127, i32 0, ptr null }, %struct.usbmix_name_map { i32 13, ptr @.str.138, i32 0, ptr null }, %struct.usbmix_name_map { i32 14, ptr @.str.139, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@c400_selectors = internal constant [2 x %struct.usbmix_selector_map] [%struct.usbmix_selector_map { i32 128, i32 2, ptr @.compoundliteral.142 }, %struct.usbmix_selector_map zeroinitializer], align 4
@linex_map = internal constant [2 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 3, ptr @.str.143, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@maya44_map = internal constant [5 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 2, ptr @.str.117, i32 0, ptr null }, %struct.usbmix_name_map { i32 4, ptr @.str.117, i32 0, ptr null }, %struct.usbmix_name_map { i32 7, ptr @.str.122, i32 0, ptr null }, %struct.usbmix_name_map { i32 10, ptr @.str.127, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@justlink_map = internal constant [6 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 3, ptr null, i32 0, ptr null }, %struct.usbmix_name_map { i32 7, ptr @.str.122, i32 0, ptr null }, %struct.usbmix_name_map { i32 8, ptr null, i32 0, ptr null }, %struct.usbmix_name_map { i32 9, ptr null, i32 0, ptr null }, %struct.usbmix_name_map { i32 12, ptr null, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@aureon_51_2_map = internal constant [8 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 8, ptr @.str.119, i32 0, ptr null }, %struct.usbmix_name_map { i32 9, ptr @.str.122, i32 0, ptr null }, %struct.usbmix_name_map { i32 10, ptr @.str.29, i32 0, ptr null }, %struct.usbmix_name_map { i32 11, ptr @.str.127, i32 0, ptr null }, %struct.usbmix_name_map { i32 12, ptr @.str.144, i32 0, ptr null }, %struct.usbmix_name_map { i32 13, ptr @.str.118, i32 0, ptr null }, %struct.usbmix_name_map { i32 14, ptr @.str.117, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@dell_alc4020_map = internal constant [4 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 4, ptr null, i32 0, ptr null }, %struct.usbmix_name_map { i32 16, ptr null, i32 0, ptr null }, %struct.usbmix_name_map { i32 19, ptr null, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@mbox1_map = internal constant [2 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 1, ptr @.str.145, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@scratch_live_map = internal constant [3 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 4, ptr @.str.146, i32 0, ptr null }, %struct.usbmix_name_map { i32 9, ptr @.str.147, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@ebox44_map = internal constant [6 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 4, ptr null, i32 0, ptr null }, %struct.usbmix_name_map { i32 6, ptr null, i32 0, ptr null }, %struct.usbmix_name_map { i32 7, ptr null, i32 0, ptr null }, %struct.usbmix_name_map { i32 10, ptr null, i32 0, ptr null }, %struct.usbmix_name_map { i32 11, ptr null, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@scms_usb3318_map = internal constant [2 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 10, ptr null, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@bose_companion5_map = internal constant [2 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 3, ptr null, i32 0, ptr @bose_companion5_dB }, %struct.usbmix_name_map zeroinitializer], align 4
@bose_soundlink_map = internal constant [2 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 2, ptr null, i32 0, ptr @bose_soundlink_dB }, %struct.usbmix_name_map zeroinitializer], align 4
@corsair_virtuoso_map = internal constant [3 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 3, ptr @.str.29, i32 0, ptr null }, %struct.usbmix_name_map { i32 6, ptr @.str.148, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@aorus_master_alc1220vb_map = internal constant [11 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 17, ptr null, i32 0, ptr null }, %struct.usbmix_name_map { i32 19, ptr null, i32 12, ptr null }, %struct.usbmix_name_map { i32 16, ptr @.str.149, i32 0, ptr null }, %struct.usbmix_name_map { i32 22, ptr @.str.150, i32 0, ptr null }, %struct.usbmix_name_map { i32 7, ptr @.str.71, i32 0, ptr null }, %struct.usbmix_name_map { i32 19, ptr @.str.127, i32 0, ptr null }, %struct.usbmix_name_map { i32 8, ptr @.str.57, i32 0, ptr null }, %struct.usbmix_name_map { i32 20, ptr @.str.29, i32 0, ptr null }, %struct.usbmix_name_map { i32 9, ptr @.str.151, i32 0, ptr null }, %struct.usbmix_name_map { i32 21, ptr @.str.152, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@trx40_mobo_map = internal constant [14 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 18, ptr null, i32 0, ptr null }, %struct.usbmix_name_map { i32 19, ptr null, i32 12, ptr null }, %struct.usbmix_name_map { i32 16, ptr @.str.61, i32 0, ptr null }, %struct.usbmix_name_map { i32 22, ptr @.str.28, i32 0, ptr null }, %struct.usbmix_name_map { i32 7, ptr @.str.71, i32 0, ptr null }, %struct.usbmix_name_map { i32 19, ptr @.str.127, i32 0, ptr null }, %struct.usbmix_name_map { i32 17, ptr @.str.153, i32 0, ptr null }, %struct.usbmix_name_map { i32 23, ptr @.str.154, i32 0, ptr null }, %struct.usbmix_name_map { i32 8, ptr @.str.57, i32 0, ptr null }, %struct.usbmix_name_map { i32 20, ptr @.str.29, i32 0, ptr null }, %struct.usbmix_name_map { i32 9, ptr @.str.151, i32 0, ptr null }, %struct.usbmix_name_map { i32 21, ptr @.str.152, i32 0, ptr null }, %struct.usbmix_name_map { i32 24, ptr @.str.155, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@trx40_mobo_connector_map = internal constant [6 x %struct.usbmix_connector_map] [%struct.usbmix_connector_map { i8 10, i8 16, i8 0, i8 0 }, %struct.usbmix_connector_map { i8 11, i8 17, i8 0, i8 0 }, %struct.usbmix_connector_map { i8 13, i8 7, i8 0, i8 0 }, %struct.usbmix_connector_map { i8 14, i8 8, i8 0, i8 0 }, %struct.usbmix_connector_map { i8 15, i8 9, i8 0, i8 0 }, %struct.usbmix_connector_map zeroinitializer], align 1
@asus_rog_map = internal constant [3 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 18, ptr null, i32 0, ptr null }, %struct.usbmix_name_map { i32 19, ptr null, i32 12, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@msi_mpg_x570s_carbon_max_wifi_alc4080_map = internal constant [4 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 29, ptr @.str.28, i32 0, ptr null }, %struct.usbmix_name_map { i32 30, ptr @.str.154, i32 0, ptr null }, %struct.usbmix_name_map { i32 32, ptr @.str.155, i32 0, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@lenovo_p620_rear_map = internal constant [2 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 19, ptr null, i32 12, ptr null }, %struct.usbmix_name_map zeroinitializer], align 4
@sennheiser_pc8_map = internal constant [2 x %struct.usbmix_name_map] [%struct.usbmix_name_map { i32 9, ptr null, i32 0, ptr @sennheiser_pc8_dB }, %struct.usbmix_name_map zeroinitializer], align 4
@.str.116 = private unnamed_addr constant [13 x i8] c"PCM Playback\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"Line Playback\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"Mic Playback\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"Capture Source\00", align 1
@.str.120 = private unnamed_addr constant [8 x i8] c"Capture\00", align 1
@.str.121 = private unnamed_addr constant [16 x i8] c"Channel Routing\00", align 1
@.str.122 = private unnamed_addr constant [16 x i8] c"Master Playback\00", align 1
@.str.123 = private unnamed_addr constant [21 x i8] c"Digital Out Playback\00", align 1
@.str.124 = private unnamed_addr constant [22 x i8] c"Digital Out1 Playback\00", align 1
@.str.125 = private unnamed_addr constant [24 x i8] c"IEC958 Optical Playback\00", align 1
@mp3plus_dB_2 = internal constant %struct.usbmix_dB_map { i32 -1781, i32 618, i8 0 }, align 4
@.str.126 = private unnamed_addr constant [10 x i8] c"Mic Boost\00", align 1
@.str.127 = private unnamed_addr constant [13 x i8] c"Line Capture\00", align 1
@.str.128 = private unnamed_addr constant [20 x i8] c"Digital In Playback\00", align 1
@mp3plus_dB_1 = internal constant %struct.usbmix_dB_map { i32 -4781, i32 0, i8 0 }, align 4
@.str.129 = private unnamed_addr constant [20 x i8] c"What-U-Hear Capture\00", align 1
@.str.130 = private unnamed_addr constant [19 x i8] c"Digital In Capture\00", align 1
@.str.131 = private unnamed_addr constant [19 x i8] c"Digital Out Source\00", align 1
@.str.132 = private unnamed_addr constant [17 x i8] c"Headphone Source\00", align 1
@.str.133 = private unnamed_addr constant [12 x i8] c"What-U-Hear\00", align 1
@.compoundliteral = internal global [3 x ptr] [ptr @.str.71, ptr @.str.70, ptr @.str.133], align 4
@.str.134 = private unnamed_addr constant [6 x i8] c"Front\00", align 1
@.compoundliteral.135 = internal global [3 x ptr] [ptr @.str.134, ptr @.str.56, ptr @.str.70], align 4
@.str.136 = private unnamed_addr constant [5 x i8] c"Side\00", align 1
@.compoundliteral.137 = internal global [2 x ptr] [ptr @.str.134, ptr @.str.136], align 4
@.str.138 = private unnamed_addr constant [20 x i8] c"Mic Bypass Playback\00", align 1
@.str.139 = private unnamed_addr constant [21 x i8] c"Line Bypass Playback\00", align 1
@.str.140 = private unnamed_addr constant [9 x i8] c"Internal\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"SPDIF\00", align 1
@.compoundliteral.142 = internal global [2 x ptr] [ptr @.str.140, ptr @.str.141], align 4
@.str.143 = private unnamed_addr constant [7 x i8] c"Master\00", align 1
@.str.144 = private unnamed_addr constant [18 x i8] c"IEC958 In Capture\00", align 1
@.str.145 = private unnamed_addr constant [6 x i8] c"Clock\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"Line 1 In\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"Line 2 In\00", align 1
@bose_companion5_dB = internal constant %struct.usbmix_dB_map { i32 -5006, i32 -6, i8 0 }, align 4
@bose_soundlink_dB = internal constant %struct.usbmix_dB_map { i32 -8283, i32 0, i8 1 }, align 4
@.str.148 = private unnamed_addr constant [18 x i8] c"Sidetone Playback\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"Line Out\00", align 1
@.str.150 = private unnamed_addr constant [18 x i8] c"Line Out Playback\00", align 1
@.str.151 = private unnamed_addr constant [10 x i8] c"Front Mic\00", align 1
@.str.152 = private unnamed_addr constant [18 x i8] c"Front Mic Capture\00", align 1
@.str.153 = private unnamed_addr constant [16 x i8] c"Front Headphone\00", align 1
@.str.154 = private unnamed_addr constant [25 x i8] c"Front Headphone Playback\00", align 1
@.str.155 = private unnamed_addr constant [16 x i8] c"IEC958 Playback\00", align 1
@sennheiser_pc8_dB = internal constant %struct.usbmix_dB_map { i32 -9500, i32 0, i8 0 }, align 4
@.str.156 = private unnamed_addr constant [20 x i8] c"unit %d not found!\0A\00", align 1
@.str.157 = private unnamed_addr constant [33 x i8] c"unit %u: unexpected type 0x%02x\0A\00", align 1
@.str.158 = private unnamed_addr constant [49 x i8] c"cannot request logical cluster ID: %d (err: %d)\0A\00", align 1
@.str.159 = private unnamed_addr constant [34 x i8] c"invalid MIXER UNIT descriptor %d\0A\00", align 1
@.str.160 = private unnamed_addr constant [16 x i8] c"Mixer Source %d\00", align 1
@usb_bool_master_control_ctl_ro = internal constant %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.4, i32 0, i32 1, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @mixer_ctl_master_bool_get, ptr null, %union.anon.73 zeroinitializer, i32 0 }, align 4
@.str.161 = private unnamed_addr constant [12 x i8] c"%s Validity\00", align 1
@.str.162 = private unnamed_addr constant [25 x i8] c"Clock Source %d Validity\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"Input %u\00", align 1
@mixer_selectunit_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.4, i32 0, i32 0, i32 0, ptr @mixer_ctl_selector_info, ptr @mixer_ctl_selector_get, ptr @mixer_ctl_selector_put, %union.anon.73 zeroinitializer, i32 0 }, align 4
@.str.164 = private unnamed_addr constant [4 x i8] c"USB\00", align 1
@.str.165 = private unnamed_addr constant [14 x i8] c" Clock Source\00", align 1
@.str.166 = private unnamed_addr constant [16 x i8] c" Capture Source\00", align 1
@.str.167 = private unnamed_addr constant [17 x i8] c" Playback Source\00", align 1
@.str.168 = private unnamed_addr constant [48 x i8] c"usbmixer: master volume quirk for PCM2702 chip\0A\00", align 1
@.str.169 = private unnamed_addr constant [62 x i8] c"usbmixer: volume control quirk for Tenx TP6911 Audio Headset\0A\00", align 1
@procunits = internal constant [7 x %struct.procunit_info] [%struct.procunit_info { i32 1, ptr @.str.174, ptr @updown_proc_info }, %struct.procunit_info { i32 2, ptr @.str.175, ptr @prologic_proc_info }, %struct.procunit_info { i32 3, ptr @.str.176, ptr @threed_enh_proc_info }, %struct.procunit_info { i32 4, ptr @.str.177, ptr @reverb_proc_info }, %struct.procunit_info { i32 5, ptr @.str.178, ptr @chorus_proc_info }, %struct.procunit_info { i32 6, ptr @.str.179, ptr @dcr_proc_info }, %struct.procunit_info zeroinitializer], align 4
@uac3_procunits = internal constant [4 x %struct.procunit_info] [%struct.procunit_info { i32 1, ptr @.str.174, ptr @uac3_updown_proc_info }, %struct.procunit_info { i32 2, ptr @.str.176, ptr @uac3_stereo_ext_proc_info }, %struct.procunit_info { i32 3, ptr @.str.192, ptr @undefined_proc_info }, %struct.procunit_info zeroinitializer], align 4
@build_audio_procunit.default_value_info = internal constant [2 x %struct.procunit_value_info] [%struct.procunit_value_info { i32 1, ptr @.str.170, i32 0, i32 0 }, %struct.procunit_value_info zeroinitializer], align 4
@.str.170 = private unnamed_addr constant [7 x i8] c"Switch\00", align 1
@build_audio_procunit.default_info = internal unnamed_addr constant %struct.procunit_info { i32 0, ptr null, ptr @build_audio_procunit.default_value_info }, align 4
@.str.171 = private unnamed_addr constant [15 x i8] c"Extension Unit\00", align 1
@.str.172 = private unnamed_addr constant [16 x i8] c"Processing Unit\00", align 1
@mixer_procunit_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.4, i32 0, i32 0, i32 0, ptr @mixer_ctl_feature_info, ptr @mixer_ctl_procunit_get, ptr @mixer_ctl_procunit_put, %union.anon.73 zeroinitializer, i32 0 }, align 4
@.str.173 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.174 = private unnamed_addr constant [8 x i8] c"Up Down\00", align 1
@updown_proc_info = internal constant [3 x %struct.procunit_value_info] [%struct.procunit_value_info { i32 1, ptr @.str.170, i32 0, i32 0 }, %struct.procunit_value_info { i32 2, ptr @.str.180, i32 3, i32 1 }, %struct.procunit_value_info zeroinitializer], align 4
@.str.175 = private unnamed_addr constant [15 x i8] c"Dolby Prologic\00", align 1
@prologic_proc_info = internal constant [3 x %struct.procunit_value_info] [%struct.procunit_value_info { i32 1, ptr @.str.170, i32 0, i32 0 }, %struct.procunit_value_info { i32 2, ptr @.str.180, i32 3, i32 1 }, %struct.procunit_value_info zeroinitializer], align 4
@.str.176 = private unnamed_addr constant [19 x i8] c"3D Stereo Extender\00", align 1
@threed_enh_proc_info = internal constant [3 x %struct.procunit_value_info] [%struct.procunit_value_info { i32 1, ptr @.str.170, i32 0, i32 0 }, %struct.procunit_value_info { i32 2, ptr @.str.181, i32 3, i32 0 }, %struct.procunit_value_info zeroinitializer], align 4
@.str.177 = private unnamed_addr constant [7 x i8] c"Reverb\00", align 1
@reverb_proc_info = internal constant [5 x %struct.procunit_value_info] [%struct.procunit_value_info { i32 1, ptr @.str.170, i32 0, i32 0 }, %struct.procunit_value_info { i32 2, ptr @.str.182, i32 3, i32 0 }, %struct.procunit_value_info { i32 3, ptr @.str.183, i32 5, i32 0 }, %struct.procunit_value_info { i32 4, ptr @.str.184, i32 3, i32 0 }, %struct.procunit_value_info zeroinitializer], align 4
@.str.178 = private unnamed_addr constant [7 x i8] c"Chorus\00", align 1
@chorus_proc_info = internal constant [5 x %struct.procunit_value_info] [%struct.procunit_value_info { i32 1, ptr @.str.170, i32 0, i32 0 }, %struct.procunit_value_info { i32 2, ptr @.str.182, i32 3, i32 0 }, %struct.procunit_value_info { i32 3, ptr @.str.185, i32 5, i32 0 }, %struct.procunit_value_info { i32 4, ptr @.str.186, i32 5, i32 0 }, %struct.procunit_value_info zeroinitializer], align 4
@.str.179 = private unnamed_addr constant [4 x i8] c"DCR\00", align 1
@dcr_proc_info = internal constant [7 x %struct.procunit_value_info] [%struct.procunit_value_info { i32 1, ptr @.str.170, i32 0, i32 0 }, %struct.procunit_value_info { i32 2, ptr @.str.187, i32 5, i32 0 }, %struct.procunit_value_info { i32 3, ptr @.str.188, i32 4, i32 0 }, %struct.procunit_value_info { i32 4, ptr @.str.189, i32 4, i32 0 }, %struct.procunit_value_info { i32 5, ptr @.str.190, i32 5, i32 0 }, %struct.procunit_value_info { i32 6, ptr @.str.191, i32 5, i32 0 }, %struct.procunit_value_info zeroinitializer], align 4
@.str.180 = private unnamed_addr constant [12 x i8] c"Mode Select\00", align 1
@.str.181 = private unnamed_addr constant [13 x i8] c"Spaciousness\00", align 1
@.str.182 = private unnamed_addr constant [6 x i8] c"Level\00", align 1
@.str.183 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str.184 = private unnamed_addr constant [9 x i8] c"Feedback\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c"Rate\00", align 1
@.str.186 = private unnamed_addr constant [6 x i8] c"Depth\00", align 1
@.str.187 = private unnamed_addr constant [6 x i8] c"Ratio\00", align 1
@.str.188 = private unnamed_addr constant [8 x i8] c"Max Amp\00", align 1
@.str.189 = private unnamed_addr constant [10 x i8] c"Threshold\00", align 1
@.str.190 = private unnamed_addr constant [12 x i8] c"Attack Time\00", align 1
@.str.191 = private unnamed_addr constant [13 x i8] c"Release Time\00", align 1
@uac3_updown_proc_info = internal constant [2 x %struct.procunit_value_info] [%struct.procunit_value_info { i32 1, ptr @.str.180, i32 3, i32 1 }, %struct.procunit_value_info zeroinitializer], align 4
@uac3_stereo_ext_proc_info = internal constant [2 x %struct.procunit_value_info] [%struct.procunit_value_info { i32 1, ptr @.str.193, i32 3, i32 0 }, %struct.procunit_value_info zeroinitializer], align 4
@.str.192 = private unnamed_addr constant [15 x i8] c"Multi-Function\00", align 1
@undefined_proc_info = internal constant [2 x %struct.procunit_value_info] [%struct.procunit_value_info { i32 0, ptr @.str.194, i32 0, i32 0 }, %struct.procunit_value_info zeroinitializer], align 4
@.str.193 = private unnamed_addr constant [14 x i8] c"Width Control\00", align 1
@.str.194 = private unnamed_addr constant [18 x i8] c"Control Undefined\00", align 1
@extunits = internal constant [5 x %struct.procunit_info] [%struct.procunit_info { i32 58113, ptr @.str.195, ptr @clock_rate_xu_info }, %struct.procunit_info { i32 58114, ptr @.str.196, ptr @clock_source_xu_info }, %struct.procunit_info { i32 58115, ptr @.str.197, ptr @spdif_format_xu_info }, %struct.procunit_info { i32 58116, ptr @.str.198, ptr @soft_limit_xu_info }, %struct.procunit_info zeroinitializer], align 4
@.str.195 = private unnamed_addr constant [11 x i8] c"Clock rate\00", align 1
@clock_rate_xu_info = internal constant [2 x %struct.procunit_value_info] [%struct.procunit_value_info { i32 3, ptr @.str.51, i32 3, i32 0 }, %struct.procunit_value_info zeroinitializer], align 4
@.str.196 = private unnamed_addr constant [21 x i8] c"DigitalIn CLK source\00", align 1
@clock_source_xu_info = internal constant [2 x %struct.procunit_value_info] [%struct.procunit_value_info { i32 2, ptr @.str.199, i32 0, i32 0 }, %struct.procunit_value_info zeroinitializer], align 4
@.str.197 = private unnamed_addr constant [19 x i8] c"DigitalOut format:\00", align 1
@spdif_format_xu_info = internal constant [2 x %struct.procunit_value_info] [%struct.procunit_value_info { i32 1, ptr @.str.200, i32 0, i32 0 }, %struct.procunit_value_info zeroinitializer], align 4
@.str.198 = private unnamed_addr constant [22 x i8] c"AnalogueIn Soft Limit\00", align 1
@soft_limit_xu_info = internal constant [2 x %struct.procunit_value_info] [%struct.procunit_value_info { i32 3, ptr @.str.173, i32 0, i32 0 }, %struct.procunit_value_info zeroinitializer], align 4
@.str.199 = private unnamed_addr constant [9 x i8] c"External\00", align 1
@.str.200 = private unnamed_addr constant [10 x i8] c"SPDIF/AC3\00", align 1
@.str.201 = private unnamed_addr constant [48 x i8] c"USB Mixer: usb_id=0x%08x, ctrlif=%i, ctlerr=%i\0A\00", align 1
@.str.202 = private unnamed_addr constant [10 x i8] c"Card: %s\0A\00", align 1
@.str.203 = private unnamed_addr constant [12 x i8] c"  Unit: %i\0A\00", align 1
@.str.204 = private unnamed_addr constant [34 x i8] c"    Control: name=\22%s\22, index=%i\0A\00", align 1
@snd_usb_mixer_dump_cval.val_types = internal unnamed_addr constant [9 x ptr] [ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213], align 4
@.str.205 = private unnamed_addr constant [8 x i8] c"BOOLEAN\00", align 1
@.str.206 = private unnamed_addr constant [12 x i8] c"INV_BOOLEAN\00", align 1
@.str.207 = private unnamed_addr constant [3 x i8] c"S8\00", align 1
@.str.208 = private unnamed_addr constant [3 x i8] c"U8\00", align 1
@.str.209 = private unnamed_addr constant [4 x i8] c"S16\00", align 1
@.str.210 = private unnamed_addr constant [4 x i8] c"U16\00", align 1
@.str.211 = private unnamed_addr constant [4 x i8] c"S32\00", align 1
@.str.212 = private unnamed_addr constant [4 x i8] c"U32\00", align 1
@.str.213 = private unnamed_addr constant [9 x i8] c"BESPOKEN\00", align 1
@.str.214 = private unnamed_addr constant [65 x i8] c"    Info: id=%i, control=%i, cmask=0x%x, channels=%i, type=\22%s\22\0A\00", align 1
@.str.215 = private unnamed_addr constant [48 x i8] c"    Volume: min=%i, max=%i, dBmin=%i, dBmax=%i\0A\00", align 1
@switch.table.snd_usb_mixer_set_ctl_value = private unnamed_addr constant [4 x i16] [i16 2, i16 2, i16 4, i16 4], align 2
@switch.table.snd_usb_create_mixer = private unnamed_addr constant [7 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], align 4
@switch.table.snd_usb_create_mixer.216 = private unnamed_addr constant [7 x ptr] [ptr @uac3_badd_profiles, ptr getelementptr inbounds ([8 x %struct.uac3_badd_profile], ptr @uac3_badd_profiles, i32 0, i32 1), ptr getelementptr inbounds ([8 x %struct.uac3_badd_profile], ptr @uac3_badd_profiles, i32 0, i32 2), ptr getelementptr inbounds ([8 x %struct.uac3_badd_profile], ptr @uac3_badd_profiles, i32 0, i32 3), ptr getelementptr inbounds ([8 x %struct.uac3_badd_profile], ptr @uac3_badd_profiles, i32 0, i32 4), ptr getelementptr inbounds ([8 x %struct.uac3_badd_profile], ptr @uac3_badd_profiles, i32 0, i32 5), ptr getelementptr inbounds ([8 x %struct.uac3_badd_profile], ptr @uac3_badd_profiles, i32 0, i32 6)], align 4
@switch.table.get_ctl_value = private unnamed_addr constant [4 x i32] [i32 2, i32 2, i32 4, i32 4], align 4
@switch.table.__build_feature_ctl = private unnamed_addr constant [13 x ptr] [ptr @audio_feature_info, ptr getelementptr inbounds ([13 x %struct.usb_feature_control_info], ptr @audio_feature_info, i32 0, i32 1), ptr getelementptr inbounds ([13 x %struct.usb_feature_control_info], ptr @audio_feature_info, i32 0, i32 2), ptr getelementptr inbounds ([13 x %struct.usb_feature_control_info], ptr @audio_feature_info, i32 0, i32 3), ptr getelementptr inbounds ([13 x %struct.usb_feature_control_info], ptr @audio_feature_info, i32 0, i32 4), ptr getelementptr inbounds ([13 x %struct.usb_feature_control_info], ptr @audio_feature_info, i32 0, i32 5), ptr getelementptr inbounds ([13 x %struct.usb_feature_control_info], ptr @audio_feature_info, i32 0, i32 6), ptr getelementptr inbounds ([13 x %struct.usb_feature_control_info], ptr @audio_feature_info, i32 0, i32 7), ptr getelementptr inbounds ([13 x %struct.usb_feature_control_info], ptr @audio_feature_info, i32 0, i32 8), ptr getelementptr inbounds ([13 x %struct.usb_feature_control_info], ptr @audio_feature_info, i32 0, i32 9), ptr getelementptr inbounds ([13 x %struct.usb_feature_control_info], ptr @audio_feature_info, i32 0, i32 10), ptr getelementptr inbounds ([13 x %struct.usb_feature_control_info], ptr @audio_feature_info, i32 0, i32 11), ptr getelementptr inbounds ([13 x %struct.usb_feature_control_info], ptr @audio_feature_info, i32 0, i32 12)], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_get_cur_mix_value(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = shl nuw i32 1, %1
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 14, i32 %2
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %3, align 4
  br label %25

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 %15, 8
  %17 = or i32 %16, %1
  %18 = tail call fastcc i32 @get_ctl_value(ptr noundef %0, i32 noundef 129, i32 noundef %17, ptr noundef %3) #16
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = load i32, ptr %5, align 4
  %22 = or i32 %21, %7
  store i32 %22, ptr %5, align 4
  %23 = load i32, ptr %3, align 4
  %24 = getelementptr %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 14, i32 %2
  store i32 %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %20, %13, %10
  %26 = phi i32 [ 0, %10 ], [ 0, %20 ], [ %18, %13 ]
  ret i32 %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_mixer_set_ctl_value(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x i8], align 4
  %6 = load ptr, ptr %0, align 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %2
  %11 = getelementptr inbounds %struct.usb_mixer_interface, ptr %6, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  br i1 %13, label %16, label %20

16:                                               ; preds = %4
  %17 = icmp sgt i32 %15, 3
  %18 = select i1 %17, i16 2, i16 1
  %19 = trunc i32 %1 to i8
  br label %29

20:                                               ; preds = %4
  %21 = add i32 %15, -4
  %22 = icmp ult i32 %21, 4
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds [4 x i16], ptr @switch.table.snd_usb_mixer_set_ctl_value, i32 0, i32 %21
  %25 = load i16, ptr %24, align 2
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i16 [ %25, %23 ], [ 1, %20 ]
  %28 = icmp eq i32 %1, 1
  br i1 %28, label %29, label %79

29:                                               ; preds = %26, %16
  %30 = phi i8 [ %19, %16 ], [ 1, %26 ]
  %31 = phi i16 [ %18, %16 ], [ %27, %26 ]
  switch i32 %15, label %42 [
    i32 0, label %32
    i32 1, label %35
    i32 2, label %38
    i32 3, label %38
    i32 4, label %40
    i32 5, label %40
  ]

32:                                               ; preds = %29
  %33 = icmp ne i32 %3, 0
  %34 = zext i1 %33 to i32
  br label %42

35:                                               ; preds = %29
  %36 = icmp eq i32 %3, 0
  %37 = zext i1 %36 to i32
  br label %42

38:                                               ; preds = %29, %29
  %39 = and i32 %3, 255
  br label %42

40:                                               ; preds = %29, %29
  %41 = and i32 %3, 65535
  br label %42

42:                                               ; preds = %40, %38, %35, %32, %29
  %43 = phi i32 [ %41, %40 ], [ %39, %38 ], [ %37, %35 ], [ %34, %32 ], [ 0, %29 ]
  %44 = trunc i32 %43 to i8
  store i8 %44, ptr %5, align 4
  %45 = lshr i32 %43, 8
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 1
  store i8 %46, ptr %47, align 1
  %48 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %7) #16
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %79, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 3
  %52 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %53 = trunc i32 %10 to i16
  br label %54

54:                                               ; preds = %75, %50
  %55 = phi i32 [ %56, %75 ], [ 10, %50 ]
  %56 = add nsw i32 %55, -1
  %57 = icmp eq i32 %55, 0
  br i1 %57, label %77, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %0, align 4
  %60 = getelementptr inbounds %struct.usb_mixer_interface, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %61, i32 0, i32 2
  %63 = load i8, ptr %62, align 2
  %64 = zext i8 %63 to i32
  %65 = load i32, ptr %51, align 4
  %66 = shl i32 %65, 8
  %67 = or i32 %66, %64
  %68 = load ptr, ptr %52, align 4
  %69 = load i32, ptr %68, align 8
  %70 = shl i32 %69, 8
  %71 = or i32 %70, -2147483648
  %72 = trunc i32 %67 to i16
  %73 = call i32 @snd_usb_ctl_msg(ptr noundef %68, i32 noundef %71, i8 noundef zeroext %30, i8 noundef zeroext 33, i16 noundef zeroext %53, i16 noundef zeroext %72, ptr noundef nonnull %5, i16 noundef zeroext %31) #16
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %77, label %75

75:                                               ; preds = %58
  %76 = icmp eq i32 %73, -110
  br i1 %76, label %77, label %54

77:                                               ; preds = %75, %58, %54
  %78 = phi i32 [ -110, %75 ], [ 0, %58 ], [ -22, %54 ]
  call void @snd_usb_unlock_shutdown(ptr noundef %7) #16
  br label %79

79:                                               ; preds = %77, %42, %26
  %80 = phi i32 [ %78, %77 ], [ -22, %26 ], [ -5, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i32 %80
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_lock_shutdown(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_ctl_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_unlock_shutdown(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_set_cur_mix_value(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  br label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %1, -1
  %13 = shl nuw i32 1, %12
  %14 = and i32 %11, %13
  br label %15

15:                                               ; preds = %9, %6
  %16 = phi i32 [ %8, %6 ], [ %14, %9 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = shl i32 %20, 8
  %22 = or i32 %21, %1
  %23 = tail call i32 @snd_usb_mixer_set_ctl_value(ptr noundef %0, i32 noundef 1, i32 noundef %22, i32 noundef %3)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = shl nuw i32 1, %1
  %27 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 13
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, ptr %27, align 4
  %30 = getelementptr %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 14, i32 %2
  store i32 %3, ptr %30, align 4
  br label %31

31:                                               ; preds = %25, %18, %15
  %32 = phi i32 [ 0, %25 ], [ 0, %15 ], [ %23, %18 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_mixer_vol_tlv(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [4 x i32], align 8
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  store i64 34359738372, ptr %5, align 8
  %8 = icmp ult i32 %2, 16
  br i1 %8, label %33, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %7, i32 0, i32 16
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store i32 5, ptr %5, align 8
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %7, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 2
  store i32 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %7, i32 0, i32 12
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 3
  store i32 %19, ptr %20, align 4
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 16, i32 -1090519040) #17, !srcloc !9
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %14
  %25 = tail call ptr @llvm.thread.pointer() #16
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %26) #18, !srcloc !10
  %28 = and i32 %27, -13
  %29 = or i32 %28, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #16, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !12
  %30 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %5, i32 noundef 16) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #16, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !12
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 0, i32 -14
  br label %33

33:                                               ; preds = %24, %14, %4
  %34 = phi i32 [ -12, %4 ], [ -14, %14 ], [ %32, %24 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret i32 %34
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_mixer_add_list(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = zext i1 %2 to i8
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @snd_ctl_find_id(ptr noundef %9, ptr noundef %6) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 1, i32 5
  br label %14

14:                                               ; preds = %14, %12
  %15 = load i32, ptr %13, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %13, align 4
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds %struct.snd_usb_audio, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr @snd_ctl_find_id(ptr noundef %19, ptr noundef %6) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %14

22:                                               ; preds = %14, %3
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr inbounds %struct.snd_usb_audio, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @snd_ctl_add(ptr noundef %25, ptr noundef %1) #16
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 2
  store ptr %1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 4
  store i8 %4, ptr %30, align 4
  %31 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr ptr, ptr %32, i32 %34
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 1
  store ptr %36, ptr %37, align 4
  %38 = load ptr, ptr %31, align 4
  %39 = getelementptr ptr, ptr %38, i32 %34
  store ptr %0, ptr %39, align 4
  br label %40

40:                                               ; preds = %28, %22
  %41 = phi i32 [ 0, %28 ], [ %26, %22 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_find_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usb_mixer_elem_free(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #16
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usb_mixer_notify_id(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %4, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %18, %6
  %10 = phi i8 [ %20, %18 ], [ %7, %6 ]
  %11 = phi ptr [ %19, %18 ], [ %4, %6 ]
  %12 = zext i8 %10 to i32
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.usbmix_connector_map, ptr %11, i32 0, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  br label %22

18:                                               ; preds = %9
  %19 = getelementptr %struct.usbmix_connector_map, ptr %11, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %9

22:                                               ; preds = %18, %14, %6, %2
  %23 = phi i32 [ %17, %14 ], [ %1, %2 ], [ %1, %6 ], [ %1, %18 ]
  %24 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr ptr, ptr %25, i32 %23
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %46, label %29

29:                                               ; preds = %42, %22
  %30 = phi ptr [ %44, %42 ], [ %27, %22 ]
  %31 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %30, i32 0, i32 4
  %32 = load i8, ptr %31, align 4, !range !13
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %30, i32 0, i32 13
  store i32 0, ptr %35, align 4
  %36 = load ptr, ptr %0, align 4
  %37 = getelementptr inbounds %struct.snd_usb_audio, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %30, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.snd_kcontrol, ptr %40, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %38, i32 noundef 1, ptr noundef %41) #16
  br label %42

42:                                               ; preds = %34, %29
  %43 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %30, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %29

46:                                               ; preds = %42, %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_create_mixer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.mixer_build, align 4
  %4 = alloca %struct.usb_audio_term, align 4
  %5 = alloca %struct.usb_audio_term, align 4
  %6 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %8, ptr noundef nonnull align 1 dereferenceable(10) @.str, i32 10, i1 false)
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 92) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %450, label %12

12:                                               ; preds = %2
  store ptr %0, ptr %10, align 8
  %13 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 12
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %14, 14
  %16 = and i32 %15, 1
  %17 = getelementptr inbounds %struct.usb_mixer_interface, ptr %10, i32 0, i32 3
  store i32 %16, ptr %17, align 8
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 1024) #19
  %20 = getelementptr inbounds %struct.usb_mixer_interface, ptr %10, i32 0, i32 5
  store ptr %19, ptr %20, align 8
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  tail call void @kfree(ptr noundef nonnull %10) #16
  br label %450

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = tail call ptr @usb_ifnum_to_if(ptr noundef %25, i32 noundef %1) #16
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.usb_mixer_interface, ptr %10, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %27, i32 0, i32 7
  %30 = load i8, ptr %29, align 1
  switch i8 %30, label %32 [
    i8 48, label %35
    i8 32, label %31
  ]

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %23
  %33 = phi i32 [ 32, %31 ], [ 0, %23 ]
  %34 = getelementptr inbounds %struct.usb_mixer_interface, ptr %10, i32 0, i32 6
  store i32 %33, ptr %34, align 4
  br label %184

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.usb_mixer_interface, ptr %10, i32 0, i32 6
  store i32 48, ptr %36, align 4
  %37 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 17
  %38 = load i32, ptr %37, align 4
  %39 = icmp sgt i32 %38, 31
  br i1 %39, label %40, label %184

40:                                               ; preds = %35
  %41 = load ptr, ptr %10, align 8
  %42 = getelementptr inbounds %struct.snd_usb_audio, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.snd_usb_audio, ptr %41, i32 0, i32 17
  %45 = load i32, ptr %44, align 4
  %46 = tail call ptr @usb_ifnum_to_if(ptr noundef %43, i32 noundef %1) #16
  %47 = getelementptr inbounds %struct.usb_interface, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %48, i32 0, i32 3
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %100, label %52

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %48, i32 0, i32 2
  br label %54

54:                                               ; preds = %93, %52
  %55 = phi i32 [ 0, %52 ], [ %96, %93 ]
  %56 = phi i32 [ 0, %52 ], [ %95, %93 ]
  %57 = phi i32 [ 0, %52 ], [ %94, %93 ]
  %58 = load i8, ptr %53, align 1
  %59 = zext i8 %58 to i32
  %60 = add nuw i32 %55, %59
  %61 = icmp eq i32 %60, %1
  br i1 %61, label %93, label %62

62:                                               ; preds = %54
  %63 = tail call ptr @usb_ifnum_to_if(ptr noundef %43, i32 noundef %60) #16
  %64 = icmp eq ptr %63, null
  br i1 %64, label %93, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.usb_interface, ptr %63, i32 0, i32 2
  %67 = load i32, ptr %66, align 8
  %68 = icmp slt i32 %67, 2
  br i1 %68, label %448, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %63, align 8
  %71 = getelementptr %struct.usb_host_interface, ptr %70, i32 1, i32 0, i32 4
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %448, label %74

74:                                               ; preds = %69
  %75 = getelementptr %struct.usb_host_interface, ptr %70, i32 1, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %76, i32 0, i32 2
  %78 = load i8, ptr %77, align 2
  %79 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %76, i32 0, i32 4
  %80 = load i16, ptr %79, align 4
  switch i16 %80, label %81 [
    i16 96, label %88
    i16 98, label %88
    i16 144, label %88
    i16 147, label %88
    i16 192, label %87
    i16 196, label %87
    i16 288, label %87
    i16 294, label %87
  ]

81:                                               ; preds = %74
  %82 = zext i16 %80 to i32
  %83 = load ptr, ptr %10, align 8
  %84 = getelementptr inbounds %struct.snd_usb_audio, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.usb_device, ptr %85, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.24, i32 noundef %82) #20
  br label %448

87:                                               ; preds = %74, %74, %74, %74
  br label %88

88:                                               ; preds = %87, %74, %74, %74, %74
  %89 = phi i32 [ 3, %87 ], [ 1, %74 ], [ 1, %74 ], [ 1, %74 ], [ 1, %74 ]
  %90 = icmp sgt i8 %78, -1
  %91 = select i1 %90, i32 %89, i32 %57
  %92 = select i1 %90, i32 %56, i32 %89
  br label %93

93:                                               ; preds = %88, %62, %54
  %94 = phi i32 [ %91, %88 ], [ %57, %54 ], [ %57, %62 ]
  %95 = phi i32 [ %92, %88 ], [ %56, %54 ], [ %56, %62 ]
  %96 = add nuw nsw i32 %55, 1
  %97 = load i8, ptr %49, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp ult i32 %96, %98
  br i1 %99, label %54, label %100

100:                                              ; preds = %93, %40
  %101 = phi i32 [ 0, %40 ], [ %94, %93 ]
  %102 = phi i32 [ 0, %40 ], [ %95, %93 ]
  switch i32 %45, label %103 [
    i32 32, label %110
    i32 33, label %104
    i32 34, label %105
    i32 35, label %106
    i32 36, label %107
    i32 37, label %108
    i32 38, label %109
  ]

103:                                              ; preds = %100
  br label %110

104:                                              ; preds = %100
  br label %110

105:                                              ; preds = %100
  br label %110

106:                                              ; preds = %100
  br label %110

107:                                              ; preds = %100
  br label %110

108:                                              ; preds = %100
  br label %110

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109, %108, %107, %106, %105, %104, %103, %100
  %111 = phi ptr [ @uac3_badd_usbmix_ctl_maps, %100 ], [ getelementptr inbounds ([8 x %struct.usbmix_ctl_map], ptr @uac3_badd_usbmix_ctl_maps, i32 0, i32 7), %103 ], [ getelementptr inbounds ([8 x %struct.usbmix_ctl_map], ptr @uac3_badd_usbmix_ctl_maps, i32 0, i32 1), %104 ], [ getelementptr inbounds ([8 x %struct.usbmix_ctl_map], ptr @uac3_badd_usbmix_ctl_maps, i32 0, i32 2), %105 ], [ getelementptr inbounds ([8 x %struct.usbmix_ctl_map], ptr @uac3_badd_usbmix_ctl_maps, i32 0, i32 3), %106 ], [ getelementptr inbounds ([8 x %struct.usbmix_ctl_map], ptr @uac3_badd_usbmix_ctl_maps, i32 0, i32 4), %107 ], [ getelementptr inbounds ([8 x %struct.usbmix_ctl_map], ptr @uac3_badd_usbmix_ctl_maps, i32 0, i32 5), %108 ], [ getelementptr inbounds ([8 x %struct.usbmix_ctl_map], ptr @uac3_badd_usbmix_ctl_maps, i32 0, i32 6), %109 ]
  %112 = phi i1 [ false, %100 ], [ true, %103 ], [ false, %104 ], [ false, %105 ], [ false, %106 ], [ false, %107 ], [ false, %108 ], [ false, %109 ]
  br i1 %112, label %448, label %113

113:                                              ; preds = %110
  %114 = add i32 %45, -32
  %115 = icmp ult i32 %114, 7
  br i1 %115, label %116, label %448

116:                                              ; preds = %113
  %117 = getelementptr inbounds [7 x ptr], ptr @switch.table.snd_usb_create_mixer, i32 0, i32 %114
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds [7 x ptr], ptr @switch.table.snd_usb_create_mixer.216, i32 0, i32 %114
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.uac3_badd_profile, ptr %120, i32 0, i32 2
  %122 = load i32, ptr %121, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %116
  %125 = getelementptr inbounds %struct.uac3_badd_profile, ptr %120, i32 0, i32 3
  %126 = load i32, ptr %125, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = or i32 %102, %101
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %147, label %153

131:                                              ; preds = %124
  %132 = icmp eq i32 %102, 0
  br i1 %132, label %147, label %138

133:                                              ; preds = %116
  %134 = icmp eq i32 %122, %102
  br i1 %134, label %135, label %147

135:                                              ; preds = %133
  %136 = getelementptr inbounds %struct.uac3_badd_profile, ptr %120, i32 0, i32 3
  %137 = load i32, ptr %136, align 4
  br label %138

138:                                              ; preds = %135, %131
  %139 = phi i32 [ %137, %135 ], [ %126, %131 ]
  %140 = icmp sgt i32 %139, -1
  %141 = icmp ne i32 %101, 0
  %142 = or i1 %141, %140
  %143 = xor i1 %142, true
  %144 = icmp ne i32 %139, %101
  %145 = and i1 %140, %144
  %146 = select i1 %143, i1 true, i1 %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %138, %133, %131, %128
  %148 = phi ptr [ @.str.40, %128 ], [ @.str.41, %133 ], [ @.str.41, %131 ], [ @.str.42, %138 ]
  %149 = load ptr, ptr %10, align 8
  %150 = getelementptr inbounds %struct.snd_usb_audio, ptr %149, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.usb_device, ptr %151, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %152, ptr noundef nonnull %148, ptr noundef nonnull %118) #20
  br label %448

153:                                              ; preds = %138, %128
  %154 = getelementptr inbounds %struct.uac3_badd_profile, ptr %120, i32 0, i32 4
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %101, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.usbmix_ctl_map, ptr %111, i32 0, i32 1
  %159 = load ptr, ptr %158, align 4
  tail call fastcc void @__build_feature_ctl(ptr noundef %10, ptr noundef %159, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 2, i32 noundef 0, i32 noundef 0) #16
  %160 = load ptr, ptr %158, align 4
  tail call fastcc void @__build_feature_ctl(ptr noundef %10, ptr noundef %160, i32 noundef %101, i32 noundef 2, ptr noundef null, ptr noundef null, i32 noundef 2, i32 noundef 0, i32 noundef 0) #16
  br label %161

161:                                              ; preds = %157, %153
  %162 = icmp eq i32 %102, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %161
  %164 = getelementptr inbounds %struct.usbmix_ctl_map, ptr %111, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  tail call fastcc void @__build_feature_ctl(ptr noundef %10, ptr noundef %165, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 5, i32 noundef 0, i32 noundef 0) #16
  %166 = load ptr, ptr %164, align 4
  tail call fastcc void @__build_feature_ctl(ptr noundef %10, ptr noundef %166, i32 noundef %102, i32 noundef 2, ptr noundef null, ptr noundef null, i32 noundef 5, i32 noundef 0, i32 noundef 0) #16
  br label %167

167:                                              ; preds = %163, %161
  %168 = icmp eq i32 %155, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %167
  %170 = getelementptr inbounds %struct.usbmix_ctl_map, ptr %111, i32 0, i32 1
  %171 = load ptr, ptr %170, align 4
  tail call fastcc void @__build_feature_ctl(ptr noundef %10, ptr noundef %171, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 7, i32 noundef 0, i32 noundef 0) #16
  %172 = load ptr, ptr %170, align 4
  tail call fastcc void @__build_feature_ctl(ptr noundef %10, ptr noundef %172, i32 noundef 1, i32 noundef 2, ptr noundef null, ptr noundef null, i32 noundef 7, i32 noundef 0, i32 noundef 0) #16
  br label %173

173:                                              ; preds = %169, %167
  %174 = load i32, ptr %120, align 4
  %175 = icmp eq i32 %174, 37
  br i1 %175, label %176, label %365

176:                                              ; preds = %173
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #16
  %177 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %177, i8 0, i32 12, i1 false) #16
  store i32 4, ptr %4, align 4
  %178 = getelementptr inbounds %struct.usb_audio_term, ptr %4, i32 0, i32 1
  store i32 1026, ptr %178, align 4
  %179 = getelementptr inbounds %struct.usbmix_ctl_map, ptr %111, i32 0, i32 1
  %180 = load ptr, ptr %179, align 4
  call fastcc void @build_connector_control(ptr noundef %10, ptr noundef %180, ptr noundef nonnull %4, i1 noundef zeroext true) #16
  %181 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %181, i8 0, i32 12, i1 false) #16
  store i32 3, ptr %5, align 4
  %182 = getelementptr inbounds %struct.usb_audio_term, ptr %5, i32 0, i32 1
  store i32 1026, ptr %182, align 4
  %183 = load ptr, ptr %179, align 4
  call fastcc void @build_connector_control(ptr noundef %10, ptr noundef %183, ptr noundef nonnull %5, i1 noundef zeroext false) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #16
  br label %365

184:                                              ; preds = %35, %32
  %185 = getelementptr inbounds %struct.usb_mixer_interface, ptr %10, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %3) #16
  %186 = getelementptr inbounds i8, ptr %3, i32 16
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %186, i8 0, i64 92, i1 false) #16
  %187 = load ptr, ptr %10, align 8
  store ptr %187, ptr %3, align 4
  %188 = getelementptr inbounds %struct.mixer_build, ptr %3, i32 0, i32 1
  store ptr %10, ptr %188, align 4
  %189 = getelementptr inbounds %struct.usb_host_interface, ptr %27, i32 0, i32 2
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.mixer_build, ptr %3, i32 0, i32 2
  store ptr %190, ptr %191, align 4
  %192 = getelementptr inbounds %struct.usb_host_interface, ptr %27, i32 0, i32 1
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr inbounds %struct.mixer_build, ptr %3, i32 0, i32 3
  store i32 %193, ptr %194, align 4
  %195 = getelementptr inbounds %struct.snd_usb_audio, ptr %187, i32 0, i32 4
  %196 = load i32, ptr %195, align 4
  switch i32 %196, label %244 [
    i32 69087232, label %232
    i32 69087248, label %197
    i32 69087264, label %198
    i32 69087296, label %199
    i32 69087304, label %200
    i32 75481104, label %201
    i32 116965376, label %202
    i32 123936816, label %203
    i32 123936817, label %204
    i32 146482946, label %205
    i32 177340561, label %206
    i32 205853016, label %207
    i32 214761512, label %208
    i32 198852628, label %209
    i32 230297600, label %210
    i32 333774849, label %211
    i32 537661464, label %212
    i32 628293640, label %213
    i32 665587712, label %214
    i32 633602051, label %215
    i32 94834720, label %216
    i32 94847226, label %217
    i32 454822461, label %218
    i32 454822462, label %219
    i32 454822465, label %220
    i32 454822466, label %221
    i32 68460545, label %222
    i32 68460546, label %223
    i32 184883478, label %224
    i32 184883479, label %225
    i32 229641572, label %226
    i32 229654940, label %227
    i32 229659709, label %228
    i32 651037185, label %229
    i32 397021254, label %230
    i32 328532005, label %231
  ]

197:                                              ; preds = %184
  br label %232

198:                                              ; preds = %184
  br label %232

199:                                              ; preds = %184
  br label %232

200:                                              ; preds = %184
  br label %232

201:                                              ; preds = %184
  br label %232

202:                                              ; preds = %184
  br label %232

203:                                              ; preds = %184
  br label %232

204:                                              ; preds = %184
  br label %232

205:                                              ; preds = %184
  br label %232

206:                                              ; preds = %184
  br label %232

207:                                              ; preds = %184
  br label %232

208:                                              ; preds = %184
  br label %232

209:                                              ; preds = %184
  br label %232

210:                                              ; preds = %184
  br label %232

211:                                              ; preds = %184
  br label %232

212:                                              ; preds = %184
  br label %232

213:                                              ; preds = %184
  br label %232

214:                                              ; preds = %184
  br label %232

215:                                              ; preds = %184
  br label %232

216:                                              ; preds = %184
  br label %232

217:                                              ; preds = %184
  br label %232

218:                                              ; preds = %184
  br label %232

219:                                              ; preds = %184
  br label %232

220:                                              ; preds = %184
  br label %232

221:                                              ; preds = %184
  br label %232

222:                                              ; preds = %184
  br label %232

223:                                              ; preds = %184
  br label %232

224:                                              ; preds = %184
  br label %232

225:                                              ; preds = %184
  br label %232

226:                                              ; preds = %184
  br label %232

227:                                              ; preds = %184
  br label %232

228:                                              ; preds = %184
  br label %232

229:                                              ; preds = %184
  br label %232

230:                                              ; preds = %184
  br label %232

231:                                              ; preds = %184
  br label %232

232:                                              ; preds = %231, %230, %229, %228, %227, %226, %225, %224, %223, %222, %221, %220, %219, %218, %217, %216, %215, %214, %213, %212, %211, %210, %209, %208, %207, %206, %205, %204, %203, %202, %201, %200, %199, %198, %197, %184
  %233 = phi ptr [ @usbmix_ctl_maps, %184 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 1), %197 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 2), %198 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 3), %199 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 4), %200 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 5), %201 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 6), %202 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 7), %203 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 8), %204 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 9), %205 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 10), %206 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 11), %207 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 12), %208 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 13), %209 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 14), %210 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 15), %211 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 16), %212 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 17), %213 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 18), %214 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 19), %215 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 20), %216 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 21), %217 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 22), %218 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 23), %219 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 24), %220 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 25), %221 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 26), %222 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 27), %223 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 28), %224 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 29), %225 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 30), %226 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 31), %227 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 32), %228 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 33), %229 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 34), %230 ], [ getelementptr inbounds ([37 x %struct.usbmix_ctl_map], ptr @usbmix_ctl_maps, i32 0, i32 35), %231 ]
  %234 = getelementptr inbounds %struct.usbmix_ctl_map, ptr %233, i32 0, i32 1
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr inbounds %struct.mixer_build, ptr %3, i32 0, i32 7
  store ptr %235, ptr %236, align 4
  %237 = getelementptr inbounds %struct.usbmix_ctl_map, ptr %233, i32 0, i32 2
  %238 = load ptr, ptr %237, align 4
  %239 = getelementptr inbounds %struct.mixer_build, ptr %3, i32 0, i32 8
  store ptr %238, ptr %239, align 4
  %240 = getelementptr inbounds %struct.usbmix_ctl_map, ptr %233, i32 0, i32 3
  %241 = load ptr, ptr %240, align 4
  %242 = getelementptr inbounds %struct.usb_mixer_interface, ptr %10, i32 0, i32 7
  store ptr %241, ptr %242, align 8
  %243 = load ptr, ptr %189, align 4
  br label %244

244:                                              ; preds = %232, %184
  %245 = phi ptr [ %243, %232 ], [ %190, %184 ]
  %246 = load i32, ptr %192, align 4
  %247 = tail call ptr @snd_usb_find_csint_desc(ptr noundef %245, i32 noundef %246, ptr noundef null, i8 noundef zeroext 3) #16
  %248 = icmp eq ptr %247, null
  br i1 %248, label %364, label %249

249:                                              ; preds = %244
  %250 = getelementptr inbounds %struct.mixer_build, ptr %3, i32 0, i32 6
  %251 = getelementptr inbounds %struct.mixer_build, ptr %3, i32 0, i32 6, i32 1
  %252 = getelementptr inbounds %struct.mixer_build, ptr %3, i32 0, i32 6, i32 4
  %253 = getelementptr inbounds %struct.mixer_build, ptr %3, i32 0, i32 7
  br label %254

254:                                              ; preds = %354, %249
  %255 = phi ptr [ %247, %249 ], [ %360, %354 ]
  %256 = load i32, ptr %185, align 4
  %257 = call zeroext i1 @snd_usb_validate_audio_desc(ptr noundef nonnull %255, i32 noundef %256) #16
  br i1 %257, label %258, label %354

258:                                              ; preds = %254
  %259 = load i32, ptr %185, align 4
  switch i32 %259, label %315 [
    i32 0, label %260
    i32 32, label %279
  ]

260:                                              ; preds = %258
  %261 = getelementptr inbounds %struct.uac1_output_terminal_descriptor, ptr %255, i32 0, i32 3
  %262 = load i8, ptr %261, align 1
  %263 = zext i8 %262 to i32
  call void @_set_bit(i32 noundef %263, ptr noundef %186) #16
  %264 = load i8, ptr %261, align 1
  %265 = zext i8 %264 to i32
  store i32 %265, ptr %250, align 4
  %266 = getelementptr inbounds %struct.uac1_output_terminal_descriptor, ptr %255, i32 0, i32 4
  %267 = load i16, ptr %266, align 1
  %268 = zext i16 %267 to i32
  store i32 %268, ptr %251, align 4
  %269 = getelementptr inbounds %struct.uac1_output_terminal_descriptor, ptr %255, i32 0, i32 7
  %270 = load i8, ptr %269, align 1
  %271 = zext i8 %270 to i32
  store i32 %271, ptr %252, align 4
  %272 = getelementptr inbounds %struct.uac1_output_terminal_descriptor, ptr %255, i32 0, i32 6
  %273 = load i8, ptr %272, align 1
  %274 = zext i8 %273 to i32
  %275 = call fastcc i32 @parse_audio_unit(ptr noundef nonnull %3, i32 noundef %274) #16
  %276 = icmp slt i32 %275, 0
  %277 = icmp ne i32 %275, -22
  %278 = and i1 %276, %277
  br i1 %278, label %362, label %354

279:                                              ; preds = %258
  %280 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, ptr %255, i32 0, i32 3
  %281 = load i8, ptr %280, align 1
  %282 = zext i8 %281 to i32
  call void @_set_bit(i32 noundef %282, ptr noundef %186) #16
  %283 = load i8, ptr %280, align 1
  %284 = zext i8 %283 to i32
  store i32 %284, ptr %250, align 4
  %285 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, ptr %255, i32 0, i32 4
  %286 = load i16, ptr %285, align 1
  %287 = zext i16 %286 to i32
  store i32 %287, ptr %251, align 4
  %288 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, ptr %255, i32 0, i32 9
  %289 = load i8, ptr %288, align 1
  %290 = zext i8 %289 to i32
  store i32 %290, ptr %252, align 4
  %291 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, ptr %255, i32 0, i32 6
  %292 = load i8, ptr %291, align 1
  %293 = zext i8 %292 to i32
  %294 = call fastcc i32 @parse_audio_unit(ptr noundef nonnull %3, i32 noundef %293) #16
  %295 = icmp slt i32 %294, 0
  %296 = icmp ne i32 %294, -22
  %297 = and i1 %295, %296
  br i1 %297, label %362, label %298

298:                                              ; preds = %279
  %299 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, ptr %255, i32 0, i32 7
  %300 = load i8, ptr %299, align 1
  %301 = zext i8 %300 to i32
  %302 = call fastcc i32 @parse_audio_unit(ptr noundef nonnull %3, i32 noundef %301) #16
  %303 = icmp slt i32 %302, 0
  %304 = icmp ne i32 %302, -22
  %305 = and i1 %303, %304
  br i1 %305, label %362, label %306

306:                                              ; preds = %298
  %307 = load i32, ptr %251, align 4
  %308 = and i32 %307, 65280
  %309 = icmp eq i32 %308, 256
  br i1 %309, label %354, label %310

310:                                              ; preds = %306
  %311 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, ptr %255, i32 0, i32 8
  %312 = load i16, ptr %311, align 1
  %313 = and i16 %312, 4
  %314 = icmp eq i16 %313, 0
  br i1 %314, label %354, label %351

315:                                              ; preds = %258
  %316 = getelementptr inbounds %struct.uac3_output_terminal_descriptor, ptr %255, i32 0, i32 3
  %317 = load i8, ptr %316, align 1
  %318 = zext i8 %317 to i32
  call void @_set_bit(i32 noundef %318, ptr noundef %186) #16
  %319 = load i8, ptr %316, align 1
  %320 = zext i8 %319 to i32
  store i32 %320, ptr %250, align 4
  %321 = getelementptr inbounds %struct.uac3_output_terminal_descriptor, ptr %255, i32 0, i32 4
  %322 = load i16, ptr %321, align 1
  %323 = zext i16 %322 to i32
  store i32 %323, ptr %251, align 4
  %324 = getelementptr inbounds %struct.uac3_output_terminal_descriptor, ptr %255, i32 0, i32 11
  %325 = load i16, ptr %324, align 1
  %326 = zext i16 %325 to i32
  store i32 %326, ptr %252, align 4
  %327 = getelementptr inbounds %struct.uac3_output_terminal_descriptor, ptr %255, i32 0, i32 6
  %328 = load i8, ptr %327, align 1
  %329 = zext i8 %328 to i32
  %330 = call fastcc i32 @parse_audio_unit(ptr noundef nonnull %3, i32 noundef %329) #16
  %331 = icmp slt i32 %330, 0
  %332 = icmp ne i32 %330, -22
  %333 = and i1 %331, %332
  br i1 %333, label %362, label %334

334:                                              ; preds = %315
  %335 = getelementptr inbounds %struct.uac3_output_terminal_descriptor, ptr %255, i32 0, i32 7
  %336 = load i8, ptr %335, align 1
  %337 = zext i8 %336 to i32
  %338 = call fastcc i32 @parse_audio_unit(ptr noundef nonnull %3, i32 noundef %337) #16
  %339 = icmp slt i32 %338, 0
  %340 = icmp ne i32 %338, -22
  %341 = and i1 %339, %340
  br i1 %341, label %362, label %342

342:                                              ; preds = %334
  %343 = load i32, ptr %251, align 4
  %344 = and i32 %343, 65280
  %345 = icmp eq i32 %344, 256
  br i1 %345, label %354, label %346

346:                                              ; preds = %342
  %347 = getelementptr inbounds %struct.uac3_output_terminal_descriptor, ptr %255, i32 0, i32 8
  %348 = load i32, ptr %347, align 1
  %349 = and i32 %348, 1
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %354, label %351

351:                                              ; preds = %346, %310
  %352 = load ptr, ptr %188, align 4
  %353 = load ptr, ptr %253, align 4
  call fastcc void @build_connector_control(ptr noundef %352, ptr noundef %353, ptr noundef %250, i1 noundef zeroext false) #16
  br label %354

354:                                              ; preds = %351, %346, %342, %310, %306, %260, %254
  %355 = load ptr, ptr %28, align 4
  %356 = getelementptr inbounds %struct.usb_host_interface, ptr %355, i32 0, i32 2
  %357 = load ptr, ptr %356, align 4
  %358 = getelementptr inbounds %struct.usb_host_interface, ptr %355, i32 0, i32 1
  %359 = load i32, ptr %358, align 4
  %360 = call ptr @snd_usb_find_csint_desc(ptr noundef %357, i32 noundef %359, ptr noundef nonnull %255, i8 noundef zeroext 3) #16
  %361 = icmp eq ptr %360, null
  br i1 %361, label %364, label %254

362:                                              ; preds = %334, %315, %298, %279, %260
  %363 = phi i32 [ %275, %260 ], [ %302, %298 ], [ %294, %279 ], [ %338, %334 ], [ %330, %315 ]
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %3) #16
  br label %448

364:                                              ; preds = %354, %244
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %3) #16
  br label %365

365:                                              ; preds = %364, %176, %173
  %366 = load ptr, ptr %28, align 4
  %367 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %366, i32 0, i32 4
  %368 = load i8, ptr %367, align 4
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %428, label %370

370:                                              ; preds = %365
  %371 = getelementptr inbounds %struct.usb_host_interface, ptr %366, i32 0, i32 3
  %372 = load ptr, ptr %371, align 4
  %373 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %372, i32 0, i32 2
  %374 = load i8, ptr %373, align 1
  %375 = icmp sgt i8 %374, -1
  br i1 %375, label %428, label %376

376:                                              ; preds = %370
  %377 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %372, i32 0, i32 3
  %378 = load i8, ptr %377, align 1
  %379 = and i8 %378, 3
  %380 = icmp eq i8 %379, 3
  br i1 %380, label %381, label %428

381:                                              ; preds = %376
  %382 = and i8 %374, 15
  %383 = zext i8 %382 to i32
  %384 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %372, i32 0, i32 4
  %385 = load i16, ptr %384, align 1
  %386 = zext i16 %385 to i32
  %387 = call noalias align 64 ptr @__kmalloc(i32 noundef %386, i32 noundef 3264) #21
  %388 = icmp eq ptr %387, null
  br i1 %388, label %448, label %389

389:                                              ; preds = %381
  %390 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #16
  %391 = getelementptr inbounds %struct.usb_mixer_interface, ptr %10, i32 0, i32 4
  store ptr %390, ptr %391, align 4
  %392 = icmp eq ptr %390, null
  br i1 %392, label %393, label %394

393:                                              ; preds = %389
  call void @kfree(ptr noundef nonnull %387) #16
  br label %448

394:                                              ; preds = %389
  %395 = load ptr, ptr %10, align 8
  %396 = getelementptr inbounds %struct.snd_usb_audio, ptr %395, i32 0, i32 1
  %397 = load ptr, ptr %396, align 4
  %398 = load i32, ptr %397, align 8
  %399 = shl i32 %398, 8
  %400 = shl nuw nsw i32 %383, 15
  %401 = or i32 %400, %399
  %402 = or i32 %401, 1073741952
  %403 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %372, i32 0, i32 5
  %404 = load i8, ptr %403, align 1
  %405 = zext i8 %404 to i32
  %406 = getelementptr inbounds %struct.urb, ptr %390, i32 0, i32 8
  store ptr %397, ptr %406, align 4
  %407 = getelementptr inbounds %struct.urb, ptr %390, i32 0, i32 10
  store i32 %402, ptr %407, align 4
  %408 = getelementptr inbounds %struct.urb, ptr %390, i32 0, i32 14
  store ptr %387, ptr %408, align 4
  %409 = getelementptr inbounds %struct.urb, ptr %390, i32 0, i32 19
  store i32 %386, ptr %409, align 4
  %410 = getelementptr inbounds %struct.urb, ptr %390, i32 0, i32 28
  store ptr @snd_usb_mixer_interrupt, ptr %410, align 4
  %411 = getelementptr inbounds %struct.urb, ptr %390, i32 0, i32 27
  store ptr %10, ptr %411, align 4
  %412 = getelementptr inbounds %struct.usb_device, ptr %397, i32 0, i32 4
  %413 = load i32, ptr %412, align 4
  %414 = icmp eq i32 %413, 3
  %415 = icmp ugt i32 %413, 4
  %416 = or i1 %414, %415
  br i1 %416, label %417, label %422

417:                                              ; preds = %394
  %418 = call i32 @llvm.smax.i32(i32 %405, i32 1) #16
  %419 = call i32 @llvm.umin.i32(i32 %418, i32 16) #16
  %420 = add nsw i32 %419, -1
  %421 = shl nuw nsw i32 1, %420
  br label %422

422:                                              ; preds = %417, %394
  %423 = phi i32 [ %421, %417 ], [ %405, %394 ]
  %424 = getelementptr inbounds %struct.urb, ptr %390, i32 0, i32 25
  store i32 %423, ptr %424, align 4
  %425 = getelementptr inbounds %struct.urb, ptr %390, i32 0, i32 23
  store i32 -1, ptr %425, align 4
  %426 = load ptr, ptr %391, align 4
  %427 = call i32 @usb_submit_urb(ptr noundef %426, i32 noundef 3264) #16
  br label %428

428:                                              ; preds = %422, %376, %370, %365
  %429 = call i32 @snd_usb_mixer_apply_create_quirk(ptr noundef nonnull %10) #16
  %430 = icmp slt i32 %429, 0
  br i1 %430, label %448, label %431

431:                                              ; preds = %428
  %432 = load ptr, ptr %6, align 4
  %433 = call i32 @snd_device_new(ptr noundef %432, i32 noundef 3, ptr noundef nonnull %10, ptr noundef nonnull @snd_usb_create_mixer.dev_ops) #16
  %434 = icmp slt i32 %433, 0
  br i1 %434, label %448, label %435

435:                                              ; preds = %431
  %436 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 23
  %437 = load volatile ptr, ptr %436, align 4
  %438 = icmp eq ptr %437, %436
  br i1 %438, label %439, label %443

439:                                              ; preds = %435
  %440 = load ptr, ptr %6, align 4
  %441 = call i32 @snd_card_rw_proc_new(ptr noundef %440, ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef nonnull @snd_usb_mixer_proc_read, ptr noundef null) #16
  %442 = load ptr, ptr %436, align 4
  br label %443

443:                                              ; preds = %439, %435
  %444 = phi ptr [ %442, %439 ], [ %437, %435 ]
  %445 = getelementptr inbounds %struct.usb_mixer_interface, ptr %10, i32 0, i32 2
  %446 = getelementptr inbounds %struct.list_head, ptr %444, i32 0, i32 1
  store ptr %445, ptr %446, align 4
  store ptr %444, ptr %445, align 8
  %447 = getelementptr inbounds %struct.usb_mixer_interface, ptr %10, i32 0, i32 2, i32 1
  store ptr %436, ptr %447, align 4
  store volatile ptr %445, ptr %436, align 4
  br label %450

448:                                              ; preds = %431, %428, %393, %381, %362, %147, %113, %110, %81, %69, %65
  %449 = phi i32 [ %429, %428 ], [ %433, %431 ], [ %363, %362 ], [ -12, %393 ], [ -12, %381 ], [ -22, %110 ], [ -22, %147 ], [ -22, %81 ], [ -22, %113 ], [ -22, %65 ], [ -22, %69 ]
  call fastcc void @snd_usb_mixer_free(ptr noundef nonnull %10)
  br label %450

450:                                              ; preds = %448, %443, %22, %2
  %451 = phi i32 [ %449, %448 ], [ 0, %443 ], [ -12, %22 ], [ -12, %2 ]
  ret i32 %451
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_usb_mixer_dev_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call fastcc void @snd_usb_mixer_free(ptr noundef %3)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_mixer_apply_create_quirk(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usb_mixer_proc_read(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %60, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 4
  %10 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 2
  br label %14

11:                                               ; preds = %57
  %12 = load ptr, ptr %15, align 4
  %13 = icmp eq ptr %12, %5
  br i1 %13, label %60, label %14

14:                                               ; preds = %11, %8
  %15 = phi ptr [ %6, %8 ], [ %12, %11 ]
  %16 = load ptr, ptr %1, align 4
  %17 = load i32, ptr %9, align 4
  %18 = getelementptr i8, ptr %15, i32 -4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %19, i32 0, i32 2
  %21 = load i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  %23 = getelementptr i8, ptr %15, i32 8
  %24 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.201, i32 noundef %17, i32 noundef %22, i32 noundef %24) #16
  %25 = load ptr, ptr %1, align 4
  %26 = load ptr, ptr %10, align 4
  %27 = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %25, ptr noundef nonnull @.str.202, ptr noundef %27) #16
  %28 = getelementptr i8, ptr %15, i32 16
  br label %29

29:                                               ; preds = %57, %14
  %30 = phi i32 [ 0, %14 ], [ %58, %57 ]
  %31 = load ptr, ptr %28, align 4
  %32 = getelementptr ptr, ptr %31, i32 %30
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %57, label %35

35:                                               ; preds = %53, %29
  %36 = phi ptr [ %55, %53 ], [ %33, %29 ]
  %37 = load ptr, ptr %1, align 4
  %38 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %36, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %37, ptr noundef nonnull @.str.203, i32 noundef %39) #16
  %40 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %36, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = load ptr, ptr %1, align 4
  %45 = getelementptr inbounds %struct.snd_kcontrol, ptr %41, i32 0, i32 1, i32 4
  %46 = getelementptr inbounds %struct.snd_kcontrol, ptr %41, i32 0, i32 1, i32 5
  %47 = load i32, ptr %46, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %44, ptr noundef nonnull @.str.204, ptr noundef %45, i32 noundef %47) #16
  br label %48

48:                                               ; preds = %43, %35
  %49 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %36, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void %50(ptr noundef %1, ptr noundef nonnull %36) #16
  br label %53

53:                                               ; preds = %52, %48
  %54 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %36, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %35

57:                                               ; preds = %53, %29
  %58 = add nuw nsw i32 %30, 1
  %59 = icmp eq i32 %58, 256
  br i1 %59, label %11, label %29

60:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snd_usb_mixer_free(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 15
  %3 = load i8, ptr %2, align 4, !range !13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @usb_kill_urb(ptr noundef nonnull %7) #16
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @usb_kill_urb(ptr noundef nonnull %12) #16
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void %17(ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  store i8 1, ptr %2, align 4
  br label %21

21:                                               ; preds = %20, %1
  %22 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  tail call void @kfree(ptr noundef %23) #16
  %24 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 14
  %29 = load ptr, ptr %28, align 4
  tail call void @kfree(ptr noundef %29) #16
  %30 = load ptr, ptr %24, align 4
  tail call void @usb_free_urb(ptr noundef %30) #16
  br label %31

31:                                               ; preds = %27, %21
  %32 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  tail call void @usb_free_urb(ptr noundef %33) #16
  %34 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 12
  %35 = load ptr, ptr %34, align 4
  tail call void @kfree(ptr noundef %35) #16
  tail call void @kfree(ptr noundef %0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usb_mixer_disconnect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 15
  %3 = load i8, ptr %2, align 4, !range !13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @usb_kill_urb(ptr noundef nonnull %7) #16
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @usb_kill_urb(ptr noundef nonnull %12) #16
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void %17(ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  store i8 1, ptr %2, align 4
  br label %21

21:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_mixer_suspend(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #16
  %4 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 18
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void %7(ptr noundef %0) #16
  br label %10

10:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_mixer_resume(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 5
  br label %3

3:                                                ; preds = %21, %1
  %4 = phi i32 [ 0, %1 ], [ %22, %21 ]
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr ptr, ptr %5, i32 %4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %17, %3
  %10 = phi ptr [ %19, %17 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = tail call i32 %12(ptr noundef nonnull %10) #16
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %14, %9
  %18 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %10, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %9

21:                                               ; preds = %17, %3
  %22 = add nuw nsw i32 %4, 1
  %23 = icmp eq i32 %22, 256
  br i1 %23, label %24, label %3

24:                                               ; preds = %21
  tail call void @snd_usb_mixer_resume_quirk(ptr noundef %0) #16
  %25 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @usb_submit_urb(ptr noundef nonnull %26, i32 noundef 3072) #16
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %24
  br label %32

32:                                               ; preds = %31, %28, %14
  %33 = phi i32 [ 0, %31 ], [ %29, %28 ], [ %15, %14 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_mixer_resume_quirk(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @snd_usb_mixer_elem_init_std(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  store ptr %1, ptr %0, align 4
  %4 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 3
  store i32 %2, ptr %4, align 4
  %5 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 5
  store ptr @snd_usb_mixer_dump_cval, ptr %5, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 6
  store ptr @restore_mixer_value, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usb_mixer_dump_cval(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr [9 x ptr], ptr @snd_usb_mixer_dump_cval.val_types, i32 0, i32 %13
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.214, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef %15) #16
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %1, i32 0, i32 12
  %24 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.215, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @restore_mixer_value(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 8
  br i1 %4, label %70, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %51, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 13
  %12 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 4
  br label %13

13:                                               ; preds = %49, %9
  %14 = phi i32 [ %7, %9 ], [ %50, %49 ]
  %15 = phi i32 [ 0, %9 ], [ %47, %49 ]
  %16 = phi i32 [ 0, %9 ], [ %46, %49 ]
  %17 = shl nuw nsw i32 1, %16
  %18 = and i32 %14, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = add nuw nsw i32 %16, 1
  br label %45

22:                                               ; preds = %13
  %23 = load i32, ptr %11, align 4
  %24 = add nuw nsw i32 %16, 1
  %25 = shl i32 2, %16
  %26 = and i32 %23, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %22
  %29 = getelementptr %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 14, i32 %15
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %12, align 4
  %32 = and i32 %31, %17
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load i32, ptr %10, align 4
  %36 = shl i32 %35, 8
  %37 = or i32 %36, %24
  %38 = tail call i32 @snd_usb_mixer_set_ctl_value(ptr noundef %0, i32 noundef 1, i32 noundef %37, i32 noundef %30) #16
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %70, label %40

40:                                               ; preds = %34
  %41 = load i32, ptr %11, align 4
  %42 = or i32 %41, %25
  store i32 %42, ptr %11, align 4
  store i32 %30, ptr %29, align 4
  br label %43

43:                                               ; preds = %40, %28, %22
  %44 = add i32 %15, 1
  br label %45

45:                                               ; preds = %43, %20
  %46 = phi i32 [ %21, %20 ], [ %24, %43 ]
  %47 = phi i32 [ %15, %20 ], [ %44, %43 ]
  %48 = icmp eq i32 %46, 16
  br i1 %48, label %70, label %49

49:                                               ; preds = %45
  %50 = load i32, ptr %6, align 4
  br label %13

51:                                               ; preds = %5
  %52 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 13
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %51
  %56 = getelementptr %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 14
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = shl i32 %63, 8
  %65 = tail call i32 @snd_usb_mixer_set_ctl_value(ptr noundef %0, i32 noundef 1, i32 noundef %64, i32 noundef %57) #16
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = load i32, ptr %52, align 4
  %69 = or i32 %68, 1
  store i32 %69, ptr %52, align 4
  store i32 %57, ptr %56, align 4
  br label %70

70:                                               ; preds = %67, %61, %55, %51, %45, %34, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_ctl_value(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca [14 x i8], align 1
  %6 = alloca [2 x i8], align 2
  %7 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %2
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.usb_mixer_interface, ptr %10, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = load ptr, ptr %10, align 4
  br i1 %13, label %15, label %80

15:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #16
  store i16 0, ptr %6, align 2, !annotation !8
  %16 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %17, 3
  %19 = select i1 %18, i32 2, i32 1
  %20 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %14) #16
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %78, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 3
  %24 = getelementptr inbounds %struct.snd_usb_audio, ptr %14, i32 0, i32 1
  %25 = trunc i32 %1 to i8
  %26 = trunc i32 %9 to i16
  %27 = trunc i32 %19 to i16
  br label %28

28:                                               ; preds = %74, %22
  %29 = phi i32 [ %30, %74 ], [ 10, %22 ]
  %30 = add nsw i32 %29, -1
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %76, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr inbounds %struct.usb_mixer_interface, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %35, i32 0, i32 2
  %37 = load i8, ptr %36, align 2
  %38 = zext i8 %37 to i32
  %39 = load i32, ptr %23, align 4
  %40 = shl i32 %39, 8
  %41 = or i32 %40, %38
  %42 = load ptr, ptr %24, align 4
  %43 = load i32, ptr %42, align 8
  %44 = shl i32 %43, 8
  %45 = or i32 %44, -2147483520
  %46 = trunc i32 %41 to i16
  %47 = call i32 @snd_usb_ctl_msg(ptr noundef %42, i32 noundef %45, i8 noundef zeroext %25, i8 noundef zeroext -95, i16 noundef zeroext %26, i16 noundef zeroext %46, ptr noundef nonnull %6, i16 noundef zeroext %27) #16
  %48 = icmp slt i32 %47, %19
  br i1 %48, label %74, label %49

49:                                               ; preds = %32
  %50 = call i32 @snd_usb_combine_bytes(ptr noundef nonnull %6, i32 noundef %19) #16
  %51 = load i32, ptr %16, align 4
  switch i32 %51, label %72 [
    i32 0, label %52
    i32 1, label %55
    i32 3, label %58
    i32 2, label %60
    i32 5, label %65
    i32 4, label %67
  ]

52:                                               ; preds = %49
  %53 = icmp ne i32 %50, 0
  %54 = zext i1 %53 to i32
  br label %72

55:                                               ; preds = %49
  %56 = icmp eq i32 %50, 0
  %57 = zext i1 %56 to i32
  br label %72

58:                                               ; preds = %49
  %59 = and i32 %50, 255
  br label %72

60:                                               ; preds = %49
  %61 = and i32 %50, 255
  %62 = icmp ugt i32 %61, 127
  %63 = select i1 %62, i32 -256, i32 0
  %64 = or i32 %63, %61
  br label %72

65:                                               ; preds = %49
  %66 = and i32 %50, 65535
  br label %72

67:                                               ; preds = %49
  %68 = and i32 %50, 65535
  %69 = icmp ugt i32 %68, 32767
  %70 = select i1 %69, i32 -65536, i32 0
  %71 = or i32 %70, %68
  br label %72

72:                                               ; preds = %67, %65, %60, %58, %55, %52, %49
  %73 = phi i32 [ %57, %55 ], [ %54, %52 ], [ %50, %49 ], [ %66, %65 ], [ %59, %58 ], [ %64, %60 ], [ %71, %67 ]
  store i32 %73, ptr %3, align 4
  br label %76

74:                                               ; preds = %32
  %75 = icmp eq i32 %47, -110
  br i1 %75, label %76, label %28

76:                                               ; preds = %74, %72, %28
  %77 = phi i32 [ 0, %72 ], [ -110, %74 ], [ -22, %28 ]
  call void @snd_usb_unlock_shutdown(ptr noundef %14) #16
  br label %78

78:                                               ; preds = %76, %15
  %79 = phi i32 [ %77, %76 ], [ -5, %15 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #16
  br label %156

80:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %5) #16
  %81 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 7
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, -4
  %84 = icmp ult i32 %83, 4
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = getelementptr inbounds [4 x i32], ptr @switch.table.get_ctl_value, i32 0, i32 %83
  %87 = load i32, ptr %86, align 4
  br label %88

88:                                               ; preds = %85, %80
  %89 = phi i32 [ %87, %85 ], [ 1, %80 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %5, i8 0, i32 14, i1 false) #16
  %90 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %14) #16
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %154

92:                                               ; preds = %88
  %93 = icmp eq i32 %1, 129
  %94 = select i1 %93, i8 1, i8 2
  %95 = mul nuw nsw i32 %89, 3
  %96 = add nuw nsw i32 %95, 2
  %97 = select i1 %93, i32 %89, i32 %96
  %98 = load ptr, ptr %0, align 4
  %99 = getelementptr inbounds %struct.usb_mixer_interface, ptr %98, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %100, i32 0, i32 2
  %102 = load i8, ptr %101, align 2
  %103 = zext i8 %102 to i32
  %104 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 3
  %105 = load i32, ptr %104, align 4
  %106 = shl i32 %105, 8
  %107 = or i32 %106, %103
  %108 = getelementptr inbounds %struct.snd_usb_audio, ptr %14, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = load i32, ptr %109, align 8
  %111 = shl i32 %110, 8
  %112 = or i32 %111, -2147483520
  %113 = trunc i32 %9 to i16
  %114 = trunc i32 %107 to i16
  %115 = trunc i32 %97 to i16
  %116 = call i32 @snd_usb_ctl_msg(ptr noundef %109, i32 noundef %112, i8 noundef zeroext %94, i8 noundef zeroext -95, i16 noundef zeroext %113, i16 noundef zeroext %114, ptr noundef nonnull %5, i16 noundef zeroext %115) #16
  call void @snd_usb_unlock_shutdown(ptr noundef %14) #16
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %154, label %118

118:                                              ; preds = %92
  switch i32 %1, label %154 [
    i32 129, label %128
    i32 130, label %119
    i32 131, label %121
    i32 132, label %124
  ]

119:                                              ; preds = %118
  %120 = getelementptr inbounds i8, ptr %5, i32 2
  br label %128

121:                                              ; preds = %118
  %122 = getelementptr inbounds i8, ptr %5, i32 2
  %123 = getelementptr i8, ptr %122, i32 %89
  br label %128

124:                                              ; preds = %118
  %125 = getelementptr inbounds i8, ptr %5, i32 2
  %126 = shl nuw nsw i32 %89, 1
  %127 = getelementptr i8, ptr %125, i32 %126
  br label %128

128:                                              ; preds = %124, %121, %119, %118
  %129 = phi ptr [ %127, %124 ], [ %123, %121 ], [ %120, %119 ], [ %5, %118 ]
  %130 = call i32 @snd_usb_combine_bytes(ptr noundef %129, i32 noundef %89) #16
  %131 = load i32, ptr %81, align 4
  switch i32 %131, label %152 [
    i32 0, label %132
    i32 1, label %135
    i32 3, label %138
    i32 2, label %140
    i32 5, label %145
    i32 4, label %147
  ]

132:                                              ; preds = %128
  %133 = icmp ne i32 %130, 0
  %134 = zext i1 %133 to i32
  br label %152

135:                                              ; preds = %128
  %136 = icmp eq i32 %130, 0
  %137 = zext i1 %136 to i32
  br label %152

138:                                              ; preds = %128
  %139 = and i32 %130, 255
  br label %152

140:                                              ; preds = %128
  %141 = and i32 %130, 255
  %142 = icmp ugt i32 %141, 127
  %143 = select i1 %142, i32 -256, i32 0
  %144 = or i32 %143, %141
  br label %152

145:                                              ; preds = %128
  %146 = and i32 %130, 65535
  br label %152

147:                                              ; preds = %128
  %148 = and i32 %130, 65535
  %149 = icmp ugt i32 %148, 32767
  %150 = select i1 %149, i32 -65536, i32 0
  %151 = or i32 %150, %148
  br label %152

152:                                              ; preds = %147, %145, %140, %138, %135, %132, %128
  %153 = phi i32 [ %137, %135 ], [ %134, %132 ], [ %130, %128 ], [ %146, %145 ], [ %139, %138 ], [ %144, %140 ], [ %151, %147 ]
  store i32 %153, ptr %3, align 4
  br label %154

154:                                              ; preds = %152, %118, %92, %88
  %155 = phi i32 [ 0, %152 ], [ -5, %88 ], [ %116, %92 ], [ -22, %118 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %5) #16
  br label %156

156:                                              ; preds = %154, %78
  %157 = phi i32 [ %79, %78 ], [ %155, %154 ]
  ret i32 %157
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_combine_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mixer_ctl_feature_info(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, 2
  %8 = select i1 %7, i32 1, i32 2
  %9 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 %11, ptr %12, align 8
  %13 = load i32, ptr %5, align 4
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %16, align 8
  br label %51

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 15
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  tail call fastcc void @get_min_max_with_quirks(ptr noundef %4, i32 noundef 0, ptr noundef %0)
  %22 = load i8, ptr %18, align 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 11
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 12
  %28 = load i32, ptr %27, align 4
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %39, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 1, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, -268435473
  store i32 %33, ptr %31, align 4
  %34 = load ptr, ptr %4, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.snd_usb_audio, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %37, i32 noundef 2, ptr noundef %38) #16
  br label %39

39:                                               ; preds = %30, %24, %21, %17
  %40 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %40, align 8
  %41 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 8
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 10
  %46 = load i32, ptr %45, align 4
  %47 = xor i32 %44, -1
  %48 = add i32 %42, %47
  %49 = add i32 %48, %46
  %50 = sdiv i32 %49, %46
  br label %51

51:                                               ; preds = %39, %15
  %52 = phi i32 [ %50, %39 ], [ 1, %15 ]
  %53 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 %52, ptr %53, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mixer_ctl_feature_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 13
  br i1 %11, label %78, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 1
  %15 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 10
  %16 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 9
  br label %17

17:                                               ; preds = %76, %13
  %18 = phi i32 [ %10, %13 ], [ %77, %76 ]
  %19 = phi i32 [ 0, %13 ], [ %73, %76 ]
  %20 = phi i32 [ 0, %13 ], [ %74, %76 ]
  %21 = shl nuw nsw i32 1, %20
  %22 = and i32 %18, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %72, label %24

24:                                               ; preds = %17
  %25 = load i32, ptr %12, align 4
  %26 = shl i32 2, %20
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 14, i32 %19
  %31 = load i32, ptr %30, align 4
  br label %50

32:                                               ; preds = %24
  %33 = add nuw nsw i32 %20, 1
  %34 = load i32, ptr %14, align 4
  %35 = shl i32 %34, 8
  %36 = or i32 %35, %33
  %37 = call fastcc i32 @get_ctl_value(ptr noundef %5, i32 noundef 129, i32 noundef %36, ptr noundef nonnull %3) #16
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = load i32, ptr %12, align 4
  %41 = or i32 %40, %26
  store i32 %41, ptr %12, align 4
  %42 = load i32, ptr %3, align 4
  %43 = getelementptr %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 14, i32 %19
  store i32 %42, ptr %43, align 4
  br label %50

44:                                               ; preds = %32
  %45 = load ptr, ptr %5, align 4
  %46 = getelementptr inbounds %struct.usb_mixer_interface, ptr %45, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 %37, i32 0
  br label %124

50:                                               ; preds = %39, %29
  %51 = phi i32 [ %31, %29 ], [ %42, %39 ]
  %52 = load i32, ptr %15, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 1, ptr %15, align 4
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i32 [ 1, %54 ], [ %52, %50 ]
  %57 = load i32, ptr %6, align 4
  %58 = icmp slt i32 %51, %57
  br i1 %58, label %68, label %59

59:                                               ; preds = %55
  %60 = load i32, ptr %16, align 4
  %61 = icmp sgt i32 %60, %51
  %62 = sub i32 %51, %57
  %63 = xor i32 %57, -1
  %64 = add i32 %56, %63
  %65 = add i32 %64, %60
  %66 = select i1 %61, i32 %62, i32 %65
  %67 = sdiv i32 %66, %56
  br label %68

68:                                               ; preds = %59, %55
  %69 = phi i32 [ 0, %55 ], [ %67, %59 ]
  store i32 %69, ptr %3, align 4
  %70 = getelementptr [128 x i32], ptr %8, i32 0, i32 %19
  store i32 %69, ptr %70, align 4
  %71 = add i32 %19, 1
  br label %72

72:                                               ; preds = %68, %17
  %73 = phi i32 [ %71, %68 ], [ %19, %17 ]
  %74 = add nuw nsw i32 %20, 1
  %75 = icmp eq i32 %74, 16
  br i1 %75, label %124, label %76

76:                                               ; preds = %72
  %77 = load i32, ptr %9, align 4
  br label %17

78:                                               ; preds = %2
  %79 = load i32, ptr %12, align 4
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = getelementptr %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 14, i32 0
  %84 = load i32, ptr %83, align 4
  store i32 %84, ptr %3, align 4
  br label %102

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = shl i32 %87, 8
  %89 = call fastcc i32 @get_ctl_value(ptr noundef %5, i32 noundef 129, i32 noundef %88, ptr noundef nonnull %3) #16
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %85
  %92 = load i32, ptr %12, align 4
  %93 = or i32 %92, 1
  store i32 %93, ptr %12, align 4
  %94 = load i32, ptr %3, align 4
  %95 = getelementptr %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 14, i32 0
  store i32 %94, ptr %95, align 4
  br label %102

96:                                               ; preds = %85
  %97 = load ptr, ptr %5, align 4
  %98 = getelementptr inbounds %struct.usb_mixer_interface, ptr %97, i32 0, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, i32 %89, i32 0
  br label %124

102:                                              ; preds = %91, %82
  %103 = phi i32 [ %84, %82 ], [ %94, %91 ]
  %104 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 10
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 1, ptr %104, align 4
  br label %108

108:                                              ; preds = %107, %102
  %109 = phi i32 [ 1, %107 ], [ %105, %102 ]
  %110 = load i32, ptr %6, align 4
  %111 = icmp slt i32 %103, %110
  br i1 %111, label %122, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 9
  %114 = load i32, ptr %113, align 4
  %115 = icmp sgt i32 %114, %103
  %116 = sub i32 %103, %110
  %117 = xor i32 %110, -1
  %118 = add i32 %109, %117
  %119 = add i32 %118, %114
  %120 = select i1 %115, i32 %116, i32 %119
  %121 = sdiv i32 %120, %109
  br label %122

122:                                              ; preds = %112, %108
  %123 = phi i32 [ 0, %108 ], [ %121, %112 ]
  store i32 %123, ptr %8, align 8
  br label %124

124:                                              ; preds = %122, %96, %72, %44
  %125 = phi i32 [ %49, %44 ], [ %101, %96 ], [ 0, %122 ], [ 0, %72 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %125
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mixer_ctl_feature_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 13
  br i1 %8, label %95, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 1
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %13 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 10
  %14 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 8
  %15 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 9
  %16 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 4
  br label %17

17:                                               ; preds = %93, %10
  %18 = phi i32 [ %7, %10 ], [ %94, %93 ]
  %19 = phi i32 [ 0, %10 ], [ %91, %93 ]
  %20 = phi i32 [ 0, %10 ], [ %90, %93 ]
  %21 = phi i32 [ 0, %10 ], [ %25, %93 ]
  %22 = shl nuw nsw i32 1, %21
  %23 = and i32 %18, %22
  %24 = icmp eq i32 %23, 0
  %25 = add nuw nsw i32 %21, 1
  br i1 %24, label %89, label %26

26:                                               ; preds = %17
  %27 = load i32, ptr %9, align 4
  %28 = shl i32 2, %21
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = getelementptr %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 14, i32 %20
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %3, align 4
  br label %51

34:                                               ; preds = %26
  %35 = load i32, ptr %11, align 4
  %36 = shl i32 %35, 8
  %37 = or i32 %36, %25
  %38 = call fastcc i32 @get_ctl_value(ptr noundef %5, i32 noundef 129, i32 noundef %37, ptr noundef nonnull %3) #16
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load i32, ptr %9, align 4
  %42 = or i32 %41, %28
  store i32 %42, ptr %9, align 4
  %43 = load i32, ptr %3, align 4
  %44 = getelementptr %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 14, i32 %20
  store i32 %43, ptr %44, align 4
  br label %51

45:                                               ; preds = %34
  %46 = load ptr, ptr %5, align 4
  %47 = getelementptr inbounds %struct.usb_mixer_interface, ptr %46, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 %38, i32 0
  br label %158

51:                                               ; preds = %40, %31
  %52 = phi i32 [ %33, %31 ], [ %43, %40 ]
  %53 = getelementptr [128 x i32], ptr %12, i32 0, i32 %20
  %54 = load i32, ptr %53, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, ptr %14, align 4
  br label %69

58:                                               ; preds = %51
  %59 = load i32, ptr %13, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 1, ptr %13, align 4
  br label %62

62:                                               ; preds = %61, %58
  %63 = phi i32 [ 1, %61 ], [ %59, %58 ]
  %64 = mul i32 %63, %54
  %65 = load i32, ptr %14, align 4
  %66 = add i32 %64, %65
  %67 = load i32, ptr %15, align 4
  %68 = tail call i32 @llvm.smin.i32(i32 %66, i32 %67) #16
  br label %69

69:                                               ; preds = %62, %56
  %70 = phi i32 [ %57, %56 ], [ %68, %62 ]
  %71 = icmp eq i32 %52, %70
  br i1 %71, label %86, label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %16, align 4
  %74 = and i32 %73, %22
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load i32, ptr %11, align 4
  %78 = shl i32 %77, 8
  %79 = or i32 %78, %25
  %80 = tail call i32 @snd_usb_mixer_set_ctl_value(ptr noundef %5, i32 noundef 1, i32 noundef %79, i32 noundef %70) #16
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %76
  %83 = load i32, ptr %9, align 4
  %84 = or i32 %83, %28
  store i32 %84, ptr %9, align 4
  %85 = getelementptr %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 14, i32 %20
  store i32 %70, ptr %85, align 4
  br label %86

86:                                               ; preds = %82, %76, %72, %69
  %87 = phi i32 [ %19, %69 ], [ 1, %72 ], [ 1, %76 ], [ 1, %82 ]
  %88 = add i32 %20, 1
  br label %89

89:                                               ; preds = %86, %17
  %90 = phi i32 [ %88, %86 ], [ %20, %17 ]
  %91 = phi i32 [ %87, %86 ], [ %19, %17 ]
  %92 = icmp eq i32 %25, 16
  br i1 %92, label %158, label %93

93:                                               ; preds = %89
  %94 = load i32, ptr %6, align 4
  br label %17

95:                                               ; preds = %2
  %96 = load i32, ptr %9, align 4
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = getelementptr %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 14, i32 0
  %101 = load i32, ptr %100, align 4
  store i32 %101, ptr %3, align 4
  br label %119

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = shl i32 %104, 8
  %106 = call fastcc i32 @get_ctl_value(ptr noundef %5, i32 noundef 129, i32 noundef %105, ptr noundef nonnull %3) #16
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %102
  %109 = load i32, ptr %9, align 4
  %110 = or i32 %109, 1
  store i32 %110, ptr %9, align 4
  %111 = load i32, ptr %3, align 4
  %112 = getelementptr %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 14, i32 0
  store i32 %111, ptr %112, align 4
  br label %119

113:                                              ; preds = %102
  %114 = load ptr, ptr %5, align 4
  %115 = getelementptr inbounds %struct.usb_mixer_interface, ptr %114, i32 0, i32 3
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %117, i32 %106, i32 0
  br label %158

119:                                              ; preds = %108, %99
  %120 = phi i32 [ %101, %99 ], [ %111, %108 ]
  %121 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %122 = load i32, ptr %121, align 8
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 8
  %126 = load i32, ptr %125, align 4
  br label %141

127:                                              ; preds = %119
  %128 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 10
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 1, ptr %128, align 4
  br label %132

132:                                              ; preds = %131, %127
  %133 = phi i32 [ 1, %131 ], [ %129, %127 ]
  %134 = mul i32 %133, %122
  %135 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 8
  %136 = load i32, ptr %135, align 4
  %137 = add i32 %134, %136
  %138 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 9
  %139 = load i32, ptr %138, align 4
  %140 = tail call i32 @llvm.smin.i32(i32 %137, i32 %139) #16
  br label %141

141:                                              ; preds = %132, %124
  %142 = phi i32 [ %126, %124 ], [ %140, %132 ]
  %143 = icmp eq i32 %142, %120
  br i1 %143, label %158, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 5
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 1
  %150 = load i32, ptr %149, align 4
  %151 = shl i32 %150, 8
  %152 = tail call i32 @snd_usb_mixer_set_ctl_value(ptr noundef %5, i32 noundef 1, i32 noundef %151, i32 noundef %142) #16
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %148
  %155 = load i32, ptr %9, align 4
  %156 = or i32 %155, 1
  store i32 %156, ptr %9, align 4
  %157 = getelementptr %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 14, i32 0
  store i32 %142, ptr %157, align 4
  br label %158

158:                                              ; preds = %154, %148, %144, %141, %113, %89, %45
  %159 = phi i32 [ %50, %45 ], [ %118, %113 ], [ 0, %141 ], [ 1, %144 ], [ 1, %148 ], [ 1, %154 ], [ %91, %89 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @get_min_max_with_quirks(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 8
  store i32 %1, ptr %6, align 4
  %7 = add i32 %1, 1
  %8 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 9
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 10
  store i32 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 12
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 11
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %226, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %67, label %19

19:                                               ; preds = %15
  %20 = and i32 %17, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %67

22:                                               ; preds = %19
  %23 = and i32 %17, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %67

25:                                               ; preds = %22
  %26 = and i32 %17, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %25
  %29 = and i32 %17, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %28
  %32 = and i32 %17, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %31
  %35 = and i32 %17, 32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %34
  %38 = and i32 %17, 64
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %37
  %41 = and i32 %17, 128
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %40
  %44 = and i32 %17, 256
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %43
  %47 = and i32 %17, 512
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = and i32 %17, 1024
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = and i32 %17, 2048
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = and i32 %17, 4096
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = and i32 %17, 8192
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = and i32 %17, 16384
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = lshr i32 %17, 11
  %66 = and i32 %65, 16
  br label %67

67:                                               ; preds = %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %15
  %68 = phi i32 [ 0, %15 ], [ 1, %19 ], [ 2, %22 ], [ 3, %25 ], [ 4, %28 ], [ 5, %31 ], [ 6, %34 ], [ 7, %37 ], [ 8, %40 ], [ 9, %43 ], [ 10, %46 ], [ 11, %49 ], [ 12, %52 ], [ 13, %55 ], [ 14, %58 ], [ 15, %61 ], [ %66, %64 ]
  %69 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = shl i32 %70, 8
  %72 = or i32 %71, %68
  %73 = tail call fastcc i32 @get_ctl_value(ptr noundef %0, i32 noundef 131, i32 noundef %72, ptr noundef %8)
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %212, label %75

75:                                               ; preds = %67
  %76 = load i32, ptr %69, align 4
  %77 = shl i32 %76, 8
  %78 = or i32 %77, %68
  %79 = tail call fastcc i32 @get_ctl_value(ptr noundef %0, i32 noundef 130, i32 noundef %78, ptr noundef %6)
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %212, label %81

81:                                               ; preds = %75
  %82 = load i32, ptr %69, align 4
  %83 = shl i32 %82, 8
  %84 = or i32 %83, %68
  %85 = tail call fastcc i32 @get_ctl_value(ptr noundef %0, i32 noundef 132, i32 noundef %84, ptr noundef %9)
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %119, label %87

87:                                               ; preds = %81
  %88 = load ptr, ptr %0, align 4
  %89 = getelementptr inbounds %struct.usb_mixer_interface, ptr %88, i32 0, i32 6
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %114

92:                                               ; preds = %87
  %93 = load i32, ptr %9, align 4
  %94 = icmp sgt i32 %93, 1
  br i1 %94, label %95, label %107

95:                                               ; preds = %103, %92
  %96 = phi i32 [ %105, %103 ], [ %93, %92 ]
  %97 = load i32, ptr %69, align 4
  %98 = shl i32 %97, 8
  %99 = or i32 %98, %68
  %100 = lshr i32 %96, 1
  %101 = tail call i32 @snd_usb_mixer_set_ctl_value(ptr noundef %0, i32 noundef 4, i32 noundef %99, i32 noundef %100)
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %95
  %104 = load i32, ptr %9, align 4
  %105 = sdiv i32 %104, 2
  store i32 %105, ptr %9, align 4
  %106 = icmp sgt i32 %104, 3
  br i1 %106, label %95, label %107

107:                                              ; preds = %103, %95, %92
  %108 = load i32, ptr %69, align 4
  %109 = shl i32 %108, 8
  %110 = or i32 %109, %68
  %111 = tail call fastcc i32 @get_ctl_value(ptr noundef %0, i32 noundef 132, i32 noundef %110, ptr noundef %9)
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i32 %93, ptr %9, align 4
  br label %116

114:                                              ; preds = %107, %87
  %115 = load i32, ptr %9, align 4
  br label %116

116:                                              ; preds = %114, %113
  %117 = phi i32 [ %115, %114 ], [ %93, %113 ]
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116, %81
  store i32 1, ptr %9, align 4
  br label %120

120:                                              ; preds = %119, %116
  %121 = phi i32 [ %117, %116 ], [ 1, %119 ]
  %122 = load i32, ptr %6, align 4
  %123 = add i32 %121, %122
  %124 = load i32, ptr %8, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %226

126:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !8
  %127 = load i32, ptr %69, align 4
  %128 = shl i32 %127, 8
  %129 = or i32 %128, %68
  %130 = call fastcc i32 @get_ctl_value(ptr noundef %0, i32 noundef 129, i32 noundef %129, ptr noundef nonnull %4) #16
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %211, label %132

132:                                              ; preds = %126
  %133 = load i32, ptr %4, align 4
  %134 = icmp eq i32 %68, 0
  %135 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 4
  %136 = add nsw i32 %68, -1
  %137 = shl nuw i32 1, %136
  %138 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 5
  %139 = shl nuw i32 1, %68
  %140 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 13
  %141 = getelementptr %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 14, i32 0
  %142 = load i32, ptr %8, align 4
  %143 = icmp slt i32 %133, %142
  %144 = load i32, ptr %9, align 4
  %145 = sub i32 0, %144
  %146 = select i1 %143, i32 %144, i32 %145
  %147 = add i32 %133, %146
  %148 = load i32, ptr %6, align 4
  %149 = icmp slt i32 %147, %148
  %150 = icmp sgt i32 %147, %142
  %151 = select i1 %149, i1 true, i1 %150
  br i1 %151, label %177, label %152

152:                                              ; preds = %181, %132
  %153 = phi i32 [ %188, %181 ], [ %147, %132 ]
  br i1 %134, label %154, label %156

154:                                              ; preds = %152
  %155 = load i32, ptr %138, align 4
  br label %159

156:                                              ; preds = %152
  %157 = load i32, ptr %135, align 4
  %158 = and i32 %157, %137
  br label %159

159:                                              ; preds = %156, %154
  %160 = phi i32 [ %155, %154 ], [ %158, %156 ]
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %159
  %163 = load i32, ptr %69, align 4
  %164 = shl i32 %163, 8
  %165 = or i32 %164, %68
  %166 = tail call i32 @snd_usb_mixer_set_ctl_value(ptr noundef %0, i32 noundef 1, i32 noundef %165, i32 noundef %153) #16
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %177, label %168

168:                                              ; preds = %162
  %169 = load i32, ptr %140, align 4
  %170 = or i32 %169, %139
  store i32 %170, ptr %140, align 4
  store i32 %153, ptr %141, align 4
  br label %171

171:                                              ; preds = %168, %159
  %172 = load i32, ptr %69, align 4
  %173 = shl i32 %172, 8
  %174 = or i32 %173, %68
  %175 = call fastcc i32 @get_ctl_value(ptr noundef %0, i32 noundef 129, i32 noundef %174, ptr noundef nonnull %5) #16
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %181, %171, %162, %132
  store i32 %121, ptr %9, align 4
  br label %193

178:                                              ; preds = %171
  %179 = load i32, ptr %5, align 4
  %180 = icmp eq i32 %153, %179
  br i1 %180, label %193, label %181

181:                                              ; preds = %178
  %182 = load i32, ptr %9, align 4
  %183 = shl i32 %182, 1
  store i32 %183, ptr %9, align 4
  %184 = load i32, ptr %8, align 4
  %185 = icmp slt i32 %133, %184
  %186 = sub i32 0, %183
  %187 = select i1 %185, i32 %183, i32 %186
  %188 = add i32 %133, %187
  %189 = load i32, ptr %6, align 4
  %190 = icmp slt i32 %188, %189
  %191 = icmp sgt i32 %188, %184
  %192 = select i1 %190, i1 true, i1 %191
  br i1 %192, label %177, label %152

193:                                              ; preds = %178, %177
  br i1 %134, label %194, label %196

194:                                              ; preds = %193
  %195 = load i32, ptr %138, align 4
  br label %199

196:                                              ; preds = %193
  %197 = load i32, ptr %135, align 4
  %198 = and i32 %197, %137
  br label %199

199:                                              ; preds = %196, %194
  %200 = phi i32 [ %195, %194 ], [ %198, %196 ]
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %199
  %203 = load i32, ptr %69, align 4
  %204 = shl i32 %203, 8
  %205 = or i32 %204, %68
  %206 = tail call i32 @snd_usb_mixer_set_ctl_value(ptr noundef %0, i32 noundef 1, i32 noundef %205, i32 noundef %133) #16
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %202
  %209 = load i32, ptr %140, align 4
  %210 = or i32 %209, %139
  store i32 %210, ptr %140, align 4
  store i32 %133, ptr %141, align 4
  br label %211

211:                                              ; preds = %208, %202, %199, %126
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %226

212:                                              ; preds = %75, %67
  %213 = load ptr, ptr %0, align 4
  %214 = load ptr, ptr %213, align 4
  %215 = getelementptr inbounds %struct.snd_usb_audio, ptr %214, i32 0, i32 1
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.usb_device, ptr %216, i32 0, i32 15
  %218 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 3
  %219 = load i32, ptr %218, align 4
  %220 = getelementptr inbounds %struct.usb_mixer_interface, ptr %213, i32 0, i32 1
  %221 = load ptr, ptr %220, align 4
  %222 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %221, i32 0, i32 2
  %223 = load i8, ptr %222, align 2
  %224 = zext i8 %223 to i32
  %225 = load i32, ptr %69, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %217, ptr noundef nonnull @.str.5, i32 noundef %219, i32 noundef %224, i32 noundef %225, i32 noundef %219) #20
  br label %438

226:                                              ; preds = %211, %120, %3
  %227 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 15
  store i8 1, ptr %227, align 4
  %228 = icmp eq ptr %2, null
  br i1 %228, label %328, label %229

229:                                              ; preds = %226
  %230 = load ptr, ptr %0, align 4
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.snd_usb_audio, ptr %231, i32 0, i32 4
  %233 = load i32, ptr %232, align 4
  switch i32 %233, label %328 [
    i32 123936816, label %234
    i32 123936817, label %234
    i32 123936897, label %257
    i32 123936896, label %257
    i32 227279107, label %275
    i32 74514689, label %283
    i32 74514692, label %283
    i32 74514693, label %283
    i32 108138561, label %283
    i32 74254756, label %294
    i32 74254343, label %302
    i32 74254344, label %302
    i32 74254345, label %302
    i32 74254361, label %302
    i32 74254363, label %302
    i32 74254365, label %302
    i32 74254373, label %302
    i32 74254374, label %302
    i32 74254538, label %302
    i32 74254737, label %302
    i32 74254754, label %302
    i32 76886082, label %310
    i32 304359973, label %320
  ]

234:                                              ; preds = %229, %229
  %235 = getelementptr inbounds %struct.snd_kcontrol, ptr %2, i32 0, i32 1, i32 4
  %236 = tail call i32 @strcmp(ptr noundef %235, ptr noundef nonnull dereferenceable(16) @.str.7) #16
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %234
  store i32 0, ptr %6, align 4
  store i32 65535, ptr %8, align 4
  store i32 230, ptr %9, align 4
  br label %328

239:                                              ; preds = %234
  %240 = tail call i32 @strcmp(ptr noundef %235, ptr noundef nonnull dereferenceable(14) @.str.8) #16
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %239
  %243 = tail call i32 @strcmp(ptr noundef %235, ptr noundef nonnull dereferenceable(23) @.str.9) #16
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %242, %239
  store i32 0, ptr %6, align 4
  store i32 255, ptr %8, align 4
  br label %328

246:                                              ; preds = %242
  %247 = tail call ptr @strstr(ptr noundef %235, ptr noundef nonnull @.str.10) #16
  %248 = icmp eq ptr %247, null
  br i1 %248, label %250, label %249

249:                                              ; preds = %246
  store i32 46854, ptr %6, align 4
  store i32 65403, ptr %8, align 4
  store i32 115, ptr %9, align 4
  br label %328

250:                                              ; preds = %246
  %251 = tail call ptr @strstr(ptr noundef %235, ptr noundef nonnull @.str.11) #16
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %256

253:                                              ; preds = %250
  %254 = tail call ptr @strstr(ptr noundef %235, ptr noundef nonnull @.str.12) #16
  %255 = icmp eq ptr %254, null
  br i1 %255, label %328, label %256

256:                                              ; preds = %253, %250
  store i32 46587, ptr %6, align 4
  store i32 64766, ptr %8, align 4
  store i32 115, ptr %9, align 4
  br label %328

257:                                              ; preds = %229, %229
  %258 = getelementptr inbounds %struct.snd_kcontrol, ptr %2, i32 0, i32 1, i32 4
  %259 = tail call i32 @strcmp(ptr noundef %258, ptr noundef nonnull dereferenceable(16) @.str.7) #16
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.snd_usb_audio, ptr %231, i32 0, i32 1
  %263 = load ptr, ptr %262, align 4
  %264 = getelementptr inbounds %struct.usb_device, ptr %263, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %264, ptr noundef nonnull @.str.13) #20
  store i32 0, ptr %6, align 4
  store i32 32512, ptr %8, align 4
  store i32 256, ptr %9, align 4
  br label %328

265:                                              ; preds = %257
  %266 = tail call i32 @strcmp(ptr noundef %258, ptr noundef nonnull dereferenceable(14) @.str.8) #16
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %271, label %268

268:                                              ; preds = %265
  %269 = tail call i32 @strcmp(ptr noundef %258, ptr noundef nonnull dereferenceable(23) @.str.9) #16
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %328

271:                                              ; preds = %268, %265
  %272 = getelementptr inbounds %struct.snd_usb_audio, ptr %231, i32 0, i32 1
  %273 = load ptr, ptr %272, align 4
  %274 = getelementptr inbounds %struct.usb_device, ptr %273, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %274, ptr noundef nonnull @.str.14) #20
  store i32 0, ptr %6, align 4
  store i32 127, ptr %8, align 4
  br label %328

275:                                              ; preds = %229
  %276 = getelementptr inbounds %struct.snd_kcontrol, ptr %2, i32 0, i32 1, i32 4
  %277 = tail call i32 @strcmp(ptr noundef %276, ptr noundef nonnull dereferenceable(20) @.str.15) #16
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %328

279:                                              ; preds = %275
  %280 = getelementptr inbounds %struct.snd_usb_audio, ptr %231, i32 0, i32 1
  %281 = load ptr, ptr %280, align 4
  %282 = getelementptr inbounds %struct.usb_device, ptr %281, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %282, ptr noundef nonnull @.str.16) #20
  store i32 -256, ptr %6, align 4
  br label %328

283:                                              ; preds = %229, %229, %229, %229
  %284 = getelementptr inbounds %struct.snd_kcontrol, ptr %2, i32 0, i32 1, i32 4
  %285 = tail call i32 @strcmp(ptr noundef %284, ptr noundef nonnull dereferenceable(20) @.str.15) #16
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %328

287:                                              ; preds = %283
  %288 = load i32, ptr %6, align 4
  %289 = icmp eq i32 %288, -15616
  br i1 %289, label %290, label %328

290:                                              ; preds = %287
  %291 = getelementptr inbounds %struct.snd_usb_audio, ptr %231, i32 0, i32 1
  %292 = load ptr, ptr %291, align 4
  %293 = getelementptr inbounds %struct.usb_device, ptr %292, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %293, ptr noundef nonnull @.str.17) #20
  store i32 -256, ptr %8, align 4
  br label %328

294:                                              ; preds = %229
  %295 = getelementptr inbounds %struct.snd_kcontrol, ptr %2, i32 0, i32 1, i32 4
  %296 = tail call i32 @strcmp(ptr noundef %295, ptr noundef nonnull dereferenceable(19) @.str.18) #16
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %328

298:                                              ; preds = %294
  %299 = getelementptr inbounds %struct.snd_usb_audio, ptr %231, i32 0, i32 1
  %300 = load ptr, ptr %299, align 4
  %301 = getelementptr inbounds %struct.usb_device, ptr %300, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %301, ptr noundef nonnull @.str.19) #20
  store i32 6080, ptr %6, align 4
  store i32 8768, ptr %8, align 4
  store i32 192, ptr %9, align 4
  br label %328

302:                                              ; preds = %229, %229, %229, %229, %229, %229, %229, %229, %229, %229, %229
  %303 = getelementptr inbounds %struct.snd_kcontrol, ptr %2, i32 0, i32 1, i32 4
  %304 = tail call i32 @strcmp(ptr noundef %303, ptr noundef nonnull dereferenceable(19) @.str.18) #16
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %328

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.snd_usb_audio, ptr %231, i32 0, i32 1
  %308 = load ptr, ptr %307, align 4
  %309 = getelementptr inbounds %struct.usb_device, ptr %308, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %309, ptr noundef nonnull @.str.20) #20
  store i32 384, ptr %9, align 4
  br label %328

310:                                              ; preds = %229
  %311 = getelementptr inbounds %struct.snd_kcontrol, ptr %2, i32 0, i32 1, i32 4
  %312 = tail call ptr @strstr(ptr noundef %311, ptr noundef nonnull @.str.11) #16
  %313 = icmp eq ptr %312, null
  br i1 %313, label %314, label %317

314:                                              ; preds = %310
  %315 = tail call ptr @strstr(ptr noundef %311, ptr noundef nonnull @.str.21) #16
  %316 = icmp eq ptr %315, null
  br i1 %316, label %328, label %317

317:                                              ; preds = %314, %310
  %318 = load i32, ptr %6, align 4
  %319 = ashr i32 %318, 8
  store i32 %319, ptr %6, align 4
  store i32 0, ptr %8, align 4
  store i32 1, ptr %9, align 4
  br label %328

320:                                              ; preds = %229
  %321 = getelementptr inbounds %struct.snd_kcontrol, ptr %2, i32 0, i32 1, i32 4
  %322 = tail call i32 @strcmp(ptr noundef %321, ptr noundef nonnull dereferenceable(19) @.str.18) #16
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.snd_usb_audio, ptr %231, i32 0, i32 1
  %326 = load ptr, ptr %325, align 4
  %327 = getelementptr inbounds %struct.usb_device, ptr %326, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %327, ptr noundef nonnull @.str.22) #20
  store i32 16, ptr %9, align 4
  br label %328

328:                                              ; preds = %324, %320, %317, %314, %306, %302, %298, %294, %290, %287, %283, %279, %275, %271, %268, %261, %256, %253, %249, %245, %238, %229, %226
  %329 = load i32, ptr %6, align 4
  %330 = load i32, ptr %12, align 4
  switch i32 %330, label %369 [
    i32 0, label %331
    i32 1, label %335
    i32 3, label %339
    i32 2, label %344
    i32 5, label %356
    i32 4, label %361
  ]

331:                                              ; preds = %328
  store i32 0, ptr %11, align 4
  %332 = load i32, ptr %8, align 4
  %333 = icmp ne i32 %332, 0
  %334 = zext i1 %333 to i32
  br label %388

335:                                              ; preds = %328
  store i32 0, ptr %11, align 4
  %336 = load i32, ptr %8, align 4
  %337 = icmp eq i32 %336, 0
  %338 = zext i1 %337 to i32
  br label %388

339:                                              ; preds = %328
  %340 = and i32 %329, 255
  %341 = mul nuw nsw i32 %340, 100
  %342 = lshr i32 %341, 8
  store i32 %342, ptr %11, align 4
  %343 = load i32, ptr %8, align 4
  br label %373

344:                                              ; preds = %328
  %345 = and i32 %329, 255
  %346 = icmp ugt i32 %345, 127
  %347 = select i1 %346, i32 -256, i32 0
  %348 = or i32 %347, %345
  %349 = mul nsw i32 %348, 100
  %350 = sdiv i32 %349, 256
  store i32 %350, ptr %11, align 4
  %351 = load i32, ptr %8, align 4
  %352 = and i32 %351, 255
  %353 = icmp ugt i32 %352, 127
  %354 = select i1 %353, i32 -256, i32 0
  %355 = or i32 %354, %352
  br label %388

356:                                              ; preds = %328
  %357 = and i32 %329, 65535
  %358 = mul nuw nsw i32 %357, 100
  %359 = lshr i32 %358, 8
  store i32 %359, ptr %11, align 4
  %360 = load i32, ptr %8, align 4
  br label %377

361:                                              ; preds = %328
  %362 = and i32 %329, 65535
  %363 = icmp ugt i32 %362, 32767
  %364 = select i1 %363, i32 -65536, i32 0
  %365 = or i32 %364, %362
  %366 = mul nsw i32 %365, 100
  %367 = sdiv i32 %366, 256
  store i32 %367, ptr %11, align 4
  %368 = load i32, ptr %8, align 4
  br label %381

369:                                              ; preds = %328
  %370 = mul i32 %329, 100
  %371 = sdiv i32 %370, 256
  store i32 %371, ptr %11, align 4
  %372 = load i32, ptr %8, align 4
  switch i32 %330, label %388 [
    i32 4, label %381
    i32 5, label %377
    i32 3, label %373
  ]

373:                                              ; preds = %369, %339
  %374 = phi i32 [ %343, %339 ], [ %372, %369 ]
  %375 = phi i32 [ %342, %339 ], [ %371, %369 ]
  %376 = and i32 %374, 255
  br label %388

377:                                              ; preds = %369, %356
  %378 = phi i32 [ %360, %356 ], [ %372, %369 ]
  %379 = phi i32 [ %359, %356 ], [ %371, %369 ]
  %380 = and i32 %378, 65535
  br label %388

381:                                              ; preds = %369, %361
  %382 = phi i32 [ %368, %361 ], [ %372, %369 ]
  %383 = phi i32 [ %367, %361 ], [ %371, %369 ]
  %384 = and i32 %382, 65535
  %385 = icmp ugt i32 %384, 32767
  %386 = select i1 %385, i32 -65536, i32 0
  %387 = or i32 %386, %384
  br label %388

388:                                              ; preds = %381, %377, %373, %369, %344, %335, %331
  %389 = phi i32 [ 0, %335 ], [ 0, %331 ], [ %371, %369 ], [ %379, %377 ], [ %375, %373 ], [ %350, %344 ], [ %383, %381 ]
  %390 = phi i32 [ %338, %335 ], [ %334, %331 ], [ %372, %369 ], [ %380, %377 ], [ %376, %373 ], [ %355, %344 ], [ %387, %381 ]
  %391 = mul i32 %390, 100
  %392 = sdiv i32 %391, 256
  store i32 %392, ptr %10, align 4
  %393 = icmp sgt i32 %389, %392
  br i1 %393, label %394, label %401

394:                                              ; preds = %388
  %395 = icmp slt i32 %389, 0
  br i1 %395, label %416, label %396

396:                                              ; preds = %394
  %397 = icmp eq i32 %389, 0
  br i1 %397, label %399, label %398

398:                                              ; preds = %396
  store i32 0, ptr %11, align 4
  br label %399

399:                                              ; preds = %398, %396
  %400 = icmp slt i32 %391, -255
  br i1 %400, label %438, label %418

401:                                              ; preds = %388
  %402 = icmp slt i32 %391, -2457599
  br i1 %402, label %403, label %418

403:                                              ; preds = %401
  %404 = load ptr, ptr %0, align 4
  %405 = load ptr, ptr %404, align 4
  %406 = getelementptr inbounds %struct.snd_usb_audio, ptr %405, i32 0, i32 1
  %407 = load ptr, ptr %406, align 4
  %408 = getelementptr inbounds %struct.usb_device, ptr %407, i32 0, i32 15
  %409 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 3
  %410 = load i32, ptr %409, align 4
  %411 = getelementptr inbounds %struct.usb_mixer_interface, ptr %404, i32 0, i32 1
  %412 = load ptr, ptr %411, align 4
  %413 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %412, i32 0, i32 2
  %414 = load i8, ptr %413, align 2
  %415 = zext i8 %414 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %408, ptr noundef nonnull @.str.6, i32 noundef %410, i32 noundef %415, i32 noundef %389, i32 noundef %392) #20
  store i32 0, ptr %10, align 4
  br label %416

416:                                              ; preds = %403, %394
  %417 = phi ptr [ %11, %403 ], [ %10, %394 ]
  store i32 0, ptr %417, align 4
  br label %418

418:                                              ; preds = %416, %401, %399
  %419 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 2
  %420 = load i32, ptr %419, align 4
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %422, label %423

422:                                              ; preds = %418
  tail call fastcc void @init_cur_mix_raw(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  br label %438

423:                                              ; preds = %436, %418
  %424 = phi i32 [ %437, %436 ], [ %420, %418 ]
  %425 = phi i32 [ %434, %436 ], [ 0, %418 ]
  %426 = phi i32 [ %430, %436 ], [ 0, %418 ]
  %427 = shl nuw nsw i32 1, %426
  %428 = and i32 %424, %427
  %429 = icmp eq i32 %428, 0
  %430 = add nuw nsw i32 %426, 1
  br i1 %429, label %433, label %431

431:                                              ; preds = %423
  tail call fastcc void @init_cur_mix_raw(ptr noundef %0, i32 noundef %430, i32 noundef %425)
  %432 = add i32 %425, 1
  br label %433

433:                                              ; preds = %431, %423
  %434 = phi i32 [ %432, %431 ], [ %425, %423 ]
  %435 = icmp eq i32 %430, 16
  br i1 %435, label %438, label %436

436:                                              ; preds = %433
  %437 = load i32, ptr %419, align 4
  br label %423

438:                                              ; preds = %433, %422, %399, %212
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @init_cur_mix_raw(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = shl nuw i32 1, %1
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %66

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 8
  %14 = or i32 %13, %1
  %15 = call fastcc i32 @get_ctl_value(ptr noundef %0, i32 noundef 129, i32 noundef %14, ptr noundef nonnull %4) #16
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %5, align 4
  %19 = or i32 %18, %7
  store i32 %19, ptr %5, align 4
  %20 = load i32, ptr %4, align 4
  br label %63

21:                                               ; preds = %10
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.usb_mixer_interface, ptr %22, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load ptr, ptr %22, align 4
  %28 = getelementptr inbounds %struct.snd_usb_audio, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  %31 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.usb_mixer_interface, ptr %22, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %34, i32 0, i32 2
  %36 = load i8, ptr %35, align 2
  %37 = zext i8 %36 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.23, i32 noundef %32, i32 noundef %37, i32 noundef %1, i32 noundef %15) #20
  br label %38

38:                                               ; preds = %26, %21
  %39 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 8
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %1, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  br label %51

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %1, -1
  %49 = shl nuw i32 1, %48
  %50 = and i32 %47, %49
  br label %51

51:                                               ; preds = %45, %42
  %52 = phi i32 [ %44, %42 ], [ %50, %45 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = load i32, ptr %11, align 4
  %56 = shl i32 %55, 8
  %57 = or i32 %56, %1
  %58 = tail call i32 @snd_usb_mixer_set_ctl_value(ptr noundef %0, i32 noundef 1, i32 noundef %57, i32 noundef %40) #16
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load i32, ptr %5, align 4
  %62 = or i32 %61, %7
  store i32 %62, ptr %5, align 4
  br label %63

63:                                               ; preds = %60, %17
  %64 = phi i32 [ %20, %17 ], [ %40, %60 ]
  %65 = getelementptr %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 14, i32 %2
  store i32 %64, ptr %65, align 4
  br label %66

66:                                               ; preds = %63, %54, %51, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @build_connector_control(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = load i32, ptr %2, align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %1, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %14, %7
  %11 = phi i32 [ %16, %14 ], [ %8, %7 ]
  %12 = phi ptr [ %15, %14 ], [ %1, %7 ]
  %13 = icmp eq i32 %11, %5
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr %struct.usbmix_name_map, ptr %12, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %10

18:                                               ; preds = %10
  %19 = icmp eq ptr %12, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.usbmix_name_map, ptr %12, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.usbmix_name_map, ptr %12, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %110, label %28

28:                                               ; preds = %24, %20, %18, %14, %7, %4
  %29 = phi ptr [ %12, %24 ], [ null, %18 ], [ %12, %20 ], [ null, %4 ], [ null, %7 ], [ null, %14 ]
  %30 = phi i1 [ false, %24 ], [ true, %18 ], [ false, %20 ], [ true, %4 ], [ true, %7 ], [ true, %14 ]
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 152) #19
  %33 = icmp eq ptr %32, null
  br i1 %33, label %110, label %34

34:                                               ; preds = %28
  %35 = load i32, ptr %2, align 4
  store ptr %0, ptr %32, align 8
  %36 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %32, i32 0, i32 3
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %32, i32 0, i32 5
  store ptr @snd_usb_mixer_dump_cval, ptr %37, align 4
  %38 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %32, i32 0, i32 6
  store ptr @connector_mixer_resume, ptr %38, align 8
  %39 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 32
  %42 = select i1 %41, i32 2, i32 1
  %43 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %32, i32 0, i32 1
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %32, i32 0, i32 7
  store i32 0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %32, i32 0, i32 6
  store i32 1, ptr %45, align 8
  %46 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %32, i32 0, i32 8
  store i32 0, ptr %46, align 8
  %47 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %32, i32 0, i32 9
  store i32 1, ptr %47, align 4
  %48 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @usb_connector_ctl_ro, ptr noundef nonnull %32) #16
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %34
  %51 = load ptr, ptr %0, align 4
  %52 = getelementptr inbounds %struct.snd_usb_audio, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.usb_device, ptr %53, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.43) #20
  tail call void @kfree(ptr noundef nonnull %32) #16
  br label %110

55:                                               ; preds = %34
  %56 = getelementptr inbounds %struct.snd_kcontrol, ptr %48, i32 0, i32 1, i32 4
  br i1 %30, label %64, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.usbmix_name_map, ptr %29, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = tail call i32 @strscpy(ptr noundef %56, ptr noundef nonnull %59, i32 noundef 43) #16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61, %57, %55
  %65 = load ptr, ptr %0, align 4
  %66 = tail call fastcc i32 @get_term_name(ptr noundef %65, ptr noundef %2, ptr noundef %56, i32 noundef 44, i32 noundef 0) #16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = tail call i32 @strscpy(ptr noundef %56, ptr noundef nonnull @.str.113, i32 noundef 44) #16
  br label %70

70:                                               ; preds = %68, %64
  %71 = select i1 %3, ptr @.str.114, ptr @.str.115
  br label %72

72:                                               ; preds = %70, %61
  %73 = phi ptr [ %71, %70 ], [ @.str.111, %61 ]
  %74 = tail call i32 @strlcat(ptr noundef %56, ptr noundef nonnull %73, i32 noundef 44) #16
  %75 = getelementptr inbounds %struct.snd_kcontrol, ptr %48, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %75, align 4
  %76 = load ptr, ptr %32, align 8
  %77 = getelementptr inbounds %struct.snd_kcontrol, ptr %48, i32 0, i32 1
  %78 = load ptr, ptr %76, align 4
  %79 = getelementptr inbounds %struct.snd_usb_audio, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = tail call ptr @snd_ctl_find_id(ptr noundef %80, ptr noundef %77) #16
  %82 = icmp eq ptr %81, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %72
  %84 = getelementptr inbounds %struct.snd_kcontrol, ptr %48, i32 0, i32 1, i32 5
  br label %85

85:                                               ; preds = %85, %83
  %86 = load i32, ptr %84, align 4
  %87 = add i32 %86, 1
  store i32 %87, ptr %84, align 4
  %88 = load ptr, ptr %76, align 4
  %89 = getelementptr inbounds %struct.snd_usb_audio, ptr %88, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = tail call ptr @snd_ctl_find_id(ptr noundef %90, ptr noundef %77) #16
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %85

93:                                               ; preds = %85, %72
  %94 = load ptr, ptr %76, align 4
  %95 = getelementptr inbounds %struct.snd_usb_audio, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = tail call i32 @snd_ctl_add(ptr noundef %96, ptr noundef nonnull %48) #16
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %32, i32 0, i32 2
  store ptr %48, ptr %100, align 8
  %101 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %32, i32 0, i32 4
  store i8 1, ptr %101, align 8
  %102 = getelementptr inbounds %struct.usb_mixer_interface, ptr %76, i32 0, i32 5
  %103 = load ptr, ptr %102, align 4
  %104 = load i32, ptr %36, align 4
  %105 = getelementptr ptr, ptr %103, i32 %104
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %32, i32 0, i32 1
  store ptr %106, ptr %107, align 4
  %108 = load ptr, ptr %102, align 4
  %109 = getelementptr ptr, ptr %108, i32 %104
  store ptr %32, ptr %109, align 4
  br label %110

110:                                              ; preds = %99, %93, %50, %28, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__build_feature_ctl(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4, ptr noundef readonly %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 {
  %10 = icmp eq i32 %3, 6
  br i1 %10, label %313, label %11

11:                                               ; preds = %9
  %12 = icmp eq ptr %1, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %11
  %14 = load i32, ptr %1, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %13
  %17 = icmp eq i32 %3, 0
  br label %18

18:                                               ; preds = %29, %16
  %19 = phi i32 [ %14, %16 ], [ %31, %29 ]
  %20 = phi ptr [ %1, %16 ], [ %30, %29 ]
  %21 = icmp eq i32 %19, %6
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  br i1 %17, label %33, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.usbmix_name_map, ptr %20, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  %27 = icmp eq i32 %25, %3
  %28 = or i1 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %23, %18
  %30 = getelementptr %struct.usbmix_name_map, ptr %20, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %43, label %18

33:                                               ; preds = %23, %22
  %34 = icmp eq ptr %20, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.usbmix_name_map, ptr %20, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.usbmix_name_map, ptr %20, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %313, label %43

43:                                               ; preds = %39, %35, %33, %29, %13, %11
  %44 = phi ptr [ %20, %39 ], [ null, %33 ], [ %20, %35 ], [ null, %11 ], [ null, %13 ], [ null, %29 ]
  %45 = phi i1 [ false, %39 ], [ true, %33 ], [ false, %35 ], [ true, %11 ], [ true, %13 ], [ true, %29 ]
  %46 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %47 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 152) #19
  %48 = icmp eq ptr %47, null
  br i1 %48, label %313, label %49

49:                                               ; preds = %43
  store ptr %0, ptr %47, align 8
  %50 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %47, i32 0, i32 3
  store i32 %6, ptr %50, align 4
  %51 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %47, i32 0, i32 5
  store ptr @snd_usb_mixer_dump_cval, ptr %51, align 4
  %52 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %47, i32 0, i32 6
  store ptr @restore_mixer_value, ptr %52, align 8
  %53 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %47, i32 0, i32 1
  store i32 %3, ptr %53, align 4
  %54 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %47, i32 0, i32 2
  store i32 %2, ptr %54, align 8
  %55 = add i32 %3, -1
  %56 = icmp ult i32 %55, 13
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  tail call void @kfree(ptr noundef nonnull %47) #16
  br label %313

58:                                               ; preds = %49
  %59 = getelementptr inbounds [13 x ptr], ptr @switch.table.__build_feature_ctl, i32 0, i32 %55
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 6
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.usb_feature_control_info, ptr %60, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = icmp sgt i32 %66, -1
  br i1 %67, label %71, label %68

68:                                               ; preds = %64, %58
  %69 = getelementptr inbounds %struct.usb_feature_control_info, ptr %60, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  br label %71

71:                                               ; preds = %68, %64
  %72 = phi i32 [ %66, %64 ], [ %70, %68 ]
  %73 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %47, i32 0, i32 7
  store i32 %72, ptr %73, align 4
  %74 = icmp eq i32 %2, 0
  br i1 %74, label %124, label %75

75:                                               ; preds = %71
  %76 = and i32 %2, 1
  %77 = lshr i32 %2, 1
  %78 = and i32 %77, 1
  %79 = add nuw nsw i32 %78, %76
  %80 = lshr i32 %2, 2
  %81 = and i32 %80, 1
  %82 = add nuw nsw i32 %81, %79
  %83 = lshr i32 %2, 3
  %84 = and i32 %83, 1
  %85 = add nuw nsw i32 %84, %82
  %86 = lshr i32 %2, 4
  %87 = and i32 %86, 1
  %88 = add nuw nsw i32 %87, %85
  %89 = lshr i32 %2, 5
  %90 = and i32 %89, 1
  %91 = add nuw nsw i32 %90, %88
  %92 = lshr i32 %2, 6
  %93 = and i32 %92, 1
  %94 = add nuw nsw i32 %93, %91
  %95 = lshr i32 %2, 7
  %96 = and i32 %95, 1
  %97 = add nuw nsw i32 %96, %94
  %98 = lshr i32 %2, 8
  %99 = and i32 %98, 1
  %100 = add nuw nsw i32 %99, %97
  %101 = lshr i32 %2, 9
  %102 = and i32 %101, 1
  %103 = add nuw nsw i32 %102, %100
  %104 = lshr i32 %2, 10
  %105 = and i32 %104, 1
  %106 = add nuw nsw i32 %105, %103
  %107 = lshr i32 %2, 11
  %108 = and i32 %107, 1
  %109 = add nuw nsw i32 %108, %106
  %110 = lshr i32 %2, 12
  %111 = and i32 %110, 1
  %112 = add nuw nsw i32 %111, %109
  %113 = lshr i32 %2, 13
  %114 = and i32 %113, 1
  %115 = add nuw nsw i32 %114, %112
  %116 = lshr i32 %2, 14
  %117 = and i32 %116, 1
  %118 = add nuw nsw i32 %117, %115
  %119 = lshr i32 %2, 15
  %120 = and i32 %119, 1
  %121 = add nuw nsw i32 %120, %118
  %122 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %47, i32 0, i32 6
  store i32 %121, ptr %122, align 8
  %123 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %47, i32 0, i32 4
  store i32 %8, ptr %123, align 8
  br label %127

124:                                              ; preds = %71
  %125 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %47, i32 0, i32 6
  store i32 1, ptr %125, align 8
  %126 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %47, i32 0, i32 5
  store i32 %8, ptr %126, align 4
  br label %127

127:                                              ; preds = %124, %75
  %128 = phi i32 [ %121, %75 ], [ 1, %124 ]
  %129 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %47, i32 0, i32 6
  %130 = icmp eq i32 %128, %8
  %131 = select i1 %130, ptr @usb_feature_unit_ctl_ro, ptr @usb_feature_unit_ctl
  %132 = tail call ptr @snd_ctl_new1(ptr noundef nonnull %131, ptr noundef nonnull %47) #16
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %139

134:                                              ; preds = %127
  %135 = load ptr, ptr %0, align 4
  %136 = getelementptr inbounds %struct.snd_usb_audio, ptr %135, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.usb_device, ptr %137, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.43) #20
  tail call void @kfree(ptr noundef nonnull %47) #16
  br label %313

139:                                              ; preds = %127
  %140 = getelementptr inbounds %struct.snd_kcontrol, ptr %132, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %140, align 4
  %141 = getelementptr inbounds %struct.snd_kcontrol, ptr %132, i32 0, i32 1, i32 4
  br i1 %45, label %150, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.usbmix_name_map, ptr %44, i32 0, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = tail call i32 @strscpy(ptr noundef %141, ptr noundef nonnull %144, i32 noundef 43) #16
  %148 = icmp slt i32 %147, 0
  %149 = select i1 %148, i32 43, i32 %147
  br label %150

150:                                              ; preds = %146, %142, %139
  %151 = phi i32 [ %149, %146 ], [ 0, %142 ], [ 0, %139 ]
  %152 = icmp eq i32 %151, 0
  %153 = icmp ne i32 %7, 0
  %154 = and i1 %153, %152
  br i1 %154, label %155, label %163

155:                                              ; preds = %150
  %156 = load ptr, ptr %0, align 4
  %157 = getelementptr inbounds %struct.snd_usb_audio, ptr %156, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = tail call i32 @usb_string(ptr noundef %158, i32 noundef %7, ptr noundef %141, i32 noundef 43) #16
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %155
  %162 = getelementptr i8, ptr %141, i32 %159
  store i8 0, ptr %162, align 1
  br label %163

163:                                              ; preds = %161, %150
  %164 = phi i32 [ %151, %150 ], [ %159, %161 ]
  %165 = add nsw i32 %3, -1
  %166 = icmp ult i32 %165, 2
  %167 = icmp eq i32 %164, 0
  br i1 %166, label %171, label %209

168:                                              ; preds = %155
  %169 = add nsw i32 %3, -1
  %170 = icmp ult i32 %169, 2
  br i1 %170, label %172, label %210

171:                                              ; preds = %163
  br i1 %167, label %172, label %190

172:                                              ; preds = %171, %168
  %173 = icmp eq ptr %4, null
  br i1 %173, label %177, label %174

174:                                              ; preds = %172
  %175 = load ptr, ptr %0, align 4
  %176 = tail call fastcc i32 @get_term_name(ptr noundef %175, ptr noundef nonnull %4, ptr noundef %141, i32 noundef 44, i32 noundef 1)
  br label %177

177:                                              ; preds = %174, %172
  %178 = phi i32 [ %176, %174 ], [ 0, %172 ]
  %179 = icmp eq i32 %178, 0
  %180 = icmp ne ptr %5, null
  %181 = and i1 %180, %179
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load ptr, ptr %0, align 4
  %184 = tail call fastcc i32 @get_term_name(ptr noundef %183, ptr noundef nonnull %5, ptr noundef %141, i32 noundef 44, i32 noundef 1)
  br label %185

185:                                              ; preds = %182, %177
  %186 = phi i32 [ %184, %182 ], [ %178, %177 ]
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %141, i32 noundef 44, ptr noundef nonnull @.str.44, i32 noundef %6)
  br label %190

190:                                              ; preds = %188, %185, %171
  br i1 %152, label %191, label %205

191:                                              ; preds = %190
  %192 = load ptr, ptr %0, align 4
  %193 = getelementptr inbounds %struct.snd_usb_audio, ptr %192, i32 0, i32 2
  %194 = load ptr, ptr %193, align 4
  tail call fastcc void @check_no_speaker_on_headset(ptr noundef nonnull %132, ptr noundef %194)
  %195 = icmp eq ptr %5, null
  br i1 %195, label %205, label %196

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.usb_audio_term, ptr %5, i32 0, i32 1
  %198 = load i32, ptr %197, align 4
  %199 = icmp ult i32 %198, 65536
  br i1 %199, label %200, label %205

200:                                              ; preds = %196
  %201 = and i32 %198, 65280
  %202 = icmp eq i32 %201, 256
  %203 = select i1 %202, ptr @.str.45, ptr @.str.46
  %204 = tail call i32 @strlcat(ptr noundef %141, ptr noundef nonnull %203, i32 noundef 44) #16
  br label %205

205:                                              ; preds = %200, %196, %191, %190
  %206 = icmp eq i32 %3, 1
  %207 = select i1 %206, ptr @.str.47, ptr @.str.48
  %208 = tail call i32 @strlcat(ptr noundef %141, ptr noundef nonnull %207, i32 noundef 44) #16
  br label %215

209:                                              ; preds = %163
  br i1 %167, label %210, label %215

210:                                              ; preds = %209, %168
  %211 = phi i32 [ %165, %209 ], [ %169, %168 ]
  %212 = getelementptr [13 x %struct.usb_feature_control_info], ptr @audio_feature_info, i32 0, i32 %211, i32 1
  %213 = load ptr, ptr %212, align 4
  %214 = tail call i32 @strscpy(ptr noundef %141, ptr noundef %213, i32 noundef 44) #16
  br label %215

215:                                              ; preds = %210, %209, %205
  tail call fastcc void @get_min_max_with_quirks(ptr noundef nonnull %47, i32 noundef 0, ptr noundef nonnull %132)
  %216 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %47, i32 0, i32 9
  %217 = load i32, ptr %216, align 4
  %218 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %47, i32 0, i32 8
  %219 = load i32, ptr %218, align 8
  %220 = icmp sgt i32 %217, %219
  br i1 %220, label %222, label %221

221:                                              ; preds = %215
  tail call void @snd_ctl_free_one(ptr noundef nonnull %132) #16
  br label %313

222:                                              ; preds = %215
  %223 = icmp eq i32 %3, 2
  br i1 %223, label %224, label %256

224:                                              ; preds = %222
  br i1 %45, label %241, label %225

225:                                              ; preds = %224
  %226 = getelementptr inbounds %struct.usbmix_name_map, ptr %44, i32 0, i32 3
  %227 = load ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %241, label %229

229:                                              ; preds = %225
  %230 = load i32, ptr %227, align 4
  %231 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %47, i32 0, i32 11
  store i32 %230, ptr %231, align 4
  %232 = load ptr, ptr %226, align 4
  %233 = getelementptr inbounds %struct.usbmix_dB_map, ptr %232, i32 0, i32 1
  %234 = load i32, ptr %233, align 4
  %235 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %47, i32 0, i32 12
  store i32 %234, ptr %235, align 8
  %236 = load ptr, ptr %226, align 4
  %237 = getelementptr inbounds %struct.usbmix_dB_map, ptr %236, i32 0, i32 2
  %238 = load i8, ptr %237, align 4, !range !13
  %239 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %47, i32 0, i32 16
  store i8 %238, ptr %239, align 1
  %240 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %47, i32 0, i32 15
  store i8 1, ptr %240, align 8
  br label %241

241:                                              ; preds = %229, %225, %224
  %242 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %47, i32 0, i32 11
  %243 = load i32, ptr %242, align 4
  %244 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %47, i32 0, i32 12
  %245 = load i32, ptr %244, align 8
  %246 = icmp slt i32 %243, %245
  br i1 %246, label %251, label %247

247:                                              ; preds = %241
  %248 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %47, i32 0, i32 15
  %249 = load i8, ptr %248, align 8
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %247, %241
  %252 = getelementptr inbounds %struct.snd_kcontrol, ptr %132, i32 0, i32 6
  store ptr @snd_usb_mixer_vol_tlv, ptr %252, align 4
  %253 = getelementptr inbounds %struct.snd_kcontrol, ptr %132, i32 1, i32 0, i32 1
  %254 = load i32, ptr %253, align 4
  %255 = or i32 %254, 268435472
  store i32 %255, ptr %253, align 4
  br label %256

256:                                              ; preds = %251, %247, %222
  tail call void @snd_usb_mixer_fu_apply_quirk(ptr noundef %0, ptr noundef nonnull %47, i32 noundef %6, ptr noundef nonnull %132) #16
  %257 = load i32, ptr %216, align 4
  %258 = load i32, ptr %218, align 8
  %259 = sub i32 %257, %258
  %260 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %47, i32 0, i32 10
  %261 = load i32, ptr %260, align 8
  %262 = sdiv i32 %259, %261
  %263 = icmp ugt i32 %262, 384
  br i1 %263, label %264, label %278

264:                                              ; preds = %256
  %265 = load ptr, ptr %0, align 4
  %266 = getelementptr inbounds %struct.snd_usb_audio, ptr %265, i32 0, i32 1
  %267 = load ptr, ptr %266, align 4
  %268 = getelementptr inbounds %struct.usb_device, ptr %267, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %268, ptr noundef nonnull @.str.49, i32 noundef %262) #20
  %269 = load ptr, ptr %0, align 4
  %270 = getelementptr inbounds %struct.snd_usb_audio, ptr %269, i32 0, i32 1
  %271 = load ptr, ptr %270, align 4
  %272 = getelementptr inbounds %struct.usb_device, ptr %271, i32 0, i32 15
  %273 = load i32, ptr %50, align 4
  %274 = load i32, ptr %129, align 8
  %275 = load i32, ptr %218, align 8
  %276 = load i32, ptr %216, align 4
  %277 = load i32, ptr %260, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %272, ptr noundef nonnull @.str.50, i32 noundef %273, ptr noundef %141, i32 noundef %274, i32 noundef %275, i32 noundef %276, i32 noundef %277) #20
  br label %278

278:                                              ; preds = %264, %256
  %279 = load ptr, ptr %47, align 8
  %280 = getelementptr inbounds %struct.snd_kcontrol, ptr %132, i32 0, i32 1
  %281 = load ptr, ptr %279, align 4
  %282 = getelementptr inbounds %struct.snd_usb_audio, ptr %281, i32 0, i32 2
  %283 = load ptr, ptr %282, align 4
  %284 = tail call ptr @snd_ctl_find_id(ptr noundef %283, ptr noundef %280) #16
  %285 = icmp eq ptr %284, null
  br i1 %285, label %296, label %286

286:                                              ; preds = %278
  %287 = getelementptr inbounds %struct.snd_kcontrol, ptr %132, i32 0, i32 1, i32 5
  br label %288

288:                                              ; preds = %288, %286
  %289 = load i32, ptr %287, align 4
  %290 = add i32 %289, 1
  store i32 %290, ptr %287, align 4
  %291 = load ptr, ptr %279, align 4
  %292 = getelementptr inbounds %struct.snd_usb_audio, ptr %291, i32 0, i32 2
  %293 = load ptr, ptr %292, align 4
  %294 = tail call ptr @snd_ctl_find_id(ptr noundef %293, ptr noundef %280) #16
  %295 = icmp eq ptr %294, null
  br i1 %295, label %296, label %288

296:                                              ; preds = %288, %278
  %297 = load ptr, ptr %279, align 4
  %298 = getelementptr inbounds %struct.snd_usb_audio, ptr %297, i32 0, i32 2
  %299 = load ptr, ptr %298, align 4
  %300 = tail call i32 @snd_ctl_add(ptr noundef %299, ptr noundef nonnull %132) #16
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %313, label %302

302:                                              ; preds = %296
  %303 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %47, i32 0, i32 2
  store ptr %132, ptr %303, align 8
  %304 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %47, i32 0, i32 4
  store i8 1, ptr %304, align 8
  %305 = getelementptr inbounds %struct.usb_mixer_interface, ptr %279, i32 0, i32 5
  %306 = load ptr, ptr %305, align 4
  %307 = load i32, ptr %50, align 4
  %308 = getelementptr ptr, ptr %306, i32 %307
  %309 = load ptr, ptr %308, align 4
  %310 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %47, i32 0, i32 1
  store ptr %309, ptr %310, align 4
  %311 = load ptr, ptr %305, align 4
  %312 = getelementptr ptr, ptr %311, i32 %307
  store ptr %47, ptr %312, align 4
  br label %313

313:                                              ; preds = %302, %296, %221, %134, %57, %43, %39, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_term_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.usb_audio_term, ptr %1, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = add i32 %3, -1
  %13 = tail call i32 @usb_string(ptr noundef %11, i32 noundef %7, ptr noundef %2, i32 noundef %12) #16
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = getelementptr i8, ptr %2, i32 %13
  store i8 0, ptr %16, align 1
  %17 = icmp eq i32 %13, 0
  br i1 %17, label %18, label %84

18:                                               ; preds = %15, %9, %5
  %19 = getelementptr inbounds %struct.usb_audio_term, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = ashr i32 %20, 16
  %22 = icmp ult i32 %20, 65536
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = icmp eq i32 %4, 0
  br i1 %24, label %25, label %84

25:                                               ; preds = %23
  switch i32 %21, label %30 [
    i32 6, label %26
    i32 9, label %27
    i32 10, label %28
    i32 5, label %29
  ]

26:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.51, i32 9, i1 false)
  br label %84

27:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(13) %2, ptr noundef nonnull align 1 dereferenceable(13) @.str.52, i32 13, i1 false)
  br label %84

28:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.53, i32 9, i1 false)
  br label %84

29:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.54, i32 6, i1 false)
  br label %84

30:                                               ; preds = %25
  %31 = load i32, ptr %1, align 4
  %32 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.55, i32 noundef %31)
  br label %84

33:                                               ; preds = %18
  %34 = and i32 %20, 65280
  %35 = add nsw i32 %34, -256
  %36 = lshr exact i32 %35, 8
  switch i32 %36, label %37 [
    i32 0, label %38
    i32 1, label %39
    i32 3, label %40
    i32 4, label %41
  ]

37:                                               ; preds = %33
  switch i32 %20, label %84 [
    i32 768, label %77
    i32 769, label %42
    i32 770, label %43
    i32 771, label %44
    i32 772, label %45
    i32 773, label %46
    i32 774, label %47
    i32 775, label %48
    i32 1536, label %49
    i32 1537, label %50
    i32 1538, label %51
    i32 1539, label %52
    i32 1540, label %53
    i32 1541, label %54
    i32 1542, label %55
    i32 1543, label %56
    i32 1792, label %57
    i32 1793, label %58
    i32 1794, label %59
    i32 1795, label %60
    i32 1796, label %61
    i32 1797, label %62
    i32 1798, label %63
    i32 1799, label %64
    i32 1800, label %65
    i32 1801, label %66
    i32 1802, label %67
    i32 1803, label %68
    i32 1804, label %69
    i32 1805, label %70
    i32 1806, label %71
    i32 1807, label %72
    i32 1808, label %73
    i32 1809, label %74
    i32 1810, label %75
    i32 1811, label %76
  ]

38:                                               ; preds = %33
  store i32 5063504, ptr %2, align 1
  br label %84

39:                                               ; preds = %33
  store i32 6515021, ptr %2, align 1
  br label %84

40:                                               ; preds = %33
  store i64 32762643578185032, ptr %2, align 1
  br label %84

41:                                               ; preds = %33
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.59, i32 6, i1 false)
  br label %84

42:                                               ; preds = %37
  br label %77

43:                                               ; preds = %37
  br label %77

44:                                               ; preds = %37
  br label %77

45:                                               ; preds = %37
  br label %77

46:                                               ; preds = %37
  br label %77

47:                                               ; preds = %37
  br label %77

48:                                               ; preds = %37
  br label %77

49:                                               ; preds = %37
  br label %77

50:                                               ; preds = %37
  br label %77

51:                                               ; preds = %37
  br label %77

52:                                               ; preds = %37
  br label %77

53:                                               ; preds = %37
  br label %77

54:                                               ; preds = %37
  br label %77

55:                                               ; preds = %37
  br label %77

56:                                               ; preds = %37
  br label %77

57:                                               ; preds = %37
  br label %77

58:                                               ; preds = %37
  br label %77

59:                                               ; preds = %37
  br label %77

60:                                               ; preds = %37
  br label %77

61:                                               ; preds = %37
  br label %77

62:                                               ; preds = %37
  br label %77

63:                                               ; preds = %37
  br label %77

64:                                               ; preds = %37
  br label %77

65:                                               ; preds = %37
  br label %77

66:                                               ; preds = %37
  br label %77

67:                                               ; preds = %37
  br label %77

68:                                               ; preds = %37
  br label %77

69:                                               ; preds = %37
  br label %77

70:                                               ; preds = %37
  br label %77

71:                                               ; preds = %37
  br label %77

72:                                               ; preds = %37
  br label %77

73:                                               ; preds = %37
  br label %77

74:                                               ; preds = %37
  br label %77

75:                                               ; preds = %37
  br label %77

76:                                               ; preds = %37
  br label %77

77:                                               ; preds = %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %37
  %78 = phi ptr [ @iterm_names, %37 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 1), %42 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 2), %43 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 3), %44 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 4), %45 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 5), %46 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 6), %47 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 7), %48 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 8), %49 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 9), %50 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 10), %51 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 11), %52 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 12), %53 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 13), %54 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 14), %55 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 15), %56 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 16), %57 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 17), %58 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 18), %59 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 19), %60 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 20), %61 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 21), %62 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 22), %63 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 23), %64 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 24), %65 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 25), %66 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 26), %67 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 27), %68 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 28), %69 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 29), %70 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 30), %71 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 31), %72 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 32), %73 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 33), %74 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 34), %75 ], [ getelementptr inbounds ([37 x %struct.iterm_name_combo], ptr @iterm_names, i32 0, i32 35), %76 ]
  %79 = getelementptr inbounds %struct.iterm_name_combo, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = tail call ptr @strcpy(ptr noundef %2, ptr noundef %80)
  %82 = load ptr, ptr %79, align 4
  %83 = tail call i32 @strlen(ptr noundef %82)
  br label %84

84:                                               ; preds = %77, %41, %40, %39, %38, %37, %30, %29, %28, %27, %26, %23, %15
  %85 = phi i32 [ %32, %30 ], [ 5, %29 ], [ 8, %28 ], [ 12, %27 ], [ 8, %26 ], [ %83, %77 ], [ 5, %41 ], [ 7, %40 ], [ 3, %39 ], [ 3, %38 ], [ %13, %15 ], [ 0, %23 ], [ 0, %37 ]
  ret i32 %85
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @check_no_speaker_on_headset(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1, i32 4
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.61, ptr noundef %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 3
  %8 = tail call ptr @strstr(ptr noundef %7, ptr noundef nonnull @.str.58)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = tail call ptr @strstr(ptr noundef %7, ptr noundef nonnull @.str.96)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = tail call ptr @strstr(ptr noundef %7, ptr noundef nonnull @.str.62)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = tail call ptr @strstr(ptr noundef %7, ptr noundef nonnull @.str.97)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16, %13, %10, %6
  %20 = tail call i32 @strscpy(ptr noundef %3, ptr noundef nonnull @.str.62, i32 noundef 44) #16
  br label %21

21:                                               ; preds = %19, %16, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_free_one(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_mixer_fu_apply_quirk(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @connector_mixer_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @get_connector_value(ptr noundef %0, ptr noundef null, ptr noundef null)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_connector_value(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca %struct.uac2_connectors_ctl_blk, align 1
  %5 = alloca %struct.uac3_insertion_ctl_blk, align 2
  %6 = load ptr, ptr %0, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, 8
  %11 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %7) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %69

13:                                               ; preds = %3
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.usb_mixer_interface, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %16, i32 0, i32 2
  %18 = load i8, ptr %17, align 2
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 %21, 8
  %23 = or i32 %22, %19
  %24 = getelementptr inbounds %struct.usb_mixer_interface, ptr %14, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %27, label %42

27:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false), !annotation !8
  %28 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %29, align 8
  %31 = shl i32 %30, 8
  %32 = or i32 %31, -2147483520
  %33 = trunc i32 %10 to i16
  %34 = trunc i32 %23 to i16
  %35 = call i32 @snd_usb_ctl_msg(ptr noundef %29, i32 noundef %32, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext %33, i16 noundef zeroext %34, ptr noundef nonnull %4, i16 noundef zeroext 6) #16
  %36 = icmp eq ptr %2, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %27
  %38 = load i8, ptr %4, align 1
  %39 = icmp ne i8 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, ptr %2, align 4
  br label %41

41:                                               ; preds = %37, %27
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #16
  br label %58

42:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #16
  store i16 0, ptr %5, align 2, !annotation !8
  %43 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load i32, ptr %44, align 8
  %46 = shl i32 %45, 8
  %47 = or i32 %46, -2147483520
  %48 = trunc i32 %10 to i16
  %49 = trunc i32 %23 to i16
  %50 = call i32 @snd_usb_ctl_msg(ptr noundef %44, i32 noundef %47, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext %48, i16 noundef zeroext %49, ptr noundef nonnull %5, i16 noundef zeroext 2) #16
  %51 = icmp eq ptr %2, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.uac3_insertion_ctl_blk, ptr %5, i32 0, i32 1
  %54 = load i8, ptr %53, align 1
  %55 = icmp ne i8 %54, 0
  %56 = zext i1 %55 to i32
  store i32 %56, ptr %2, align 4
  br label %57

57:                                               ; preds = %52, %42
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #16
  br label %58

58:                                               ; preds = %57, %41
  %59 = phi i32 [ %35, %41 ], [ %50, %57 ]
  call void @snd_usb_unlock_shutdown(ptr noundef %7) #16
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %58
  %62 = icmp eq ptr %1, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %61
  %64 = call ptr @strstr(ptr noundef nonnull %1, ptr noundef nonnull @.str.61)
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = icmp eq ptr %2, null
  br i1 %67, label %85, label %68

68:                                               ; preds = %66
  store i32 1, ptr %2, align 4
  br label %85

69:                                               ; preds = %63, %61, %3
  %70 = phi i32 [ 0, %3 ], [ %23, %63 ], [ %23, %61 ]
  %71 = phi i32 [ -5, %3 ], [ %59, %63 ], [ %59, %61 ]
  %72 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.usb_device, ptr %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 7
  %76 = load i32, ptr %75, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.112, i32 noundef 129, i32 noundef %10, i32 noundef %70, i32 noundef %76) #20
  %77 = icmp eq ptr %2, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %69
  store i32 0, ptr %2, align 4
  br label %79

79:                                               ; preds = %78, %69
  %80 = load ptr, ptr %0, align 4
  %81 = getelementptr inbounds %struct.usb_mixer_interface, ptr %80, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 %71, i32 0
  br label %85

85:                                               ; preds = %79, %68, %66, %58
  %86 = phi i32 [ %84, %79 ], [ 0, %68 ], [ 0, %66 ], [ %59, %58 ]
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mixer_ctl_connector_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1, i32 4
  %7 = call fastcc i32 @get_connector_value(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %3)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr %3, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %10, ptr %11, align 8
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i32 [ 0, %9 ], [ %7, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_find_csint_desc(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_usb_validate_audio_desc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @parse_audio_unit(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.usb_audio_term, align 4
  %4 = alloca %struct.usb_audio_term, align 4
  %5 = alloca %struct.usb_audio_term, align 4
  %6 = alloca %struct.usb_audio_term, align 4
  %7 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_mixer_interface, ptr %8, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 4
  %12 = tail call i32 @_test_and_set_bit(i32 noundef %1, ptr noundef %11) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %723

14:                                               ; preds = %2
  %15 = trunc i32 %1 to i8
  %16 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 2
  %17 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %16, align 4
  %19 = load i32, ptr %17, align 4
  %20 = tail call ptr @snd_usb_find_desc(ptr noundef %18, i32 noundef %19, ptr noundef null, i8 noundef zeroext 36) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %35, %14
  %23 = phi ptr [ %38, %35 ], [ %20, %14 ]
  %24 = load i8, ptr %23, align 1
  %25 = icmp ugt i8 %24, 3
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = getelementptr %struct.uac_feature_unit_descriptor, ptr %23, i32 0, i32 2
  %28 = load i8, ptr %27, align 1
  %29 = add i8 %28, -2
  %30 = icmp ult i8 %29, 13
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %23, i32 0, i32 3
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, %15
  br i1 %34, label %45, label %35

35:                                               ; preds = %31, %26, %22
  %36 = load ptr, ptr %16, align 4
  %37 = load i32, ptr %17, align 4
  %38 = tail call ptr @snd_usb_find_desc(ptr noundef %36, i32 noundef %37, ptr noundef nonnull %23, i8 noundef zeroext 36) #16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %22

40:                                               ; preds = %35, %14
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr inbounds %struct.snd_usb_audio, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.usb_device, ptr %43, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.156, i32 noundef %1) #20
  br label %723

45:                                               ; preds = %31
  %46 = getelementptr %struct.uac_feature_unit_descriptor, ptr %23, i32 0, i32 2
  %47 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %23, i32 0, i32 3
  %48 = tail call zeroext i1 @snd_usb_validate_audio_desc(ptr noundef nonnull %23, i32 noundef %10) #16
  br i1 %48, label %49, label %723

49:                                               ; preds = %45
  %50 = shl i32 %10, 8
  %51 = load i8, ptr %46, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %50, %52
  switch i32 %53, label %718 [
    i32 2, label %54
    i32 8194, label %54
    i32 12290, label %54
    i32 4, label %85
    i32 8196, label %85
    i32 12293, label %85
    i32 8202, label %321
    i32 12299, label %321
    i32 5, label %323
    i32 8197, label %323
    i32 12294, label %323
    i32 8203, label %323
    i32 12300, label %323
    i32 6, label %531
    i32 8198, label %531
    i32 12295, label %531
    i32 7, label %707
    i32 8200, label %707
    i32 12297, label %707
    i32 8, label %716
    i32 8201, label %716
    i32 12298, label %716
    i32 8199, label %723
    i32 12296, label %723
  ]

54:                                               ; preds = %49, %49, %49
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #16
  %55 = load ptr, ptr %7, align 4
  %56 = getelementptr inbounds %struct.usb_mixer_interface, ptr %55, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  switch i32 %57, label %84 [
    i32 32, label %58
    i32 48, label %62
  ]

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, ptr %23, i32 0, i32 10
  %60 = load i16, ptr %59, align 1
  %61 = zext i16 %60 to i32
  br label %65

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.uac3_input_terminal_descriptor, ptr %23, i32 0, i32 7
  %64 = load i32, ptr %63, align 1
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i32 [ %61, %58 ], [ %64, %62 ]
  %67 = phi i32 [ 2, %58 ], [ 0, %62 ]
  %68 = load i8, ptr %47, align 1
  %69 = zext i8 %68 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false) #16
  %70 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 5
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %70, i8 0, i32 32, i1 false) #16
  %71 = call fastcc i32 @__check_input_term(ptr noundef %0, i32 noundef %69, ptr noundef nonnull %6) #16
  %72 = getelementptr inbounds %struct.usb_audio_term, ptr %6, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 65280
  %75 = icmp eq i32 %74, 256
  br i1 %75, label %84, label %76

76:                                               ; preds = %65
  %77 = shl nuw nsw i32 1, %67
  %78 = and i32 %77, %66
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %7, align 4
  %82 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 7
  %83 = load ptr, ptr %82, align 4
  call fastcc void @build_connector_control(ptr noundef %81, ptr noundef %83, ptr noundef nonnull %6, i1 noundef zeroext true) #16
  br label %84

84:                                               ; preds = %80, %76, %65, %54
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #16
  br label %723

85:                                               ; preds = %49, %49, %49
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #16, !annotation !8
  %86 = tail call fastcc i32 @uac_mixer_unit_get_channels(ptr noundef %0, ptr noundef nonnull %23) #16
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load ptr, ptr %0, align 4
  %90 = getelementptr inbounds %struct.snd_usb_audio, ptr %89, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.usb_device, ptr %91, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.159, i32 noundef %1) #20
  br label %319

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.uac_mixer_unit_descriptor, ptr %23, i32 0, i32 4
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i8 %95, 0
  br i1 %97, label %319, label %98

98:                                               ; preds = %93
  %99 = icmp ne i32 %86, 0
  %100 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 5
  %101 = getelementptr inbounds %struct.usb_audio_term, ptr %5, i32 0, i32 2
  %102 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 7
  br label %103

103:                                              ; preds = %314, %98
  %104 = phi i32 [ 0, %98 ], [ %316, %314 ]
  %105 = phi i32 [ 0, %98 ], [ %317, %314 ]
  %106 = phi i32 [ 0, %98 ], [ %315, %314 ]
  %107 = getelementptr %struct.uac_mixer_unit_descriptor, ptr %23, i32 0, i32 5, i32 %105
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = call fastcc i32 @parse_audio_unit(ptr noundef %0, i32 noundef %109) #16
  %111 = icmp sgt i32 %110, -1
  %112 = select i1 %111, i1 %99, i1 false
  br i1 %112, label %113, label %314

113:                                              ; preds = %103
  %114 = load i8, ptr %107, align 1
  %115 = zext i8 %114 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #16
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %100, i8 0, i32 32, i1 false) #16
  %116 = call fastcc i32 @__check_input_term(ptr noundef %0, i32 noundef %115, ptr noundef nonnull %5) #16
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %319, label %118

118:                                              ; preds = %113
  %119 = load i32, ptr %101, align 4
  %120 = add i32 %119, %106
  %121 = load ptr, ptr %7, align 4
  %122 = getelementptr inbounds %struct.usb_mixer_interface, ptr %121, i32 0, i32 6
  %123 = load i32, ptr %122, align 4
  switch i32 %123, label %132 [
    i32 0, label %126
    i32 32, label %124
    i32 48, label %125
  ]

124:                                              ; preds = %118
  br label %126

125:                                              ; preds = %118
  br label %126

126:                                              ; preds = %125, %124, %118
  %127 = phi i32 [ 2, %125 ], [ 6, %124 ], [ 4, %118 ]
  %128 = load i8, ptr %94, align 1
  %129 = zext i8 %128 to i32
  %130 = add nuw nsw i32 %127, %129
  %131 = getelementptr %struct.uac_mixer_unit_descriptor, ptr %23, i32 0, i32 5, i32 %130
  br label %132

132:                                              ; preds = %126, %118
  %133 = phi ptr [ null, %118 ], [ %131, %126 ]
  %134 = icmp eq i32 %123, 32
  %135 = select i1 %134, i32 2, i32 1
  %136 = icmp eq i32 %123, 48
  %137 = select i1 %136, i32 6, i32 %135
  %138 = mul i32 %120, %86
  %139 = add i32 %138, 7
  %140 = sdiv i32 %139, 8
  %141 = getelementptr i8, ptr %133, i32 %140
  %142 = getelementptr i8, ptr %141, i32 %137
  %143 = load i8, ptr %23, align 1
  %144 = zext i8 %143 to i32
  %145 = getelementptr i8, ptr %23, i32 %144
  %146 = icmp ugt ptr %142, %145
  br i1 %146, label %319, label %147

147:                                              ; preds = %132
  %148 = icmp slt i32 %104, %120
  br i1 %148, label %149, label %314

149:                                              ; preds = %311, %147
  %150 = phi i32 [ %312, %311 ], [ %104, %147 ]
  %151 = load ptr, ptr %7, align 4
  %152 = getelementptr inbounds %struct.usb_mixer_interface, ptr %151, i32 0, i32 6
  %153 = load i32, ptr %152, align 4
  %154 = mul i32 %150, %86
  br label %158

155:                                              ; preds = %168
  %156 = add nuw nsw i32 %159, 1
  %157 = icmp eq i32 %156, %86
  br i1 %157, label %311, label %158

158:                                              ; preds = %155, %149
  %159 = phi i32 [ 0, %149 ], [ %156, %155 ]
  switch i32 %153, label %168 [
    i32 0, label %162
    i32 32, label %160
    i32 48, label %161
  ]

160:                                              ; preds = %158
  br label %162

161:                                              ; preds = %158
  br label %162

162:                                              ; preds = %161, %160, %158
  %163 = phi i32 [ 2, %161 ], [ 6, %160 ], [ 4, %158 ]
  %164 = load i8, ptr %94, align 1
  %165 = zext i8 %164 to i32
  %166 = add nuw nsw i32 %163, %165
  %167 = getelementptr %struct.uac_mixer_unit_descriptor, ptr %23, i32 0, i32 5, i32 %166
  br label %168

168:                                              ; preds = %162, %158
  %169 = phi ptr [ null, %158 ], [ %167, %162 ]
  %170 = add i32 %159, %154
  %171 = ashr i32 %170, 3
  %172 = getelementptr i8, ptr %169, i32 %171
  %173 = load i8, ptr %172, align 1
  %174 = zext i8 %173 to i32
  %175 = and i32 %170, 7
  %176 = lshr i32 128, %175
  %177 = and i32 %176, %174
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %155, label %179

179:                                              ; preds = %168
  %180 = load ptr, ptr %102, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %203, label %182

182:                                              ; preds = %179
  %183 = load i32, ptr %180, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %203, label %185

185:                                              ; preds = %189, %182
  %186 = phi i32 [ %191, %189 ], [ %183, %182 ]
  %187 = phi ptr [ %190, %189 ], [ %180, %182 ]
  %188 = icmp eq i32 %186, %1
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = getelementptr %struct.usbmix_name_map, ptr %187, i32 1
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %203, label %185

193:                                              ; preds = %185
  %194 = icmp eq ptr %187, null
  br i1 %194, label %203, label %195

195:                                              ; preds = %193
  %196 = getelementptr inbounds %struct.usbmix_name_map, ptr %187, i32 0, i32 1
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.usbmix_name_map, ptr %187, i32 0, i32 3
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %311, label %203

203:                                              ; preds = %199, %195, %193, %189, %182, %179
  %204 = phi ptr [ %187, %199 ], [ null, %193 ], [ %187, %195 ], [ null, %179 ], [ null, %182 ], [ null, %189 ]
  %205 = phi i1 [ false, %199 ], [ true, %193 ], [ false, %195 ], [ true, %179 ], [ true, %182 ], [ true, %189 ]
  %206 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %207 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %206, i32 noundef 3520, i32 noundef 152) #19
  %208 = icmp eq ptr %207, null
  br i1 %208, label %311, label %209

209:                                              ; preds = %203
  %210 = load ptr, ptr %7, align 4
  store ptr %210, ptr %207, align 8
  %211 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %207, i32 0, i32 3
  store i32 %1, ptr %211, align 4
  %212 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %207, i32 0, i32 5
  store ptr @snd_usb_mixer_dump_cval, ptr %212, align 4
  %213 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %207, i32 0, i32 6
  store ptr @restore_mixer_value, ptr %213, align 8
  %214 = add nsw i32 %150, 1
  %215 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %207, i32 0, i32 1
  store i32 %214, ptr %215, align 4
  %216 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %207, i32 0, i32 7
  store i32 4, ptr %216, align 4
  %217 = getelementptr inbounds %struct.usb_mixer_interface, ptr %210, i32 0, i32 6
  %218 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %207, i32 0, i32 2
  %219 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %207, i32 0, i32 6
  br label %220

220:                                              ; preds = %248, %209
  %221 = phi i32 [ 0, %209 ], [ %249, %248 ]
  %222 = load i32, ptr %217, align 4
  switch i32 %222, label %231 [
    i32 0, label %225
    i32 32, label %223
    i32 48, label %224
  ]

223:                                              ; preds = %220
  br label %225

224:                                              ; preds = %220
  br label %225

225:                                              ; preds = %224, %223, %220
  %226 = phi i32 [ 2, %224 ], [ 6, %223 ], [ 4, %220 ]
  %227 = load i8, ptr %94, align 1
  %228 = zext i8 %227 to i32
  %229 = add nuw nsw i32 %226, %228
  %230 = getelementptr %struct.uac_mixer_unit_descriptor, ptr %23, i32 0, i32 5, i32 %229
  br label %231

231:                                              ; preds = %225, %220
  %232 = phi ptr [ null, %220 ], [ %230, %225 ]
  %233 = add i32 %221, %154
  %234 = ashr i32 %233, 3
  %235 = getelementptr i8, ptr %232, i32 %234
  %236 = load i8, ptr %235, align 1
  %237 = zext i8 %236 to i32
  %238 = and i32 %233, 7
  %239 = lshr i32 128, %238
  %240 = and i32 %239, %237
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %248, label %242

242:                                              ; preds = %231
  %243 = shl nuw i32 1, %221
  %244 = load i32, ptr %218, align 8
  %245 = or i32 %244, %243
  store i32 %245, ptr %218, align 8
  %246 = load i32, ptr %219, align 8
  %247 = add i32 %246, 1
  store i32 %247, ptr %219, align 8
  br label %248

248:                                              ; preds = %242, %231
  %249 = add nuw i32 %221, 1
  %250 = icmp eq i32 %249, %86
  br i1 %250, label %251, label %220

251:                                              ; preds = %248
  call fastcc void @get_min_max_with_quirks(ptr noundef nonnull %207, i32 noundef 0, ptr noundef null) #16
  %252 = call ptr @snd_ctl_new1(ptr noundef nonnull @usb_feature_unit_ctl, ptr noundef nonnull %207) #16
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %259

254:                                              ; preds = %251
  %255 = load ptr, ptr %0, align 4
  %256 = getelementptr inbounds %struct.snd_usb_audio, ptr %255, i32 0, i32 1
  %257 = load ptr, ptr %256, align 4
  %258 = getelementptr inbounds %struct.usb_device, ptr %257, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %258, ptr noundef nonnull @.str.43) #20
  call void @kfree(ptr noundef nonnull %207) #16
  br label %311

259:                                              ; preds = %251
  %260 = getelementptr inbounds %struct.snd_kcontrol, ptr %252, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %260, align 4
  %261 = getelementptr inbounds %struct.snd_kcontrol, ptr %252, i32 0, i32 1, i32 4
  br i1 %205, label %269, label %262

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.usbmix_name_map, ptr %204, i32 0, i32 1
  %264 = load ptr, ptr %263, align 4
  %265 = icmp eq ptr %264, null
  br i1 %265, label %269, label %266

266:                                              ; preds = %262
  %267 = call i32 @strscpy(ptr noundef %261, ptr noundef nonnull %264, i32 noundef 43) #16
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %266, %262, %259
  %270 = load ptr, ptr %0, align 4
  %271 = call fastcc i32 @get_term_name(ptr noundef %270, ptr noundef nonnull %5, ptr noundef %261, i32 noundef 44, i32 noundef 0) #16
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %269
  %274 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %261, ptr noundef nonnull @.str.160, i32 noundef %214) #16
  br label %275

275:                                              ; preds = %273, %269, %266
  %276 = call i32 @strlcat(ptr noundef %261, ptr noundef nonnull @.str.48, i32 noundef 44) #16
  %277 = load ptr, ptr %207, align 8
  %278 = getelementptr inbounds %struct.snd_kcontrol, ptr %252, i32 0, i32 1
  %279 = load ptr, ptr %277, align 4
  %280 = getelementptr inbounds %struct.snd_usb_audio, ptr %279, i32 0, i32 2
  %281 = load ptr, ptr %280, align 4
  %282 = call ptr @snd_ctl_find_id(ptr noundef %281, ptr noundef %278) #16
  %283 = icmp eq ptr %282, null
  br i1 %283, label %294, label %284

284:                                              ; preds = %275
  %285 = getelementptr inbounds %struct.snd_kcontrol, ptr %252, i32 0, i32 1, i32 5
  br label %286

286:                                              ; preds = %286, %284
  %287 = load i32, ptr %285, align 4
  %288 = add i32 %287, 1
  store i32 %288, ptr %285, align 4
  %289 = load ptr, ptr %277, align 4
  %290 = getelementptr inbounds %struct.snd_usb_audio, ptr %289, i32 0, i32 2
  %291 = load ptr, ptr %290, align 4
  %292 = call ptr @snd_ctl_find_id(ptr noundef %291, ptr noundef %278) #16
  %293 = icmp eq ptr %292, null
  br i1 %293, label %294, label %286

294:                                              ; preds = %286, %275
  %295 = load ptr, ptr %277, align 4
  %296 = getelementptr inbounds %struct.snd_usb_audio, ptr %295, i32 0, i32 2
  %297 = load ptr, ptr %296, align 4
  %298 = call i32 @snd_ctl_add(ptr noundef %297, ptr noundef nonnull %252) #16
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %311, label %300

300:                                              ; preds = %294
  %301 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %207, i32 0, i32 2
  store ptr %252, ptr %301, align 8
  %302 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %207, i32 0, i32 4
  store i8 1, ptr %302, align 8
  %303 = getelementptr inbounds %struct.usb_mixer_interface, ptr %277, i32 0, i32 5
  %304 = load ptr, ptr %303, align 4
  %305 = load i32, ptr %211, align 4
  %306 = getelementptr ptr, ptr %304, i32 %305
  %307 = load ptr, ptr %306, align 4
  %308 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %207, i32 0, i32 1
  store ptr %307, ptr %308, align 4
  %309 = load ptr, ptr %303, align 4
  %310 = getelementptr ptr, ptr %309, i32 %305
  store ptr %207, ptr %310, align 4
  br label %311

311:                                              ; preds = %300, %294, %254, %203, %199, %155
  %312 = add nsw i32 %150, 1
  %313 = icmp eq i32 %312, %120
  br i1 %313, label %314, label %149

314:                                              ; preds = %311, %147, %103
  %315 = phi i32 [ %106, %103 ], [ %120, %147 ], [ %120, %311 ]
  %316 = phi i32 [ %104, %103 ], [ %104, %147 ], [ %120, %311 ]
  %317 = add nuw nsw i32 %105, 1
  %318 = icmp eq i32 %317, %96
  br i1 %318, label %319, label %103

319:                                              ; preds = %314, %132, %113, %93, %88
  %320 = phi i32 [ %86, %88 ], [ 0, %93 ], [ 0, %314 ], [ %116, %113 ], [ 0, %132 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #16
  br label %723

321:                                              ; preds = %49, %49
  %322 = tail call fastcc i32 @parse_clock_source_unit(ptr noundef %0, ptr noundef nonnull %23)
  br label %723

323:                                              ; preds = %49, %49, %49, %49, %49
  %324 = getelementptr inbounds %struct.uac_selector_unit_descriptor, ptr %23, i32 0, i32 4
  %325 = load i8, ptr %324, align 1
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %341, label %332

327:                                              ; preds = %332
  %328 = add nuw nsw i32 %333, 1
  %329 = load i8, ptr %324, align 1
  %330 = zext i8 %329 to i32
  %331 = icmp ult i32 %328, %330
  br i1 %331, label %332, label %339

332:                                              ; preds = %327, %323
  %333 = phi i32 [ %328, %327 ], [ 0, %323 ]
  %334 = getelementptr %struct.uac_selector_unit_descriptor, ptr %23, i32 0, i32 5, i32 %333
  %335 = load i8, ptr %334, align 1
  %336 = zext i8 %335 to i32
  %337 = tail call fastcc i32 @parse_audio_unit(ptr noundef %0, i32 noundef %336) #16
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %723, label %327

339:                                              ; preds = %327
  %340 = icmp eq i8 %329, 1
  br i1 %340, label %723, label %341

341:                                              ; preds = %339, %323
  %342 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 7
  %343 = load ptr, ptr %342, align 4
  %344 = icmp eq ptr %343, null
  br i1 %344, label %366, label %345

345:                                              ; preds = %341
  %346 = load i32, ptr %343, align 4
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %366, label %348

348:                                              ; preds = %352, %345
  %349 = phi i32 [ %354, %352 ], [ %346, %345 ]
  %350 = phi ptr [ %353, %352 ], [ %343, %345 ]
  %351 = icmp eq i32 %349, %1
  br i1 %351, label %356, label %352

352:                                              ; preds = %348
  %353 = getelementptr %struct.usbmix_name_map, ptr %350, i32 1
  %354 = load i32, ptr %353, align 4
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %366, label %348

356:                                              ; preds = %348
  %357 = icmp eq ptr %350, null
  br i1 %357, label %366, label %358

358:                                              ; preds = %356
  %359 = getelementptr inbounds %struct.usbmix_name_map, ptr %350, i32 0, i32 1
  %360 = load ptr, ptr %359, align 4
  %361 = icmp eq ptr %360, null
  br i1 %361, label %362, label %366

362:                                              ; preds = %358
  %363 = getelementptr inbounds %struct.usbmix_name_map, ptr %350, i32 0, i32 3
  %364 = load ptr, ptr %363, align 4
  %365 = icmp eq ptr %364, null
  br i1 %365, label %723, label %366

366:                                              ; preds = %362, %358, %356, %352, %345, %341
  %367 = phi ptr [ %350, %362 ], [ null, %356 ], [ %350, %358 ], [ null, %341 ], [ null, %345 ], [ null, %352 ]
  %368 = phi i1 [ false, %362 ], [ true, %356 ], [ false, %358 ], [ true, %341 ], [ true, %345 ], [ true, %352 ]
  %369 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %370 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %369, i32 noundef 3520, i32 noundef 152) #19
  %371 = icmp eq ptr %370, null
  br i1 %371, label %723, label %372

372:                                              ; preds = %366
  %373 = load ptr, ptr %7, align 4
  store ptr %373, ptr %370, align 8
  %374 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %370, i32 0, i32 3
  store i32 %1, ptr %374, align 4
  %375 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %370, i32 0, i32 5
  store ptr @snd_usb_mixer_dump_cval, ptr %375, align 4
  %376 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %370, i32 0, i32 6
  store ptr @restore_mixer_value, ptr %376, align 8
  %377 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %370, i32 0, i32 7
  store i32 3, ptr %377, align 4
  %378 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %370, i32 0, i32 6
  store i32 1, ptr %378, align 8
  %379 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %370, i32 0, i32 8
  store i32 1, ptr %379, align 8
  %380 = load i8, ptr %324, align 1
  %381 = zext i8 %380 to i32
  %382 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %370, i32 0, i32 9
  store i32 %381, ptr %382, align 4
  %383 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %370, i32 0, i32 10
  store i32 1, ptr %383, align 8
  %384 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %370, i32 0, i32 15
  store i8 1, ptr %384, align 8
  %385 = getelementptr inbounds %struct.usb_mixer_interface, ptr %373, i32 0, i32 6
  %386 = load i32, ptr %385, align 4
  %387 = add i32 %386, -32
  %388 = and i32 %387, -17
  %389 = icmp eq i32 %388, 0
  %390 = zext i1 %389 to i32
  %391 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %370, i32 0, i32 1
  store i32 %390, ptr %391, align 4
  %392 = load i8, ptr %324, align 1
  %393 = zext i8 %392 to i32
  %394 = shl nuw nsw i32 %393, 2
  %395 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %394, i32 noundef 3520) #21
  %396 = icmp eq ptr %395, null
  br i1 %396, label %530, label %397

397:                                              ; preds = %372
  %398 = load i8, ptr %324, align 1
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %454, label %400

400:                                              ; preds = %397
  %401 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 5
  %402 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 8
  br label %403

403:                                              ; preds = %449, %400
  %404 = phi i32 [ 0, %400 ], [ %450, %449 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #16, !annotation !8
  %405 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %406 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %405, i32 noundef 3264, i32 noundef 64) #19
  %407 = getelementptr ptr, ptr %395, i32 %404
  store ptr %406, ptr %407, align 4
  %408 = icmp eq ptr %406, null
  br i1 %408, label %448, label %409

409:                                              ; preds = %403
  %410 = load ptr, ptr %402, align 4
  %411 = icmp eq ptr %410, null
  br i1 %411, label %434, label %412

412:                                              ; preds = %409
  %413 = load i32, ptr %410, align 4
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %434, label %415

415:                                              ; preds = %430, %412
  %416 = phi i32 [ %432, %430 ], [ %413, %412 ]
  %417 = phi ptr [ %431, %430 ], [ %410, %412 ]
  %418 = icmp eq i32 %416, %1
  br i1 %418, label %419, label %430

419:                                              ; preds = %415
  %420 = getelementptr inbounds %struct.usbmix_selector_map, ptr %417, i32 0, i32 1
  %421 = load i32, ptr %420, align 4
  %422 = icmp sgt i32 %421, %404
  br i1 %422, label %423, label %430

423:                                              ; preds = %419
  %424 = getelementptr inbounds %struct.usbmix_selector_map, ptr %417, i32 0, i32 2
  %425 = load ptr, ptr %424, align 4
  %426 = getelementptr ptr, ptr %425, i32 %404
  %427 = load ptr, ptr %426, align 4
  %428 = call i32 @strscpy(ptr noundef nonnull %406, ptr noundef %427, i32 noundef 64) #16
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %434, label %449

430:                                              ; preds = %419, %415
  %431 = getelementptr %struct.usbmix_selector_map, ptr %417, i32 1
  %432 = load i32, ptr %431, align 4
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %415

434:                                              ; preds = %430, %423, %412, %409
  %435 = getelementptr %struct.uac_selector_unit_descriptor, ptr %23, i32 0, i32 5, i32 %404
  %436 = load i8, ptr %435, align 1
  %437 = zext i8 %436 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #16
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %401, i8 0, i32 32, i1 false) #16
  %438 = call fastcc i32 @__check_input_term(ptr noundef %0, i32 noundef %437, ptr noundef nonnull %4) #16
  %439 = icmp sgt i32 %438, -1
  br i1 %439, label %440, label %445

440:                                              ; preds = %434
  %441 = load ptr, ptr %0, align 4
  %442 = load ptr, ptr %407, align 4
  %443 = call fastcc i32 @get_term_name(ptr noundef %441, ptr noundef nonnull %4, ptr noundef %442, i32 noundef 64, i32 noundef 0) #16
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %449

445:                                              ; preds = %440, %434
  %446 = load ptr, ptr %407, align 4
  %447 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %446, ptr noundef nonnull @.str.163, i32 noundef %404) #16
  br label %449

448:                                              ; preds = %403
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #16
  br label %518

449:                                              ; preds = %445, %440, %423
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #16
  %450 = add nuw nsw i32 %404, 1
  %451 = load i8, ptr %324, align 1
  %452 = zext i8 %451 to i32
  %453 = icmp ult i32 %450, %452
  br i1 %453, label %403, label %454

454:                                              ; preds = %449, %397
  %455 = call ptr @snd_ctl_new1(ptr noundef nonnull @mixer_selectunit_ctl, ptr noundef nonnull %370) #16
  %456 = icmp eq ptr %455, null
  br i1 %456, label %457, label %462

457:                                              ; preds = %454
  %458 = load ptr, ptr %0, align 4
  %459 = getelementptr inbounds %struct.snd_usb_audio, ptr %458, i32 0, i32 1
  %460 = load ptr, ptr %459, align 4
  %461 = getelementptr inbounds %struct.usb_device, ptr %460, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %461, ptr noundef nonnull @.str.43) #20
  br label %518

462:                                              ; preds = %454
  %463 = ptrtoint ptr %395 to i32
  %464 = getelementptr inbounds %struct.snd_kcontrol, ptr %455, i32 0, i32 7
  store i32 %463, ptr %464, align 4
  %465 = getelementptr inbounds %struct.snd_kcontrol, ptr %455, i32 0, i32 9
  store ptr @usb_mixer_selector_elem_free, ptr %465, align 4
  %466 = getelementptr inbounds %struct.snd_kcontrol, ptr %455, i32 0, i32 1, i32 4
  br i1 %368, label %474, label %467

467:                                              ; preds = %462
  %468 = getelementptr inbounds %struct.usbmix_name_map, ptr %367, i32 0, i32 1
  %469 = load ptr, ptr %468, align 4
  %470 = icmp eq ptr %469, null
  br i1 %470, label %474, label %471

471:                                              ; preds = %467
  %472 = call i32 @strscpy(ptr noundef %466, ptr noundef nonnull %469, i32 noundef 43) #16
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %516

474:                                              ; preds = %471, %467, %462
  %475 = load ptr, ptr %7, align 4
  %476 = getelementptr inbounds %struct.usb_mixer_interface, ptr %475, i32 0, i32 6
  %477 = load i32, ptr %476, align 4
  %478 = icmp eq i32 %477, 48
  br i1 %478, label %496, label %479

479:                                              ; preds = %474
  %480 = load i8, ptr %23, align 1
  %481 = zext i8 %480 to i32
  %482 = add nsw i32 %481, -1
  %483 = getelementptr i8, ptr %23, i32 %482
  %484 = load i8, ptr %483, align 1
  %485 = icmp eq i8 %484, 0
  br i1 %485, label %496, label %486

486:                                              ; preds = %479
  %487 = zext i8 %484 to i32
  %488 = load ptr, ptr %0, align 4
  %489 = getelementptr inbounds %struct.snd_usb_audio, ptr %488, i32 0, i32 1
  %490 = load ptr, ptr %489, align 4
  %491 = call i32 @usb_string(ptr noundef %490, i32 noundef %487, ptr noundef %466, i32 noundef 43) #16
  %492 = icmp slt i32 %491, 0
  br i1 %492, label %496, label %493

493:                                              ; preds = %486
  %494 = getelementptr i8, ptr %466, i32 %491
  store i8 0, ptr %494, align 1
  %495 = icmp eq i32 %491, 0
  br i1 %495, label %496, label %503

496:                                              ; preds = %493, %486, %479, %474
  %497 = load ptr, ptr %0, align 4
  %498 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 6
  %499 = call fastcc i32 @get_term_name(ptr noundef %497, ptr noundef %498, ptr noundef %466, i32 noundef 44, i32 noundef 0) #16
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %501, label %503

501:                                              ; preds = %496
  %502 = call i32 @strscpy(ptr noundef %466, ptr noundef nonnull @.str.164, i32 noundef 44) #16
  br label %503

503:                                              ; preds = %501, %496, %493
  %504 = load i8, ptr %46, align 1
  %505 = add i8 %504, -11
  %506 = icmp ult i8 %505, 2
  br i1 %506, label %513, label %507

507:                                              ; preds = %503
  %508 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 6, i32 1
  %509 = load i32, ptr %508, align 4
  %510 = and i32 %509, 65280
  %511 = icmp eq i32 %510, 256
  %512 = select i1 %511, ptr @.str.166, ptr @.str.167
  br label %513

513:                                              ; preds = %507, %503
  %514 = phi ptr [ @.str.165, %503 ], [ %512, %507 ]
  %515 = call i32 @strlcat(ptr noundef %466, ptr noundef nonnull %514, i32 noundef 44) #16
  br label %516

516:                                              ; preds = %513, %471
  %517 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %370, ptr noundef nonnull %455, i1 noundef zeroext true) #16
  br label %723

518:                                              ; preds = %457, %448
  %519 = load i8, ptr %324, align 1
  %520 = icmp eq i8 %519, 0
  br i1 %520, label %529, label %521

521:                                              ; preds = %521, %518
  %522 = phi i32 [ %525, %521 ], [ 0, %518 ]
  %523 = getelementptr ptr, ptr %395, i32 %522
  %524 = load ptr, ptr %523, align 4
  call void @kfree(ptr noundef %524) #16
  %525 = add nuw nsw i32 %522, 1
  %526 = load i8, ptr %324, align 1
  %527 = zext i8 %526 to i32
  %528 = icmp ult i32 %525, %527
  br i1 %528, label %521, label %529

529:                                              ; preds = %521, %518
  call void @kfree(ptr noundef nonnull %395) #16
  br label %530

530:                                              ; preds = %529, %372
  call void @kfree(ptr noundef nonnull %370) #16
  br label %723

531:                                              ; preds = %49, %49, %49
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #16
  %532 = load ptr, ptr %7, align 4
  %533 = getelementptr inbounds %struct.usb_mixer_interface, ptr %532, i32 0, i32 6
  %534 = load i32, ptr %533, align 4
  switch i32 %534, label %551 [
    i32 0, label %535
    i32 32, label %545
  ]

535:                                              ; preds = %531
  %536 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %23, i32 0, i32 5
  %537 = load i8, ptr %536, align 1
  %538 = zext i8 %537 to i32
  %539 = load i8, ptr %23, align 1
  %540 = zext i8 %539 to i16
  %541 = add nsw i16 %540, -7
  %542 = zext i8 %537 to i16
  %543 = sdiv i16 %541, %542
  %544 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %23, i32 0, i32 6
  br label %557

545:                                              ; preds = %531
  %546 = load i8, ptr %23, align 1
  %547 = zext i8 %546 to i16
  %548 = add nsw i16 %547, -6
  %549 = sdiv i16 %548, 4
  %550 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %23, i32 0, i32 5
  br label %557

551:                                              ; preds = %531
  %552 = load i8, ptr %23, align 1
  %553 = zext i8 %552 to i16
  %554 = add nsw i16 %553, -7
  %555 = sdiv i16 %554, 4
  %556 = getelementptr inbounds %struct.uac3_feature_unit_descriptor, ptr %23, i32 0, i32 5
  br label %557

557:                                              ; preds = %551, %545, %535
  %558 = phi i32 [ %538, %535 ], [ 4, %545 ], [ 4, %551 ]
  %559 = phi ptr [ %544, %535 ], [ %550, %545 ], [ %556, %551 ]
  %560 = phi i16 [ %543, %535 ], [ %549, %545 ], [ %555, %551 ]
  %561 = sext i16 %560 to i32
  %562 = add nsw i32 %561, -1
  %563 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %23, i32 0, i32 4
  %564 = load i8, ptr %563, align 1
  %565 = zext i8 %564 to i32
  %566 = tail call fastcc i32 @parse_audio_unit(ptr noundef %0, i32 noundef %565) #16
  %567 = icmp slt i32 %566, 0
  br i1 %567, label %705, label %568

568:                                              ; preds = %557
  %569 = load i8, ptr %563, align 1
  %570 = zext i8 %569 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #16
  %571 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 5
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %571, i8 0, i32 32, i1 false) #16
  %572 = call fastcc i32 @__check_input_term(ptr noundef %0, i32 noundef %570, ptr noundef nonnull %3) #16
  %573 = icmp slt i32 %572, 0
  br i1 %573, label %705, label %574

574:                                              ; preds = %568
  %575 = call i32 @snd_usb_combine_bytes(ptr noundef %559, i32 noundef %558) #16
  %576 = load ptr, ptr %0, align 4
  %577 = getelementptr inbounds %struct.snd_usb_audio, ptr %576, i32 0, i32 4
  %578 = load i32, ptr %577, align 4
  switch i32 %578, label %588 [
    i32 146482946, label %579
    i32 288420369, label %584
  ]

579:                                              ; preds = %574
  %580 = getelementptr inbounds %struct.snd_usb_audio, ptr %576, i32 0, i32 1
  %581 = load ptr, ptr %580, align 4
  %582 = getelementptr inbounds %struct.usb_device, ptr %581, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %582, ptr noundef nonnull @.str.168) #20
  %583 = and i32 %575, -3
  br label %588

584:                                              ; preds = %574
  %585 = getelementptr inbounds %struct.snd_usb_audio, ptr %576, i32 0, i32 1
  %586 = load ptr, ptr %585, align 4
  %587 = getelementptr inbounds %struct.usb_device, ptr %586, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %587, ptr noundef nonnull @.str.169) #20
  br label %588

588:                                              ; preds = %584, %579, %574
  %589 = phi i32 [ %575, %574 ], [ %575, %584 ], [ %583, %579 ]
  %590 = phi i32 [ %562, %574 ], [ 0, %584 ], [ %562, %579 ]
  %591 = load ptr, ptr %7, align 4
  %592 = getelementptr inbounds %struct.usb_mixer_interface, ptr %591, i32 0, i32 6
  %593 = load i32, ptr %592, align 4
  %594 = icmp eq i32 %593, 0
  %595 = icmp sgt i32 %590, 0
  %596 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 7
  %597 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 6
  br i1 %594, label %598, label %643

598:                                              ; preds = %640, %588
  %599 = phi i32 [ %641, %640 ], [ 0, %588 ]
  %600 = getelementptr [13 x %struct.usb_feature_control_info], ptr @audio_feature_info, i32 0, i32 %599
  %601 = load i32, ptr %600, align 4
  %602 = shl nuw i32 1, %599
  br i1 %595, label %603, label %628

603:                                              ; preds = %603, %598
  %604 = phi i32 [ %614, %603 ], [ 0, %598 ]
  %605 = phi i32 [ %606, %603 ], [ 0, %598 ]
  %606 = add nuw nsw i32 %605, 1
  %607 = mul nuw nsw i32 %606, %558
  %608 = getelementptr i8, ptr %559, i32 %607
  %609 = call i32 @snd_usb_combine_bytes(ptr noundef %608, i32 noundef %558) #16
  %610 = and i32 %609, %602
  %611 = icmp eq i32 %610, 0
  %612 = shl nuw i32 1, %605
  %613 = select i1 %611, i32 0, i32 %612
  %614 = or i32 %613, %604
  %615 = icmp eq i32 %606, %590
  br i1 %615, label %616, label %603

616:                                              ; preds = %603
  %617 = and i32 %614, 1
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %628, label %619

619:                                              ; preds = %616
  %620 = load i8, ptr %23, align 1
  %621 = zext i8 %620 to i32
  %622 = add nsw i32 %621, -1
  %623 = getelementptr i8, ptr %23, i32 %622
  %624 = load i8, ptr %623, align 1
  %625 = zext i8 %624 to i32
  %626 = load ptr, ptr %7, align 4
  %627 = load ptr, ptr %596, align 4
  call fastcc void @__build_feature_ctl(ptr noundef %626, ptr noundef %627, i32 noundef %614, i32 noundef %601, ptr noundef nonnull %3, ptr noundef %597, i32 noundef %1, i32 noundef %625, i32 noundef 0) #16
  br label %628

628:                                              ; preds = %619, %616, %598
  %629 = and i32 %602, %589
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %640, label %631

631:                                              ; preds = %628
  %632 = load i8, ptr %23, align 1
  %633 = zext i8 %632 to i32
  %634 = add nsw i32 %633, -1
  %635 = getelementptr i8, ptr %23, i32 %634
  %636 = load i8, ptr %635, align 1
  %637 = zext i8 %636 to i32
  %638 = load ptr, ptr %7, align 4
  %639 = load ptr, ptr %596, align 4
  call fastcc void @__build_feature_ctl(ptr noundef %638, ptr noundef %639, i32 noundef 0, i32 noundef %601, ptr noundef nonnull %3, ptr noundef %597, i32 noundef %1, i32 noundef %637, i32 noundef 0) #16
  br label %640

640:                                              ; preds = %631, %628
  %641 = add nuw nsw i32 %599, 1
  %642 = icmp eq i32 %641, 10
  br i1 %642, label %705, label %598

643:                                              ; preds = %702, %588
  %644 = phi i32 [ %703, %702 ], [ 0, %588 ]
  %645 = getelementptr [13 x %struct.usb_feature_control_info], ptr @audio_feature_info, i32 0, i32 %644
  %646 = load i32, ptr %645, align 4
  %647 = shl i32 %646, 1
  %648 = and i32 %647, 510
  %649 = add nsw i32 %648, -2
  %650 = shl nuw i32 1, %649
  br i1 %595, label %651, label %686

651:                                              ; preds = %643
  %652 = shl i32 2, %649
  br label %653

653:                                              ; preds = %670, %651
  %654 = phi i32 [ 0, %651 ], [ %672, %670 ]
  %655 = phi i32 [ 0, %651 ], [ %671, %670 ]
  %656 = phi i32 [ 0, %651 ], [ %657, %670 ]
  %657 = add nuw nsw i32 %656, 1
  %658 = mul nuw nsw i32 %657, %558
  %659 = getelementptr i8, ptr %559, i32 %658
  %660 = call i32 @snd_usb_combine_bytes(ptr noundef %659, i32 noundef %558) #16
  %661 = and i32 %660, %650
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %670, label %663

663:                                              ; preds = %653
  %664 = shl nuw i32 1, %656
  %665 = or i32 %664, %655
  %666 = and i32 %660, %652
  %667 = icmp eq i32 %666, 0
  %668 = select i1 %667, i32 %664, i32 0
  %669 = or i32 %668, %654
  br label %670

670:                                              ; preds = %663, %653
  %671 = phi i32 [ %655, %653 ], [ %665, %663 ]
  %672 = phi i32 [ %654, %653 ], [ %669, %663 ]
  %673 = icmp eq i32 %657, %590
  br i1 %673, label %674, label %653

674:                                              ; preds = %670
  %675 = and i32 %671, 1
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %686, label %677

677:                                              ; preds = %674
  %678 = load i8, ptr %23, align 1
  %679 = zext i8 %678 to i32
  %680 = add nsw i32 %679, -1
  %681 = getelementptr i8, ptr %23, i32 %680
  %682 = load i8, ptr %681, align 1
  %683 = zext i8 %682 to i32
  %684 = load ptr, ptr %7, align 4
  %685 = load ptr, ptr %596, align 4
  call fastcc void @__build_feature_ctl(ptr noundef %684, ptr noundef %685, i32 noundef %671, i32 noundef %646, ptr noundef nonnull %3, ptr noundef %597, i32 noundef %1, i32 noundef %683, i32 noundef %672) #16
  br label %686

686:                                              ; preds = %677, %674, %643
  %687 = and i32 %650, %589
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %702, label %689

689:                                              ; preds = %686
  %690 = shl i32 2, %649
  %691 = and i32 %690, %589
  %692 = icmp eq i32 %691, 0
  %693 = zext i1 %692 to i32
  %694 = load i8, ptr %23, align 1
  %695 = zext i8 %694 to i32
  %696 = add nsw i32 %695, -1
  %697 = getelementptr i8, ptr %23, i32 %696
  %698 = load i8, ptr %697, align 1
  %699 = zext i8 %698 to i32
  %700 = load ptr, ptr %7, align 4
  %701 = load ptr, ptr %596, align 4
  call fastcc void @__build_feature_ctl(ptr noundef %700, ptr noundef %701, i32 noundef 0, i32 noundef %646, ptr noundef nonnull %3, ptr noundef %597, i32 noundef %1, i32 noundef %699, i32 noundef %693) #16
  br label %702

702:                                              ; preds = %689, %686
  %703 = add nuw nsw i32 %644, 1
  %704 = icmp eq i32 %703, 13
  br i1 %704, label %705, label %643

705:                                              ; preds = %702, %640, %568, %557
  %706 = phi i32 [ %566, %557 ], [ %572, %568 ], [ 0, %640 ], [ 0, %702 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #16
  br label %723

707:                                              ; preds = %49, %49, %49
  %708 = load ptr, ptr %7, align 4
  %709 = getelementptr inbounds %struct.usb_mixer_interface, ptr %708, i32 0, i32 6
  %710 = load i32, ptr %709, align 4
  %711 = icmp eq i32 %710, 48
  br i1 %711, label %714, label %712

712:                                              ; preds = %707
  %713 = tail call fastcc i32 @build_audio_procunit(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %23, ptr noundef nonnull @procunits, i1 noundef zeroext false) #16
  br label %723

714:                                              ; preds = %707
  %715 = tail call fastcc i32 @build_audio_procunit(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %23, ptr noundef nonnull @uac3_procunits, i1 noundef zeroext false) #16
  br label %723

716:                                              ; preds = %49, %49, %49
  %717 = tail call fastcc i32 @build_audio_procunit(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %23, ptr noundef nonnull @extunits, i1 noundef zeroext true) #16
  br label %723

718:                                              ; preds = %49
  %719 = load ptr, ptr %0, align 4
  %720 = getelementptr inbounds %struct.snd_usb_audio, ptr %719, i32 0, i32 1
  %721 = load ptr, ptr %720, align 4
  %722 = getelementptr inbounds %struct.usb_device, ptr %721, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %722, ptr noundef nonnull @.str.157, i32 noundef %1, i32 noundef %52) #20
  br label %723

723:                                              ; preds = %718, %716, %714, %712, %705, %530, %516, %366, %362, %339, %332, %321, %319, %84, %49, %49, %45, %40, %2
  %724 = phi i32 [ -22, %718 ], [ %717, %716 ], [ %706, %705 ], [ %322, %321 ], [ %320, %319 ], [ 0, %84 ], [ -22, %40 ], [ 0, %2 ], [ 0, %45 ], [ 0, %49 ], [ 0, %49 ], [ -12, %530 ], [ %517, %516 ], [ 0, %339 ], [ 0, %362 ], [ -12, %366 ], [ %715, %714 ], [ %713, %712 ], [ %337, %332 ]
  ret i32 %724
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @parse_clock_source_unit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [44 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(44) %3, i8 0, i32 44, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 32
  br i1 %8, label %9, label %91

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.uac_clock_source_descriptor, ptr %1, i32 0, i32 5
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %91, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 152) #19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %91, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.uac_clock_source_descriptor, ptr %1, i32 0, i32 3
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  store ptr %19, ptr %16, align 8
  %23 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %16, i32 0, i32 3
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %16, i32 0, i32 5
  store ptr @snd_usb_mixer_dump_cval, ptr %24, align 4
  %25 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %16, i32 0, i32 6
  store ptr @restore_mixer_value, ptr %25, align 8
  %26 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %16, i32 0, i32 8
  store i32 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %16, i32 0, i32 9
  store i32 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %16, i32 0, i32 6
  store i32 1, ptr %28, align 8
  %29 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %16, i32 0, i32 7
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %16, i32 0, i32 1
  store i32 2, ptr %30, align 4
  %31 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %16, i32 0, i32 5
  store i32 1, ptr %31, align 4
  %32 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @usb_bool_master_control_ctl_ro, ptr noundef nonnull %16) #16
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %18
  tail call void @kfree(ptr noundef nonnull %16) #16
  br label %91

35:                                               ; preds = %18
  %36 = getelementptr inbounds %struct.snd_kcontrol, ptr %32, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %36, align 4
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr inbounds %struct.uac_clock_source_descriptor, ptr %1, i32 0, i32 7
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = getelementptr inbounds %struct.snd_usb_audio, ptr %37, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = call i32 @usb_string(ptr noundef %42, i32 noundef %40, ptr noundef nonnull %3, i32 noundef 43) #16
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %35
  %46 = getelementptr i8, ptr %3, i32 %43
  store i8 0, ptr %46, align 1
  %47 = icmp eq i32 %43, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.snd_kcontrol, ptr %32, i32 0, i32 1, i32 4
  %50 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %49, i32 noundef 44, ptr noundef nonnull @.str.161, ptr noundef nonnull %3)
  br label %56

51:                                               ; preds = %45, %35
  %52 = getelementptr inbounds %struct.snd_kcontrol, ptr %32, i32 0, i32 1, i32 4
  %53 = load i8, ptr %20, align 1
  %54 = zext i8 %53 to i32
  %55 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %52, i32 noundef 44, ptr noundef nonnull @.str.162, i32 noundef %54)
  br label %56

56:                                               ; preds = %51, %48
  %57 = load ptr, ptr %16, align 8
  %58 = getelementptr inbounds %struct.snd_kcontrol, ptr %32, i32 0, i32 1
  %59 = load ptr, ptr %57, align 4
  %60 = getelementptr inbounds %struct.snd_usb_audio, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = call ptr @snd_ctl_find_id(ptr noundef %61, ptr noundef %58) #16
  %63 = icmp eq ptr %62, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.snd_kcontrol, ptr %32, i32 0, i32 1, i32 5
  br label %66

66:                                               ; preds = %66, %64
  %67 = load i32, ptr %65, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %65, align 4
  %69 = load ptr, ptr %57, align 4
  %70 = getelementptr inbounds %struct.snd_usb_audio, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = call ptr @snd_ctl_find_id(ptr noundef %71, ptr noundef %58) #16
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %66

74:                                               ; preds = %66, %56
  %75 = load ptr, ptr %57, align 4
  %76 = getelementptr inbounds %struct.snd_usb_audio, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = call i32 @snd_ctl_add(ptr noundef %77, ptr noundef nonnull %32) #16
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %16, i32 0, i32 2
  store ptr %32, ptr %81, align 8
  %82 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %16, i32 0, i32 4
  store i8 1, ptr %82, align 8
  %83 = getelementptr inbounds %struct.usb_mixer_interface, ptr %57, i32 0, i32 5
  %84 = load ptr, ptr %83, align 4
  %85 = load i32, ptr %23, align 4
  %86 = getelementptr ptr, ptr %84, i32 %85
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %16, i32 0, i32 1
  store ptr %87, ptr %88, align 4
  %89 = load ptr, ptr %83, align 4
  %90 = getelementptr ptr, ptr %89, i32 %85
  store ptr %16, ptr %90, align 4
  br label %91

91:                                               ; preds = %80, %74, %34, %14, %9, %2
  %92 = phi i32 [ -12, %34 ], [ -22, %2 ], [ 0, %9 ], [ -12, %14 ], [ 0, %80 ], [ %78, %74 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #16
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_find_desc(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__check_input_term(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 5
  %9 = tail call i32 @_test_and_set_bit(i32 noundef %1, ptr noundef %8) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %313

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 2
  %13 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 3
  %14 = shl i32 %7, 8
  br label %15

15:                                               ; preds = %47, %11
  %16 = phi i32 [ %1, %11 ], [ %50, %47 ]
  %17 = trunc i32 %16 to i8
  %18 = load ptr, ptr %12, align 4
  %19 = load i32, ptr %13, align 4
  %20 = tail call ptr @snd_usb_find_desc(ptr noundef %18, i32 noundef %19, ptr noundef null, i8 noundef zeroext 36) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %313, label %22

22:                                               ; preds = %35, %15
  %23 = phi ptr [ %38, %35 ], [ %20, %15 ]
  %24 = load i8, ptr %23, align 1
  %25 = icmp ugt i8 %24, 3
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = getelementptr %struct.uac_feature_unit_descriptor, ptr %23, i32 0, i32 2
  %28 = load i8, ptr %27, align 1
  %29 = add i8 %28, -2
  %30 = icmp ult i8 %29, 13
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %23, i32 0, i32 3
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, %17
  br i1 %34, label %40, label %35

35:                                               ; preds = %31, %26, %22
  %36 = load ptr, ptr %12, align 4
  %37 = load i32, ptr %13, align 4
  %38 = tail call ptr @snd_usb_find_desc(ptr noundef %36, i32 noundef %37, ptr noundef nonnull %23, i8 noundef zeroext 36) #16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %313, label %22

40:                                               ; preds = %31
  %41 = tail call zeroext i1 @snd_usb_validate_audio_desc(ptr noundef nonnull %23, i32 noundef %7) #16
  br i1 %41, label %42, label %313

42:                                               ; preds = %40
  %43 = getelementptr %struct.uac_feature_unit_descriptor, ptr %23, i32 0, i32 2
  store i32 %16, ptr %2, align 4
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %14, %45
  switch i32 %46, label %313 [
    i32 6, label %47
    i32 8198, label %47
    i32 12295, label %47
    i32 2, label %53
    i32 8194, label %70
    i32 12290, label %92
    i32 4, label %115
    i32 8196, label %115
    i32 12293, label %115
    i32 5, label %169
    i32 8197, label %169
    i32 8203, label %169
    i32 12294, label %169
    i32 12300, label %169
    i32 7, label %189
    i32 8200, label %189
    i32 12297, label %189
    i32 8199, label %241
    i32 12296, label %241
    i32 8, label %249
    i32 8201, label %249
    i32 12298, label %249
    i32 8202, label %301
    i32 12299, label %307
  ]

47:                                               ; preds = %42, %42, %42
  %48 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %23, i32 0, i32 4
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = tail call i32 @_test_and_set_bit(i32 noundef %50, ptr noundef %8) #16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %15, label %313

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.uac_input_terminal_descriptor, ptr %23, i32 0, i32 4
  %55 = load i16, ptr %54, align 1
  %56 = zext i16 %55 to i32
  %57 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 1
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.uac_input_terminal_descriptor, ptr %23, i32 0, i32 6
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 2
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.uac_input_terminal_descriptor, ptr %23, i32 0, i32 7
  %63 = load i16, ptr %62, align 1
  %64 = zext i16 %63 to i32
  %65 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 3
  store i32 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.uac_input_terminal_descriptor, ptr %23, i32 0, i32 9
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 4
  store i32 %68, ptr %69, align 4
  br label %313

70:                                               ; preds = %42
  %71 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, ptr %23, i32 0, i32 6
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = tail call fastcc i32 @__check_input_term(ptr noundef %0, i32 noundef %73, ptr noundef %2) #16
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %313, label %76

76:                                               ; preds = %70
  store i32 %16, ptr %2, align 4
  %77 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, ptr %23, i32 0, i32 4
  %78 = load i16, ptr %77, align 1
  %79 = zext i16 %78 to i32
  %80 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 1
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, ptr %23, i32 0, i32 7
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 2
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, ptr %23, i32 0, i32 8
  %86 = load i32, ptr %85, align 1
  %87 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 3
  store i32 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, ptr %23, i32 0, i32 11
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 4
  store i32 %90, ptr %91, align 4
  br label %313

92:                                               ; preds = %42
  %93 = getelementptr inbounds %struct.uac3_input_terminal_descriptor, ptr %23, i32 0, i32 6
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = tail call fastcc i32 @__check_input_term(ptr noundef %0, i32 noundef %95, ptr noundef %2) #16
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %313, label %98

98:                                               ; preds = %92
  store i32 %16, ptr %2, align 4
  %99 = getelementptr inbounds %struct.uac3_input_terminal_descriptor, ptr %23, i32 0, i32 4
  %100 = load i16, ptr %99, align 1
  %101 = zext i16 %100 to i32
  %102 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 1
  store i32 %101, ptr %102, align 4
  %103 = getelementptr inbounds %struct.uac3_input_terminal_descriptor, ptr %23, i32 0, i32 8
  %104 = load i16, ptr %103, align 1
  %105 = zext i16 %104 to i32
  %106 = tail call fastcc i32 @get_cluster_channels_v3(ptr noundef %0, i32 noundef %105) #16
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %313, label %108

108:                                              ; preds = %98
  %109 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 2
  store i32 %106, ptr %109, align 4
  %110 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 3
  store i32 0, ptr %110, align 4
  %111 = getelementptr inbounds %struct.uac3_input_terminal_descriptor, ptr %23, i32 0, i32 11
  %112 = load i16, ptr %111, align 1
  %113 = zext i16 %112 to i32
  %114 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 4
  store i32 %113, ptr %114, align 4
  br label %313

115:                                              ; preds = %42, %42, %42
  %116 = load ptr, ptr %4, align 4
  %117 = getelementptr inbounds %struct.usb_mixer_interface, ptr %116, i32 0, i32 6
  %118 = load i32, ptr %117, align 4
  %119 = tail call fastcc i32 @uac_mixer_unit_get_channels(ptr noundef %0, ptr noundef nonnull %23) #16
  %120 = icmp slt i32 %119, 1
  br i1 %120, label %313, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 1
  store i32 327680, ptr %122, align 4
  %123 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 2
  store i32 %119, ptr %123, align 4
  %124 = icmp eq i32 %118, 48
  br i1 %124, label %313, label %125

125:                                              ; preds = %121
  %126 = icmp eq i32 %118, 0
  %127 = getelementptr inbounds %struct.uac_mixer_unit_descriptor, ptr %23, i32 0, i32 4
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i32
  br i1 %126, label %130, label %136

130:                                              ; preds = %125
  %131 = add nuw nsw i32 %129, 2
  %132 = getelementptr %struct.uac_mixer_unit_descriptor, ptr %23, i32 0, i32 5, i32 %131
  %133 = load i8, ptr %132, align 1
  %134 = zext i8 %133 to i32
  %135 = shl nuw nsw i32 %134, 8
  br label %154

136:                                              ; preds = %125
  %137 = add nuw nsw i32 %129, 4
  %138 = getelementptr %struct.uac_mixer_unit_descriptor, ptr %23, i32 0, i32 5, i32 %137
  %139 = load i8, ptr %138, align 1
  %140 = zext i8 %139 to i32
  %141 = shl nuw i32 %140, 24
  %142 = add nuw nsw i32 %129, 3
  %143 = getelementptr %struct.uac_mixer_unit_descriptor, ptr %23, i32 0, i32 5, i32 %142
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  %146 = shl nuw nsw i32 %145, 16
  %147 = or i32 %146, %141
  %148 = add nuw nsw i32 %129, 2
  %149 = getelementptr %struct.uac_mixer_unit_descriptor, ptr %23, i32 0, i32 5, i32 %148
  %150 = load i8, ptr %149, align 1
  %151 = zext i8 %150 to i32
  %152 = shl nuw nsw i32 %151, 8
  %153 = or i32 %147, %152
  br label %154

154:                                              ; preds = %136, %130
  %155 = phi i32 [ %153, %136 ], [ %135, %130 ]
  %156 = add nuw nsw i32 %129, 1
  %157 = getelementptr %struct.uac_mixer_unit_descriptor, ptr %23, i32 0, i32 5, i32 %156
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i32
  %160 = or i32 %155, %159
  %161 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 3
  store i32 %160, ptr %161, align 4
  %162 = load i8, ptr %23, align 1
  %163 = zext i8 %162 to i32
  %164 = add nsw i32 %163, -1
  %165 = getelementptr i8, ptr %23, i32 %164
  %166 = load i8, ptr %165, align 1
  %167 = zext i8 %166 to i32
  %168 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 4
  store i32 %167, ptr %168, align 4
  br label %313

169:                                              ; preds = %42, %42, %42, %42, %42
  %170 = getelementptr inbounds %struct.uac_selector_unit_descriptor, ptr %23, i32 0, i32 5
  %171 = load i8, ptr %170, align 1
  %172 = zext i8 %171 to i32
  %173 = tail call fastcc i32 @__check_input_term(ptr noundef %0, i32 noundef %172, ptr noundef %2) #16
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %313, label %175

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 1
  store i32 393216, ptr %176, align 4
  store i32 %16, ptr %2, align 4
  %177 = load ptr, ptr %4, align 4
  %178 = getelementptr inbounds %struct.usb_mixer_interface, ptr %177, i32 0, i32 6
  %179 = load i32, ptr %178, align 4
  %180 = icmp eq i32 %179, 48
  br i1 %180, label %313, label %181

181:                                              ; preds = %175
  %182 = load i8, ptr %23, align 1
  %183 = zext i8 %182 to i32
  %184 = add nsw i32 %183, -1
  %185 = getelementptr i8, ptr %23, i32 %184
  %186 = load i8, ptr %185, align 1
  %187 = zext i8 %186 to i32
  %188 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 4
  store i32 %187, ptr %188, align 4
  br label %313

189:                                              ; preds = %42, %42, %42
  %190 = load ptr, ptr %4, align 4
  %191 = getelementptr inbounds %struct.usb_mixer_interface, ptr %190, i32 0, i32 6
  %192 = load i32, ptr %191, align 4
  %193 = getelementptr inbounds %struct.uac_processing_unit_descriptor, ptr %23, i32 0, i32 5
  %194 = load i8, ptr %193, align 1
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %202, label %196

196:                                              ; preds = %189
  %197 = getelementptr inbounds %struct.uac_processing_unit_descriptor, ptr %23, i32 0, i32 6
  %198 = load i8, ptr %197, align 1
  %199 = zext i8 %198 to i32
  %200 = tail call fastcc i32 @__check_input_term(ptr noundef %0, i32 noundef %199, ptr noundef %2) #16
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %313, label %202

202:                                              ; preds = %196, %189
  %203 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 1
  store i32 589824, ptr %203, align 4
  store i32 %16, ptr %2, align 4
  %204 = icmp eq i32 %192, 48
  br i1 %204, label %313, label %205

205:                                              ; preds = %202
  %206 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 2
  %207 = load i32, ptr %206, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %205
  %210 = load i8, ptr %193, align 1
  %211 = zext i8 %210 to i32
  %212 = getelementptr %struct.uac_processing_unit_descriptor, ptr %23, i32 0, i32 6, i32 %211
  %213 = load i8, ptr %212, align 1
  %214 = zext i8 %213 to i32
  store i32 %214, ptr %206, align 4
  %215 = tail call fastcc i32 @uac_processing_unit_wChannelConfig(ptr noundef nonnull %23, i32 noundef %192) #16
  %216 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 3
  store i32 %215, ptr %216, align 4
  br label %217

217:                                              ; preds = %209, %205
  switch i32 %192, label %233 [
    i32 0, label %221
    i32 32, label %218
  ]

218:                                              ; preds = %217
  %219 = load i8, ptr %193, align 1
  %220 = zext i8 %219 to i32
  br label %227

221:                                              ; preds = %217
  %222 = load i8, ptr %193, align 1
  %223 = zext i8 %222 to i32
  %224 = add nuw nsw i32 %223, 4
  %225 = getelementptr %struct.uac_processing_unit_descriptor, ptr %23, i32 0, i32 6, i32 %224
  %226 = load i8, ptr %225, align 1
  br label %227

227:                                              ; preds = %221, %218
  %228 = phi i32 [ %220, %218 ], [ %223, %221 ]
  %229 = phi i8 [ 2, %218 ], [ %226, %221 ]
  %230 = phi i32 [ 6, %218 ], [ 5, %221 ]
  %231 = add nuw nsw i32 %230, %228
  %232 = getelementptr %struct.uac_processing_unit_descriptor, ptr %23, i32 0, i32 6, i32 %231
  br label %233

233:                                              ; preds = %227, %217
  %234 = phi i8 [ %229, %227 ], [ 1, %217 ]
  %235 = phi ptr [ %232, %227 ], [ null, %217 ]
  %236 = zext i8 %234 to i32
  %237 = getelementptr i8, ptr %235, i32 %236
  %238 = load i8, ptr %237, align 1
  %239 = zext i8 %238 to i32
  %240 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 4
  store i32 %239, ptr %240, align 4
  br label %313

241:                                              ; preds = %42, %42
  %242 = getelementptr inbounds %struct.uac2_effect_unit_descriptor, ptr %23, i32 0, i32 5
  %243 = load i8, ptr %242, align 1
  %244 = zext i8 %243 to i32
  %245 = tail call fastcc i32 @__check_input_term(ptr noundef %0, i32 noundef %244, ptr noundef %2) #16
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %313, label %247

247:                                              ; preds = %241
  %248 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 1
  store i32 524288, ptr %248, align 4
  store i32 %16, ptr %2, align 4
  br label %313

249:                                              ; preds = %42, %42, %42
  %250 = load ptr, ptr %4, align 4
  %251 = getelementptr inbounds %struct.usb_mixer_interface, ptr %250, i32 0, i32 6
  %252 = load i32, ptr %251, align 4
  %253 = getelementptr inbounds %struct.uac_processing_unit_descriptor, ptr %23, i32 0, i32 5
  %254 = load i8, ptr %253, align 1
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %262, label %256

256:                                              ; preds = %249
  %257 = getelementptr inbounds %struct.uac_processing_unit_descriptor, ptr %23, i32 0, i32 6
  %258 = load i8, ptr %257, align 1
  %259 = zext i8 %258 to i32
  %260 = tail call fastcc i32 @__check_input_term(ptr noundef %0, i32 noundef %259, ptr noundef %2) #16
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %313, label %262

262:                                              ; preds = %256, %249
  %263 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 1
  store i32 655360, ptr %263, align 4
  store i32 %16, ptr %2, align 4
  %264 = icmp eq i32 %252, 48
  br i1 %264, label %313, label %265

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 2
  %267 = load i32, ptr %266, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %277

269:                                              ; preds = %265
  %270 = load i8, ptr %253, align 1
  %271 = zext i8 %270 to i32
  %272 = getelementptr %struct.uac_processing_unit_descriptor, ptr %23, i32 0, i32 6, i32 %271
  %273 = load i8, ptr %272, align 1
  %274 = zext i8 %273 to i32
  store i32 %274, ptr %266, align 4
  %275 = tail call fastcc i32 @uac_processing_unit_wChannelConfig(ptr noundef nonnull %23, i32 noundef %252) #16
  %276 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 3
  store i32 %275, ptr %276, align 4
  br label %277

277:                                              ; preds = %269, %265
  switch i32 %252, label %293 [
    i32 0, label %281
    i32 32, label %278
  ]

278:                                              ; preds = %277
  %279 = load i8, ptr %253, align 1
  %280 = zext i8 %279 to i32
  br label %287

281:                                              ; preds = %277
  %282 = load i8, ptr %253, align 1
  %283 = zext i8 %282 to i32
  %284 = add nuw nsw i32 %283, 4
  %285 = getelementptr %struct.uac_processing_unit_descriptor, ptr %23, i32 0, i32 6, i32 %284
  %286 = load i8, ptr %285, align 1
  br label %287

287:                                              ; preds = %281, %278
  %288 = phi i32 [ %280, %278 ], [ %283, %281 ]
  %289 = phi i8 [ 2, %278 ], [ %286, %281 ]
  %290 = phi i32 [ 6, %278 ], [ 5, %281 ]
  %291 = add nuw nsw i32 %290, %288
  %292 = getelementptr %struct.uac_processing_unit_descriptor, ptr %23, i32 0, i32 6, i32 %291
  br label %293

293:                                              ; preds = %287, %277
  %294 = phi i8 [ %289, %287 ], [ 1, %277 ]
  %295 = phi ptr [ %292, %287 ], [ null, %277 ]
  %296 = zext i8 %294 to i32
  %297 = getelementptr i8, ptr %295, i32 %296
  %298 = load i8, ptr %297, align 1
  %299 = zext i8 %298 to i32
  %300 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 4
  store i32 %299, ptr %300, align 4
  br label %313

301:                                              ; preds = %42
  %302 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 1
  store i32 720896, ptr %302, align 4
  store i32 %16, ptr %2, align 4
  %303 = getelementptr inbounds %struct.uac_clock_source_descriptor, ptr %23, i32 0, i32 7
  %304 = load i8, ptr %303, align 1
  %305 = zext i8 %304 to i32
  %306 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 4
  store i32 %305, ptr %306, align 4
  br label %313

307:                                              ; preds = %42
  %308 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 1
  store i32 720896, ptr %308, align 4
  store i32 %16, ptr %2, align 4
  %309 = getelementptr inbounds %struct.uac3_clock_source_descriptor, ptr %23, i32 0, i32 7
  %310 = load i16, ptr %309, align 1
  %311 = zext i16 %310 to i32
  %312 = getelementptr inbounds %struct.usb_audio_term, ptr %2, i32 0, i32 4
  store i32 %311, ptr %312, align 4
  br label %313

313:                                              ; preds = %307, %301, %293, %262, %256, %247, %241, %233, %202, %196, %181, %175, %169, %154, %121, %115, %108, %98, %92, %76, %70, %53, %47, %42, %40, %35, %15, %3
  %314 = phi i32 [ 0, %307 ], [ 0, %301 ], [ 0, %53 ], [ 0, %76 ], [ %74, %70 ], [ 0, %108 ], [ %96, %92 ], [ %106, %98 ], [ %119, %115 ], [ 0, %154 ], [ 0, %121 ], [ %173, %169 ], [ 0, %181 ], [ 0, %175 ], [ 0, %233 ], [ %200, %196 ], [ 0, %202 ], [ 0, %247 ], [ %245, %241 ], [ 0, %293 ], [ %260, %256 ], [ 0, %262 ], [ -22, %3 ], [ -19, %35 ], [ -19, %15 ], [ -19, %40 ], [ -19, %42 ], [ -22, %47 ]
  ret i32 %314
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_cluster_channels_v3(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.uac3_cluster_header_descriptor, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %3, i8 0, i32 7, i1 false), !annotation !8
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %7, 8
  %9 = or i32 %8, -2147483520
  %10 = trunc i32 %1 to i16
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 28
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %12, i32 0, i32 2
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i16
  %16 = call i32 @snd_usb_ctl_msg(ptr noundef %6, i32 noundef %9, i8 noundef zeroext 6, i8 noundef zeroext -95, i16 noundef zeroext %10, i16 noundef zeroext %15, ptr noundef nonnull %3, i16 noundef zeroext 7) #16
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = icmp eq i32 %16, 7
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.uac3_cluster_header_descriptor, ptr %3, i32 0, i32 4
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  br label %30

24:                                               ; preds = %18, %2
  %25 = phi i32 [ %16, %2 ], [ -5, %18 ]
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.snd_usb_audio, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.158, i32 noundef %1, i32 noundef %25) #20
  br label %30

30:                                               ; preds = %24, %20
  %31 = phi i32 [ %25, %24 ], [ %23, %20 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #16
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uac_mixer_unit_get_channels(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.uac3_cluster_header_descriptor, align 1
  %4 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 48
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = load i8, ptr %1, align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds %struct.uac_mixer_unit_descriptor, ptr %1, i32 0, i32 4
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = add nuw nsw i32 %14, 6
  %16 = icmp ugt i32 %15, %11
  br i1 %16, label %62, label %17

17:                                               ; preds = %9
  %18 = getelementptr %struct.uac_mixer_unit_descriptor, ptr %1, i32 0, i32 5, i32 %14
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  br label %62

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.uac_mixer_unit_descriptor, ptr %1, i32 0, i32 4
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = add nuw nsw i32 %24, 1
  %26 = getelementptr %struct.uac_mixer_unit_descriptor, ptr %1, i32 0, i32 5, i32 %25
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i16
  %29 = shl nuw i16 %28, 8
  %30 = getelementptr %struct.uac_mixer_unit_descriptor, ptr %1, i32 0, i32 5, i32 %24
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i16
  %33 = or i16 %29, %32
  %34 = zext i16 %33 to i32
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %3, i8 0, i32 7, i1 false) #16, !annotation !8
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr inbounds %struct.snd_usb_audio, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %37, align 8
  %39 = shl i32 %38, 8
  %40 = or i32 %39, -2147483520
  %41 = getelementptr inbounds %struct.snd_usb_audio, ptr %35, i32 0, i32 28
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %42, i32 0, i32 2
  %44 = load i8, ptr %43, align 2
  %45 = zext i8 %44 to i16
  %46 = call i32 @snd_usb_ctl_msg(ptr noundef %37, i32 noundef %40, i8 noundef zeroext 6, i8 noundef zeroext -95, i16 noundef zeroext %33, i16 noundef zeroext %45, ptr noundef nonnull %3, i16 noundef zeroext 7) #16
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %21
  %49 = icmp eq i32 %46, 7
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.uac3_cluster_header_descriptor, ptr %3, i32 0, i32 4
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  br label %60

54:                                               ; preds = %48, %21
  %55 = phi i32 [ %46, %21 ], [ -5, %48 ]
  %56 = load ptr, ptr %0, align 4
  %57 = getelementptr inbounds %struct.snd_usb_audio, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.158, i32 noundef %34, i32 noundef %55) #20
  br label %60

60:                                               ; preds = %54, %50
  %61 = phi i32 [ %55, %54 ], [ %53, %50 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #16
  br label %62

62:                                               ; preds = %60, %17, %9
  %63 = phi i32 [ 0, %9 ], [ %61, %60 ], [ %20, %17 ]
  ret i32 %63
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc i32 @uac_processing_unit_wChannelConfig(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #14 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.uac_processing_unit_descriptor, ptr %0, i32 0, i32 5
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  br i1 %3, label %7, label %13

7:                                                ; preds = %2
  %8 = add nuw nsw i32 %6, 2
  %9 = getelementptr %struct.uac_processing_unit_descriptor, ptr %0, i32 0, i32 6, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 8
  br label %31

13:                                               ; preds = %2
  %14 = add nuw nsw i32 %6, 4
  %15 = getelementptr %struct.uac_processing_unit_descriptor, ptr %0, i32 0, i32 6, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw i32 %17, 24
  %19 = add nuw nsw i32 %6, 3
  %20 = getelementptr %struct.uac_processing_unit_descriptor, ptr %0, i32 0, i32 6, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 16
  %24 = or i32 %23, %18
  %25 = add nuw nsw i32 %6, 2
  %26 = getelementptr %struct.uac_processing_unit_descriptor, ptr %0, i32 0, i32 6, i32 %25
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = or i32 %24, %29
  br label %31

31:                                               ; preds = %13, %7
  %32 = phi i32 [ %30, %13 ], [ %12, %7 ]
  %33 = add nuw nsw i32 %6, 1
  %34 = getelementptr %struct.uac_processing_unit_descriptor, ptr %0, i32 0, i32 6, i32 %33
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %32, %36
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mixer_ctl_master_bool_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 13
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 14, i32 0
  %12 = load i32, ptr %11, align 4
  br label %30

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 %15, 8
  %17 = call fastcc i32 @get_ctl_value(ptr noundef %5, i32 noundef 129, i32 noundef %16, ptr noundef nonnull %3) #16
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load i32, ptr %6, align 4
  %21 = or i32 %20, 1
  store i32 %21, ptr %6, align 4
  %22 = load i32, ptr %3, align 4
  %23 = getelementptr %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 14, i32 0
  store i32 %22, ptr %23, align 4
  br label %30

24:                                               ; preds = %13
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.usb_mixer_interface, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 %17, i32 0
  br label %35

30:                                               ; preds = %19, %10
  %31 = phi i32 [ %12, %10 ], [ %22, %19 ]
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %33, ptr %34, align 8
  br label %35

35:                                               ; preds = %30, %24
  %36 = phi i32 [ %29, %24 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_mixer_selector_elem_free(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %3, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  tail call void @kfree(ptr noundef nonnull %3) #16
  store ptr null, ptr %2, align 4
  %8 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %29, label %17

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %11
  %16 = inttoptr i32 %13 to ptr
  br label %26

17:                                               ; preds = %5
  %18 = inttoptr i32 %9 to ptr
  %19 = icmp sgt i32 %7, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %20, %17
  %21 = phi i32 [ %24, %20 ], [ 0, %17 ]
  %22 = getelementptr ptr, ptr %18, i32 %21
  %23 = load ptr, ptr %22, align 4
  tail call void @kfree(ptr noundef %23) #16
  %24 = add nuw nsw i32 %21, 1
  %25 = icmp eq i32 %24, %7
  br i1 %25, label %26, label %20

26:                                               ; preds = %20, %17, %15
  %27 = phi ptr [ %16, %15 ], [ %18, %17 ], [ %18, %20 ]
  %28 = phi ptr [ %12, %15 ], [ %8, %17 ], [ %8, %20 ]
  tail call void @kfree(ptr noundef nonnull %27) #16
  store i32 0, ptr %28, align 4
  br label %29

29:                                               ; preds = %26, %11, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mixer_ctl_selector_info(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = inttoptr i32 %4 to ptr
  %8 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %9, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef 1, i32 noundef %11, ptr noundef nonnull %7) #16
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ %12, %6 ], [ -22, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mixer_ctl_selector_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 8
  %9 = call fastcc i32 @get_ctl_value(ptr noundef %5, i32 noundef 129, i32 noundef %8, ptr noundef nonnull %3) #16
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 0, ptr %12, align 8
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.usb_mixer_interface, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 %9, i32 0
  br label %42

18:                                               ; preds = %2
  %19 = load i32, ptr %3, align 4
  %20 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 10
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, ptr %20, align 4
  br label %24

24:                                               ; preds = %23, %18
  %25 = phi i32 [ 1, %23 ], [ %21, %18 ]
  %26 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = icmp slt i32 %19, %27
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, %19
  %33 = sub i32 %19, %27
  %34 = xor i32 %27, -1
  %35 = add i32 %25, %34
  %36 = add i32 %35, %31
  %37 = select i1 %32, i32 %33, i32 %36
  %38 = sdiv i32 %37, %25
  br label %39

39:                                               ; preds = %29, %24
  %40 = phi i32 [ 0, %24 ], [ %38, %29 ]
  %41 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %40, ptr %41, align 8
  br label %42

42:                                               ; preds = %39, %11
  %43 = phi i32 [ %17, %11 ], [ 0, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mixer_ctl_selector_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 8
  %9 = call fastcc i32 @get_ctl_value(ptr noundef %5, i32 noundef 129, i32 noundef %8, ptr noundef nonnull %3) #16
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.usb_mixer_interface, ptr %12, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 %9, i32 0
  br label %46

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  br label %38

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, ptr %25, align 4
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ 1, %28 ], [ %26, %24 ]
  %31 = mul i32 %30, %19
  %32 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %31, %33
  %35 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 9
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 @llvm.smin.i32(i32 %34, i32 %36) #16
  br label %38

38:                                               ; preds = %29, %21
  %39 = phi i32 [ %23, %21 ], [ %37, %29 ]
  %40 = load i32, ptr %3, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %6, align 4
  %44 = shl i32 %43, 8
  %45 = tail call i32 @snd_usb_mixer_set_ctl_value(ptr noundef %5, i32 noundef 1, i32 noundef %44, i32 noundef %39) #16
  br label %46

46:                                               ; preds = %42, %38, %11
  %47 = phi i32 [ %16, %11 ], [ 1, %42 ], [ 0, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @build_audio_procunit(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %7 = select i1 %4, ptr @.str.171, ptr @.str.172
  %8 = getelementptr inbounds %struct.uac_processing_unit_descriptor, ptr %2, i32 0, i32 5
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i8 %9, 0
  br i1 %11, label %22, label %15

12:                                               ; preds = %15
  %13 = add nuw nsw i32 %16, 1
  %14 = icmp eq i32 %13, %10
  br i1 %14, label %22, label %15

15:                                               ; preds = %12, %5
  %16 = phi i32 [ %13, %12 ], [ 0, %5 ]
  %17 = getelementptr %struct.uac_processing_unit_descriptor, ptr %2, i32 0, i32 6, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = tail call fastcc i32 @parse_audio_unit(ptr noundef %0, i32 noundef %19)
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %325, label %12

22:                                               ; preds = %12, %5
  %23 = getelementptr inbounds %struct.uac_processing_unit_descriptor, ptr %2, i32 0, i32 4
  %24 = load i16, ptr %23, align 1
  %25 = zext i16 %24 to i32
  %26 = icmp eq ptr %3, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %33, %22
  %28 = phi ptr [ %34, %33 ], [ %3, %22 ]
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  %31 = icmp eq i32 %29, %25
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = getelementptr %struct.procunit_info, ptr %28, i32 1
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %27

36:                                               ; preds = %27
  br i1 %30, label %37, label %38

37:                                               ; preds = %36, %33, %22
  br label %38

38:                                               ; preds = %37, %36
  %39 = phi ptr [ %28, %36 ], [ @build_audio_procunit.default_info, %37 ]
  %40 = getelementptr inbounds %struct.procunit_info, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %325, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 1
  %46 = getelementptr inbounds %struct.mixer_build, ptr %0, i32 0, i32 7
  %47 = getelementptr inbounds %struct.procunit_info, ptr %39, i32 0, i32 1
  br label %48

48:                                               ; preds = %319, %44
  %49 = phi i32 [ %42, %44 ], [ %321, %319 ]
  %50 = phi ptr [ %41, %44 ], [ %320, %319 ]
  %51 = load ptr, ptr %45, align 4
  %52 = getelementptr inbounds %struct.usb_mixer_interface, ptr %51, i32 0, i32 6
  %53 = load i32, ptr %52, align 4
  switch i32 %53, label %62 [
    i32 0, label %56
    i32 32, label %54
    i32 48, label %55
  ]

54:                                               ; preds = %48
  br label %56

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %54, %48
  %57 = phi i32 [ 2, %55 ], [ 6, %54 ], [ 5, %48 ]
  %58 = load i8, ptr %8, align 1
  %59 = zext i8 %58 to i32
  %60 = add nuw nsw i32 %57, %59
  %61 = getelementptr %struct.uac_processing_unit_descriptor, ptr %2, i32 0, i32 6, i32 %60
  br label %62

62:                                               ; preds = %56, %48
  %63 = phi ptr [ null, %48 ], [ %61, %56 ]
  %64 = icmp eq i32 %53, 0
  %65 = freeze i32 %49
  %66 = sdiv i32 %65, 8
  %67 = getelementptr i8, ptr %63, i32 %66
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  br i1 %64, label %70, label %77

70:                                               ; preds = %62
  %71 = mul i32 %66, 8
  %72 = sub i32 %65, %71
  %73 = add nsw i32 %72, -1
  %74 = shl nuw nsw i32 1, %73
  %75 = and i32 %74, %69
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %319, label %84

77:                                               ; preds = %62
  %78 = shl i32 %49, 1
  %79 = and i32 %78, 510
  %80 = add nsw i32 %79, -2
  %81 = shl nuw i32 1, %80
  %82 = and i32 %81, %69
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %319, label %84

84:                                               ; preds = %77, %70
  %85 = load ptr, ptr %46, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %114, label %87

87:                                               ; preds = %84
  %88 = load i32, ptr %85, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %114, label %90

90:                                               ; preds = %100, %87
  %91 = phi i32 [ %102, %100 ], [ %88, %87 ]
  %92 = phi ptr [ %101, %100 ], [ %85, %87 ]
  %93 = icmp eq i32 %91, %1
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.usbmix_name_map, ptr %92, i32 0, i32 2
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 0
  %98 = icmp eq i32 %96, %49
  %99 = or i1 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %94, %90
  %101 = getelementptr %struct.usbmix_name_map, ptr %92, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %114, label %90

104:                                              ; preds = %94
  %105 = icmp eq ptr %92, null
  br i1 %105, label %114, label %106

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.usbmix_name_map, ptr %92, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.usbmix_name_map, ptr %92, i32 0, i32 3
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %319, label %114

114:                                              ; preds = %110, %106, %104, %100, %87, %84
  %115 = phi ptr [ %92, %110 ], [ null, %104 ], [ %92, %106 ], [ null, %84 ], [ null, %87 ], [ null, %100 ]
  %116 = phi i1 [ false, %110 ], [ true, %104 ], [ false, %106 ], [ true, %84 ], [ true, %87 ], [ true, %100 ]
  %117 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %118 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %117, i32 noundef 3520, i32 noundef 152) #19
  %119 = icmp eq ptr %118, null
  br i1 %119, label %325, label %120

120:                                              ; preds = %114
  %121 = load ptr, ptr %45, align 4
  store ptr %121, ptr %118, align 8
  %122 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %118, i32 0, i32 3
  store i32 %1, ptr %122, align 4
  %123 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %118, i32 0, i32 5
  store ptr @snd_usb_mixer_dump_cval, ptr %123, align 4
  %124 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %118, i32 0, i32 6
  store ptr @restore_mixer_value, ptr %124, align 8
  %125 = load i32, ptr %50, align 4
  %126 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %118, i32 0, i32 1
  store i32 %125, ptr %126, align 4
  %127 = getelementptr inbounds %struct.procunit_value_info, ptr %50, i32 0, i32 2
  %128 = load i32, ptr %127, align 4
  %129 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %118, i32 0, i32 7
  store i32 %128, ptr %129, align 4
  %130 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %118, i32 0, i32 6
  store i32 1, ptr %130, align 8
  %131 = getelementptr inbounds %struct.usb_mixer_interface, ptr %121, i32 0, i32 6
  %132 = load i32, ptr %131, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %148

134:                                              ; preds = %120
  %135 = load i32, ptr %50, align 4
  %136 = sdiv i32 %135, 8
  %137 = getelementptr i8, ptr %63, i32 %136
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = shl i32 %135, 1
  %141 = and i32 %140, 510
  %142 = add nsw i32 %141, -2
  %143 = shl i32 2, %142
  %144 = and i32 %143, %139
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %134
  %147 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %118, i32 0, i32 5
  store i32 1, ptr %147, align 4
  br label %148

148:                                              ; preds = %146, %134, %120
  switch i16 %24, label %200 [
    i16 1, label %149
    i16 -7423, label %195
  ]

149:                                              ; preds = %148
  %150 = load i32, ptr %131, align 4
  %151 = icmp eq i32 %150, 48
  br i1 %151, label %154, label %152

152:                                              ; preds = %149
  %153 = icmp eq i32 %125, 2
  br i1 %153, label %156, label %192

154:                                              ; preds = %149
  %155 = icmp eq i32 %125, 1
  br i1 %155, label %178, label %192

156:                                              ; preds = %152
  switch i32 %150, label %172 [
    i32 0, label %160
    i32 32, label %157
  ]

157:                                              ; preds = %156
  %158 = load i8, ptr %8, align 1
  %159 = zext i8 %158 to i32
  br label %166

160:                                              ; preds = %156
  %161 = load i8, ptr %8, align 1
  %162 = zext i8 %161 to i32
  %163 = add nuw nsw i32 %162, 4
  %164 = getelementptr %struct.uac_processing_unit_descriptor, ptr %2, i32 0, i32 6, i32 %163
  %165 = load i8, ptr %164, align 1
  br label %166

166:                                              ; preds = %160, %157
  %167 = phi i32 [ %159, %157 ], [ %162, %160 ]
  %168 = phi i8 [ 2, %157 ], [ %165, %160 ]
  %169 = phi i32 [ 6, %157 ], [ 5, %160 ]
  %170 = add nuw nsw i32 %169, %167
  %171 = getelementptr %struct.uac_processing_unit_descriptor, ptr %2, i32 0, i32 6, i32 %170
  br label %172

172:                                              ; preds = %166, %156
  %173 = phi i8 [ %168, %166 ], [ 1, %156 ]
  %174 = phi ptr [ %171, %166 ], [ null, %156 ]
  %175 = zext i8 %173 to i32
  %176 = getelementptr i8, ptr %174, i32 1
  %177 = getelementptr i8, ptr %176, i32 %175
  br label %184

178:                                              ; preds = %154
  %179 = load i8, ptr %8, align 1
  %180 = zext i8 %179 to i32
  %181 = add nuw nsw i32 %180, 2
  %182 = getelementptr %struct.uac_processing_unit_descriptor, ptr %2, i32 0, i32 6, i32 %181
  %183 = getelementptr i8, ptr %182, i32 4
  br label %184

184:                                              ; preds = %178, %172
  %185 = phi ptr [ %183, %178 ], [ %177, %172 ]
  %186 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %118, i32 0, i32 8
  store i32 1, ptr %186, align 8
  %187 = load i8, ptr %185, align 1
  %188 = zext i8 %187 to i32
  %189 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %118, i32 0, i32 9
  store i32 %188, ptr %189, align 4
  %190 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %118, i32 0, i32 10
  store i32 1, ptr %190, align 8
  %191 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %118, i32 0, i32 15
  store i8 1, ptr %191, align 8
  br label %203

192:                                              ; preds = %154, %152
  %193 = getelementptr inbounds %struct.procunit_value_info, ptr %50, i32 0, i32 3
  %194 = load i32, ptr %193, align 4
  tail call fastcc void @get_min_max_with_quirks(ptr noundef nonnull %118, i32 noundef %194, ptr noundef null)
  br label %203

195:                                              ; preds = %148
  %196 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %118, i32 0, i32 8
  store i32 0, ptr %196, align 8
  %197 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %118, i32 0, i32 9
  store i32 5, ptr %197, align 4
  %198 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %118, i32 0, i32 10
  store i32 1, ptr %198, align 8
  %199 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %118, i32 0, i32 15
  store i8 1, ptr %199, align 8
  br label %203

200:                                              ; preds = %148
  %201 = getelementptr inbounds %struct.procunit_value_info, ptr %50, i32 0, i32 3
  %202 = load i32, ptr %201, align 4
  tail call fastcc void @get_min_max_with_quirks(ptr noundef nonnull %118, i32 noundef %202, ptr noundef null)
  br label %203

203:                                              ; preds = %200, %195, %192, %184
  %204 = load i32, ptr %126, align 4
  %205 = shl i32 %204, 8
  %206 = call fastcc i32 @get_ctl_value(ptr noundef nonnull %118, i32 noundef 129, i32 noundef %205, ptr noundef nonnull %6) #16
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %323, label %208

208:                                              ; preds = %203
  %209 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @mixer_procunit_ctl, ptr noundef nonnull %118) #16
  %210 = icmp eq ptr %209, null
  br i1 %210, label %323, label %211

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.snd_kcontrol, ptr %209, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %212, align 4
  %213 = getelementptr inbounds %struct.snd_kcontrol, ptr %209, i32 0, i32 1, i32 4
  br i1 %116, label %221, label %214

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.usbmix_name_map, ptr %115, i32 0, i32 1
  %216 = load ptr, ptr %215, align 4
  %217 = icmp eq ptr %216, null
  br i1 %217, label %221, label %218

218:                                              ; preds = %214
  %219 = tail call i32 @strscpy(ptr noundef %213, ptr noundef nonnull %216, i32 noundef 43) #16
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %280

221:                                              ; preds = %218, %214, %211
  %222 = load ptr, ptr %47, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %277

224:                                              ; preds = %221
  %225 = load ptr, ptr %45, align 4
  %226 = getelementptr inbounds %struct.usb_mixer_interface, ptr %225, i32 0, i32 6
  %227 = load i32, ptr %226, align 4
  br i1 %4, label %228, label %244

228:                                              ; preds = %224
  switch i32 %227, label %260 [
    i32 0, label %232
    i32 48, label %277
    i32 32, label %229
  ]

229:                                              ; preds = %228
  %230 = load i8, ptr %8, align 1
  %231 = zext i8 %230 to i32
  br label %238

232:                                              ; preds = %228
  %233 = load i8, ptr %8, align 1
  %234 = zext i8 %233 to i32
  %235 = add nuw nsw i32 %234, 4
  %236 = getelementptr %struct.uac_processing_unit_descriptor, ptr %2, i32 0, i32 6, i32 %235
  %237 = load i8, ptr %236, align 1
  br label %238

238:                                              ; preds = %232, %229
  %239 = phi i32 [ %231, %229 ], [ %234, %232 ]
  %240 = phi i8 [ 1, %229 ], [ %237, %232 ]
  %241 = phi i32 [ 6, %229 ], [ 5, %232 ]
  %242 = add nuw nsw i32 %241, %239
  %243 = getelementptr %struct.uac_processing_unit_descriptor, ptr %2, i32 0, i32 6, i32 %242
  br label %260

244:                                              ; preds = %224
  switch i32 %227, label %260 [
    i32 0, label %248
    i32 32, label %245
    i32 48, label %277
  ]

245:                                              ; preds = %244
  %246 = load i8, ptr %8, align 1
  %247 = zext i8 %246 to i32
  br label %254

248:                                              ; preds = %244
  %249 = load i8, ptr %8, align 1
  %250 = zext i8 %249 to i32
  %251 = add nuw nsw i32 %250, 4
  %252 = getelementptr %struct.uac_processing_unit_descriptor, ptr %2, i32 0, i32 6, i32 %251
  %253 = load i8, ptr %252, align 1
  br label %254

254:                                              ; preds = %248, %245
  %255 = phi i32 [ %247, %245 ], [ %250, %248 ]
  %256 = phi i8 [ 2, %245 ], [ %253, %248 ]
  %257 = phi i32 [ 6, %245 ], [ 5, %248 ]
  %258 = add nuw nsw i32 %257, %255
  %259 = getelementptr %struct.uac_processing_unit_descriptor, ptr %2, i32 0, i32 6, i32 %258
  br label %260

260:                                              ; preds = %254, %244, %238, %228
  %261 = phi i8 [ %240, %238 ], [ 1, %228 ], [ %256, %254 ], [ 1, %244 ]
  %262 = phi ptr [ %243, %238 ], [ null, %228 ], [ %259, %254 ], [ null, %244 ]
  %263 = zext i8 %261 to i32
  %264 = getelementptr i8, ptr %262, i32 %263
  %265 = load i8, ptr %264, align 1
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %277, label %267

267:                                              ; preds = %260
  %268 = zext i8 %265 to i32
  %269 = load ptr, ptr %0, align 4
  %270 = getelementptr inbounds %struct.snd_usb_audio, ptr %269, i32 0, i32 1
  %271 = load ptr, ptr %270, align 4
  %272 = tail call i32 @usb_string(ptr noundef %271, i32 noundef %268, ptr noundef %213, i32 noundef 43) #16
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %277, label %274

274:                                              ; preds = %267
  %275 = getelementptr i8, ptr %213, i32 %272
  store i8 0, ptr %275, align 1
  %276 = icmp eq i32 %272, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %274, %267, %260, %244, %228, %221
  %278 = phi ptr [ %222, %221 ], [ @.str.172, %244 ], [ @.str.171, %228 ], [ %7, %267 ], [ %7, %260 ], [ %7, %274 ]
  %279 = tail call i32 @strscpy(ptr noundef %213, ptr noundef nonnull %278, i32 noundef 44) #16
  br label %280

280:                                              ; preds = %277, %274, %218
  %281 = tail call i32 @strlcat(ptr noundef %213, ptr noundef nonnull @.str.173, i32 noundef 44) #16
  %282 = getelementptr inbounds %struct.procunit_value_info, ptr %50, i32 0, i32 1
  %283 = load ptr, ptr %282, align 4
  %284 = tail call i32 @strlcat(ptr noundef %213, ptr noundef %283, i32 noundef 44) #16
  %285 = load ptr, ptr %118, align 8
  %286 = getelementptr inbounds %struct.snd_kcontrol, ptr %209, i32 0, i32 1
  %287 = load ptr, ptr %285, align 4
  %288 = getelementptr inbounds %struct.snd_usb_audio, ptr %287, i32 0, i32 2
  %289 = load ptr, ptr %288, align 4
  %290 = tail call ptr @snd_ctl_find_id(ptr noundef %289, ptr noundef %286) #16
  %291 = icmp eq ptr %290, null
  br i1 %291, label %302, label %292

292:                                              ; preds = %280
  %293 = getelementptr inbounds %struct.snd_kcontrol, ptr %209, i32 0, i32 1, i32 5
  br label %294

294:                                              ; preds = %294, %292
  %295 = load i32, ptr %293, align 4
  %296 = add i32 %295, 1
  store i32 %296, ptr %293, align 4
  %297 = load ptr, ptr %285, align 4
  %298 = getelementptr inbounds %struct.snd_usb_audio, ptr %297, i32 0, i32 2
  %299 = load ptr, ptr %298, align 4
  %300 = tail call ptr @snd_ctl_find_id(ptr noundef %299, ptr noundef %286) #16
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %294

302:                                              ; preds = %294, %280
  %303 = load ptr, ptr %285, align 4
  %304 = getelementptr inbounds %struct.snd_usb_audio, ptr %303, i32 0, i32 2
  %305 = load ptr, ptr %304, align 4
  %306 = tail call i32 @snd_ctl_add(ptr noundef %305, ptr noundef nonnull %209) #16
  %307 = icmp slt i32 %306, 0
  br i1 %307, label %325, label %308

308:                                              ; preds = %302
  %309 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %118, i32 0, i32 2
  store ptr %209, ptr %309, align 8
  %310 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %118, i32 0, i32 4
  store i8 1, ptr %310, align 8
  %311 = getelementptr inbounds %struct.usb_mixer_interface, ptr %285, i32 0, i32 5
  %312 = load ptr, ptr %311, align 4
  %313 = load i32, ptr %122, align 4
  %314 = getelementptr ptr, ptr %312, i32 %313
  %315 = load ptr, ptr %314, align 4
  %316 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %118, i32 0, i32 1
  store ptr %315, ptr %316, align 4
  %317 = load ptr, ptr %311, align 4
  %318 = getelementptr ptr, ptr %317, i32 %313
  store ptr %118, ptr %318, align 4
  br label %319

319:                                              ; preds = %308, %110, %77, %70
  %320 = getelementptr %struct.procunit_value_info, ptr %50, i32 1
  %321 = load i32, ptr %320, align 4
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %325, label %48

323:                                              ; preds = %208, %203
  %324 = phi i32 [ -22, %203 ], [ -12, %208 ]
  tail call void @kfree(ptr noundef nonnull %118) #16
  br label %325

325:                                              ; preds = %323, %319, %302, %114, %38, %15
  %326 = phi i32 [ 0, %38 ], [ %324, %323 ], [ %306, %302 ], [ -12, %114 ], [ 0, %319 ], [ %20, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret i32 %326
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mixer_ctl_procunit_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 8
  %9 = call fastcc i32 @get_ctl_value(ptr noundef %5, i32 noundef 129, i32 noundef %8, ptr noundef nonnull %3) #16
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %13, ptr %14, align 8
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.usb_mixer_interface, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 %9, i32 0
  br label %44

20:                                               ; preds = %2
  %21 = load i32, ptr %3, align 4
  %22 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, ptr %22, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = phi i32 [ 1, %25 ], [ %23, %20 ]
  %28 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = icmp slt i32 %21, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 9
  %33 = load i32, ptr %32, align 4
  %34 = icmp sgt i32 %33, %21
  %35 = sub i32 %21, %29
  %36 = xor i32 %29, -1
  %37 = add i32 %27, %36
  %38 = add i32 %37, %33
  %39 = select i1 %34, i32 %35, i32 %38
  %40 = sdiv i32 %39, %27
  br label %41

41:                                               ; preds = %31, %26
  %42 = phi i32 [ 0, %26 ], [ %40, %31 ]
  %43 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %42, ptr %43, align 8
  br label %44

44:                                               ; preds = %41, %11
  %45 = phi i32 [ %19, %11 ], [ 0, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mixer_ctl_procunit_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 8
  %9 = call fastcc i32 @get_ctl_value(ptr noundef %5, i32 noundef 129, i32 noundef %8, ptr noundef nonnull %3) #16
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.usb_mixer_interface, ptr %12, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 %9, i32 0
  br label %46

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  br label %38

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, ptr %25, align 4
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ 1, %28 ], [ %26, %24 ]
  %31 = mul i32 %30, %19
  %32 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %31, %33
  %35 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 9
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 @llvm.smin.i32(i32 %34, i32 %36) #16
  br label %38

38:                                               ; preds = %29, %21
  %39 = phi i32 [ %23, %21 ], [ %37, %29 ]
  %40 = load i32, ptr %3, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %6, align 4
  %44 = shl i32 %43, 8
  %45 = tail call i32 @snd_usb_mixer_set_ctl_value(ptr noundef %5, i32 noundef 1, i32 noundef %44, i32 noundef %39) #16
  br label %46

46:                                               ; preds = %42, %38, %11
  %47 = phi i32 [ %16, %11 ], [ 1, %42 ], [ 0, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usb_mixer_interrupt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %193 [
    i32 0, label %8
    i32 -2, label %199
    i32 -104, label %199
    i32 -108, label %199
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.usb_mixer_interface, ptr %3, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %78

12:                                               ; preds = %8
  %13 = icmp ugt i32 %5, 1
  br i1 %13, label %14, label %193

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.usb_mixer_interface, ptr %3, i32 0, i32 7
  %18 = getelementptr inbounds %struct.usb_mixer_interface, ptr %3, i32 0, i32 5
  br label %19

19:                                               ; preds = %74, %14
  %20 = phi ptr [ %16, %14 ], [ %76, %74 ]
  %21 = phi i32 [ %5, %14 ], [ %75, %74 ]
  %22 = load i8, ptr %20, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %74

26:                                               ; preds = %19
  %27 = and i32 %23, 64
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds %struct.uac1_status_word, ptr %20, i32 0, i32 1
  %30 = load i8, ptr %29, align 1
  br i1 %28, label %33, label %31

31:                                               ; preds = %26
  %32 = zext i8 %30 to i32
  tail call void @snd_usb_mixer_rc_memory_change(ptr noundef %3, i32 noundef %32) #16
  br label %74

33:                                               ; preds = %26
  %34 = load ptr, ptr %17, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %50, label %36

36:                                               ; preds = %33
  %37 = load i8, ptr %34, align 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %46, %36
  %40 = phi i8 [ %48, %46 ], [ %37, %36 ]
  %41 = phi ptr [ %47, %46 ], [ %34, %36 ]
  %42 = icmp eq i8 %40, %30
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.usbmix_connector_map, ptr %41, i32 0, i32 1
  %45 = load i8, ptr %44, align 1
  br label %50

46:                                               ; preds = %39
  %47 = getelementptr %struct.usbmix_connector_map, ptr %41, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %39

50:                                               ; preds = %46, %43, %36, %33
  %51 = phi i8 [ %45, %43 ], [ %30, %33 ], [ %30, %36 ], [ %30, %46 ]
  %52 = zext i8 %51 to i32
  %53 = load ptr, ptr %18, align 4
  %54 = getelementptr ptr, ptr %53, i32 %52
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %74, label %57

57:                                               ; preds = %70, %50
  %58 = phi ptr [ %72, %70 ], [ %55, %50 ]
  %59 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %58, i32 0, i32 4
  %60 = load i8, ptr %59, align 4, !range !13
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %58, i32 0, i32 13
  store i32 0, ptr %63, align 4
  %64 = load ptr, ptr %3, align 4
  %65 = getelementptr inbounds %struct.snd_usb_audio, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %58, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.snd_kcontrol, ptr %68, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %66, i32 noundef 1, ptr noundef %69) #16
  br label %70

70:                                               ; preds = %62, %57
  %71 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %58, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %57

74:                                               ; preds = %70, %50, %31, %19
  %75 = add i32 %21, -2
  %76 = getelementptr %struct.uac1_status_word, ptr %20, i32 1
  %77 = icmp ugt i32 %75, 1
  br i1 %77, label %19, label %193

78:                                               ; preds = %8
  %79 = icmp ugt i32 %5, 5
  br i1 %79, label %80, label %193

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 14
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.usb_mixer_interface, ptr %3, i32 0, i32 7
  %84 = getelementptr inbounds %struct.usb_mixer_interface, ptr %3, i32 0, i32 5
  br label %85

85:                                               ; preds = %189, %80
  %86 = phi ptr [ %82, %80 ], [ %191, %189 ]
  %87 = phi i32 [ %5, %80 ], [ %190, %189 ]
  %88 = load i8, ptr %86, align 1
  %89 = and i8 %88, 3
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %189

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.uac2_interrupt_data_msg, ptr %86, i32 0, i32 1
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr inbounds %struct.uac2_interrupt_data_msg, ptr %86, i32 0, i32 2
  %95 = load i16, ptr %94, align 1
  %96 = lshr i16 %95, 8
  %97 = trunc i16 %96 to i8
  %98 = trunc i16 %95 to i8
  %99 = and i16 %95, 240
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %101, label %189

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.uac2_interrupt_data_msg, ptr %86, i32 0, i32 3
  %103 = load i16, ptr %102, align 1
  %104 = lshr i16 %103, 8
  %105 = zext i16 %104 to i32
  %106 = load ptr, ptr %83, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %133, label %108

108:                                              ; preds = %101
  %109 = load i8, ptr %106, align 1
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %133, label %111

111:                                              ; preds = %108
  %112 = trunc i16 %104 to i8
  br label %113

113:                                              ; preds = %129, %111
  %114 = phi i8 [ %131, %129 ], [ %109, %111 ]
  %115 = phi ptr [ %130, %129 ], [ %106, %111 ]
  %116 = icmp eq i8 %114, %112
  br i1 %116, label %117, label %129

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.usbmix_connector_map, ptr %115, i32 0, i32 2
  %119 = load i8, ptr %118, align 1
  %120 = icmp eq i8 %119, 0
  %121 = select i1 %120, i8 %97, i8 %119
  %122 = getelementptr inbounds %struct.usbmix_connector_map, ptr %115, i32 0, i32 3
  %123 = load i8, ptr %122, align 1
  %124 = icmp eq i8 %123, 0
  %125 = select i1 %124, i8 %98, i8 %123
  %126 = getelementptr inbounds %struct.usbmix_connector_map, ptr %115, i32 0, i32 1
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i32
  br label %133

129:                                              ; preds = %113
  %130 = getelementptr %struct.usbmix_connector_map, ptr %115, i32 1
  %131 = load i8, ptr %130, align 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %113

133:                                              ; preds = %129, %117, %108, %101
  %134 = phi i8 [ %97, %101 ], [ %97, %108 ], [ %121, %117 ], [ %97, %129 ]
  %135 = phi i8 [ %98, %101 ], [ %98, %108 ], [ %125, %117 ], [ %98, %129 ]
  %136 = phi i32 [ %105, %101 ], [ %105, %108 ], [ %128, %117 ], [ %105, %129 ]
  %137 = load ptr, ptr %84, align 4
  %138 = getelementptr ptr, ptr %137, i32 %136
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %189, label %141

141:                                              ; preds = %141, %133
  %142 = phi ptr [ %146, %141 ], [ %139, %133 ]
  %143 = phi i32 [ %144, %141 ], [ 0, %133 ]
  %144 = add i32 %143, 1
  %145 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %142, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %141

148:                                              ; preds = %141
  %149 = icmp eq i32 %144, 0
  br i1 %149, label %189, label %150

150:                                              ; preds = %148
  %151 = icmp eq i32 %143, 0
  %152 = icmp eq i8 %93, 1
  %153 = zext i8 %134 to i32
  %154 = icmp eq i8 %135, 0
  %155 = zext i8 %135 to i32
  %156 = shl nuw i32 1, %155
  %157 = xor i32 %156, -1
  br label %158

158:                                              ; preds = %185, %150
  %159 = phi ptr [ %139, %150 ], [ %187, %185 ]
  %160 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %159, i32 0, i32 2
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %185, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %159, i32 0, i32 4
  %165 = load i8, ptr %164, align 4, !range !13
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %185, label %167

167:                                              ; preds = %163
  br i1 %151, label %173, label %168

168:                                              ; preds = %167
  %169 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %159, i32 0, i32 1
  %170 = load i32, ptr %169, align 4
  %171 = icmp eq i32 %170, %153
  %172 = and i1 %152, %171
  br i1 %172, label %174, label %185

173:                                              ; preds = %167
  br i1 %152, label %174, label %185

174:                                              ; preds = %173, %168
  %175 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %159, i32 0, i32 13
  br i1 %154, label %179, label %176

176:                                              ; preds = %174
  %177 = load i32, ptr %175, align 4
  %178 = and i32 %177, %157
  br label %179

179:                                              ; preds = %176, %174
  %180 = phi i32 [ %178, %176 ], [ 0, %174 ]
  store i32 %180, ptr %175, align 4
  %181 = load ptr, ptr %3, align 4
  %182 = getelementptr inbounds %struct.snd_usb_audio, ptr %181, i32 0, i32 2
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.snd_kcontrol, ptr %161, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %183, i32 noundef 1, ptr noundef %184) #16
  br label %185

185:                                              ; preds = %179, %173, %168, %163, %158
  %186 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %159, i32 0, i32 1
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %158

189:                                              ; preds = %185, %148, %133, %91, %85
  %190 = add i32 %87, -6
  %191 = getelementptr %struct.uac2_interrupt_data_msg, ptr %86, i32 1
  %192 = icmp ugt i32 %190, 5
  br i1 %192, label %85, label %193

193:                                              ; preds = %189, %78, %74, %12, %1
  %194 = load ptr, ptr %3, align 4
  %195 = getelementptr inbounds %struct.snd_usb_audio, ptr %194, i32 0, i32 1
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 8
  store ptr %196, ptr %197, align 4
  %198 = tail call i32 @usb_submit_urb(ptr noundef %0, i32 noundef 2592) #16
  br label %199

199:                                              ; preds = %193, %1, %1, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_mixer_rc_memory_change(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind readonly }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(0) }

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
!9 = !{i64 2152143822, i64 2152143847}
!10 = !{i64 4639356}
!11 = !{i64 4639553}
!12 = !{i64 2152124832}
!13 = !{i8 0, i8 2}
