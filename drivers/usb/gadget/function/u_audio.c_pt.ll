; ModuleID = '/llk/IR/drivers/usb/gadget/function/u_audio.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/u_audio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_u_audio_start_capture:\09\09\09\09\09"
module asm "\09.asciz \09\22u_audio_start_capture\22\09\09\09\09\09"
module asm "__kstrtabns_u_audio_start_capture:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_u_audio_stop_capture:\09\09\09\09\09"
module asm "\09.asciz \09\22u_audio_stop_capture\22\09\09\09\09\09"
module asm "__kstrtabns_u_audio_stop_capture:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_u_audio_start_playback:\09\09\09\09\09"
module asm "\09.asciz \09\22u_audio_start_playback\22\09\09\09\09\09"
module asm "__kstrtabns_u_audio_start_playback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_u_audio_stop_playback:\09\09\09\09\09"
module asm "\09.asciz \09\22u_audio_stop_playback\22\09\09\09\09\09"
module asm "__kstrtabns_u_audio_stop_playback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_u_audio_get_volume:\09\09\09\09\09"
module asm "\09.asciz \09\22u_audio_get_volume\22\09\09\09\09\09"
module asm "__kstrtabns_u_audio_get_volume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_u_audio_set_volume:\09\09\09\09\09"
module asm "\09.asciz \09\22u_audio_set_volume\22\09\09\09\09\09"
module asm "__kstrtabns_u_audio_set_volume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_u_audio_get_mute:\09\09\09\09\09"
module asm "\09.asciz \09\22u_audio_get_mute\22\09\09\09\09\09"
module asm "__kstrtabns_u_audio_get_mute:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_u_audio_set_mute:\09\09\09\09\09"
module asm "\09.asciz \09\22u_audio_set_mute\22\09\09\09\09\09"
module asm "__kstrtabns_u_audio_set_mute:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_g_audio_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22g_audio_setup\22\09\09\09\09\09"
module asm "__kstrtabns_g_audio_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_g_audio_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22g_audio_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_g_audio_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.76, i32 }
%union.anon.76 = type { ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.g_audio = type { %struct.usb_function, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.uac_params }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.uac_params = type { i32, i32, i32, %struct.uac_fu_params, i32, i32, i32, %struct.uac_fu_params, i32, i32 }
%struct.uac_fu_params = type { i32, i8, i8, i16, i16, i16 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.snd_uac_chip = type { ptr, %struct.uac_rtd_params, %struct.uac_rtd_params, ptr, ptr, i64, i32, i32 }
%struct.uac_rtd_params = type { ptr, i8, ptr, i32, ptr, i32, i32, ptr, ptr, i8, i32, ptr, ptr, i16, i16, i16, i16, i32, %struct.spinlock }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.71, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.71 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8 }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, ptr, ptr, %struct.device }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.62, [64 x i8] }
%union.anon.62 = type { %struct.anon.65, [40 x i8] }
%struct.anon.65 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.66, [128 x i8] }
%union.anon.66 = type { %union.anon.68 }
%union.anon.68 = type { [64 x i64] }

@.str = private unnamed_addr constant [14 x i8] c"%s:%d Error!\0A\00", align 1
@__func__.u_audio_start_capture = private unnamed_addr constant [22 x i8] c"u_audio_start_capture\00", align 1
@__kstrtab_u_audio_start_capture = external dso_local constant [0 x i8], align 1
@__kstrtabns_u_audio_start_capture = external dso_local constant [0 x i8], align 1
@__ksymtab_u_audio_start_capture = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @u_audio_start_capture to i32), ptr @__kstrtab_u_audio_start_capture, ptr @__kstrtabns_u_audio_start_capture }, section "___ksymtab_gpl+u_audio_start_capture", align 4
@__kstrtab_u_audio_stop_capture = external dso_local constant [0 x i8], align 1
@__kstrtabns_u_audio_stop_capture = external dso_local constant [0 x i8], align 1
@__ksymtab_u_audio_stop_capture = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @u_audio_stop_capture to i32), ptr @__kstrtab_u_audio_stop_capture, ptr @__kstrtabns_u_audio_stop_capture }, section "___ksymtab_gpl+u_audio_stop_capture", align 4
@__func__.u_audio_start_playback = private unnamed_addr constant [23 x i8] c"u_audio_start_playback\00", align 1
@__kstrtab_u_audio_start_playback = external dso_local constant [0 x i8], align 1
@__kstrtabns_u_audio_start_playback = external dso_local constant [0 x i8], align 1
@__ksymtab_u_audio_start_playback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @u_audio_start_playback to i32), ptr @__kstrtab_u_audio_start_playback, ptr @__kstrtabns_u_audio_start_playback }, section "___ksymtab_gpl+u_audio_start_playback", align 4
@__kstrtab_u_audio_stop_playback = external dso_local constant [0 x i8], align 1
@__kstrtabns_u_audio_stop_playback = external dso_local constant [0 x i8], align 1
@__ksymtab_u_audio_stop_playback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @u_audio_stop_playback to i32), ptr @__kstrtab_u_audio_stop_playback, ptr @__kstrtabns_u_audio_stop_playback }, section "___ksymtab_gpl+u_audio_stop_playback", align 4
@__kstrtab_u_audio_get_volume = external dso_local constant [0 x i8], align 1
@__kstrtabns_u_audio_get_volume = external dso_local constant [0 x i8], align 1
@__ksymtab_u_audio_get_volume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @u_audio_get_volume to i32), ptr @__kstrtab_u_audio_get_volume, ptr @__kstrtabns_u_audio_get_volume }, section "___ksymtab_gpl+u_audio_get_volume", align 4
@__kstrtab_u_audio_set_volume = external dso_local constant [0 x i8], align 1
@__kstrtabns_u_audio_set_volume = external dso_local constant [0 x i8], align 1
@__ksymtab_u_audio_set_volume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @u_audio_set_volume to i32), ptr @__kstrtab_u_audio_set_volume, ptr @__kstrtabns_u_audio_set_volume }, section "___ksymtab_gpl+u_audio_set_volume", align 4
@__kstrtab_u_audio_get_mute = external dso_local constant [0 x i8], align 1
@__kstrtabns_u_audio_get_mute = external dso_local constant [0 x i8], align 1
@__ksymtab_u_audio_get_mute = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @u_audio_get_mute to i32), ptr @__kstrtab_u_audio_get_mute, ptr @__kstrtabns_u_audio_get_mute }, section "___ksymtab_gpl+u_audio_get_mute", align 4
@__kstrtab_u_audio_set_mute = external dso_local constant [0 x i8], align 1
@__kstrtabns_u_audio_set_mute = external dso_local constant [0 x i8], align 1
@__ksymtab_u_audio_set_mute = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @u_audio_set_mute to i32), ptr @__kstrtab_u_audio_set_mute, ptr @__kstrtabns_u_audio_set_mute }, section "___ksymtab_gpl+u_audio_set_mute", align 4
@__this_module = external dso_local global %struct.module, align 64
@uac_pcm_ops = internal constant %struct.snd_pcm_ops { ptr @uac_pcm_open, ptr @uac_pcm_null, ptr null, ptr null, ptr null, ptr @uac_pcm_null, ptr @uac_pcm_trigger, ptr null, ptr @uac_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@u_audio_controls = internal global [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.7, i32 0, i32 0, i32 0, ptr @u_audio_pitch_info, ptr @u_audio_pitch_get, ptr @u_audio_pitch_put, %union.anon.76 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.8, i32 0, i32 0, i32 0, ptr @u_audio_pitch_info, ptr @u_audio_pitch_get, ptr @u_audio_pitch_put, %union.anon.76 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 0, i32 0, ptr @u_audio_mute_info, ptr @u_audio_mute_get, ptr @u_audio_mute_put, %union.anon.76 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 0, i32 0, ptr @u_audio_volume_info, ptr @u_audio_volume_get, ptr @u_audio_volume_put, %union.anon.76 zeroinitializer, i32 0 }], align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Playback\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Capture\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"PCM %s Switch\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"PCM %s Volume\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s %i\00", align 1
@__kstrtab_g_audio_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_g_audio_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_g_audio_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @g_audio_setup to i32), ptr @__kstrtab_g_audio_setup, ptr @__kstrtabns_g_audio_setup }, section "___ksymtab_gpl+g_audio_setup", align 4
@__kstrtab_g_audio_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_g_audio_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_g_audio_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @g_audio_cleanup to i32), ptr @__kstrtab_g_audio_cleanup, ptr @__kstrtabns_g_audio_cleanup }, section "___ksymtab_gpl+g_audio_cleanup", align 4
@__UNIQUE_ID_license238 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [51 x i8] c"description=USB gadget \22ALSA sound card\22 utilities\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [22 x i8] c"author=Ruslan Bilovol\00", section ".modinfo", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%d Error!\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.free_ep_fback = private unnamed_addr constant [14 x i8] c"free_ep_fback\00", align 1
@__func__.free_ep = private unnamed_addr constant [8 x i8] c"free_ep\00", align 1
@uac_pcm_hardware = internal unnamed_addr constant %struct.snd_pcm_hardware { i32 852227, i64 0, i32 1073741824, i32 0, i32 0, i32 0, i32 0, i32 65536, i32 0, i32 4096, i32 4, i32 16, i32 0 }, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"Capture Pitch 1000000\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Playback Pitch 1000000\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_license238, ptr @__ksymtab_g_audio_cleanup, ptr @__ksymtab_g_audio_setup, ptr @__ksymtab_u_audio_get_mute, ptr @__ksymtab_u_audio_get_volume, ptr @__ksymtab_u_audio_set_mute, ptr @__ksymtab_u_audio_set_volume, ptr @__ksymtab_u_audio_start_capture, ptr @__ksymtab_u_audio_start_playback, ptr @__ksymtab_u_audio_stop_capture, ptr @__ksymtab_u_audio_stop_playback], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @u_audio_start_capture(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  %7 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 2
  %10 = tail call i32 @config_ep_by_speed(ptr noundef %5, ptr noundef %0, ptr noundef %8) #16
  %11 = getelementptr inbounds %struct.usb_ep, ptr %8, i32 0, i32 7
  %12 = load i56, ptr %11, align 2
  %13 = trunc i56 %12 to i32
  %14 = and i32 %13, 65535
  %15 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 2, i32 1
  store i8 1, ptr %15, align 4
  %16 = tail call i32 @usb_ep_enable(ptr noundef %8) #16
  %17 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 2, i32 7
  %22 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 2, i32 4
  br label %23

