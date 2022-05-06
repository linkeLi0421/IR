; ModuleID = '/llk/IR/sound/usb/midi.c_pt.bc'
source_filename = "../sound/usb/midi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_usbmidi_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_usbmidi_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_snd_usbmidi_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_usbmidi_input_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_usbmidi_input_stop\22\09\09\09\09\09"
module asm "__kstrtabns_snd_usbmidi_input_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_usbmidi_input_start:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_usbmidi_input_start\22\09\09\09\09\09"
module asm "__kstrtabns_snd_usbmidi_input_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_usbmidi_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_usbmidi_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_snd_usbmidi_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_usbmidi_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_usbmidi_resume\22\09\09\09\09\09"
module asm "__kstrtabns_snd_usbmidi_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___snd_usbmidi_create:\09\09\09\09\09"
module asm "\09.asciz \09\22__snd_usbmidi_create\22\09\09\09\09\09"
module asm "__kstrtabns___snd_usbmidi_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.usb_protocol_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.72, i32 }
%union.anon.72 = type { ptr }
%struct.snd_rawmidi_global_ops = type { ptr, ptr, ptr }
%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.port_info = type { i32, i16, i16, ptr, i32 }
%struct.snd_usb_midi_endpoint = type { ptr, ptr }
%struct.snd_usb_midi_out_endpoint = type { ptr, [7 x %struct.out_urb_context], i32, i32, i32, %struct.work_struct, i32, %struct.spinlock, [16 x %struct.usbmidi_out_port], i32, %struct.wait_queue_head }
%struct.out_urb_context = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.usbmidi_out_port = type { ptr, ptr, i32, i8, i8, [2 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_usb_midi_in_endpoint = type { ptr, [7 x ptr], [16 x %struct.usbmidi_in_port], i8, i8, i8, i8, i32 }
%struct.usbmidi_in_port = type { ptr, i8 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.snd_usb_midi_endpoint_info = type { i8, i8, i8, i8, i16, i16, [16 x i16], [16 x i16] }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.snd_usb_midi = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.timer_list, %struct.spinlock, %struct.rw_semaphore, %struct.mutex, i32, i32, [2 x %struct.snd_usb_midi_endpoint], i32, [2 x i32], i8, i8, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.snd_usb_audio_quirk = type { ptr, ptr, i16, i16, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.usb_ms_header_descriptor = type <{ i8, i8, i8, i16, i16 }>
%struct.usb_ms_endpoint_descriptor = type { i8, i8, i8, i8, [0 x i8] }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.67, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.67 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.62, [128 x i8] }
%union.anon.62 = type { %union.anon.64 }
%union.anon.64 = type { [64 x i64] }
%struct.snd_seq_port_info = type { %struct.snd_seq_addr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, [59 x i8] }
%struct.snd_seq_addr = type { i8, i8 }
%struct.snd_rawmidi_runtime = type { ptr, i8, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, %struct.work_struct, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.usb_midi_out_jack_descriptor = type { i8, i8, i8, i8, i8, i8, [0 x %struct.usb_midi_source_pin] }
%struct.usb_midi_source_pin = type { i8, i8 }
%struct.usb_midi_in_jack_descriptor = type { i8, i8, i8, i8, i8, i8 }

@__UNIQUE_ID_author221 = internal constant [44 x i8] c"author=Clemens Ladisch <clemens@ladisch.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description222 = internal constant [41 x i8] c"description=USB Audio/MIDI helper module\00", section ".modinfo", align 1
@__UNIQUE_ID_license223 = internal constant [21 x i8] c"license=Dual BSD/GPL\00", section ".modinfo", align 1
@__kstrtab_snd_usbmidi_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_usbmidi_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_usbmidi_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_usbmidi_disconnect to i32), ptr @__kstrtab_snd_usbmidi_disconnect, ptr @__kstrtabns_snd_usbmidi_disconnect }, section "___ksymtab+snd_usbmidi_disconnect", align 4
@__kstrtab_snd_usbmidi_input_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_usbmidi_input_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_usbmidi_input_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_usbmidi_input_stop to i32), ptr @__kstrtab_snd_usbmidi_input_stop, ptr @__kstrtabns_snd_usbmidi_input_stop }, section "___ksymtab+snd_usbmidi_input_stop", align 4
@__kstrtab_snd_usbmidi_input_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_usbmidi_input_start = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_usbmidi_input_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_usbmidi_input_start to i32), ptr @__kstrtab_snd_usbmidi_input_start, ptr @__kstrtabns_snd_usbmidi_input_start }, section "___ksymtab+snd_usbmidi_input_start", align 4
@__kstrtab_snd_usbmidi_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_usbmidi_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_usbmidi_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_usbmidi_suspend to i32), ptr @__kstrtab_snd_usbmidi_suspend, ptr @__kstrtabns_snd_usbmidi_suspend }, section "___ksymtab+snd_usbmidi_suspend", align 4
@__kstrtab_snd_usbmidi_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_usbmidi_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_usbmidi_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_usbmidi_resume to i32), ptr @__kstrtab_snd_usbmidi_resume, ptr @__kstrtabns_snd_usbmidi_resume }, section "___ksymtab+snd_usbmidi_resume", align 4
@snd_usbmidi_standard_ops = internal constant %struct.usb_protocol_ops { ptr @snd_usbmidi_standard_input, ptr @snd_usbmidi_standard_output, ptr @snd_usbmidi_output_standard_packet, ptr null, ptr null }, align 4
@__snd_usbmidi_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [19 x i8] c"&umidi->disc_rwsem\00", align 1
@__snd_usbmidi_create.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"&umidi->mutex\00", align 1
@snd_usbmidi_maudio_broken_running_status_ops = internal constant %struct.usb_protocol_ops { ptr @snd_usbmidi_maudio_broken_running_status_input, ptr @snd_usbmidi_standard_output, ptr @snd_usbmidi_output_standard_packet, ptr null, ptr null }, align 4
@snd_usbmidi_122l_ops = internal constant %struct.usb_protocol_ops { ptr @snd_usbmidi_us122l_input, ptr @snd_usbmidi_us122l_output, ptr null, ptr null, ptr null }, align 4
@snd_usbmidi_midiman_ops = internal constant %struct.usb_protocol_ops { ptr @snd_usbmidi_midiman_input, ptr @snd_usbmidi_standard_output, ptr @snd_usbmidi_output_midiman_packet, ptr null, ptr null }, align 4
@snd_usbmidi_novation_ops = internal constant %struct.usb_protocol_ops { ptr @snd_usbmidi_novation_input, ptr @snd_usbmidi_novation_output, ptr null, ptr null, ptr null }, align 4
@snd_usbmidi_raw_ops = internal constant %struct.usb_protocol_ops { ptr @snd_usbmidi_raw_input, ptr @snd_usbmidi_raw_output, ptr null, ptr null, ptr null }, align 4
@snd_usbmidi_emagic_ops = internal constant %struct.usb_protocol_ops { ptr @snd_usbmidi_emagic_input, ptr @snd_usbmidi_emagic_output, ptr null, ptr @snd_usbmidi_emagic_init_out, ptr @snd_usbmidi_emagic_finish_out }, align 4
@snd_usbmidi_cme_ops = internal constant %struct.usb_protocol_ops { ptr @snd_usbmidi_cme_input, ptr @snd_usbmidi_standard_output, ptr @snd_usbmidi_output_standard_packet, ptr null, ptr null }, align 4
@snd_usbmidi_akai_ops = internal constant %struct.usb_protocol_ops { ptr @snd_usbmidi_akai_input, ptr @snd_usbmidi_akai_output, ptr null, ptr null, ptr null }, align 4
@snd_usbmidi_ftdi_ops = internal constant %struct.usb_protocol_ops { ptr @snd_usbmidi_ftdi_input, ptr @snd_usbmidi_raw_output, ptr null, ptr null, ptr null }, align 4
@snd_usbmidi_ch345_broken_sysex_ops = internal constant %struct.usb_protocol_ops { ptr @ch345_broken_sysex_input, ptr @snd_usbmidi_standard_output, ptr @snd_usbmidi_output_standard_packet, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"invalid quirk type %d\0A\00", align 1
@__kstrtab___snd_usbmidi_create = external dso_local constant [0 x i8], align 1
@__kstrtabns___snd_usbmidi_create = external dso_local constant [0 x i8], align 1
@__ksymtab___snd_usbmidi_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__snd_usbmidi_create to i32), ptr @__kstrtab___snd_usbmidi_create, ptr @__kstrtabns___snd_usbmidi_create }, section "___ksymtab+__snd_usbmidi_create", align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"usb_submit_urb: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@snd_usbmidi_cin_length = internal unnamed_addr constant [16 x i8] c"\00\00\02\03\03\01\02\03\03\03\03\03\02\02\03\01", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"MIDIStreaming interface descriptor not found\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"too many endpoints\0A\00", align 1
@roland_load_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 0, i32 0, ptr @roland_load_info, ptr @roland_load_get, ptr @roland_load_put, %union.anon.72 zeroinitializer, i32 1 }, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"MIDI Input Mode\00", align 1
@roland_load_info.names = internal constant [2 x ptr] [ptr @.str.8, ptr @.str.9], align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"High Load\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Light Load\00", align 1
@snd_usbmidi_emagic_init_out.init_data = internal constant [9 x i8] c"\F0\00 1d\0B\00\00\F7", align 1
@snd_usbmidi_emagic_finish_out.finish_data = internal constant [10 x i8] c"\F0\00 1d\10\00\7F@\F7", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"USB MIDI\00", align 1
@snd_usbmidi_ops = internal constant %struct.snd_rawmidi_global_ops { ptr null, ptr null, ptr @snd_usbmidi_get_port_info }, align 4
@snd_usbmidi_output_ops = internal constant %struct.snd_rawmidi_ops { ptr @snd_usbmidi_output_open, ptr @snd_usbmidi_output_close, ptr @snd_usbmidi_output_trigger, ptr @snd_usbmidi_output_drain }, align 4
@snd_usbmidi_input_ops = internal constant %struct.snd_rawmidi_ops { ptr @snd_usbmidi_input_open, ptr @snd_usbmidi_input_close, ptr @snd_usbmidi_input_trigger, ptr null }, align 4
@snd_usbmidi_port_info = internal constant [88 x %struct.port_info] [%struct.port_info { i32 77140060, i16 0, i16 128, ptr @.str.11, i32 327686 }, %struct.port_info { i32 77140060, i16 1, i16 0, ptr @.str.12, i32 65538 }, %struct.port_info { i32 77140060, i16 2, i16 0, ptr @.str.13, i32 589826 }, %struct.port_info { i32 77140060, i16 3, i16 0, ptr @.str.14, i32 65538 }, %struct.port_info { i32 92405760, i16 2, i16 0, ptr @.str.15, i32 65538 }, %struct.port_info { i32 92405763, i16 0, i16 128, ptr @.str.16, i32 327806 }, %struct.port_info { i32 92405763, i16 1, i16 128, ptr @.str.17, i32 327806 }, %struct.port_info { i32 92405763, i16 2, i16 128, ptr @.str.18, i32 327806 }, %struct.port_info { i32 92405763, i16 3, i16 128, ptr @.str.19, i32 327806 }, %struct.port_info { i32 92405763, i16 4, i16 0, ptr @.str.20, i32 589826 }, %struct.port_info { i32 92405763, i16 5, i16 0, ptr @.str.21, i32 589826 }, %struct.port_info { i32 92405764, i16 0, i16 0, ptr @.str.22, i32 589826 }, %struct.port_info { i32 92405764, i16 1, i16 0, ptr @.str.15, i32 65538 }, %struct.port_info { i32 92405767, i16 0, i16 64, ptr @.str.16, i32 327806 }, %struct.port_info { i32 92405767, i16 1, i16 64, ptr @.str.17, i32 327806 }, %struct.port_info { i32 92405767, i16 2, i16 0, ptr @.str.22, i32 589826 }, %struct.port_info { i32 92405771, i16 0, i16 64, ptr @.str.16, i32 327806 }, %struct.port_info { i32 92405771, i16 1, i16 64, ptr @.str.17, i32 327806 }, %struct.port_info { i32 92405771, i16 2, i16 0, ptr @.str.22, i32 589826 }, %struct.port_info { i32 92405772, i16 0, i16 64, ptr @.str.16, i32 327806 }, %struct.port_info { i32 92405772, i16 1, i16 64, ptr @.str.17, i32 327806 }, %struct.port_info { i32 92405772, i16 2, i16 0, ptr @.str.22, i32 589826 }, %struct.port_info { i32 92405780, i16 8, i16 0, ptr @.str.15, i32 65538 }, %struct.port_info { i32 92405782, i16 0, i16 128, ptr @.str.16, i32 327774 }, %struct.port_info { i32 92405782, i16 1, i16 128, ptr @.str.17, i32 327774 }, %struct.port_info { i32 92405782, i16 2, i16 0, ptr @.str.20, i32 589826 }, %struct.port_info { i32 92405782, i16 3, i16 0, ptr @.str.21, i32 589826 }, %struct.port_info { i32 92405795, i16 5, i16 0, ptr @.str.15, i32 65538 }, %struct.port_info { i32 92405799, i16 0, i16 64, ptr @.str.16, i32 327774 }, %struct.port_info { i32 92405799, i16 1, i16 64, ptr @.str.17, i32 327774 }, %struct.port_info { i32 92405799, i16 2, i16 0, ptr @.str.22, i32 589826 }, %struct.port_info { i32 92405801, i16 0, i16 128, ptr @.str.16, i32 327774 }, %struct.port_info { i32 92405801, i16 1, i16 128, ptr @.str.17, i32 327774 }, %struct.port_info { i32 92405801, i16 2, i16 0, ptr @.str.20, i32 589826 }, %struct.port_info { i32 92405801, i16 3, i16 0, ptr @.str.21, i32 589826 }, %struct.port_info { i32 92405803, i16 0, i16 0, ptr @.str.22, i32 589826 }, %struct.port_info { i32 92405803, i16 1, i16 0, ptr @.str.15, i32 65538 }, %struct.port_info { i32 92405807, i16 0, i16 0, ptr @.str.22, i32 589826 }, %struct.port_info { i32 92405807, i16 1, i16 0, ptr @.str.23, i32 589826 }, %struct.port_info { i32 92405807, i16 2, i16 0, ptr @.str.24, i32 589826 }, %struct.port_info { i32 92405811, i16 0, i16 0, ptr @.str.22, i32 589826 }, %struct.port_info { i32 92405811, i16 1, i16 0, ptr @.str.25, i32 589826 }, %struct.port_info { i32 92405811, i16 2, i16 0, ptr @.str.26, i32 589826 }, %struct.port_info { i32 92405819, i16 0, i16 0, ptr @.str.22, i32 589826 }, %struct.port_info { i32 92405819, i16 1, i16 0, ptr @.str.15, i32 65538 }, %struct.port_info { i32 92405828, i16 0, i16 0, ptr @.str.22, i32 589826 }, %struct.port_info { i32 92405828, i16 1, i16 0, ptr @.str.15, i32 65538 }, %struct.port_info { i32 92405832, i16 0, i16 0, ptr @.str.22, i32 589826 }, %struct.port_info { i32 92405832, i16 1, i16 0, ptr @.str.25, i32 589826 }, %struct.port_info { i32 92405832, i16 2, i16 0, ptr @.str.26, i32 589826 }, %struct.port_info { i32 92405837, i16 0, i16 0, ptr @.str.22, i32 589826 }, %struct.port_info { i32 92405837, i16 1, i16 0, ptr @.str.25, i32 589826 }, %struct.port_info { i32 92405837, i16 2, i16 0, ptr @.str.26, i32 589826 }, %struct.port_info { i32 92405897, i16 0, i16 0, ptr @.str.15, i32 65538 }, %struct.port_info { i32 92405914, i16 3, i16 0, ptr @.str.15, i32 65538 }, %struct.port_info { i32 92405938, i16 0, i16 0, ptr @.str.15, i32 65538 }, %struct.port_info { i32 92405938, i16 1, i16 0, ptr @.str.22, i32 589826 }, %struct.port_info { i32 92405995, i16 0, i16 0, ptr @.str.22, i32 589826 }, %struct.port_info { i32 92405995, i16 1, i16 0, ptr @.str.15, i32 65538 }, %struct.port_info { i32 92406018, i16 0, i16 0, ptr @.str.15, i32 65538 }, %struct.port_info { i32 92406018, i16 1, i16 0, ptr @.str.22, i32 589826 }, %struct.port_info { i32 92406031, i16 0, i16 0, ptr @.str.22, i32 589826 }, %struct.port_info { i32 92406031, i16 1, i16 0, ptr @.str.25, i32 65538 }, %struct.port_info { i32 92406031, i16 2, i16 0, ptr @.str.26, i32 65538 }, %struct.port_info { i32 92406036, i16 0, i16 128, ptr @.str.27, i32 327774 }, %struct.port_info { i32 92406036, i16 1, i16 0, ptr @.str.22, i32 589826 }, %struct.port_info { i32 92406036, i16 2, i16 0, ptr @.str.15, i32 65538 }, %struct.port_info { i32 92406048, i16 0, i16 0, ptr @.str.22, i32 589826 }, %struct.port_info { i32 92406048, i16 1, i16 0, ptr @.str.15, i32 65538 }, %struct.port_info { i32 92406049, i16 0, i16 0, ptr @.str.22, i32 589826 }, %struct.port_info { i32 92406049, i16 1, i16 0, ptr @.str.15, i32 65538 }, %struct.port_info { i32 92406085, i16 0, i16 0, ptr @.str.15, i32 65538 }, %struct.port_info { i32 92406085, i16 1, i16 0, ptr @.str.22, i32 589826 }, %struct.port_info { i32 92406102, i16 0, i16 0, ptr @.str.28, i32 65538 }, %struct.port_info { i32 92406102, i16 1, i16 0, ptr @.str.22, i32 589826 }, %struct.port_info { i32 92406107, i16 0, i16 128, ptr @.str.27, i32 327774 }, %struct.port_info { i32 92406107, i16 1, i16 0, ptr @.str.15, i32 65538 }, %struct.port_info { i32 123932721, i16 8, i16 0, ptr @.str.15, i32 65538 }, %struct.port_info { i32 123932723, i16 8, i16 0, ptr @.str.15, i32 65538 }, %struct.port_info { i32 134021121, i16 0, i16 0, ptr @.str.29, i32 589826 }, %struct.port_info { i32 134021121, i16 1, i16 0, ptr @.str.30, i32 589826 }, %struct.port_info { i32 141164545, i16 8, i16 0, ptr @.str.31, i32 589826 }, %struct.port_info { i32 141164546, i16 8, i16 0, ptr @.str.31, i32 589826 }, %struct.port_info { i32 141164547, i16 4, i16 0, ptr @.str.31, i32 589826 }, %struct.port_info { i32 166199394, i16 0, i16 0, ptr @.str.15, i32 65538 }, %struct.port_info { i32 166199394, i16 1, i16 0, ptr @.str.22, i32 65538 }, %struct.port_info { i32 322832405, i16 0, i16 0, ptr @.str.22, i32 589826 }, %struct.port_info { i32 322832405, i16 1, i16 0, ptr @.str.27, i32 327682 }], align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"%s Tone Generator\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"%s Remote Control\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"%s Thru\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"%s Editor\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"%s Control\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"%s Part A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"%s Part B\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"%s Part C\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"%s Part D\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"%s MIDI 1\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"%s MIDI 2\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"%s MIDI\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"%s External MIDI\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"%s Sync\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"%s 1\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"%s 2\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"%s Synth\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"%s Keyboard\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"%s MIDI A\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"%s MIDI B\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"%s Broadcast\00", align 1
@system_highpri_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.32 = private unnamed_addr constant [24 x i8] c"invalid MIDI out EP %x\0A\00", align 1
@snd_usbmidi_out_endpoint_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"&ep->drain_wait\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.35 = private unnamed_addr constant [15 x i8] c"urb status %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"invalid MIDI in EP %x\0A\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"MIDI\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"substream %d:%d not found\0A\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"%s %s %d\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author221, ptr @__UNIQUE_ID_description222, ptr @__UNIQUE_ID_license223, ptr @__ksymtab___snd_usbmidi_create, ptr @__ksymtab_snd_usbmidi_disconnect, ptr @__ksymtab_snd_usbmidi_input_start, ptr @__ksymtab_snd_usbmidi_input_stop, ptr @__ksymtab_snd_usbmidi_resume, ptr @__ksymtab_snd_usbmidi_suspend], section "llvm.metadata"
@switch.table.snd_usbmidi_us122l_output = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usbmidi_disconnect(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 32
  tail call void @down_write(ptr noundef %2) #14
  %3 = getelementptr i8, ptr %0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #14
  %4 = getelementptr i8, ptr %0, i32 112
  store i8 1, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %5 = load i16, ptr %3, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  tail call void @up_write(ptr noundef %2) #14
  %7 = getelementptr i8, ptr %0, i32 8
  %8 = tail call i32 @del_timer_sync(ptr noundef %7) #14
  %9 = getelementptr i8, ptr %0, i32 84
  %10 = getelementptr i8, ptr %0, i32 -4
  br label %11

11:                                               ; preds = %91, %1
  %12 = phi i32 [ 0, %1 ], [ %92, %91 ]
  %13 = getelementptr [2 x %struct.snd_usb_midi_endpoint], ptr %9, i32 0, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %58, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %14, i32 0, i32 5
  %18 = tail call zeroext i1 @cancel_work_sync(ptr noundef %17) #14
  %19 = load ptr, ptr %13, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %58, label %21

21:                                               ; preds = %16
  %22 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %19, i32 0, i32 1, i32 0
  %23 = load ptr, ptr %22, align 4
  tail call void @usb_kill_urb(ptr noundef %23) #14
  %24 = load ptr, ptr %13, align 4
  %25 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %24, i32 0, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void @usb_kill_urb(ptr noundef %26) #14
  %27 = load ptr, ptr %13, align 4
  %28 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %27, i32 0, i32 1, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void @usb_kill_urb(ptr noundef %29) #14
  %30 = load ptr, ptr %13, align 4
  %31 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %30, i32 0, i32 1, i32 3
  %32 = load ptr, ptr %31, align 4
  tail call void @usb_kill_urb(ptr noundef %32) #14
  %33 = load ptr, ptr %13, align 4
  %34 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %33, i32 0, i32 1, i32 4
  %35 = load ptr, ptr %34, align 4
  tail call void @usb_kill_urb(ptr noundef %35) #14
  %36 = load ptr, ptr %13, align 4
  %37 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %36, i32 0, i32 1, i32 5
  %38 = load ptr, ptr %37, align 4
  tail call void @usb_kill_urb(ptr noundef %38) #14
  %39 = load ptr, ptr %13, align 4
  %40 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %39, i32 0, i32 1, i32 6
  %41 = load ptr, ptr %40, align 4
  tail call void @usb_kill_urb(ptr noundef %41) #14
  %42 = load ptr, ptr %10, align 4
  %43 = getelementptr inbounds %struct.usb_protocol_ops, ptr %42, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %21
  %47 = load ptr, ptr %13, align 4
  tail call void %44(ptr noundef %47) #14
  br label %48

48:                                               ; preds = %46, %21
  %49 = load ptr, ptr %13, align 4
  %50 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %49, i32 0, i32 2
  store i32 0, ptr %50, align 4
  %51 = load ptr, ptr %13, align 4
  %52 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %51, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  store i32 0, ptr %52, align 4
  %56 = load ptr, ptr %13, align 4
  %57 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %56, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %57, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %58

58:                                               ; preds = %55, %48, %16, %11
  %59 = getelementptr inbounds %struct.snd_usb_midi_endpoint, ptr %13, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %83, label %62

62:                                               ; preds = %58
  %63 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %60, i32 0, i32 1, i32 0
  %64 = load ptr, ptr %63, align 4
  tail call void @usb_kill_urb(ptr noundef %64) #14
  %65 = load ptr, ptr %59, align 4
  %66 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %65, i32 0, i32 1, i32 1
  %67 = load ptr, ptr %66, align 4
  tail call void @usb_kill_urb(ptr noundef %67) #14
  %68 = load ptr, ptr %59, align 4
  %69 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %68, i32 0, i32 1, i32 2
  %70 = load ptr, ptr %69, align 4
  tail call void @usb_kill_urb(ptr noundef %70) #14
  %71 = load ptr, ptr %59, align 4
  %72 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %71, i32 0, i32 1, i32 3
  %73 = load ptr, ptr %72, align 4
  tail call void @usb_kill_urb(ptr noundef %73) #14
  %74 = load ptr, ptr %59, align 4
  %75 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %74, i32 0, i32 1, i32 4
  %76 = load ptr, ptr %75, align 4
  tail call void @usb_kill_urb(ptr noundef %76) #14
  %77 = load ptr, ptr %59, align 4
  %78 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %77, i32 0, i32 1, i32 5
  %79 = load ptr, ptr %78, align 4
  tail call void @usb_kill_urb(ptr noundef %79) #14
  %80 = load ptr, ptr %59, align 4
  %81 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %80, i32 0, i32 1, i32 6
  %82 = load ptr, ptr %81, align 4
  tail call void @usb_kill_urb(ptr noundef %82) #14
  br label %83

83:                                               ; preds = %62, %58
  %84 = load ptr, ptr %13, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  tail call fastcc void @snd_usbmidi_out_endpoint_clear(ptr noundef nonnull %84)
  br label %87

87:                                               ; preds = %86, %83
  %88 = load ptr, ptr %59, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  tail call fastcc void @snd_usbmidi_in_endpoint_delete(ptr noundef nonnull %88)
  store ptr null, ptr %59, align 4
  br label %91

91:                                               ; preds = %90, %87
  %92 = add nuw nsw i32 %12, 1
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %11

94:                                               ; preds = %91
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snd_usbmidi_out_endpoint_clear(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 4
  %3 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 1, i32 0
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 4
  %8 = load i32, ptr %2, align 4
  %9 = load ptr, ptr %7, align 4
  %10 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 15
  %13 = load i32, ptr %12, align 4
  tail call void @usb_free_coherent(ptr noundef %9, i32 noundef %8, ptr noundef %11, i32 noundef %13) #14
  tail call void @usb_free_urb(ptr noundef nonnull %4) #14
  store ptr null, ptr %3, align 4
  br label %14

14:                                               ; preds = %6, %1
  %15 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %0, align 4
  %20 = load i32, ptr %2, align 4
  %21 = load ptr, ptr %19, align 4
  %22 = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 14
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 15
  %25 = load i32, ptr %24, align 4
  tail call void @usb_free_coherent(ptr noundef %21, i32 noundef %20, ptr noundef %23, i32 noundef %25) #14
  tail call void @usb_free_urb(ptr noundef nonnull %16) #14
  store ptr null, ptr %15, align 4
  br label %26

26:                                               ; preds = %18, %14
  %27 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 1, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %0, align 4
  %32 = load i32, ptr %2, align 4
  %33 = load ptr, ptr %31, align 4
  %34 = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 14
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 15
  %37 = load i32, ptr %36, align 4
  tail call void @usb_free_coherent(ptr noundef %33, i32 noundef %32, ptr noundef %35, i32 noundef %37) #14
  tail call void @usb_free_urb(ptr noundef nonnull %28) #14
  store ptr null, ptr %27, align 4
  br label %38

38:                                               ; preds = %30, %26
  %39 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 1, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %0, align 4
  %44 = load i32, ptr %2, align 4
  %45 = load ptr, ptr %43, align 4
  %46 = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 14
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 15
  %49 = load i32, ptr %48, align 4
  tail call void @usb_free_coherent(ptr noundef %45, i32 noundef %44, ptr noundef %47, i32 noundef %49) #14
  tail call void @usb_free_urb(ptr noundef nonnull %40) #14
  store ptr null, ptr %39, align 4
  br label %50

50:                                               ; preds = %42, %38
  %51 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 1, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %0, align 4
  %56 = load i32, ptr %2, align 4
  %57 = load ptr, ptr %55, align 4
  %58 = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 14
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 15
  %61 = load i32, ptr %60, align 4
  tail call void @usb_free_coherent(ptr noundef %57, i32 noundef %56, ptr noundef %59, i32 noundef %61) #14
  tail call void @usb_free_urb(ptr noundef nonnull %52) #14
  store ptr null, ptr %51, align 4
  br label %62

62:                                               ; preds = %54, %50
  %63 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 1, i32 5
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %0, align 4
  %68 = load i32, ptr %2, align 4
  %69 = load ptr, ptr %67, align 4
  %70 = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 14
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 15
  %73 = load i32, ptr %72, align 4
  tail call void @usb_free_coherent(ptr noundef %69, i32 noundef %68, ptr noundef %71, i32 noundef %73) #14
  tail call void @usb_free_urb(ptr noundef nonnull %64) #14
  store ptr null, ptr %63, align 4
  br label %74

74:                                               ; preds = %66, %62
  %75 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 1, i32 6
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %86, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %0, align 4
  %80 = load i32, ptr %2, align 4
  %81 = load ptr, ptr %79, align 4
  %82 = getelementptr inbounds %struct.urb, ptr %76, i32 0, i32 14
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.urb, ptr %76, i32 0, i32 15
  %85 = load i32, ptr %84, align 4
  tail call void @usb_free_coherent(ptr noundef %81, i32 noundef %80, ptr noundef %83, i32 noundef %85) #14
  tail call void @usb_free_urb(ptr noundef nonnull %76) #14
  store ptr null, ptr %75, align 4
  br label %86

86:                                               ; preds = %78, %74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snd_usbmidi_in_endpoint_delete(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 1, i32 0
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 19
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 15
  %13 = load i32, ptr %12, align 4
  tail call void @usb_free_coherent(ptr noundef %9, i32 noundef %8, ptr noundef %11, i32 noundef %13) #14
  tail call void @usb_free_urb(ptr noundef nonnull %3) #14
  br label %14

14:                                               ; preds = %5, %1
  %15 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 19
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 15
  %26 = load i32, ptr %25, align 4
  tail call void @usb_free_coherent(ptr noundef %22, i32 noundef %21, ptr noundef %24, i32 noundef %26) #14
  tail call void @usb_free_urb(ptr noundef nonnull %16) #14
  br label %27

27:                                               ; preds = %18, %14
  %28 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 1, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 19
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %32, align 4
  %36 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 14
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 15
  %39 = load i32, ptr %38, align 4
  tail call void @usb_free_coherent(ptr noundef %35, i32 noundef %34, ptr noundef %37, i32 noundef %39) #14
  tail call void @usb_free_urb(ptr noundef nonnull %29) #14
  br label %40

40:                                               ; preds = %31, %27
  %41 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 1, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %0, align 4
  %46 = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 19
  %47 = load i32, ptr %46, align 4
  %48 = load ptr, ptr %45, align 4
  %49 = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 14
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 15
  %52 = load i32, ptr %51, align 4
  tail call void @usb_free_coherent(ptr noundef %48, i32 noundef %47, ptr noundef %50, i32 noundef %52) #14
  tail call void @usb_free_urb(ptr noundef nonnull %42) #14
  br label %53

53:                                               ; preds = %44, %40
  %54 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 1, i32 4
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %66, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %0, align 4
  %59 = getelementptr inbounds %struct.urb, ptr %55, i32 0, i32 19
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %58, align 4
  %62 = getelementptr inbounds %struct.urb, ptr %55, i32 0, i32 14
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.urb, ptr %55, i32 0, i32 15
  %65 = load i32, ptr %64, align 4
  tail call void @usb_free_coherent(ptr noundef %61, i32 noundef %60, ptr noundef %63, i32 noundef %65) #14
  tail call void @usb_free_urb(ptr noundef nonnull %55) #14
  br label %66

66:                                               ; preds = %57, %53
  %67 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 1, i32 5
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %79, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %0, align 4
  %72 = getelementptr inbounds %struct.urb, ptr %68, i32 0, i32 19
  %73 = load i32, ptr %72, align 4
  %74 = load ptr, ptr %71, align 4
  %75 = getelementptr inbounds %struct.urb, ptr %68, i32 0, i32 14
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.urb, ptr %68, i32 0, i32 15
  %78 = load i32, ptr %77, align 4
  tail call void @usb_free_coherent(ptr noundef %74, i32 noundef %73, ptr noundef %76, i32 noundef %78) #14
  tail call void @usb_free_urb(ptr noundef nonnull %68) #14
  br label %79

79:                                               ; preds = %70, %66
  %80 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 1, i32 6
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %92, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %0, align 4
  %85 = getelementptr inbounds %struct.urb, ptr %81, i32 0, i32 19
  %86 = load i32, ptr %85, align 4
  %87 = load ptr, ptr %84, align 4
  %88 = getelementptr inbounds %struct.urb, ptr %81, i32 0, i32 14
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.urb, ptr %81, i32 0, i32 15
  %91 = load i32, ptr %90, align 4
  tail call void @usb_free_coherent(ptr noundef %87, i32 noundef %86, ptr noundef %89, i32 noundef %91) #14
  tail call void @usb_free_urb(ptr noundef nonnull %81) #14
  br label %92

92:                                               ; preds = %83, %79
  tail call void @kfree(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usbmidi_input_stop(ptr nocapture noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 113
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %56, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 88
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %5
  %10 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %7, i32 0, i32 1, i32 0
  %11 = load ptr, ptr %10, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #14
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %12, i32 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void @usb_kill_urb(ptr noundef %14) #14
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %15, i32 0, i32 1, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void @usb_kill_urb(ptr noundef %17) #14
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %18, i32 0, i32 1, i32 3
  %20 = load ptr, ptr %19, align 4
  tail call void @usb_kill_urb(ptr noundef %20) #14
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %21, i32 0, i32 1, i32 4
  %23 = load ptr, ptr %22, align 4
  tail call void @usb_kill_urb(ptr noundef %23) #14
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %24, i32 0, i32 1, i32 5
  %26 = load ptr, ptr %25, align 4
  tail call void @usb_kill_urb(ptr noundef %26) #14
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %27, i32 0, i32 1, i32 6
  %29 = load ptr, ptr %28, align 4
  tail call void @usb_kill_urb(ptr noundef %29) #14
  br label %30

30:                                               ; preds = %9, %5
  %31 = getelementptr i8, ptr %0, i32 96
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %55, label %34

34:                                               ; preds = %30
  %35 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %32, i32 0, i32 1, i32 0
  %36 = load ptr, ptr %35, align 4
  tail call void @usb_kill_urb(ptr noundef %36) #14
  %37 = load ptr, ptr %31, align 4
  %38 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %37, i32 0, i32 1, i32 1
  %39 = load ptr, ptr %38, align 4
  tail call void @usb_kill_urb(ptr noundef %39) #14
  %40 = load ptr, ptr %31, align 4
  %41 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %40, i32 0, i32 1, i32 2
  %42 = load ptr, ptr %41, align 4
  tail call void @usb_kill_urb(ptr noundef %42) #14
  %43 = load ptr, ptr %31, align 4
  %44 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %43, i32 0, i32 1, i32 3
  %45 = load ptr, ptr %44, align 4
  tail call void @usb_kill_urb(ptr noundef %45) #14
  %46 = load ptr, ptr %31, align 4
  %47 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %46, i32 0, i32 1, i32 4
  %48 = load ptr, ptr %47, align 4
  tail call void @usb_kill_urb(ptr noundef %48) #14
  %49 = load ptr, ptr %31, align 4
  %50 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %49, i32 0, i32 1, i32 5
  %51 = load ptr, ptr %50, align 4
  tail call void @usb_kill_urb(ptr noundef %51) #14
  %52 = load ptr, ptr %31, align 4
  %53 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %52, i32 0, i32 1, i32 6
  %54 = load ptr, ptr %53, align 4
  tail call void @usb_kill_urb(ptr noundef %54) #14
  br label %55

55:                                               ; preds = %34, %30
  store i8 0, ptr %2, align 1
  br label %56

56:                                               ; preds = %55, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usbmidi_input_start(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 113
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %63

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 108
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %63, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %0, i32 28
  %11 = getelementptr i8, ptr %0, i32 88
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %36, label %14

14:                                               ; preds = %33, %9
  %15 = phi i32 [ %34, %33 ], [ 0, %9 ]
  %16 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %12, i32 0, i32 1, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #14
  %19 = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 3
  %20 = load volatile i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %14
  %23 = load ptr, ptr %12, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 8
  store ptr %24, ptr %25, align 4
  %26 = tail call i32 @usb_submit_urb(ptr noundef %17, i32 noundef 2592) #14
  %27 = icmp slt i32 %26, 0
  %28 = icmp ne i32 %26, -19
  %29 = and i1 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load ptr, ptr %25, align 4
  %32 = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.4, i32 noundef %26) #15
  br label %33

33:                                               ; preds = %30, %22, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %18) #14
  %34 = add nuw nsw i32 %15, 1
  %35 = icmp eq i32 %34, 7
  br i1 %35, label %36, label %14

36:                                               ; preds = %33, %9
  %37 = getelementptr i8, ptr %0, i32 96
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %62, label %40

40:                                               ; preds = %59, %36
  %41 = phi i32 [ %60, %59 ], [ 0, %36 ]
  %42 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %38, i32 0, i32 1, i32 %41
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #14
  %45 = getelementptr inbounds %struct.urb, ptr %43, i32 0, i32 3
  %46 = load volatile i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %40
  %49 = load ptr, ptr %38, align 4
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.urb, ptr %43, i32 0, i32 8
  store ptr %50, ptr %51, align 4
  %52 = tail call i32 @usb_submit_urb(ptr noundef %43, i32 noundef 2592) #14
  %53 = icmp slt i32 %52, 0
  %54 = icmp ne i32 %52, -19
  %55 = and i1 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load ptr, ptr %51, align 4
  %58 = getelementptr inbounds %struct.usb_device, ptr %57, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.4, i32 noundef %52) #15
  br label %59

59:                                               ; preds = %56, %48, %40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %44) #14
  %60 = add nuw nsw i32 %41, 1
  %61 = icmp eq i32 %60, 7
  br i1 %61, label %62, label %40

62:                                               ; preds = %59, %36
  store i8 1, ptr %2, align 1
  br label %63

63:                                               ; preds = %62, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usbmidi_suspend(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 56
  tail call void @mutex_lock(ptr noundef %2) #14
  tail call void @snd_usbmidi_input_stop(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usbmidi_resume(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 56
  tail call void @mutex_lock(ptr noundef %2) #14
  tail call void @snd_usbmidi_input_start(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__snd_usbmidi_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.snd_usb_midi_endpoint_info, align 2
  %7 = alloca ptr, align 4
  %8 = alloca [2 x %struct.snd_usb_midi_endpoint_info], align 2
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %8) #14
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 144) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %593, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 -128
  store ptr %15, ptr %10, align 8
  %16 = getelementptr inbounds %struct.snd_usb_midi, ptr %10, i32 0, i32 1
  store ptr %0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.snd_usb_midi, ptr %10, i32 0, i32 2
  store ptr %1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.snd_usb_midi, ptr %10, i32 0, i32 3
  store ptr %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.snd_usb_midi, ptr %10, i32 0, i32 5
  store ptr @snd_usbmidi_standard_ops, ptr %19, align 4
  %20 = getelementptr inbounds %struct.snd_usb_midi, ptr %10, i32 0, i32 8
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.snd_usb_midi, ptr %10, i32 0, i32 9
  tail call void @__init_rwsem(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef nonnull @__snd_usbmidi_create.__key) #14
  %22 = getelementptr inbounds %struct.snd_usb_midi, ptr %10, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %22, ptr noundef nonnull @.str.2, ptr noundef nonnull @__snd_usbmidi_create.__key.1) #14
  %23 = icmp eq i32 %4, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %12
  %25 = load ptr, ptr %10, align 8
  %26 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 16, i32 7
  %27 = load i16, ptr %26, align 8
  %28 = zext i16 %27 to i32
  %29 = shl nuw i32 %28, 16
  %30 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 16, i32 8
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = or i32 %29, %32
  br label %34

34:                                               ; preds = %24, %12
  %35 = phi i32 [ %4, %12 ], [ %33, %24 ]
  %36 = getelementptr inbounds %struct.snd_usb_midi, ptr %10, i32 0, i32 11
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.snd_usb_midi, ptr %10, i32 0, i32 7
  tail call void @init_timer_key(ptr noundef %37, ptr noundef nonnull @snd_usbmidi_error_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(144) %8, i8 0, i32 144, i1 false)
  %38 = icmp eq ptr %3, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %3, i32 0, i32 3
  %41 = load i16, ptr %40, align 2
  switch i16 %41, label %325 [
    i16 3, label %42
    i16 13, label %47
    i16 4, label %48
    i16 5, label %52
    i16 6, label %104
    i16 7, label %165
    i16 8, label %168
    i16 9, label %192
    i16 10, label %222
    i16 11, label %226
    i16 12, label %250
    i16 14, label %270
    i16 15, label %301
  ]

42:                                               ; preds = %39, %34
  %43 = call fastcc i32 @snd_usbmidi_get_ms_info(ptr noundef nonnull %10, ptr noundef nonnull %8)
  %44 = load i32, ptr %36, align 4
  %45 = icmp eq i32 %44, 123928912
  br i1 %45, label %46, label %329

46:                                               ; preds = %42
  store ptr @snd_usbmidi_maudio_broken_running_status_ops, ptr %19, align 4
  br label %329

47:                                               ; preds = %39
  store ptr @snd_usbmidi_122l_ops, ptr %19, align 4
  br label %48

48:                                               ; preds = %47, %39
  %49 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %3, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(72) %8, ptr noundef align 1 dereferenceable(72) %50, i32 72, i1 false)
  %51 = call fastcc i32 @snd_usbmidi_detect_endpoints(ptr noundef nonnull %10, ptr noundef nonnull %8, i32 noundef 1)
  br label %329

52:                                               ; preds = %39
  %53 = load ptr, ptr %17, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %591, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %53, align 8
  %57 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %56, i32 0, i32 4
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %591, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.usb_host_interface, ptr %56, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.usb_host_interface, ptr %56, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr i8, ptr %62, i32 %64
  %66 = icmp ult ptr %62, %65
  br i1 %66, label %67, label %96

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 4
  %69 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 5
  br label %70

70:                                               ; preds = %88, %67
  %71 = phi ptr [ %62, %67 ], [ %91, %88 ]
  %72 = load i8, ptr %71, align 1
  %73 = icmp ugt i8 %72, 1
  br i1 %73, label %74, label %93

74:                                               ; preds = %70
  %75 = getelementptr i8, ptr %71, i32 1
  %76 = load i8, ptr %75, align 1
  %77 = icmp eq i8 %76, 36
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = getelementptr i8, ptr %71, i32 2
  %80 = load i8, ptr %79, align 1
  switch i8 %80, label %88 [
    i8 2, label %82
    i8 3, label %81
  ]

81:                                               ; preds = %78
  br label %82

82:                                               ; preds = %81, %78
  %83 = phi ptr [ %68, %81 ], [ %69, %78 ]
  %84 = load i16, ptr %83, align 2
  %85 = shl i16 %84, 1
  %86 = or i16 %85, 1
  store i16 %86, ptr %83, align 2
  %87 = load i8, ptr %71, align 1
  br label %88

88:                                               ; preds = %82, %78, %74
  %89 = phi i8 [ %87, %82 ], [ %72, %78 ], [ %72, %74 ]
  %90 = zext i8 %89 to i32
  %91 = getelementptr i8, ptr %71, i32 %90
  %92 = icmp ult ptr %91, %65
  br i1 %92, label %70, label %93

93:                                               ; preds = %88, %70
  %94 = load i16, ptr %69, align 2
  %95 = load i16, ptr %68, align 2
  br label %96

96:                                               ; preds = %93, %60
  %97 = phi i16 [ %95, %93 ], [ 0, %60 ]
  %98 = phi i16 [ %94, %93 ], [ 0, %60 ]
  %99 = icmp eq i16 %98, 0
  %100 = icmp eq i16 %97, 0
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %591, label %102

102:                                              ; preds = %96
  %103 = call fastcc i32 @snd_usbmidi_detect_endpoints(ptr noundef %10, ptr noundef nonnull %8, i32 noundef 1) #14
  br label %329

104:                                              ; preds = %39
  %105 = load ptr, ptr %17, align 8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %591, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %105, align 8
  %109 = getelementptr inbounds %struct.usb_host_interface, ptr %108, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.usb_host_interface, ptr %108, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr i8, ptr %110, i32 %112
  %114 = icmp ult ptr %110, %113
  br i1 %114, label %115, label %591

115:                                              ; preds = %161, %107
  %116 = phi ptr [ %163, %161 ], [ %110, %107 ]
  %117 = load i8, ptr %116, align 1
  %118 = icmp ugt i8 %117, 1
  br i1 %118, label %119, label %591

119:                                              ; preds = %115
  %120 = icmp ugt i8 %117, 5
  br i1 %120, label %121, label %161

121:                                              ; preds = %119
  %122 = getelementptr i8, ptr %116, i32 1
  %123 = load i8, ptr %122, align 1
  %124 = icmp eq i8 %123, 36
  br i1 %124, label %125, label %161

125:                                              ; preds = %121
  %126 = getelementptr i8, ptr %116, i32 2
  %127 = load i8, ptr %126, align 1
  %128 = icmp eq i8 %127, -15
  br i1 %128, label %129, label %155

129:                                              ; preds = %125
  %130 = getelementptr i8, ptr %116, i32 3
  %131 = load i8, ptr %130, align 1
  %132 = icmp eq i8 %131, 2
  br i1 %132, label %133, label %161

133:                                              ; preds = %129
  %134 = getelementptr i8, ptr %116, i32 4
  %135 = load i8, ptr %134, align 1
  %136 = icmp ugt i8 %135, 16
  br i1 %136, label %161, label %137

137:                                              ; preds = %133
  %138 = getelementptr i8, ptr %116, i32 5
  %139 = load i8, ptr %138, align 1
  %140 = icmp ugt i8 %139, 16
  br i1 %140, label %161, label %141

141:                                              ; preds = %137
  %142 = getelementptr i8, ptr %116, i32 5
  %143 = zext i8 %135 to i32
  %144 = shl nsw i32 -1, %143
  %145 = trunc i32 %144 to i16
  %146 = xor i16 %145, -1
  %147 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 5
  store i16 %146, ptr %147, align 2
  %148 = load i8, ptr %142, align 1
  %149 = zext i8 %148 to i32
  %150 = shl nsw i32 -1, %149
  %151 = trunc i32 %150 to i16
  %152 = xor i16 %151, -1
  %153 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 4
  store i16 %152, ptr %153, align 2
  %154 = call fastcc i32 @snd_usbmidi_detect_endpoints(ptr noundef %10, ptr noundef nonnull %8, i32 noundef 1) #14
  br label %329

155:                                              ; preds = %125
  %156 = icmp ugt i8 %117, 6
  %157 = icmp eq i8 %127, 1
  %158 = select i1 %156, i1 %157, i1 false
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = call fastcc i32 @snd_usbmidi_get_ms_info(ptr noundef %10, ptr noundef nonnull %8) #14
  br label %329

161:                                              ; preds = %155, %137, %133, %129, %121, %119
  %162 = zext i8 %117 to i32
  %163 = getelementptr i8, ptr %116, i32 %162
  %164 = icmp ult ptr %163, %113
  br i1 %164, label %115, label %591

165:                                              ; preds = %39
  store ptr @snd_usbmidi_midiman_ops, ptr %19, align 4
  %166 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %3, i32 0, i32 4
  %167 = load ptr, ptr %166, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(72) %8, ptr noundef align 1 dereferenceable(72) %167, i32 72, i1 false)
  br label %332

168:                                              ; preds = %39
  store ptr @snd_usbmidi_novation_ops, ptr %19, align 4
  %169 = call fastcc i32 @snd_usbmidi_detect_endpoints(ptr noundef nonnull %10, ptr noundef nonnull %8, i32 noundef 2) #14
  %170 = load i8, ptr %8, align 2
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 4
  store i16 1, ptr %173, align 2
  br label %174

174:                                              ; preds = %172, %168
  %175 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 2
  %176 = load i8, ptr %175, align 2
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 5
  store i16 1, ptr %179, align 2
  br label %180

180:                                              ; preds = %178, %174
  %181 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1
  %182 = load i8, ptr %181, align 2
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1, i32 4
  store i16 1, ptr %185, align 2
  br label %186

186:                                              ; preds = %184, %180
  %187 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1, i32 2
  %188 = load i8, ptr %187, align 2
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %329, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1, i32 5
  store i16 1, ptr %191, align 2
  br label %329

192:                                              ; preds = %39
  store ptr @snd_usbmidi_raw_ops, ptr %19, align 4
  %193 = load i32, ptr %36, align 4
  %194 = icmp eq i32 %193, 134021121
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load ptr, ptr %10, align 8
  %197 = tail call i32 @usb_set_interface(ptr noundef %196, i32 noundef 0, i32 noundef 0) #14
  br label %198

198:                                              ; preds = %195, %192
  %199 = call fastcc i32 @snd_usbmidi_detect_endpoints(ptr noundef nonnull %10, ptr noundef nonnull %8, i32 noundef 2) #14
  %200 = load i8, ptr %8, align 2
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 4
  store i16 1, ptr %203, align 2
  br label %204

204:                                              ; preds = %202, %198
  %205 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 2
  %206 = load i8, ptr %205, align 2
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 5
  store i16 1, ptr %209, align 2
  br label %210

210:                                              ; preds = %208, %204
  %211 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1
  %212 = load i8, ptr %211, align 2
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1, i32 4
  store i16 1, ptr %215, align 2
  br label %216

216:                                              ; preds = %214, %210
  %217 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1, i32 2
  %218 = load i8, ptr %217, align 2
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %329, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1, i32 5
  store i16 1, ptr %221, align 2
  br label %329

222:                                              ; preds = %39
  store ptr @snd_usbmidi_emagic_ops, ptr %19, align 4
  %223 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %3, i32 0, i32 4
  %224 = load ptr, ptr %223, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(72) %8, ptr noundef align 1 dereferenceable(72) %224, i32 72, i1 false)
  %225 = call fastcc i32 @snd_usbmidi_detect_endpoints(ptr noundef nonnull %10, ptr noundef nonnull %8, i32 noundef 1)
  br label %329

