; ModuleID = '/llk/IR/sound/usb/pcm.c_pt.bc'
source_filename = "../sound/usb/pcm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.audioformat = type { %struct.list_head, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, i8, ptr, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.snd_usb_stream = type { ptr, ptr, i32, i32, [2 x %struct.snd_usb_substream], %struct.list_head }
%struct.snd_usb_substream = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i64, i32, %struct.list_head, %struct.spinlock, i32, %struct.anon.71, i8, i8, ptr }
%struct.anon.71 = type { i32, i32, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8 }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, ptr, ptr, %struct.device }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
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
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_usb_endpoint = type { ptr, ptr, i32, %struct.atomic_t, i32, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, [12 x %struct.snd_urb_ctx], [12 x %struct.snd_usb_packet_info], i32, i32, %struct.list_head, i32, i32, i32, %struct.atomic_t, ptr, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i8, %struct.spinlock, %struct.list_head }
%struct.snd_urb_ctx = type { ptr, i32, ptr, ptr, i32, i32, i32, [48 x i32], %struct.list_head }
%struct.snd_usb_packet_info = type { [48 x i32], i32 }
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.snd_pcm_mmap_control = type { [0 x i8], i32, [0 x i8], [0 x i8], i32, [4 x i8] }

@.str = private unnamed_addr constant [36 x i8] c"failed to enable PITCH for EP 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"%d:%d : invalid sync pipe. bmAttributes %02x, bLength %d, bSynchAddress %02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"%d:%d : invalid sync pipe. is_playback %d, ep %02x, bSynchAddress %02x\0A\00", align 1
@snd_usb_playback_ops = internal constant %struct.snd_pcm_ops { ptr @snd_usb_pcm_open, ptr @snd_usb_pcm_close, ptr null, ptr @snd_usb_hw_params, ptr @snd_usb_hw_free, ptr @snd_usb_pcm_prepare, ptr @snd_usb_substream_playback_trigger, ptr @snd_usb_pcm_sync_stop, ptr @snd_usb_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_usb_pcm_playback_ack }, align 4
@snd_usb_capture_ops = internal constant %struct.snd_pcm_ops { ptr @snd_usb_pcm_open, ptr @snd_usb_pcm_close, ptr null, ptr @snd_usb_hw_params, ptr @snd_usb_hw_free, ptr @snd_usb_pcm_prepare, ptr @snd_usb_substream_capture_trigger, ptr @snd_usb_pcm_sync_stop, ptr @snd_usb_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@snd_usb_use_vmalloc = external dso_local local_unnamed_addr global i8, align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Cannot change Power Domain ID: %d to state: %d. Err: %d\0A\00", align 1
@snd_usb_hardware = internal unnamed_addr constant %struct.snd_pcm_hardware { i32 590099, i64 0, i32 0, i32 0, i32 0, i32 1, i32 256, i32 1048576, i32 64, i32 524288, i32 2, i32 1024, i32 0 }, align 8
@__const.fill_playback_urb_dsd_dop.marker = private unnamed_addr constant [2 x i8] c"\05\FA", align 1
@__func__.retire_capture_urb = private unnamed_addr constant [19 x i8] c"retire_capture_urb\00", align 1
@retire_capture_urb._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Corrected urb data len. %d->%d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_init_pitch(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 10
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 19
  %11 = load i8, ptr %10, align 1
  switch i8 %11, label %39 [
    i8 0, label %12
    i8 32, label %22
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 11
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 1, ptr %4, align 1
  %17 = load i32, ptr %16, align 8
  %18 = shl i32 %17, 8
  %19 = or i32 %18, -2147483648
  %20 = zext i8 %14 to i16
  %21 = call i32 @snd_usb_ctl_msg(ptr noundef %16, i32 noundef %19, i8 noundef zeroext 1, i8 noundef zeroext 34, i16 noundef zeroext 512, i16 noundef zeroext %20, ptr noundef nonnull %4, i16 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  br label %29

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 1, ptr %3, align 1
  %25 = load i32, ptr %24, align 8
  %26 = shl i32 %25, 8
  %27 = or i32 %26, -2147483648
  %28 = call i32 @snd_usb_ctl_msg(ptr noundef %24, i32 noundef %27, i8 noundef zeroext 1, i8 noundef zeroext 34, i16 noundef zeroext 256, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  br label %29

29:                                               ; preds = %22, %12
  %30 = phi i32 [ %28, %22 ], [ %21, %12 ]
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 15
  %36 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 11
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str, i32 noundef %38) #10
  br label %39

39:                                               ; preds = %32, %29, %9, %2
  %40 = phi i32 [ %30, %32 ], [ 0, %2 ], [ 0, %9 ], [ 0, %29 ]
  ret i32 %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_audioformat_set_sync_ep(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 6
  %6 = load i8, ptr %5, align 8
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = tail call ptr @snd_usb_get_host_interface(ptr noundef %0, i32 noundef %7, i32 noundef %10) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %105, label %13

13:                                               ; preds = %2
  %14 = tail call i32 @snd_usb_parse_implicit_fb_quirk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11) #9
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %105, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %11, i32 0, i32 4
  %18 = load i8, ptr %17, align 1
  %19 = icmp ult i8 %18, 2
  br i1 %19, label %105, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.usb_host_interface, ptr %11, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %22, i32 0, i32 2
  %24 = load i8, ptr %23, align 2
  %25 = icmp slt i8 %24, 0
  %26 = xor i1 %25, true
  %27 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 12
  %28 = load i8, ptr %27, align 2
  %29 = and i8 %28, 12
  %30 = and i8 %28, 8
  %31 = icmp ne i8 %30, 0
  %32 = icmp ne i8 %29, 8
  %33 = select i1 %25, i1 %32, i1 %31
  br i1 %33, label %105, label %34

34:                                               ; preds = %20
  %35 = getelementptr %struct.usb_host_endpoint, ptr %22, i32 1, i32 0, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 3
  %39 = icmp eq i32 %38, 1
  %40 = getelementptr %struct.usb_host_endpoint, ptr %22, i32 1
  %41 = load i8, ptr %40, align 4
  br i1 %39, label %45, label %42

42:                                               ; preds = %34
  %43 = getelementptr %struct.usb_host_endpoint, ptr %22, i32 1, i32 0, i32 7
  %44 = load i8, ptr %43, align 4
  br label %51

45:                                               ; preds = %34
  %46 = icmp ugt i8 %41, 8
  br i1 %46, label %47, label %63

47:                                               ; preds = %45
  %48 = getelementptr %struct.usb_host_endpoint, ptr %22, i32 1, i32 0, i32 7
  %49 = load i8, ptr %48, align 4
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %47, %42
  %52 = phi i8 [ %44, %42 ], [ %49, %47 ]
  %53 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  %54 = load i8, ptr %5, align 8
  %55 = zext i8 %54 to i32
  %56 = load i8, ptr %8, align 1
  %57 = zext i8 %56 to i32
  %58 = zext i8 %41 to i32
  %59 = zext i8 %52 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.1, i32 noundef %55, i32 noundef %57, i32 noundef %37, i32 noundef %58, i32 noundef %59) #10
  %60 = icmp eq i8 %29, 0
  %61 = select i1 %26, i1 %60, i1 false
  %62 = select i1 %61, i32 0, i32 -22
  br label %105

63:                                               ; preds = %47, %45
  %64 = getelementptr %struct.usb_host_endpoint, ptr %22, i32 1, i32 0, i32 2
  %65 = load i8, ptr %64, align 2
  %66 = zext i8 %65 to i32
  %67 = load i8, ptr %22, align 4
  %68 = icmp ugt i8 %67, 8
  br i1 %68, label %69, label %92

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %22, i32 0, i32 7
  %71 = load i8, ptr %70, align 4
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %92, label %73

73:                                               ; preds = %69
  %74 = or i8 %71, -128
  %75 = icmp eq i8 %65, %74
  %76 = select i1 %25, i1 true, i1 %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = and i8 %71, 127
  %79 = icmp eq i8 %65, %78
  %80 = select i1 %26, i1 true, i1 %79
  br i1 %80, label %92, label %81

81:                                               ; preds = %77, %73
  %82 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  %83 = load i8, ptr %5, align 8
  %84 = zext i8 %83 to i32
  %85 = load i8, ptr %8, align 1
  %86 = zext i8 %85 to i32
  %87 = zext i1 %26 to i32
  %88 = zext i8 %71 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.2, i32 noundef %84, i32 noundef %86, i32 noundef %87, i32 noundef %66, i32 noundef %88) #10
  %89 = icmp eq i8 %29, 0
  %90 = select i1 %26, i1 %89, i1 false
  %91 = select i1 %90, i32 0, i32 -22
  br label %105

92:                                               ; preds = %77, %69, %63
  %93 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 14
  store i8 %65, ptr %93, align 8
  %94 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %11, i32 0, i32 2
  %95 = load i8, ptr %94, align 1
  %96 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 15
  store i8 %95, ptr %96, align 1
  %97 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %11, i32 0, i32 3
  %98 = load i8, ptr %97, align 1
  %99 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 16
  store i8 %98, ptr %99, align 2
  %100 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 17
  store i8 1, ptr %100, align 1
  %101 = and i32 %37, 48
  %102 = icmp eq i32 %101, 32
  br i1 %102, label %103, label %105

103:                                              ; preds = %92
  %104 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 13
  store i8 1, ptr %104, align 1
  br label %105

105:                                              ; preds = %103, %92, %81, %51, %20, %16, %13, %2
  %106 = phi i32 [ 0, %2 ], [ 0, %13 ], [ 0, %16 ], [ 0, %20 ], [ %62, %51 ], [ %91, %81 ], [ 0, %103 ], [ 0, %92 ]
  ret i32 %106
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_get_host_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_parse_implicit_fb_quirk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_pcm_suspend(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_usb_stream, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @snd_usb_power_domain_set(ptr noundef %8, ptr noundef nonnull %3, i8 noundef zeroext 2) #9
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 0, i32 1
  br label %25

13:                                               ; preds = %5, %1
  %14 = getelementptr %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 1, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %13
  %18 = getelementptr %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @snd_usb_power_domain_set(ptr noundef %20, ptr noundef nonnull %15, i8 noundef zeroext 2) #9
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = getelementptr %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 1, i32 1
  br label %25

25:                                               ; preds = %23, %11
  %26 = phi ptr [ %24, %23 ], [ %12, %11 ]
  %27 = phi ptr [ %14, %23 ], [ %2, %11 ]
  %28 = phi i32 [ %21, %23 ], [ %9, %11 ]
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  %31 = load ptr, ptr %27, align 8
  %32 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.3, i32 noundef %32, i32 noundef 2, i32 noundef %28) #10
  br label %33

33:                                               ; preds = %25, %17, %13
  %34 = phi i32 [ 0, %13 ], [ 0, %17 ], [ %28, %25 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_pcm_resume(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_usb_stream, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @snd_usb_power_domain_set(ptr noundef %8, ptr noundef nonnull %3, i8 noundef zeroext 1) #9
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 0, i32 1
  br label %25

13:                                               ; preds = %5, %1
  %14 = getelementptr %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 1, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %13
  %18 = getelementptr %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @snd_usb_power_domain_set(ptr noundef %20, ptr noundef nonnull %15, i8 noundef zeroext 1) #9
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = getelementptr %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 1, i32 1
  br label %25

25:                                               ; preds = %23, %11
  %26 = phi ptr [ %24, %23 ], [ %12, %11 ]
  %27 = phi ptr [ %14, %23 ], [ %2, %11 ]
  %28 = phi i32 [ %21, %23 ], [ %9, %11 ]
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  %31 = load ptr, ptr %27, align 8
  %32 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.3, i32 noundef %32, i32 noundef 1, i32 noundef %28) #10
  br label %33

33:                                               ; preds = %25, %17, %13
  %34 = phi i32 [ 0, %13 ], [ 0, %17 ], [ %28, %25 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usb_set_pcm_ops(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @snd_usb_playback_ops, ptr @snd_usb_capture_ops
  tail call void @snd_pcm_set_ops(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usb_preallocate_buffer(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.snd_usb_stream, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.snd_pcm, ptr %4, i32 0, i32 8, i32 %6, i32 4
  %8 = load ptr, ptr %7, align 8
  %9 = load i8, ptr @snd_usb_use_vmalloc, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @snd_pcm_set_managed_buffer(ptr noundef %8, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  br label %21

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 12
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.usb_bus, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @snd_pcm_set_managed_buffer(ptr noundef %8, i32 noundef 2, ptr noundef %19, i32 noundef 65536, i32 noundef 524288) #9
  br label %21

21:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_ctl_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_power_domain_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_usb_pcm_open(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.snd_usb_stream, ptr %5, i32 0, i32 4, i32 %3
  %9 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 46
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(64) @snd_usb_hardware, i32 64, i1 false)
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 27
  %14 = load i8, ptr %13, align 2, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 590131, ptr %9, align 8
  br label %17

17:                                               ; preds = %16, %11, %1
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 44
  store ptr %8, ptr %18, align 8
  %19 = getelementptr %struct.snd_usb_stream, ptr %5, i32 0, i32 4, i32 %3, i32 2
  store ptr %0, ptr %19, align 8
  %20 = getelementptr %struct.snd_usb_stream, ptr %5, i32 0, i32 4, i32 %3, i32 29
  %21 = getelementptr %struct.snd_usb_stream, ptr %5, i32 0, i32 4, i32 %3, i32 29, i32 2
  store i32 0, ptr %21, align 4
  %22 = getelementptr %struct.snd_usb_stream, ptr %5, i32 0, i32 4, i32 %3, i32 29, i32 1
  store i32 0, ptr %22, align 4
  store i32 1, ptr %20, align 4
  %23 = getelementptr %struct.snd_usb_stream, ptr %5, i32 0, i32 4, i32 %3, i32 24
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 46, i32 1
  store i64 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 46, i32 3
  store i32 2147483647, ptr %26, align 4
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 46, i32 4
  store i32 0, ptr %27, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 46, i32 5
  store i32 256, ptr %28, align 4
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 46, i32 6
  store i32 0, ptr %29, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 46, i32 2
  store i32 0, ptr %30, align 8
  %31 = getelementptr %struct.snd_usb_stream, ptr %5, i32 0, i32 4, i32 %3, i32 26
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %88, label %34

34:                                               ; preds = %17
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 46, i32 9
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 46, i32 8
  br label %37

37:                                               ; preds = %80, %34
  %38 = phi i32 [ 0, %34 ], [ %71, %80 ]
  %39 = phi i32 [ 256, %34 ], [ %67, %80 ]
  %40 = phi i32 [ 0, %34 ], [ %59, %80 ]
  %41 = phi i32 [ 2147483647, %34 ], [ %53, %80 ]
  %42 = phi i32 [ 0, %34 ], [ %47, %80 ]
  %43 = phi ptr [ %32, %34 ], [ %86, %80 ]
  %44 = phi i32 [ -1, %34 ], [ %85, %80 ]
  %45 = getelementptr inbounds %struct.audioformat, ptr %43, i32 0, i32 21
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, %42
  store i32 %47, ptr %30, align 8
  %48 = getelementptr inbounds %struct.audioformat, ptr %43, i32 0, i32 22
  %49 = load i32, ptr %48, align 8
  %50 = icmp ugt i32 %41, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  store i32 %49, ptr %26, align 4
  br label %52

52:                                               ; preds = %51, %37
  %53 = phi i32 [ %49, %51 ], [ %41, %37 ]
  %54 = getelementptr inbounds %struct.audioformat, ptr %43, i32 0, i32 23
  %55 = load i32, ptr %54, align 4
  %56 = icmp ult i32 %40, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 %55, ptr %27, align 8
  br label %58

58:                                               ; preds = %57, %52
  %59 = phi i32 [ %55, %57 ], [ %40, %52 ]
  %60 = getelementptr inbounds %struct.audioformat, ptr %43, i32 0, i32 2
  %61 = load i32, ptr %60, align 8
  %62 = icmp ugt i32 %39, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  store i32 %61, ptr %28, align 4
  %64 = load i32, ptr %60, align 8
  br label %65

65:                                               ; preds = %63, %58
  %66 = phi i32 [ %64, %63 ], [ %61, %58 ]
  %67 = phi i32 [ %61, %63 ], [ %39, %58 ]
  %68 = icmp ult i32 %38, %66
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 %66, ptr %29, align 8
  br label %70

70:                                               ; preds = %69, %65
  %71 = phi i32 [ %66, %69 ], [ %38, %65 ]
  %72 = getelementptr inbounds %struct.audioformat, ptr %43, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.audioformat, ptr %43, i32 0, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  store i32 %77, ptr %35, align 4
  store i32 %77, ptr %36, align 8
  br label %80

80:                                               ; preds = %79, %75, %70
  %81 = getelementptr inbounds %struct.audioformat, ptr %43, i32 0, i32 18
  %82 = load i8, ptr %81, align 4
  %83 = zext i8 %82 to i32
  %84 = shl i32 125, %83
  %85 = tail call i32 @llvm.umin.i32(i32 %44, i32 %84) #9
  %86 = load ptr, ptr %43, align 4
  %87 = icmp eq ptr %86, %31
  br i1 %87, label %88, label %37

88:                                               ; preds = %80, %17
  %89 = phi i32 [ -1, %17 ], [ %85, %80 ]
  %90 = getelementptr %struct.snd_usb_stream, ptr %5, i32 0, i32 4, i32 %3, i32 23
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 2
  %93 = select i1 %92, i32 1000, i32 %89
  %94 = icmp eq i32 %93, 1000
  %95 = select i1 %94, i32 -1, i32 12
  %96 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %7, i32 noundef 12, i32 noundef %93, i32 noundef -1) #9
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %147, label %98

98:                                               ; preds = %88
  %99 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %7, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @hw_rule_rate, ptr noundef %8, i32 noundef 11, i32 noundef 1, i32 noundef 10, i32 noundef %95, i32 noundef -1) #9
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %147, label %101

101:                                              ; preds = %98
  %102 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %7, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @hw_rule_channels, ptr noundef %8, i32 noundef 10, i32 noundef 1, i32 noundef 11, i32 noundef %95, i32 noundef -1) #9
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %147, label %104

104:                                              ; preds = %101
  %105 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %7, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @hw_rule_format, ptr noundef %8, i32 noundef 1, i32 noundef 11, i32 noundef 10, i32 noundef %95, i32 noundef -1) #9
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %147, label %107

107:                                              ; preds = %104
  br i1 %94, label %111, label %108

108:                                              ; preds = %107
  %109 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %7, i32 noundef 0, i32 noundef 12, ptr noundef nonnull @hw_rule_period_time, ptr noundef %8, i32 noundef 1, i32 noundef 10, i32 noundef 11, i32 noundef -1) #9
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %147, label %111

111:                                              ; preds = %108, %107
  %112 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %7, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @hw_rule_format_implicit_fb, ptr noundef %8, i32 noundef 1, i32 noundef -1) #9
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %147, label %114

114:                                              ; preds = %111
  %115 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %7, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @hw_rule_rate_implicit_fb, ptr noundef %8, i32 noundef 11, i32 noundef -1) #9
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %147, label %117

117:                                              ; preds = %114
  %118 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %7, i32 noundef 0, i32 noundef 13, ptr noundef nonnull @hw_rule_period_size_implicit_fb, ptr noundef %8, i32 noundef 13, i32 noundef -1) #9
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %147, label %120