23:                                               ; preds = %55, %20
  %24 = phi i32 [ 0, %20 ], [ %56, %55 ]
  %25 = load ptr, ptr %21, align 4
  %26 = getelementptr ptr, ptr %25, i32 %24
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = tail call ptr @usb_ep_alloc_request(ptr noundef %8, i32 noundef 2592) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %116, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %21, align 4
  %34 = getelementptr ptr, ptr %33, i32 %24
  store ptr %30, ptr %34, align 4
  %35 = getelementptr inbounds %struct.usb_request, ptr %30, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, -262145
  store i32 %37, ptr %35, align 4
  %38 = getelementptr inbounds %struct.usb_request, ptr %30, i32 0, i32 8
  store ptr %9, ptr %38, align 4
  %39 = getelementptr inbounds %struct.usb_request, ptr %30, i32 0, i32 1
  store i32 %14, ptr %39, align 4
  %40 = getelementptr inbounds %struct.usb_request, ptr %30, i32 0, i32 7
  store ptr @u_audio_iso_complete, ptr %40, align 4
  %41 = load ptr, ptr %22, align 4
  %42 = load i56, ptr %11, align 2
  %43 = trunc i56 %42 to i32
  %44 = and i32 %43, 65535
  %45 = mul i32 %44, %24
  %46 = getelementptr i8, ptr %41, i32 %45
  store ptr %46, ptr %30, align 4
  %47 = load ptr, ptr %21, align 4
  %48 = getelementptr ptr, ptr %47, i32 %24
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %32, %23
  %51 = phi ptr [ %49, %32 ], [ %27, %23 ]
  %52 = tail call i32 @usb_ep_queue(ptr noundef %8, ptr noundef %51, i32 noundef 2592) #16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.u_audio_start_capture, i32 noundef 531) #17
  br label %55

55:                                               ; preds = %54, %50
  %56 = add nuw nsw i32 %24, 1
  %57 = load i32, ptr %17, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %23, label %59

59:                                               ; preds = %55, %1
  %60 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 4
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %116, label %63

63:                                               ; preds = %59
  %64 = tail call i32 @config_ep_by_speed(ptr noundef %5, ptr noundef %0, ptr noundef nonnull %61) #16
  %65 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 2, i32 9
  store i8 1, ptr %65, align 4
  %66 = tail call i32 @usb_ep_enable(ptr noundef nonnull %61) #16
  %67 = getelementptr inbounds %struct.usb_ep, ptr %61, i32 0, i32 7
  %68 = load i56, ptr %67, align 2
  %69 = tail call ptr @usb_ep_alloc_request(ptr noundef nonnull %61, i32 noundef 2592) #16
  %70 = icmp eq ptr %69, null
  br i1 %70, label %116, label %71

71:                                               ; preds = %63
  %72 = trunc i56 %68 to i32
  %73 = and i32 %72, 65535
  %74 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 2, i32 8
  store ptr %69, ptr %74, align 4
  %75 = getelementptr inbounds %struct.usb_request, ptr %69, i32 0, i32 6
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, -262145
  store i32 %77, ptr %75, align 4
  %78 = getelementptr inbounds %struct.usb_request, ptr %69, i32 0, i32 8
  store ptr %9, ptr %78, align 4
  %79 = getelementptr inbounds %struct.usb_request, ptr %69, i32 0, i32 1
  store i32 %73, ptr %79, align 4
  %80 = getelementptr inbounds %struct.usb_request, ptr %69, i32 0, i32 7
  store ptr @u_audio_iso_fback_complete, ptr %80, align 4
  %81 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %73, i32 noundef 2848) #18
  store ptr %81, ptr %69, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %116, label %83

83:                                               ; preds = %71
  %84 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 2, i32 5
  store i32 1000000, ptr %84, align 4
  %85 = load ptr, ptr %4, align 4
  %86 = getelementptr inbounds %struct.usb_gadget, ptr %85, i32 0, i32 5
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9, i32 5
  %89 = load i32, ptr %88, align 4
  %90 = sext i32 %89 to i64
  %91 = load ptr, ptr %69, align 4
  %92 = icmp eq i32 %87, 2
  br i1 %92, label %101, label %93

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.usb_ep, ptr %8, i32 0, i32 9
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %95, i32 0, i32 5
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = add nuw nsw i32 %98, 3
  %100 = zext i32 %99 to i64
  br label %101

101:                                              ; preds = %93, %83
  %102 = phi i64 [ %100, %93 ], [ 5, %83 ]
  %103 = shl i64 %90, %102
  %104 = mul i64 %103, 1000000
  %105 = add i64 %104, 976562
  %106 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %105, i32 0) #19, !srcloc !8
  %107 = extractvalue { i64, i32 } %106, 0
  %108 = extractvalue { i64, i32 } %106, 1
  %109 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %105, i64 %107, i32 %108) #19, !srcloc !9
  %110 = extractvalue { i64, i32 } %109, 0
  %111 = lshr i64 %110, 20
  %112 = trunc i64 %111 to i32
  store i32 %112, ptr %91, align 4
  %113 = tail call i32 @usb_ep_queue(ptr noundef nonnull %61, ptr noundef nonnull %69, i32 noundef 2592) #16
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %101
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.u_audio_start_capture, i32 noundef 569) #17
  br label %116

116:                                              ; preds = %115, %101, %71, %63, %59, %29
  %117 = phi i32 [ 0, %59 ], [ -12, %63 ], [ -12, %71 ], [ 0, %115 ], [ 0, %101 ], [ -12, %29 ]
  ret i32 %117
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @u_audio_iso_complete(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 1
  %8 = load i8, ptr %7, align 4, !range !10
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void @usb_ep_free_request(ptr noundef %0, ptr noundef %1) #16
  br label %193

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, -108
  br i1 %14, label %193, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %185, label %19

19:                                               ; preds = %15
  tail call void @snd_pcm_stream_lock(ptr noundef nonnull %17) #16
  %20 = getelementptr inbounds %struct.snd_pcm_substream, ptr %17, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 37
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %25, align 8
  switch i32 %26, label %31 [
    i32 3, label %32
    i32 5, label %27
  ]

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.snd_pcm_substream, ptr %17, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %27, %23, %19
  tail call void @snd_pcm_stream_unlock(ptr noundef nonnull %17) #16
  br label %185

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.snd_pcm_substream, ptr %17, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 52
  %40 = load i32, ptr %39, align 4
  %41 = sub i32 %40, %38
  %42 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %43 = load i32, ptr %42, align 4
  br label %142

44:                                               ; preds = %32, %27
  %45 = getelementptr inbounds %struct.snd_pcm_substream, ptr %17, i32 0, i32 5
  %46 = getelementptr inbounds %struct.snd_uac_chip, ptr %5, i32 0, i32 6
  %47 = load i32, ptr %46, align 8
  %48 = zext i32 %47 to i64
  %49 = mul nuw nsw i64 %48, 1000000
  %50 = getelementptr inbounds %struct.g_audio, ptr %6, i32 0, i32 9, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = zext i32 %54 to i64
  %56 = mul nsw i64 %55, %52
  %57 = icmp ult i64 %56, 4294967296
  br i1 %57, label %58, label %62, !prof !11

58:                                               ; preds = %44
  %59 = trunc i64 %56 to i32
  %60 = udiv i32 %59, %47
  %61 = zext i32 %60 to i64
  br label %65

62:                                               ; preds = %44
  %63 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %47, i64 %56) #19, !srcloc !12
  %64 = extractvalue { i64, i64 } %63, 1
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i64 [ %61, %58 ], [ %64, %62 ]
  %67 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %66) #19, !srcloc !13
  %68 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %66, i64 %67, i32 0) #19, !srcloc !9
  %69 = extractvalue { i64, i32 } %68, 0
  %70 = lshr i64 %69, 18
  %71 = trunc i64 %70 to i32
  %72 = getelementptr inbounds %struct.snd_uac_chip, ptr %5, i32 0, i32 7
  %73 = load i32, ptr %72, align 4
  %74 = mul i32 %73, %71
  %75 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %76 = load i56, ptr %75, align 2
  %77 = trunc i56 %76 to i32
  %78 = and i32 %77, 65535
  %79 = icmp ult i32 %74, %78
  %80 = tail call i32 @llvm.umin.i32(i32 %74, i32 %78)
  br i1 %79, label %81, label %87