226:                                              ; preds = %39
  store ptr @snd_usbmidi_cme_ops, ptr %19, align 4
  %227 = call fastcc i32 @snd_usbmidi_detect_endpoints(ptr noundef nonnull %10, ptr noundef nonnull %8, i32 noundef 2) #14
  %228 = load i8, ptr %8, align 2
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 4
  store i16 1, ptr %231, align 2
  br label %232

232:                                              ; preds = %230, %226
  %233 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 2
  %234 = load i8, ptr %233, align 2
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 5
  store i16 1, ptr %237, align 2
  br label %238

238:                                              ; preds = %236, %232
  %239 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1
  %240 = load i8, ptr %239, align 2
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1, i32 4
  store i16 1, ptr %243, align 2
  br label %244

244:                                              ; preds = %242, %238
  %245 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1, i32 2
  %246 = load i8, ptr %245, align 2
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %329, label %248

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1, i32 5
  store i16 1, ptr %249, align 2
  br label %329

250:                                              ; preds = %39
  store ptr @snd_usbmidi_akai_ops, ptr %19, align 4
  %251 = call fastcc i32 @snd_usbmidi_detect_endpoints(ptr noundef nonnull %10, ptr noundef nonnull %8, i32 noundef 2) #14
  %252 = load i8, ptr %8, align 2
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %256, label %254

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 4
  store i16 1, ptr %255, align 2
  br label %256

