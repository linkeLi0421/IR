; ModuleID = '/llk/IR/sound/usb/proc.c_pt.bc'
source_filename = "../sound/usb/proc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.62, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.62 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
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
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.snd_usb_stream = type { ptr, ptr, i32, i32, [2 x %struct.snd_usb_substream], %struct.list_head }
%struct.snd_usb_substream = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i64, i32, %struct.list_head, %struct.spinlock, i32, %struct.anon.67, i8, i8, ptr }
%struct.anon.67 = type { i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8 }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, ptr, ptr, %struct.device }
%struct.audioformat = type { %struct.list_head, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, i8, ptr, i8, i8, i8 }
%struct.snd_usb_endpoint = type { ptr, ptr, i32, %struct.atomic_t, i32, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, [12 x %struct.snd_urb_ctx], [12 x %struct.snd_usb_packet_info], i32, i32, %struct.list_head, i32, i32, i32, %struct.atomic_t, ptr, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i8, %struct.spinlock, %struct.list_head }
%struct.snd_urb_ctx = type { ptr, i32, ptr, ptr, i32, i32, i32, [48 x i32], %struct.list_head }
%struct.snd_usb_packet_info = type { [48 x i32], i32 }
%struct.snd_pcm_chmap_elem = type { i8, [15 x i8] }

@.str = private unnamed_addr constant [7 x i8] c"usbbus\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"usbid\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"stream%d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%03d/%03d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%04x:%04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%s : %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"\0APlayback:\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"\0ACapture:\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"  Status: Running\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"    Interface = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"    Altset = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"  Status: Stop\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"    Packet Size = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"    Momentary freq = %u Hz (%#x.%04x)\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"    Feedback Format = %d.%d\0A\00", align 1
@proc_dump_substream_formats.sync_types = internal unnamed_addr constant [4 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"ASYNC\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"ADAPTIVE\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"SYNC\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"  Interface %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"    Altset %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"    Format:\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"    Channels: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"    Endpoint: 0x%02x (%d %s) (%s)\0A\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"    Rates: %d - %d (continuous)\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"    Rates: \00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"    Data packet interval: %d us\0A\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"    Bits: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"    DSD raw: DOP=%d, bitrev=%d\0A\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"    Channel map:\00", align 1
@channel_labels = internal unnamed_addr constant [35 x ptr] [ptr null, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71], align 4
@.str.36 = private unnamed_addr constant [4 x i8] c" --\00", align 1
@.str.37 = private unnamed_addr constant [35 x i8] c"    Sync Endpoint: 0x%02x (%d %s)\0A\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"    Sync EP Interface: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"    Sync EP Altset: %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"    Implicit Feedback Mode: %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"MONO\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"FL\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"FR\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"RL\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"RR\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"FC\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"LFE\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"SL\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"SR\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"RC\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"FLC\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"FRC\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"RLC\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"RRC\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"TC\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"TFL\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"TFR\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"TFC\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"TRL\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"TRR\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"TRC\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"TFLC\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"TFRC\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"TSL\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"TSR\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"LLFE\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"RLFE\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"BC\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usb_audio_create_proc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @snd_card_rw_proc_new(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef %0, ptr noundef nonnull @proc_audio_usbbus_read, ptr noundef null) #5
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 @snd_card_rw_proc_new(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef nonnull @proc_audio_usbid_read, ptr noundef null) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @proc_audio_usbbus_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 9
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 12
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.usb_bus, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %11, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef %15, i32 noundef %16) #5
  br label %17

17:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @proc_audio_usbid_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 9
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr inbounds %struct.snd_usb_audio, ptr %4, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 16
  %13 = and i32 %11, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.4, i32 noundef %12, i32 noundef %13) #5
  br label %14

14:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usb_proc_pcm_format_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_usb_stream, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.2, i32 noundef %7)
  %9 = call i32 @snd_card_rw_proc_new(ptr noundef %5, ptr noundef nonnull %2, ptr noundef %0, ptr noundef nonnull @proc_pcm_format_read, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @proc_pcm_format_read(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.snd_usb_stream, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_pcm, ptr %11, i32 0, i32 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %6, ptr noundef nonnull @.str.5, ptr noundef %9, ptr noundef %12) #5
  %13 = getelementptr inbounds %struct.snd_usb_stream, ptr %4, i32 0, i32 4, i32 0, i32 25
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.snd_usb_stream, ptr %4, i32 0, i32 4
  %18 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef nonnull @.str.6) #5
  tail call fastcc void @proc_dump_substream_status(ptr noundef %5, ptr noundef %17, ptr noundef %1)
  tail call fastcc void @proc_dump_substream_formats(ptr noundef %17, ptr noundef %1)
  br label %19