81:                                               ; preds = %65
  %82 = and i64 %70, 4294967295
  %83 = mul i64 %82, %49
  %84 = sub i64 %56, %83
  %85 = zext i32 %73 to i64
  %86 = mul i64 %84, %85
  br label %87

87:                                               ; preds = %81, %65
  %88 = phi i64 [ %86, %81 ], [ 0, %65 ]
  %89 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  store i32 %80, ptr %89, align 4
  %90 = getelementptr inbounds %struct.snd_uac_chip, ptr %5, i32 0, i32 5
  %91 = load i64, ptr %90, align 8
  %92 = add i64 %91, %88
  store i64 %92, ptr %90, align 8
  %93 = load i32, ptr %46, align 8
  %94 = icmp ult i64 %92, 4294967296
  br i1 %94, label %95, label %99, !prof !11

95:                                               ; preds = %87
  %96 = trunc i64 %92 to i32
  %97 = udiv i32 %96, %93
  %98 = zext i32 %97 to i64
  br label %102

99:                                               ; preds = %87
  %100 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %93, i64 %92) #19, !srcloc !12
  %101 = extractvalue { i64, i64 } %100, 1
  br label %102

102:                                              ; preds = %99, %95
  %103 = phi i64 [ %98, %95 ], [ %101, %99 ]
  %104 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %103) #19, !srcloc !13
  %105 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %103, i64 %104, i32 0) #19, !srcloc !9
  %106 = extractvalue { i64, i32 } %105, 0
  %107 = lshr i64 %106, 18
  %108 = trunc i64 %107 to i32
  %109 = load i32, ptr %72, align 4
  %110 = icmp ugt i32 %109, %108
  br i1 %110, label %119, label %111

111:                                              ; preds = %102
  %112 = load i32, ptr %89, align 4
  %113 = add i32 %112, %109
  store i32 %113, ptr %89, align 4
  %114 = load i32, ptr %72, align 4
  %115 = zext i32 %114 to i64
  %116 = mul i64 %49, %115
  %117 = load i64, ptr %90, align 8
  %118 = sub i64 %117, %116
  store i64 %118, ptr %90, align 8
  br label %119

119:                                              ; preds = %111, %102
  %120 = load i32, ptr %89, align 4
  %121 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  store i32 %120, ptr %121, align 4
  %122 = load i32, ptr %45, align 4
  %123 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 3
  %124 = load i32, ptr %123, align 4
  %125 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 52
  %126 = load i32, ptr %125, align 4
  %127 = sub i32 %126, %124
  %128 = icmp eq i32 %122, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %119
  %130 = icmp ult i32 %127, %120
  %131 = load ptr, ptr %1, align 4
  %132 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 50
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr i8, ptr %133, i32 %124
  br i1 %130, label %135, label %141, !prof !14

135:                                              ; preds = %129
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %131, ptr align 1 %134, i32 %127, i1 false)
  %136 = load ptr, ptr %1, align 4
  %137 = getelementptr i8, ptr %136, i32 %127
  %138 = load ptr, ptr %132, align 4
  %139 = load i32, ptr %121, align 4
  %140 = sub i32 %139, %127
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %137, ptr align 1 %138, i32 %140, i1 false)
  br label %165

141:                                              ; preds = %129
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %131, ptr align 1 %134, i32 %120, i1 false)
  br label %165

142:                                              ; preds = %119, %36
  %143 = phi i32 [ %43, %36 ], [ %120, %119 ]
  %144 = phi i32 [ %41, %36 ], [ %127, %119 ]
  %145 = phi ptr [ %39, %36 ], [ %125, %119 ]
  %146 = phi i32 [ %38, %36 ], [ %124, %119 ]
  %147 = phi ptr [ %37, %36 ], [ %123, %119 ]
  %148 = icmp ult i32 %144, %143
  br i1 %148, label %149, label %160, !prof !14

149:                                              ; preds = %142
  %150 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %151 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 50
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr i8, ptr %152, i32 %146
  %154 = load ptr, ptr %1, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %153, ptr align 1 %154, i32 %144, i1 false)
  %155 = load ptr, ptr %151, align 4
  %156 = load ptr, ptr %1, align 4
  %157 = getelementptr i8, ptr %156, i32 %144
  %158 = load i32, ptr %150, align 4
  %159 = sub i32 %158, %144
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %155, ptr align 1 %157, i32 %159, i1 false)
  br label %165

160:                                              ; preds = %142
  %161 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 50
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr i8, ptr %162, i32 %146
  %164 = load ptr, ptr %1, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %163, ptr align 1 %164, i32 %143, i1 false)
  br label %165

165:                                              ; preds = %160, %149, %141, %135
  %166 = phi ptr [ %145, %149 ], [ %145, %160 ], [ %125, %135 ], [ %125, %141 ]
  %167 = phi i32 [ %146, %149 ], [ %146, %160 ], [ %124, %135 ], [ %124, %141 ]
  %168 = phi ptr [ %147, %149 ], [ %147, %160 ], [ %123, %135 ], [ %123, %141 ]
  %169 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %170 = load i32, ptr %169, align 4
  %171 = add i32 %170, %167
  %172 = load i32, ptr %166, align 4
  %173 = urem i32 %171, %172
  store i32 %173, ptr %168, align 4
  tail call void @snd_pcm_stream_unlock(ptr noundef nonnull %17) #16
  %174 = load ptr, ptr %20, align 4
  %175 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %174, i32 0, i32 16
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %174, i32 0, i32 21
  %178 = load i32, ptr %177, align 8
  %179 = mul i32 %178, %176
  %180 = lshr i32 %179, 3
  %181 = urem i32 %173, %180
  %182 = load i32, ptr %169, align 4
  %183 = icmp ult i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %165
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %17) #16
  br label %185

185:                                              ; preds = %184, %165, %31, %15
  %186 = tail call i32 @usb_ep_queue(ptr noundef %0, ptr noundef %1, i32 noundef 2592) #16
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.snd_uac_chip, ptr %5, i32 0, i32 3
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.snd_card, ptr %190, i32 0, i32 27
  %192 = load ptr, ptr %191, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %192, ptr noundef nonnull @.str.6, i32 noundef 275) #17
  br label %193

193:                                              ; preds = %188, %185, %11, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @u_audio_iso_fback_complete(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 9
  %8 = load i8, ptr %7, align 4, !range !10
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %11) #16
  tail call void @usb_ep_free_request(ptr noundef %0, ptr noundef %1) #16
  br label %58

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, -108
  br i1 %15, label %58, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.g_audio, ptr %6, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.usb_gadget, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.g_audio, ptr %6, i32 0, i32 9, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %1, align 4
  %27 = icmp eq i32 %20, 2
  br i1 %27, label %38, label %28

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.g_audio, ptr %6, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.usb_ep, ptr %30, i32 0, i32 9
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %32, i32 0, i32 5
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = add nuw nsw i32 %35, 3
  %37 = zext i32 %36 to i64
  br label %38

38:                                               ; preds = %28, %16
  %39 = phi i64 [ %37, %28 ], [ 5, %16 ]
  %40 = shl i64 %23, %39
  %41 = zext i32 %25 to i64
  %42 = mul i64 %40, %41
  %43 = add i64 %42, 976562
  %44 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %43, i32 0) #19, !srcloc !8
  %45 = extractvalue { i64, i32 } %44, 0
  %46 = extractvalue { i64, i32 } %44, 1
  %47 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %43, i64 %45, i32 %46) #19, !srcloc !9
  %48 = extractvalue { i64, i32 } %47, 0
  %49 = lshr i64 %48, 20
  %50 = trunc i64 %49 to i32
  store i32 %50, ptr %26, align 4
  %51 = tail call i32 @usb_ep_queue(ptr noundef %0, ptr noundef %1, i32 noundef 2592) #16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %38
  %54 = getelementptr inbounds %struct.snd_uac_chip, ptr %5, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.snd_card, ptr %55, i32 0, i32 27
  %57 = load ptr, ptr %56, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.6, i32 noundef 310) #17
  br label %58