256:                                              ; preds = %254, %250
  %257 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 2
  %258 = load i8, ptr %257, align 2
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %262, label %260

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 5
  store i16 1, ptr %261, align 2
  br label %262

262:                                              ; preds = %260, %256
  %263 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1, i32 2
  %264 = load i8, ptr %263, align 2
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %268, label %266

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1, i32 5
  store i16 1, ptr %267, align 2
  br label %268

268:                                              ; preds = %266, %262
  %269 = getelementptr inbounds [2 x %struct.snd_usb_midi_endpoint_info], ptr %8, i32 0, i32 1, i32 4
  store i16 0, ptr %269, align 2
  br label %329

270:                                              ; preds = %39
  store ptr @snd_usbmidi_ftdi_ops, ptr %19, align 4
  %271 = load ptr, ptr %10, align 8
  %272 = load i32, ptr %271, align 8
  %273 = shl i32 %272, 8
  %274 = or i32 %273, -2147483648
  %275 = tail call i32 @usb_control_msg(ptr noundef %271, i32 noundef %274, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 96, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %591, label %277

277:                                              ; preds = %270
  %278 = call fastcc i32 @snd_usbmidi_detect_endpoints(ptr noundef nonnull %10, ptr noundef nonnull %8, i32 noundef 2) #14
  %279 = load i8, ptr %8, align 2
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %283, label %281

281:                                              ; preds = %277
  %282 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 4
  store i16 1, ptr %282, align 2
  br label %283

283:                                              ; preds = %281, %277
  %284 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 2
  %285 = load i8, ptr %284, align 2
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %289, label %287

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 5
  store i16 1, ptr %288, align 2
  br label %289

289:                                              ; preds = %287, %283
  %290 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1
  %291 = load i8, ptr %290, align 2
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %295, label %293

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1, i32 4
  store i16 1, ptr %294, align 2
  br label %295

295:                                              ; preds = %293, %289
  %296 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1, i32 2
  %297 = load i8, ptr %296, align 2
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %329, label %299

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1, i32 5
  store i16 1, ptr %300, align 2
  br label %329

301:                                              ; preds = %39
  store ptr @snd_usbmidi_ch345_broken_sysex_ops, ptr %19, align 4
  %302 = call fastcc i32 @snd_usbmidi_detect_endpoints(ptr noundef nonnull %10, ptr noundef nonnull %8, i32 noundef 2) #14
  %303 = load i8, ptr %8, align 2
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %307, label %305

305:                                              ; preds = %301
  %306 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 4
  store i16 1, ptr %306, align 2
  br label %307

307:                                              ; preds = %305, %301
  %308 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 2
  %309 = load i8, ptr %308, align 2
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %313, label %311

311:                                              ; preds = %307
  %312 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 5
  store i16 1, ptr %312, align 2
  br label %313

313:                                              ; preds = %311, %307
  %314 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1
  %315 = load i8, ptr %314, align 2
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %319, label %317

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1, i32 4
  store i16 1, ptr %318, align 2
  br label %319

319:                                              ; preds = %317, %313
  %320 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1, i32 2
  %321 = load i8, ptr %320, align 2
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %329, label %323

323:                                              ; preds = %319
  %324 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1, i32 5
  store i16 1, ptr %324, align 2
  br label %329

325:                                              ; preds = %39
  %326 = load ptr, ptr %10, align 8
  %327 = getelementptr inbounds %struct.usb_device, ptr %326, i32 0, i32 15
  %328 = zext i16 %41 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %327, ptr noundef nonnull @.str.3, i32 noundef %328) #15
  br label %591

329:                                              ; preds = %323, %319, %299, %295, %268, %248, %244, %222, %220, %216, %190, %186, %159, %141, %102, %48, %46, %42
  %330 = phi i32 [ %251, %268 ], [ %225, %222 ], [ %51, %48 ], [ %43, %46 ], [ %43, %42 ], [ %103, %102 ], [ %154, %141 ], [ %160, %159 ], [ %169, %186 ], [ %169, %190 ], [ %199, %216 ], [ %199, %220 ], [ %227, %244 ], [ %227, %248 ], [ %278, %295 ], [ %278, %299 ], [ %302, %319 ], [ %302, %323 ]
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %591, label %332

332:                                              ; preds = %329, %165
  %333 = getelementptr inbounds [2 x %struct.snd_usb_midi_endpoint_info], ptr %8, i32 0, i32 0, i32 4
  %334 = load i16, ptr %333, align 2
  %335 = zext i16 %334 to i32
  %336 = tail call i32 @__sw_hweight16(i32 noundef %335) #14
  %337 = getelementptr inbounds [2 x %struct.snd_usb_midi_endpoint_info], ptr %8, i32 0, i32 0, i32 5
  %338 = load i16, ptr %337, align 2
  %339 = zext i16 %338 to i32
  %340 = tail call i32 @__sw_hweight16(i32 noundef %339) #14
  %341 = getelementptr inbounds [2 x %struct.snd_usb_midi_endpoint_info], ptr %8, i32 0, i32 1, i32 4
  %342 = load i16, ptr %341, align 2
  %343 = zext i16 %342 to i32
  %344 = tail call i32 @__sw_hweight16(i32 noundef %343) #14
  %345 = add i32 %344, %336
  %346 = getelementptr inbounds [2 x %struct.snd_usb_midi_endpoint_info], ptr %8, i32 0, i32 1, i32 5
  %347 = load i16, ptr %346, align 2
  %348 = zext i16 %347 to i32
  %349 = tail call i32 @__sw_hweight16(i32 noundef %348) #14
  %350 = add i32 %349, %340
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store ptr null, ptr %7, align 4, !annotation !13
  %351 = load ptr, ptr %16, align 4
  %352 = getelementptr inbounds %struct.snd_usb_midi, ptr %10, i32 0, i32 12
  %353 = load i32, ptr %352, align 8
  %354 = add i32 %353, 1
  store i32 %354, ptr %352, align 8
  %355 = call i32 @snd_rawmidi_new(ptr noundef %351, ptr noundef nonnull @.str.10, i32 noundef %353, i32 noundef %345, i32 noundef %350, ptr noundef nonnull %7) #14
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %332
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  br label %591

358:                                              ; preds = %332
  %359 = load ptr, ptr %7, align 4
  %360 = getelementptr inbounds %struct.snd_rawmidi, ptr %359, i32 0, i32 5
  %361 = load ptr, ptr %16, align 4
  %362 = getelementptr inbounds %struct.snd_card, ptr %361, i32 0, i32 3
  %363 = call ptr @strcpy(ptr noundef %360, ptr noundef %362) #14
  %364 = getelementptr inbounds %struct.snd_rawmidi, ptr %359, i32 0, i32 3
  store i32 7, ptr %364, align 8
  %365 = getelementptr inbounds %struct.snd_rawmidi, ptr %359, i32 0, i32 6
  store ptr @snd_usbmidi_ops, ptr %365, align 4
  %366 = getelementptr inbounds %struct.snd_rawmidi, ptr %359, i32 0, i32 8
  store ptr %10, ptr %366, align 8
  %367 = getelementptr inbounds %struct.snd_rawmidi, ptr %359, i32 0, i32 9
  store ptr @snd_usbmidi_rawmidi_free, ptr %367, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %359, i32 noundef 0, ptr noundef nonnull @snd_usbmidi_output_ops) #14
  %368 = load ptr, ptr %7, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %368, i32 noundef 1, ptr noundef nonnull @snd_usbmidi_input_ops) #14
  %369 = load ptr, ptr %7, align 4
  %370 = getelementptr inbounds %struct.snd_usb_midi, ptr %10, i32 0, i32 4
  store ptr %369, ptr %370, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  br i1 %38, label %477, label %371

371:                                              ; preds = %358
  %372 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %3, i32 0, i32 3
  %373 = load i16, ptr %372, align 2
  %374 = icmp eq i16 %373, 7
  br i1 %374, label %375, label %477

375:                                              ; preds = %371
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #14
  %376 = getelementptr inbounds i8, ptr %6, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(72) %376, i8 0, i32 70, i1 false) #14, !annotation !13
  %377 = load ptr, ptr %17, align 8
  %378 = icmp eq ptr %377, null
  br i1 %378, label %582, label %379

379:                                              ; preds = %375
  %380 = load ptr, ptr %377, align 8
  %381 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %380, i32 0, i32 4
  %382 = load i8, ptr %381, align 1
  %383 = zext i8 %382 to i32
  %384 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 4
  %385 = load i16, ptr %384, align 2
  %386 = icmp ugt i16 %385, 1
  %387 = select i1 %386, i32 5, i32 3
  %388 = icmp ugt i32 %387, %383
  br i1 %388, label %582, label %389

389:                                              ; preds = %379
  %390 = getelementptr inbounds %struct.usb_host_interface, ptr %380, i32 0, i32 3
  %391 = load ptr, ptr %390, align 4
  %392 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %391, i32 0, i32 2
  %393 = load i8, ptr %392, align 1
  %394 = icmp sgt i8 %393, -1
  br i1 %394, label %582, label %395

395:                                              ; preds = %389
  %396 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %391, i32 0, i32 3
  %397 = load i8, ptr %396, align 1
  %398 = and i8 %397, 3
  %399 = icmp eq i8 %398, 3
  br i1 %399, label %400, label %582

400:                                              ; preds = %395
  %401 = getelementptr %struct.usb_host_endpoint, ptr %391, i32 2, i32 0, i32 2
  %402 = load i8, ptr %401, align 1
  %403 = icmp slt i8 %402, 0
  br i1 %403, label %582, label %404

404:                                              ; preds = %400
  %405 = getelementptr %struct.usb_host_endpoint, ptr %391, i32 2, i32 0, i32 3
  %406 = load i8, ptr %405, align 1
  %407 = and i8 %406, 3
  %408 = icmp eq i8 %407, 2
  br i1 %408, label %409, label %582

409:                                              ; preds = %404
  br i1 %386, label %410, label %419

410:                                              ; preds = %409
  %411 = getelementptr %struct.usb_host_endpoint, ptr %391, i32 4, i32 0, i32 2
  %412 = load i8, ptr %411, align 1
  %413 = icmp slt i8 %412, 0
  br i1 %413, label %582, label %414

414:                                              ; preds = %410
  %415 = getelementptr %struct.usb_host_endpoint, ptr %391, i32 4, i32 0, i32 3
  %416 = load i8, ptr %415, align 1
  %417 = and i8 %416, 3
  %418 = icmp eq i8 %417, 2
  br i1 %418, label %419, label %582

419:                                              ; preds = %414, %409
  %420 = and i8 %402, 15
  store i8 %420, ptr %6, align 2
  %421 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %6, i32 0, i32 1
  store i8 0, ptr %421, align 1
  %422 = and i16 %385, 21845
  %423 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %6, i32 0, i32 4
  store i16 %422, ptr %423, align 2
  %424 = getelementptr inbounds %struct.snd_usb_midi, ptr %10, i32 0, i32 13
  %425 = call fastcc i32 @snd_usbmidi_out_endpoint_create(ptr noundef %10, ptr noundef nonnull %6, ptr noundef %424) #14
  %426 = icmp slt i32 %425, 0
  br i1 %426, label %582, label %427

427:                                              ; preds = %419
  %428 = load ptr, ptr %390, align 4
  %429 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %428, i32 0, i32 2
  %430 = load i8, ptr %429, align 2
  %431 = and i8 %430, 15
  store i8 %431, ptr %376, align 2
  %432 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %428, i32 0, i32 5
  %433 = load i8, ptr %432, align 2
  %434 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %6, i32 0, i32 3
  store i8 %433, ptr %434, align 1
  %435 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 5
  %436 = load i16, ptr %435, align 2
  %437 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %6, i32 0, i32 5
  store i16 %436, ptr %437, align 2
  %438 = call fastcc i32 @snd_usbmidi_in_endpoint_create(ptr noundef %10, ptr noundef nonnull %6, ptr noundef %424) #14
  %439 = icmp slt i32 %438, 0
  br i1 %439, label %582, label %440

440:                                              ; preds = %427
  %441 = load i16, ptr %384, align 2
  %442 = icmp ugt i16 %441, 1
  br i1 %442, label %443, label %452

443:                                              ; preds = %440
  %444 = load ptr, ptr %390, align 4
  %445 = getelementptr %struct.usb_host_endpoint, ptr %444, i32 4, i32 0, i32 2
  %446 = load i8, ptr %445, align 2
  %447 = and i8 %446, 15
  store i8 %447, ptr %6, align 2
  %448 = and i16 %441, -21846
  store i16 %448, ptr %423, align 2
  %449 = getelementptr %struct.snd_usb_midi, ptr %10, i32 0, i32 13, i32 1
  %450 = call fastcc i32 @snd_usbmidi_out_endpoint_create(ptr noundef %10, ptr noundef nonnull %6, ptr noundef %449) #14
  %451 = icmp slt i32 %450, 0
  br i1 %451, label %582, label %452

452:                                              ; preds = %443, %440
  %453 = getelementptr inbounds %struct.snd_usb_midi, ptr %10, i32 0, i32 13, i32 0, i32 1
  br label %454

454:                                              ; preds = %474, %452
  %455 = phi i32 [ 0, %452 ], [ %475, %474 ]
  %456 = load i16, ptr %384, align 2
  %457 = zext i16 %456 to i32
  %458 = shl nuw nsw i32 1, %455
  %459 = and i32 %458, %457
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %466, label %461

461:                                              ; preds = %454
  %462 = and i32 %455, 1
  %463 = getelementptr %struct.snd_usb_midi, ptr %10, i32 0, i32 13, i32 %462
  %464 = load ptr, ptr %463, align 4
  %465 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %464, i32 0, i32 8, i32 %455, i32 1
  call fastcc void @snd_usbmidi_init_substream(ptr noundef %10, i32 noundef 0, i32 noundef %455, i32 noundef -1, ptr noundef %465) #14
  br label %466