19:                                               ; preds = %16, %2
  %20 = getelementptr %struct.snd_usb_stream, ptr %4, i32 0, i32 4, i32 1, i32 25
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr %struct.snd_usb_stream, ptr %4, i32 0, i32 4, i32 1
  %25 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %25, ptr noundef nonnull @.str.7) #5
  tail call fastcc void @proc_dump_substream_status(ptr noundef %5, ptr noundef %24, ptr noundef %1)
  tail call fastcc void @proc_dump_substream_formats(ptr noundef %24, ptr noundef %1)
  br label %26

26:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @proc_dump_substream_status(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %4) #5
  %5 = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 12
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  %9 = load ptr, ptr %2, align 4
  br i1 %8, label %60, label %10

10:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.8) #5
  %11 = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.audioformat, ptr %12, i32 0, i32 6
  %17 = load i8, ptr %16, align 8
  %18 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.9, i32 noundef %18) #5
  %19 = load ptr, ptr %2, align 4
  %20 = load ptr, ptr %11, align 4
  %21 = getelementptr inbounds %struct.audioformat, ptr %20, i32 0, i32 7
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef nonnull @.str.10, i32 noundef %23) #5
  br label %24

24:                                               ; preds = %14, %10
  %25 = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 20
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 21
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %26, null
  br i1 %29, label %61, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %26, i32 0, i32 39
  %33 = load i32, ptr %32, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %31, ptr noundef nonnull @.str.12, i32 noundef %33) #5
  %34 = load ptr, ptr %2, align 4
  %35 = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 23
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 2
  %38 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %26, i32 0, i32 32
  %39 = load i32, ptr %38, align 4
  %40 = mul i32 %39, 125
  %41 = select i1 %37, i32 4096, i32 512
  %42 = select i1 %37, i32 13, i32 10
  %43 = add i32 %40, %41
  %44 = lshr i32 %43, %42
  %45 = lshr i32 %39, 16
  %46 = and i32 %39, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %34, ptr noundef nonnull @.str.13, i32 noundef %44, i32 noundef %45, i32 noundef %46) #5
  %47 = icmp eq ptr %28, null
  br i1 %47, label %61, label %48

48:                                               ; preds = %30
  %49 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %26, i32 0, i32 33
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, -2147483648
  br i1 %51, label %61, label %52

52:                                               ; preds = %48
  %53 = sub i32 16, %50
  %54 = load ptr, ptr %2, align 4
  %55 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %28, i32 0, i32 41
  %56 = load i32, ptr %55, align 4
  %57 = icmp ugt i32 %56, 3
  %58 = select i1 %57, i32 32, i32 24
  %59 = sub i32 %58, %53
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %54, ptr noundef nonnull @.str.14, i32 noundef %59, i32 noundef %53) #5
  br label %61

60:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.11) #5
  br label %61

61:                                               ; preds = %60, %52, %48, %30, %24
  tail call void @mutex_unlock(ptr noundef %4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @proc_dump_substream_formats(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 26
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %166, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 23
  br label %8

8:                                                ; preds = %163, %6
  %9 = phi ptr [ %4, %6 ], [ %164, %163 ]
  %10 = load ptr, ptr %1, align 4
  %11 = getelementptr inbounds %struct.audioformat, ptr %9, i32 0, i32 6
  %12 = load i8, ptr %11, align 8
  %13 = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %10, ptr noundef nonnull @.str.19, i32 noundef %13) #5
  %14 = load ptr, ptr %1, align 4
  %15 = getelementptr inbounds %struct.audioformat, ptr %9, i32 0, i32 7
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %14, ptr noundef nonnull @.str.20, i32 noundef %17) #5
  %18 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef nonnull @.str.21) #5
  %19 = getelementptr inbounds %struct.audioformat, ptr %9, i32 0, i32 1
  br label %20