58:                                               ; preds = %53, %38, %12, %10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @u_audio_stop_capture(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 2, i32 9
  %11 = load i8, ptr %10, align 4, !range !10
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 2, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @usb_ep_dequeue(ptr noundef nonnull %5, ptr noundef nonnull %15) #16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %14, align 4
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %22) #16
  %23 = load ptr, ptr %14, align 4
  tail call void @usb_ep_free_request(ptr noundef nonnull %5, ptr noundef %23) #16
  br label %24

24:                                               ; preds = %20, %17
  store ptr null, ptr %14, align 4
  br label %25

25:                                               ; preds = %24, %13
  store i8 0, ptr %10, align 4
  %26 = tail call i32 @usb_ep_disable(ptr noundef nonnull %5) #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.snd_uac_chip, ptr %9, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.snd_card, ptr %30, i32 0, i32 27
  %32 = load ptr, ptr %31, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.free_ep_fback, i32 noundef 493) #17
  br label %33

33:                                               ; preds = %28, %25, %7, %1
  %34 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 2
  %35 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %34, align 4
  %38 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 2, i32 1
  %39 = load i8, ptr %38, align 4, !range !10
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %78, label %41

41:                                               ; preds = %33
  %42 = load ptr, ptr %37, align 8
  %43 = getelementptr inbounds %struct.g_audio, ptr %42, i32 0, i32 9, i32 8
  %44 = load i32, ptr %43, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 2, i32 7
  br label %48

48:                                               ; preds = %66, %46
  %49 = phi i32 [ %44, %46 ], [ %67, %66 ]
  %50 = phi i32 [ 0, %46 ], [ %68, %66 ]
  %51 = load ptr, ptr %47, align 4
  %52 = getelementptr ptr, ptr %51, i32 %50
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %66, label %55

55:                                               ; preds = %48
  %56 = tail call i32 @usb_ep_dequeue(ptr noundef %36, ptr noundef nonnull %53) #16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %47, align 4
  %60 = getelementptr ptr, ptr %59, i32 %50
  %61 = load ptr, ptr %60, align 4
  tail call void @usb_ep_free_request(ptr noundef %36, ptr noundef %61) #16
  br label %62

62:                                               ; preds = %58, %55
  %63 = load ptr, ptr %47, align 4
  %64 = getelementptr ptr, ptr %63, i32 %50
  store ptr null, ptr %64, align 4
  %65 = load i32, ptr %43, align 4
  br label %66

66:                                               ; preds = %62, %48
  %67 = phi i32 [ %49, %48 ], [ %65, %62 ]
  %68 = add nuw nsw i32 %50, 1
  %69 = icmp slt i32 %68, %67
  br i1 %69, label %48, label %70

70:                                               ; preds = %66, %41
  store i8 0, ptr %38, align 4
  %71 = tail call i32 @usb_ep_disable(ptr noundef %36) #16
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.snd_uac_chip, ptr %37, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.snd_card, ptr %75, i32 0, i32 27
  %77 = load ptr, ptr %76, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.free_ep, i32 noundef 472) #17
  br label %78

78:                                               ; preds = %73, %70, %33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @u_audio_start_playback(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  %7 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9
  %8 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 1
  %11 = tail call i32 @config_ep_by_speed(ptr noundef %5, ptr noundef %0, ptr noundef %9) #16
  %12 = getelementptr inbounds %struct.usb_ep, ptr %9, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 1, i32 5
  store i32 1000000, ptr %14, align 4
  %15 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 2
  %18 = select i1 %17, i32 1000, i32 8000
  %19 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %23, %1
  %24 = phi i32 [ %27, %23 ], [ 0, %1 ]
  %25 = phi i32 [ %28, %23 ], [ %21, %1 ]
  %26 = and i32 %25, 1
  %27 = add i32 %26, %24
  %28 = lshr i32 %25, 1
  %29 = icmp ult i32 %25, 2
  br i1 %29, label %30, label %23

30:                                               ; preds = %23, %1
  %31 = phi i32 [ 0, %1 ], [ %27, %23 ]
  %32 = mul i32 %31, %20
  %33 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 7
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %13, i32 0, i32 5
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = add nsw i32 %36, -1
  %38 = lshr i32 %18, %37
  %39 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 6
  store i32 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = udiv i32 %41, %38
  %43 = mul i32 %42, %32
  %44 = getelementptr inbounds %struct.usb_ep, ptr %9, i32 0, i32 7
  %45 = load i56, ptr %44, align 2
  %46 = trunc i56 %45 to i32
  %47 = and i32 %46, 65535
  %48 = tail call i32 @llvm.umin.i32(i32 %43, i32 %47)
  %49 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 5
  store i64 0, ptr %49, align 8
  %50 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 1, i32 1
  store i8 1, ptr %50, align 4
  %51 = tail call i32 @usb_ep_enable(ptr noundef %9) #16
  %52 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9, i32 8
  %53 = load i32, ptr %52, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %94

55:                                               ; preds = %30
  %56 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 1, i32 7
  %57 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 1, i32 4
  br label %58

58:                                               ; preds = %90, %55
  %59 = phi i32 [ 0, %55 ], [ %91, %90 ]
  %60 = load ptr, ptr %56, align 4
  %61 = getelementptr ptr, ptr %60, i32 %59
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %85

64:                                               ; preds = %58
  %65 = tail call ptr @usb_ep_alloc_request(ptr noundef %9, i32 noundef 2592) #16
  %66 = icmp eq ptr %65, null
  br i1 %66, label %94, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %56, align 4
  %69 = getelementptr ptr, ptr %68, i32 %59
  store ptr %65, ptr %69, align 4
  %70 = getelementptr inbounds %struct.usb_request, ptr %65, i32 0, i32 6
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, -262145
  store i32 %72, ptr %70, align 4
  %73 = getelementptr inbounds %struct.usb_request, ptr %65, i32 0, i32 8
  store ptr %10, ptr %73, align 4
  %74 = getelementptr inbounds %struct.usb_request, ptr %65, i32 0, i32 1
  store i32 %48, ptr %74, align 4
  %75 = getelementptr inbounds %struct.usb_request, ptr %65, i32 0, i32 7
  store ptr @u_audio_iso_complete, ptr %75, align 4
  %76 = load ptr, ptr %57, align 4
  %77 = load i56, ptr %44, align 2
  %78 = trunc i56 %77 to i32
  %79 = and i32 %78, 65535
  %80 = mul i32 %79, %59
  %81 = getelementptr i8, ptr %76, i32 %80
  store ptr %81, ptr %65, align 4
  %82 = load ptr, ptr %56, align 4
  %83 = getelementptr ptr, ptr %82, i32 %59
  %84 = load ptr, ptr %83, align 4
  br label %85

85:                                               ; preds = %67, %58
  %86 = phi ptr [ %84, %67 ], [ %62, %58 ]
  %87 = tail call i32 @usb_ep_queue(ptr noundef %9, ptr noundef %86, i32 noundef 2592) #16
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.u_audio_start_playback, i32 noundef 646) #17
  br label %90

90:                                               ; preds = %89, %85
  %91 = add nuw nsw i32 %59, 1
  %92 = load i32, ptr %52, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %58, label %94

