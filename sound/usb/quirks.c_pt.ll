; ModuleID = '/llk/IR/sound/usb/quirks.c_pt.bc'
source_filename = "../sound/usb/quirks.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.registration_quirk = type { i32, i32 }
%struct.usb_audio_quirk_flags_table = type { i32, i32 }
%struct.snd_usb_audio_quirk = type { ptr, ptr, i16, i16, ptr }
%struct.audioformat = type { %struct.list_head, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, i8, ptr, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.snd_usb_midi_endpoint_info = type { i8, i8, i8, i8, i16, i16, [16 x i16], [16 x i16] }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.snd_usb_substream = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i64, i32, %struct.list_head, %struct.spinlock, i32, %struct.anon.77, i8, i8, ptr }
%struct.anon.77 = type { i32, i32, i32 }
%struct.snd_usb_stream = type { ptr, ptr, i32, i32, [2 x %struct.snd_usb_substream], %struct.list_head }
%struct.snd_usb_endpoint = type { ptr, ptr, i32, %struct.atomic_t, i32, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, [12 x %struct.snd_urb_ctx], [12 x %struct.snd_usb_packet_info], i32, i32, %struct.list_head, i32, i32, i32, %struct.atomic_t, ptr, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i8, %struct.spinlock, %struct.list_head }
%struct.snd_urb_ctx = type { ptr, i32, ptr, ptr, i32, i32, i32, [48 x i32], %struct.list_head }
%struct.snd_usb_packet_info = type { [48 x i32], i32 }
%struct.usb_midi_in_jack_descriptor = type { i8, i8, i8, i8, i8, i8 }
%struct.usb_midi_out_jack_descriptor = type { i8, i8, i8, i8, i8, i8, [0 x %struct.usb_midi_source_pin] }
%struct.usb_midi_source_pin = type { i8, i8 }
%struct.usb_ms_header_descriptor = type <{ i8, i8, i8, i16, i16 }>
%struct.usb_ms_endpoint_descriptor = type { i8, i8, i8, i8, [0 x i8] }