120:                                              ; preds = %117
  %121 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %7, i32 noundef 0, i32 noundef 15, ptr noundef nonnull @hw_rule_periods_implicit_fb, ptr noundef %8, i32 noundef 15, i32 noundef -1) #9
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %147, label %123

123:                                              ; preds = %127, %120
  %124 = phi ptr [ %125, %127 ], [ %31, %120 ]
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, %31
  br i1 %126, label %134, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.audioformat, ptr %125, i32 0, i32 13
  %129 = load i8, ptr %128, align 1, !range !8
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %123, label %131

131:                                              ; preds = %127
  %132 = load i32, ptr %9, align 8
  %133 = or i32 %132, 2097152
  store i32 %133, ptr %9, align 8
  br label %134

134:                                              ; preds = %131, %123
  %135 = load ptr, ptr %8, align 8
  %136 = load ptr, ptr %135, align 8
  %137 = tail call i32 @snd_usb_autoresume(ptr noundef %136) #9
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.snd_usb_stream, ptr %5, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = tail call i32 @snd_media_stream_init(ptr noundef %8, ptr noundef %141, i32 noundef %3) #9
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load ptr, ptr %8, align 8
  %146 = load ptr, ptr %145, align 8
  tail call void @snd_usb_autosuspend(ptr noundef %146) #9
  br label %147

147:                                              ; preds = %144, %139, %134, %120, %117, %114, %111, %108, %104, %101, %98, %88
  %148 = phi i32 [ %137, %134 ], [ %142, %144 ], [ %142, %139 ], [ %121, %120 ], [ %118, %117 ], [ %115, %114 ], [ %112, %111 ], [ %109, %108 ], [ %105, %104 ], [ %102, %101 ], [ %99, %98 ], [ %96, %88 ]
  ret i32 %148
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_usb_pcm_close(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.snd_usb_stream, ptr %5, i32 0, i32 4, i32 %3
  tail call void @snd_media_stop_pipeline(ptr noundef %6) #9
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %8) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = getelementptr %struct.snd_usb_stream, ptr %5, i32 0, i32 4, i32 %3, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 @snd_usb_power_domain_set(ptr noundef %17, ptr noundef nonnull %13, i8 noundef zeroext 1) #9
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = getelementptr %struct.snd_usb_stream, ptr %5, i32 0, i32 4, i32 %3, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15
  %24 = load ptr, ptr %12, align 8
  %25 = load i32, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.3, i32 noundef %25, i32 noundef 1, i32 noundef %18) #10
  br label %26

26:                                               ; preds = %20, %15, %11
  %27 = phi i32 [ %18, %20 ], [ 0, %11 ], [ 0, %15 ]
  %28 = load ptr, ptr %6, align 8
  %29 = load ptr, ptr %28, align 8
  tail call void @snd_usb_unlock_shutdown(ptr noundef %29) #9
  %30 = icmp slt i32 %27, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26, %1
  %32 = getelementptr %struct.snd_usb_stream, ptr %5, i32 0, i32 4, i32 %3, i32 2
  store ptr null, ptr %32, align 8
  %33 = load ptr, ptr %6, align 8
  %34 = load ptr, ptr %33, align 8
  tail call void @snd_usb_autosuspend(ptr noundef %34) #9
  br label %35

35:                                               ; preds = %31, %26
  %36 = phi i32 [ 0, %31 ], [ %27, %26 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_usb_hw_params(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 44
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @snd_media_start_pipeline(ptr noundef %6) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %199

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 26
  %13 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %21, %11
  %17 = phi i32 [ 0, %11 ], [ 32, %21 ]
  %18 = phi i32 [ %14, %11 ], [ %23, %21 ]
  %19 = tail call i32 @llvm.cttz.i32(i32 %18, i1 true) #9, !range !9
  %20 = or i32 %19, %17
  br label %25

21:                                               ; preds = %11
  %22 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %16

25:                                               ; preds = %21, %16
  %26 = phi i32 [ %20, %16 ], [ 0, %21 ]
  %27 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %12, align 4
  %32 = icmp eq ptr %31, %12
  br i1 %32, label %197, label %33

33:                                               ; preds = %25
  %34 = zext i32 %26 to i64
  %35 = shl nuw i64 1, %34
  %36 = icmp eq ptr %6, null
  %37 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 3
  br label %38

38:                                               ; preds = %110, %33
  %39 = phi ptr [ %31, %33 ], [ %113, %110 ]
  %40 = phi ptr [ null, %33 ], [ %112, %110 ]
  %41 = phi i32 [ 0, %33 ], [ %111, %110 ]
  %42 = getelementptr inbounds %struct.audioformat, ptr %39, i32 0, i32 1
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, %35
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %110, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.audioformat, ptr %39, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = icmp eq i32 %48, %30
  br i1 %49, label %50, label %110

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.audioformat, ptr %39, i32 0, i32 22
  %52 = load i32, ptr %51, align 8
  %53 = icmp ugt i32 %52, %28
  br i1 %53, label %110, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.audioformat, ptr %39, i32 0, i32 23
  %56 = load i32, ptr %55, align 4
  %57 = icmp ult i32 %56, %28
  br i1 %57, label %110, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.audioformat, ptr %39, i32 0, i32 21
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 1073741824
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.audioformat, ptr %39, i32 0, i32 24
  %65 = load i32, ptr %64, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %110, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.audioformat, ptr %39, i32 0, i32 25
  %69 = load ptr, ptr %68, align 4
  br label %73

70:                                               ; preds = %73
  %71 = add nuw i32 %74, 1
  %72 = icmp eq i32 %71, %65
  br i1 %72, label %110, label %73

73:                                               ; preds = %70, %67
  %74 = phi i32 [ 0, %67 ], [ %71, %70 ]
  %75 = getelementptr i32, ptr %69, i32 %74
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, %28
  br i1 %77, label %78, label %70

78:                                               ; preds = %73, %58
  %79 = getelementptr inbounds %struct.audioformat, ptr %39, i32 0, i32 12
  %80 = load i8, ptr %79, align 2
  %81 = and i8 %80, 12
  %82 = zext i8 %81 to i32
  %83 = icmp eq ptr %40, null
  br i1 %83, label %110, label %84

84:                                               ; preds = %78
  %85 = icmp eq i32 %41, %82
  %86 = select i1 %36, i1 true, i1 %85
  br i1 %86, label %102, label %87

87:                                               ; preds = %84
  %88 = trunc i8 %81 to i4
  switch i4 %88, label %95 [
    i4 4, label %89
    i4 -8, label %92
  ]

89:                                               ; preds = %87
  %90 = load i32, ptr %37, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %110, label %95

92:                                               ; preds = %87
  %93 = load i32, ptr %37, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %110, label %95

95:                                               ; preds = %92, %89, %87
  switch i32 %41, label %102 [
    i32 4, label %96
    i32 8, label %99
  ]

96:                                               ; preds = %95
  %97 = load i32, ptr %37, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %110, label %102

99:                                               ; preds = %95
  %100 = load i32, ptr %37, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %110, label %102

102:                                              ; preds = %99, %96, %95, %84
  %103 = getelementptr inbounds %struct.audioformat, ptr %39, i32 0, i32 20
  %104 = load i32, ptr %103, align 8
  %105 = getelementptr inbounds %struct.audioformat, ptr %40, i32 0, i32 20
  %106 = load i32, ptr %105, align 8
  %107 = icmp ugt i32 %104, %106
  %108 = select i1 %107, i32 %82, i32 %41
  %109 = select i1 %107, ptr %39, ptr %40
  br label %110

110:                                              ; preds = %102, %99, %96, %92, %89, %78, %70, %63, %54, %50, %46, %38
  %111 = phi i32 [ %41, %46 ], [ %41, %50 ], [ %41, %54 ], [ %41, %89 ], [ %41, %92 ], [ %41, %38 ], [ %82, %78 ], [ %82, %99 ], [ %82, %96 ], [ %108, %102 ], [ %41, %63 ], [ %41, %70 ]
  %112 = phi ptr [ %40, %46 ], [ %40, %50 ], [ %40, %54 ], [ %40, %89 ], [ %40, %92 ], [ %40, %38 ], [ %39, %78 ], [ %39, %99 ], [ %39, %96 ], [ %109, %102 ], [ %40, %63 ], [ %40, %70 ]
  %113 = load ptr, ptr %39, align 4
  %114 = icmp eq ptr %113, %12
  br i1 %114, label %115, label %38

115:                                              ; preds = %110
  %116 = icmp eq ptr %112, null
  br i1 %116, label %197, label %117

117:                                              ; preds = %115
  %118 = getelementptr inbounds %struct.audioformat, ptr %112, i32 0, i32 13
  %119 = load i8, ptr %118, align 1, !range !8
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = tail call ptr @snd_usb_find_implicit_fb_sync_format(ptr noundef %8, ptr noundef nonnull %112, ptr noundef %1, i32 noundef %125) #9
  %127 = icmp eq ptr %126, null
  br i1 %127, label %197, label %128

128:                                              ; preds = %121, %117
  %129 = phi ptr [ %126, %121 ], [ %112, %117 ]
  %130 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %8) #9
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %197, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 6
  %134 = load ptr, ptr %133, align 8
  %135 = icmp eq ptr %134, null
  br i1 %135, label %147, label %136

136:                                              ; preds = %132
  %137 = load ptr, ptr %6, align 8
  %138 = load ptr, ptr %137, align 8
  %139 = tail call i32 @snd_usb_power_domain_set(ptr noundef %138, ptr noundef nonnull %134, i8 noundef zeroext 0) #9
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.usb_device, ptr %143, i32 0, i32 15
  %145 = load ptr, ptr %133, align 8
  %146 = load i32, ptr %145, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.3, i32 noundef %146, i32 noundef 0, i32 noundef %139) #10
  br label %182