94:                                               ; preds = %90, %64, %30
  %95 = phi i32 [ 0, %30 ], [ 0, %90 ], [ -12, %64 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @u_audio_stop_playback(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 1, i32 1
  %9 = load i8, ptr %8, align 4, !range !10
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %48, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %7, align 8
  %13 = getelementptr inbounds %struct.g_audio, ptr %12, i32 0, i32 9, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 1, i32 7
  br label %18

18:                                               ; preds = %36, %16
  %19 = phi i32 [ %14, %16 ], [ %37, %36 ]
  %20 = phi i32 [ 0, %16 ], [ %38, %36 ]
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr ptr, ptr %21, i32 %20
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %18
  %26 = tail call i32 @usb_ep_dequeue(ptr noundef %6, ptr noundef nonnull %23) #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %17, align 4
  %30 = getelementptr ptr, ptr %29, i32 %20
  %31 = load ptr, ptr %30, align 4
  tail call void @usb_ep_free_request(ptr noundef %6, ptr noundef %31) #16
  br label %32

32:                                               ; preds = %28, %25
  %33 = load ptr, ptr %17, align 4
  %34 = getelementptr ptr, ptr %33, i32 %20
  store ptr null, ptr %34, align 4
  %35 = load i32, ptr %13, align 4
  br label %36

36:                                               ; preds = %32, %18
  %37 = phi i32 [ %19, %18 ], [ %35, %32 ]
  %38 = add nuw nsw i32 %20, 1
  %39 = icmp slt i32 %38, %37
  br i1 %39, label %18, label %40

40:                                               ; preds = %36, %11
  store i8 0, ptr %8, align 4
  %41 = tail call i32 @usb_ep_disable(ptr noundef %6) #16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.snd_uac_chip, ptr %7, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.snd_card, ptr %45, i32 0, i32 27
  %47 = load ptr, ptr %46, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.free_ep, i32 noundef 472) #17
  br label %48

48:                                               ; preds = %43, %40, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @u_audio_get_volume(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %1, 0
  %7 = getelementptr inbounds %struct.snd_uac_chip, ptr %5, i32 0, i32 1
  %8 = getelementptr inbounds %struct.snd_uac_chip, ptr %5, i32 0, i32 2
  %9 = select i1 %6, ptr %8, ptr %7
  %10 = getelementptr inbounds %struct.uac_rtd_params, ptr %9, i32 0, i32 18
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #16
  %12 = getelementptr inbounds %struct.uac_rtd_params, ptr %9, i32 0, i32 16
  %13 = load i16, ptr %12, align 2
  store i16 %13, ptr %2, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @u_audio_set_volume(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef signext %2) #0 {
  %4 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %1, 0
  %7 = getelementptr inbounds %struct.snd_uac_chip, ptr %5, i32 0, i32 1
  %8 = getelementptr inbounds %struct.snd_uac_chip, ptr %5, i32 0, i32 2
  %9 = select i1 %6, ptr %8, ptr %7
  %10 = getelementptr inbounds %struct.uac_rtd_params, ptr %9, i32 0, i32 18
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #16
  %12 = getelementptr inbounds %struct.uac_rtd_params, ptr %9, i32 0, i32 13
  %13 = load i16, ptr %12, align 4
  %14 = tail call i16 @llvm.smax.i16(i16 %2, i16 %13)
  %15 = getelementptr inbounds %struct.uac_rtd_params, ptr %9, i32 0, i32 14
  %16 = load i16, ptr %15, align 2
  %17 = tail call i16 @llvm.smin.i16(i16 %14, i16 %16)
  %18 = getelementptr inbounds %struct.uac_rtd_params, ptr %9, i32 0, i32 16
  %19 = load i16, ptr %18, align 2
  %20 = icmp eq i16 %19, %17
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  store i16 %17, ptr %18, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #16
  %22 = getelementptr inbounds %struct.snd_uac_chip, ptr %5, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.uac_rtd_params, ptr %9, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.snd_kcontrol, ptr %25, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %23, i32 noundef 1, ptr noundef %26) #16
  br label %28

27:                                               ; preds = %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #16
  br label %28

28:                                               ; preds = %27, %21
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @u_audio_get_mute(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %1, 0
  %7 = getelementptr inbounds %struct.snd_uac_chip, ptr %5, i32 0, i32 1
  %8 = getelementptr inbounds %struct.snd_uac_chip, ptr %5, i32 0, i32 2
  %9 = select i1 %6, ptr %8, ptr %7
  %10 = getelementptr inbounds %struct.uac_rtd_params, ptr %9, i32 0, i32 18
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #16
  %12 = getelementptr inbounds %struct.uac_rtd_params, ptr %9, i32 0, i32 17
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @u_audio_set_mute(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %1, 0
  %7 = getelementptr inbounds %struct.snd_uac_chip, ptr %5, i32 0, i32 1
  %8 = getelementptr inbounds %struct.snd_uac_chip, ptr %5, i32 0, i32 2
  %9 = select i1 %6, ptr %8, ptr %7
  %10 = icmp ne i32 %2, 0
  %11 = zext i1 %10 to i32
  %12 = getelementptr inbounds %struct.uac_rtd_params, ptr %9, i32 0, i32 18
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #16
  %14 = getelementptr inbounds %struct.uac_rtd_params, ptr %9, i32 0, i32 17
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %11
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  store i32 %11, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #16
  %18 = getelementptr inbounds %struct.snd_uac_chip, ptr %5, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.uac_rtd_params, ptr %9, i32 0, i32 12
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.snd_kcontrol, ptr %21, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %19, i32 noundef 1, ptr noundef %22) #16
  br label %24

23:                                               ; preds = %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #16
  br label %24

24:                                               ; preds = %23, %17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @g_audio_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca [24 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !15
  %7 = icmp eq ptr %0, null
  br i1 %7, label %316, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 168) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %316, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 8
  store ptr %10, ptr %13, align 4
  store ptr %0, ptr %10, align 8
  %14 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %49, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 2
  %21 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 2, i32 18
  store i32 0, ptr %21, align 8
  store ptr %10, ptr %20, align 8
  %22 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 2, i32 6
  store i32 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %26, i32 4) #16
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %29, label %31, !prof !14

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 2, i32 7
  store ptr null, ptr %30, align 4
  br label %306

31:                                               ; preds = %19
  %32 = extractvalue { i32, i1 } %27, 0
  %33 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %32, i32 noundef 3520) #18
  %34 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 2, i32 7
  store ptr %33, ptr %34, align 4
  %35 = icmp eq ptr %33, null
  br i1 %35, label %306, label %36

36:                                               ; preds = %31
  %37 = load i32, ptr %24, align 8
  %38 = load i32, ptr %25, align 4
  %39 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %38, i32 %37) #16
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %41, label %43, !prof !14

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 2, i32 4
  store ptr null, ptr %42, align 8
  br label %48

43:                                               ; preds = %36
  %44 = extractvalue { i32, i1 } %39, 0
  %45 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %44, i32 noundef 3520) #18
  %46 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 2, i32 4
  store ptr %45, ptr %46, align 8
  %47 = icmp eq ptr %45, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %41
  store i32 0, ptr %24, align 8
  br label %306

49:                                               ; preds = %43, %12
  %50 = icmp eq i32 %15, 0
  br i1 %50, label %81, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 1
  %53 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 1, i32 18
  store i32 0, ptr %53, align 4
  store ptr %10, ptr %52, align 4
  %54 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 1, i32 6
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9, i32 8
  %58 = load i32, ptr %57, align 4
  %59 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %58, i32 4) #16
  %60 = extractvalue { i32, i1 } %59, 1
  br i1 %60, label %61, label %63, !prof !14

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 1, i32 7
  store ptr null, ptr %62, align 8
  br label %306

63:                                               ; preds = %51
  %64 = extractvalue { i32, i1 } %59, 0
  %65 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %64, i32 noundef 3520) #18
  %66 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 1, i32 7
  store ptr %65, ptr %66, align 8
  %67 = icmp eq ptr %65, null
  br i1 %67, label %306, label %68

68:                                               ; preds = %63
  %69 = load i32, ptr %56, align 4
  %70 = load i32, ptr %57, align 4
  %71 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %70, i32 %69) #16
  %72 = extractvalue { i32, i1 } %71, 1
  br i1 %72, label %73, label %75, !prof !14

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 1, i32 4
  store ptr null, ptr %74, align 4
  br label %80

75:                                               ; preds = %68
  %76 = extractvalue { i32, i1 } %71, 0
  %77 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %76, i32 noundef 3520) #18
  %78 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 1, i32 4
  store ptr %77, ptr %78, align 4
  %79 = icmp eq ptr %77, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %75, %73
  store i32 0, ptr %56, align 4
  br label %306

81:                                               ; preds = %75, %49
  %82 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.usb_gadget, ptr %83, i32 0, i32 11
  %85 = call i32 @snd_card_new(ptr noundef %84, i32 noundef -1, ptr noundef null, ptr noundef nonnull @__this_module, i32 noundef 0, ptr noundef nonnull %4) #16
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %306, label %87

87:                                               ; preds = %81
  %88 = load ptr, ptr %4, align 4
  %89 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 3
  store ptr %88, ptr %89, align 4
  %90 = xor i1 %50, true
  %91 = zext i1 %90 to i32
  %92 = xor i1 %18, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @snd_pcm_new(ptr noundef %88, ptr noundef %1, i32 noundef 0, i32 noundef %91, i32 noundef %93, ptr noundef nonnull %5) #16
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %302, label %96

96:                                               ; preds = %87
  %97 = load ptr, ptr %5, align 4
  %98 = getelementptr inbounds %struct.snd_pcm, ptr %97, i32 0, i32 7
  %99 = call i32 @strscpy(ptr noundef %98, ptr noundef %1, i32 noundef 80) #16
  %100 = load ptr, ptr %5, align 4
  %101 = getelementptr inbounds %struct.snd_pcm, ptr %100, i32 0, i32 11
  store ptr %10, ptr %101, align 8
  %102 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 4
  store ptr %100, ptr %102, align 8
  call void @snd_pcm_set_ops(ptr noundef %100, i32 noundef 0, ptr noundef nonnull @uac_pcm_ops) #16
  %103 = load ptr, ptr %5, align 4
  call void @snd_pcm_set_ops(ptr noundef %103, i32 noundef 1, ptr noundef nonnull @uac_pcm_ops) #16
  br i1 %18, label %108, label %104

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 4
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %122