466:                                              ; preds = %461, %454
  %467 = load i16, ptr %435, align 2
  %468 = zext i16 %467 to i32
  %469 = and i32 %458, %468
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %474, label %471

471:                                              ; preds = %466
  %472 = load ptr, ptr %453, align 8
  %473 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %472, i32 0, i32 2, i32 %455
  call fastcc void @snd_usbmidi_init_substream(ptr noundef %10, i32 noundef 1, i32 noundef %455, i32 noundef -1, ptr noundef %473) #14
  br label %474

474:                                              ; preds = %471, %466
  %475 = add nuw nsw i32 %455, 1
  %476 = icmp eq i32 %475, 16
  br i1 %476, label %584, label %454

477:                                              ; preds = %371, %358
  %478 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 4
  %479 = load i16, ptr %478, align 2
  %480 = icmp eq i16 %479, 0
  br i1 %480, label %485, label %481

481:                                              ; preds = %477
  %482 = getelementptr %struct.snd_usb_midi, ptr %10, i32 0, i32 13, i32 0
  %483 = call fastcc i32 @snd_usbmidi_out_endpoint_create(ptr noundef %10, ptr noundef nonnull %8, ptr noundef %482) #14
  %484 = icmp slt i32 %483, 0
  br i1 %484, label %593, label %485

485:                                              ; preds = %481, %477
  %486 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 5
  %487 = load i16, ptr %486, align 2
  %488 = icmp eq i16 %487, 0
  br i1 %488, label %493, label %489

489:                                              ; preds = %485
  %490 = getelementptr %struct.snd_usb_midi, ptr %10, i32 0, i32 13, i32 0
  %491 = call fastcc i32 @snd_usbmidi_in_endpoint_create(ptr noundef %10, ptr noundef nonnull %8, ptr noundef %490) #14
  %492 = icmp slt i32 %491, 0
  br i1 %492, label %593, label %493

493:                                              ; preds = %489, %485
  %494 = getelementptr %struct.snd_usb_midi, ptr %10, i32 0, i32 13, i32 0
  %495 = getelementptr %struct.snd_usb_midi, ptr %10, i32 0, i32 13, i32 0, i32 1
  br label %496

496:                                              ; preds = %525, %493
  %497 = phi i32 [ 0, %493 ], [ %526, %525 ]
  %498 = phi i32 [ 0, %493 ], [ %513, %525 ]
  %499 = phi i32 [ 0, %493 ], [ %527, %525 ]
  %500 = load i16, ptr %478, align 2
  %501 = zext i16 %500 to i32
  %502 = shl nuw nsw i32 1, %499
  %503 = and i32 %502, %501
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %512, label %505

505:                                              ; preds = %496
  %506 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 7, i32 %499
  %507 = load i16, ptr %506, align 2
  %508 = sext i16 %507 to i32
  %509 = load ptr, ptr %494, align 4
  %510 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %509, i32 0, i32 8, i32 %499, i32 1
  call fastcc void @snd_usbmidi_init_substream(ptr noundef %10, i32 noundef 0, i32 noundef %498, i32 noundef %508, ptr noundef %510) #14
  %511 = add i32 %498, 1
  br label %512

512:                                              ; preds = %505, %496
  %513 = phi i32 [ %511, %505 ], [ %498, %496 ]
  %514 = load i16, ptr %486, align 2
  %515 = zext i16 %514 to i32
  %516 = and i32 %502, %515
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %525, label %518

518:                                              ; preds = %512
  %519 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %8, i32 0, i32 6, i32 %499
  %520 = load i16, ptr %519, align 2
  %521 = sext i16 %520 to i32
  %522 = load ptr, ptr %495, align 8
  %523 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %522, i32 0, i32 2, i32 %499
  call fastcc void @snd_usbmidi_init_substream(ptr noundef %10, i32 noundef 1, i32 noundef %497, i32 noundef %521, ptr noundef %523) #14
  %524 = add i32 %497, 1
  br label %525

525:                                              ; preds = %518, %512
  %526 = phi i32 [ %524, %518 ], [ %497, %512 ]
  %527 = add nuw nsw i32 %499, 1
  %528 = icmp eq i32 %527, 16
  br i1 %528, label %529, label %496

529:                                              ; preds = %525
  %530 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1
  %531 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1, i32 4
  %532 = load i16, ptr %531, align 2
  %533 = icmp eq i16 %532, 0
  br i1 %533, label %538, label %534

534:                                              ; preds = %529
  %535 = getelementptr %struct.snd_usb_midi, ptr %10, i32 0, i32 13, i32 1
  %536 = call fastcc i32 @snd_usbmidi_out_endpoint_create(ptr noundef %10, ptr noundef %530, ptr noundef %535) #14
  %537 = icmp slt i32 %536, 0
  br i1 %537, label %593, label %538

538:                                              ; preds = %534, %529
  %539 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1, i32 5
  %540 = load i16, ptr %539, align 2
  %541 = icmp eq i16 %540, 0
  br i1 %541, label %546, label %542

542:                                              ; preds = %538
  %543 = getelementptr %struct.snd_usb_midi, ptr %10, i32 0, i32 13, i32 1
  %544 = call fastcc i32 @snd_usbmidi_in_endpoint_create(ptr noundef %10, ptr noundef %530, ptr noundef %543) #14
  %545 = icmp slt i32 %544, 0
  br i1 %545, label %593, label %546

546:                                              ; preds = %542, %538
  %547 = getelementptr %struct.snd_usb_midi, ptr %10, i32 0, i32 13, i32 1
  %548 = getelementptr %struct.snd_usb_midi, ptr %10, i32 0, i32 13, i32 1, i32 1
  br label %549

549:                                              ; preds = %578, %546
  %550 = phi i32 [ %526, %546 ], [ %579, %578 ]
  %551 = phi i32 [ %513, %546 ], [ %566, %578 ]
  %552 = phi i32 [ 0, %546 ], [ %580, %578 ]
  %553 = load i16, ptr %531, align 2
  %554 = zext i16 %553 to i32
  %555 = shl nuw nsw i32 1, %552
  %556 = and i32 %555, %554
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %565, label %558

558:                                              ; preds = %549
  %559 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1, i32 7, i32 %552
  %560 = load i16, ptr %559, align 2
  %561 = sext i16 %560 to i32
  %562 = load ptr, ptr %547, align 4
  %563 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %562, i32 0, i32 8, i32 %552, i32 1
  call fastcc void @snd_usbmidi_init_substream(ptr noundef %10, i32 noundef 0, i32 noundef %551, i32 noundef %561, ptr noundef %563) #14
  %564 = add i32 %551, 1
  br label %565

565:                                              ; preds = %558, %549
  %566 = phi i32 [ %564, %558 ], [ %551, %549 ]
  %567 = load i16, ptr %539, align 2
  %568 = zext i16 %567 to i32
  %569 = and i32 %555, %568
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %578, label %571

571:                                              ; preds = %565
  %572 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %8, i32 1, i32 6, i32 %552
  %573 = load i16, ptr %572, align 2
  %574 = sext i16 %573 to i32
  %575 = load ptr, ptr %548, align 8
  %576 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %575, i32 0, i32 2, i32 %552
  call fastcc void @snd_usbmidi_init_substream(ptr noundef %10, i32 noundef 1, i32 noundef %550, i32 noundef %574, ptr noundef %576) #14
  %577 = add i32 %550, 1
  br label %578

578:                                              ; preds = %571, %565
  %579 = phi i32 [ %577, %571 ], [ %550, %565 ]
  %580 = add nuw nsw i32 %552, 1
  %581 = icmp eq i32 %580, 16
  br i1 %581, label %585, label %549

582:                                              ; preds = %443, %427, %419, %414, %410, %404, %400, %395, %389, %379, %375
  %583 = phi i32 [ %450, %443 ], [ %438, %427 ], [ %425, %419 ], [ -6, %410 ], [ -6, %414 ], [ -6, %400 ], [ -6, %404 ], [ -6, %389 ], [ -6, %395 ], [ -2, %379 ], [ -2, %375 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #14
  br label %593

584:                                              ; preds = %474
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #14
  br label %585

585:                                              ; preds = %584, %578
  %586 = load ptr, ptr %17, align 8
  call void @usb_autopm_get_interface_no_resume(ptr noundef %586) #14
  %587 = getelementptr inbounds %struct.snd_usb_midi, ptr %10, i32 0, i32 6
  %588 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %589 = load ptr, ptr %588, align 4
  store ptr %587, ptr %588, align 4
  store ptr %2, ptr %587, align 8
  %590 = getelementptr inbounds %struct.snd_usb_midi, ptr %10, i32 0, i32 6, i32 1
  store ptr %589, ptr %590, align 4
  store volatile ptr %587, ptr %589, align 4
  br label %593

591:                                              ; preds = %357, %329, %325, %270, %161, %115, %107, %104, %96, %55, %52
  %592 = phi i32 [ %330, %329 ], [ %355, %357 ], [ -19, %107 ], [ -2, %104 ], [ -2, %55 ], [ -2, %52 ], [ %275, %270 ], [ -6, %325 ], [ -2, %96 ], [ -19, %115 ], [ -19, %161 ]
  call void @kfree(ptr noundef nonnull %10) #14
  br label %593

593:                                              ; preds = %591, %585, %582, %542, %534, %489, %481, %5
  %594 = phi i32 [ 0, %585 ], [ -12, %5 ], [ %592, %591 ], [ %583, %582 ], [ %544, %542 ], [ %536, %534 ], [ %491, %489 ], [ %483, %481 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %8) #14
  ret i32 %594
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_error_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = getelementptr i8, ptr %0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %3) #14
  %4 = getelementptr i8, ptr %0, i32 104
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 76
  %9 = getelementptr i8, ptr %0, i32 80
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %42, label %15

12:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %13 = load i16, ptr %3, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %85

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, ptr %10, i32 0, i32 6
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %42, label %19

19:                                               ; preds = %15
  store i8 0, ptr %16, align 1
  br label %20

20:                                               ; preds = %39, %19
  %21 = phi i32 [ 0, %19 ], [ %40, %39 ]
  %22 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %10, i32 0, i32 1, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 3
  %25 = load volatile i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %20
  %28 = load ptr, ptr %2, align 4
  %29 = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 8
  store ptr %28, ptr %29, align 4
  %30 = load ptr, ptr %22, align 4
  %31 = tail call i32 @usb_submit_urb(ptr noundef %30, i32 noundef 2592) #14
  %32 = icmp slt i32 %31, 0
  %33 = icmp ne i32 %31, -19
  %34 = and i1 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.4, i32 noundef %31) #15
  br label %39

39:                                               ; preds = %35, %27, %20
  %40 = add nuw nsw i32 %21, 1
  %41 = icmp eq i32 %40, 7
  br i1 %41, label %42, label %20

42:                                               ; preds = %39, %15, %7
  %43 = load ptr, ptr %8, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call fastcc void @snd_usbmidi_do_output(ptr noundef nonnull %43)
  br label %46

46:                                               ; preds = %45, %42
  %47 = getelementptr i8, ptr %0, i32 84
  %48 = getelementptr i8, ptr %0, i32 88
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %78, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, ptr %49, i32 0, i32 6
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %78, label %55

55:                                               ; preds = %51
  store i8 0, ptr %52, align 1
  br label %56

56:                                               ; preds = %75, %55
  %57 = phi i32 [ 0, %55 ], [ %76, %75 ]
  %58 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %49, i32 0, i32 1, i32 %57
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.urb, ptr %59, i32 0, i32 3
  %61 = load volatile i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %56
  %64 = load ptr, ptr %2, align 4
  %65 = getelementptr inbounds %struct.urb, ptr %59, i32 0, i32 8
  store ptr %64, ptr %65, align 4
  %66 = load ptr, ptr %58, align 4
  %67 = tail call i32 @usb_submit_urb(ptr noundef %66, i32 noundef 2592) #14
  %68 = icmp slt i32 %67, 0
  %69 = icmp ne i32 %67, -19
  %70 = and i1 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.urb, ptr %66, i32 0, i32 8
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.usb_device, ptr %73, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.4, i32 noundef %67) #15
  br label %75

75:                                               ; preds = %71, %63, %56
  %76 = add nuw nsw i32 %57, 1
  %77 = icmp eq i32 %76, 7
  br i1 %77, label %78, label %56

78:                                               ; preds = %75, %51, %46
  %79 = load ptr, ptr %47, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  tail call fastcc void @snd_usbmidi_do_output(ptr noundef nonnull %79)
  br label %82

82:                                               ; preds = %81, %78
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %83 = load i16, ptr %3, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %85

85:                                               ; preds = %82, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_usbmidi_get_ms_info(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_usb_midi, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %213, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct.usb_host_interface, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_host_interface, ptr %7, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 6
  br i1 %12, label %13, label %24

13:                                               ; preds = %6
  %14 = load i8, ptr %9, align 1
  %15 = icmp ugt i8 %14, 6
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.usb_ms_header_descriptor, ptr %9, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 36
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.usb_ms_header_descriptor, ptr %9, i32 0, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %20, %16, %13, %6
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.5) #15
  br label %27

27:                                               ; preds = %24, %20
  %28 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 4
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %213, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.usb_host_interface, ptr %7, i32 0, i32 3
  %33 = getelementptr i8, ptr %1, i32 40
  %34 = getelementptr i8, ptr %1, i32 8
  br label %35

35:                                               ; preds = %204, %31
  %36 = phi i32 [ 0, %31 ], [ %205, %204 ]
  %37 = phi i32 [ 0, %31 ], [ %206, %204 ]
  %38 = load ptr, ptr %32, align 4
  %39 = getelementptr %struct.usb_host_endpoint, ptr %38, i32 %37
  %40 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %39, i32 0, i32 3
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, 2
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %204, label %44

44:                                               ; preds = %35
  %45 = getelementptr %struct.usb_host_endpoint, ptr %38, i32 %37, i32 8
  %46 = load i32, ptr %45, align 4
  %47 = icmp sgt i32 %46, 3
  br i1 %47, label %48, label %204

48:                                               ; preds = %44
  %49 = getelementptr %struct.usb_host_endpoint, ptr %38, i32 %37, i32 7
  %50 = load ptr, ptr %49, align 4
  br label %51

51:                                               ; preds = %70, %48
  %52 = phi i32 [ %46, %48 ], [ %71, %70 ]
  %53 = phi ptr [ %50, %48 ], [ %73, %70 ]
  %54 = load i8, ptr %53, align 1
  %55 = icmp ugt i8 %54, 3
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, ptr %53, i32 0, i32 1
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 37
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, ptr %53, i32 0, i32 2
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 1
  br i1 %63, label %78, label %74

64:                                               ; preds = %51
  %65 = icmp ne i8 %54, 0
  %66 = zext i8 %54 to i32
  %67 = sub nsw i32 %52, %66
  %68 = icmp sgt i32 %67, 3
  %69 = select i1 %65, i1 %68, i1 false
  br i1 %69, label %70, label %204

70:                                               ; preds = %74, %64
  %71 = phi i32 [ %76, %74 ], [ %67, %64 ]
  %72 = phi i32 [ %75, %74 ], [ %66, %64 ]
  %73 = getelementptr i8, ptr %53, i32 %72
  br label %51

74:                                               ; preds = %60, %56
  %75 = zext i8 %54 to i32
  %76 = sub nsw i32 %52, %75
  %77 = icmp sgt i32 %76, 3
  br i1 %77, label %70, label %204

78:                                               ; preds = %60
  %79 = icmp eq ptr %53, null
  %80 = icmp ult i8 %54, 5
  %81 = select i1 %79, i1 true, i1 %80
  br i1 %81, label %204, label %82

82:                                               ; preds = %78
  %83 = zext i8 %54 to i32
  %84 = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, ptr %53, i32 0, i32 3
  %85 = load i8, ptr %84, align 1
  %86 = icmp ugt i8 %85, 16
  %87 = zext i8 %85 to i32
  %88 = add nuw nsw i32 %87, 4
  %89 = icmp ugt i32 %88, %83
  %90 = select i1 %86, i1 true, i1 %89
  br i1 %90, label %204, label %91

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %39, i32 0, i32 2
  %93 = load i8, ptr %92, align 1
  %94 = icmp slt i8 %93, 0
  br i1 %94, label %147, label %95

95:                                               ; preds = %91
  %96 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %1, i32 %36
  %97 = load i8, ptr %96, align 2
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = add i32 %36, 1
  %101 = icmp sgt i32 %100, 1
  br i1 %101, label %210, label %102

102:                                              ; preds = %99, %95
  %103 = phi i32 [ 1, %99 ], [ %36, %95 ]
  %104 = and i8 %93, 15
  %105 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %1, i32 %103
  store i8 %104, ptr %105, align 2
  %106 = load i8, ptr %40, align 1
  %107 = and i8 %106, 3
  %108 = icmp eq i8 %107, 3
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %39, i32 0, i32 5
  %111 = load i8, ptr %110, align 1
  br label %117

112:                                              ; preds = %102
  %113 = load ptr, ptr %0, align 4
  %114 = getelementptr inbounds %struct.usb_device, ptr %113, i32 0, i32 4
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %120

117:                                              ; preds = %112, %109
  %118 = phi i8 [ %111, %109 ], [ 1, %112 ]
  %119 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %1, i32 %103, i32 1
  store i8 %118, ptr %119, align 1
  br label %120

120:                                              ; preds = %117, %112
  %121 = load i8, ptr %84, align 1
  %122 = zext i8 %121 to i32
  %123 = shl nsw i32 -1, %122
  %124 = trunc i32 %123 to i16
  %125 = xor i16 %124, -1
  %126 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %1, i32 %103, i32 4
  store i16 %125, ptr %126, align 2
  %127 = load i8, ptr %84, align 1
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %131, label %137

129:                                              ; preds = %137
  %130 = icmp ult i32 %138, 15
  br i1 %130, label %131, label %204

131:                                              ; preds = %129, %120
  %132 = phi i32 [ %143, %129 ], [ 0, %120 ]
  %133 = mul i32 %103, 72
  %134 = shl nuw nsw i32 %132, 1
  %135 = add i32 %133, %134
  %136 = getelementptr i8, ptr %33, i32 %135
  br label %199

137:                                              ; preds = %137, %120
  %138 = phi i32 [ %143, %137 ], [ 0, %120 ]
  %139 = getelementptr %struct.usb_ms_endpoint_descriptor, ptr %53, i32 0, i32 4, i32 %138
  %140 = load i8, ptr %139, align 1
  %141 = zext i8 %140 to i16
  %142 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %1, i32 %103, i32 7, i32 %138
  store i16 %141, ptr %142, align 2
  %143 = add nuw nsw i32 %138, 1
  %144 = load i8, ptr %84, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp ult i32 %143, %145
  br i1 %146, label %137, label %129

147:                                              ; preds = %91
  %148 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %1, i32 %36, i32 2
  %149 = load i8, ptr %148, align 2
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %147
  %152 = add i32 %36, 1
  %153 = icmp sgt i32 %152, 1
  br i1 %153, label %210, label %154

154:                                              ; preds = %151, %147
  %155 = phi i32 [ 1, %151 ], [ %36, %147 ]
  %156 = and i8 %93, 15
  %157 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %1, i32 %155, i32 2
  store i8 %156, ptr %157, align 2
  %158 = load i8, ptr %40, align 1
  %159 = and i8 %158, 3
  %160 = icmp eq i8 %159, 3
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %39, i32 0, i32 5
  %163 = load i8, ptr %162, align 1
  br label %169

164:                                              ; preds = %154
  %165 = load ptr, ptr %0, align 4
  %166 = getelementptr inbounds %struct.usb_device, ptr %165, i32 0, i32 4
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %172

169:                                              ; preds = %164, %161
  %170 = phi i8 [ %163, %161 ], [ 1, %164 ]
  %171 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %1, i32 %155, i32 3
  store i8 %170, ptr %171, align 1
  br label %172

172:                                              ; preds = %169, %164
  %173 = load i8, ptr %84, align 1
  %174 = zext i8 %173 to i32
  %175 = shl nsw i32 -1, %174
  %176 = trunc i32 %175 to i16
  %177 = xor i16 %176, -1
  %178 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %1, i32 %155, i32 5
  store i16 %177, ptr %178, align 2
  %179 = load i8, ptr %84, align 1
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %183, label %189

181:                                              ; preds = %189
  %182 = icmp ult i32 %190, 15
  br i1 %182, label %183, label %204

183:                                              ; preds = %181, %172
  %184 = phi i32 [ %195, %181 ], [ 0, %172 ]
  %185 = mul i32 %155, 72
  %186 = shl nuw nsw i32 %184, 1
  %187 = add i32 %185, %186
  %188 = getelementptr i8, ptr %34, i32 %187
  br label %199

189:                                              ; preds = %189, %172
  %190 = phi i32 [ %195, %189 ], [ 0, %172 ]
  %191 = getelementptr %struct.usb_ms_endpoint_descriptor, ptr %53, i32 0, i32 4, i32 %190
  %192 = load i8, ptr %191, align 1
  %193 = zext i8 %192 to i16
  %194 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %1, i32 %155, i32 6, i32 %190
  store i16 %193, ptr %194, align 2
  %195 = add nuw nsw i32 %190, 1
  %196 = load i8, ptr %84, align 1
  %197 = zext i8 %196 to i32
  %198 = icmp ult i32 %195, %197
  br i1 %198, label %189, label %181

199:                                              ; preds = %183, %131
  %200 = phi i32 [ %134, %131 ], [ %186, %183 ]
  %201 = phi ptr [ %136, %131 ], [ %188, %183 ]
  %202 = phi i32 [ %103, %131 ], [ %155, %183 ]
  %203 = sub nuw nsw i32 32, %200
  call void @llvm.memset.p0.i32(ptr align 2 %201, i8 -1, i32 %203, i1 false)
  br label %204