20:                                               ; preds = %30, %8
  %21 = phi i32 [ 0, %8 ], [ %31, %30 ]
  %22 = load i64, ptr %19, align 8
  %23 = zext i32 %21 to i64
  %24 = shl nuw i64 1, %23
  %25 = and i64 %22, %24
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %1, align 4
  %29 = tail call ptr @snd_pcm_format_name(i32 noundef %21) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %28, ptr noundef nonnull @.str.22, ptr noundef %29) #5
  br label %30

30:                                               ; preds = %27, %20
  %31 = add nuw nsw i32 %21, 1
  %32 = icmp eq i32 %31, 53
  br i1 %32, label %33, label %20

33:                                               ; preds = %30
  %34 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %34, ptr noundef nonnull @.str.23) #5
  %35 = load ptr, ptr %1, align 4
  %36 = getelementptr inbounds %struct.audioformat, ptr %9, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %35, ptr noundef nonnull @.str.24, i32 noundef %37) #5
  %38 = load ptr, ptr %1, align 4
  %39 = getelementptr inbounds %struct.audioformat, ptr %9, i32 0, i32 11
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, 15
  %43 = and i32 %41, 128
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, ptr @.str.27, ptr @.str.26
  %46 = getelementptr inbounds %struct.audioformat, ptr %9, i32 0, i32 12
  %47 = load i8, ptr %46, align 2
  %48 = lshr i8 %47, 2
  %49 = and i8 %48, 3
  %50 = zext i8 %49 to i32
  %51 = getelementptr [4 x ptr], ptr @proc_dump_substream_formats.sync_types, i32 0, i32 %50
  %52 = load ptr, ptr %51, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %38, ptr noundef nonnull @.str.25, i32 noundef %41, i32 noundef %42, ptr noundef nonnull %45, ptr noundef %52) #5
  %53 = getelementptr inbounds %struct.audioformat, ptr %9, i32 0, i32 21
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 1073741824
  %56 = icmp eq i32 %55, 0
  %57 = load ptr, ptr %1, align 4
  br i1 %56, label %63, label %58

58:                                               ; preds = %33
  %59 = getelementptr inbounds %struct.audioformat, ptr %9, i32 0, i32 22
  %60 = load i32, ptr %59, align 8
  %61 = getelementptr inbounds %struct.audioformat, ptr %9, i32 0, i32 23
  %62 = load i32, ptr %61, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %57, ptr noundef nonnull @.str.28, i32 noundef %60, i32 noundef %62) #5
  br label %86

63:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %57, ptr noundef nonnull @.str.29) #5
  %64 = getelementptr inbounds %struct.audioformat, ptr %9, i32 0, i32 24
  %65 = load i32, ptr %64, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.audioformat, ptr %9, i32 0, i32 25
  %69 = load ptr, ptr %1, align 4
  %70 = load ptr, ptr %68, align 4
  %71 = load i32, ptr %70, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %69, ptr noundef nonnull @.str.31, i32 noundef %71) #5
  %72 = load i32, ptr %64, align 8
  %73 = icmp ugt i32 %72, 1
  br i1 %73, label %74, label %84

74:                                               ; preds = %74, %67
  %75 = phi i32 [ %81, %74 ], [ 1, %67 ]
  %76 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %76, ptr noundef nonnull @.str.30) #5
  %77 = load ptr, ptr %1, align 4
  %78 = load ptr, ptr %68, align 4
  %79 = getelementptr i32, ptr %78, i32 %75
  %80 = load i32, ptr %79, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %77, ptr noundef nonnull @.str.31, i32 noundef %80) #5
  %81 = add nuw i32 %75, 1
  %82 = load i32, ptr %64, align 8
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %74, label %84, !llvm.loop !9

84:                                               ; preds = %74, %67, %63
  %85 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %85, ptr noundef nonnull @.str.23) #5
  br label %86

86:                                               ; preds = %84, %58
  %87 = load i32, ptr %7, align 4
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %1, align 4
  %91 = getelementptr inbounds %struct.audioformat, ptr %9, i32 0, i32 18
  %92 = load i8, ptr %91, align 4
  %93 = zext i8 %92 to i32
  %94 = shl i32 125, %93
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %90, ptr noundef nonnull @.str.32, i32 noundef %94) #5
  br label %95