108:                                              ; preds = %104, %96
  br i1 %50, label %113, label %109

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9, i32 3
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %109, %108
  br i1 %18, label %143, label %114

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9, i32 7
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %126, label %122

118:                                              ; preds = %109
  %119 = load ptr, ptr %4, align 4
  %120 = getelementptr inbounds %struct.snd_card, ptr %119, i32 0, i32 6
  %121 = call i32 @strscpy(ptr noundef %120, ptr noundef %2, i32 noundef 16) #16
  br i1 %18, label %144, label %126

122:                                              ; preds = %114, %104
  %123 = load ptr, ptr %4, align 4
  %124 = getelementptr inbounds %struct.snd_card, ptr %123, i32 0, i32 6
  %125 = call i32 @strscpy(ptr noundef %124, ptr noundef %2, i32 noundef 16) #16
  br label %126

126:                                              ; preds = %122, %118, %114
  %127 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 4
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %143, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 2
  %132 = call ptr @snd_ctl_new1(ptr noundef nonnull @u_audio_controls, ptr noundef %131) #16
  %133 = icmp eq ptr %132, null
  br i1 %133, label %302, label %134

134:                                              ; preds = %130
  %135 = load ptr, ptr %5, align 4
  %136 = getelementptr inbounds %struct.snd_pcm, ptr %135, i32 0, i32 2
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.snd_kcontrol, ptr %132, i32 0, i32 1, i32 2
  store i32 %137, ptr %138, align 4
  %139 = getelementptr inbounds %struct.snd_kcontrol, ptr %132, i32 0, i32 1, i32 3
  store i32 0, ptr %139, align 4
  %140 = load ptr, ptr %4, align 4
  %141 = call i32 @snd_ctl_add(ptr noundef %140, ptr noundef nonnull %132) #16
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %302, label %143

143:                                              ; preds = %134, %126, %113
  br i1 %50, label %157, label %144

144:                                              ; preds = %143, %118
  %145 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 1
  %146 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @u_audio_controls, i32 0, i32 1), ptr noundef %145) #16
  %147 = icmp eq ptr %146, null
  br i1 %147, label %302, label %148

148:                                              ; preds = %144
  %149 = load ptr, ptr %5, align 4
  %150 = getelementptr inbounds %struct.snd_pcm, ptr %149, i32 0, i32 2
  %151 = load i32, ptr %150, align 4
  %152 = getelementptr inbounds %struct.snd_kcontrol, ptr %146, i32 0, i32 1, i32 2
  store i32 %151, ptr %152, align 4
  %153 = getelementptr inbounds %struct.snd_kcontrol, ptr %146, i32 0, i32 1, i32 3
  store i32 0, ptr %153, align 4
  %154 = load ptr, ptr %4, align 4
  %155 = call i32 @snd_ctl_add(ptr noundef %154, ptr noundef nonnull %146) #16
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %302, label %157

157:                                              ; preds = %148, %143
  %158 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 1
  %159 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9, i32 3
  %160 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 2
  %161 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9, i32 7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !15
  %162 = load ptr, ptr %5, align 4
  %163 = getelementptr %struct.snd_pcm, ptr %162, i32 0, i32 8, i32 0, i32 2
  %164 = load i32, ptr %163, align 8
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %223, label %166

166:                                              ; preds = %157
  %167 = load i32, ptr %159, align 4
  %168 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 1, i32 10
  store i32 %167, ptr %168, align 4
  %169 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9, i32 3, i32 1
  %170 = load i8, ptr %169, align 4, !range !10
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %188, label %172

172:                                              ; preds = %166
  %173 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 24, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1)
  store ptr %6, ptr getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @u_audio_controls, i32 0, i32 2, i32 3), align 4
  %174 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @u_audio_controls, i32 0, i32 2), ptr noundef %158) #16
  %175 = icmp eq ptr %174, null
  br i1 %175, label %221, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %5, align 4
  %178 = getelementptr inbounds %struct.snd_pcm, ptr %177, i32 0, i32 2
  %179 = load i32, ptr %178, align 4
  %180 = getelementptr inbounds %struct.snd_kcontrol, ptr %174, i32 0, i32 1, i32 2
  store i32 %179, ptr %180, align 4
  %181 = getelementptr inbounds %struct.snd_kcontrol, ptr %174, i32 0, i32 1, i32 3
  store i32 0, ptr %181, align 4
  %182 = load ptr, ptr %4, align 4
  %183 = call i32 @snd_ctl_add(ptr noundef %182, ptr noundef nonnull %174) #16
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %221, label %185

185:                                              ; preds = %176
  %186 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 1, i32 12
  store ptr %174, ptr %186, align 4
  %187 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 1, i32 17
  store i32 0, ptr %187, align 8
  br label %188

188:                                              ; preds = %185, %166
  %189 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9, i32 3, i32 2
  %190 = load i8, ptr %189, align 1, !range !10
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %223, label %192

192:                                              ; preds = %188
  %193 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 24, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1)
  store ptr %6, ptr getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @u_audio_controls, i32 0, i32 3, i32 3), align 4
  %194 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @u_audio_controls, i32 0, i32 3), ptr noundef %158) #16
  %195 = icmp eq ptr %194, null
  br i1 %195, label %221, label %196

196:                                              ; preds = %192
  %197 = load ptr, ptr %5, align 4
  %198 = getelementptr inbounds %struct.snd_pcm, ptr %197, i32 0, i32 2
  %199 = load i32, ptr %198, align 4
  %200 = getelementptr inbounds %struct.snd_kcontrol, ptr %194, i32 0, i32 1, i32 2
  store i32 %199, ptr %200, align 4
  %201 = getelementptr inbounds %struct.snd_kcontrol, ptr %194, i32 0, i32 1, i32 3
  store i32 0, ptr %201, align 4
  %202 = getelementptr inbounds %struct.snd_kcontrol, ptr %194, i32 0, i32 6
  store ptr @u_audio_volume_tlv, ptr %202, align 4
  %203 = getelementptr inbounds %struct.snd_kcontrol, ptr %194, i32 1, i32 0, i32 1
  %204 = load i32, ptr %203, align 4
  %205 = or i32 %204, 268435472
  store i32 %205, ptr %203, align 4
  %206 = load ptr, ptr %4, align 4
  %207 = call i32 @snd_ctl_add(ptr noundef %206, ptr noundef nonnull %194) #16
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %221, label %209

209:                                              ; preds = %196
  %210 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 1, i32 11
  store ptr %194, ptr %210, align 8
  %211 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9, i32 3, i32 4
  %212 = load i16, ptr %211, align 4
  %213 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 1, i32 16
  store i16 %212, ptr %213, align 2
  %214 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 1, i32 14
  store i16 %212, ptr %214, align 2
  %215 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9, i32 3, i32 3
  %216 = load i16, ptr %215, align 2
  %217 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 1, i32 13
  store i16 %216, ptr %217, align 8
  %218 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9, i32 3, i32 5
  %219 = load i16, ptr %218, align 2
  %220 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 1, i32 15
  store i16 %219, ptr %220, align 4
  br label %223

221:                                              ; preds = %258, %254, %238, %234, %196, %192, %176, %172
  %222 = phi i32 [ %207, %196 ], [ -12, %192 ], [ %183, %176 ], [ -12, %172 ], [ -12, %234 ], [ %245, %238 ], [ -12, %254 ], [ %269, %258 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  br label %302

223:                                              ; preds = %209, %188, %157
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !15
  %224 = load ptr, ptr %5, align 4
  %225 = getelementptr %struct.snd_pcm, ptr %224, i32 0, i32 8, i32 1, i32 2
  %226 = load i32, ptr %225, align 8
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %283, label %228

228:                                              ; preds = %223
  %229 = load i32, ptr %161, align 4
  %230 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 2, i32 10
  store i32 %229, ptr %230, align 8
  %231 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9, i32 7, i32 1
  %232 = load i8, ptr %231, align 4, !range !10
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %250, label %234

234:                                              ; preds = %228
  %235 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 24, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2)
  store ptr %6, ptr getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @u_audio_controls, i32 0, i32 2, i32 3), align 4
  %236 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @u_audio_controls, i32 0, i32 2), ptr noundef %160) #16
  %237 = icmp eq ptr %236, null
  br i1 %237, label %221, label %238