147:                                              ; preds = %136, %132
  %148 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 20
  %149 = load ptr, ptr %148, align 8
  %150 = icmp eq ptr %149, null
  br i1 %150, label %163, label %151

151:                                              ; preds = %147
  %152 = tail call zeroext i1 @snd_usb_endpoint_compatible(ptr noundef %8, ptr noundef nonnull %149, ptr noundef nonnull %112, ptr noundef %1) #9
  br i1 %152, label %195, label %153

153:                                              ; preds = %151
  %154 = load ptr, ptr %148, align 8
  %155 = icmp eq ptr %154, null
  br i1 %155, label %158, label %156

156:                                              ; preds = %153
  tail call void @snd_usb_endpoint_set_sync(ptr noundef %8, ptr noundef nonnull %154, ptr noundef null) #9
  %157 = load ptr, ptr %148, align 8
  tail call void @snd_usb_endpoint_close(ptr noundef %8, ptr noundef %157) #9
  store ptr null, ptr %148, align 8
  br label %158

158:                                              ; preds = %156, %153
  %159 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 21
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %158
  tail call void @snd_usb_endpoint_close(ptr noundef %8, ptr noundef nonnull %160) #9
  store ptr null, ptr %159, align 4
  br label %163

163:                                              ; preds = %162, %158, %147
  %164 = tail call ptr @snd_usb_endpoint_open(ptr noundef %8, ptr noundef nonnull %112, ptr noundef %1, i1 noundef zeroext false) #9
  store ptr %164, ptr %148, align 8
  %165 = icmp eq ptr %164, null
  br i1 %165, label %182, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.audioformat, ptr %112, i32 0, i32 14
  %168 = load i8, ptr %167, align 8
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %177, label %170

170:                                              ; preds = %166
  %171 = icmp eq ptr %112, %129
  %172 = tail call ptr @snd_usb_endpoint_open(ptr noundef %8, ptr noundef nonnull %129, ptr noundef %1, i1 noundef zeroext %171) #9
  %173 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 21
  store ptr %172, ptr %173, align 4
  %174 = icmp eq ptr %172, null
  br i1 %174, label %182, label %175

175:                                              ; preds = %170
  %176 = load ptr, ptr %148, align 8
  tail call void @snd_usb_endpoint_set_sync(ptr noundef %8, ptr noundef %176, ptr noundef nonnull %172) #9
  br label %177

177:                                              ; preds = %175, %166
  %178 = getelementptr inbounds %struct.snd_usb_audio, ptr %8, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %178) #9
  %179 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 5
  store ptr %112, ptr %179, align 4
  tail call void @mutex_unlock(ptr noundef %178) #9
  %180 = tail call fastcc i32 @configure_endpoints(ptr noundef %8, ptr noundef %6)
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %195

182:                                              ; preds = %177, %170, %163, %141
  %183 = phi i32 [ %180, %177 ], [ -22, %170 ], [ -22, %163 ], [ %139, %141 ]
  %184 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 20
  %185 = load ptr, ptr %184, align 8
  %186 = icmp eq ptr %185, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %182
  tail call void @snd_usb_endpoint_set_sync(ptr noundef %8, ptr noundef nonnull %185, ptr noundef null) #9
  %188 = load ptr, ptr %184, align 8
  tail call void @snd_usb_endpoint_close(ptr noundef %8, ptr noundef %188) #9
  store ptr null, ptr %184, align 8
  br label %189

189:                                              ; preds = %187, %182
  %190 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 21
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %194, label %193

193:                                              ; preds = %189
  tail call void @snd_usb_endpoint_close(ptr noundef %8, ptr noundef nonnull %191) #9
  store ptr null, ptr %190, align 4
  br label %194

194:                                              ; preds = %193, %189
  tail call void @snd_usb_unlock_shutdown(ptr noundef %8) #9
  br label %197

195:                                              ; preds = %177, %151
  %196 = phi i32 [ %180, %177 ], [ 0, %151 ]
  tail call void @snd_usb_unlock_shutdown(ptr noundef %8) #9
  br label %199

197:                                              ; preds = %194, %128, %121, %115, %25
  %198 = phi i32 [ %183, %194 ], [ -22, %121 ], [ -22, %115 ], [ %130, %128 ], [ -22, %25 ]
  tail call void @snd_media_stop_pipeline(ptr noundef %6) #9
  br label %199

199:                                              ; preds = %197, %195, %2
  %200 = phi i32 [ %9, %2 ], [ %198, %197 ], [ %196, %195 ]
  ret i32 %200
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_usb_hw_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  tail call void @snd_media_stop_pipeline(ptr noundef %5) #9
  %8 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 5
  store ptr null, ptr %9, align 4
  tail call void @mutex_unlock(ptr noundef %8) #9
  %10 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %7) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 22
  %14 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %13) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %13) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %24

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 21
  %21 = load ptr, ptr %20, align 4
  tail call void @snd_usb_endpoint_stop(ptr noundef %21, i1 noundef zeroext false) #9
  %22 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %13) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %16
  %25 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 20
  %26 = load ptr, ptr %25, align 8
  tail call void @snd_usb_endpoint_stop(ptr noundef %26, i1 noundef zeroext false) #9
  br label %27

27:                                               ; preds = %24, %19
  %28 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 21
  %29 = load ptr, ptr %28, align 4
  tail call void @snd_usb_endpoint_sync_pending_stop(ptr noundef %29) #9
  %30 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 20
  %31 = load ptr, ptr %30, align 8
  tail call void @snd_usb_endpoint_sync_pending_stop(ptr noundef %31) #9
  br label %32

32:                                               ; preds = %27, %16
  %33 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 20
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  tail call void @snd_usb_endpoint_set_sync(ptr noundef %7, ptr noundef nonnull %34, ptr noundef null) #9
  %37 = load ptr, ptr %33, align 8
  tail call void @snd_usb_endpoint_close(ptr noundef %7, ptr noundef %37) #9
  store ptr null, ptr %33, align 8
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 21
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @snd_usb_endpoint_close(ptr noundef %7, ptr noundef nonnull %40) #9
  store ptr null, ptr %39, align 4
  br label %43

43:                                               ; preds = %42, %38
  tail call void @snd_usb_unlock_shutdown(ptr noundef %7) #9
  br label %44

44:                                               ; preds = %43, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_usb_pcm_prepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %7) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %61, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 20
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %59, label %14

14:                                               ; preds = %10
  %15 = tail call fastcc i32 @configure_endpoints(ptr noundef %7, ptr noundef %5)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %59, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %21 = load i32, ptr %20, align 8
  %22 = mul i32 %21, %19
  %23 = lshr i32 %22, 3
  %24 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 14
  store i32 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 15
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 16
  store i32 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 17
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 28
  store i32 0, ptr %28, align 8
  %29 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 13
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 9
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %49, label %34

34:                                               ; preds = %17
  %35 = load ptr, ptr %5, align 8
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.snd_usb_audio, ptr %36, i32 0, i32 27
  %38 = load i8, ptr %37, align 2, !range !8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 30
  %42 = load i32, ptr %41, align 4
  %43 = load i32, ptr %18, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %11, align 8
  %47 = tail call i32 @snd_usb_endpoint_implicit_feedback_sink(ptr noundef %46) #9
  %48 = icmp eq i32 %47, 0
  br label %49

49:                                               ; preds = %45, %40, %34, %17
  %50 = phi i1 [ false, %17 ], [ false, %34 ], [ false, %40 ], [ %48, %45 ]
  %51 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 31
  %52 = zext i1 %50 to i8
  store i8 %52, ptr %51, align 1
  %53 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = select i1 %55, i1 true, i1 %50
  br i1 %56, label %59, label %57

57:                                               ; preds = %49
  %58 = tail call fastcc i32 @start_endpoints(ptr noundef %5)
  br label %59

59:                                               ; preds = %57, %49, %14, %10
  %60 = phi i32 [ %15, %14 ], [ %58, %57 ], [ %15, %49 ], [ -5, %10 ]
  tail call void @snd_usb_unlock_shutdown(ptr noundef %7) #9
  br label %61