@snd_usb_create_quirk.quirk_funcs = internal unnamed_addr constant [20 x ptr] [ptr @ignore_interface_quirk, ptr @create_composite_quirk, ptr @create_autodetect_quirks, ptr @create_any_midi_quirk, ptr @create_any_midi_quirk, ptr @create_any_midi_quirk, ptr @create_any_midi_quirk, ptr @create_any_midi_quirk, ptr @create_any_midi_quirk, ptr @create_any_midi_quirk, ptr @create_any_midi_quirk, ptr @create_any_midi_quirk, ptr @create_any_midi_quirk, ptr null, ptr @create_any_midi_quirk, ptr @create_any_midi_quirk, ptr @create_standard_audio_quirk, ptr @create_fixed_stream_quirk, ptr @create_uaxx_quirk, ptr @create_standard_mixer_quirk], align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid quirk type %d\0A\00", align 1
@registration_quirks = internal unnamed_addr constant [10 x %struct.registration_quirk] [%struct.registration_quirk { i32 156309208, i32 2 }, %struct.registration_quirk { i32 156309229, i32 2 }, %struct.registration_quirk { i32 156309226, i32 2 }, %struct.registration_quirk { i32 248192838, i32 2 }, %struct.registration_quirk { i32 248192839, i32 2 }, %struct.registration_quirk { i32 248192844, i32 2 }, %struct.registration_quirk { i32 248193081, i32 2 }, %struct.registration_quirk { i32 248193084, i32 2 }, %struct.registration_quirk { i32 248193086, i32 2 }, %struct.registration_quirk zeroinitializer], align 4
@quirk_flags_table = internal unnamed_addr constant [77 x %struct.usb_audio_quirk_flags_table] [%struct.usb_audio_quirk_flags_table { i32 69087232, i32 16384 }, %struct.usb_audio_quirk_flags_table { i32 69091456, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 74254412, i32 513 }, %struct.usb_audio_quirk_flags_table { i32 74254737, i32 16896 }, %struct.usb_audio_quirk_flags_table { i32 74254756, i32 16896 }, %struct.usb_audio_quirk_flags_table { i32 81329898, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 82354257, i32 1056 }, %struct.usb_audio_quirk_flags_table { i32 88869772, i32 65536 }, %struct.usb_audio_quirk_flags_table { i32 89522196, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 94606368, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 94834720, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 98632712, i32 4 }, %struct.usb_audio_quirk_flags_table { i32 98632832, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 105152579, i32 2432 }, %struct.usb_audio_quirk_flags_table { i32 105152580, i32 2432 }, %struct.usb_audio_quirk_flags_table { i32 105152586, i32 2432 }, %struct.usb_audio_quirk_flags_table { i32 116961280, i32 16384 }, %struct.usb_audio_quirk_flags_table { i32 116969474, i32 16384 }, %struct.usb_audio_quirk_flags_table { i32 122500435, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 146482946, i32 16384 }, %struct.usb_audio_quirk_flags_table { i32 156309165, i32 512 }, %struct.usb_audio_quirk_flags_table { i32 185467721, i32 512 }, %struct.usb_audio_quirk_flags_table { i32 265879560, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 328561674, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 333774849, i32 16384 }, %struct.usb_audio_quirk_flags_table { i32 357437442, i32 384 }, %struct.usb_audio_quirk_flags_table { i32 357437443, i32 384 }, %struct.usb_audio_quirk_flags_table { i32 357445637, i32 384 }, %struct.usb_audio_quirk_flags_table { i32 357445638, i32 384 }, %struct.usb_audio_quirk_flags_table { i32 357453838, i32 64 }, %struct.usb_audio_quirk_flags_table { i32 377880797, i32 520 }, %struct.usb_audio_quirk_flags_table { i32 397021254, i32 8192 }, %struct.usb_audio_quirk_flags_table { i32 397021261, i32 8192 }, %struct.usb_audio_quirk_flags_table { i32 408047717, i32 384 }, %struct.usb_audio_quirk_flags_table { i32 419496337, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 541094400, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094401, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094416, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094417, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094419, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094423, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094427, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094430, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094431, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094464, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094496, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094512, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094528, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541094529, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 541098496, i32 6 }, %struct.usb_audio_quirk_flags_table { i32 565444737, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 654835714, i32 16384 }, %struct.usb_audio_quirk_flags_table { i32 689057992, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 817758465, i32 16384 }, %struct.usb_audio_quirk_flags_table { i32 1094493446, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 1397563657, i32 4 }, %struct.usb_audio_quirk_flags_table { i32 304359973, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 73269248, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 74252288, i32 512 }, %struct.usb_audio_quirk_flags_table { i32 75431936, i32 257 }, %struct.usb_audio_quirk_flags_table { i32 105119744, i32 2304 }, %struct.usb_audio_quirk_flags_table { i32 134021120, i32 4096 }, %struct.usb_audio_quirk_flags_table { i32 305463296, i32 4096 }, %struct.usb_audio_quirk_flags_table { i32 355074048, i32 32768 }, %struct.usb_audio_quirk_flags_table { i32 501678080, i32 1 }, %struct.usb_audio_quirk_flags_table { i32 548470784, i32 32768 }, %struct.usb_audio_quirk_flags_table { i32 584646656, i32 32768 }, %struct.usb_audio_quirk_flags_table { i32 599392256, i32 35072 }, %struct.usb_audio_quirk_flags_table { i32 634257408, i32 32768 }, %struct.usb_audio_quirk_flags_table { i32 663420928, i32 32768 }, %struct.usb_audio_quirk_flags_table { i32 690683904, i32 32768 }, %struct.usb_audio_quirk_flags_table { i32 695336960, i32 32768 }, %struct.usb_audio_quirk_flags_table { i32 716570624, i32 32768 }, %struct.usb_audio_quirk_flags_table { i32 861077504, i32 32768 }, %struct.usb_audio_quirk_flags_table { i32 943849472, i32 32768 }, %struct.usb_audio_quirk_flags_table { i32 -989724672, i32 32768 }, %struct.usb_audio_quirk_flags_table zeroinitializer], align 4
@create_yamaha_midi_quirk.yamaha_midi_quirk = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 5, ptr null }, align 4
@create_roland_midi_quirk.roland_midi_quirk = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 6, ptr null }, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"cannot setup if %d: error %d\0A\00", align 1
@create_uaxx_quirk.ua_format = internal constant %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 2, i32 1, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1073741824, i32 0, i32 0, i32 0, ptr null, i8 0, ptr null, i8 0, i8 0, i8 0 }, align 8
@create_uaxx_quirk.ua700_ep = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 3, i16 3, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@create_uaxx_quirk.ua700_quirk = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 4, ptr @create_uaxx_quirk.ua700_ep }, align 4
@create_uaxx_quirk.uaxx_ep = internal constant %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, align 2
@create_uaxx_quirk.uaxx_quirk = internal constant %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 4, ptr @create_uaxx_quirk.uaxx_ep }, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"unknown sample rate\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Invalid firmware size=%d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Unknown bootresponse=%d, or timed out, ignoring device.\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Digidesign Mbox 2: 24bit 48kHz\00", align 1
@snd_usb_accessmusic_boot_quirk.seq = internal constant [4 x i8] c"NsR\01", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Fast Track Pro switching to config #2\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Fast Track Pro config OK\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"failed waiting for Axe-Fx III to boot: %d\0A\00", align 1
@snd_usb_motu_microbookii_boot_quirk.set_samplerate_seq = internal unnamed_addr constant [12 x i8] c"\00\00\00\00\00\00\0B\14\00\00\00\01", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Waiting for MOTU Microbook II to boot up...\0A\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"failed setting the sample rate for Motu MicroBook II: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"failed booting Motu MicroBook II: timeout\0A\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"failed booting Motu MicroBook II: communication error %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"MOTU MicroBook II ready\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"MicroBookII snd: \00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"MicroBookII rcv: \00", align 1
@switch.table.snd_usb_is_big_endian_format.17 = private unnamed_addr constant [5 x i32] [i32 1, i32 1, i32 0, i32 1, i32 1], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_create_quirk(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %3, i32 0, i32 3
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = icmp ult i16 %6, 20
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr [20 x ptr], ptr @snd_usb_create_quirk.quirk_funcs, i32 0, i32 %7
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #14
  br label %17

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str, i32 noundef %7) #15
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i32 [ %12, %9 ], [ -6, %13 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ignore_interface_quirk(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #1 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @create_composite_quirk(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %1, align 8
  %6 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %3, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %10, i32 0, i32 2
  %12 = load i16, ptr %11, align 4
  %13 = icmp sgt i16 %12, -1
  br i1 %13, label %14, label %83

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  br label %16

16:                                               ; preds = %46, %14
  %17 = phi i16 [ %12, %14 ], [ %49, %46 ]
  %18 = phi ptr [ %11, %14 ], [ %48, %46 ]
  %19 = phi ptr [ %10, %14 ], [ %47, %46 ]
  %20 = zext i16 %17 to i32
  %21 = load ptr, ptr %15, align 4
  %22 = tail call ptr @usb_ifnum_to_if(ptr noundef %21, i32 noundef %20) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %16
  %25 = load i16, ptr %18, align 4
  %26 = sext i16 %25 to i32
  %27 = icmp eq i32 %26, %8
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.usb_interface, ptr %22, i32 0, i32 7, i32 6
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %28, %24
  %33 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %19, i32 0, i32 3
  %34 = load i16, ptr %33, align 2
  %35 = icmp ult i16 %34, 20
  %36 = zext i16 %34 to i32
  br i1 %35, label %41, label %37

37:                                               ; preds = %32
  %38 = zext i16 %34 to i32
  %39 = load ptr, ptr %15, align 4
  %40 = getelementptr inbounds %struct.usb_device, ptr %39, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str, i32 noundef %38) #15
  br label %83

41:                                               ; preds = %32
  %42 = getelementptr [20 x ptr], ptr @snd_usb_create_quirk.quirk_funcs, i32 0, i32 %36
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 %43(ptr noundef %0, ptr noundef nonnull %22, ptr noundef %2, ptr noundef %19) #14
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %83, label %46

46:                                               ; preds = %41, %28, %16
  %47 = getelementptr %struct.snd_usb_audio_quirk, ptr %19, i32 1
  %48 = getelementptr %struct.snd_usb_audio_quirk, ptr %19, i32 1, i32 2
  %49 = load i16, ptr %48, align 4
  %50 = icmp sgt i16 %49, -1
  br i1 %50, label %16, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %9, align 4
  %53 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %52, i32 0, i32 2
  %54 = load i16, ptr %53, align 4
  %55 = icmp sgt i16 %54, -1
  br i1 %55, label %56, label %83

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %52, i32 0, i32 2
  %58 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  br label %59

59:                                               ; preds = %78, %56
  %60 = phi i16 [ %54, %56 ], [ %81, %78 ]
  %61 = phi ptr [ %57, %56 ], [ %80, %78 ]
  %62 = phi ptr [ %52, %56 ], [ %79, %78 ]
  %63 = zext i16 %60 to i32
  %64 = load ptr, ptr %58, align 4
  %65 = tail call ptr @usb_ifnum_to_if(ptr noundef %64, i32 noundef %63) #14
  %66 = icmp eq ptr %65, null
  br i1 %66, label %78, label %67

67:                                               ; preds = %59
  %68 = load i16, ptr %61, align 4
  %69 = sext i16 %68 to i32
  %70 = icmp eq i32 %69, %8
  br i1 %70, label %78, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.usb_interface, ptr %65, i32 0, i32 7, i32 6
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = tail call i32 @usb_driver_claim_interface(ptr noundef %2, ptr noundef nonnull %65, ptr noundef nonnull inttoptr (i32 -1 to ptr)) #14
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %75, %71, %67, %59
  %79 = getelementptr %struct.snd_usb_audio_quirk, ptr %62, i32 1
  %80 = getelementptr %struct.snd_usb_audio_quirk, ptr %62, i32 1, i32 2
  %81 = load i16, ptr %80, align 4
  %82 = icmp sgt i16 %81, -1
  br i1 %82, label %59, label %83

83:                                               ; preds = %78, %75, %51, %41, %37, %4
  %84 = phi i32 [ -6, %37 ], [ 0, %51 ], [ 0, %4 ], [ %76, %75 ], [ 0, %78 ], [ %44, %41 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @create_autodetect_quirks(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %1, align 8
  %6 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = tail call fastcc i32 @create_autodetect_quirk(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %50, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 20
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_config_descriptor, ptr %15, i32 0, i32 3
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = icmp eq i8 %17, 0
  br i1 %19, label %50, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %3, i32 0, i32 2
  br label %22

22:                                               ; preds = %47, %20
  %23 = phi i32 [ 0, %20 ], [ %48, %47 ]
  %24 = icmp eq i32 %23, %8
  br i1 %24, label %47, label %25

25:                                               ; preds = %22
  %26 = load i16, ptr %21, align 4
  %27 = icmp sgt i16 %26, -1
  br i1 %27, label %47, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %12, align 4
  %30 = tail call ptr @usb_ifnum_to_if(ptr noundef %29, i32 noundef %23) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %47, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.usb_interface, ptr %30, i32 0, i32 7, i32 6
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load ptr, ptr %30, align 8
  %38 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %37, i32 0, i32 5
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, -1
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = tail call fastcc i32 @create_autodetect_quirk(ptr noundef %0, ptr noundef nonnull %30, ptr noundef %2)
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = tail call i32 @usb_driver_claim_interface(ptr noundef %2, ptr noundef nonnull %30, ptr noundef nonnull inttoptr (i32 -1 to ptr)) #14
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44, %41, %36, %32, %28, %25, %22
  %48 = add nuw nsw i32 %23, 1
  %49 = icmp eq i32 %48, %18
  br i1 %49, label %50, label %22

50:                                               ; preds = %47, %44, %11, %4
  %51 = phi i32 [ %9, %4 ], [ 0, %11 ], [ %45, %44 ], [ 0, %47 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @create_any_midi_quirk(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 22
  %8 = tail call i32 @__snd_usbmidi_create(ptr noundef %6, ptr noundef %1, ptr noundef %7, ptr noundef %3, i32 noundef 0) #14
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @create_standard_audio_quirk(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 {
  %5 = load ptr, ptr %1, align 8
  %6 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = tail call i32 @snd_usb_parse_audio_interface(ptr noundef %0, i32 noundef %8) #14
  %10 = icmp slt i32 %9, 0
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  br i1 %10, label %13, label %17

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  %15 = load i8, ptr %6, align 1
  %16 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.1, i32 noundef %16, i32 noundef %9) #15
  br label %21

17:                                               ; preds = %4
  %18 = load i8, ptr %6, align 1
  %19 = zext i8 %18 to i32
  %20 = tail call i32 @usb_set_interface(ptr noundef %12, i32 noundef %19, i32 noundef 0) #14
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i32 [ %9, %13 ], [ 0, %17 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @create_fixed_stream_quirk(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %3, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @kmemdup(ptr noundef %6, i32 noundef 88, i32 noundef 3264) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %113, label %9

9:                                                ; preds = %4
  store volatile ptr %7, ptr %7, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %7, ptr %10, align 4
  %11 = getelementptr inbounds %struct.audioformat, ptr %7, i32 0, i32 24
  %12 = load i32, ptr %11, align 8
  %13 = icmp ugt i32 %12, 1024
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void @kfree(ptr noundef nonnull %7) #14
  br label %113

15:                                               ; preds = %9
  %16 = icmp eq i32 %12, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.audioformat, ptr %7, i32 0, i32 25
  %19 = load ptr, ptr %18, align 4
  %20 = shl nuw nsw i32 %12, 2
  %21 = tail call ptr @kmemdup(ptr noundef %19, i32 noundef %20, i32 noundef 3264) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  tail call void @kfree(ptr noundef nonnull %7) #14
  br label %113

24:                                               ; preds = %17
  store ptr %21, ptr %18, align 4
  br label %25

25:                                               ; preds = %24, %15
  %26 = phi ptr [ %21, %24 ], [ null, %15 ]
  %27 = getelementptr inbounds %struct.audioformat, ptr %7, i32 0, i32 6
  %28 = load i8, ptr %27, align 8
  %29 = load ptr, ptr %1, align 8
  %30 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %29, i32 0, i32 2
  %31 = load i8, ptr %30, align 2
  %32 = icmp eq i8 %28, %31
  br i1 %32, label %33, label %108

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.audioformat, ptr %7, i32 0, i32 9
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = icmp ugt i32 %38, %36
  br i1 %39, label %40, label %108

40:                                               ; preds = %33
  %41 = getelementptr %struct.usb_host_interface, ptr %29, i32 %36
  %42 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %41, i32 0, i32 4
  %43 = load i8, ptr %42, align 1
  %44 = getelementptr inbounds %struct.audioformat, ptr %7, i32 0, i32 8
  %45 = load i8, ptr %44, align 2
  %46 = icmp ugt i8 %43, %45
  br i1 %46, label %47, label %108

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %41, i32 0, i32 7
  %49 = load i8, ptr %48, align 1
  %50 = getelementptr inbounds %struct.audioformat, ptr %7, i32 0, i32 19
  store i8 %49, ptr %50, align 1
  %51 = getelementptr inbounds %struct.audioformat, ptr %7, i32 0, i32 18
  %52 = load i8, ptr %51, align 4
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = tail call zeroext i8 @snd_usb_parse_datainterval(ptr noundef %0, ptr noundef %41) #14
  store i8 %55, ptr %51, align 4
  br label %56

56:                                               ; preds = %54, %47
  %57 = getelementptr inbounds %struct.audioformat, ptr %7, i32 0, i32 20
  %58 = load i32, ptr %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = getelementptr %struct.usb_host_interface, ptr %29, i32 %36, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = load i8, ptr %44, align 2
  %64 = zext i8 %63 to i32
  %65 = getelementptr %struct.usb_host_endpoint, ptr %62, i32 %64, i32 0, i32 4
  %66 = load i16, ptr %65, align 4
  %67 = zext i16 %66 to i32
  store i32 %67, ptr %57, align 8
  br label %68

68:                                               ; preds = %60, %56
  %69 = getelementptr inbounds %struct.audioformat, ptr %7, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 1, ptr %69, align 4
  br label %73

73:                                               ; preds = %72, %68
  %74 = getelementptr inbounds %struct.audioformat, ptr %7, i32 0, i32 11
  %75 = load i8, ptr %74, align 1
  %76 = lshr i8 %75, 7
  %77 = zext i8 %76 to i32
  %78 = tail call i32 @snd_usb_audioformat_set_sync_ep(ptr noundef %0, ptr noundef nonnull %7) #14
  %79 = tail call i32 @snd_usb_add_audio_stream(ptr noundef %0, i32 noundef %77, ptr noundef nonnull %7) #14
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %108, label %81

81:                                               ; preds = %73
  %82 = load i8, ptr %74, align 1
  %83 = zext i8 %82 to i32
  %84 = tail call i32 @snd_usb_add_endpoint(ptr noundef %0, i32 noundef %83, i32 noundef 0) #14
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %108, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.audioformat, ptr %7, i32 0, i32 14
  %88 = load i8, ptr %87, align 8
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %86
  %91 = zext i8 %88 to i32
  %92 = getelementptr inbounds %struct.audioformat, ptr %7, i32 0, i32 13
  %93 = load i8, ptr %92, align 1, !range !8
  %94 = xor i8 %93, 1
  %95 = zext i8 %94 to i32
  %96 = tail call i32 @snd_usb_add_endpoint(ptr noundef %0, i32 noundef %91, i32 noundef %95) #14
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %90, %86
  %99 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = load i8, ptr %27, align 8
  %102 = zext i8 %101 to i32
  %103 = tail call i32 @usb_set_interface(ptr noundef %100, i32 noundef %102, i32 noundef 0) #14
  %104 = tail call i32 @snd_usb_init_pitch(ptr noundef %0, ptr noundef nonnull %7) #14
  %105 = getelementptr inbounds %struct.audioformat, ptr %7, i32 0, i32 23
  %106 = load i32, ptr %105, align 4
  %107 = tail call i32 @snd_usb_init_sample_rate(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %106) #14
  br label %113

108:                                              ; preds = %90, %81, %73, %40, %33, %25
  %109 = phi i32 [ -22, %33 ], [ -22, %25 ], [ -22, %40 ], [ %96, %90 ], [ %84, %81 ], [ %79, %73 ]
  %110 = load ptr, ptr %10, align 4
  %111 = load ptr, ptr %7, align 4
  %112 = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  store ptr %110, ptr %112, align 4
  store volatile ptr %111, ptr %110, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  tail call void @kfree(ptr noundef nonnull %7) #14
  tail call void @kfree(ptr noundef %26) #14
  br label %113

113:                                              ; preds = %108, %98, %23, %14, %4
  %114 = phi i32 [ -22, %14 ], [ %109, %108 ], [ 0, %98 ], [ -12, %23 ], [ -12, %4 ]
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @create_uaxx_quirk(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %87, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %1, align 8
  %10 = getelementptr %struct.usb_host_interface, ptr %9, i32 1, i32 0, i32 4
  %11 = load i8, ptr %10, align 1
  switch i8 %11, label %87 [
    i8 2, label %12
    i8 1, label %21
  ]

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 92405803
  %16 = select i1 %15, ptr @create_uaxx_quirk.ua700_quirk, ptr @create_uaxx_quirk.uaxx_quirk
  %17 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 22
  %20 = tail call i32 @__snd_usbmidi_create(ptr noundef %18, ptr noundef %1, ptr noundef %19, ptr noundef nonnull %16, i32 noundef %14) #14
  br label %87

21:                                               ; preds = %8
  %22 = tail call ptr @kmemdup(ptr noundef nonnull @create_uaxx_quirk.ua_format, i32 noundef 88, i32 noundef 3264) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %87, label %24

24:                                               ; preds = %21
  %25 = getelementptr %struct.usb_host_interface, ptr %9, i32 1, i32 0, i32 2
  %26 = load i8, ptr %25, align 1
  %27 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 6
  store i8 %26, ptr %27, align 8
  %28 = getelementptr %struct.usb_host_interface, ptr %9, i32 1, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %29, i32 0, i32 2
  %31 = load i8, ptr %30, align 2
  %32 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 11
  store i8 %31, ptr %32, align 1
  %33 = load ptr, ptr %28, align 4
  %34 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %33, i32 0, i32 3
  %35 = load i8, ptr %34, align 1
  %36 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 12
  store i8 %35, ptr %36, align 2
  %37 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 18
  store i8 0, ptr %37, align 4
  %38 = load ptr, ptr %28, align 4
  %39 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %38, i32 0, i32 4
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 20
  store i32 %41, ptr %42, align 8
  store volatile ptr %22, ptr %22, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %22, ptr %43, align 4
  switch i16 %40, label %46 [
    i16 288, label %50
    i16 312, label %44
    i16 320, label %44
    i16 600, label %45
    i16 608, label %45
  ]

44:                                               ; preds = %24, %24
  br label %50

45:                                               ; preds = %24, %24
  br label %50

46:                                               ; preds = %24
  %47 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.usb_device, ptr %48, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.2) #15
  tail call void @kfree(ptr noundef nonnull %22) #14
  br label %87

50:                                               ; preds = %45, %44, %24
  %51 = phi i32 [ 96000, %45 ], [ 48000, %44 ], [ 44100, %24 ]
  %52 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 22
  store i32 %51, ptr %52, align 8
  %53 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 23
  store i32 %51, ptr %53, align 4
  %54 = lshr i8 %31, 7
  %55 = zext i8 %54 to i32
  %56 = tail call i32 @snd_usb_audioformat_set_sync_ep(ptr noundef %0, ptr noundef nonnull %22) #14
  %57 = tail call i32 @snd_usb_add_audio_stream(ptr noundef %0, i32 noundef %55, ptr noundef nonnull %22) #14
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %50
  %60 = load i8, ptr %32, align 1
  %61 = zext i8 %60 to i32
  %62 = tail call i32 @snd_usb_add_endpoint(ptr noundef %0, i32 noundef %61, i32 noundef 0) #14
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 14
  %66 = load i8, ptr %65, align 8
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %64
  %69 = zext i8 %66 to i32
  %70 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 13
  %71 = load i8, ptr %70, align 1, !range !8
  %72 = xor i8 %71, 1
  %73 = zext i8 %72 to i32
  %74 = tail call i32 @snd_usb_add_endpoint(ptr noundef %0, i32 noundef %69, i32 noundef %73) #14
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %68, %59, %50
  %77 = phi i32 [ %74, %68 ], [ %62, %59 ], [ %57, %50 ]
  %78 = load ptr, ptr %43, align 4
  %79 = load ptr, ptr %22, align 4
  %80 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  store ptr %78, ptr %80, align 4
  store volatile ptr %79, ptr %78, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %43, align 4
  tail call void @kfree(ptr noundef nonnull %22) #14
  br label %87

81:                                               ; preds = %68, %64
  %82 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = load i8, ptr %27, align 8
  %85 = zext i8 %84 to i32
  %86 = tail call i32 @usb_set_interface(ptr noundef %83, i32 noundef %85, i32 noundef 0) #14
  br label %87

87:                                               ; preds = %81, %76, %46, %21, %12, %8, %4
  %88 = phi i32 [ %20, %12 ], [ -6, %46 ], [ %77, %76 ], [ 0, %81 ], [ -6, %4 ], [ -6, %8 ], [ -12, %21 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @create_standard_mixer_quirk(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %3, i32 0, i32 2
  %6 = load i16, ptr %5, align 4
  %7 = icmp slt i16 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = zext i16 %6 to i32
  %10 = tail call i32 @snd_usb_create_mixer(ptr noundef %0, i32 noundef %9) #14
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %10, %8 ], [ 0, %4 ]
  ret i32 %12
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_apply_interface_quirk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %128 [
    i32 123936771, label %6
    i32 123936769, label %42
    i32 123936786, label %78
    i32 424608012, label %110
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @usb_set_interface(ptr noundef %8, i32 noundef %1, i32 noundef 0) #14
  %10 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 24
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %6
  %15 = and i32 %11, 2
  %16 = icmp ne i32 %15, 0
  %17 = icmp ne i32 %2, 6
  %18 = and i1 %17, %16
  br i1 %18, label %128, label %19

19:                                               ; preds = %14
  %20 = and i32 %11, 4
  %21 = icmp ne i32 %20, 0
  %22 = icmp ne i32 %2, 1
  %23 = and i1 %22, %21
  br i1 %23, label %128, label %24

24:                                               ; preds = %19
  %25 = and i32 %11, 31
  %26 = icmp eq i32 %25, 25
  %27 = icmp ne i32 %2, 2
  %28 = and i1 %27, %26
  br i1 %28, label %128, label %29

29:                                               ; preds = %24
  %30 = icmp eq i32 %25, 9
  %31 = icmp ne i32 %2, 3
  %32 = and i1 %31, %30
  br i1 %32, label %128, label %33

33:                                               ; preds = %29
  %34 = icmp eq i32 %25, 17
  %35 = icmp ne i32 %2, 4
  %36 = and i1 %35, %34
  br i1 %36, label %128, label %37

37:                                               ; preds = %33
  %38 = icmp ne i32 %25, 1
  %39 = icmp eq i32 %2, 5
  %40 = or i1 %39, %38
  br i1 %40, label %41, label %128

41:                                               ; preds = %37, %6
  br label %128

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @usb_set_interface(ptr noundef %44, i32 noundef %1, i32 noundef 0) #14
  %46 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 24
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %77, label %50

50:                                               ; preds = %42
  %51 = and i32 %47, 128
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = add i32 %1, -3
  %55 = icmp ult i32 %54, -2
  br i1 %55, label %128, label %77

56:                                               ; preds = %50
  %57 = add i32 %1, -1
  %58 = icmp ult i32 %57, 2
  br i1 %58, label %128, label %59

59:                                               ; preds = %56
  %60 = and i32 %47, 4
  %61 = icmp ne i32 %60, 0
  %62 = icmp ne i32 %2, 1
  %63 = and i1 %62, %61
  br i1 %63, label %128, label %64

64:                                               ; preds = %59
  %65 = and i32 %47, 31
  %66 = icmp eq i32 %65, 25
  %67 = icmp ne i32 %2, 2
  %68 = and i1 %67, %66
  br i1 %68, label %128, label %69

69:                                               ; preds = %64
  %70 = icmp eq i32 %65, 9
  %71 = icmp ne i32 %2, 3
  %72 = and i1 %71, %70
  br i1 %72, label %128, label %73

73:                                               ; preds = %69
  %74 = icmp ne i32 %65, 1
  %75 = icmp eq i32 %2, 4
  %76 = or i1 %75, %74
  br i1 %76, label %77, label %128

77:                                               ; preds = %73, %53, %42
  br label %128

78:                                               ; preds = %3
  %79 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 @usb_set_interface(ptr noundef %80, i32 noundef %1, i32 noundef 0) #14
  %82 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 24
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 9
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %108, label %86

86:                                               ; preds = %78
  %87 = and i32 %83, 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = icmp ne i32 %2, 6
  %91 = icmp ne i32 %2, 3
  %92 = and i1 %90, %91
  br label %128

93:                                               ; preds = %86
  %94 = and i32 %83, 16
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  %97 = icmp eq i32 %1, 4
  br i1 %97, label %128, label %98

98:                                               ; preds = %96
  %99 = icmp ne i32 %2, 5
  %100 = icmp ne i32 %2, 2
  %101 = and i1 %99, %100
  br label %128

102:                                              ; preds = %93
  %103 = icmp eq i32 %1, 5
  br i1 %103, label %128, label %104

104:                                              ; preds = %102
  %105 = icmp ne i32 %2, 5
  %106 = icmp ne i32 %2, 2
  %107 = and i1 %105, %106
  br label %128

108:                                              ; preds = %78
  %109 = icmp ne i32 %2, 1
  br label %128

110:                                              ; preds = %3
  %111 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 24
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = icmp sgt i32 %112, 2
  %116 = icmp ne i32 %2, 2
  %117 = and i1 %116, %115
  br i1 %117, label %128, label %120

118:                                              ; preds = %110
  %119 = icmp eq i32 %2, 2
  br i1 %119, label %124, label %128

120:                                              ; preds = %114
  %121 = icmp eq i32 %112, 1
  %122 = icmp ne i32 %2, 1
  %123 = and i1 %122, %121
  br i1 %123, label %128, label %124

124:                                              ; preds = %120, %118
  %125 = icmp eq i32 %112, 2
  %126 = icmp ne i32 %2, 3
  %127 = and i1 %126, %125
  br label %128

128:                                              ; preds = %124, %120, %118, %114, %108, %104, %102, %98, %96, %89, %77, %73, %69, %64, %59, %56, %53, %41, %37, %33, %29, %24, %19, %14, %3
  %129 = phi i1 [ false, %3 ], [ true, %37 ], [ false, %41 ], [ true, %14 ], [ true, %19 ], [ true, %24 ], [ true, %29 ], [ true, %33 ], [ false, %77 ], [ true, %73 ], [ true, %53 ], [ true, %56 ], [ true, %59 ], [ true, %64 ], [ true, %69 ], [ true, %114 ], [ true, %118 ], [ true, %120 ], [ %127, %124 ], [ true, %96 ], [ true, %102 ], [ %92, %89 ], [ %101, %98 ], [ %107, %104 ], [ %109, %108 ]
  %130 = zext i1 %129 to i32
  ret i32 %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_apply_boot_quirk(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x i8], align 2
  %6 = alloca i32, align 4
  %7 = alloca [3 x i8], align 1
  %8 = alloca [12 x i8], align 1
  %9 = alloca [18 x i8], align 1
  %10 = alloca [4 x i8], align 4
  %11 = alloca [4 x i8], align 4
  %12 = alloca i8, align 1
  switch i32 %3, label %195 [
    i32 69087232, label %13
    i32 69087264, label %26
    i32 284492288, label %40
    i32 227279106, label %45
    i32 214761649, label %45
    i32 230305792, label %80
    i32 305463312, label %132
    i32 305463320, label %132
    i32 322832405, label %134
    i32 399249408, label %151
    i32 399249424, label %151
    i32 399249440, label %151
    i32 123936786, label %159
    i32 75481104, label %169
    i32 610697232, label %174
    i32 134021124, label %184
  ]

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_config_descriptor, ptr %15, i32 0, i32 2
  %17 = load i16, ptr %16, align 2
  switch i16 %17, label %195 [
    i16 794, label %18
    i16 483, label %18
  ]

18:                                               ; preds = %13, %13
  %19 = load i32, ptr %0, align 8
  %20 = shl i32 %19, 8
  %21 = or i32 %20, -2147483648
  %22 = tail call i32 @snd_usb_ctl_msg(ptr noundef %0, i32 noundef %21, i8 noundef zeroext 16, i8 noundef zeroext 67, i16 noundef zeroext 1, i16 noundef zeroext 10, ptr noundef null, i16 noundef zeroext 0) #14
  %23 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16
  %24 = tail call i32 @usb_get_descriptor(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %23, i32 noundef 18) #14
  %25 = tail call i32 @usb_reset_configuration(ptr noundef %0) #14
  br label %195

26:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #14
  store i8 1, ptr %12, align 1
  %27 = load i32, ptr %0, align 8
  %28 = shl i32 %27, 8
  %29 = or i32 %28, -2147483520
  %30 = call i32 @snd_usb_ctl_msg(ptr noundef %0, i32 noundef %29, i8 noundef zeroext 42, i8 noundef zeroext -61, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %12, i16 noundef zeroext 1) #14
  %31 = load i8, ptr %12, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load i32, ptr %0, align 8
  %35 = shl i32 %34, 8
  %36 = or i32 %35, -2147483648
  %37 = call i32 @snd_usb_ctl_msg(ptr noundef %0, i32 noundef %36, i8 noundef zeroext 41, i8 noundef zeroext 67, i16 noundef zeroext 1, i16 noundef zeroext 2000, ptr noundef null, i16 noundef zeroext 0) #14
  br label %38

38:                                               ; preds = %33, %26
  %39 = phi i32 [ -19, %33 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #14
  br label %195

40:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #14
  store i32 41944096, ptr %11, align 4, !annotation !9
  %41 = load i32, ptr %0, align 8
  %42 = shl i32 %41, 8
  %43 = or i32 %42, -2147483648
  %44 = call i32 @snd_usb_ctl_msg(ptr noundef %0, i32 noundef %43, i8 noundef zeroext 9, i8 noundef zeroext 34, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %11, i16 noundef zeroext 4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  br label %195

45:                                               ; preds = %4, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  store i32 2098208, ptr %10, align 4, !annotation !9
  %46 = load i32, ptr %0, align 8
  %47 = shl i32 %46, 8
  %48 = or i32 %47, -2147483648
  %49 = call i32 @snd_usb_ctl_msg(ptr noundef %0, i32 noundef %48, i8 noundef zeroext 9, i8 noundef zeroext 34, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %10, i16 noundef zeroext 4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %195, label %51

51:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  store i32 19922976, ptr %10, align 4, !annotation !9
  %52 = load i32, ptr %0, align 8
  %53 = shl i32 %52, 8
  %54 = or i32 %53, -2147483648
  %55 = call i32 @snd_usb_ctl_msg(ptr noundef %0, i32 noundef %54, i8 noundef zeroext 9, i8 noundef zeroext 34, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %10, i16 noundef zeroext 4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %195, label %57

57:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  store i32 49807392, ptr %10, align 4, !annotation !9
  %58 = load i32, ptr %0, align 8
  %59 = shl i32 %58, 8
  %60 = or i32 %59, -2147483648
  %61 = call i32 @snd_usb_ctl_msg(ptr noundef %0, i32 noundef %60, i8 noundef zeroext 9, i8 noundef zeroext 34, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %10, i16 noundef zeroext 4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %195, label %63

63:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  store i32 51658528, ptr %10, align 4, !annotation !9
  %64 = load i32, ptr %0, align 8
  %65 = shl i32 %64, 8
  %66 = or i32 %65, -2147483648
  %67 = call i32 @snd_usb_ctl_msg(ptr noundef %0, i32 noundef %66, i8 noundef zeroext 9, i8 noundef zeroext 34, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %10, i16 noundef zeroext 4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %195, label %69

69:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  store i32 67108896, ptr %10, align 4, !annotation !9
  %70 = load i32, ptr %0, align 8
  %71 = shl i32 %70, 8
  %72 = or i32 %71, -2147483648
  %73 = call i32 @snd_usb_ctl_msg(ptr noundef %0, i32 noundef %72, i8 noundef zeroext 9, i8 noundef zeroext 34, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %10, i16 noundef zeroext 4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %195, label %75

75:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  store i32 87031840, ptr %10, align 4, !annotation !9
  %76 = load i32, ptr %0, align 8
  %77 = shl i32 %76, 8
  %78 = or i32 %77, -2147483648
  %79 = call i32 @snd_usb_ctl_msg(ptr noundef %0, i32 noundef %78, i8 noundef zeroext 9, i8 noundef zeroext 34, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %10, i16 noundef zeroext 4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  br label %195

80:                                               ; preds = %4
  %81 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %82 = load ptr, ptr %81, align 4
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %9) #14
  %83 = getelementptr inbounds i8, ptr %9, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(18) %83, i8 0, i32 17, i1 false) #14, !annotation !9
  %84 = getelementptr inbounds %struct.usb_config_descriptor, ptr %82, i32 0, i32 2
  %85 = load i16, ptr %84, align 2
  %86 = icmp eq i16 %85, 646
  br i1 %86, label %90, label %87

87:                                               ; preds = %80
  %88 = zext i16 %85 to i32
  %89 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.3, i32 noundef %88) #15
  br label %130

90:                                               ; preds = %80
  store i8 1, ptr %9, align 1
  br label %96

91:                                               ; preds = %96
  %92 = add nuw nsw i32 %97, 1
  %93 = icmp eq i8 %102, 1
  %94 = icmp ult i32 %97, 9
  %95 = select i1 %93, i1 %94, i1 false
  br i1 %95, label %96, label %104

96:                                               ; preds = %91, %90
  %97 = phi i32 [ %92, %91 ], [ 0, %90 ]
  call void @msleep(i32 noundef 500) #14
  %98 = load i32, ptr %0, align 8
  %99 = shl i32 %98, 8
  %100 = or i32 %99, -2147483520
  %101 = call i32 @snd_usb_ctl_msg(ptr noundef %0, i32 noundef %100, i8 noundef zeroext -123, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef nonnull %9, i16 noundef zeroext 18) #14
  %102 = load i8, ptr %9, align 1
  %103 = icmp eq i8 %102, 2
  br i1 %103, label %107, label %91

104:                                              ; preds = %91
  %105 = zext i8 %102 to i32
  %106 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.4, i32 noundef %105) #15
  br label %130

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16
  %109 = call i32 @usb_get_descriptor(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %108, i32 noundef 18) #14
  %110 = call i32 @usb_reset_configuration(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %8, i8 0, i32 12, i1 false) #14, !annotation !9
  store i8 -128, ptr %7, align 1
  %111 = getelementptr inbounds [3 x i8], ptr %7, i32 0, i32 1
  store i8 -69, ptr %111, align 1
  %112 = getelementptr inbounds [3 x i8], ptr %7, i32 0, i32 2
  store i8 0, ptr %112, align 1
  %113 = load i32, ptr %0, align 8
  %114 = shl i32 %113, 8
  %115 = or i32 %114, -2147483520
  %116 = call i32 @snd_usb_ctl_msg(ptr noundef %0, i32 noundef %115, i8 noundef zeroext 1, i8 noundef zeroext 34, i16 noundef zeroext 256, i16 noundef zeroext 133, ptr noundef nonnull %8, i16 noundef zeroext 3) #14
  %117 = load i32, ptr %0, align 8
  %118 = shl i32 %117, 8
  %119 = or i32 %118, -2147483648
  %120 = call i32 @snd_usb_ctl_msg(ptr noundef %0, i32 noundef %119, i8 noundef zeroext -127, i8 noundef zeroext -94, i16 noundef zeroext 256, i16 noundef zeroext 133, ptr noundef nonnull %7, i16 noundef zeroext 3) #14
  %121 = load i32, ptr %0, align 8
  %122 = shl i32 %121, 8
  %123 = or i32 %122, -2147483648
  %124 = call i32 @snd_usb_ctl_msg(ptr noundef %0, i32 noundef %123, i8 noundef zeroext -127, i8 noundef zeroext -94, i16 noundef zeroext 256, i16 noundef zeroext 134, ptr noundef nonnull %7, i16 noundef zeroext 3) #14
  %125 = load i32, ptr %0, align 8
  %126 = shl i32 %125, 8
  %127 = or i32 %126, -2147483648
  %128 = call i32 @snd_usb_ctl_msg(ptr noundef %0, i32 noundef %127, i8 noundef zeroext -127, i8 noundef zeroext -94, i16 noundef zeroext 256, i16 noundef zeroext 3, ptr noundef nonnull %7, i16 noundef zeroext 3) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #14
  %129 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %129, ptr noundef nonnull @.str.5) #15
  br label %130

130:                                              ; preds = %107, %104, %87
  %131 = phi i32 [ -19, %87 ], [ -19, %104 ], [ 0, %107 ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %9) #14
  br label %195

132:                                              ; preds = %4, %4
  %133 = tail call i32 @usb_set_interface(ptr noundef %0, i32 noundef 0, i32 noundef 1) #14
  br label %195

134:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !9
  %135 = load i32, ptr %0, align 8
  %136 = shl i32 %135, 8
  %137 = or i32 %136, 1073905664
  %138 = tail call i32 @usb_pipe_type_check(ptr noundef %0, i32 noundef %137) #14
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %134
  %141 = tail call ptr @kmemdup(ptr noundef nonnull @snd_usb_accessmusic_boot_quirk.seq, i32 noundef 4, i32 noundef 3264) #14
  %142 = icmp eq ptr %141, null
  br i1 %142, label %149, label %143

143:                                              ; preds = %140
  %144 = load i32, ptr %0, align 8
  %145 = shl i32 %144, 8
  %146 = or i32 %145, 1073905664
  %147 = call i32 @usb_interrupt_msg(ptr noundef %0, i32 noundef %146, ptr noundef nonnull %141, i32 noundef 4, ptr noundef nonnull %6, i32 noundef 1000) #14
  call void @kfree(ptr noundef nonnull %141) #14
  %148 = call i32 @llvm.smin.i32(i32 %147, i32 0) #14
  br label %149

149:                                              ; preds = %143, %140, %134
  %150 = phi i32 [ -22, %134 ], [ -12, %140 ], [ %148, %143 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %195

151:                                              ; preds = %4, %4, %4
  %152 = load i32, ptr %0, align 8
  %153 = shl i32 %152, 8
  %154 = or i32 %153, -2147483648
  %155 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %154, i8 noundef zeroext -81, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %195, label %157

157:                                              ; preds = %151
  %158 = tail call i32 @usb_reset_device(ptr noundef %0) #14
  br label %195

159:                                              ; preds = %4
  %160 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.usb_config_descriptor, ptr %161, i32 0, i32 4
  %163 = load i8, ptr %162, align 1
  %164 = icmp eq i8 %163, 1
  %165 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  br i1 %164, label %166, label %168

166:                                              ; preds = %159
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %165, ptr noundef nonnull @.str.6) #15
  %167 = tail call i32 @usb_driver_set_configuration(ptr noundef %0, i32 noundef 2) #14
  br label %195

168:                                              ; preds = %159
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %165, ptr noundef nonnull @.str.7) #15
  br label %195

169:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #14
  store i16 -7308, ptr %5, align 2
  %170 = load i32, ptr %0, align 8
  %171 = shl i32 %170, 8
  %172 = or i32 %171, -2147483648
  %173 = call i32 @snd_usb_ctl_msg(ptr noundef %0, i32 noundef %172, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 512, i16 noundef zeroext 2304, ptr noundef nonnull %5, i16 noundef zeroext 2) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #14
  br label %195

174:                                              ; preds = %4
  %175 = load i32, ptr %0, align 8
  %176 = shl i32 %175, 8
  %177 = or i32 %176, -2147483648
  %178 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %177, i8 noundef zeroext 11, i8 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 120000) #14
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.8, i32 noundef %178) #15
  br label %195

182:                                              ; preds = %174
  %183 = tail call i32 @usb_set_interface(ptr noundef %0, i32 noundef 1, i32 noundef 0) #14
  br label %195

184:                                              ; preds = %4
  %185 = load ptr, ptr %1, align 8
  %186 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %185, i32 0, i32 5
  %187 = load i8, ptr %186, align 1
  %188 = icmp eq i8 %187, -1
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %185, i32 0, i32 2
  %191 = load i8, ptr %190, align 2
  %192 = icmp ult i8 %191, 3
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = tail call fastcc i32 @snd_usb_motu_microbookii_boot_quirk(ptr noundef %0)
  br label %195

195:                                              ; preds = %193, %189, %184, %182, %180, %169, %168, %166, %157, %151, %149, %132, %130, %75, %69, %63, %57, %51, %45, %40, %38, %18, %13, %4
  %196 = phi i32 [ %194, %193 ], [ %173, %169 ], [ %150, %149 ], [ 0, %132 ], [ %131, %130 ], [ %44, %40 ], [ %39, %38 ], [ 0, %184 ], [ 0, %189 ], [ 0, %4 ], [ -19, %18 ], [ 0, %13 ], [ %49, %45 ], [ %55, %51 ], [ %61, %57 ], [ %67, %63 ], [ %73, %69 ], [ %79, %75 ], [ -11, %157 ], [ %155, %151 ], [ -19, %166 ], [ 0, %168 ], [ %178, %180 ], [ 0, %182 ]
  ret i32 %196
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_usb_motu_microbookii_boot_quirk(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 128) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.9) #15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 1 dereferenceable(12) @snd_usb_motu_microbookii_boot_quirk.set_samplerate_seq, i32 12, i1 false)
  store i32 12, ptr %2, align 4
  %8 = call fastcc i32 @snd_usb_motu_microbookii_communicate(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %2)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %4, i32 11
  %12 = getelementptr inbounds i8, ptr %4, i32 8
  br label %15

13:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.10, i32 noundef %8) #15
  br label %30

14:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.11) #15
  br label %30

15:                                               ; preds = %26, %10
  %16 = phi i32 [ 1, %10 ], [ %27, %26 ]
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %12, i8 0, i32 120, i1 false)
  store i64 1732478481654088704, ptr %4, align 8
  store i32 8, ptr %2, align 4
  %17 = call fastcc i32 @snd_usb_motu_microbookii_communicate(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %2)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.12, i32 noundef %17) #15
  br label %30

20:                                               ; preds = %15
  %21 = load i32, ptr %2, align 4
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i8, ptr %11, align 1
  %25 = icmp eq i8 %24, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %23, %20
  tail call void @msleep(i32 noundef 100) #14
  %27 = add nuw nsw i32 %16, 1
  %28 = icmp eq i32 %27, 101
  br i1 %28, label %14, label %15

29:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.13) #15
  br label %30

30:                                               ; preds = %29, %19, %14, %13
  %31 = phi i32 [ %8, %13 ], [ -19, %14 ], [ %17, %19 ], [ 0, %29 ]
  tail call void @kfree(ptr noundef nonnull %4) #14
  br label %32

32:                                               ; preds = %30, %1
  %33 = phi i32 [ %31, %30 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_apply_boot_quirk_once(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %3, 134021128
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @msleep(i32 noundef 2000) #14
  br label %7

7:                                                ; preds = %6, %4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_usb_is_big_endian_format(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %24 [
    i32 123936769, label %5
    i32 123936771, label %10
    i32 123936786, label %19
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %7 = load i8, ptr %6, align 1
  %8 = add i8 %7, -2
  %9 = icmp ult i8 %8, 5
  br i1 %9, label %25, label %24

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 24
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %16 = load i8, ptr %15, align 1
  %17 = add i8 %16, -1
  %18 = icmp ult i8 %17, 3
  br i1 %18, label %33, label %24

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %21 = load i8, ptr %20, align 1
  %22 = add i8 %21, -2
  %23 = icmp ult i8 %22, 5
  br i1 %23, label %29, label %24

24:                                               ; preds = %19, %14, %5, %2
  br label %33

25:                                               ; preds = %5
  %26 = sext i8 %8 to i32
  %27 = getelementptr inbounds [5 x i32], ptr @switch.table.snd_usb_is_big_endian_format.17, i32 0, i32 %26
  %28 = load i32, ptr %27, align 4
  br label %33

29:                                               ; preds = %19
  %30 = sext i8 %22 to i32
  %31 = getelementptr inbounds [5 x i32], ptr @switch.table.snd_usb_is_big_endian_format.17, i32 0, i32 %30
  %32 = load i32, ptr %31, align 4
  br label %33

33:                                               ; preds = %29, %25, %24, %14, %10
  %34 = phi i32 [ 0, %24 ], [ 1, %14 ], [ 1, %10 ], [ %28, %25 ], [ %32, %29 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usb_set_format_quirk(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca [3 x i8], align 1
  %5 = load ptr, ptr %0, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_usb_audio, ptr %6, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %77 [
    i32 69091074, label %9
    i32 69091076, label %9
    i32 69091082, label %9
    i32 69091097, label %9
    i32 1397563657, label %29
    i32 728956947, label %31
    i32 149160319, label %54
    i32 149160291, label %54
  ]

9:                                                ; preds = %2, %2, %2, %2
  %10 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr %struct.snd_usb_stream, ptr %5, i32 0, i32 4, i32 1, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %77

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 22
  %19 = load i32, ptr %18, align 8
  switch i32 %19, label %24 [
    i32 48000, label %25
    i32 88200, label %20
    i32 96000, label %21
    i32 176400, label %22
    i32 192000, label %23
  ]

20:                                               ; preds = %17
  br label %25

21:                                               ; preds = %17
  br label %25

22:                                               ; preds = %17
  br label %25

23:                                               ; preds = %17
  br label %25

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %23, %22, %21, %20, %17
  %26 = phi i32 [ 0, %24 ], [ 4, %23 ], [ 4, %22 ], [ 0, %21 ], [ 0, %20 ], [ 0, %17 ]
  %27 = phi i8 [ 0, %24 ], [ 5, %23 ], [ 4, %22 ], [ 3, %21 ], [ 2, %20 ], [ 1, %17 ]
  tail call void @snd_emuusb_set_samplerate(ptr noundef %6, i8 noundef zeroext %27) #14
  %28 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 10
  store i32 %26, ptr %28, align 8
  br label %77

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 11
  store i32 2, ptr %30, align 4
  br label %77

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 20
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %33, i32 0, i32 52
  %35 = load i32, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #14
  %36 = trunc i32 %35 to i8
  store i8 %36, ptr %4, align 1
  %37 = lshr i32 %35, 8
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  store i8 %38, ptr %39, align 1
  %40 = lshr i32 %35, 16
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  store i8 %41, ptr %42, align 1
  %43 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @usb_set_interface(ptr noundef %44, i32 noundef 0, i32 noundef 1) #14
  %46 = load ptr, ptr %0, align 8
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.snd_usb_audio, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = load i32, ptr %49, align 8
  %51 = shl i32 %50, 8
  %52 = or i32 %51, -2147483648
  %53 = call i32 @snd_usb_ctl_msg(ptr noundef %49, i32 noundef %52, i8 noundef zeroext 1, i8 noundef zeroext 34, i16 noundef zeroext 256, i16 noundef zeroext 130, ptr noundef nonnull %4, i16 noundef zeroext 3) #14
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #14
  br label %77

54:                                               ; preds = %2, %2
  %55 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 20
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %56, i32 0, i32 52
  %58 = load i32, ptr %57, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #14
  %59 = trunc i32 %58 to i8
  store i8 %59, ptr %3, align 1
  %60 = lshr i32 %58, 8
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  store i8 %61, ptr %62, align 1
  %63 = lshr i32 %58, 16
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  store i8 %64, ptr %65, align 1
  %66 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 @usb_set_interface(ptr noundef %67, i32 noundef 0, i32 noundef 1) #14
  %69 = load ptr, ptr %0, align 8
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.snd_usb_audio, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = load i32, ptr %72, align 8
  %74 = shl i32 %73, 8
  %75 = or i32 %74, -2147483648
  %76 = call i32 @snd_usb_ctl_msg(ptr noundef %72, i32 noundef %75, i8 noundef zeroext 1, i8 noundef zeroext 34, i16 noundef zeroext 256, i16 noundef zeroext 134, ptr noundef nonnull %3, i16 noundef zeroext 3) #14
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #14
  br label %77

77:                                               ; preds = %54, %31, %29, %25, %13, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_select_mode_quirk(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 6
  %11 = load i8, ptr %10, align 8
  %12 = zext i8 %11 to i32
  %13 = tail call i32 @usb_set_interface(ptr noundef %4, i32 noundef %12, i32 noundef 0) #14
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %9
  tail call void @msleep(i32 noundef 20) #14
  %16 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 4503599627370496
  %19 = icmp eq i64 %18, 0
  %20 = load i32, ptr %4, align 8
  %21 = shl i32 %20, 8
  %22 = or i32 %21, -2147483648
  br i1 %19, label %26, label %23

23:                                               ; preds = %15
  %24 = tail call i32 @snd_usb_ctl_msg(ptr noundef %4, i32 noundef %22, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0) #14
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %30, label %29

26:                                               ; preds = %15
  %27 = tail call i32 @snd_usb_ctl_msg(ptr noundef %4, i32 noundef %22, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0) #14
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26, %23
  tail call void @msleep(i32 noundef 20) #14
  br label %30

30:                                               ; preds = %29, %26, %23, %9, %2
  %31 = phi i32 [ %13, %9 ], [ %24, %23 ], [ %27, %26 ], [ 0, %29 ], [ 0, %2 ]
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_ctl_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @snd_usb_endpoint_start_quirk(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.snd_usb_audio, ptr %2, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, -65536
  %6 = icmp eq i32 %5, 599392256
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 47
  store i32 4, ptr %12, align 4
  %13 = load i32, ptr %3, align 4
  br label %14

14:                                               ; preds = %11, %7, %1
  %15 = phi i32 [ %13, %11 ], [ %4, %7 ], [ %4, %1 ]
  %16 = and i32 %15, -2
  %17 = icmp eq i32 %16, 123936816
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 47
  store i32 16, ptr %23, align 4
  %24 = load i32, ptr %3, align 4
  br label %25

25:                                               ; preds = %22, %18, %14
  %26 = phi i32 [ %15, %14 ], [ %15, %18 ], [ %24, %22 ]
  switch i32 %26, label %35 [
    i32 105152568, label %27
    i32 408047668, label %27
  ]

27:                                               ; preds = %25, %25
  %28 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 41
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 42
  %33 = load i8, ptr %32, align 4
  %34 = or i8 %33, 2
  store i8 %34, ptr %32, align 4
  br label %35

35:                                               ; preds = %31, %27, %25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usb_ctl_msg_quirk(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr nocapture noundef readnone %6, i16 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = icmp ne ptr %10, null
  %12 = and i8 %3, 96
  %13 = icmp eq i8 %12, 32
  %14 = and i1 %13, %11
  br i1 %14, label %15, label %29

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.snd_usb_audio, ptr %10, i32 0, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 256
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @msleep(i32 noundef 20) #14
  br label %29

21:                                               ; preds = %15
  %22 = and i32 %17, 512
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #14
  br label %29

25:                                               ; preds = %21
  %26 = and i32 %17, 1024
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #14
  br label %29

29:                                               ; preds = %28, %25, %24, %20, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @snd_usb_interface_dsd_format_quirks(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -65536
  %7 = icmp eq i32 %6, 599392256
  %8 = and i32 %5, 65520
  %9 = icmp ult i32 %8, 272
  %10 = and i1 %7, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %13 = load i8, ptr %12, align 1
  switch i8 %13, label %20 [
    i8 1, label %14
    i8 2, label %16
    i8 3, label %18
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 28
  store i8 1, ptr %15, align 8
  br label %73

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 29
  store i8 1, ptr %17, align 1
  br label %73

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 29
  store i8 1, ptr %19, align 1
  br label %73

20:                                               ; preds = %11, %3
  switch i32 %5, label %43 [
    i32 353435703, label %21
    i32 622985234, label %21
    i32 661783088, label %21
    i32 227279638, label %25
    i32 281739523, label %25
    i32 382731954, label %25
    i32 382732765, label %25
    i32 382732083, label %25
    i32 382732763, label %25
    i32 498401283, label %25
    i32 585222657, label %25
    i32 614241062, label %25
    i32 638976262, label %25
    i32 639762497, label %25
    i32 670511106, label %25
    i32 698482822, label %25
    i32 1799487554, label %25
    i32 382732058, label %29
    i32 716570628, label %29
    i32 716570629, label %29
    i32 716570630, label %29
    i32 382732835, label %39
  ]

21:                                               ; preds = %20, %20, %20
  %22 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 2
  br i1 %24, label %73, label %43

25:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20
  %26 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 3
  br i1 %28, label %73, label %43

29:                                               ; preds = %20, %20, %20, %20
  %30 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 2
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 16, i32 9
  %37 = load i16, ptr %36, align 4
  switch i16 %37, label %43 [
    i16 409, label %73
    i16 411, label %38
    i16 515, label %38
  ]

38:                                               ; preds = %33, %33
  br label %73

39:                                               ; preds = %20
  %40 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 2
  br i1 %42, label %73, label %43

43:                                               ; preds = %39, %33, %29, %25, %21, %20
  %44 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 12
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 128
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 6
  %52 = load i8, ptr %51, align 8
  %53 = zext i8 %52 to i32
  %54 = tail call ptr @usb_ifnum_to_if(ptr noundef %50, i32 noundef %53) #14
  %55 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = getelementptr inbounds %struct.usb_interface, ptr %54, i32 0, i32 2
  %59 = load i32, ptr %58, align 8
  %60 = add i32 %59, -1
  %61 = icmp eq i32 %60, %57
  br i1 %61, label %73, label %62

62:                                               ; preds = %48
  %63 = load i32, ptr %44, align 4
  br label %64

64:                                               ; preds = %62, %43
  %65 = phi i32 [ %63, %62 ], [ %45, %43 ]
  %66 = and i32 %65, 32768
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 30
  %70 = load i8, ptr %69, align 2, !range !8
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72, %68, %48, %39, %38, %33, %25, %21, %18, %16, %14
  %74 = phi i64 [ 0, %72 ], [ 4503599627370496, %38 ], [ 562949953421312, %18 ], [ 281474976710656, %16 ], [ 562949953421312, %14 ], [ 4503599627370496, %21 ], [ 4503599627370496, %25 ], [ 1125899906842624, %33 ], [ 4503599627370496, %39 ], [ 4503599627370496, %48 ], [ 4503599627370496, %68 ]
  ret i64 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @snd_usb_audioformat_attributes_quirk(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %31 [
    i32 177340499, label %6
    i32 69087264, label %10
    i32 123936771, label %10
    i32 123936769, label %14
    i32 123936786, label %14
    i32 75435169, label %14
    i32 125634479, label %14
    i32 134021124, label %23
    i32 304359973, label %27
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 10
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, -2
  store i8 %9, ptr %7, align 4
  br label %31

10:                                               ; preds = %3, %3
  %11 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 10
  %12 = load i8, ptr %11, align 4
  %13 = or i8 %12, 1
  store i8 %13, ptr %11, align 4
  br label %31

14:                                               ; preds = %3, %3, %3, %3
  %15 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 12
  %16 = load i8, ptr %15, align 2
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = and i8 %16, -13
  %20 = or i8 %19, 8
  store i8 %20, ptr %15, align 2
  br label %31

21:                                               ; preds = %14
  %22 = or i8 %16, 12
  store i8 %22, ptr %15, align 2
  br label %31

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 10
  %25 = load i8, ptr %24, align 4
  %26 = and i8 %25, 127
  store i8 %26, ptr %24, align 4
  br label %31

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 10
  %29 = load i8, ptr %28, align 4
  %30 = or i8 %29, -128
  store i8 %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %27, %23, %21, %18, %10, %6, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @snd_usb_registration_quirk(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %18 [
    i32 156309208, label %13
    i32 156309229, label %5
    i32 156309226, label %6
    i32 248192838, label %7
    i32 248192839, label %8
    i32 248192844, label %9
    i32 248193081, label %10
    i32 248193084, label %11
    i32 248193086, label %12
  ]

5:                                                ; preds = %2
  br label %13

6:                                                ; preds = %2
  br label %13

7:                                                ; preds = %2
  br label %13

8:                                                ; preds = %2
  br label %13

9:                                                ; preds = %2
  br label %13

10:                                               ; preds = %2
  br label %13

11:                                               ; preds = %2
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %11, %10, %9, %8, %7, %6, %5, %2
  %14 = phi ptr [ @registration_quirks, %2 ], [ getelementptr inbounds ([10 x %struct.registration_quirk], ptr @registration_quirks, i32 0, i32 1), %5 ], [ getelementptr inbounds ([10 x %struct.registration_quirk], ptr @registration_quirks, i32 0, i32 2), %6 ], [ getelementptr inbounds ([10 x %struct.registration_quirk], ptr @registration_quirks, i32 0, i32 3), %7 ], [ getelementptr inbounds ([10 x %struct.registration_quirk], ptr @registration_quirks, i32 0, i32 4), %8 ], [ getelementptr inbounds ([10 x %struct.registration_quirk], ptr @registration_quirks, i32 0, i32 5), %9 ], [ getelementptr inbounds ([10 x %struct.registration_quirk], ptr @registration_quirks, i32 0, i32 6), %10 ], [ getelementptr inbounds ([10 x %struct.registration_quirk], ptr @registration_quirks, i32 0, i32 7), %11 ], [ getelementptr inbounds ([10 x %struct.registration_quirk], ptr @registration_quirks, i32 0, i32 8), %12 ]
  %15 = getelementptr inbounds %struct.registration_quirk, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ne i32 %16, %1
  br label %18

18:                                               ; preds = %13, %2
  %19 = phi i1 [ %17, %13 ], [ false, %2 ]
  ret i1 %19
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usb_init_quirk_flags(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  br label %4

4:                                                ; preds = %20, %1
  %5 = phi i32 [ 69087232, %1 ], [ %22, %20 ]
  %6 = phi ptr [ @quirk_flags_table, %1 ], [ %21, %20 ]
  %7 = icmp eq i32 %3, %5
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = trunc i32 %5 to i16
  %10 = icmp eq i16 %9, 0
  %11 = xor i32 %3, %5
  %12 = icmp ult i32 %11, 65536
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %20

14:                                               ; preds = %8, %4
  %15 = getelementptr inbounds %struct.usb_audio_quirk_flags_table, ptr %6, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 12
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, %16
  store i32 %19, ptr %17, align 4
  br label %24

20:                                               ; preds = %8
  %21 = getelementptr %struct.usb_audio_quirk_flags_table, ptr %6, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %4

24:                                               ; preds = %20, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_claim_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @create_autodetect_quirk(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %55, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 8
  %9 = getelementptr %struct.usb_host_interface, ptr %8, i32 1, i32 0, i32 4
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %55, label %12

12:                                               ; preds = %7
  %13 = getelementptr %struct.usb_host_interface, ptr %8, i32 1, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %14, i32 0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, 3
  %18 = icmp eq i8 %17, 1
  br i1 %18, label %19, label %55

19:                                               ; preds = %12
  %20 = getelementptr %struct.usb_host_interface, ptr %8, i32 1, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr %struct.usb_host_interface, ptr %8, i32 1, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = tail call ptr @snd_usb_find_csint_desc(ptr noundef %21, i32 noundef %23, ptr noundef null, i8 noundef zeroext 1) #14
  %25 = load ptr, ptr %20, align 4
  %26 = load i32, ptr %22, align 4
  %27 = tail call ptr @snd_usb_find_csint_desc(ptr noundef %25, i32 noundef %26, ptr noundef null, i8 noundef zeroext 2) #14
  %28 = icmp eq ptr %24, null
  br i1 %28, label %55, label %29

29:                                               ; preds = %19
  %30 = load i8, ptr %24, align 1
  %31 = icmp ugt i8 %30, 6
  %32 = icmp ne ptr %27, null
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = load i8, ptr %27, align 1
  %36 = icmp ult i8 %35, 8
  br i1 %36, label %55, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %1, align 8
  %39 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %38, i32 0, i32 2
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = tail call i32 @snd_usb_parse_audio_interface(ptr noundef %0, i32 noundef %41) #14
  %43 = icmp slt i32 %42, 0
  %44 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  br i1 %43, label %50, label %46

46:                                               ; preds = %37
  %47 = load i8, ptr %39, align 1
  %48 = zext i8 %47 to i32
  %49 = tail call i32 @usb_set_interface(ptr noundef %45, i32 noundef %48, i32 noundef 0) #14
  br label %185

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.usb_device, ptr %45, i32 0, i32 15
  %52 = load i8, ptr %39, align 1
  %53 = zext i8 %52 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.1, i32 noundef %53, i32 noundef %42) #15
  %54 = icmp eq i32 %42, -19
  br i1 %54, label %55, label %185

55:                                               ; preds = %50, %34, %29, %19, %12, %7, %3
  %56 = load ptr, ptr %1, align 8
  %57 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %56, i32 0, i32 4
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %185, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.usb_host_interface, ptr %56, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %62, i32 0, i32 3
  %64 = load i8, ptr %63, align 1
  %65 = and i8 %64, 2
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %185, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = lshr i32 %69, 16
  %71 = trunc i32 %70 to i16
  switch i16 %71, label %140 [
    i16 1177, label %72
    i16 1410, label %114
  ]

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.usb_host_interface, ptr %56, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.usb_host_interface, ptr %56, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = tail call ptr @snd_usb_find_csint_desc(ptr noundef %74, i32 noundef %76, ptr noundef null, i8 noundef zeroext 2) #14
  %78 = load ptr, ptr %73, align 4
  %79 = load i32, ptr %75, align 4
  %80 = tail call ptr @snd_usb_find_csint_desc(ptr noundef %78, i32 noundef %79, ptr noundef null, i8 noundef zeroext 3) #14
  %81 = icmp ne ptr %77, null
  %82 = icmp ne ptr %80, null
  %83 = select i1 %81, i1 true, i1 %82
  br i1 %83, label %84, label %140

84:                                               ; preds = %72
  br i1 %81, label %85, label %87

85:                                               ; preds = %84
  %86 = tail call zeroext i1 @snd_usb_validate_midi_desc(ptr noundef nonnull %77) #14
  br i1 %86, label %87, label %140

87:                                               ; preds = %85, %84
  br i1 %82, label %88, label %90

88:                                               ; preds = %87
  %89 = tail call zeroext i1 @snd_usb_validate_midi_desc(ptr noundef nonnull %80) #14
  br i1 %89, label %90, label %140

90:                                               ; preds = %88, %87
  br i1 %81, label %91, label %99

91:                                               ; preds = %90
  %92 = load i8, ptr %77, align 1
  %93 = icmp ult i8 %92, 5
  br i1 %93, label %140, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, ptr %77, i32 0, i32 3
  %96 = load i8, ptr %95, align 1
  %97 = add i8 %96, -1
  %98 = icmp ult i8 %97, 2
  br i1 %98, label %99, label %140

99:                                               ; preds = %94, %90
  br i1 %82, label %100, label %108

100:                                              ; preds = %99
  %101 = load i8, ptr %80, align 1
  %102 = icmp ult i8 %101, 6
  br i1 %102, label %140, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor, ptr %80, i32 0, i32 3
  %105 = load i8, ptr %104, align 1
  %106 = add i8 %105, -1
  %107 = icmp ult i8 %106, 2
  br i1 %107, label %108, label %140

108:                                              ; preds = %103, %99
  %109 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 22
  %112 = tail call i32 @__snd_usbmidi_create(ptr noundef %110, ptr noundef %1, ptr noundef %111, ptr noundef nonnull @create_yamaha_midi_quirk.yamaha_midi_quirk, i32 noundef 0) #14
  %113 = icmp eq i32 %112, -19
  br i1 %113, label %140, label %185

114:                                              ; preds = %67
  %115 = getelementptr inbounds %struct.usb_host_interface, ptr %56, i32 0, i32 2
  %116 = getelementptr inbounds %struct.usb_host_interface, ptr %56, i32 0, i32 1
  %117 = load ptr, ptr %115, align 4
  %118 = load i32, ptr %116, align 4
  %119 = tail call ptr @snd_usb_find_csint_desc(ptr noundef %117, i32 noundef %118, ptr noundef null, i8 noundef zeroext -15) #14
  %120 = icmp eq ptr %119, null
  br i1 %120, label %140, label %121

121:                                              ; preds = %129, %114
  %122 = phi ptr [ %132, %129 ], [ %119, %114 ]
  %123 = load i8, ptr %122, align 1
  %124 = icmp ult i8 %123, 6
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = getelementptr i8, ptr %122, i32 3
  %127 = load i8, ptr %126, align 1
  %128 = icmp eq i8 %127, 2
  br i1 %128, label %134, label %129

129:                                              ; preds = %125, %121
  %130 = load ptr, ptr %115, align 4
  %131 = load i32, ptr %116, align 4
  %132 = tail call ptr @snd_usb_find_csint_desc(ptr noundef %130, i32 noundef %131, ptr noundef nonnull %122, i8 noundef zeroext -15) #14
  %133 = icmp eq ptr %132, null
  br i1 %133, label %140, label %121

134:                                              ; preds = %125
  %135 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 2
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 22
  %138 = tail call i32 @__snd_usbmidi_create(ptr noundef %136, ptr noundef %1, ptr noundef %137, ptr noundef nonnull @create_roland_midi_quirk.roland_midi_quirk, i32 noundef 0) #14
  %139 = icmp eq i32 %138, -19
  br i1 %139, label %140, label %185

140:                                              ; preds = %134, %129, %114, %108, %103, %100, %94, %91, %88, %85, %72, %67
  %141 = getelementptr inbounds %struct.usb_host_interface, ptr %56, i32 0, i32 2
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.usb_host_interface, ptr %56, i32 0, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = icmp slt i32 %144, 7
  br i1 %145, label %185, label %146

146:                                              ; preds = %140
  %147 = load i8, ptr %142, align 1
  %148 = icmp ult i8 %147, 7
  br i1 %148, label %185, label %149

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.usb_ms_header_descriptor, ptr %142, i32 0, i32 1
  %151 = load i8, ptr %150, align 1
  %152 = icmp eq i8 %151, 36
  br i1 %152, label %153, label %185

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.usb_ms_header_descriptor, ptr %142, i32 0, i32 2
  %155 = load i8, ptr %154, align 1
  %156 = icmp eq i8 %155, 1
  br i1 %156, label %157, label %185

157:                                              ; preds = %153
  %158 = load ptr, ptr %61, align 4
  %159 = getelementptr inbounds %struct.usb_host_endpoint, ptr %158, i32 0, i32 7
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.usb_host_endpoint, ptr %158, i32 0, i32 8
  %162 = load i32, ptr %161, align 4
  %163 = icmp slt i32 %162, 4
  br i1 %163, label %185, label %164

164:                                              ; preds = %157
  %165 = load i8, ptr %160, align 1
  %166 = icmp ult i8 %165, 4
  br i1 %166, label %185, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, ptr %160, i32 0, i32 1
  %169 = load i8, ptr %168, align 1
  %170 = icmp eq i8 %169, 37
  br i1 %170, label %171, label %185

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, ptr %160, i32 0, i32 2
  %173 = load i8, ptr %172, align 1
  %174 = icmp eq i8 %173, 1
  br i1 %174, label %175, label %185

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, ptr %160, i32 0, i32 3
  %177 = load i8, ptr %176, align 1
  %178 = add i8 %177, -17
  %179 = icmp ult i8 %178, -16
  br i1 %179, label %185, label %180

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 2
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 22
  %184 = tail call i32 @__snd_usbmidi_create(ptr noundef %182, ptr noundef %1, ptr noundef %183, ptr noundef null, i32 noundef 0) #14
  br label %185

185:                                              ; preds = %180, %175, %171, %167, %164, %157, %153, %149, %146, %140, %134, %108, %60, %55, %50, %46
  %186 = phi i32 [ %42, %50 ], [ 0, %46 ], [ -19, %55 ], [ %112, %108 ], [ %138, %134 ], [ %184, %180 ], [ -19, %153 ], [ -19, %149 ], [ -19, %146 ], [ -19, %140 ], [ -19, %175 ], [ -19, %171 ], [ -19, %167 ], [ -19, %164 ], [ -19, %157 ], [ -19, %60 ]
  ret i32 %186
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_find_csint_desc(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_usb_validate_midi_desc(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__snd_usbmidi_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_parse_audio_interface(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @snd_usb_parse_datainterval(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_init_pitch(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_init_sample_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_audioformat_set_sync_ep(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_add_audio_stream(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_add_endpoint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_create_mixer(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_descriptor(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_configuration(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_pipe_type_check(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interrupt_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_set_configuration(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_usb_motu_microbookii_communicate(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = load i32, ptr %0, align 8
  %6 = shl i32 %5, 8
  %7 = or i32 %6, 1073774592
  %8 = tail call i32 @usb_pipe_type_check(ptr noundef %0, i32 noundef %7) #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %3
  %11 = load i32, ptr %0, align 8
  %12 = shl i32 %11, 8
  %13 = or i32 %12, 1073774592
  %14 = load i32, ptr %2, align 4
  %15 = call i32 @usb_interrupt_msg(ptr noundef %0, i32 noundef %13, ptr noundef %1, i32 noundef %14, ptr noundef nonnull %4, i32 noundef 1000) #14
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %4, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %1, i32 noundef %18, i1 noundef zeroext false) #14
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(128) %1, i8 0, i32 128, i1 false)
  %19 = load i32, ptr %0, align 8
  %20 = shl i32 %19, 8
  %21 = or i32 %20, 1078001792
  %22 = call i32 @usb_pipe_type_check(ptr noundef %0, i32 noundef %21) #14
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load i32, ptr %0, align 8
  %26 = shl i32 %25, 8
  %27 = or i32 %26, 1078001792
  %28 = call i32 @usb_interrupt_msg(ptr noundef %0, i32 noundef %27, ptr noundef %1, i32 noundef 128, ptr noundef nonnull %4, i32 noundef 1000) #14
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, ptr %4, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %1, i32 noundef %31, i1 noundef zeroext false) #14
  %32 = load i32, ptr %4, align 4
  store i32 %32, ptr %2, align 4
  br label %33

33:                                               ; preds = %30, %24, %17, %10, %3
  %34 = phi i32 [ 0, %30 ], [ -22, %3 ], [ %15, %10 ], [ -22, %17 ], [ %28, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emuusb_set_samplerate(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