238:                                              ; preds = %234
  %239 = load ptr, ptr %5, align 4
  %240 = getelementptr inbounds %struct.snd_pcm, ptr %239, i32 0, i32 2
  %241 = load i32, ptr %240, align 4
  %242 = getelementptr inbounds %struct.snd_kcontrol, ptr %236, i32 0, i32 1, i32 2
  store i32 %241, ptr %242, align 4
  %243 = getelementptr inbounds %struct.snd_kcontrol, ptr %236, i32 0, i32 1, i32 3
  store i32 0, ptr %243, align 4
  %244 = load ptr, ptr %4, align 4
  %245 = call i32 @snd_ctl_add(ptr noundef %244, ptr noundef nonnull %236) #16
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %221, label %247

247:                                              ; preds = %238
  %248 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 2, i32 12
  store ptr %236, ptr %248, align 8
  %249 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 2, i32 17
  store i32 0, ptr %249, align 4
  br label %250

250:                                              ; preds = %247, %228
  %251 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9, i32 7, i32 2
  %252 = load i8, ptr %251, align 1, !range !10
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %283, label %254

254:                                              ; preds = %250
  %255 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 24, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2)
  store ptr %6, ptr getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @u_audio_controls, i32 0, i32 3, i32 3), align 4
  %256 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @u_audio_controls, i32 0, i32 3), ptr noundef %160) #16
  %257 = icmp eq ptr %256, null
  br i1 %257, label %221, label %258

258:                                              ; preds = %254
  %259 = load ptr, ptr %5, align 4
  %260 = getelementptr inbounds %struct.snd_pcm, ptr %259, i32 0, i32 2
  %261 = load i32, ptr %260, align 4
  %262 = getelementptr inbounds %struct.snd_kcontrol, ptr %256, i32 0, i32 1, i32 2
  store i32 %261, ptr %262, align 4
  %263 = getelementptr inbounds %struct.snd_kcontrol, ptr %256, i32 0, i32 1, i32 3
  store i32 0, ptr %263, align 4
  %264 = getelementptr inbounds %struct.snd_kcontrol, ptr %256, i32 0, i32 6
  store ptr @u_audio_volume_tlv, ptr %264, align 4
  %265 = getelementptr inbounds %struct.snd_kcontrol, ptr %256, i32 1, i32 0, i32 1
  %266 = load i32, ptr %265, align 4
  %267 = or i32 %266, 268435472
  store i32 %267, ptr %265, align 4
  %268 = load ptr, ptr %4, align 4
  %269 = call i32 @snd_ctl_add(ptr noundef %268, ptr noundef nonnull %256) #16
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %221, label %271

271:                                              ; preds = %258
  %272 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 2, i32 11
  store ptr %256, ptr %272, align 4
  %273 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9, i32 7, i32 4
  %274 = load i16, ptr %273, align 4
  %275 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 2, i32 16
  store i16 %274, ptr %275, align 2
  %276 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 2, i32 14
  store i16 %274, ptr %276, align 2
  %277 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9, i32 7, i32 3
  %278 = load i16, ptr %277, align 2
  %279 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 2, i32 13
  store i16 %278, ptr %279, align 4
  %280 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 9, i32 7, i32 5
  %281 = load i16, ptr %280, align 2
  %282 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 2, i32 15
  store i16 %281, ptr %282, align 8
  br label %283

283:                                              ; preds = %271, %250, %223
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  %284 = load ptr, ptr %4, align 4
  %285 = getelementptr inbounds %struct.snd_card, ptr %284, i32 0, i32 2
  %286 = call i32 @strscpy(ptr noundef %285, ptr noundef %2, i32 noundef 16) #16
  %287 = load ptr, ptr %4, align 4
  %288 = getelementptr inbounds %struct.snd_card, ptr %287, i32 0, i32 3
  %289 = call i32 @strscpy(ptr noundef %288, ptr noundef %2, i32 noundef 32) #16
  %290 = load ptr, ptr %4, align 4
  %291 = getelementptr inbounds %struct.snd_card, ptr %290, i32 0, i32 4
  %292 = getelementptr inbounds %struct.snd_card, ptr %290, i32 0, i32 27
  %293 = load ptr, ptr %292, align 8
  %294 = getelementptr inbounds %struct.device, ptr %293, i32 0, i32 28
  %295 = load i32, ptr %294, align 4
  %296 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %291, ptr noundef nonnull @.str.5, ptr noundef %2, i32 noundef %295)
  %297 = load ptr, ptr %5, align 4
  %298 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %297, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 65536) #16
  %299 = load ptr, ptr %4, align 4
  %300 = call i32 @snd_card_register(ptr noundef %299) #16
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %316, label %302

302:                                              ; preds = %283, %221, %148, %144, %134, %130, %87
  %303 = phi i32 [ %94, %87 ], [ %141, %134 ], [ %155, %148 ], [ %300, %283 ], [ -12, %130 ], [ -12, %144 ], [ %222, %221 ]
  %304 = load ptr, ptr %4, align 4
  %305 = call i32 @snd_card_free(ptr noundef %304) #16
  br label %306

306:                                              ; preds = %302, %81, %80, %63, %61, %48, %31, %29
  %307 = phi i32 [ %85, %81 ], [ %303, %302 ], [ -12, %48 ], [ -12, %31 ], [ -12, %29 ], [ -12, %80 ], [ -12, %63 ], [ -12, %61 ]
  %308 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 1, i32 7
  %309 = load ptr, ptr %308, align 8
  call void @kfree(ptr noundef %309) #16
  %310 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 2, i32 7
  %311 = load ptr, ptr %310, align 4
  call void @kfree(ptr noundef %311) #16
  %312 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 1, i32 4
  %313 = load ptr, ptr %312, align 4
  call void @kfree(ptr noundef %313) #16
  %314 = getelementptr inbounds %struct.snd_uac_chip, ptr %10, i32 0, i32 2, i32 4
  %315 = load ptr, ptr %314, align 8
  call void @kfree(ptr noundef %315) #16
  call void @kfree(ptr noundef nonnull %10) #16
  br label %316

316:                                              ; preds = %306, %283, %8, %3
  %317 = phi i32 [ %307, %306 ], [ -22, %3 ], [ -12, %8 ], [ 0, %283 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret i32 %317
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @u_audio_volume_tlv(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [4 x i32], align 8
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  store i64 34359738372, ptr %5, align 8
  %8 = icmp ult i32 %2, 16
  br i1 %8, label %34, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.uac_rtd_params, ptr %7, i32 0, i32 13
  %11 = load i16, ptr %10, align 4
  %12 = sext i16 %11 to i32
  %13 = mul nsw i32 %12, 100
  %14 = sdiv i32 %13, 256
  %15 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 2
  store i32 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.uac_rtd_params, ptr %7, i32 0, i32 14
  %17 = load i16, ptr %16, align 2
  %18 = sext i16 %17 to i32
  %19 = mul nsw i32 %18, 100
  %20 = sdiv i32 %19, 256
  %21 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 3
  store i32 %20, ptr %21, align 4
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 16, i32 -1090519040) #19, !srcloc !16
  %23 = extractvalue { i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %9
  %26 = tail call ptr @llvm.thread.pointer() #16
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %27) #21, !srcloc !17
  %29 = and i32 %28, -13
  %30 = or i32 %29, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #16, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !19
  %31 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %5, i32 noundef 16) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #16, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !19
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 0, i32 -14
  br label %34