204:                                              ; preds = %199, %181, %129, %82, %78, %74, %64, %44, %35
  %205 = phi i32 [ %36, %82 ], [ %36, %78 ], [ %36, %44 ], [ %36, %35 ], [ %155, %181 ], [ %103, %129 ], [ %202, %199 ], [ %36, %64 ], [ %36, %74 ]
  %206 = add nuw nsw i32 %37, 1
  %207 = load i8, ptr %28, align 1
  %208 = zext i8 %207 to i32
  %209 = icmp ult i32 %206, %208
  br i1 %209, label %35, label %213

210:                                              ; preds = %151, %99
  %211 = load ptr, ptr %0, align 4
  %212 = getelementptr inbounds %struct.usb_device, ptr %211, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %212, ptr noundef nonnull @.str.6) #15
  br label %213

213:                                              ; preds = %210, %204, %27, %2
  %214 = phi i32 [ -6, %2 ], [ 0, %27 ], [ 0, %210 ], [ 0, %204 ]
  ret i32 %214
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_usbmidi_detect_endpoints(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.snd_usb_midi, ptr %0, i32 0, i32 11
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -65536
  %7 = icmp eq i32 %6, 92405760
  br i1 %7, label %8, label %49

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.snd_usb_midi, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %49, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %49

16:                                               ; preds = %12
  %17 = load ptr, ptr %10, align 8
  %18 = getelementptr %struct.usb_host_interface, ptr %17, i32 1, i32 0, i32 4
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 2
  br i1 %20, label %21, label %49

21:                                               ; preds = %16
  %22 = getelementptr %struct.usb_host_interface, ptr %17, i32 1, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %23, i32 0, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, 3
  %27 = icmp eq i8 %26, 3
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = getelementptr %struct.usb_host_endpoint, ptr %23, i32 1, i32 0, i32 3
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, 3
  %32 = icmp eq i8 %31, 3
  br i1 %32, label %33, label %49

33:                                               ; preds = %28, %21
  %34 = load ptr, ptr %0, align 4
  %35 = getelementptr %struct.usb_host_interface, ptr %17, i32 1, i32 0, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr %struct.usb_host_interface, ptr %17, i32 1, i32 0, i32 3
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = tail call i32 @usb_set_interface(ptr noundef %34, i32 noundef %37, i32 noundef %40) #14
  %42 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @roland_load_ctl, ptr noundef %0) #14
  %43 = getelementptr inbounds %struct.snd_usb_midi, ptr %0, i32 0, i32 18
  store ptr %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.snd_usb_midi, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @snd_ctl_add(ptr noundef %45, ptr noundef %42) #14
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  store ptr null, ptr %43, align 4
  br label %49

49:                                               ; preds = %48, %33, %28, %16, %12, %8, %3
  %50 = load i8, ptr %1, align 2
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %133

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %1, i32 0, i32 2
  %54 = load i8, ptr %53, align 2
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %133

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.snd_usb_midi, ptr %0, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %133, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.usb_interface, ptr %58, i32 0, i32 2
  %62 = load i32, ptr %61, align 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %133, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.usb_interface, ptr %58, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %66, i32 0, i32 4
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %126, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.usb_host_interface, ptr %66, i32 0, i32 3
  br label %72

72:                                               ; preds = %119, %70
  %73 = phi i32 [ 0, %70 ], [ %121, %119 ]
  %74 = phi i32 [ 0, %70 ], [ %120, %119 ]
  %75 = phi i32 [ 0, %70 ], [ %122, %119 ]
  %76 = load ptr, ptr %71, align 4
  %77 = getelementptr %struct.usb_host_endpoint, ptr %76, i32 %75
  %78 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %77, i32 0, i32 3
  %79 = load i8, ptr %78, align 1
  %80 = and i8 %79, 2
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %119, label %82

82:                                               ; preds = %72
  %83 = icmp slt i32 %74, %2
  br i1 %83, label %84, label %100

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %77, i32 0, i32 2
  %86 = load i8, ptr %85, align 1
  %87 = icmp slt i8 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %84
  %89 = and i8 %86, 15
  %90 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %1, i32 %74
  store i8 %89, ptr %90, align 2
  %91 = load i8, ptr %78, align 1
  %92 = and i8 %91, 3
  %93 = icmp eq i8 %92, 3
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %77, i32 0, i32 5
  %96 = load i8, ptr %95, align 1
  %97 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %1, i32 %74, i32 1
  store i8 %96, ptr %97, align 1
  br label %98

98:                                               ; preds = %94, %88
  %99 = add nsw i32 %74, 1
  br label %100

100:                                              ; preds = %98, %84, %82
  %101 = phi i32 [ %99, %98 ], [ %74, %84 ], [ %74, %82 ]
  %102 = icmp slt i32 %73, %2
  br i1 %102, label %103, label %119

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %77, i32 0, i32 2
  %105 = load i8, ptr %104, align 1
  %106 = icmp sgt i8 %105, -1
  br i1 %106, label %119, label %107

107:                                              ; preds = %103
  %108 = and i8 %105, 15
  %109 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %1, i32 %73, i32 2
  store i8 %108, ptr %109, align 2
  %110 = load i8, ptr %78, align 1
  %111 = and i8 %110, 3
  %112 = icmp eq i8 %111, 3
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %77, i32 0, i32 5
  %115 = load i8, ptr %114, align 1
  %116 = getelementptr %struct.snd_usb_midi_endpoint_info, ptr %1, i32 %73, i32 3
  store i8 %115, ptr %116, align 1
  br label %117

117:                                              ; preds = %113, %107
  %118 = add nsw i32 %73, 1
  br label %119

119:                                              ; preds = %117, %103, %100, %72
  %120 = phi i32 [ %101, %117 ], [ %101, %103 ], [ %101, %100 ], [ %74, %72 ]
  %121 = phi i32 [ %118, %117 ], [ %73, %103 ], [ %73, %100 ], [ %73, %72 ]
  %122 = add nuw nsw i32 %75, 1
  %123 = load i8, ptr %67, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp ult i32 %122, %124
  br i1 %125, label %72, label %126

126:                                              ; preds = %119, %64
  %127 = phi i32 [ 0, %64 ], [ %120, %119 ]
  %128 = phi i32 [ 0, %64 ], [ %121, %119 ]
  %129 = icmp ne i32 %127, 0
  %130 = icmp ne i32 %128, 0
  %131 = select i1 %129, i1 true, i1 %130
  %132 = select i1 %131, i32 0, i32 -2
  br label %133

133:                                              ; preds = %126, %60, %56, %52, %49
  %134 = phi i32 [ %132, %126 ], [ 0, %52 ], [ 0, %49 ], [ -2, %60 ], [ -2, %56 ]
  ret i32 %134
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_get_interface_no_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_standard_input(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp sgt i32 %2, 3
  br i1 %4, label %5, label %40

5:                                                ; preds = %36, %3
  %6 = phi i32 [ %37, %36 ], [ 0, %3 ]
  %7 = getelementptr i8, ptr %1, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %5
  %11 = zext i8 %8 to i32
  %12 = lshr i32 %11, 4
  %13 = and i32 %11, 15
  %14 = getelementptr [16 x i8], ptr @snd_usbmidi_cin_length, i32 0, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %6, 1
  %18 = getelementptr i8, ptr %1, i32 %17
  %19 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 2, i32 %12
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %20, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.snd_usb_midi, ptr %25, i32 0, i32 14
  %27 = lshr i32 %24, 5
  %28 = getelementptr i32, ptr %26, i32 %27
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %24, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %22
  %35 = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %20, ptr noundef %18, i32 noundef %16) #14
  br label %36

36:                                               ; preds = %34, %22, %10, %5
  %37 = add i32 %6, 4
  %38 = or i32 %37, 3
  %39 = icmp slt i32 %38, %2
  br i1 %39, label %5, label %40