61:                                               ; preds = %59, %1
  %62 = phi i32 [ %60, %59 ], [ %8, %1 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_usb_substream_playback_trigger(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 44
  %6 = load ptr, ptr %5, align 8
  switch i32 %1, label %63 [
    i32 1, label %7
    i32 4, label %9
    i32 5, label %34
    i32 0, label %34
    i32 3, label %57
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 30
  store i8 1, ptr %8, align 8
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 20
  %11 = load ptr, ptr %10, align 8
  tail call void @snd_usb_endpoint_set_callback(ptr noundef %11, ptr noundef nonnull @prepare_playback_urb, ptr noundef nonnull @retire_playback_urb, ptr noundef %6) #9
  %12 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 31
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp ne i8 %13, 0
  %15 = icmp eq i32 %1, 1
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %30

17:                                               ; preds = %9
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 30
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 18
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i8 0, ptr %12, align 1
  br label %25

25:                                               ; preds = %24, %17
  %26 = tail call fastcc i32 @start_endpoints(ptr noundef %6)
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load ptr, ptr %10, align 8
  tail call void @snd_usb_endpoint_set_callback(ptr noundef %29, ptr noundef null, ptr noundef null, ptr noundef null) #9
  br label %63

30:                                               ; preds = %25, %9
  %31 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 12
  %32 = load i8, ptr %31, align 8
  %33 = or i8 %32, 1
  store i8 %33, ptr %31, align 8
  br label %63

34:                                               ; preds = %2, %2
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 37
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 5
  %39 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 22
  %40 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %39) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 21
  %44 = load ptr, ptr %43, align 4
  tail call void @snd_usb_endpoint_stop(ptr noundef %44, i1 noundef zeroext %38) #9
  br label %45

45:                                               ; preds = %42, %34
  %46 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %39) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 20
  %50 = load ptr, ptr %49, align 8
  tail call void @snd_usb_endpoint_stop(ptr noundef %50, i1 noundef zeroext %38) #9
  br label %51

51:                                               ; preds = %48, %45
  %52 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 20
  %53 = load ptr, ptr %52, align 8
  tail call void @snd_usb_endpoint_set_callback(ptr noundef %53, ptr noundef null, ptr noundef null, ptr noundef null) #9
  %54 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 12
  %55 = load i8, ptr %54, align 8
  %56 = and i8 %55, -2
  store i8 %56, ptr %54, align 8
  br label %63

57:                                               ; preds = %2
  %58 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 20
  %59 = load ptr, ptr %58, align 8
  tail call void @snd_usb_endpoint_set_callback(ptr noundef %59, ptr noundef null, ptr noundef nonnull @retire_playback_urb, ptr noundef %6) #9
  %60 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 12
  %61 = load i8, ptr %60, align 8
  %62 = and i8 %61, -2
  store i8 %62, ptr %60, align 8
  br label %63

63:                                               ; preds = %57, %51, %30, %28, %2
  %64 = phi i32 [ 0, %57 ], [ 0, %51 ], [ %26, %28 ], [ 0, %30 ], [ -22, %2 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_usb_pcm_sync_stop(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 21
  %7 = load ptr, ptr %6, align 4
  tail call void @snd_usb_endpoint_sync_pending_stop(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 20
  %9 = load ptr, ptr %8, align 8
  tail call void @snd_usb_endpoint_sync_pending_stop(ptr noundef %9) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_usb_pcm_pointer(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 9
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %12) #9
  %13 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 16
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 15
  %20 = load i32, ptr %19, align 4
  %21 = shl i32 %20, 3
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %23 = load i32, ptr %22, align 8
  %24 = udiv i32 %21, %23
  %25 = icmp ugt i32 %23, %21
  br i1 %25, label %49, label %31

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 12
  %28 = load i8, ptr %27, align 8
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %26, %18
  %32 = phi i32 [ %24, %18 ], [ 0, %26 ]
  %33 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @usb_get_current_frame_number(ptr noundef %34) #9
  %36 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 28
  %37 = load i32, ptr %36, align 8
  %38 = sub i32 %35, %37
  %39 = and i32 %38, 255
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %41 = load i32, ptr %40, align 4
  %42 = mul i32 %39, %41
  %43 = udiv i32 %42, 1000
  %44 = load i32, ptr %15, align 4
  %45 = icmp eq i32 %44, 0
  %46 = sub i32 %32, %43
  %47 = tail call i32 @llvm.smax.i32(i32 %46, i32 0) #9
  %48 = select i1 %45, i32 %47, i32 %43
  br label %49

49:                                               ; preds = %31, %26, %18
  %50 = phi i32 [ %48, %31 ], [ 0, %18 ], [ 0, %26 ]
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 9
  store i32 %50, ptr %51, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %52 = load i16, ptr %12, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %54 = shl i32 %14, 3
  %55 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %56 = load i32, ptr %55, align 8
  %57 = udiv i32 %54, %56
  br label %58

58:                                               ; preds = %49, %1
  %59 = phi i32 [ %57, %49 ], [ -1, %1 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_usb_pcm_playback_ack(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 31
  %7 = load i8, ptr %6, align 1, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 12
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.snd_usb_substream, ptr %5, i32 0, i32 20
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %16, i32 0, i32 21
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @snd_usb_queue_pending_output_urbs(ptr noundef nonnull %16, i1 noundef zeroext true) #9
  br label %23

23:                                               ; preds = %22, %18, %14, %9, %1
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_autoresume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_media_stream_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_autosuspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hw_rule_rate(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3
  %8 = getelementptr inbounds %struct.snd_usb_substream, ptr %4, i32 0, i32 26
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %165, label %11

11:                                               ; preds = %2
  %12 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 2
  %13 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 1
  %14 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 1, i32 0, i32 1
  %15 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 2, i32 1
  %16 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 1
  %17 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 2
  %18 = getelementptr inbounds %struct.snd_usb_substream, ptr %4, i32 0, i32 23
  %19 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 4, i32 1
  %20 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 4, i32 2
  br label %21

21:                                               ; preds = %158, %11
  %22 = phi ptr [ %9, %11 ], [ %161, %158 ]
  %23 = phi i32 [ -1, %11 ], [ %160, %158 ]
  %24 = phi i32 [ 0, %11 ], [ %159, %158 ]
  %25 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 1
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, ptr %13, align 4
  %29 = and i32 %28, %27
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %21
  %32 = lshr i64 %26, 32
  %33 = trunc i64 %32 to i32
  %34 = load i32, ptr %14, align 4
  %35 = and i32 %34, %33
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %158, label %37

37:                                               ; preds = %31, %21
  %38 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = load i32, ptr %12, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %158, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %15, align 4
  %44 = icmp ugt i32 %39, %43
  br i1 %44, label %158, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 22
  %47 = load i32, ptr %46, align 8
  %48 = load i32, ptr %16, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %158, label %50

50:                                               ; preds = %45
  %51 = icmp eq i32 %47, %48
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = load i8, ptr %17, align 4
  %54 = and i8 %53, 2
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %158

56:                                               ; preds = %52, %50
  %57 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 23
  %58 = load i32, ptr %57, align 4
  %59 = load i32, ptr %7, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %158, label %61

61:                                               ; preds = %56
  %62 = icmp eq i32 %58, %59
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  %64 = load i8, ptr %17, align 4
  %65 = and i8 %64, 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %158

67:                                               ; preds = %63, %61
  %68 = load i32, ptr %18, align 4
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %83, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 18
  %72 = load i8, ptr %71, align 4
  %73 = zext i8 %72 to i32
  %74 = shl i32 125, %73
  %75 = load i32, ptr %19, align 4
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %158, label %77

77:                                               ; preds = %70
  %78 = icmp eq i32 %74, %75
  br i1 %78, label %79, label %83

79:                                               ; preds = %77
  %80 = load i8, ptr %20, align 4
  %81 = and i8 %80, 2
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %158

83:                                               ; preds = %79, %77, %67
  %84 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 26
  %85 = load i8, ptr %84, align 8
  %86 = zext i8 %85 to i32
  %87 = tail call i32 @snd_usb_endpoint_get_clock_rate(ptr noundef %6, i32 noundef %86) #9
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %110, label %89

89:                                               ; preds = %83
  %90 = load i32, ptr %7, align 4
  %91 = icmp ugt i32 %90, %87
  br i1 %91, label %158, label %92

92:                                               ; preds = %89
  %93 = icmp eq i32 %90, %87
  br i1 %93, label %94, label %98

94:                                               ; preds = %92
  %95 = load i8, ptr %17, align 4
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %158

98:                                               ; preds = %94, %92
  %99 = load i32, ptr %16, align 4
  %100 = icmp ult i32 %99, %87
  br i1 %100, label %158, label %101

101:                                              ; preds = %98
  %102 = icmp eq i32 %99, %87
  br i1 %102, label %103, label %107

103:                                              ; preds = %101
  %104 = load i8, ptr %17, align 4
  %105 = and i8 %104, 2
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %158

107:                                              ; preds = %103, %101
  %108 = tail call i32 @llvm.umin.i32(i32 %23, i32 %87)
  %109 = tail call i32 @llvm.umax.i32(i32 %24, i32 %87)
  br label %158

110:                                              ; preds = %83
  %111 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 25
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %153, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 24
  %116 = load i32, ptr %115, align 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %153, label %118

118:                                              ; preds = %114
  %119 = load i32, ptr %7, align 4
  br label %120

120:                                              ; preds = %144, %118
  %121 = phi i32 [ %23, %118 ], [ %150, %144 ]
  %122 = phi i32 [ %24, %118 ], [ %149, %144 ]
  %123 = phi i32 [ 0, %118 ], [ %151, %144 ]
  %124 = getelementptr i32, ptr %112, i32 %123
  %125 = load i32, ptr %124, align 4
  %126 = icmp ugt i32 %119, %125
  br i1 %126, label %144, label %127

127:                                              ; preds = %120
  %128 = icmp eq i32 %119, %125
  br i1 %128, label %129, label %133

129:                                              ; preds = %127
  %130 = load i8, ptr %17, align 4
  %131 = and i8 %130, 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %129, %127
  %134 = load i32, ptr %16, align 4
  %135 = icmp ult i32 %134, %125
  br i1 %135, label %144, label %136

136:                                              ; preds = %133
  %137 = icmp eq i32 %134, %125
  br i1 %137, label %138, label %144

138:                                              ; preds = %136
  %139 = load i8, ptr %17, align 4
  %140 = lshr i8 %139, 1
  %141 = and i8 %140, 1
  %142 = xor i8 %141, 1
  %143 = zext i8 %142 to i32
  br label %144

144:                                              ; preds = %138, %136, %133, %129, %120
  %145 = phi i32 [ 0, %133 ], [ 0, %129 ], [ 0, %120 ], [ 1, %136 ], [ %143, %138 ]
  %146 = icmp eq i32 %145, 0
  %147 = tail call i32 @llvm.umin.i32(i32 %121, i32 %125)
  %148 = tail call i32 @llvm.umax.i32(i32 %122, i32 %125)
  %149 = select i1 %146, i32 %122, i32 %148
  %150 = select i1 %146, i32 %121, i32 %147
  %151 = add nuw i32 %123, 1
  %152 = icmp eq i32 %151, %116
  br i1 %152, label %158, label %120

153:                                              ; preds = %114, %110
  %154 = load i32, ptr %46, align 8
  %155 = tail call i32 @llvm.umin.i32(i32 %23, i32 %154)
  %156 = load i32, ptr %57, align 4
  %157 = tail call i32 @llvm.umax.i32(i32 %24, i32 %156)
  br label %158

158:                                              ; preds = %153, %144, %107, %103, %98, %94, %89, %79, %70, %63, %56, %52, %45, %42, %37, %31
  %159 = phi i32 [ %109, %107 ], [ %24, %103 ], [ %157, %153 ], [ %24, %31 ], [ %24, %37 ], [ %24, %42 ], [ %24, %45 ], [ %24, %52 ], [ %24, %56 ], [ %24, %63 ], [ %24, %70 ], [ %24, %79 ], [ %24, %98 ], [ %24, %94 ], [ %24, %89 ], [ %149, %144 ]
  %160 = phi i32 [ %108, %107 ], [ %23, %103 ], [ %155, %153 ], [ %23, %31 ], [ %23, %37 ], [ %23, %42 ], [ %23, %45 ], [ %23, %52 ], [ %23, %56 ], [ %23, %63 ], [ %23, %70 ], [ %23, %79 ], [ %23, %98 ], [ %23, %94 ], [ %23, %89 ], [ %150, %144 ]
  %161 = load ptr, ptr %22, align 4
  %162 = icmp eq ptr %161, %8
  br i1 %162, label %163, label %21

163:                                              ; preds = %158
  %164 = icmp ugt i32 %160, %159
  br i1 %164, label %165, label %168

165:                                              ; preds = %163, %2
  %166 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 2
  %167 = load i8, ptr %166, align 4
  br label %202

168:                                              ; preds = %163
  %169 = load i32, ptr %7, align 4
  %170 = icmp ult i32 %169, %160
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  store i32 %160, ptr %7, align 4
  %172 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 2
  %173 = load i8, ptr %172, align 4
  %174 = and i8 %173, -2
  store i8 %174, ptr %172, align 4
  br label %175

175:                                              ; preds = %171, %168
  %176 = phi i32 [ %160, %171 ], [ %169, %168 ]
  %177 = phi i32 [ 1, %171 ], [ 0, %168 ]
  %178 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 1
  %179 = load i32, ptr %178, align 4
  %180 = icmp ugt i32 %179, %159
  br i1 %180, label %181, label %185

181:                                              ; preds = %175
  store i32 %159, ptr %178, align 4
  %182 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 2
  %183 = load i8, ptr %182, align 4
  %184 = and i8 %183, -3
  store i8 %184, ptr %182, align 4
  br label %185

185:                                              ; preds = %181, %175
  %186 = phi i32 [ %159, %181 ], [ %179, %175 ]
  %187 = phi i32 [ 1, %181 ], [ %177, %175 ]
  %188 = icmp ugt i32 %176, %186
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 2
  %191 = load i8, ptr %190, align 4
  br label %199

192:                                              ; preds = %185
  %193 = icmp eq i32 %176, %186
  br i1 %193, label %194, label %206

194:                                              ; preds = %192
  %195 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 2
  %196 = load i8, ptr %195, align 4
  %197 = and i8 %196, 3
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %206, label %199

199:                                              ; preds = %194, %189
  %200 = phi i8 [ %191, %189 ], [ %196, %194 ]
  %201 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 2
  br label %202

202:                                              ; preds = %199, %165
  %203 = phi i8 [ %200, %199 ], [ %167, %165 ]
  %204 = phi ptr [ %201, %199 ], [ %166, %165 ]
  %205 = or i8 %203, 8
  store i8 %205, ptr %204, align 4
  br label %206

206:                                              ; preds = %202, %194, %192
  %207 = phi i32 [ %187, %192 ], [ %187, %194 ], [ -22, %202 ]
  ret i32 %207
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hw_rule_channels(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 2
  %6 = getelementptr inbounds %struct.snd_usb_substream, ptr %4, i32 0, i32 26
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %91, label %9

9:                                                ; preds = %2
  %10 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3
  %11 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 1, i32 0, i32 1
  %14 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 2, i32 1
  %15 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 1
  %16 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 2
  %17 = getelementptr inbounds %struct.snd_usb_substream, ptr %4, i32 0, i32 23
  %18 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 4, i32 1
  %19 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 4, i32 2
  br label %20

20:                                               ; preds = %84, %9
  %21 = phi ptr [ %7, %9 ], [ %87, %84 ]
  %22 = phi i32 [ -1, %9 ], [ %86, %84 ]
  %23 = phi i32 [ 0, %9 ], [ %85, %84 ]
  %24 = getelementptr inbounds %struct.audioformat, ptr %21, i32 0, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = and i32 %12, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = lshr i64 %25, 32
  %31 = trunc i64 %30 to i32
  %32 = load i32, ptr %13, align 4
  %33 = and i32 %32, %31
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %84, label %35

35:                                               ; preds = %29, %20
  %36 = getelementptr inbounds %struct.audioformat, ptr %21, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  %38 = load i32, ptr %5, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %84, label %40

40:                                               ; preds = %35
  %41 = load i32, ptr %14, align 4
  %42 = icmp ugt i32 %37, %41
  br i1 %42, label %84, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.audioformat, ptr %21, i32 0, i32 22
  %45 = load i32, ptr %44, align 8
  %46 = load i32, ptr %15, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %84, label %48

48:                                               ; preds = %43
  %49 = icmp eq i32 %45, %46
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  %51 = load i8, ptr %16, align 4
  %52 = and i8 %51, 2
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %50, %48
  %55 = getelementptr inbounds %struct.audioformat, ptr %21, i32 0, i32 23
  %56 = load i32, ptr %55, align 4
  %57 = load i32, ptr %10, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %84, label %59

59:                                               ; preds = %54
  %60 = icmp eq i32 %56, %57
  br i1 %60, label %61, label %65

61:                                               ; preds = %59
  %62 = load i8, ptr %16, align 4
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %61, %59
  %66 = load i32, ptr %17, align 4
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %81, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.audioformat, ptr %21, i32 0, i32 18
  %70 = load i8, ptr %69, align 4
  %71 = zext i8 %70 to i32
  %72 = shl i32 125, %71
  %73 = load i32, ptr %18, align 4
  %74 = icmp ugt i32 %72, %73
  br i1 %74, label %84, label %75

75:                                               ; preds = %68
  %76 = icmp eq i32 %72, %73
  br i1 %76, label %77, label %81

77:                                               ; preds = %75
  %78 = load i8, ptr %19, align 4
  %79 = and i8 %78, 2
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77, %75, %65
  %82 = tail call i32 @llvm.umin.i32(i32 %22, i32 %37)
  %83 = tail call i32 @llvm.umax.i32(i32 %23, i32 %37)
  br label %84

84:                                               ; preds = %81, %77, %68, %61, %54, %50, %43, %40, %35, %29
  %85 = phi i32 [ %83, %81 ], [ %23, %29 ], [ %23, %35 ], [ %23, %40 ], [ %23, %43 ], [ %23, %50 ], [ %23, %54 ], [ %23, %61 ], [ %23, %68 ], [ %23, %77 ]
  %86 = phi i32 [ %82, %81 ], [ %22, %29 ], [ %22, %35 ], [ %22, %40 ], [ %22, %43 ], [ %22, %50 ], [ %22, %54 ], [ %22, %61 ], [ %22, %68 ], [ %22, %77 ]
  %87 = load ptr, ptr %21, align 4
  %88 = icmp eq ptr %87, %6
  br i1 %88, label %89, label %20

89:                                               ; preds = %84
  %90 = icmp ugt i32 %86, %85
  br i1 %90, label %91, label %94

91:                                               ; preds = %89, %2
  %92 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 2, i32 2
  %93 = load i8, ptr %92, align 4
  br label %128

94:                                               ; preds = %89
  %95 = load i32, ptr %5, align 4
  %96 = icmp ult i32 %95, %86
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  store i32 %86, ptr %5, align 4
  %98 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 2, i32 2
  %99 = load i8, ptr %98, align 4
  %100 = and i8 %99, -2
  store i8 %100, ptr %98, align 4
  br label %101

101:                                              ; preds = %97, %94
  %102 = phi i32 [ %86, %97 ], [ %95, %94 ]
  %103 = phi i32 [ 1, %97 ], [ 0, %94 ]
  %104 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 2, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = icmp ugt i32 %105, %85
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  store i32 %85, ptr %104, align 4
  %108 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 2, i32 2
  %109 = load i8, ptr %108, align 4
  %110 = and i8 %109, -3
  store i8 %110, ptr %108, align 4
  br label %111

111:                                              ; preds = %107, %101
  %112 = phi i32 [ %85, %107 ], [ %105, %101 ]
  %113 = phi i32 [ 1, %107 ], [ %103, %101 ]
  %114 = icmp ugt i32 %102, %112
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 2, i32 2
  %117 = load i8, ptr %116, align 4
  br label %125

118:                                              ; preds = %111
  %119 = icmp eq i32 %102, %112
  br i1 %119, label %120, label %132

120:                                              ; preds = %118
  %121 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 2, i32 2
  %122 = load i8, ptr %121, align 4
  %123 = and i8 %122, 3
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %120, %115
  %126 = phi i8 [ %117, %115 ], [ %122, %120 ]
  %127 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 2, i32 2
  br label %128

128:                                              ; preds = %125, %91
  %129 = phi i8 [ %126, %125 ], [ %93, %91 ]
  %130 = phi ptr [ %127, %125 ], [ %92, %91 ]
  %131 = or i8 %129, 8
  store i8 %131, ptr %130, align 4
  br label %132

132:                                              ; preds = %128, %120, %118
  %133 = phi i32 [ %113, %118 ], [ %113, %120 ], [ -22, %128 ]
  ret i32 %133
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hw_rule_format(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 1
  %6 = getelementptr inbounds %struct.snd_usb_substream, ptr %4, i32 0, i32 26
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, ptr %5, align 4
  br label %92

11:                                               ; preds = %2
  %12 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3
  %13 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 2
  %14 = load i32, ptr %5, align 4
  %15 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 1, i32 0, i32 1
  %16 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 2, i32 1
  %17 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 1
  %18 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 2
  %19 = getelementptr inbounds %struct.snd_usb_substream, ptr %4, i32 0, i32 23
  %20 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 4, i32 1
  %21 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 4, i32 2
  br label %22

22:                                               ; preds = %84, %11
  %23 = phi ptr [ %7, %11 ], [ %86, %84 ]
  %24 = phi i64 [ 0, %11 ], [ %85, %84 ]
  %25 = getelementptr inbounds %struct.audioformat, ptr %23, i32 0, i32 1
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = and i32 %14, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = lshr i64 %26, 32
  %32 = trunc i64 %31 to i32
  %33 = load i32, ptr %15, align 4
  %34 = and i32 %33, %32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %84, label %36

36:                                               ; preds = %30, %22
  %37 = getelementptr inbounds %struct.audioformat, ptr %23, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = load i32, ptr %13, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %84, label %41

41:                                               ; preds = %36
  %42 = load i32, ptr %16, align 4
  %43 = icmp ugt i32 %38, %42
  br i1 %43, label %84, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.audioformat, ptr %23, i32 0, i32 22
  %46 = load i32, ptr %45, align 8
  %47 = load i32, ptr %17, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %84, label %49

49:                                               ; preds = %44
  %50 = icmp eq i32 %46, %47
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  %52 = load i8, ptr %18, align 4
  %53 = and i8 %52, 2
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %84

55:                                               ; preds = %51, %49
  %56 = getelementptr inbounds %struct.audioformat, ptr %23, i32 0, i32 23
  %57 = load i32, ptr %56, align 4
  %58 = load i32, ptr %12, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %84, label %60

60:                                               ; preds = %55
  %61 = icmp eq i32 %57, %58
  br i1 %61, label %62, label %66

62:                                               ; preds = %60
  %63 = load i8, ptr %18, align 4
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %62, %60
  %67 = load i32, ptr %19, align 4
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %82, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.audioformat, ptr %23, i32 0, i32 18
  %71 = load i8, ptr %70, align 4
  %72 = zext i8 %71 to i32
  %73 = shl i32 125, %72
  %74 = load i32, ptr %20, align 4
  %75 = icmp ugt i32 %73, %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %69
  %77 = icmp eq i32 %73, %74
  br i1 %77, label %78, label %82

78:                                               ; preds = %76
  %79 = load i8, ptr %21, align 4
  %80 = and i8 %79, 2
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78, %76, %66
  %83 = or i64 %26, %24
  br label %84

84:                                               ; preds = %82, %78, %69, %62, %55, %51, %44, %41, %36, %30
  %85 = phi i64 [ %83, %82 ], [ %24, %30 ], [ %24, %36 ], [ %24, %41 ], [ %24, %44 ], [ %24, %51 ], [ %24, %55 ], [ %24, %62 ], [ %24, %69 ], [ %24, %78 ]
  %86 = load ptr, ptr %23, align 4
  %87 = icmp eq ptr %86, %6
  br i1 %87, label %88, label %22

88:                                               ; preds = %84
  %89 = lshr i64 %85, 32
  %90 = trunc i64 %89 to i32
  %91 = trunc i64 %85 to i32
  br label %92

92:                                               ; preds = %88, %9
  %93 = phi i32 [ %10, %9 ], [ %14, %88 ]
  %94 = phi i32 [ 0, %9 ], [ %91, %88 ]
  %95 = phi i32 [ 0, %9 ], [ %90, %88 ]
  %96 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 1, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %93, %94
  store i32 %98, ptr %5, align 4
  %99 = and i32 %97, %95
  store i32 %99, ptr %96, align 4
  %100 = icmp eq i32 %98, 0
  %101 = icmp eq i32 %99, 0
  %102 = select i1 %100, i1 %101, i1 false
  br i1 %102, label %108, label %103

103:                                              ; preds = %92
  %104 = icmp eq i32 %93, %98
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = icmp ne i32 %97, %99
  %107 = zext i1 %106 to i32
  br label %108

108:                                              ; preds = %105, %103, %92
  %109 = phi i32 [ -22, %92 ], [ 1, %103 ], [ %107, %105 ]
  ret i32 %109
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hw_rule_period_time(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 4
  %6 = getelementptr inbounds %struct.snd_usb_substream, ptr %4, i32 0, i32 26
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %89, label %9

9:                                                ; preds = %2
  %10 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3
  %11 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 2
  %12 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 1, i32 0, i32 1
  %15 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 2, i32 1
  %16 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 1
  %17 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 2
  %18 = getelementptr inbounds %struct.snd_usb_substream, ptr %4, i32 0, i32 23
  %19 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 4, i32 1
  %20 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 4, i32 2
  br label %21

21:                                               ; preds = %83, %9
  %22 = phi ptr [ %7, %9 ], [ %85, %83 ]
  %23 = phi i8 [ -1, %9 ], [ %84, %83 ]
  %24 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = and i32 %13, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = lshr i64 %25, 32
  %31 = trunc i64 %30 to i32
  %32 = load i32, ptr %14, align 4
  %33 = and i32 %32, %31
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %83, label %35

35:                                               ; preds = %29, %21
  %36 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  %38 = load i32, ptr %11, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %83, label %40

40:                                               ; preds = %35
  %41 = load i32, ptr %15, align 4
  %42 = icmp ugt i32 %37, %41
  br i1 %42, label %83, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 22
  %45 = load i32, ptr %44, align 8
  %46 = load i32, ptr %16, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %83, label %48

48:                                               ; preds = %43
  %49 = icmp eq i32 %45, %46
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  %51 = load i8, ptr %17, align 4
  %52 = and i8 %51, 2
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %50, %48
  %55 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 23
  %56 = load i32, ptr %55, align 4
  %57 = load i32, ptr %10, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %83, label %59

59:                                               ; preds = %54
  %60 = icmp eq i32 %56, %57
  br i1 %60, label %61, label %65

61:                                               ; preds = %59
  %62 = load i8, ptr %17, align 4
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %61, %59
  %66 = load i32, ptr %18, align 4
  %67 = icmp eq i32 %66, 2
  %68 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 18
  %69 = load i8, ptr %68, align 4
  br i1 %67, label %81, label %70

70:                                               ; preds = %65
  %71 = zext i8 %69 to i32
  %72 = shl i32 125, %71
  %73 = load i32, ptr %19, align 4
  %74 = icmp ugt i32 %72, %73
  br i1 %74, label %83, label %75

75:                                               ; preds = %70
  %76 = icmp eq i32 %72, %73
  br i1 %76, label %77, label %81

77:                                               ; preds = %75
  %78 = load i8, ptr %20, align 4
  %79 = and i8 %78, 2
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77, %75, %65
  %82 = tail call i8 @llvm.umin.i8(i8 %23, i8 %69)
  br label %83

83:                                               ; preds = %81, %77, %70, %61, %54, %50, %43, %40, %35, %29
  %84 = phi i8 [ %82, %81 ], [ %23, %29 ], [ %23, %35 ], [ %23, %40 ], [ %23, %43 ], [ %23, %50 ], [ %23, %54 ], [ %23, %61 ], [ %23, %70 ], [ %23, %77 ]
  %85 = load ptr, ptr %22, align 4
  %86 = icmp eq ptr %85, %6
  br i1 %86, label %87, label %21

87:                                               ; preds = %83
  %88 = icmp eq i8 %84, -1
  br i1 %88, label %89, label %92

89:                                               ; preds = %87, %2
  %90 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 4, i32 2
  %91 = load i8, ptr %90, align 4
  br label %120

92:                                               ; preds = %87
  %93 = zext i8 %84 to i32
  %94 = shl i32 125, %93
  %95 = load i32, ptr %5, align 4
  %96 = icmp ult i32 %95, %94
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  store i32 %94, ptr %5, align 4
  %98 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 4, i32 2
  %99 = load i8, ptr %98, align 4
  %100 = and i8 %99, -2
  store i8 %100, ptr %98, align 4
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i32 [ %94, %97 ], [ %95, %92 ]
  %103 = phi i32 [ 1, %97 ], [ 0, %92 ]
  %104 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 4, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = icmp ugt i32 %102, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 4, i32 2
  %109 = load i8, ptr %108, align 4
  br label %117

110:                                              ; preds = %101
  %111 = icmp eq i32 %102, %105
  br i1 %111, label %112, label %124

112:                                              ; preds = %110
  %113 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 4, i32 2
  %114 = load i8, ptr %113, align 4
  %115 = and i8 %114, 3
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %112, %107
  %118 = phi i8 [ %109, %107 ], [ %114, %112 ]
  %119 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 4, i32 2
  br label %120

120:                                              ; preds = %117, %89
  %121 = phi i8 [ %118, %117 ], [ %91, %89 ]
  %122 = phi ptr [ %119, %117 ], [ %90, %89 ]
  %123 = or i8 %121, 8
  store i8 %123, ptr %122, align 4
  br label %124

124:                                              ; preds = %120, %112, %110
  %125 = phi i32 [ %103, %110 ], [ %103, %112 ], [ -22, %120 ]
  ret i32 %125
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hw_rule_format_implicit_fb(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.snd_usb_substream, ptr %4, i32 0, i32 26
  %9 = getelementptr inbounds %struct.snd_usb_substream, ptr %4, i32 0, i32 5
  %10 = load ptr, ptr %8, align 4
  %11 = icmp eq ptr %10, %8
  br i1 %11, label %69, label %12

12:                                               ; preds = %44, %2
  %13 = phi ptr [ %45, %44 ], [ %10, %2 ]
  %14 = getelementptr inbounds %struct.audioformat, ptr %13, i32 0, i32 11
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = tail call ptr @snd_usb_get_endpoint(ptr noundef %7, i32 noundef %16) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %17, i32 0, i32 51
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %9, align 4
  %25 = icmp eq ptr %21, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %17, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %47, label %30

30:                                               ; preds = %26, %19, %12
  %31 = getelementptr inbounds %struct.audioformat, ptr %13, i32 0, i32 13
  %32 = load i8, ptr %31, align 1, !range !8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.audioformat, ptr %13, i32 0, i32 14
  %36 = load i8, ptr %35, align 8
  %37 = zext i8 %36 to i32
  %38 = tail call ptr @snd_usb_get_endpoint(ptr noundef %7, i32 noundef %37) #9
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %38, i32 0, i32 51
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %34, %30
  %45 = load ptr, ptr %13, align 4
  %46 = icmp eq ptr %45, %8
  br i1 %46, label %69, label %12

47:                                               ; preds = %40, %26, %23
  %48 = phi ptr [ %17, %26 ], [ %17, %23 ], [ %38, %40 ]
  %49 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %48, i32 0, i32 53
  %50 = load i32, ptr %49, align 4
  %51 = zext i32 %50 to i64
  %52 = shl nuw i64 1, %51
  %53 = load i32, ptr %5, align 4
  %54 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 1, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = trunc i64 %52 to i32
  %57 = and i32 %53, %56
  store i32 %57, ptr %5, align 4
  %58 = lshr i64 %52, 32
  %59 = trunc i64 %58 to i32
  %60 = and i32 %55, %59
  store i32 %60, ptr %54, align 4
  %61 = icmp eq i32 %57, 0
  %62 = icmp eq i32 %60, 0
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %69, label %64

64:                                               ; preds = %47
  %65 = icmp eq i32 %53, %57
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = icmp ne i32 %55, %60
  %68 = zext i1 %67 to i32
  br label %69

69:                                               ; preds = %66, %64, %47, %44, %2
  %70 = phi i32 [ 0, %2 ], [ -22, %47 ], [ 1, %64 ], [ %68, %66 ], [ 0, %44 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hw_rule_rate_implicit_fb(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_usb_substream, ptr %4, i32 0, i32 26
  %8 = getelementptr inbounds %struct.snd_usb_substream, ptr %4, i32 0, i32 5
  %9 = load ptr, ptr %7, align 4
  %10 = icmp eq ptr %9, %7
  br i1 %10, label %85, label %11

11:                                               ; preds = %43, %2
  %12 = phi ptr [ %44, %43 ], [ %9, %2 ]
  %13 = getelementptr inbounds %struct.audioformat, ptr %12, i32 0, i32 11
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = tail call ptr @snd_usb_get_endpoint(ptr noundef %6, i32 noundef %15) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %16, i32 0, i32 51
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %8, align 4
  %24 = icmp eq ptr %20, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %16, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %46, label %29

29:                                               ; preds = %25, %18, %11
  %30 = getelementptr inbounds %struct.audioformat, ptr %12, i32 0, i32 13
  %31 = load i8, ptr %30, align 1, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.audioformat, ptr %12, i32 0, i32 14
  %35 = load i8, ptr %34, align 8
  %36 = zext i8 %35 to i32
  %37 = tail call ptr @snd_usb_get_endpoint(ptr noundef %6, i32 noundef %36) #9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %37, i32 0, i32 51
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %33, %29
  %44 = load ptr, ptr %12, align 4
  %45 = icmp eq ptr %44, %7
  br i1 %45, label %85, label %11

46:                                               ; preds = %39, %25, %22
  %47 = phi ptr [ %16, %25 ], [ %16, %22 ], [ %37, %39 ]
  %48 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3
  %49 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %47, i32 0, i32 52
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr %48, align 4
  %52 = icmp ult i32 %51, %50
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  store i32 %50, ptr %48, align 4
  %54 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 2
  %55 = load i8, ptr %54, align 4
  %56 = and i8 %55, -2
  store i8 %56, ptr %54, align 4
  br label %57

57:                                               ; preds = %53, %46
  %58 = phi i32 [ %50, %53 ], [ %51, %46 ]
  %59 = phi i32 [ 1, %53 ], [ 0, %46 ]
  %60 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp ugt i32 %61, %50
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  store i32 %50, ptr %60, align 4
  %64 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 2
  %65 = load i8, ptr %64, align 4
  %66 = and i8 %65, -3
  store i8 %66, ptr %64, align 4
  br label %67

67:                                               ; preds = %63, %57
  %68 = phi i32 [ %50, %63 ], [ %61, %57 ]
  %69 = phi i32 [ 1, %63 ], [ %59, %57 ]
  %70 = icmp ugt i32 %58, %68
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 2
  %73 = load i8, ptr %72, align 4
  br label %81

74:                                               ; preds = %67
  %75 = icmp eq i32 %58, %68
  br i1 %75, label %76, label %85

76:                                               ; preds = %74
  %77 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 2
  %78 = load i8, ptr %77, align 4
  %79 = and i8 %78, 3
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76, %71
  %82 = phi i8 [ %73, %71 ], [ %78, %76 ]
  %83 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 2
  %84 = or i8 %82, 8
  store i8 %84, ptr %83, align 4
  br label %85

85:                                               ; preds = %81, %76, %74, %43, %2
  %86 = phi i32 [ 0, %2 ], [ %69, %74 ], [ %69, %76 ], [ -22, %81 ], [ 0, %43 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hw_rule_period_size_implicit_fb(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_usb_substream, ptr %4, i32 0, i32 26
  %8 = getelementptr inbounds %struct.snd_usb_substream, ptr %4, i32 0, i32 5
  %9 = load ptr, ptr %7, align 4
  %10 = icmp eq ptr %9, %7
  br i1 %10, label %85, label %11

11:                                               ; preds = %43, %2
  %12 = phi ptr [ %44, %43 ], [ %9, %2 ]
  %13 = getelementptr inbounds %struct.audioformat, ptr %12, i32 0, i32 11
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = tail call ptr @snd_usb_get_endpoint(ptr noundef %6, i32 noundef %15) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %16, i32 0, i32 51
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %8, align 4
  %24 = icmp eq ptr %20, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %16, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %46, label %29

29:                                               ; preds = %25, %18, %11
  %30 = getelementptr inbounds %struct.audioformat, ptr %12, i32 0, i32 13
  %31 = load i8, ptr %30, align 1, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.audioformat, ptr %12, i32 0, i32 14
  %35 = load i8, ptr %34, align 8
  %36 = zext i8 %35 to i32
  %37 = tail call ptr @snd_usb_get_endpoint(ptr noundef %6, i32 noundef %36) #9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %37, i32 0, i32 51
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %33, %29
  %44 = load ptr, ptr %12, align 4
  %45 = icmp eq ptr %44, %7
  br i1 %45, label %85, label %11

46:                                               ; preds = %39, %25, %22
  %47 = phi ptr [ %16, %25 ], [ %16, %22 ], [ %37, %39 ]
  %48 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 5
  %49 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %47, i32 0, i32 56
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr %48, align 4
  %52 = icmp ult i32 %51, %50
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  store i32 %50, ptr %48, align 4
  %54 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 5, i32 2
  %55 = load i8, ptr %54, align 4
  %56 = and i8 %55, -2
  store i8 %56, ptr %54, align 4
  br label %57

57:                                               ; preds = %53, %46
  %58 = phi i32 [ %50, %53 ], [ %51, %46 ]
  %59 = phi i32 [ 1, %53 ], [ 0, %46 ]
  %60 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 5, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp ugt i32 %61, %50
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  store i32 %50, ptr %60, align 4
  %64 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 5, i32 2
  %65 = load i8, ptr %64, align 4
  %66 = and i8 %65, -3
  store i8 %66, ptr %64, align 4
  br label %67

67:                                               ; preds = %63, %57
  %68 = phi i32 [ %50, %63 ], [ %61, %57 ]
  %69 = phi i32 [ 1, %63 ], [ %59, %57 ]
  %70 = icmp ugt i32 %58, %68
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 5, i32 2
  %73 = load i8, ptr %72, align 4
  br label %81

74:                                               ; preds = %67
  %75 = icmp eq i32 %58, %68
  br i1 %75, label %76, label %85

76:                                               ; preds = %74
  %77 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 5, i32 2
  %78 = load i8, ptr %77, align 4
  %79 = and i8 %78, 3
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76, %71
  %82 = phi i8 [ %73, %71 ], [ %78, %76 ]
  %83 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 5, i32 2
  %84 = or i8 %82, 8
  store i8 %84, ptr %83, align 4
  br label %85

85:                                               ; preds = %81, %76, %74, %43, %2
  %86 = phi i32 [ 0, %2 ], [ %69, %74 ], [ %69, %76 ], [ -22, %81 ], [ 0, %43 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hw_rule_periods_implicit_fb(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_usb_substream, ptr %4, i32 0, i32 26
  %8 = getelementptr inbounds %struct.snd_usb_substream, ptr %4, i32 0, i32 5
  %9 = load ptr, ptr %7, align 4
  %10 = icmp eq ptr %9, %7
  br i1 %10, label %85, label %11

11:                                               ; preds = %43, %2
  %12 = phi ptr [ %44, %43 ], [ %9, %2 ]
  %13 = getelementptr inbounds %struct.audioformat, ptr %12, i32 0, i32 11
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = tail call ptr @snd_usb_get_endpoint(ptr noundef %6, i32 noundef %15) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %16, i32 0, i32 51
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %8, align 4
  %24 = icmp eq ptr %20, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %16, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %46, label %29

29:                                               ; preds = %25, %18, %11
  %30 = getelementptr inbounds %struct.audioformat, ptr %12, i32 0, i32 13
  %31 = load i8, ptr %30, align 1, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.audioformat, ptr %12, i32 0, i32 14
  %35 = load i8, ptr %34, align 8
  %36 = zext i8 %35 to i32
  %37 = tail call ptr @snd_usb_get_endpoint(ptr noundef %6, i32 noundef %36) #9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %37, i32 0, i32 51
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %33, %29
  %44 = load ptr, ptr %12, align 4
  %45 = icmp eq ptr %44, %7
  br i1 %45, label %85, label %11

46:                                               ; preds = %39, %25, %22
  %47 = phi ptr [ %16, %25 ], [ %16, %22 ], [ %37, %39 ]
  %48 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 7
  %49 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %47, i32 0, i32 58
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr %48, align 4
  %52 = icmp ult i32 %51, %50
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  store i32 %50, ptr %48, align 4
  %54 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 7, i32 2
  %55 = load i8, ptr %54, align 4
  %56 = and i8 %55, -2
  store i8 %56, ptr %54, align 4
  br label %57

57:                                               ; preds = %53, %46
  %58 = phi i32 [ %50, %53 ], [ %51, %46 ]
  %59 = phi i32 [ 1, %53 ], [ 0, %46 ]
  %60 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 7, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp ugt i32 %61, %50
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  store i32 %50, ptr %60, align 4
  %64 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 7, i32 2
  %65 = load i8, ptr %64, align 4
  %66 = and i8 %65, -3
  store i8 %66, ptr %64, align 4
  br label %67

67:                                               ; preds = %63, %57
  %68 = phi i32 [ %50, %63 ], [ %61, %57 ]
  %69 = phi i32 [ 1, %63 ], [ %59, %57 ]
  %70 = icmp ugt i32 %58, %68
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 7, i32 2
  %73 = load i8, ptr %72, align 4
  br label %81

74:                                               ; preds = %67
  %75 = icmp eq i32 %58, %68
  br i1 %75, label %76, label %85

76:                                               ; preds = %74
  %77 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 7, i32 2
  %78 = load i8, ptr %77, align 4
  %79 = and i8 %78, 3
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76, %71
  %82 = phi i8 [ %73, %71 ], [ %78, %76 ]
  %83 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 7, i32 2
  %84 = or i8 %82, 8
  store i8 %84, ptr %83, align 4
  br label %85

85:                                               ; preds = %81, %76, %74, %43, %2
  %86 = phi i32 [ 0, %2 ], [ %69, %74 ], [ %69, %76 ], [ -22, %81 ], [ 0, %43 ]
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_endpoint_get_clock_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_get_endpoint(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_media_stop_pipeline(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_lock_shutdown(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_unlock_shutdown(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_media_start_pipeline(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_find_implicit_fb_sync_format(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_usb_endpoint_compatible(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_endpoint_open(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_endpoint_set_sync(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @configure_endpoints(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 20
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %4, i32 0, i32 50
  %6 = load i8, ptr %5, align 2, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 22
  %10 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %9) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %9) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %20

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 21
  %17 = load ptr, ptr %16, align 4
  tail call void @snd_usb_endpoint_stop(ptr noundef %17, i1 noundef zeroext false) #9
  %18 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %9) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15, %12
  %21 = load ptr, ptr %3, align 8
  tail call void @snd_usb_endpoint_stop(ptr noundef %21, i1 noundef zeroext false) #9
  br label %22

22:                                               ; preds = %20, %15
  %23 = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 21
  %24 = load ptr, ptr %23, align 4
  tail call void @snd_usb_endpoint_sync_pending_stop(ptr noundef %24) #9
  %25 = load ptr, ptr %3, align 8
  tail call void @snd_usb_endpoint_sync_pending_stop(ptr noundef %25) #9
  br label %26

26:                                               ; preds = %22, %12
  %27 = load ptr, ptr %3, align 8
  %28 = tail call i32 @snd_usb_endpoint_configure(ptr noundef %0, ptr noundef %27) #9
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  tail call void @snd_usb_set_format_quirk(ptr noundef %1, ptr noundef %32) #9
  br label %33

33:                                               ; preds = %30, %2
  %34 = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 21
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = tail call i32 @snd_usb_endpoint_configure(ptr noundef %0, ptr noundef nonnull %35) #9
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %40, %37, %26
  %42 = phi i32 [ 0, %40 ], [ %28, %26 ], [ %38, %37 ]
  ret i32 %42
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_endpoint_close(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_endpoint_configure(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_set_format_quirk(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_endpoint_stop(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_endpoint_sync_pending_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @start_endpoints(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 22
  %7 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %6) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 8
  %11 = tail call i32 @snd_usb_endpoint_start(ptr noundef %10) #9
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9, %5
  %14 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 21
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %6) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load ptr, ptr %14, align 4
  %22 = tail call i32 @snd_usb_endpoint_start(ptr noundef %21) #9
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20, %9
  %25 = phi i32 [ 0, %9 ], [ 1, %20 ]
  %26 = phi i32 [ %11, %9 ], [ %22, %20 ]
  tail call void @_clear_bit(i32 noundef %25, ptr noundef %6) #9
  %27 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %6) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 21
  %31 = load ptr, ptr %30, align 4
  tail call void @snd_usb_endpoint_stop(ptr noundef %31, i1 noundef zeroext false) #9
  br label %32

32:                                               ; preds = %29, %24
  %33 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %6) #9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %2, align 8
  tail call void @snd_usb_endpoint_stop(ptr noundef %36, i1 noundef zeroext false) #9
  br label %37

37:                                               ; preds = %35, %32, %20, %17, %13, %1
  %38 = phi i32 [ -22, %1 ], [ 0, %20 ], [ 0, %17 ], [ 0, %13 ], [ %26, %32 ], [ %26, %35 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_endpoint_implicit_feedback_sink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_endpoint_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_endpoint_set_callback(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @prepare_playback_urb(ptr noundef %0, ptr nocapture noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 20
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %9, i32 0, i32 46
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_urb_ctx, ptr %11, i32 0, i32 6
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 24
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 27
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #9
  %18 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 18
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %9, i32 0, i32 38
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %19
  %23 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 17
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 31
  %26 = load i8, ptr %25, align 1, !range !8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 37
  %30 = load ptr, ptr %29, align 4
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 5
  br i1 %32, label %51, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 16
  %35 = load i32, ptr %34, align 8
  %36 = udiv i32 %35, %13
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 38
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = sub i32 %40, %42
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 18
  %45 = load i32, ptr %44, align 4
  %46 = urem i32 %43, %45
  %47 = icmp ugt i32 %46, %36
  %48 = select i1 %47, i32 0, i32 %45
  %49 = sub i32 %46, %36
  %50 = add i32 %49, %48
  br label %51

51:                                               ; preds = %33, %28, %3
  %52 = phi i32 [ %50, %33 ], [ 0, %28 ], [ 0, %3 ]
  %53 = getelementptr inbounds %struct.snd_urb_ctx, ptr %11, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %123

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 16
  %58 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 9
  br label %59

59:                                               ; preds = %110, %56
  %60 = phi i32 [ 0, %56 ], [ %111, %110 ]
  %61 = phi i32 [ 0, %56 ], [ %114, %110 ]
  %62 = phi i32 [ %52, %56 ], [ %74, %110 ]
  %63 = phi i32 [ %22, %56 ], [ %112, %110 ]
  %64 = phi i32 [ %24, %56 ], [ %113, %110 ]
  %65 = phi i32 [ 0, %56 ], [ %73, %110 ]
  %66 = tail call i32 @snd_usb_endpoint_next_packet_size(ptr noundef %9, ptr noundef %11, i32 noundef %61, i32 noundef %62) #9
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %117, label %68

68:                                               ; preds = %59
  %69 = mul i32 %65, %13
  %70 = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %61
  store i32 %69, ptr %70, align 4
  %71 = mul i32 %66, %13
  %72 = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %61, i32 1
  store i32 %71, ptr %72, align 4
  %73 = add i32 %66, %65
  %74 = sub i32 %62, %66
  %75 = load i32, ptr %15, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr %15, align 4
  %77 = add i32 %66, %64
  %78 = load i32, ptr %57, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %100, label %80

80:                                               ; preds = %68
  %81 = sub i32 %77, %78
  %82 = load i32, ptr %58, align 4
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %104

84:                                               ; preds = %80
  %85 = icmp eq i32 %81, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %84
  %87 = sub i32 %73, %81
  %88 = sub i32 %66, %81
  %89 = mul i32 %88, %13
  store i32 %89, ptr %72, align 4
  br label %90

90:                                               ; preds = %86, %84
  %91 = phi i32 [ %87, %86 ], [ %73, %84 ]
  %92 = add nuw nsw i32 %61, 1
  %93 = load i32, ptr %53, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %117

95:                                               ; preds = %90
  %96 = mul i32 %91, %13
  %97 = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %92
  store i32 %96, ptr %97, align 4
  %98 = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %92, i32 1
  store i32 0, ptr %98, align 4
  %99 = add i32 %75, 2
  store i32 %99, ptr %15, align 4
  br label %117

100:                                              ; preds = %68
  %101 = icmp eq i32 %60, 0
  %102 = icmp ult i32 %77, %63
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %110, label %104

104:                                              ; preds = %100, %80
  %105 = phi i32 [ %60, %100 ], [ 1, %80 ]
  %106 = phi i32 [ %63, %100 ], [ 0, %80 ]
  %107 = phi i32 [ %77, %100 ], [ %81, %80 ]
  %108 = tail call i32 @snd_usb_endpoint_implicit_feedback_sink(ptr noundef %9) #9
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %104, %100
  %111 = phi i32 [ 0, %100 ], [ %105, %104 ]
  %112 = phi i32 [ %63, %100 ], [ %106, %104 ]
  %113 = phi i32 [ %77, %100 ], [ %107, %104 ]
  %114 = add nuw nsw i32 %61, 1
  %115 = load i32, ptr %53, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %59, label %117

117:                                              ; preds = %110, %104, %95, %90, %59
  %118 = phi i32 [ %91, %95 ], [ %91, %90 ], [ %73, %110 ], [ %65, %59 ], [ %73, %104 ]
  %119 = phi i32 [ 0, %95 ], [ 0, %90 ], [ %113, %110 ], [ %64, %59 ], [ %107, %104 ]
  %120 = phi i32 [ 0, %95 ], [ 0, %90 ], [ %112, %110 ], [ %63, %59 ], [ %106, %104 ]
  %121 = phi i32 [ 1, %95 ], [ 1, %90 ], [ %111, %110 ], [ %60, %59 ], [ %105, %104 ]
  %122 = icmp eq i32 %118, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117, %51
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #9
  br label %290

124:                                              ; preds = %117
  %125 = mul i32 %118, %13
  store i32 %119, ptr %23, align 4
  store i32 %120, ptr %18, align 8
  %126 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %9, i32 0, i32 53
  %127 = load i32, ptr %126, align 4
  switch i32 %127, label %142 [
    i32 49, label %128
    i32 48, label %135
  ]

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 5
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.audioformat, ptr %130, i32 0, i32 28
  %132 = load i8, ptr %131, align 8, !range !8
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %142, label %134, !prof !14

134:                                              ; preds = %128
  tail call fastcc void @fill_playback_urb_dsd_dop(ptr noundef %0, ptr noundef %1, i32 noundef %125)
  br label %254

135:                                              ; preds = %124
  %136 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 5
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.audioformat, ptr %137, i32 0, i32 29
  %139 = load i8, ptr %138, align 1, !range !8
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %142, label %141, !prof !14

141:                                              ; preds = %135
  tail call fastcc void @fill_playback_urb_dsd_bitrev(ptr noundef %0, ptr noundef %1, i32 noundef %125)
  br label %254

142:                                              ; preds = %135, %128, %124
  %143 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 8
  %144 = load i8, ptr %143, align 8
  %145 = and i8 %144, 2
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %188

147:                                              ; preds = %142
  %148 = load ptr, ptr %4, align 8
  %149 = getelementptr inbounds %struct.snd_pcm_substream, ptr %148, i32 0, i32 11
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 16
  %152 = load i32, ptr %151, align 8
  %153 = add i32 %152, %125
  %154 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 14
  %155 = load i32, ptr %154, align 8
  %156 = icmp ugt i32 %153, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %147
  %158 = sub i32 %155, %152
  %159 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %150, i32 0, i32 50
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr i8, ptr %162, i32 %152
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %160, ptr align 1 %163, i32 %158, i1 false) #9
  %164 = load ptr, ptr %159, align 4
  %165 = getelementptr i8, ptr %164, i32 %158
  %166 = load ptr, ptr %161, align 4
  %167 = sub i32 %125, %158
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %165, ptr align 1 %166, i32 %167, i1 false) #9
  br label %174

168:                                              ; preds = %147
  %169 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %150, i32 0, i32 50
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr i8, ptr %172, i32 %152
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %170, ptr align 1 %173, i32 %125, i1 false) #9
  br label %174

174:                                              ; preds = %168, %157
  %175 = load ptr, ptr %10, align 4
  %176 = getelementptr inbounds %struct.snd_urb_ctx, ptr %175, i32 0, i32 6
  %177 = load i32, ptr %176, align 4
  %178 = add i32 %177, %125
  store i32 %178, ptr %176, align 4
  %179 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 15
  %180 = load i32, ptr %179, align 4
  %181 = add i32 %180, %125
  store i32 %181, ptr %179, align 4
  %182 = load i32, ptr %151, align 8
  %183 = add i32 %182, %125
  store i32 %183, ptr %151, align 8
  %184 = load i32, ptr %154, align 8
  %185 = icmp ult i32 %183, %184
  br i1 %185, label %254, label %186

186:                                              ; preds = %174
  %187 = sub i32 %183, %184
  store i32 %187, ptr %151, align 8
  br label %254

188:                                              ; preds = %142
  %189 = load i32, ptr %15, align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %250

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %193 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 16
  %194 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 14
  %195 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 15
  br label %196

196:                                              ; preds = %246, %191
  %197 = phi i32 [ 0, %191 ], [ %247, %246 ]
  %198 = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %197
  %199 = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %197, i32 1
  %200 = load i32, ptr %199, align 4
  %201 = load i32, ptr %198, align 4
  %202 = shl i32 %197, 2
  %203 = add i32 %201, %202
  store i32 %203, ptr %198, align 4
  %204 = add i32 %200, 4
  store i32 %204, ptr %199, align 4
  %205 = load ptr, ptr %192, align 4
  %206 = getelementptr i8, ptr %205, i32 %203
  store i32 %200, ptr %206, align 1
  %207 = add i32 %203, 4
  %208 = load ptr, ptr %4, align 8
  %209 = getelementptr inbounds %struct.snd_pcm_substream, ptr %208, i32 0, i32 11
  %210 = load ptr, ptr %209, align 4
  %211 = load i32, ptr %193, align 8
  %212 = add i32 %211, %200
  %213 = load i32, ptr %194, align 8
  %214 = icmp ugt i32 %212, %213
  br i1 %214, label %215, label %227

215:                                              ; preds = %196
  %216 = sub i32 %213, %211
  %217 = load ptr, ptr %192, align 4
  %218 = getelementptr i8, ptr %217, i32 %207
  %219 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %210, i32 0, i32 50
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr i8, ptr %220, i32 %211
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %218, ptr align 1 %221, i32 %216, i1 false) #9
  %222 = load ptr, ptr %192, align 4
  %223 = getelementptr i8, ptr %222, i32 %207
  %224 = getelementptr i8, ptr %223, i32 %216
  %225 = load ptr, ptr %219, align 4
  %226 = sub i32 %200, %216
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %224, ptr align 1 %225, i32 %226, i1 false) #9
  br label %233

227:                                              ; preds = %196
  %228 = load ptr, ptr %192, align 4
  %229 = getelementptr i8, ptr %228, i32 %207
  %230 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %210, i32 0, i32 50
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr i8, ptr %231, i32 %211
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %229, ptr align 1 %232, i32 %200, i1 false) #9
  br label %233

233:                                              ; preds = %227, %215
  %234 = load ptr, ptr %10, align 4
  %235 = getelementptr inbounds %struct.snd_urb_ctx, ptr %234, i32 0, i32 6
  %236 = load i32, ptr %235, align 4
  %237 = add i32 %236, %200
  store i32 %237, ptr %235, align 4
  %238 = load i32, ptr %195, align 4
  %239 = add i32 %238, %200
  store i32 %239, ptr %195, align 4
  %240 = load i32, ptr %193, align 8
  %241 = add i32 %240, %200
  store i32 %241, ptr %193, align 8
  %242 = load i32, ptr %194, align 8
  %243 = icmp ult i32 %241, %242
  br i1 %243, label %246, label %244

244:                                              ; preds = %233
  %245 = sub i32 %241, %242
  store i32 %245, ptr %193, align 8
  br label %246

246:                                              ; preds = %244, %233
  %247 = add nuw nsw i32 %197, 1
  %248 = load i32, ptr %15, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %196, label %250

250:                                              ; preds = %246, %188
  %251 = phi i32 [ %189, %188 ], [ %248, %246 ]
  %252 = shl i32 %251, 2
  %253 = add i32 %252, %125
  br label %254

254:                                              ; preds = %250, %186, %174, %141, %134
  %255 = phi i32 [ %125, %134 ], [ %125, %141 ], [ %253, %250 ], [ %125, %174 ], [ %125, %186 ]
  %256 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 1
  %257 = load ptr, ptr %256, align 4
  %258 = tail call i32 @usb_get_current_frame_number(ptr noundef %257) #9
  %259 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 28
  store i32 %258, ptr %259, align 8
  %260 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 30
  %261 = load i8, ptr %260, align 8, !range !8
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %271, label %263

263:                                              ; preds = %254
  %264 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 1
  %265 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 49
  %266 = load i32, ptr %265, align 8
  switch i32 %266, label %269 [
    i32 1, label %267
    i32 2, label %268
  ]

267:                                              ; preds = %263
  tail call void @ktime_get_ts64(ptr noundef %264) #9
  br label %270

268:                                              ; preds = %263
  tail call void @ktime_get_raw_ts64(ptr noundef %264) #9
  br label %270

269:                                              ; preds = %263
  tail call void @ktime_get_real_ts64(ptr noundef %264) #9
  br label %270

270:                                              ; preds = %269, %268, %267
  store i8 0, ptr %260, align 8
  br label %271

271:                                              ; preds = %270, %254
  %272 = icmp eq i32 %121, 0
  br i1 %272, label %283, label %273

273:                                              ; preds = %271
  %274 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 12
  %275 = load i8, ptr %274, align 8
  %276 = and i8 %275, 1
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %273
  %279 = load i8, ptr %25, align 1, !range !8
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %285, label %281

281:                                              ; preds = %278
  %282 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 13
  store i32 1, ptr %282, align 4
  br label %283

283:                                              ; preds = %281, %271
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #9
  %284 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  store i32 %255, ptr %284, align 4
  br label %290

285:                                              ; preds = %278, %273
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #9
  %286 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  store i32 %255, ptr %286, align 4
  %287 = load ptr, ptr %4, align 8
  br i1 %2, label %288, label %289

288:                                              ; preds = %285
  tail call void @snd_pcm_period_elapsed_under_stream_lock(ptr noundef %287) #9
  br label %290

289:                                              ; preds = %285
  tail call void @snd_pcm_period_elapsed(ptr noundef %287) #9
  br label %290

290:                                              ; preds = %289, %288, %283, %123
  %291 = phi i32 [ 0, %288 ], [ 0, %289 ], [ -11, %123 ], [ 0, %283 ]
  ret i32 %291
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @retire_playback_urb(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 27
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.snd_urb_ctx, ptr %4, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 15
  %12 = load i32, ptr %11, align 4
  %13 = call i32 @llvm.usub.sat.i32(i32 %12, i32 %8)
  store i32 %13, ptr %11, align 4
  br label %14

14:                                               ; preds = %10, %2
  %15 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @usb_get_current_frame_number(ptr noundef %16) #9
  %18 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 28
  store i32 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 12
  %20 = load i8, ptr %19, align 8
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 13
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  store i32 0, ptr %24, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #9
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  tail call void @snd_pcm_period_elapsed(ptr noundef %29) #9
  br label %31

30:                                               ; preds = %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #9
  br label %31

31:                                               ; preds = %30, %27, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_endpoint_next_packet_size(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fill_playback_urb_dsd_dop(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 16
  %9 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 14
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 50
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %70, label %16

16:                                               ; preds = %3
  %17 = load i32, ptr %8, align 8
  %18 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 29
  %19 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 29, i32 2
  %20 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 5
  %21 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 29, i32 1
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 15
  br label %23

23:                                               ; preds = %65, %16
  %24 = phi i32 [ %2, %16 ], [ %28, %65 ]
  %25 = phi i32 [ 0, %16 ], [ %68, %65 ]
  %26 = phi i32 [ 0, %16 ], [ %67, %65 ]
  %27 = phi i32 [ %17, %16 ], [ %66, %65 ]
  %28 = add i32 %24, -1
  %29 = load i32, ptr %19, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %19, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %47

32:                                               ; preds = %23
  %33 = load i32, ptr %18, align 4
  %34 = getelementptr [2 x i8], ptr @__const.fill_playback_urb_dsd_dop.marker, i32 0, i32 %33
  %35 = load i8, ptr %34, align 1
  %36 = getelementptr i8, ptr %12, i32 %25
  store i8 %35, ptr %36, align 1
  %37 = add i32 %27, 2
  store i32 0, ptr %19, align 4
  %38 = load i32, ptr %21, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %21, align 4
  %40 = load i32, ptr %22, align 8
  %41 = urem i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %32
  %44 = load i32, ptr %18, align 4
  %45 = and i32 %44, 1
  %46 = xor i32 %45, 1
  store i32 %46, ptr %18, align 4
  store i32 0, ptr %21, align 4
  br label %65

47:                                               ; preds = %23
  %48 = add i32 %29, %27
  %49 = urem i32 %48, %10
  %50 = load ptr, ptr %20, align 4
  %51 = getelementptr inbounds %struct.audioformat, ptr %50, i32 0, i32 29
  %52 = load i8, ptr %51, align 1, !range !8
  %53 = icmp eq i8 %52, 0
  %54 = getelementptr i8, ptr %14, i32 %49
  %55 = load i8, ptr %54, align 1
  br i1 %53, label %61, label %56

56:                                               ; preds = %47
  %57 = zext i8 %55 to i32
  %58 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %57) #11, !srcloc !15
  %59 = lshr i32 %58, 24
  %60 = trunc i32 %59 to i8
  br label %61

61:                                               ; preds = %56, %47
  %62 = phi i8 [ %60, %56 ], [ %55, %47 ]
  %63 = getelementptr i8, ptr %12, i32 %25
  store i8 %62, ptr %63, align 1
  %64 = add i32 %26, 1
  br label %65

65:                                               ; preds = %61, %43, %32
  %66 = phi i32 [ %37, %43 ], [ %37, %32 ], [ %27, %61 ]
  %67 = phi i32 [ %26, %43 ], [ %26, %32 ], [ %64, %61 ]
  %68 = add nuw i32 %25, 1
  %69 = icmp eq i32 %28, 0
  br i1 %69, label %70, label %23

70:                                               ; preds = %65, %3
  %71 = phi i32 [ 0, %3 ], [ %67, %65 ]
  %72 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 27
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.snd_urb_ctx, ptr %73, i32 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, %71
  store i32 %76, ptr %74, align 4
  %77 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 15
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, %71
  store i32 %79, ptr %77, align 4
  %80 = load i32, ptr %8, align 8
  %81 = add i32 %80, %71
  store i32 %81, ptr %8, align 8
  %82 = load i32, ptr %9, align 8
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %86, label %84

84:                                               ; preds = %70
  %85 = sub i32 %81, %82
  store i32 %85, ptr %8, align 8
  br label %86

86:                                               ; preds = %84, %70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fill_playback_urb_dsd_bitrev(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 50
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 16
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %3
  %13 = load i32, ptr %10, align 8
  %14 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 14
  br label %17

17:                                               ; preds = %17, %12
  %18 = phi ptr [ %15, %12 ], [ %27, %17 ]
  %19 = phi i32 [ 0, %12 ], [ %32, %17 ]
  %20 = phi i32 [ %13, %12 ], [ %31, %17 ]
  %21 = getelementptr i8, ptr %9, i32 %20
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %23) #11, !srcloc !15
  %25 = lshr i32 %24, 24
  %26 = trunc i32 %25 to i8
  %27 = getelementptr i8, ptr %18, i32 1
  store i8 %26, ptr %18, align 1
  %28 = add i32 %20, 1
  %29 = load i32, ptr %16, align 8
  %30 = icmp ult i32 %28, %29
  %31 = select i1 %30, i32 %28, i32 0
  %32 = add nuw i32 %19, 1
  %33 = icmp eq i32 %32, %2
  br i1 %33, label %34, label %17

34:                                               ; preds = %17, %3
  %35 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 27
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.snd_urb_ctx, ptr %36, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, %2
  store i32 %39, ptr %37, align 4
  %40 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 15
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %2
  store i32 %42, ptr %40, align 4
  %43 = load i32, ptr %10, align 8
  %44 = add i32 %43, %2
  store i32 %44, ptr %10, align 8
  %45 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 14
  %46 = load i32, ptr %45, align 8
  %47 = icmp ult i32 %44, %46
  br i1 %47, label %50, label %48

48:                                               ; preds = %34
  %49 = sub i32 %44, %46
  store i32 %49, ptr %10, align 8
  br label %50

50:                                               ; preds = %48, %34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_current_frame_number(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed_under_stream_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_raw_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_queue_pending_output_urbs(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_usb_substream_capture_trigger(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 44
  %6 = load ptr, ptr %5, align 8
  switch i32 %1, label %39 [
    i32 1, label %7
    i32 4, label %10
    i32 5, label %20
    i32 0, label %20
    i32 3, label %33
  ]

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @start_endpoints(ptr noundef %6)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %39, label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 20
  %12 = load ptr, ptr %11, align 8
  tail call void @snd_usb_endpoint_set_callback(ptr noundef %12, ptr noundef null, ptr noundef nonnull @retire_capture_urb, ptr noundef %6) #9
  %13 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @usb_get_current_frame_number(ptr noundef %14) #9
  %16 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 28
  store i32 %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 12
  %18 = load i8, ptr %17, align 8
  %19 = or i8 %18, 1
  store i8 %19, ptr %17, align 8
  br label %39

20:                                               ; preds = %2, %2
  %21 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 22
  %22 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %21) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 21
  %26 = load ptr, ptr %25, align 4
  tail call void @snd_usb_endpoint_stop(ptr noundef %26, i1 noundef zeroext false) #9
  br label %27

27:                                               ; preds = %24, %20
  %28 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %21) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 20
  %32 = load ptr, ptr %31, align 8
  tail call void @snd_usb_endpoint_stop(ptr noundef %32, i1 noundef zeroext false) #9
  br label %33

33:                                               ; preds = %30, %27, %2
  %34 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 20
  %35 = load ptr, ptr %34, align 8
  tail call void @snd_usb_endpoint_set_callback(ptr noundef %35, ptr noundef null, ptr noundef null, ptr noundef null) #9
  %36 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 12
  %37 = load i8, ptr %36, align 8
  %38 = and i8 %37, -2
  store i8 %38, ptr %36, align 8
  br label %39

39:                                               ; preds = %33, %10, %7, %2
  %40 = phi i32 [ 0, %33 ], [ 0, %10 ], [ %8, %7 ], [ -22, %2 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @retire_capture_urb(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @usb_get_current_frame_number(ptr noundef %8) #9
  %10 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 21
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 3
  %13 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 24
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %113

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %18 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 10
  %19 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 11
  %20 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 22
  %22 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 27
  %23 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 16
  %24 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 14
  %25 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 17
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 16
  %27 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 28
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 50
  br label %29

29:                                               ; preds = %105, %16
  %30 = phi i32 [ 0, %16 ], [ %106, %105 ]
  %31 = phi i32 [ 0, %16 ], [ %92, %105 ]
  %32 = load ptr, ptr %17, align 4
  %33 = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %30
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i8, ptr %32, i32 %34
  %36 = load i32, ptr %18, align 8
  %37 = getelementptr i8, ptr %35, i32 %36
  %38 = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %30, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %29
  %42 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.retire_capture_urb) #9
  br label %43

43:                                               ; preds = %41, %29
  %44 = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %30, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = load i32, ptr %19, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = tail call i32 @llvm.umin.i32(i32 %46, i32 %45)
  %50 = getelementptr i8, ptr %37, i32 %49
  %51 = sub i32 %45, %49
  %52 = sub i32 %46, %49
  store i32 %52, ptr %19, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi ptr [ %50, %48 ], [ %37, %43 ]
  %55 = phi i32 [ %51, %48 ], [ %45, %43 ]
  %56 = load i8, ptr %20, align 8
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  %59 = urem i32 %55, %12
  %60 = sub i32 %55, %59
  %61 = select i1 %58, i32 %60, i32 %55
  %62 = load i32, ptr %21, align 4
  %63 = lshr i32 %62, 3
  %64 = urem i32 %61, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %53
  %67 = tail call i32 @___ratelimit(ptr noundef nonnull @retire_capture_urb._rs, ptr noundef nonnull @__func__.retire_capture_urb) #9
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %7, align 4
  %71 = getelementptr inbounds %struct.usb_device, ptr %70, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %71, ptr noundef nonnull @.str.4, i32 noundef %61, i32 noundef %60) #10
  br label %72

72:                                               ; preds = %69, %66, %53
  %73 = phi i32 [ %61, %53 ], [ %60, %69 ], [ %60, %66 ]
  %74 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #9
  %75 = load i32, ptr %23, align 8
  %76 = add i32 %75, %73
  store i32 %76, ptr %23, align 8
  %77 = load i32, ptr %24, align 8
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %81, label %79

79:                                               ; preds = %72
  %80 = sub i32 %76, %77
  store i32 %80, ptr %23, align 8
  br label %81

81:                                               ; preds = %79, %72
  %82 = urem i32 %75, %12
  %83 = add i32 %82, %73
  %84 = udiv i32 %83, %12
  %85 = load i32, ptr %25, align 4
  %86 = add i32 %85, %84
  store i32 %86, ptr %25, align 4
  %87 = load i32, ptr %26, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %91, label %89

89:                                               ; preds = %81
  %90 = sub i32 %86, %87
  store i32 %90, ptr %25, align 4
  br label %91

91:                                               ; preds = %89, %81
  %92 = phi i32 [ 1, %89 ], [ %31, %81 ]
  store i32 %9, ptr %27, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %74) #9
  %93 = load i32, ptr %24, align 8
  %94 = icmp ugt i32 %76, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = sub i32 %93, %75
  %97 = load ptr, ptr %28, align 4
  %98 = getelementptr i8, ptr %97, i32 %75
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %98, ptr align 1 %54, i32 %96, i1 false)
  %99 = load ptr, ptr %28, align 4
  %100 = getelementptr i8, ptr %54, i32 %96
  %101 = sub i32 %73, %96
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %99, ptr align 1 %100, i32 %101, i1 false)
  br label %105

102:                                              ; preds = %91
  %103 = load ptr, ptr %28, align 4
  %104 = getelementptr i8, ptr %103, i32 %75
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %104, ptr align 1 %54, i32 %73, i1 false)
  br label %105

105:                                              ; preds = %102, %95
  %106 = add nuw nsw i32 %30, 1
  %107 = load i32, ptr %13, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %29, label %109

109:                                              ; preds = %105
  %110 = icmp eq i32 %92, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %109
  %112 = load ptr, ptr %3, align 8
  tail call void @snd_pcm_period_elapsed(ptr noundef %112) #9
  br label %113

113:                                              ; preds = %111, %109, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

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
!9 = !{i32 0, i32 33}
!10 = !{i64 2148968928}
!11 = !{i64 2148964752}
!12 = !{i64 2148964827, i64 2148964854, i64 2148964901, i64 2148964923, i64 2148964951, i64 2148964971}
!13 = !{i64 2148991931}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2635372}