34:                                               ; preds = %25, %9, %4
  %35 = phi i32 [ -12, %4 ], [ -14, %9 ], [ %33, %25 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret i32 %35
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @g_audio_cleanup(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_uac_chip, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @snd_card_free(ptr noundef nonnull %9) #16
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.snd_uac_chip, ptr %5, i32 0, i32 1, i32 7
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #16
  %16 = getelementptr inbounds %struct.snd_uac_chip, ptr %5, i32 0, i32 2, i32 7
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %17) #16
  %18 = getelementptr inbounds %struct.snd_uac_chip, ptr %5, i32 0, i32 1, i32 4
  %19 = load ptr, ptr %18, align 4
  tail call void @kfree(ptr noundef %19) #16
  %20 = getelementptr inbounds %struct.snd_uac_chip, ptr %5, i32 0, i32 2, i32 4
  %21 = load ptr, ptr %20, align 8
  tail call void @kfree(ptr noundef %21) #16
  tail call void @kfree(ptr noundef nonnull %5) #16
  br label %22

22:                                               ; preds = %13, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uac_pcm_open(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.g_audio, ptr %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.g_audio, ptr %6, i32 0, i32 9, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.g_audio, ptr %6, i32 0, i32 9, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.g_audio, ptr %6, i32 0, i32 9, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.g_audio, ptr %6, i32 0, i32 9, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %7, align 4
  %17 = getelementptr inbounds %struct.g_audio, ptr %6, i32 0, i32 9, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 5
  store i64 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %20, ptr noundef nonnull align 8 dereferenceable(64) @uac_pcm_hardware, i32 64, i1 false)
  %21 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 3
  br i1 %23, label %25, label %43

25:                                               ; preds = %1
  store i32 %13, ptr %24, align 4
  %26 = icmp eq i32 %9, 4
  %27 = select i1 %26, i64 1024, i64 4
  %28 = icmp eq i32 %9, 3
  %29 = select i1 %28, i64 4294967296, i64 %27
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 1
  store i64 %29, ptr %30, align 8
  %31 = icmp eq i32 %16, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %32, %25
  %33 = phi i32 [ %36, %32 ], [ 0, %25 ]
  %34 = phi i32 [ %37, %32 ], [ %16, %25 ]
  %35 = and i32 %34, 1
  %36 = add i32 %35, %33
  %37 = lshr i32 %34, 1
  %38 = icmp ult i32 %34, 2
  br i1 %38, label %39, label %32

39:                                               ; preds = %32, %25
  %40 = phi i32 [ 0, %25 ], [ %36, %32 ]
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 5
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 1, i32 6
  br label %61

43:                                               ; preds = %1
  store i32 %15, ptr %24, align 4
  %44 = icmp eq i32 %11, 4
  %45 = select i1 %44, i64 1024, i64 4
  %46 = icmp eq i32 %11, 3
  %47 = select i1 %46, i64 4294967296, i64 %45
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 1
  store i64 %47, ptr %48, align 8
  %49 = icmp eq i32 %18, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %50, %43
  %51 = phi i32 [ %54, %50 ], [ 0, %43 ]
  %52 = phi i32 [ %55, %50 ], [ %18, %43 ]
  %53 = and i32 %52, 1
  %54 = add i32 %53, %51
  %55 = lshr i32 %52, 1
  %56 = icmp ult i32 %52, 2
  br i1 %56, label %57, label %50

57:                                               ; preds = %50, %43
  %58 = phi i32 [ 0, %43 ], [ %54, %50 ]
  %59 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 5
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 2, i32 6
  br label %61

61:                                               ; preds = %57, %39
  %62 = phi ptr [ %60, %57 ], [ %42, %39 ]
  %63 = phi i32 [ %58, %57 ], [ %40, %39 ]
  %64 = phi i32 [ %15, %57 ], [ %13, %39 ]
  %65 = load i32, ptr %62, align 4
  %66 = lshr i32 %65, 1
  %67 = and i32 %66, 1073741823
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 8
  store i32 %67, ptr %68, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 4
  store i32 %64, ptr %69, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 6
  store i32 %63, ptr %70, align 8
  %71 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %5, i32 noundef 15) #16
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @uac_pcm_null(ptr nocapture noundef readnone %0) #10 {
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @uac_pcm_trigger(ptr noundef %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.snd_uac_chip, ptr %4, i32 0, i32 1
  %10 = getelementptr inbounds %struct.snd_uac_chip, ptr %4, i32 0, i32 2
  %11 = select i1 %8, ptr %9, ptr %10
  %12 = getelementptr inbounds %struct.uac_rtd_params, ptr %11, i32 0, i32 3
  store i32 0, ptr %12, align 4
  switch i32 %1, label %17 [
    i32 1, label %14
    i32 6, label %14
    i32 0, label %13
    i32 5, label %13
  ]

13:                                               ; preds = %2, %2
  br label %14

14:                                               ; preds = %13, %2, %2
  %15 = phi ptr [ null, %13 ], [ %0, %2 ], [ %0, %2 ]
  %16 = getelementptr inbounds %struct.uac_rtd_params, ptr %11, i32 0, i32 2
  store ptr %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %14, %2
  %18 = phi i32 [ -22, %2 ], [ 0, %14 ]
  %19 = load i32, ptr %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.uac_rtd_params, ptr %11, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.uac_rtd_params, ptr %11, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.uac_rtd_params, ptr %11, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.g_audio, ptr %5, i32 0, i32 9, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = mul i32 %31, %29
  tail call void @llvm.memset.p0.i32(ptr align 1 %27, i8 0, i32 %32, i1 false)
  br label %33

33:                                               ; preds = %25, %21, %17
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @uac_pcm_pointer(ptr nocapture noundef readonly %0) #12 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.snd_uac_chip, ptr %3, i32 0, i32 2
  %9 = select i1 %6, ptr %7, ptr %8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.uac_rtd_params, ptr %9, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 3
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 21
  %16 = load i32, ptr %15, align 8
  %17 = udiv i32 %14, %16
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @u_audio_pitch_info(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #13 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.g_audio, ptr %6, i32 0, i32 9, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = mul i32 %8, 1000
  %10 = add i32 %9, 1000000
  %11 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 2, ptr %11, align 8
  %12 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 1, ptr %12, align 8
  %13 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 750000, ptr %13, align 8
  %14 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 %10, ptr %14, align 4
  %15 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 2
  store i32 1, ptr %15, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @u_audio_pitch_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #13 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %6, ptr %7, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @u_audio_pitch_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.g_audio, ptr %6, i32 0, i32 9, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = mul i32 %8, 1000
  %10 = add i32 %9, 1000000
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 750000)
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 %10)
  %15 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %14
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 %14, ptr %15, align 4
  br label %19

19:                                               ; preds = %18, %2
  %20 = phi i32 [ 1, %18 ], [ 0, %2 ]
  ret i32 %20
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @u_audio_mute_info(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #14 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 1, ptr %3, align 8
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 2
  store i32 1, ptr %7, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @u_audio_mute_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 18
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #16
  %7 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %10, ptr %11, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @u_audio_mute_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 18
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #16
  %13 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 17
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %10
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #16
  br label %25

17:                                               ; preds = %2
  store i32 %10, ptr %13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #16
  %18 = getelementptr inbounds %struct.g_audio, ptr %6, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 %19(ptr noundef %6, i32 noundef %23, i32 noundef 1) #16
  br label %25

25:                                               ; preds = %21, %17, %16
  %26 = phi i32 [ 0, %16 ], [ 1, %21 ], [ 1, %17 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @u_audio_volume_info(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #13 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 2, ptr %5, align 8
  %6 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 14
  %9 = load i16, ptr %8, align 2
  %10 = sext i16 %9 to i32
  %11 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 13
  %12 = load i16, ptr %11, align 4
  %13 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 15
  %14 = load i16, ptr %13, align 4
  %15 = sext i16 %14 to i32
  %16 = xor i16 %12, -1
  %17 = sext i16 %16 to i32
  %18 = add nsw i32 %17, %10
  %19 = add nsw i32 %18, %15
  %20 = sdiv i32 %19, %15
  %21 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 2
  store i32 1, ptr %22, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @u_audio_volume_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 18
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #16
  %7 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 16
  %8 = load i16, ptr %7, align 2
  %9 = sext i16 %8 to i32
  %10 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 13
  %11 = load i16, ptr %10, align 4
  %12 = sext i16 %11 to i32
  %13 = sub nsw i32 %9, %12
  %14 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 15
  %15 = load i16, ptr %14, align 4
  %16 = sext i16 %15 to i32
  %17 = sdiv i32 %13, %16
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %17, ptr %18, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @u_audio_volume_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 18
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #16
  %11 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 15
  %12 = load i16, ptr %11, align 4
  %13 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 13
  %14 = load i16, ptr %13, align 4
  %15 = trunc i32 %8 to i16
  %16 = mul i16 %12, %15
  %17 = add i16 %16, %14
  %18 = tail call i16 @llvm.smax.i16(i16 %17, i16 %14)
  %19 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 14
  %20 = load i16, ptr %19, align 2
  %21 = tail call i16 @llvm.smin.i16(i16 %18, i16 %20)
  %22 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 16
  %23 = load i16, ptr %22, align 2
  %24 = icmp eq i16 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #16
  br label %34

26:                                               ; preds = %2
  store i16 %21, ptr %22, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #16
  %27 = getelementptr inbounds %struct.g_audio, ptr %6, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.uac_rtd_params, ptr %4, i32 0, i32 10
  %32 = load i32, ptr %31, align 4
  %33 = tail call i32 %28(ptr noundef %6, i32 noundef %32, i32 noundef 2) #16
  br label %34

34:                                               ; preds = %30, %26, %25
  %35 = phi i32 [ 0, %25 ], [ 1, %30 ], [ 1, %26 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind readonly }

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
!8 = !{i64 868282, i64 868309, i64 868331, i64 868359}
!9 = !{i64 868690, i64 868717, i64 868750, i64 868771, i64 868798, i64 868824}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148353826, i64 2148354106, i64 2148354440, i64 2148354774}
!13 = !{i64 867995, i64 868022}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{!"auto-init"}
!16 = !{i64 2151643999, i64 2151644024}
!17 = !{i64 4139533}
!18 = !{i64 4139730}
!19 = !{i64 2151625009}