40:                                               ; preds = %36, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_standard_output(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %5 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 4
  br label %6

6:                                                ; preds = %99, %2
  %7 = phi i32 [ 0, %2 ], [ %100, %99 ]
  %8 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 8, i32 %7
  %9 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 8, i32 %7, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %99, label %12

12:                                               ; preds = %6
  %13 = load i32, ptr %4, align 4
  %14 = add i32 %13, 3
  %15 = load i32, ptr %5, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %99

17:                                               ; preds = %12
  %18 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 8, i32 %7, i32 1
  %19 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 8, i32 %7, i32 3
  %20 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 8, i32 %7, i32 4
  %21 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 8, i32 %7, i32 5
  %22 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 8, i32 %7, i32 5, i32 1
  br label %23

23:                                               ; preds = %94, %17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #14
  store i8 0, ptr %3, align 1, !annotation !13
  %24 = load ptr, ptr %18, align 4
  %25 = call i32 @snd_rawmidi_transmit(ptr noundef %24, ptr noundef nonnull %3, i32 noundef 1) #14
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 0, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #14
  br label %99

28:                                               ; preds = %23
  %29 = load i8, ptr %3, align 1
  %30 = load i8, ptr %19, align 4
  %31 = load ptr, ptr %8, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.snd_usb_midi, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.usb_protocol_ops, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp ugt i8 %29, -9
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = or i8 %30, 15
  call void %36(ptr noundef %1, i8 noundef zeroext %39, i8 noundef zeroext %29, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  br label %94

40:                                               ; preds = %28
  %41 = icmp ugt i8 %29, -17
  br i1 %41, label %42, label %61

42:                                               ; preds = %40
  switch i8 %29, label %94 [
    i8 -16, label %43
    i8 -15, label %44
    i8 -13, label %44
    i8 -14, label %45
    i8 -12, label %46
    i8 -11, label %46
    i8 -10, label %47
    i8 -9, label %49
  ]

43:                                               ; preds = %42
  store i8 -16, ptr %21, align 2
  store i8 5, ptr %20, align 1
  br label %94

44:                                               ; preds = %42, %42
  store i8 %29, ptr %21, align 2
  store i8 1, ptr %20, align 1
  br label %94

45:                                               ; preds = %42
  store i8 -14, ptr %21, align 2
  store i8 2, ptr %20, align 1
  br label %94

46:                                               ; preds = %42, %42
  store i8 0, ptr %20, align 1
  br label %94

47:                                               ; preds = %42
  %48 = or i8 %30, 5
  call void %36(ptr noundef %1, i8 noundef zeroext %48, i8 noundef zeroext -10, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  store i8 0, ptr %20, align 1
  br label %94

49:                                               ; preds = %42
  %50 = load i8, ptr %20, align 1
  switch i8 %50, label %60 [
    i8 4, label %51
    i8 5, label %53
    i8 6, label %56
  ]

51:                                               ; preds = %49
  %52 = or i8 %30, 5
  call void %36(ptr noundef %1, i8 noundef zeroext %52, i8 noundef zeroext -9, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  br label %60

53:                                               ; preds = %49
  %54 = or i8 %30, 6
  %55 = load i8, ptr %21, align 2
  call void %36(ptr noundef %1, i8 noundef zeroext %54, i8 noundef zeroext %55, i8 noundef zeroext -9, i8 noundef zeroext 0) #14
  br label %60

56:                                               ; preds = %49
  %57 = or i8 %30, 7
  %58 = load i8, ptr %21, align 2
  %59 = load i8, ptr %22, align 1
  call void %36(ptr noundef %1, i8 noundef zeroext %57, i8 noundef zeroext %58, i8 noundef zeroext %59, i8 noundef zeroext -9) #14
  br label %60

60:                                               ; preds = %56, %53, %51, %49
  store i8 0, ptr %20, align 1
  br label %94

61:                                               ; preds = %40
  %62 = icmp slt i8 %29, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %61
  store i8 %29, ptr %21, align 2
  %64 = and i8 %29, -32
  %65 = icmp eq i8 %64, -64
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i8 1, ptr %20, align 1
  br label %94

67:                                               ; preds = %63
  store i8 2, ptr %20, align 1
  br label %94

68:                                               ; preds = %61
  %69 = load i8, ptr %20, align 1
  switch i8 %69, label %94 [
    i8 1, label %70
    i8 2, label %79
    i8 3, label %80
    i8 4, label %88
    i8 5, label %89
    i8 6, label %90
  ]

70:                                               ; preds = %68
  %71 = load i8, ptr %21, align 2
  %72 = icmp ult i8 %71, -16
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = lshr i8 %71, 4
  br label %76

75:                                               ; preds = %70
  store i8 0, ptr %20, align 1
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i8 [ %74, %73 ], [ 2, %75 ]
  %78 = or i8 %77, %30
  call void %36(ptr noundef %1, i8 noundef zeroext %78, i8 noundef zeroext %71, i8 noundef zeroext %29, i8 noundef zeroext 0) #14
  br label %94

79:                                               ; preds = %68
  store i8 %29, ptr %22, align 1
  store i8 3, ptr %20, align 1
  br label %94

80:                                               ; preds = %68
  %81 = load i8, ptr %21, align 2
  %82 = icmp ult i8 %81, -16
  %83 = lshr i8 %81, 4
  %84 = select i1 %82, i8 2, i8 0
  %85 = select i1 %82, i8 %83, i8 3
  %86 = or i8 %85, %30
  store i8 %84, ptr %20, align 1
  %87 = load i8, ptr %22, align 1
  call void %36(ptr noundef %1, i8 noundef zeroext %86, i8 noundef zeroext %81, i8 noundef zeroext %87, i8 noundef zeroext %29) #14
  br label %94

88:                                               ; preds = %68
  store i8 %29, ptr %21, align 2
  store i8 5, ptr %20, align 1
  br label %94

89:                                               ; preds = %68
  store i8 %29, ptr %22, align 1
  store i8 6, ptr %20, align 1
  br label %94

90:                                               ; preds = %68
  %91 = or i8 %30, 4
  %92 = load i8, ptr %21, align 2
  %93 = load i8, ptr %22, align 1
  call void %36(ptr noundef %1, i8 noundef zeroext %91, i8 noundef zeroext %92, i8 noundef zeroext %93, i8 noundef zeroext %29) #14
  store i8 4, ptr %20, align 1
  br label %94

94:                                               ; preds = %90, %89, %88, %80, %79, %76, %68, %67, %66, %60, %47, %46, %45, %44, %43, %42, %38
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #14
  %95 = load i32, ptr %4, align 4
  %96 = add i32 %95, 3
  %97 = load i32, ptr %5, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %23, label %99

99:                                               ; preds = %94, %27, %12, %6
  %100 = add nuw nsw i32 %7, 1
  %101 = icmp eq i32 %100, 16
  br i1 %101, label %102, label %6

102:                                              ; preds = %99
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @snd_usbmidi_output_standard_packet(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #7 {
  %6 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 19
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 %9
  store i8 %1, ptr %10, align 1
  %11 = getelementptr i8, ptr %10, i32 1
  store i8 %2, ptr %11, align 1
  %12 = getelementptr i8, ptr %10, i32 2
  store i8 %3, ptr %12, align 1
  %13 = getelementptr i8, ptr %10, i32 3
  store i8 %4, ptr %13, align 1
  %14 = load i32, ptr %8, align 4
  %15 = add i32 %14, 4
  store i32 %15, ptr %8, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snd_usbmidi_do_output(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 7
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #14
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.snd_usb_midi, ptr %4, i32 0, i32 16
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %56

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %47, %8
  %14 = phi i32 [ %10, %8 ], [ %48, %47 ]
  %15 = phi i32 [ %12, %8 ], [ %49, %47 ]
  %16 = phi i32 [ %10, %8 ], [ %52, %47 ]
  %17 = shl nuw i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %13
  %21 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 1, i32 %16
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 19
  store i32 0, ptr %23, align 4
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr inbounds %struct.snd_usb_midi, ptr %24, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.usb_protocol_ops, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void %28(ptr noundef %0, ptr noundef %22) #14
  %29 = load i32, ptr %23, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %20
  %32 = load ptr, ptr %0, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 8
  store ptr %33, ptr %34, align 4
  %35 = tail call i32 @usb_submit_urb(ptr noundef %22, i32 noundef 2592) #14
  %36 = icmp slt i32 %35, 0
  %37 = icmp ne i32 %35, -19
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load ptr, ptr %34, align 4
  %41 = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.4, i32 noundef %35) #15
  br label %42

42:                                               ; preds = %39, %31
  br i1 %36, label %54, label %43

43:                                               ; preds = %42
  %44 = load i32, ptr %11, align 4
  %45 = or i32 %44, %17
  store i32 %45, ptr %11, align 4
  %46 = load i32, ptr %9, align 4
  br label %47

47:                                               ; preds = %43, %13
  %48 = phi i32 [ %46, %43 ], [ %14, %13 ]
  %49 = phi i32 [ %45, %43 ], [ %15, %13 ]
  %50 = add i32 %16, 1
  %51 = icmp ugt i32 %50, 6
  %52 = select i1 %51, i32 0, i32 %50
  %53 = icmp eq i32 %52, %48
  br i1 %53, label %54, label %13

54:                                               ; preds = %47, %42, %20
  %55 = phi i32 [ %48, %47 ], [ %16, %20 ], [ %16, %42 ]
  store i32 %55, ptr %9, align 4
  br label %56

56:                                               ; preds = %54, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_maudio_broken_running_status_input(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp sgt i32 %2, 3
  br i1 %4, label %5, label %63

5:                                                ; preds = %59, %3
  %6 = phi i32 [ %60, %59 ], [ 0, %3 ]
  %7 = getelementptr i8, ptr %1, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %59, label %10

10:                                               ; preds = %5
  %11 = lshr i8 %8, 4
  %12 = zext i8 %11 to i32
  %13 = and i8 %8, 15
  %14 = zext i8 %13 to i32
  %15 = getelementptr [16 x i8], ptr @snd_usbmidi_cin_length, i32 0, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = trunc i8 %8 to i4
  switch i4 %17, label %23 [
    i4 -1, label %18
    i4 4, label %25
    i4 0, label %34
    i4 1, label %34
    i4 2, label %34
    i4 3, label %34
    i4 5, label %34
    i4 6, label %34
    i4 7, label %34
  ]

18:                                               ; preds = %10
  %19 = or i32 %6, 1
  %20 = getelementptr i8, ptr %1, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = icmp ugt i8 %21, -9
  br i1 %22, label %37, label %34

23:                                               ; preds = %10
  %24 = add i8 %16, -1
  br label %34

25:                                               ; preds = %10
  %26 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 2, i32 %12, i32 1
  %27 = load i8, ptr %26, align 4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = or i32 %6, 1
  %31 = getelementptr i8, ptr %1, i32 %30
  %32 = load i8, ptr %31, align 1
  %33 = icmp sgt i8 %32, -1
  br i1 %33, label %37, label %34

34:                                               ; preds = %29, %25, %23, %18, %10, %10, %10, %10, %10, %10, %10
  %35 = phi i8 [ %24, %23 ], [ 0, %18 ], [ 0, %10 ], [ 0, %10 ], [ 0, %10 ], [ 0, %10 ], [ 0, %10 ], [ 0, %10 ], [ 0, %10 ], [ 0, %29 ], [ 0, %25 ]
  %36 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 2, i32 %12, i32 1
  store i8 %35, ptr %36, align 4
  br label %37

37:                                               ; preds = %34, %29, %18
  %38 = phi i8 [ %16, %18 ], [ %27, %29 ], [ %16, %34 ]
  %39 = zext i8 %38 to i32
  %40 = or i32 %6, 1
  %41 = getelementptr i8, ptr %1, i32 %40
  %42 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 2, i32 %12
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %59, label %45

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %43, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = load ptr, ptr %0, align 4
  %49 = getelementptr inbounds %struct.snd_usb_midi, ptr %48, i32 0, i32 14
  %50 = lshr i32 %47, 5
  %51 = getelementptr i32, ptr %49, i32 %50
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %47, 31
  %54 = shl nuw i32 1, %53
  %55 = and i32 %52, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %45
  %58 = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %43, ptr noundef %41, i32 noundef %39) #14
  br label %59

59:                                               ; preds = %57, %45, %37, %5
  %60 = add i32 %6, 4
  %61 = or i32 %60, 3
  %62 = icmp slt i32 %61, %2
  br i1 %62, label %5, label %63

63:                                               ; preds = %59, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_us122l_input(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 9
  br i1 %4, label %5, label %55

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %1, i32 7
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, -3
  br i1 %8, label %9, label %36

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %1, i32 6
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, -3
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %1, i32 5
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, -3
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %1, i32 4
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, -3
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %1, i32 3
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, -3
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %1, i32 2
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, -3
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %1, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, -3
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i8, ptr %1, align 1
  %35 = icmp eq i8 %34, -3
  br i1 %35, label %55, label %36

36:                                               ; preds = %33, %29, %25, %21, %17, %13, %9, %5
  %37 = phi i32 [ 8, %5 ], [ 7, %9 ], [ 6, %13 ], [ 5, %17 ], [ 4, %21 ], [ 3, %25 ], [ 2, %29 ], [ 1, %33 ]
  %38 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 2, i32 0
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %39, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr %0, align 4
  %45 = getelementptr inbounds %struct.snd_usb_midi, ptr %44, i32 0, i32 14
  %46 = lshr i32 %43, 5
  %47 = getelementptr i32, ptr %45, i32 %46
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %43, 31
  %50 = shl nuw i32 1, %49
  %51 = and i32 %48, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %41
  %54 = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %39, ptr noundef %1, i32 noundef %37) #14
  br label %55

55:                                               ; preds = %53, %41, %36, %33, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_us122l_output(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 8, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -3
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds [4 x i32], ptr @switch.table.snd_usbmidi_us122l_output, i32 0, i32 %11
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi i32 [ %15, %13 ], [ 2, %6 ]
  %18 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 8, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @snd_rawmidi_transmit(ptr noundef %19, ptr noundef %21, i32 noundef %17) #14
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, ptr %3, align 4
  br label %33

25:                                               ; preds = %16
  %26 = load ptr, ptr %20, align 4
  %27 = getelementptr i8, ptr %26, i32 %22
  %28 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %29, %22
  tail call void @llvm.memset.p0.i32(ptr align 1 %27, i8 -3, i32 %30, i1 false)
  %31 = load i32, ptr %28, align 4
  %32 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  store i32 %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %25, %24, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @roland_load_info(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @roland_load_info.names) #14
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @roland_load_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %4, ptr %5, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @roland_load_put(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_usb_midi, ptr %8, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %9) #14
  %10 = load i32, ptr %3, align 8
  %11 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %10, %12
  %14 = zext i1 %13 to i32
  br i1 %13, label %15, label %16

15:                                               ; preds = %6
  store i32 %10, ptr %11, align 4
  br label %16

16:                                               ; preds = %15, %6
  tail call void @mutex_unlock(ptr noundef %9) #14
  br label %17

17:                                               ; preds = %16, %2
  %18 = phi i32 [ %14, %16 ], [ -22, %2 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_midiman_input(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp sgt i32 %2, 3
  br i1 %4, label %5, label %37

5:                                                ; preds = %33, %3
  %6 = phi i32 [ %35, %33 ], [ 3, %3 ]
  %7 = phi i32 [ %34, %33 ], [ 0, %3 ]
  %8 = getelementptr i8, ptr %1, i32 %6
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %5
  %12 = zext i8 %9 to i32
  %13 = lshr i32 %12, 4
  %14 = and i32 %12, 3
  %15 = getelementptr i8, ptr %1, i32 %7
  %16 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 2, i32 %13
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %17, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.snd_usb_midi, ptr %22, i32 0, i32 14
  %24 = lshr i32 %21, 5
  %25 = getelementptr i32, ptr %23, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %21, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %26, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %19
  %32 = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %17, ptr noundef %15, i32 noundef %14) #14
  br label %33

33:                                               ; preds = %31, %19, %11, %5
  %34 = add i32 %7, 4
  %35 = or i32 %34, 3
  %36 = icmp slt i32 %35, %2
  br i1 %36, label %5, label %37

37:                                               ; preds = %33, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @snd_usbmidi_output_midiman_packet(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #7 {
  %6 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 19
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 %9
  store i8 %2, ptr %10, align 1
  %11 = getelementptr i8, ptr %10, i32 1
  store i8 %3, ptr %11, align 1
  %12 = getelementptr i8, ptr %10, i32 2
  store i8 %4, ptr %12, align 1
  %13 = and i8 %1, -16
  %14 = and i8 %1, 15
  %15 = zext i8 %14 to i32
  %16 = getelementptr [16 x i8], ptr @snd_usbmidi_cin_length, i32 0, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = or i8 %17, %13
  %19 = getelementptr i8, ptr %10, i32 3
  store i8 %18, ptr %19, align 1
  %20 = load i32, ptr %8, align 4
  %21 = add i32 %20, 4
  store i32 %21, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_novation_input(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %31, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %1, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %5
  %9 = zext i8 %6 to i32
  %10 = icmp ult i32 %9, %2
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %1, i32 2
  %13 = add nsw i32 %9, -1
  %14 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 2, i32 0
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %15, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.snd_usb_midi, ptr %20, i32 0, i32 14
  %22 = lshr i32 %19, 5
  %23 = getelementptr i32, ptr %21, i32 %22
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %19, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %17
  %30 = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %15, ptr noundef %12, i32 noundef %13) #14
  br label %31

31:                                               ; preds = %29, %17, %11, %8, %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_novation_output(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 8, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 2
  %12 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -2
  %15 = tail call i32 @snd_rawmidi_transmit(ptr noundef %10, ptr noundef %11, i32 noundef %14) #14
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  store i32 0, ptr %3, align 4
  br label %23

18:                                               ; preds = %6
  store i8 0, ptr %8, align 1
  %19 = trunc i32 %15 to i8
  %20 = getelementptr i8, ptr %8, i32 1
  store i8 %19, ptr %20, align 1
  %21 = add nuw i32 %15, 2
  %22 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  store i32 %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %18, %17, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_raw_input(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 2, i32 0
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %5, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.snd_usb_midi, ptr %10, i32 0, i32 14
  %12 = lshr i32 %9, 5
  %13 = getelementptr i32, ptr %11, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %9, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %7
  %20 = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2) #14
  br label %21

21:                                               ; preds = %19, %7, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_raw_output(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 8, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 8, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @snd_rawmidi_transmit(ptr noundef %8, ptr noundef %10, i32 noundef %12) #14
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  store i32 0, ptr %3, align 4
  br label %18

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  store i32 %13, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %15, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_emagic_input(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %10, %3
  %6 = phi i32 [ %11, %10 ], [ 0, %3 ]
  %7 = getelementptr i8, ptr %1, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, -1
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = add nuw nsw i32 %6, 1
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %13, label %5

13:                                               ; preds = %10, %5, %3
  %14 = phi i32 [ %2, %3 ], [ %6, %5 ], [ %2, %10 ]
  %15 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 3
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %72, %13
  %19 = phi ptr [ %73, %72 ], [ %1, %13 ]
  %20 = phi i32 [ %74, %72 ], [ %14, %13 ]
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %75

22:                                               ; preds = %27, %18
  %23 = phi i32 [ %28, %27 ], [ 0, %18 ]
  %24 = getelementptr i8, ptr %19, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, -11
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = add nuw nsw i32 %23, 1
  %29 = icmp eq i32 %28, %20
  br i1 %29, label %30, label %22

30:                                               ; preds = %27, %22
  %31 = phi i32 [ %23, %22 ], [ %20, %27 ]
  %32 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 2, i32 %33
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %51, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %35, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr %0, align 4
  %41 = getelementptr inbounds %struct.snd_usb_midi, ptr %40, i32 0, i32 14
  %42 = lshr i32 %39, 5
  %43 = getelementptr i32, ptr %41, i32 %42
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %39, 31
  %46 = shl nuw i32 1, %45
  %47 = and i32 %44, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %37
  %50 = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %35, ptr noundef %19, i32 noundef %31) #14
  br label %51

51:                                               ; preds = %49, %37, %30
  %52 = sub i32 %20, %31
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %75, label %54

54:                                               ; preds = %51
  %55 = getelementptr i8, ptr %19, i32 %31
  store i8 1, ptr %15, align 4
  %56 = getelementptr i8, ptr %55, i32 1
  %57 = add nsw i32 %52, -1
  br label %58

58:                                               ; preds = %54, %13
  %59 = phi ptr [ %1, %13 ], [ %56, %54 ]
  %60 = phi i32 [ %14, %13 ], [ %57, %54 ]
  %61 = icmp slt i32 %60, 1
  br i1 %61, label %75, label %62

62:                                               ; preds = %58
  %63 = load i8, ptr %59, align 1
  %64 = icmp sgt i8 %63, -1
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = add nuw i8 %63, 15
  %67 = and i8 %66, 15
  %68 = zext i8 %67 to i32
  %69 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 7
  store i32 %68, ptr %69, align 4
  %70 = getelementptr i8, ptr %59, i32 1
  %71 = add nsw i32 %60, -1
  br label %72

72:                                               ; preds = %65, %62
  %73 = phi ptr [ %70, %65 ], [ %59, %62 ]
  %74 = phi i32 [ %71, %65 ], [ %60, %62 ]
  store i8 0, ptr %15, align 4
  br label %18

75:                                               ; preds = %58, %51, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_emagic_output(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %48, %2
  %10 = phi i32 [ 0, %2 ], [ %51, %48 ]
  %11 = phi i32 [ %8, %2 ], [ %50, %48 ]
  %12 = phi ptr [ %6, %2 ], [ %49, %48 ]
  %13 = add i32 %10, %4
  %14 = and i32 %13, 15
  %15 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 8, i32 %14, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %48, label %18

18:                                               ; preds = %9
  %19 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 8, i32 %14, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @snd_rawmidi_transmit_peek(ptr noundef %20, ptr noundef %12, i32 noundef 1) #14
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, ptr %15, align 4
  br label %48

24:                                               ; preds = %18
  %25 = load i32, ptr %3, align 4
  %26 = icmp eq i32 %14, %25
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = icmp slt i32 %11, 2
  br i1 %28, label %53, label %29

29:                                               ; preds = %27
  store i32 %14, ptr %3, align 4
  store i8 -11, ptr %12, align 1
  %30 = trunc i32 %13 to i8
  %31 = add i8 %30, 1
  %32 = and i8 %31, 15
  %33 = getelementptr i8, ptr %12, i32 1
  store i8 %32, ptr %33, align 1
  %34 = getelementptr i8, ptr %12, i32 2
  %35 = add nsw i32 %11, -2
  br label %36

36:                                               ; preds = %29, %24
  %37 = phi ptr [ %34, %29 ], [ %12, %24 ]
  %38 = phi i32 [ %35, %29 ], [ %11, %24 ]
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %62, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %19, align 4
  %42 = tail call i32 @snd_rawmidi_transmit(ptr noundef %41, ptr noundef %37, i32 noundef %38) #14
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %37, i32 %42
  %46 = sub nsw i32 %38, %42
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %62, label %48

48:                                               ; preds = %44, %40, %23, %9
  %49 = phi ptr [ %12, %23 ], [ %12, %9 ], [ %45, %44 ], [ %37, %40 ]
  %50 = phi i32 [ %11, %23 ], [ %11, %9 ], [ %46, %44 ], [ %38, %40 ]
  %51 = add nuw nsw i32 %10, 1
  %52 = icmp eq i32 %51, 16
  br i1 %52, label %53, label %9

53:                                               ; preds = %48, %27
  %54 = phi ptr [ %12, %27 ], [ %49, %48 ]
  %55 = phi i32 [ %11, %27 ], [ %50, %48 ]
  %56 = load i32, ptr %7, align 4
  %57 = icmp slt i32 %55, %56
  %58 = icmp sgt i32 %55, 0
  %59 = and i1 %58, %57
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  store i8 -1, ptr %54, align 1
  %61 = add nsw i32 %55, -1
  br label %62

62:                                               ; preds = %60, %53, %44, %36
  %63 = phi i32 [ %61, %60 ], [ %55, %53 ], [ %46, %44 ], [ %38, %36 ]
  %64 = load i32, ptr %7, align 4
  %65 = sub i32 %64, %63
  %66 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  store i32 %65, ptr %66, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_emagic_init_out(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call ptr @kmemdup(ptr noundef nonnull @snd_usbmidi_emagic_init_out.init_data, i32 noundef 9, i32 noundef 3264) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @usb_bulk_msg(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %2, i32 noundef 9, ptr noundef null, i32 noundef 250) #14
  br label %14

14:                                               ; preds = %8, %4
  tail call void @kfree(ptr noundef nonnull %2) #14
  br label %15

15:                                               ; preds = %14, %1
  %16 = tail call ptr @kmemdup(ptr noundef nonnull @snd_usbmidi_emagic_init_out.init_data, i32 noundef 9, i32 noundef 3264) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @usb_bulk_msg(ptr noundef %24, i32 noundef %26, ptr noundef nonnull %16, i32 noundef 9, ptr noundef null, i32 noundef 250) #14
  br label %28

28:                                               ; preds = %22, %18
  tail call void @kfree(ptr noundef nonnull %16) #14
  br label %29

29:                                               ; preds = %28, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_emagic_finish_out(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call ptr @kmemdup(ptr noundef nonnull @snd_usbmidi_emagic_finish_out.finish_data, i32 noundef 10, i32 noundef 3264) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @usb_bulk_msg(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %2, i32 noundef 10, ptr noundef null, i32 noundef 250) #14
  br label %14

14:                                               ; preds = %8, %4
  tail call void @kfree(ptr noundef nonnull %2) #14
  br label %15

15:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit_peek(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_cme_input(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %70, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %1, align 1
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 15
  %9 = icmp eq i32 %8, 15
  br i1 %9, label %49, label %10

10:                                               ; preds = %5
  %11 = icmp ugt i32 %2, 3
  br i1 %11, label %12, label %70

12:                                               ; preds = %46, %10
  %13 = phi i8 [ %48, %46 ], [ %6, %10 ]
  %14 = phi i32 [ %43, %46 ], [ 0, %10 ]
  %15 = icmp eq i8 %13, 0
  br i1 %15, label %42, label %16

16:                                               ; preds = %12
  %17 = zext i8 %13 to i32
  %18 = lshr i32 %17, 4
  %19 = and i32 %17, 15
  %20 = getelementptr [16 x i8], ptr @snd_usbmidi_cin_length, i32 0, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %14, 1
  %24 = getelementptr i8, ptr %1, i32 %23
  %25 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 2, i32 %18
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %26, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.snd_usb_midi, ptr %31, i32 0, i32 14
  %33 = lshr i32 %30, 5
  %34 = getelementptr i32, ptr %32, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %30, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %28
  %41 = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %26, ptr noundef %24, i32 noundef %22) #14
  br label %42

42:                                               ; preds = %40, %28, %16, %12
  %43 = add i32 %14, 4
  %44 = or i32 %43, 3
  %45 = icmp slt i32 %44, %2
  br i1 %45, label %46, label %70

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %1, i32 %43
  %48 = load i8, ptr %47, align 1
  br label %12

49:                                               ; preds = %5
  %50 = lshr i32 %7, 4
  %51 = getelementptr i8, ptr %1, i32 1
  %52 = add nsw i32 %2, -1
  %53 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 2, i32 %50
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %70, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %54, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = load ptr, ptr %0, align 4
  %60 = getelementptr inbounds %struct.snd_usb_midi, ptr %59, i32 0, i32 14
  %61 = lshr i32 %58, 5
  %62 = getelementptr i32, ptr %60, i32 %61
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %58, 31
  %65 = shl nuw i32 1, %64
  %66 = and i32 %63, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %56
  %69 = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %54, ptr noundef %51, i32 noundef %52) #14
  br label %70

70:                                               ; preds = %68, %56, %49, %42, %10, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_akai_input(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %40, label %5

5:                                                ; preds = %3
  %6 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 2, i32 0
  br label %7

7:                                                ; preds = %38, %5
  %8 = phi i32 [ 0, %5 ], [ %16, %38 ]
  %9 = getelementptr i8, ptr %1, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = lshr i32 %11, 4
  %13 = add nsw i32 %12, -1
  %14 = and i32 %11, 15
  %15 = add nuw i32 %8, 1
  %16 = add i32 %14, %15
  %17 = icmp ule i32 %16, %2
  %18 = icmp ult i32 %13, 2
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %38

20:                                               ; preds = %7
  %21 = getelementptr i8, ptr %1, i32 %15
  %22 = load ptr, ptr %6, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %22, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %0, align 4
  %28 = getelementptr inbounds %struct.snd_usb_midi, ptr %27, i32 0, i32 14
  %29 = lshr i32 %26, 5
  %30 = getelementptr i32, ptr %28, i32 %29
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %26, 31
  %33 = shl nuw i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %24
  %37 = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %22, ptr noundef %21, i32 noundef %14) #14
  br label %38

38:                                               ; preds = %36, %24, %20, %7
  %39 = icmp ult i32 %16, %2
  br i1 %39, label %7, label %40

40:                                               ; preds = %38, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_akai_output(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) %3, i8 0, i32 9, i1 false), !annotation !13
  %4 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 8, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 8, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %66, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -10
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %66

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %11
  br label %20

20:                                               ; preds = %52, %16
  %21 = phi ptr [ %61, %52 ], [ %19, %16 ]
  br label %22

22:                                               ; preds = %38, %20
  %23 = call i32 @snd_rawmidi_transmit_peek(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 9) #14
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %65

25:                                               ; preds = %30, %22
  %26 = phi i32 [ %31, %30 ], [ 0, %22 ]
  %27 = getelementptr [9 x i8], ptr %3, i32 0, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, -16
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = add nuw nsw i32 %26, 1
  %32 = icmp eq i32 %31, %23
  br i1 %32, label %33, label %25

33:                                               ; preds = %30, %25
  %34 = phi i32 [ %26, %25 ], [ %23, %30 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = icmp sgt i32 %23, 1
  br i1 %37, label %43, label %65

38:                                               ; preds = %63, %51, %33
  %39 = phi i32 [ %44, %51 ], [ %23, %63 ], [ %34, %33 ]
  %40 = call i32 @snd_rawmidi_transmit_ack(ptr noundef %5, i32 noundef %39) #14
  %41 = load i32, ptr %10, align 4
  %42 = icmp ult i32 %41, %14
  br i1 %42, label %22, label %66

43:                                               ; preds = %48, %36
  %44 = phi i32 [ %49, %48 ], [ 1, %36 ]
  %45 = getelementptr [9 x i8], ptr %3, i32 0, i32 %44
  %46 = load i8, ptr %45, align 1
  %47 = icmp ult i8 %46, -16
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = add nuw nsw i32 %44, 1
  %50 = icmp eq i32 %49, %23
  br i1 %50, label %63, label %43

51:                                               ; preds = %43
  switch i8 %46, label %63 [
    i8 -16, label %38
    i8 -9, label %52
  ]

52:                                               ; preds = %51
  %53 = add nuw nsw i32 %44, 1
  %54 = trunc i32 %53 to i8
  %55 = or i8 %54, 16
  store i8 %55, ptr %21, align 1
  %56 = getelementptr i8, ptr %21, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %56, ptr noundef nonnull align 1 %3, i32 %53, i1 false)
  %57 = call i32 @snd_rawmidi_transmit_ack(ptr noundef %5, i32 noundef %53) #14
  %58 = add nuw i32 %44, 2
  %59 = load i32, ptr %10, align 4
  %60 = add i32 %59, %58
  store i32 %60, ptr %10, align 4
  %61 = getelementptr i8, ptr %21, i32 %58
  %62 = icmp ult i32 %60, %14
  br i1 %62, label %20, label %66

63:                                               ; preds = %51, %48
  %64 = icmp slt i32 %23, 9
  br i1 %64, label %65, label %38

65:                                               ; preds = %63, %36, %22
  store i32 0, ptr %6, align 4
  br label %66

66:                                               ; preds = %65, %52, %38, %9, %2
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit_ack(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_ftdi_input(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp sgt i32 %2, 2
  br i1 %4, label %5, label %25

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %1, i32 2
  %7 = add nsw i32 %2, -2
  %8 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 2, i32 0
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %9, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.snd_usb_midi, ptr %14, i32 0, i32 14
  %16 = lshr i32 %13, 5
  %17 = getelementptr i32, ptr %15, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %13, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %11
  %24 = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %9, ptr noundef %6, i32 noundef %7) #14
  br label %25

25:                                               ; preds = %23, %11, %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ch345_broken_sysex_input(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp ugt i32 %2, 3
  br i1 %4, label %5, label %64

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 5
  %8 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %0, i32 0, i32 2, i32 0
  br label %9

9:                                                ; preds = %60, %5
  %10 = phi i32 [ 0, %5 ], [ %61, %60 ]
  %11 = getelementptr i8, ptr %1, i32 %10
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  %14 = icmp ne i32 %10, 0
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %64, label %16

16:                                               ; preds = %9
  %17 = and i8 %12, 15
  %18 = load i8, ptr %6, align 1, !range !15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = load i8, ptr %7, align 2
  %22 = icmp eq i8 %17, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = or i32 %10, 1
  %25 = icmp eq i8 %17, 6
  %26 = zext i1 %25 to i32
  %27 = add nuw nsw i32 %24, %26
  %28 = getelementptr i8, ptr %1, i32 %27
  %29 = load i8, ptr %28, align 1
  %30 = icmp sgt i8 %29, -1
  %31 = select i1 %30, i8 4, i8 %17
  br label %32

32:                                               ; preds = %23, %20, %16
  %33 = phi i8 [ %17, %20 ], [ %17, %16 ], [ %31, %23 ]
  %34 = zext i8 %33 to i32
  %35 = getelementptr [16 x i8], ptr @snd_usbmidi_cin_length, i32 0, i32 %34
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %10, 1
  %39 = getelementptr i8, ptr %1, i32 %38
  %40 = load ptr, ptr %8, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %40, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %0, align 4
  %46 = getelementptr inbounds %struct.snd_usb_midi, ptr %45, i32 0, i32 14
  %47 = lshr i32 %44, 5
  %48 = getelementptr i32, ptr %46, i32 %47
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %44, 31
  %51 = shl nuw i32 1, %50
  %52 = and i32 %49, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %42
  %55 = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %40, ptr noundef %39, i32 noundef %37) #14
  br label %56

56:                                               ; preds = %54, %42, %32
  %57 = icmp eq i8 %33, 4
  %58 = zext i1 %57 to i8
  store i8 %58, ptr %6, align 1
  br i1 %57, label %60, label %59

59:                                               ; preds = %56
  store i8 %33, ptr %7, align 2
  br label %60

60:                                               ; preds = %59, %56
  %61 = add i32 %10, 4
  %62 = or i32 %61, 3
  %63 = icmp ult i32 %62, %2
  br i1 %63, label %9, label %64

64:                                               ; preds = %60, %9, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight16(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_rawmidi_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_rawmidi, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr %struct.snd_usb_midi, ptr %3, i32 0, i32 13, i32 0
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call fastcc void @snd_usbmidi_out_endpoint_clear(ptr noundef nonnull %5) #14
  tail call void @kfree(ptr noundef nonnull %5) #14
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr %struct.snd_usb_midi, ptr %3, i32 0, i32 13, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call fastcc void @snd_usbmidi_in_endpoint_delete(ptr noundef nonnull %10) #14
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr %struct.snd_usb_midi, ptr %3, i32 0, i32 13, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call fastcc void @snd_usbmidi_out_endpoint_clear(ptr noundef nonnull %15) #14
  tail call void @kfree(ptr noundef nonnull %15) #14
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr %struct.snd_usb_midi, ptr %3, i32 0, i32 13, i32 1, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call fastcc void @snd_usbmidi_in_endpoint_delete(ptr noundef nonnull %20) #14
  br label %23

23:                                               ; preds = %22, %18
  tail call void @kfree(ptr noundef %3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_get_port_info(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr inbounds %struct.snd_rawmidi, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_usb_midi, ptr %5, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %18, %3
  %9 = phi i32 [ 0, %3 ], [ %19, %18 ]
  %10 = getelementptr [88 x %struct.port_info], ptr @snd_usbmidi_port_info, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %7
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr [88 x %struct.port_info], ptr @snd_usbmidi_port_info, i32 0, i32 %9, i32 1
  %15 = load i16, ptr %14, align 4
  %16 = sext i16 %15 to i32
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %8
  %19 = add nuw nsw i32 %9, 1
  %20 = icmp eq i32 %19, 88
  br i1 %20, label %31, label %8

21:                                               ; preds = %13
  %22 = icmp eq ptr %10, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %21
  %24 = getelementptr [88 x %struct.port_info], ptr @snd_usbmidi_port_info, i32 0, i32 %9, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.snd_seq_port_info, ptr %2, i32 0, i32 3
  store i32 %25, ptr %26, align 4
  %27 = getelementptr [88 x %struct.port_info], ptr @snd_usbmidi_port_info, i32 0, i32 %9, i32 2
  %28 = load i16, ptr %27, align 2
  %29 = sext i16 %28 to i32
  %30 = getelementptr inbounds %struct.snd_seq_port_info, ptr %2, i32 0, i32 5
  store i32 %29, ptr %30, align 4
  br label %31

31:                                               ; preds = %23, %21, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_usbmidi_output_open(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_rawmidi, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr %struct.snd_usb_midi, ptr %5, i32 0, i32 13, i32 0
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %76, label %9

9:                                                ; preds = %1
  %10 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %7, i32 0, i32 8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %16

13:                                               ; preds = %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16, %9
  %14 = phi i32 [ 0, %9 ], [ 1, %16 ], [ 2, %20 ], [ 3, %24 ], [ 4, %28 ], [ 5, %32 ], [ 6, %36 ], [ 7, %40 ], [ 8, %44 ], [ 9, %48 ], [ 10, %52 ], [ 11, %56 ], [ 12, %60 ], [ 13, %64 ], [ 14, %68 ], [ 15, %72 ]
  %15 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %7, i32 0, i32 8, i32 %14
  br label %76

16:                                               ; preds = %9
  %17 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %7, i32 0, i32 8, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %13, label %20

20:                                               ; preds = %16
  %21 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %7, i32 0, i32 8, i32 2, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %13, label %24

24:                                               ; preds = %20
  %25 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %7, i32 0, i32 8, i32 3, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %13, label %28

28:                                               ; preds = %24
  %29 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %7, i32 0, i32 8, i32 4, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %13, label %32

32:                                               ; preds = %28
  %33 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %7, i32 0, i32 8, i32 5, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %0
  br i1 %35, label %13, label %36

36:                                               ; preds = %32
  %37 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %7, i32 0, i32 8, i32 6, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %0
  br i1 %39, label %13, label %40

40:                                               ; preds = %36
  %41 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %7, i32 0, i32 8, i32 7, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %13, label %44

44:                                               ; preds = %40
  %45 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %7, i32 0, i32 8, i32 8, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %0
  br i1 %47, label %13, label %48

48:                                               ; preds = %44
  %49 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %7, i32 0, i32 8, i32 9, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %0
  br i1 %51, label %13, label %52

52:                                               ; preds = %48
  %53 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %7, i32 0, i32 8, i32 10, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %0
  br i1 %55, label %13, label %56

56:                                               ; preds = %52
  %57 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %7, i32 0, i32 8, i32 11, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, %0
  br i1 %59, label %13, label %60

60:                                               ; preds = %56
  %61 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %7, i32 0, i32 8, i32 12, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %0
  br i1 %63, label %13, label %64

64:                                               ; preds = %60
  %65 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %7, i32 0, i32 8, i32 13, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %0
  br i1 %67, label %13, label %68

68:                                               ; preds = %64
  %69 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %7, i32 0, i32 8, i32 14, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, %0
  br i1 %71, label %13, label %72

72:                                               ; preds = %68
  %73 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %7, i32 0, i32 8, i32 15, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %0
  br i1 %75, label %13, label %76

76:                                               ; preds = %72, %13, %1
  %77 = phi ptr [ %15, %13 ], [ null, %1 ], [ null, %72 ]
  %78 = getelementptr %struct.snd_usb_midi, ptr %5, i32 0, i32 13, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %148, label %81

81:                                               ; preds = %76
  %82 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %79, i32 0, i32 8, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %0
  br i1 %84, label %145, label %85

85:                                               ; preds = %81
  %86 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %79, i32 0, i32 8, i32 1, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, %0
  br i1 %88, label %145, label %89

89:                                               ; preds = %85
  %90 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %79, i32 0, i32 8, i32 2, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %0
  br i1 %92, label %145, label %93

93:                                               ; preds = %89
  %94 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %79, i32 0, i32 8, i32 3, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, %0
  br i1 %96, label %145, label %97

97:                                               ; preds = %93
  %98 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %79, i32 0, i32 8, i32 4, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, %0
  br i1 %100, label %145, label %101

101:                                              ; preds = %97
  %102 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %79, i32 0, i32 8, i32 5, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, %0
  br i1 %104, label %145, label %105

105:                                              ; preds = %101
  %106 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %79, i32 0, i32 8, i32 6, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, %0
  br i1 %108, label %145, label %109

109:                                              ; preds = %105
  %110 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %79, i32 0, i32 8, i32 7, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, %0
  br i1 %112, label %145, label %113

113:                                              ; preds = %109
  %114 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %79, i32 0, i32 8, i32 8, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, %0
  br i1 %116, label %145, label %117

117:                                              ; preds = %113
  %118 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %79, i32 0, i32 8, i32 9, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, %0
  br i1 %120, label %145, label %121

121:                                              ; preds = %117
  %122 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %79, i32 0, i32 8, i32 10, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, %0
  br i1 %124, label %145, label %125

125:                                              ; preds = %121
  %126 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %79, i32 0, i32 8, i32 11, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, %0
  br i1 %128, label %145, label %129

129:                                              ; preds = %125
  %130 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %79, i32 0, i32 8, i32 12, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, %0
  br i1 %132, label %145, label %133

133:                                              ; preds = %129
  %134 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %79, i32 0, i32 8, i32 13, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, %0
  br i1 %136, label %145, label %137

137:                                              ; preds = %133
  %138 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %79, i32 0, i32 8, i32 14, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, %0
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %79, i32 0, i32 8, i32 15, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, %0
  br i1 %144, label %145, label %148

145:                                              ; preds = %141, %137, %133, %129, %125, %121, %117, %113, %109, %105, %101, %97, %93, %89, %85, %81
  %146 = phi i32 [ 0, %81 ], [ 1, %85 ], [ 2, %89 ], [ 3, %93 ], [ 4, %97 ], [ 5, %101 ], [ 6, %105 ], [ 7, %109 ], [ 8, %113 ], [ 9, %117 ], [ 10, %121 ], [ 11, %125 ], [ 12, %129 ], [ 13, %133 ], [ 14, %137 ], [ 15, %141 ]
  %147 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %79, i32 0, i32 8, i32 %146
  br label %148

148:                                              ; preds = %145, %141, %76
  %149 = phi ptr [ %147, %145 ], [ %77, %76 ], [ %77, %141 ]
  %150 = icmp eq ptr %149, null
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 13
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %153, i32 0, i32 14
  store ptr %149, ptr %154, align 4
  %155 = getelementptr inbounds %struct.usbmidi_out_port, ptr %149, i32 0, i32 4
  store i8 0, ptr %155, align 1
  %156 = tail call fastcc i32 @substream_open(ptr noundef %0, i32 noundef 0, i32 noundef 1)
  br label %157

157:                                              ; preds = %151, %148
  %158 = phi i32 [ %156, %151 ], [ -6, %148 ]
  ret i32 %158
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_usbmidi_output_close(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @substream_open(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_output_trigger(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usbmidi_out_port, ptr %6, i32 0, i32 2
  store i32 %1, ptr %7, align 4
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %6, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_usb_midi, ptr %11, i32 0, i32 16
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = tail call i32 @snd_rawmidi_proceed(ptr noundef %0) #14
  br label %21

17:                                               ; preds = %9
  %18 = load ptr, ptr @system_highpri_wq, align 4
  %19 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %10, i32 0, i32 5
  %20 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %18, ptr noundef %19) #14
  br label %21

21:                                               ; preds = %17, %15, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_output_drain(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #14
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 1
  %9 = tail call ptr @llvm.thread.pointer() #14
  store i32 0, ptr %2, align 4
  store ptr %9, ptr %8, align 4
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %10, align 4
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3
  store ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3, i32 1
  store ptr %11, ptr %12, align 4
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds %struct.snd_usb_midi, ptr %13, i32 0, i32 16
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %7, i32 0, i32 7
  call void @_raw_spin_lock_irq(ptr noundef %18) #14
  %19 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %7, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %7, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, %20
  store i32 %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %7, i32 0, i32 10
  br label %27

27:                                               ; preds = %27, %22
  %28 = phi i32 [ %20, %22 ], [ %34, %27 ]
  %29 = phi i32 [ 5, %22 ], [ %32, %27 ]
  call void @prepare_to_wait(ptr noundef %26, ptr noundef nonnull %2, i32 noundef 2) #14
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %30 = load i16, ptr %18, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %18, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  %32 = call i32 @schedule_timeout(i32 noundef %29) #14
  call void @_raw_spin_lock_irq(ptr noundef %18) #14
  %33 = load i32, ptr %23, align 4
  %34 = and i32 %33, %28
  %35 = icmp ne i32 %34, 0
  %36 = icmp ne i32 %32, 0
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %27, label %38

38:                                               ; preds = %27
  call void @finish_wait(ptr noundef %26, ptr noundef nonnull %2) #14
  br label %39

39:                                               ; preds = %38, %17
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %40 = load i16, ptr %18, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %18, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  br label %42

42:                                               ; preds = %39, %1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @substream_open(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_rawmidi, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.snd_usb_midi, ptr %7, i32 0, i32 9
  tail call void @down_read(ptr noundef %8) #14
  %9 = getelementptr inbounds %struct.snd_usb_midi, ptr %7, i32 0, i32 16
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  tail call void @up_read(ptr noundef %8) #14
  %13 = icmp eq i32 %2, 0
  %14 = select i1 %13, i32 0, i32 -19
  br label %95

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.snd_usb_midi, ptr %7, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %16) #14
  %17 = icmp eq i32 %2, 0
  %18 = getelementptr inbounds %struct.snd_usb_midi, ptr %7, i32 0, i32 15
  br i1 %17, label %68, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %18, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %19
  %23 = getelementptr %struct.snd_usb_midi, ptr %7, i32 0, i32 15, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.snd_usb_midi, ptr %7, i32 0, i32 18
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %59, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.snd_kcontrol, ptr %28, i32 1, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, 256
  store i32 %33, ptr %31, align 4
  %34 = getelementptr inbounds %struct.snd_usb_midi, ptr %7, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.snd_kcontrol, ptr %28, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %35, i32 noundef 2, ptr noundef %36) #14
  %37 = getelementptr inbounds %struct.snd_usb_midi, ptr %7, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.usb_interface, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %38, align 8
  %42 = icmp ne ptr %40, %41
  %43 = zext i1 %42 to i32
  %44 = load ptr, ptr %27, align 4
  %45 = getelementptr inbounds %struct.snd_kcontrol, ptr %44, i32 0, i32 7
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, %43
  br i1 %47, label %59, label %48

48:                                               ; preds = %30
  %49 = getelementptr %struct.usb_host_interface, ptr %41, i32 %46
  %50 = getelementptr inbounds %struct.snd_usb_midi, ptr %7, i32 0, i32 6
  tail call void @snd_usbmidi_input_stop(ptr noundef %50) #14
  %51 = load ptr, ptr %7, align 4
  %52 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %49, i32 0, i32 2
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %49, i32 0, i32 3
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = tail call i32 @usb_set_interface(ptr noundef %51, i32 noundef %54, i32 noundef %57) #14
  tail call void @snd_usbmidi_input_start(ptr noundef %50) #14
  br label %59

59:                                               ; preds = %48, %30, %26, %22, %19
  %60 = getelementptr %struct.snd_usb_midi, ptr %7, i32 0, i32 15, i32 %1
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 4
  %63 = getelementptr %struct.snd_usb_midi, ptr %7, i32 0, i32 15, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %94, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.snd_usb_midi, ptr %7, i32 0, i32 6
  tail call void @snd_usbmidi_input_start(ptr noundef %67)
  br label %94

68:                                               ; preds = %15
  %69 = getelementptr %struct.snd_usb_midi, ptr %7, i32 0, i32 15, i32 %1
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, -1
  store i32 %71, ptr %69, align 4
  %72 = getelementptr %struct.snd_usb_midi, ptr %7, i32 0, i32 15, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.snd_usb_midi, ptr %7, i32 0, i32 6
  tail call void @snd_usbmidi_input_stop(ptr noundef %76)
  br label %77

77:                                               ; preds = %75, %68
  %78 = load i32, ptr %18, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = load i32, ptr %72, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.snd_usb_midi, ptr %7, i32 0, i32 18
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.snd_kcontrol, ptr %85, i32 1, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, -257
  store i32 %90, ptr %88, align 4
  %91 = getelementptr inbounds %struct.snd_usb_midi, ptr %7, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.snd_kcontrol, ptr %85, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %92, i32 noundef 2, ptr noundef %93) #14
  br label %94

94:                                               ; preds = %87, %83, %80, %77, %66, %59
  tail call void @mutex_unlock(ptr noundef %16) #14
  tail call void @up_read(ptr noundef %8) #14
  br label %95

95:                                               ; preds = %94, %12
  %96 = phi i32 [ %14, %12 ], [ 0, %94 ]
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_proceed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_usbmidi_input_open(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @substream_open(ptr noundef %0, i32 noundef 1, i32 noundef 1)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_usbmidi_input_close(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @substream_open(ptr noundef %0, i32 noundef 1, i32 noundef 0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_input_trigger(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_rawmidi, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_usb_midi, ptr %6, i32 0, i32 14
  br i1 %7, label %12, label %11

11:                                               ; preds = %2
  tail call void @_set_bit(i32 noundef %9, ptr noundef %10) #14
  br label %13

12:                                               ; preds = %2
  tail call void @_clear_bit(i32 noundef %9, ptr noundef %10) #14
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_usbmidi_out_endpoint_create(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  store ptr null, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 368) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %169, label %7

7:                                                ; preds = %3
  store ptr %0, ptr %5, align 8
  %8 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %9 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 1, i32 0
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %167, label %11

11:                                               ; preds = %7
  %12 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 1, i32 0, i32 1
  store ptr %5, ptr %12, align 8
  %13 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %14 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 1, i32 1
  store ptr %13, ptr %14, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %167, label %16

16:                                               ; preds = %11
  %17 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 1, i32 1, i32 1
  store ptr %5, ptr %17, align 8
  %18 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %19 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 1, i32 2
  store ptr %18, ptr %19, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %167, label %21

21:                                               ; preds = %16
  %22 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 1, i32 2, i32 1
  store ptr %5, ptr %22, align 8
  %23 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %24 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 1, i32 3
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %167, label %26

26:                                               ; preds = %21
  %27 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 1, i32 3, i32 1
  store ptr %5, ptr %27, align 8
  %28 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %29 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 1, i32 4
  store ptr %28, ptr %29, align 4
  %30 = icmp eq ptr %28, null
  br i1 %30, label %167, label %31

31:                                               ; preds = %26
  %32 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 1, i32 4, i32 1
  store ptr %5, ptr %32, align 8
  %33 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %34 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 1, i32 5
  store ptr %33, ptr %34, align 4
  %35 = icmp eq ptr %33, null
  br i1 %35, label %167, label %36

36:                                               ; preds = %31
  %37 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 1, i32 5, i32 1
  store ptr %5, ptr %37, align 8
  %38 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %39 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 1, i32 6
  store ptr %38, ptr %39, align 4
  %40 = icmp eq ptr %38, null
  br i1 %40, label %167, label %41

41:                                               ; preds = %36
  %42 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 1, i32 6, i32 1
  store ptr %5, ptr %42, align 8
  %43 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %1, i32 0, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  %46 = load ptr, ptr %0, align 4
  %47 = load i8, ptr %1, align 2
  %48 = sext i8 %47 to i32
  %49 = load i32, ptr %46, align 8
  %50 = shl i32 %49, 8
  %51 = shl nsw i32 %48, 15
  %52 = or i32 %51, %50
  %53 = select i1 %45, i32 -1073741824, i32 1073741824
  %54 = or i32 %52, %53
  %55 = getelementptr inbounds %struct.snd_usb_midi, ptr %0, i32 0, i32 11
  %56 = load i32, ptr %55, align 4
  switch i32 %56, label %57 [
    i32 174542865, label %69
    i32 177344544, label %69
    i32 338708299, label %69
    i32 365560065, label %69
    i32 365565958, label %69
    i32 445019437, label %69
    i32 -66584319, label %69
    i32 105152526, label %68
    i32 105152527, label %68
  ]

57:                                               ; preds = %41
  %58 = lshr i32 %52, 15
  %59 = and i32 %58, 15
  %60 = getelementptr %struct.usb_device, ptr %46, i32 0, i32 22, i32 %59
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %61, i32 0, i32 4
  %65 = load i16, ptr %64, align 1
  %66 = and i16 %65, 2047
  %67 = zext i16 %66 to i32
  br label %69

68:                                               ; preds = %41, %41
  br label %69

69:                                               ; preds = %68, %63, %57, %41, %41, %41, %41, %41, %41, %41
  %70 = phi i32 [ 9, %68 ], [ %67, %63 ], [ 0, %57 ], [ 4, %41 ], [ 4, %41 ], [ 4, %41 ], [ 4, %41 ], [ 4, %41 ], [ 4, %41 ], [ 4, %41 ]
  %71 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 4
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 4
  %73 = load ptr, ptr %0, align 4
  %74 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 1, i32 0
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.urb, ptr %75, i32 0, i32 15
  %77 = tail call ptr @usb_alloc_coherent(ptr noundef %73, i32 noundef %70, i32 noundef 3264, ptr noundef %76) #14
  %78 = icmp eq ptr %77, null
  br i1 %78, label %167, label %79

79:                                               ; preds = %128, %69
  %80 = phi ptr [ %134, %128 ], [ %77, %69 ]
  %81 = phi ptr [ %131, %128 ], [ %74, %69 ]
  %82 = phi i32 [ %126, %128 ], [ 0, %69 ]
  %83 = load i8, ptr %43, align 1
  %84 = icmp eq i8 %83, 0
  %85 = load ptr, ptr %81, align 4
  %86 = load ptr, ptr %0, align 4
  %87 = load i32, ptr %72, align 4
  br i1 %84, label %107, label %88

88:                                               ; preds = %79
  %89 = zext i8 %83 to i32
  %90 = getelementptr inbounds %struct.urb, ptr %85, i32 0, i32 8
  store ptr %86, ptr %90, align 4
  %91 = getelementptr inbounds %struct.urb, ptr %85, i32 0, i32 10
  store i32 %54, ptr %91, align 4
  %92 = getelementptr inbounds %struct.urb, ptr %85, i32 0, i32 14
  store ptr %80, ptr %92, align 4
  %93 = getelementptr inbounds %struct.urb, ptr %85, i32 0, i32 19
  store i32 %87, ptr %93, align 4
  %94 = getelementptr inbounds %struct.urb, ptr %85, i32 0, i32 28
  store ptr @snd_usbmidi_out_urb_complete, ptr %94, align 4
  %95 = getelementptr inbounds %struct.urb, ptr %85, i32 0, i32 27
  store ptr %81, ptr %95, align 4
  %96 = getelementptr inbounds %struct.usb_device, ptr %86, i32 0, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 3
  %99 = icmp ugt i32 %97, 4
  %100 = or i1 %98, %99
  %101 = tail call i32 @llvm.umin.i32(i32 %89, i32 16) #14
  %102 = add nsw i32 %101, -1
  %103 = shl nuw nsw i32 1, %102
  %104 = select i1 %100, i32 %103, i32 %89
  %105 = getelementptr inbounds %struct.urb, ptr %85, i32 0, i32 25
  store i32 %104, ptr %105, align 4
  %106 = getelementptr inbounds %struct.urb, ptr %85, i32 0, i32 23
  store i32 -1, ptr %106, align 4
  br label %114

107:                                              ; preds = %79
  %108 = getelementptr inbounds %struct.urb, ptr %85, i32 0, i32 8
  store ptr %86, ptr %108, align 4
  %109 = getelementptr inbounds %struct.urb, ptr %85, i32 0, i32 10
  store i32 %54, ptr %109, align 4
  %110 = getelementptr inbounds %struct.urb, ptr %85, i32 0, i32 14
  store ptr %80, ptr %110, align 4
  %111 = getelementptr inbounds %struct.urb, ptr %85, i32 0, i32 19
  store i32 %87, ptr %111, align 4
  %112 = getelementptr inbounds %struct.urb, ptr %85, i32 0, i32 28
  store ptr @snd_usbmidi_out_urb_complete, ptr %112, align 4
  %113 = getelementptr inbounds %struct.urb, ptr %85, i32 0, i32 27
  store ptr %81, ptr %113, align 4
  br label %114

114:                                              ; preds = %107, %88
  %115 = load ptr, ptr %81, align 4
  %116 = tail call i32 @usb_urb_ep_type_check(ptr noundef %115) #14
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load ptr, ptr %0, align 4
  %120 = getelementptr inbounds %struct.usb_device, ptr %119, i32 0, i32 15
  %121 = load i8, ptr %1, align 2
  %122 = sext i8 %121 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.32, i32 noundef %122) #15
  br label %167

123:                                              ; preds = %114
  %124 = load ptr, ptr %81, align 4
  %125 = getelementptr inbounds %struct.urb, ptr %124, i32 0, i32 13
  store i32 4, ptr %125, align 4
  %126 = add nuw nsw i32 %82, 1
  %127 = icmp eq i32 %126, 7
  br i1 %127, label %136, label %128

128:                                              ; preds = %123
  %129 = load i32, ptr %72, align 4
  %130 = load ptr, ptr %0, align 4
  %131 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 1, i32 %126
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.urb, ptr %132, i32 0, i32 15
  %134 = tail call ptr @usb_alloc_coherent(ptr noundef %130, i32 noundef %129, i32 noundef 3264, ptr noundef %133) #14
  %135 = icmp eq ptr %134, null
  br i1 %135, label %167, label %79

136:                                              ; preds = %123
  %137 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 7
  store i32 0, ptr %137, align 4
  %138 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 5
  store i32 -32, ptr %138, align 8
  %139 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 5, i32 1
  store volatile ptr %139, ptr %139, align 4
  %140 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 5, i32 1, i32 1
  store ptr %139, ptr %140, align 8
  %141 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 5, i32 2
  store ptr @snd_usbmidi_out_work, ptr %141, align 4
  %142 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %142, ptr noundef nonnull @.str.33, ptr noundef nonnull @snd_usbmidi_out_endpoint_create.__key) #14
  %143 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %1, i32 0, i32 4
  %144 = load i16, ptr %143, align 2
  %145 = zext i16 %144 to i32
  br label %146

146:                                              ; preds = %156, %136
  %147 = phi i32 [ 0, %136 ], [ %157, %156 ]
  %148 = shl nuw nsw i32 1, %147
  %149 = and i32 %148, %145
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 8, i32 %147
  store ptr %5, ptr %152, align 8
  %153 = trunc i32 %147 to i8
  %154 = shl nuw i8 %153, 4
  %155 = getelementptr %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 8, i32 %147, i32 3
  store i8 %154, ptr %155, align 4
  br label %156

156:                                              ; preds = %151, %146
  %157 = add nuw nsw i32 %147, 1
  %158 = icmp eq i32 %157, 16
  br i1 %158, label %159, label %146

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.snd_usb_midi, ptr %0, i32 0, i32 5
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.usb_protocol_ops, ptr %161, i32 0, i32 3
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %166, label %165

165:                                              ; preds = %159
  tail call void %163(ptr noundef nonnull %5) #14
  br label %166

166:                                              ; preds = %165, %159
  store ptr %5, ptr %2, align 4
  br label %169

167:                                              ; preds = %128, %118, %69, %36, %31, %26, %21, %16, %11, %7
  %168 = phi i32 [ %116, %118 ], [ -12, %36 ], [ -12, %31 ], [ -12, %26 ], [ -12, %21 ], [ -12, %16 ], [ -12, %11 ], [ -12, %7 ], [ -12, %69 ], [ -12, %128 ]
  tail call fastcc void @snd_usbmidi_out_endpoint_clear(ptr noundef nonnull %5) #14
  tail call void @kfree(ptr noundef nonnull %5) #14
  br label %169

169:                                              ; preds = %167, %166, %3
  %170 = phi i32 [ %168, %167 ], [ 0, %166 ], [ -12, %3 ]
  ret i32 %170
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_usbmidi_in_endpoint_create(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.snd_usb_midi_endpoint, ptr %2, i32 0, i32 1
  store ptr null, ptr %4, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 168) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %127, label %8

8:                                                ; preds = %3
  store ptr %0, ptr %6, align 8
  %9 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %10 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %6, i32 0, i32 1, i32 0
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %125, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %14 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %6, i32 0, i32 1, i32 1
  store ptr %13, ptr %14, align 8
  %15 = icmp eq ptr %13, null
  br i1 %15, label %125, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %18 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %6, i32 0, i32 1, i32 2
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %125, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %22 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %6, i32 0, i32 1, i32 3
  store ptr %21, ptr %22, align 8
  %23 = icmp eq ptr %21, null
  br i1 %23, label %125, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %26 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %6, i32 0, i32 1, i32 4
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %25, null
  br i1 %27, label %125, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %30 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %6, i32 0, i32 1, i32 5
  store ptr %29, ptr %30, align 8
  %31 = icmp eq ptr %29, null
  br i1 %31, label %125, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %34 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %6, i32 0, i32 1, i32 6
  store ptr %33, ptr %34, align 4
  %35 = icmp eq ptr %33, null
  br i1 %35, label %125, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %1, i32 0, i32 3
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 0
  %40 = load ptr, ptr %0, align 4
  %41 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %1, i32 0, i32 2
  %42 = load i8, ptr %41, align 2
  %43 = sext i8 %42 to i32
  %44 = load i32, ptr %40, align 8
  %45 = shl i32 %44, 8
  %46 = shl nsw i32 %43, 15
  %47 = or i32 %46, %45
  %48 = select i1 %39, i32 -1073741696, i32 1073741952
  %49 = or i32 %47, %48
  %50 = lshr i32 %47, 15
  %51 = and i32 %50, 15
  %52 = getelementptr %struct.usb_device, ptr %40, i32 0, i32 21, i32 %51
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %36
  %56 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %53, i32 0, i32 4
  %57 = load i16, ptr %56, align 1
  %58 = and i16 %57, 2047
  %59 = zext i16 %58 to i32
  br label %60

60:                                               ; preds = %55, %36
  %61 = phi i32 [ %59, %55 ], [ 0, %36 ]
  %62 = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 15
  %63 = tail call ptr @usb_alloc_coherent(ptr noundef %40, i32 noundef %61, i32 noundef 3264, ptr noundef %62) #14
  %64 = icmp eq ptr %63, null
  br i1 %64, label %125, label %65

65:                                               ; preds = %60
  %66 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %6, i32 0, i32 1, i32 0
  br label %78

67:                                               ; preds = %112
  %68 = add nuw nsw i32 %81, 1
  %69 = icmp eq i32 %68, 7
  br i1 %69, label %124, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr %0, align 4
  %72 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %6, i32 0, i32 1, i32 %68
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr %struct.snd_usb_midi_in_endpoint, ptr %6, i32 0, i32 1, i32 %68
  %75 = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 15
  %76 = tail call ptr @usb_alloc_coherent(ptr noundef %71, i32 noundef %61, i32 noundef 3264, ptr noundef %75) #14
  %77 = icmp eq ptr %76, null
  br i1 %77, label %125, label %78

78:                                               ; preds = %70, %65
  %79 = phi ptr [ %63, %65 ], [ %76, %70 ]
  %80 = phi ptr [ %66, %65 ], [ %74, %70 ]
  %81 = phi i32 [ 0, %65 ], [ %68, %70 ]
  %82 = load i8, ptr %37, align 1
  %83 = icmp eq i8 %82, 0
  %84 = load ptr, ptr %80, align 4
  %85 = load ptr, ptr %0, align 4
  br i1 %83, label %105, label %86

86:                                               ; preds = %78
  %87 = zext i8 %82 to i32
  %88 = getelementptr inbounds %struct.urb, ptr %84, i32 0, i32 8
  store ptr %85, ptr %88, align 4
  %89 = getelementptr inbounds %struct.urb, ptr %84, i32 0, i32 10
  store i32 %49, ptr %89, align 4
  %90 = getelementptr inbounds %struct.urb, ptr %84, i32 0, i32 14
  store ptr %79, ptr %90, align 4
  %91 = getelementptr inbounds %struct.urb, ptr %84, i32 0, i32 19
  store i32 %61, ptr %91, align 4
  %92 = getelementptr inbounds %struct.urb, ptr %84, i32 0, i32 28
  store ptr @snd_usbmidi_in_urb_complete, ptr %92, align 4
  %93 = getelementptr inbounds %struct.urb, ptr %84, i32 0, i32 27
  store ptr %6, ptr %93, align 4
  %94 = getelementptr inbounds %struct.usb_device, ptr %85, i32 0, i32 4
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 3
  %97 = icmp ugt i32 %95, 4
  %98 = or i1 %96, %97
  %99 = tail call i32 @llvm.umin.i32(i32 %87, i32 16) #14
  %100 = add nsw i32 %99, -1
  %101 = shl nuw nsw i32 1, %100
  %102 = select i1 %98, i32 %101, i32 %87
  %103 = getelementptr inbounds %struct.urb, ptr %84, i32 0, i32 25
  store i32 %102, ptr %103, align 4
  %104 = getelementptr inbounds %struct.urb, ptr %84, i32 0, i32 23
  store i32 -1, ptr %104, align 4
  br label %112

105:                                              ; preds = %78
  %106 = getelementptr inbounds %struct.urb, ptr %84, i32 0, i32 8
  store ptr %85, ptr %106, align 4
  %107 = getelementptr inbounds %struct.urb, ptr %84, i32 0, i32 10
  store i32 %49, ptr %107, align 4
  %108 = getelementptr inbounds %struct.urb, ptr %84, i32 0, i32 14
  store ptr %79, ptr %108, align 4
  %109 = getelementptr inbounds %struct.urb, ptr %84, i32 0, i32 19
  store i32 %61, ptr %109, align 4
  %110 = getelementptr inbounds %struct.urb, ptr %84, i32 0, i32 28
  store ptr @snd_usbmidi_in_urb_complete, ptr %110, align 4
  %111 = getelementptr inbounds %struct.urb, ptr %84, i32 0, i32 27
  store ptr %6, ptr %111, align 4
  br label %112

112:                                              ; preds = %105, %86
  %113 = load ptr, ptr %80, align 4
  %114 = getelementptr inbounds %struct.urb, ptr %113, i32 0, i32 13
  store i32 4, ptr %114, align 4
  %115 = load ptr, ptr %80, align 4
  %116 = tail call i32 @usb_urb_ep_type_check(ptr noundef %115) #14
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %67

118:                                              ; preds = %112
  %119 = load ptr, ptr %0, align 4
  %120 = getelementptr inbounds %struct.usb_device, ptr %119, i32 0, i32 15
  %121 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, ptr %1, i32 0, i32 2
  %122 = load i8, ptr %121, align 2
  %123 = sext i8 %122 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.36, i32 noundef %123) #15
  br label %125

124:                                              ; preds = %67
  store ptr %6, ptr %4, align 4
  br label %127

125:                                              ; preds = %118, %70, %60, %32, %28, %24, %20, %16, %12, %8
  %126 = phi i32 [ %116, %118 ], [ -12, %32 ], [ -12, %28 ], [ -12, %24 ], [ -12, %20 ], [ -12, %16 ], [ -12, %12 ], [ -12, %8 ], [ -12, %60 ], [ -12, %70 ]
  tail call fastcc void @snd_usbmidi_in_endpoint_delete(ptr noundef nonnull %6)
  br label %127

127:                                              ; preds = %125, %124, %3
  %128 = phi i32 [ %126, %125 ], [ 0, %124 ], [ -12, %3 ]
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snd_usbmidi_init_substream(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !13
  %7 = getelementptr inbounds %struct.snd_usb_midi, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.snd_rawmidi, ptr %8, i32 0, i32 7, i32 %1, i32 2
  br label %10

10:                                               ; preds = %14, %5
  %11 = phi ptr [ %9, %5 ], [ %12, %14 ]
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %9
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %12, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %10

18:                                               ; preds = %14
  %19 = icmp eq ptr %12, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %18, %10
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.38, i32 noundef %1, i32 noundef %2) #15
  br label %167

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.snd_usb_midi, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp ne ptr %25, null
  %27 = icmp sgt i32 %3, -1
  %28 = and i1 %27, %26
  br i1 %28, label %29, label %134

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.usb_interface, ptr %25, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq i32 %1, 0
  %33 = trunc i32 %3 to i8
  %34 = getelementptr inbounds %struct.usb_host_interface, ptr %31, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp sgt i32 %35, 4
  br i1 %32, label %85, label %37

37:                                               ; preds = %29
  br i1 %36, label %38, label %134

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.usb_host_interface, ptr %31, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %64, %38
  %42 = phi i32 [ %35, %38 ], [ %65, %64 ]
  %43 = phi ptr [ %40, %38 ], [ %67, %64 ]
  %44 = load i8, ptr %43, align 1
  %45 = icmp ugt i8 %44, 5
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor, ptr %43, i32 0, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 36
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor, ptr %43, i32 0, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 3
  br i1 %53, label %54, label %68

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor, ptr %43, i32 0, i32 4
  %56 = load i8, ptr %55, align 1
  %57 = icmp eq i8 %56, %33
  br i1 %57, label %72, label %68

58:                                               ; preds = %41
  %59 = icmp ne i8 %44, 0
  %60 = zext i8 %44 to i32
  %61 = sub nsw i32 %42, %60
  %62 = icmp sgt i32 %61, 4
  %63 = select i1 %59, i1 %62, i1 false
  br i1 %63, label %64, label %134

64:                                               ; preds = %68, %58
  %65 = phi i32 [ %70, %68 ], [ %61, %58 ]
  %66 = phi i32 [ %69, %68 ], [ %60, %58 ]
  %67 = getelementptr i8, ptr %43, i32 %66
  br label %41

68:                                               ; preds = %54, %50, %46
  %69 = zext i8 %44 to i32
  %70 = sub nsw i32 %42, %69
  %71 = icmp sgt i32 %70, 4
  br i1 %71, label %64, label %134

72:                                               ; preds = %54
  %73 = icmp eq ptr %43, null
  br i1 %73, label %134, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor, ptr %43, i32 0, i32 5
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 1
  %79 = add nuw nsw i32 %78, 7
  %80 = zext i8 %44 to i32
  %81 = icmp ugt i32 %79, %80
  br i1 %81, label %134, label %82

82:                                               ; preds = %74
  %83 = getelementptr i8, ptr %43, i32 %79
  %84 = getelementptr i8, ptr %83, i32 -1
  br label %124

85:                                               ; preds = %29
  br i1 %36, label %86, label %134

86:                                               ; preds = %85
  %87 = getelementptr inbounds %struct.usb_host_interface, ptr %31, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  br label %89

89:                                               ; preds = %112, %86
  %90 = phi i32 [ %35, %86 ], [ %113, %112 ]
  %91 = phi ptr [ %88, %86 ], [ %115, %112 ]
  %92 = load i8, ptr %91, align 1
  %93 = icmp ugt i8 %92, 5
  br i1 %93, label %94, label %106

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, ptr %91, i32 0, i32 1
  %96 = load i8, ptr %95, align 1
  %97 = icmp eq i8 %96, 36
  br i1 %97, label %98, label %116

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, ptr %91, i32 0, i32 2
  %100 = load i8, ptr %99, align 1
  %101 = icmp eq i8 %100, 2
  br i1 %101, label %102, label %116

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, ptr %91, i32 0, i32 4
  %104 = load i8, ptr %103, align 1
  %105 = icmp eq i8 %104, %33
  br i1 %105, label %120, label %116

106:                                              ; preds = %89
  %107 = icmp ne i8 %92, 0
  %108 = zext i8 %92 to i32
  %109 = sub nsw i32 %90, %108
  %110 = icmp sgt i32 %109, 4
  %111 = select i1 %107, i1 %110, i1 false
  br i1 %111, label %112, label %134

112:                                              ; preds = %116, %106
  %113 = phi i32 [ %118, %116 ], [ %109, %106 ]
  %114 = phi i32 [ %117, %116 ], [ %108, %106 ]
  %115 = getelementptr i8, ptr %91, i32 %114
  br label %89

116:                                              ; preds = %102, %98, %94
  %117 = zext i8 %92 to i32
  %118 = sub nsw i32 %90, %117
  %119 = icmp sgt i32 %118, 4
  br i1 %119, label %112, label %134

120:                                              ; preds = %102
  %121 = icmp eq ptr %91, null
  br i1 %121, label %134, label %122

122:                                              ; preds = %120
  %123 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, ptr %91, i32 0, i32 5
  br label %124

124:                                              ; preds = %122, %82
  %125 = phi ptr [ %84, %82 ], [ %123, %122 ]
  %126 = load i8, ptr %125, align 1
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %124
  %129 = zext i8 %126 to i32
  %130 = load ptr, ptr %0, align 4
  %131 = call i32 @usb_string(ptr noundef %130, i32 noundef %129, ptr noundef nonnull %6, i32 noundef 32) #14
  %132 = icmp eq i32 %131, 0
  %133 = select i1 %132, ptr @.str.37, ptr %6
  br label %134

134:                                              ; preds = %128, %124, %120, %116, %106, %85, %74, %72, %68, %58, %37, %23
  %135 = phi ptr [ @.str.37, %124 ], [ @.str.37, %23 ], [ %133, %128 ], [ @.str.37, %74 ], [ @.str.37, %72 ], [ @.str.37, %120 ], [ @.str.37, %37 ], [ @.str.37, %85 ], [ @.str.37, %106 ], [ @.str.37, %116 ], [ @.str.37, %58 ], [ @.str.37, %68 ]
  %136 = getelementptr inbounds %struct.snd_usb_midi, ptr %0, i32 0, i32 11
  %137 = load i32, ptr %136, align 4
  br label %138

138:                                              ; preds = %148, %134
  %139 = phi i32 [ 0, %134 ], [ %149, %148 ]
  %140 = getelementptr [88 x %struct.port_info], ptr @snd_usbmidi_port_info, i32 0, i32 %139
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, %137
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = getelementptr [88 x %struct.port_info], ptr @snd_usbmidi_port_info, i32 0, i32 %139, i32 1
  %145 = load i16, ptr %144, align 4
  %146 = sext i16 %145 to i32
  %147 = icmp eq i32 %146, %2
  br i1 %147, label %151, label %148

148:                                              ; preds = %143, %138
  %149 = add nuw nsw i32 %139, 1
  %150 = icmp eq i32 %149, 88
  br i1 %150, label %156, label %138

151:                                              ; preds = %143
  %152 = icmp eq ptr %140, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %151
  %154 = getelementptr [88 x %struct.port_info], ptr @snd_usbmidi_port_info, i32 0, i32 %139, i32 3
  %155 = load ptr, ptr %154, align 4
  br label %159

156:                                              ; preds = %151, %148
  %157 = icmp eq ptr %135, @.str.37
  %158 = select i1 %157, ptr @.str.40, ptr @.str.39
  br label %159

159:                                              ; preds = %156, %153
  %160 = phi ptr [ %155, %153 ], [ %158, %156 ]
  %161 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %12, i32 0, i32 12
  %162 = getelementptr inbounds %struct.snd_usb_midi, ptr %0, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.snd_card, ptr %163, i32 0, i32 3
  %165 = add i32 %2, 1
  %166 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %161, i32 noundef 32, ptr noundef %160, ptr noundef %164, ptr noundef nonnull %135, i32 noundef %165)
  store ptr %12, ptr %4, align 4
  br label %167

167:                                              ; preds = %159, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_out_urb_complete(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.out_urb_context, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 7
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #14
  %8 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %3 to i32
  %10 = ptrtoint ptr %8 to i32
  %11 = sub i32 %9, %10
  %12 = ashr exact i32 %11, 3
  %13 = shl nuw i32 1, %12
  %14 = xor i32 %13, -1
  %15 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, %14
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21, !prof !16

21:                                               ; preds = %1
  %22 = and i32 %19, %14
  store i32 %22, ptr %18, align 4
  %23 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, ptr %5, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %23, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %24

24:                                               ; preds = %21, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #14
  %25 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %26 = load i32, ptr %25, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  switch i32 %26, label %29 [
    i32 -2, label %40
    i32 -104, label %40
    i32 -108, label %40
    i32 -19, label %40
    i32 -71, label %33
    i32 -62, label %33
    i32 -84, label %33
  ]

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.35, i32 noundef %26) #15
  br label %39

33:                                               ; preds = %28, %28, %28
  %34 = load ptr, ptr %5, align 4
  %35 = getelementptr inbounds %struct.snd_usb_midi, ptr %34, i32 0, i32 7
  %36 = load volatile i32, ptr @jiffies, align 64
  %37 = add i32 %36, 10
  %38 = tail call i32 @mod_timer(ptr noundef %35, i32 noundef %37) #14
  br label %40

39:                                               ; preds = %29, %24
  tail call fastcc void @snd_usbmidi_do_output(ptr noundef %5)
  br label %40

40:                                               ; preds = %39, %33, %28, %28, %28, %28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_urb_ep_type_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_out_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -72
  tail call fastcc void @snd_usbmidi_do_output(ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usbmidi_in_urb_complete(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %15 [
    i32 0, label %6
    i32 -2, label %37
    i32 -104, label %37
    i32 -108, label %37
    i32 -19, label %37
    i32 -71, label %19
    i32 -62, label %19
    i32 -84, label %19
  ]

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.snd_usb_midi, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %14 = load i32, ptr %13, align 4
  tail call void %10(ptr noundef %3, ptr noundef %12, i32 noundef %14) #14
  br label %26

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.35, i32 noundef %5) #15
  br label %26

19:                                               ; preds = %1, %1, %1
  %20 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, ptr %3, i32 0, i32 6
  store i8 1, ptr %20, align 1
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.snd_usb_midi, ptr %21, i32 0, i32 7
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = add i32 %23, 10
  %25 = tail call i32 @mod_timer(ptr noundef %22, i32 noundef %24) #14
  br label %37

26:                                               ; preds = %15, %6
  %27 = load ptr, ptr %3, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 8
  store ptr %28, ptr %29, align 4
  %30 = tail call i32 @usb_submit_urb(ptr noundef %0, i32 noundef 2592) #14
  %31 = icmp slt i32 %30, 0
  %32 = icmp ne i32 %30, -19
  %33 = and i1 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load ptr, ptr %29, align 4
  %36 = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.4, i32 noundef %30) #15
  br label %37

37:                                               ; preds = %34, %26, %19, %1, %1, %1, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

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
!8 = !{i64 2149303573}
!9 = !{i64 2149299397}
!10 = !{i64 2149299472, i64 2149299499, i64 2149299546, i64 2149299568, i64 2149299596, i64 2149299616}
!11 = !{i64 377814}
!12 = !{i64 2149327717}
!13 = !{!"auto-init"}
!14 = !{i64 2149326576}
!15 = !{i8 0, i8 2}
!16 = !{!"branch_weights", i32 2000, i32 1}