95:                                               ; preds = %89, %86
  %96 = load ptr, ptr %1, align 4
  %97 = getelementptr inbounds %struct.audioformat, ptr %9, i32 0, i32 4
  %98 = load i32, ptr %97, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %96, ptr noundef nonnull @.str.33, i32 noundef %98) #5
  %99 = getelementptr inbounds %struct.audioformat, ptr %9, i32 0, i32 30
  %100 = load i8, ptr %99, align 2, !range !11
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %95
  %103 = load ptr, ptr %1, align 4
  %104 = getelementptr inbounds %struct.audioformat, ptr %9, i32 0, i32 28
  %105 = load i8, ptr %104, align 8, !range !11
  %106 = zext i8 %105 to i32
  %107 = getelementptr inbounds %struct.audioformat, ptr %9, i32 0, i32 29
  %108 = load i8, ptr %107, align 1, !range !11
  %109 = zext i8 %108 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %103, ptr noundef nonnull @.str.34, i32 noundef %106, i32 noundef %109) #5
  br label %110

110:                                              ; preds = %102, %95
  %111 = getelementptr inbounds %struct.audioformat, ptr %9, i32 0, i32 27
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %139, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %115, ptr noundef nonnull @.str.35) #5
  %116 = load i8, ptr %112, align 1
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %137, label %118

118:                                              ; preds = %132, %114
  %119 = phi i32 [ %133, %132 ], [ 0, %114 ]
  %120 = getelementptr %struct.snd_pcm_chmap_elem, ptr %112, i32 0, i32 1, i32 %119
  %121 = load i8, ptr %120, align 1
  %122 = icmp ugt i8 %121, 34
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = zext i8 %121 to i32
  %125 = getelementptr [35 x ptr], ptr @channel_labels, i32 0, i32 %124
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %123, %118
  %129 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %129, ptr noundef nonnull @.str.36) #5
  br label %132

130:                                              ; preds = %123
  %131 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %131, ptr noundef nonnull @.str.22, ptr noundef nonnull %126) #5
  br label %132

132:                                              ; preds = %130, %128
  %133 = add nuw nsw i32 %119, 1
  %134 = load i8, ptr %112, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp ult i32 %133, %135
  br i1 %136, label %118, label %137

137:                                              ; preds = %132, %114
  %138 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %138, ptr noundef nonnull @.str.23) #5
  br label %139

139:                                              ; preds = %137, %110
  %140 = getelementptr inbounds %struct.audioformat, ptr %9, i32 0, i32 14
  %141 = load i8, ptr %140, align 8
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %163, label %143

143:                                              ; preds = %139
  %144 = load ptr, ptr %1, align 4
  %145 = zext i8 %141 to i32
  %146 = and i32 %145, 15
  %147 = and i32 %145, 128
  %148 = icmp eq i32 %147, 0
  %149 = select i1 %148, ptr @.str.27, ptr @.str.26
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %144, ptr noundef nonnull @.str.37, i32 noundef %145, i32 noundef %146, ptr noundef nonnull %149) #5
  %150 = load ptr, ptr %1, align 4
  %151 = getelementptr inbounds %struct.audioformat, ptr %9, i32 0, i32 15
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %150, ptr noundef nonnull @.str.38, i32 noundef %153) #5
  %154 = load ptr, ptr %1, align 4
  %155 = getelementptr inbounds %struct.audioformat, ptr %9, i32 0, i32 16
  %156 = load i8, ptr %155, align 2
  %157 = zext i8 %156 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %154, ptr noundef nonnull @.str.39, i32 noundef %157) #5
  %158 = load ptr, ptr %1, align 4
  %159 = getelementptr inbounds %struct.audioformat, ptr %9, i32 0, i32 13
  %160 = load i8, ptr %159, align 1, !range !11
  %161 = icmp eq i8 %160, 0
  %162 = select i1 %161, ptr @.str.42, ptr @.str.41
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %158, ptr noundef nonnull @.str.40, ptr noundef nonnull %162) #5
  br label %163

163:                                              ; preds = %143, %139
  %164 = load ptr, ptr %9, align 4
  %165 = icmp eq ptr %164, %3
  br i1 %165, label %166, label %8

166:                                              ; preds = %163, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_pcm_format_name(i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.peeled.count", i32 1}
!11 = !{i8 0, i8 2}
