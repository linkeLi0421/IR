; ModuleID = '/llk/IR/sound/usb/stream.c_pt.bc'
source_filename = "../sound/usb/stream.c"
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
%struct.audioformat = type { %struct.list_head, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, i8, ptr, i8, i8, i8 }
%struct.snd_usb_substream = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i64, i32, %struct.list_head, %struct.spinlock, i32, %struct.anon.81, i8, i8, ptr }
%struct.anon.81 = type { i32, i32, i32 }
%struct.snd_pcm_chmap = type { ptr, i32, ptr, ptr, i32, i32, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.80, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.80 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_usb_stream = type { ptr, ptr, i32, i32, [2 x %struct.snd_usb_substream], %struct.list_head }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8 }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, ptr, ptr, %struct.device }
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
%struct.uac3_hc_descriptor_header = type { i16, i8, i8, i16 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.uac1_as_header_descriptor = type <{ i8, i8, i8, i8, i8, i16 }>
%struct.uac2_input_terminal_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i32, i8, i16, i8 }>
%struct.uac_input_terminal_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16, i8, i8 }
%struct.uac2_as_header_descriptor = type <{ i8, i8, i8, i8, i8, i8, i32, i8, i32, i8 }>
%struct.uac2_output_terminal_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i16, i8 }>
%struct.uac_format_type_i_continuous_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], [3 x i8] }
%struct.snd_pcm_chmap_elem = type { i8, [15 x i8] }
%struct.uac3_as_header_descriptor = type <{ i8, i8, i8, i8, i32, i16, i64, i8, i8, i16, i8 }>
%struct.uac3_cluster_header_descriptor = type <{ i16, i8, i8, i16, i8 }>
%struct.uac3_cluster_segment_descriptor = type <{ i16, i8 }>
%struct.uac3_cluster_information_segment_descriptor = type { i16, i8, i8, i8, i8 }
%struct.uac3_input_terminal_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i32, i16, i16, i16, i16 }
%struct.uac3_output_terminal_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i32, i16, i16, i16 }>
%struct.snd_usb_power_domain = type { i32, i32, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.71, [64 x i8] }
%union.anon.71 = type { %struct.anon.74, [40 x i8] }
%struct.anon.74 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.75, [128 x i8] }
%union.anon.75 = type { %union.anon.77 }
%union.anon.77 = type { [64 x i64] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.uac_iso_endpoint_descriptor = type <{ i8, i8, i8, i8, i8, i16 }>
%struct.uac2_iso_endpoint_descriptor = type { i8, i8, i8, i8, i8, i8, i16 }
%struct.uac3_iso_endpoint_descriptor = type <{ i8, i8, i8, i32, i8, i16 }>

@.str = private unnamed_addr constant [10 x i8] c"USB Audio\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"USB Audio #%d\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"%u:%d : UAC_AS_GENERAL descriptor not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"%u:%d : invalid UAC_AS_GENERAL desc\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%u:%d : bogus bTerminalLink %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"%u:%d : no UAC_FORMAT_TYPE desc\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"%u:%d : invalid UAC_FORMAT_TYPE desc\0A\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"%u:%d : no or invalid class specific endpoint descriptor\0A\00", align 1
@convert_chmap.uac1_maps = internal unnamed_addr constant [13 x i32] [i32 3, i32 4, i32 7, i32 8, i32 9, i32 10, i32 12, i32 13, i32 11, i32 9, i32 10, i32 21, i32 0], align 4
@convert_chmap.uac2_maps = internal unnamed_addr constant [28 x i32] [i32 3, i32 4, i32 7, i32 8, i32 5, i32 6, i32 12, i32 13, i32 11, i32 9, i32 10, i32 21, i32 22, i32 24, i32 23, i32 25, i32 27, i32 26, i32 28, i32 29, i32 32, i32 33, i32 30, i32 31, i32 34, i32 14, i32 15, i32 0], align 4
@.str.8 = private unnamed_addr constant [51 x i8] c"%u:%d : incorrect wMaxPacketSize for BADD profile\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"%u:%d : no cluster descriptor\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"%u:%d : can't get High Capability descriptor\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"%u:%d : can't get Cluster Descriptor\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"\013%s: channel number mismatch\0A\00", align 1
@__func__.convert_chmap_v3 = private unnamed_addr constant [17 x i8] c"convert_chmap_v3\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_add_audio_stream(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @__snd_usb_add_audio_stream(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef null)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__snd_usb_add_audio_stream(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store ptr null, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 18
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %102, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.audioformat, ptr %2, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.audioformat, ptr %2, i32 0, i32 11
  br label %19

15:                                               ; preds = %45
  br i1 %10, label %102, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.audioformat, ptr %2, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  br label %48

19:                                               ; preds = %45, %11
  %20 = phi ptr [ %9, %11 ], [ %46, %45 ]
  %21 = getelementptr i8, ptr %20, i32 -292
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %13
  br i1 %23, label %24, label %45

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %20, i32 -288
  %26 = getelementptr [2 x %struct.snd_usb_substream], ptr %25, i32 0, i32 %1
  %27 = getelementptr inbounds %struct.snd_usb_substream, ptr %26, i32 0, i32 19
  %28 = load i32, ptr %27, align 4
  %29 = load i8, ptr %14, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.snd_usb_substream, ptr %26, i32 0, i32 26
  %34 = getelementptr inbounds %struct.snd_usb_substream, ptr %26, i32 0, i32 26, i32 1
  %35 = load ptr, ptr %34, align 4
  store ptr %2, ptr %34, align 4
  store ptr %33, ptr %2, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  store volatile ptr %2, ptr %35, align 4
  %37 = getelementptr inbounds %struct.snd_usb_substream, ptr %26, i32 0, i32 25
  %38 = load i32, ptr %37, align 8
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 8
  %40 = getelementptr inbounds %struct.audioformat, ptr %2, i32 0, i32 1
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds %struct.snd_usb_substream, ptr %26, i32 0, i32 24
  %43 = load i64, ptr %42, align 8
  %44 = or i64 %43, %41
  store i64 %44, ptr %42, align 8
  br label %176

45:                                               ; preds = %24, %19
  %46 = load ptr, ptr %20, align 4
  %47 = icmp eq ptr %46, %8
  br i1 %47, label %15, label %19

48:                                               ; preds = %99, %16
  %49 = phi ptr [ %9, %16 ], [ %100, %99 ]
  %50 = getelementptr i8, ptr %49, i32 -292
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, %18
  br i1 %52, label %53, label %99

53:                                               ; preds = %48
  %54 = getelementptr i8, ptr %49, i32 -288
  %55 = getelementptr [2 x %struct.snd_usb_substream], ptr %54, i32 0, i32 %1
  %56 = getelementptr inbounds %struct.snd_usb_substream, ptr %55, i32 0, i32 19
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %99

59:                                               ; preds = %53
  %60 = getelementptr i8, ptr %49, i32 -304
  %61 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i8, ptr %49, i32 -300
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 @snd_device_get_state(ptr noundef %62, ptr noundef %64) #13
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 13
  %69 = load i8, ptr %68, align 4
  %70 = or i8 %69, 1
  store i8 %70, ptr %68, align 4
  br label %71

71:                                               ; preds = %67, %59
  %72 = load ptr, ptr %63, align 4
  %73 = tail call i32 @snd_pcm_new_stream(ptr noundef %72, i32 noundef %1, i32 noundef 1) #13
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %176, label %75

75:                                               ; preds = %71
  tail call fastcc void @snd_usb_init_substream(ptr noundef %60, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  %76 = load ptr, ptr %63, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr null, ptr %6, align 4, !annotation !8
  %77 = getelementptr inbounds %struct.snd_usb_substream, ptr %55, i32 0, i32 26
  br label %78

78:                                               ; preds = %82, %75
  %79 = phi ptr [ %77, %75 ], [ %80, %82 ]
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %77
  br i1 %81, label %97, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.audioformat, ptr %80, i32 0, i32 27
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %78, label %86

86:                                               ; preds = %82
  %87 = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %76, i32 noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %6) #13
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %6, align 4
  %91 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %90, i32 0, i32 6
  store ptr %55, ptr %91, align 4
  %92 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %90, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.snd_kcontrol, ptr %93, i32 0, i32 3
  store ptr @usb_chmap_ctl_info, ptr %94, align 4
  %95 = getelementptr inbounds %struct.snd_kcontrol, ptr %93, i32 0, i32 4
  store ptr @usb_chmap_ctl_get, ptr %95, align 4
  %96 = getelementptr inbounds %struct.snd_kcontrol, ptr %93, i32 0, i32 6
  store ptr @usb_chmap_ctl_tlv, ptr %96, align 4
  br label %97

97:                                               ; preds = %89, %86, %78
  %98 = phi i32 [ 0, %89 ], [ %87, %86 ], [ 0, %78 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  br label %176

99:                                               ; preds = %53, %48
  %100 = load ptr, ptr %49, align 4
  %101 = icmp eq ptr %100, %8
  br i1 %101, label %102, label %48

102:                                              ; preds = %99, %15, %4
  %103 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %104 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %103, i32 noundef 3520, i32 noundef 312) #14
  %105 = icmp eq ptr %104, null
  br i1 %105, label %176, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 21
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.snd_usb_stream, ptr %104, i32 0, i32 2
  store i32 %108, ptr %109, align 8
  store ptr %0, ptr %104, align 8
  %110 = getelementptr inbounds %struct.audioformat, ptr %2, i32 0, i32 3
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr inbounds %struct.snd_usb_stream, ptr %104, i32 0, i32 3
  store i32 %111, ptr %112, align 4
  %113 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 2
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq i32 %1, 0
  %116 = zext i1 %115 to i32
  %117 = xor i1 %115, true
  %118 = zext i1 %117 to i32
  %119 = call i32 @snd_pcm_new(ptr noundef %114, ptr noundef nonnull @.str, i32 noundef %108, i32 noundef %116, i32 noundef %118, ptr noundef nonnull %7) #13
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %106
  call void @kfree(ptr noundef nonnull %104) #13
  br label %176

122:                                              ; preds = %106
  %123 = load ptr, ptr %7, align 4
  %124 = getelementptr inbounds %struct.snd_usb_stream, ptr %104, i32 0, i32 1
  store ptr %123, ptr %124, align 4
  %125 = getelementptr inbounds %struct.snd_pcm, ptr %123, i32 0, i32 11
  store ptr %104, ptr %125, align 8
  %126 = getelementptr inbounds %struct.snd_pcm, ptr %123, i32 0, i32 12
  store ptr @snd_usb_audio_pcm_free, ptr %126, align 4
  %127 = getelementptr inbounds %struct.snd_pcm, ptr %123, i32 0, i32 3
  store i32 0, ptr %127, align 8
  %128 = load i32, ptr %107, align 4
  %129 = icmp sgt i32 %128, 0
  %130 = getelementptr inbounds %struct.snd_pcm, ptr %123, i32 0, i32 7
  br i1 %129, label %131, label %133

131:                                              ; preds = %122
  %132 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %130, ptr noundef nonnull @.str.1, i32 noundef %128)
  br label %134

133:                                              ; preds = %122
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %130, ptr noundef nonnull align 1 dereferenceable(10) @.str, i32 10, i1 false)
  br label %134

134:                                              ; preds = %133, %131
  call fastcc void @snd_usb_init_substream(ptr noundef nonnull %104, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  %135 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 4
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %136, 123936771
  %138 = getelementptr inbounds %struct.snd_usb_stream, ptr %104, i32 0, i32 5
  br i1 %137, label %139, label %142

139:                                              ; preds = %134
  %140 = load ptr, ptr %8, align 4
  %141 = getelementptr inbounds %struct.list_head, ptr %140, i32 0, i32 1
  br label %145

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 18, i32 1
  %144 = load ptr, ptr %143, align 4
  br label %145

145:                                              ; preds = %142, %139
  %146 = phi ptr [ %143, %142 ], [ %141, %139 ]
  %147 = phi ptr [ %8, %142 ], [ %140, %139 ]
  %148 = phi ptr [ %144, %142 ], [ %8, %139 ]
  store ptr %138, ptr %146, align 4
  store ptr %147, ptr %138, align 8
  %149 = getelementptr inbounds %struct.snd_usb_stream, ptr %104, i32 0, i32 5, i32 1
  store ptr %148, ptr %149, align 4
  store volatile ptr %138, ptr %148, align 4
  %150 = load i32, ptr %107, align 4
  %151 = add i32 %150, 1
  store i32 %151, ptr %107, align 4
  call void @snd_usb_proc_pcm_format_add(ptr noundef nonnull %104) #13
  %152 = load ptr, ptr %7, align 4
  %153 = getelementptr %struct.snd_usb_stream, ptr %104, i32 0, i32 4, i32 %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !8
  %154 = getelementptr %struct.snd_usb_stream, ptr %104, i32 0, i32 4, i32 %1, i32 26
  br label %155

155:                                              ; preds = %159, %145
  %156 = phi ptr [ %154, %145 ], [ %157, %159 ]
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, %154
  br i1 %158, label %174, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.audioformat, ptr %157, i32 0, i32 27
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %155, label %163

163:                                              ; preds = %159
  %164 = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %152, i32 noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #13
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %163
  %167 = load ptr, ptr %5, align 4
  %168 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %167, i32 0, i32 6
  store ptr %153, ptr %168, align 4
  %169 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %167, i32 0, i32 2
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.snd_kcontrol, ptr %170, i32 0, i32 3
  store ptr @usb_chmap_ctl_info, ptr %171, align 4
  %172 = getelementptr inbounds %struct.snd_kcontrol, ptr %170, i32 0, i32 4
  store ptr @usb_chmap_ctl_get, ptr %172, align 4
  %173 = getelementptr inbounds %struct.snd_kcontrol, ptr %170, i32 0, i32 6
  store ptr @usb_chmap_ctl_tlv, ptr %173, align 4
  br label %174

174:                                              ; preds = %166, %163, %155
  %175 = phi i32 [ 0, %166 ], [ %164, %163 ], [ 0, %155 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %176

176:                                              ; preds = %174, %121, %102, %97, %71, %32
  %177 = phi i32 [ 0, %32 ], [ %98, %97 ], [ %119, %121 ], [ %175, %174 ], [ %73, %71 ], [ -12, %102 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  ret i32 %177
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_parse_audio_interface(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 0, ptr %3, align 1
  %4 = call fastcc i32 @__snd_usb_parse_audio_interface(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3, i1 noundef zeroext false)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %3, align 1, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = call fastcc i32 @__snd_usb_parse_audio_interface(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3, i1 noundef zeroext true)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %6
  br label %13

13:                                               ; preds = %12, %9, %2
  %14 = phi i32 [ 0, %12 ], [ %4, %2 ], [ %10, %9 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  ret i32 %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__snd_usb_parse_audio_interface(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.uac3_hc_descriptor_header, align 2
  %6 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @usb_ifnum_to_if(ptr noundef %7, i32 noundef %1) #13
  %9 = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 83509761
  %14 = select i1 %13, i32 4, i32 %10
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %748

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 17
  %18 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 28
  %19 = trunc i32 %1 to i8
  %20 = icmp eq i32 %14, 3
  br label %21

21:                                               ; preds = %743, %16
  %22 = phi ptr [ null, %16 ], [ %745, %743 ]
  %23 = phi i32 [ 0, %16 ], [ %746, %743 ]
  %24 = phi ptr [ null, %16 ], [ %744, %743 ]
  %25 = load ptr, ptr %8, align 8
  %26 = getelementptr %struct.usb_host_interface, ptr %25, i32 %23
  %27 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %26, i32 0, i32 7
  %28 = load i8, ptr %27, align 1
  %29 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %26, i32 0, i32 5
  %30 = load i8, ptr %29, align 1
  switch i8 %30, label %743 [
    i8 1, label %31
    i8 -1, label %34
  ]

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %26, i32 0, i32 6
  %33 = load i8, ptr %32, align 1
  switch i8 %33, label %743 [
    i8 2, label %34
    i8 -1, label %34
  ]

34:                                               ; preds = %31, %31, %21
  %35 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %26, i32 0, i32 4
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %743, label %38

38:                                               ; preds = %34
  %39 = getelementptr %struct.usb_host_interface, ptr %25, i32 %23, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %40, i32 0, i32 4
  %42 = load i16, ptr %41, align 4
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %743, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %40, i32 0, i32 3
  %46 = load i8, ptr %45, align 1
  %47 = and i8 %46, 3
  %48 = icmp eq i8 %47, 1
  br i1 %48, label %49, label %743

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %40, i32 0, i32 2
  %51 = load i8, ptr %50, align 2
  %52 = lshr i8 %51, 7
  %53 = zext i8 %52 to i32
  %54 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %26, i32 0, i32 3
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = call i32 @snd_usb_apply_interface_quirk(ptr noundef %0, i32 noundef %1, i32 noundef %56) #13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %743

59:                                               ; preds = %49
  %60 = load i32, ptr %11, align 4
  %61 = and i32 %60, -65536
  %62 = icmp eq i32 %61, 92405760
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i8, ptr %29, align 1
  %65 = icmp eq i8 %64, -1
  %66 = icmp ult i8 %28, 3
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %70, label %68

68:                                               ; preds = %63, %59
  switch i8 %28, label %69 [
    i8 0, label %70
    i8 32, label %70
    i8 48, label %368
  ]

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69, %68, %68, %63
  %71 = phi i8 [ 0, %69 ], [ %28, %68 ], [ %28, %68 ], [ 0, %63 ]
  %72 = zext i8 %71 to i32
  %73 = icmp eq i8 %55, 2
  %74 = select i1 %73, i1 %20, i1 false
  %75 = icmp ne ptr %22, null
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %77, label %101

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 7
  %79 = load i8, ptr %78, align 1
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %81, label %101

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 2
  %83 = load i32, ptr %82, align 8
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 1
  %87 = load i64, ptr %86, align 8
  %88 = icmp eq i64 %87, 4
  %89 = icmp eq i8 %71, 0
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %91, label %101

91:                                               ; preds = %85
  %92 = load ptr, ptr %39, align 4
  %93 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %92, i32 0, i32 4
  %94 = load i16, ptr %93, align 4
  %95 = zext i16 %94 to i32
  %96 = getelementptr inbounds %struct.audioformat, ptr %22, i32 0, i32 20
  %97 = load i32, ptr %96, align 8
  %98 = shl i32 %97, 1
  %99 = icmp eq i32 %98, %95
  %100 = zext i1 %99 to i32
  br label %101

101:                                              ; preds = %91, %85, %81, %77, %70
  %102 = phi i32 [ 0, %85 ], [ 0, %81 ], [ 0, %77 ], [ 0, %70 ], [ %100, %91 ]
  %103 = load ptr, ptr %6, align 4
  %104 = icmp eq i8 %71, 0
  %105 = getelementptr %struct.usb_host_interface, ptr %25, i32 %23, i32 2
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr %struct.usb_host_interface, ptr %25, i32 %23, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = call ptr @snd_usb_find_csint_desc(ptr noundef %106, i32 noundef %108, ptr noundef null, i8 noundef zeroext 1) #13
  %110 = icmp eq ptr %109, null
  br i1 %104, label %111, label %150

111:                                              ; preds = %101
  br i1 %110, label %112, label %114

112:                                              ; preds = %111
  %113 = getelementptr inbounds %struct.usb_device, ptr %103, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.2, i32 noundef %1, i32 noundef %56) #15
  br label %743

114:                                              ; preds = %111
  %115 = load i8, ptr %109, align 1
  %116 = icmp ult i8 %115, 7
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.usb_device, ptr %103, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.3, i32 noundef %1, i32 noundef %56) #15
  br label %743

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.uac1_as_header_descriptor, ptr %109, i32 0, i32 5
  %121 = load i16, ptr %120, align 1
  %122 = zext i16 %121 to i64
  %123 = load ptr, ptr %18, align 4
  %124 = getelementptr inbounds %struct.uac1_as_header_descriptor, ptr %109, i32 0, i32 3
  %125 = load i8, ptr %124, align 1
  %126 = getelementptr inbounds %struct.usb_host_interface, ptr %123, i32 0, i32 2
  %127 = getelementptr inbounds %struct.usb_host_interface, ptr %123, i32 0, i32 1
  %128 = load ptr, ptr %126, align 4
  %129 = load i32, ptr %127, align 4
  %130 = call ptr @snd_usb_find_csint_desc(ptr noundef %128, i32 noundef %129, ptr noundef null, i8 noundef zeroext 2) #13
  %131 = icmp eq ptr %130, null
  br i1 %131, label %229, label %132

132:                                              ; preds = %135, %119
  %133 = phi ptr [ %138, %135 ], [ %130, %119 ]
  %134 = call zeroext i1 @snd_usb_validate_audio_desc(ptr noundef nonnull %133, i32 noundef 0) #13
  br i1 %134, label %140, label %135

135:                                              ; preds = %140, %132
  %136 = load ptr, ptr %126, align 4
  %137 = load i32, ptr %127, align 4
  %138 = call ptr @snd_usb_find_csint_desc(ptr noundef %136, i32 noundef %137, ptr noundef nonnull %133, i8 noundef zeroext 2) #13
  %139 = icmp eq ptr %138, null
  br i1 %139, label %229, label %132

140:                                              ; preds = %132
  %141 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, ptr %133, i32 0, i32 3
  %142 = load i8, ptr %141, align 1
  %143 = icmp eq i8 %142, %125
  br i1 %143, label %144, label %135

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.uac_input_terminal_descriptor, ptr %133, i32 0, i32 6
  %146 = load i8, ptr %145, align 1
  %147 = getelementptr inbounds %struct.uac_input_terminal_descriptor, ptr %133, i32 0, i32 7
  %148 = load i16, ptr %147, align 1
  %149 = zext i16 %148 to i32
  br label %229

150:                                              ; preds = %101
  br i1 %110, label %151, label %153

151:                                              ; preds = %150
  %152 = getelementptr inbounds %struct.usb_device, ptr %103, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %152, ptr noundef nonnull @.str.2, i32 noundef %1, i32 noundef %56) #15
  br label %743

153:                                              ; preds = %150
  %154 = load i8, ptr %109, align 1
  %155 = icmp ult i8 %154, 16
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.usb_device, ptr %103, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %157, ptr noundef nonnull @.str.3, i32 noundef %1, i32 noundef %56) #15
  br label %743

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.uac2_as_header_descriptor, ptr %109, i32 0, i32 7
  %160 = load i8, ptr %159, align 1
  %161 = getelementptr inbounds %struct.uac2_as_header_descriptor, ptr %109, i32 0, i32 6
  %162 = load i32, ptr %161, align 1
  %163 = getelementptr inbounds %struct.uac2_as_header_descriptor, ptr %109, i32 0, i32 8
  %164 = load i32, ptr %163, align 1
  %165 = load ptr, ptr %18, align 4
  %166 = getelementptr inbounds %struct.uac2_as_header_descriptor, ptr %109, i32 0, i32 3
  %167 = load i8, ptr %166, align 1
  %168 = getelementptr inbounds %struct.usb_host_interface, ptr %165, i32 0, i32 2
  %169 = getelementptr inbounds %struct.usb_host_interface, ptr %165, i32 0, i32 1
  %170 = load ptr, ptr %168, align 4
  %171 = load i32, ptr %169, align 4
  %172 = call ptr @snd_usb_find_csint_desc(ptr noundef %170, i32 noundef %171, ptr noundef null, i8 noundef zeroext 2) #13
  %173 = icmp eq ptr %172, null
  br i1 %173, label %197, label %174

174:                                              ; preds = %177, %158
  %175 = phi ptr [ %180, %177 ], [ %172, %158 ]
  %176 = call zeroext i1 @snd_usb_validate_audio_desc(ptr noundef nonnull %175, i32 noundef %72) #13
  br i1 %176, label %182, label %177

177:                                              ; preds = %182, %174
  %178 = load ptr, ptr %168, align 4
  %179 = load i32, ptr %169, align 4
  %180 = call ptr @snd_usb_find_csint_desc(ptr noundef %178, i32 noundef %179, ptr noundef nonnull %175, i8 noundef zeroext 2) #13
  %181 = icmp eq ptr %180, null
  br i1 %181, label %197, label %174

182:                                              ; preds = %174
  %183 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, ptr %175, i32 0, i32 3
  %184 = load i8, ptr %183, align 1
  %185 = icmp eq i8 %184, %167
  br i1 %185, label %186, label %177

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, ptr %175, i32 0, i32 6
  %188 = load i8, ptr %187, align 1
  %189 = icmp eq i32 %164, 0
  br i1 %189, label %190, label %225

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, ptr %175, i32 0, i32 7
  %192 = load i8, ptr %191, align 1
  %193 = icmp eq i8 %160, %192
  br i1 %193, label %194, label %225

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, ptr %175, i32 0, i32 8
  %196 = load i32, ptr %195, align 1
  br label %225

197:                                              ; preds = %177, %158
  %198 = load ptr, ptr %18, align 4
  %199 = load i8, ptr %166, align 1
  %200 = getelementptr inbounds %struct.usb_host_interface, ptr %198, i32 0, i32 2
  %201 = getelementptr inbounds %struct.usb_host_interface, ptr %198, i32 0, i32 1
  %202 = load ptr, ptr %200, align 4
  %203 = load i32, ptr %201, align 4
  %204 = call ptr @snd_usb_find_csint_desc(ptr noundef %202, i32 noundef %203, ptr noundef null, i8 noundef zeroext 3) #13
  %205 = icmp eq ptr %204, null
  br i1 %205, label %221, label %206

206:                                              ; preds = %209, %197
  %207 = phi ptr [ %212, %209 ], [ %204, %197 ]
  %208 = call zeroext i1 @snd_usb_validate_audio_desc(ptr noundef nonnull %207, i32 noundef %72) #13
  br i1 %208, label %214, label %209

209:                                              ; preds = %214, %206
  %210 = load ptr, ptr %200, align 4
  %211 = load i32, ptr %201, align 4
  %212 = call ptr @snd_usb_find_csint_desc(ptr noundef %210, i32 noundef %211, ptr noundef nonnull %207, i8 noundef zeroext 3) #13
  %213 = icmp eq ptr %212, null
  br i1 %213, label %221, label %206

214:                                              ; preds = %206
  %215 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, ptr %207, i32 0, i32 3
  %216 = load i8, ptr %215, align 1
  %217 = icmp eq i8 %216, %199
  br i1 %217, label %218, label %209

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, ptr %207, i32 0, i32 7
  %220 = load i8, ptr %219, align 1
  br label %225

221:                                              ; preds = %209, %197
  %222 = getelementptr inbounds %struct.usb_device, ptr %103, i32 0, i32 15
  %223 = load i8, ptr %166, align 1
  %224 = zext i8 %223 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %222, ptr noundef nonnull @.str.4, i32 noundef %1, i32 noundef %56, i32 noundef %224) #15
  br label %743

225:                                              ; preds = %218, %194, %190, %186
  %226 = phi i32 [ 0, %190 ], [ %196, %194 ], [ %164, %186 ], [ %164, %218 ]
  %227 = phi i8 [ %188, %190 ], [ %188, %194 ], [ %188, %186 ], [ %220, %218 ]
  %228 = zext i32 %162 to i64
  br label %229

229:                                              ; preds = %225, %144, %135, %119
  %230 = phi i8 [ %160, %225 ], [ %146, %144 ], [ 0, %119 ], [ 0, %135 ]
  %231 = phi i32 [ %226, %225 ], [ %149, %144 ], [ 0, %119 ], [ 0, %135 ]
  %232 = phi i8 [ %227, %225 ], [ 0, %144 ], [ 0, %119 ], [ 0, %135 ]
  %233 = phi i64 [ %228, %225 ], [ %122, %144 ], [ %122, %119 ], [ %122, %135 ]
  %234 = zext i8 %230 to i32
  %235 = load ptr, ptr %105, align 4
  %236 = load i32, ptr %107, align 4
  %237 = call ptr @snd_usb_find_csint_desc(ptr noundef %235, i32 noundef %236, ptr noundef null, i8 noundef zeroext 2) #13
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %241

239:                                              ; preds = %229
  %240 = getelementptr inbounds %struct.usb_device, ptr %103, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %240, ptr noundef nonnull @.str.5, i32 noundef %1, i32 noundef %56) #15
  br label %743

241:                                              ; preds = %229
  br i1 %104, label %242, label %245

242:                                              ; preds = %241
  %243 = load i8, ptr %237, align 1
  %244 = icmp ult i8 %243, 8
  br i1 %244, label %250, label %252

245:                                              ; preds = %241
  %246 = icmp eq i8 %71, 32
  br i1 %246, label %247, label %252

247:                                              ; preds = %245
  %248 = load i8, ptr %237, align 1
  %249 = icmp ult i8 %248, 6
  br i1 %249, label %250, label %252

250:                                              ; preds = %247, %242
  %251 = getelementptr inbounds %struct.usb_device, ptr %103, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %251, ptr noundef nonnull @.str.6, i32 noundef %1, i32 noundef %56) #15
  br label %743

252:                                              ; preds = %247, %245, %242
  %253 = phi ptr [ @convert_chmap.uac2_maps, %247 ], [ @convert_chmap.uac1_maps, %245 ], [ @convert_chmap.uac1_maps, %242 ]
  %254 = icmp eq i32 %102, 0
  br i1 %254, label %263, label %255

255:                                              ; preds = %252
  %256 = getelementptr inbounds %struct.uac_format_type_i_continuous_descriptor, ptr %237, i32 0, i32 4
  %257 = load i8, ptr %256, align 1
  %258 = icmp eq i8 %257, 1
  br i1 %258, label %259, label %263

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.uac_format_type_i_continuous_descriptor, ptr %237, i32 0, i32 5
  %261 = load i8, ptr %260, align 1
  %262 = icmp eq i8 %261, 2
  br i1 %262, label %743, label %263

263:                                              ; preds = %259, %255, %252
  %264 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %265 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %264, i32 noundef 3520, i32 noundef 88) #14
  %266 = icmp eq ptr %265, null
  br i1 %266, label %688, label %267

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.audioformat, ptr %265, i32 0, i32 6
  store i8 %19, ptr %268, align 8
  %269 = getelementptr inbounds %struct.audioformat, ptr %265, i32 0, i32 7
  store i8 %55, ptr %269, align 1
  %270 = trunc i32 %23 to i8
  %271 = getelementptr inbounds %struct.audioformat, ptr %265, i32 0, i32 9
  store i8 %270, ptr %271, align 1
  %272 = load ptr, ptr %39, align 4
  %273 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %272, i32 0, i32 2
  %274 = load i8, ptr %273, align 2
  %275 = getelementptr inbounds %struct.audioformat, ptr %265, i32 0, i32 11
  store i8 %274, ptr %275, align 1
  %276 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %272, i32 0, i32 3
  %277 = load i8, ptr %276, align 1
  %278 = getelementptr inbounds %struct.audioformat, ptr %265, i32 0, i32 12
  store i8 %277, ptr %278, align 2
  %279 = call zeroext i8 @snd_usb_parse_datainterval(ptr noundef %0, ptr noundef %26) #13
  %280 = getelementptr inbounds %struct.audioformat, ptr %265, i32 0, i32 18
  store i8 %279, ptr %280, align 4
  %281 = getelementptr inbounds %struct.audioformat, ptr %265, i32 0, i32 19
  store i8 %71, ptr %281, align 1
  %282 = load ptr, ptr %39, align 4
  %283 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %282, i32 0, i32 4
  %284 = load i16, ptr %283, align 4
  %285 = zext i16 %284 to i32
  %286 = getelementptr inbounds %struct.audioformat, ptr %265, i32 0, i32 20
  store i32 %285, ptr %286, align 8
  %287 = getelementptr inbounds %struct.audioformat, ptr %265, i32 0, i32 2
  store i32 %234, ptr %287, align 8
  %288 = load ptr, ptr %6, align 4
  %289 = getelementptr inbounds %struct.usb_device, ptr %288, i32 0, i32 4
  %290 = load i32, ptr %289, align 4
  %291 = icmp eq i32 %290, 3
  br i1 %291, label %292, label %298

292:                                              ; preds = %267
  %293 = lshr i32 %285, 11
  %294 = and i32 %293, 3
  %295 = add nuw nsw i32 %294, 1
  %296 = and i32 %285, 2047
  %297 = mul nuw nsw i32 %295, %296
  store i32 %297, ptr %286, align 8
  br label %298

298:                                              ; preds = %292, %267
  %299 = getelementptr inbounds %struct.audioformat, ptr %265, i32 0, i32 26
  store i8 %232, ptr %299, align 8
  store volatile ptr %265, ptr %265, align 8
  %300 = getelementptr inbounds %struct.list_head, ptr %265, i32 0, i32 1
  store ptr %265, ptr %300, align 4
  %301 = call fastcc i32 @parse_uac_endpoint_attributes(ptr noundef %0, ptr noundef %26, i32 noundef %72, i32 noundef %1) #13
  %302 = trunc i32 %301 to i8
  %303 = getelementptr inbounds %struct.audioformat, ptr %265, i32 0, i32 10
  store i8 %302, ptr %303, align 4
  call void @snd_usb_audioformat_attributes_quirk(ptr noundef %0, ptr noundef nonnull %265, i32 noundef %53) #13
  %304 = call i32 @snd_usb_parse_audio_format(ptr noundef %0, ptr noundef nonnull %265, i64 noundef %233, ptr noundef nonnull %237, i32 noundef %53) #13
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %306, label %314

306:                                              ; preds = %298
  %307 = load ptr, ptr %300, align 4
  %308 = load ptr, ptr %265, align 8
  %309 = getelementptr inbounds %struct.list_head, ptr %308, i32 0, i32 1
  store ptr %307, ptr %309, align 4
  store volatile ptr %308, ptr %307, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %265, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %300, align 4
  %310 = getelementptr inbounds %struct.audioformat, ptr %265, i32 0, i32 25
  %311 = load ptr, ptr %310, align 4
  call void @kfree(ptr noundef %311) #13
  %312 = getelementptr inbounds %struct.audioformat, ptr %265, i32 0, i32 27
  %313 = load ptr, ptr %312, align 4
  call void @kfree(ptr noundef %313) #13
  call void @kfree(ptr noundef nonnull %265) #13
  br label %743

314:                                              ; preds = %298
  %315 = load i32, ptr %287, align 8
  %316 = icmp ne i32 %315, %234
  %317 = icmp ugt i32 %315, 15
  br i1 %317, label %365, label %318

318:                                              ; preds = %314
  %319 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %320 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %319, i32 noundef 3520, i32 noundef 16) #14
  %321 = icmp eq ptr %320, null
  br i1 %321, label %365, label %322

322:                                              ; preds = %318
  %323 = trunc i32 %315 to i8
  store i8 %323, ptr %320, align 8
  %324 = icmp eq i32 %231, 0
  %325 = select i1 %316, i1 true, i1 %324
  br i1 %325, label %344, label %326

326:                                              ; preds = %339, %322
  %327 = phi i32 [ %340, %339 ], [ 0, %322 ]
  %328 = phi ptr [ %341, %339 ], [ %253, %322 ]
  %329 = phi i32 [ %342, %339 ], [ %231, %322 ]
  %330 = load i32, ptr %328, align 4
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %358, label %332

332:                                              ; preds = %326
  %333 = and i32 %329, 1
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %339, label %335

335:                                              ; preds = %332
  %336 = trunc i32 %330 to i8
  %337 = add i32 %327, 1
  %338 = getelementptr %struct.snd_pcm_chmap_elem, ptr %320, i32 0, i32 1, i32 %327
  store i8 %336, ptr %338, align 1
  br label %339

339:                                              ; preds = %335, %332
  %340 = phi i32 [ %337, %335 ], [ %327, %332 ]
  %341 = getelementptr i32, ptr %328, i32 1
  %342 = lshr i32 %329, 1
  %343 = icmp ult i32 %329, 2
  br i1 %343, label %358, label %326

344:                                              ; preds = %322
  switch i32 %315, label %347 [
    i32 1, label %345
    i32 0, label %365
  ]

345:                                              ; preds = %344
  %346 = getelementptr inbounds %struct.snd_pcm_chmap_elem, ptr %320, i32 0, i32 1
  store i8 2, ptr %346, align 1
  br label %365

347:                                              ; preds = %352, %344
  %348 = phi i32 [ %354, %352 ], [ 0, %344 ]
  %349 = phi ptr [ %356, %352 ], [ %253, %344 ]
  %350 = load i32, ptr %349, align 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %358, label %352

352:                                              ; preds = %347
  %353 = trunc i32 %350 to i8
  %354 = add nuw nsw i32 %348, 1
  %355 = getelementptr %struct.snd_pcm_chmap_elem, ptr %320, i32 0, i32 1, i32 %348
  store i8 %353, ptr %355, align 1
  %356 = getelementptr i32, ptr %349, i32 1
  %357 = icmp eq i32 %354, %315
  br i1 %357, label %365, label %347

358:                                              ; preds = %347, %339, %326
  %359 = phi i32 [ %348, %347 ], [ %340, %339 ], [ %327, %326 ]
  %360 = icmp sgt i32 %315, %359
  br i1 %360, label %361, label %365

361:                                              ; preds = %358
  %362 = add nsw i32 %359, 1
  %363 = getelementptr i8, ptr %320, i32 %362
  %364 = sub i32 %315, %359
  call void @llvm.memset.p0.i32(ptr align 1 %363, i8 0, i32 %364, i1 false) #13
  br label %365

365:                                              ; preds = %361, %358, %352, %345, %344, %318, %314
  %366 = phi ptr [ null, %314 ], [ null, %318 ], [ %320, %358 ], [ %320, %361 ], [ %320, %345 ], [ %320, %344 ], [ %320, %352 ]
  %367 = getelementptr inbounds %struct.audioformat, ptr %265, i32 0, i32 27
  store ptr %366, ptr %367, align 4
  br label %681

368:                                              ; preds = %68
  %369 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %5, i8 0, i32 6, i1 false) #13, !annotation !8
  %370 = load i32, ptr %17, align 4
  %371 = and i32 %370, 224
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %396, label %373

373:                                              ; preds = %368
  %374 = load ptr, ptr %39, align 4
  %375 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %374, i32 0, i32 4
  %376 = load i16, ptr %375, align 4
  switch i16 %376, label %377 [
    i16 96, label %382
    i16 98, label %382
    i16 144, label %379
    i16 147, label %379
    i16 192, label %380
    i16 196, label %380
    i16 288, label %381
    i16 294, label %381
  ]

377:                                              ; preds = %373
  %378 = getelementptr inbounds %struct.usb_device, ptr %369, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %378, ptr noundef nonnull @.str.8, i32 noundef %1, i32 noundef %56) #15
  br label %678

379:                                              ; preds = %373, %373
  br label %382

380:                                              ; preds = %373, %373
  br label %382

381:                                              ; preds = %373, %373
  br label %382

382:                                              ; preds = %381, %380, %379, %373, %373
  %383 = phi i64 [ 4294967296, %381 ], [ 4, %380 ], [ 4294967296, %379 ], [ 4, %373 ], [ 4, %373 ]
  %384 = phi i1 [ false, %381 ], [ false, %380 ], [ true, %379 ], [ true, %373 ], [ true, %373 ]
  %385 = phi i32 [ 2, %381 ], [ 2, %380 ], [ 1, %379 ], [ 1, %373 ], [ 1, %373 ]
  %386 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %387 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %386, i32 noundef 3520, i32 noundef 16) #14
  %388 = icmp eq ptr %387, null
  br i1 %388, label %678, label %389

389:                                              ; preds = %382
  br i1 %384, label %392, label %390

390:                                              ; preds = %389
  %391 = getelementptr %struct.snd_pcm_chmap_elem, ptr %387, i32 0, i32 1, i32 1
  store i8 4, ptr %391, align 2
  br label %392

392:                                              ; preds = %390, %389
  %393 = phi i8 [ 3, %390 ], [ 2, %389 ]
  %394 = getelementptr inbounds %struct.snd_pcm_chmap_elem, ptr %387, i32 0, i32 1
  store i8 %393, ptr %394, align 1
  %395 = trunc i32 %385 to i8
  store i8 %395, ptr %387, align 8
  br label %589

396:                                              ; preds = %368
  %397 = getelementptr %struct.usb_host_interface, ptr %25, i32 %23, i32 2
  %398 = load ptr, ptr %397, align 4
  %399 = getelementptr %struct.usb_host_interface, ptr %25, i32 %23, i32 1
  %400 = load i32, ptr %399, align 4
  %401 = call ptr @snd_usb_find_csint_desc(ptr noundef %398, i32 noundef %400, ptr noundef null, i8 noundef zeroext 1) #13
  %402 = icmp eq ptr %401, null
  br i1 %402, label %403, label %405

403:                                              ; preds = %396
  %404 = getelementptr inbounds %struct.usb_device, ptr %369, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %404, ptr noundef nonnull @.str.2, i32 noundef %1, i32 noundef %56) #15
  br label %678

405:                                              ; preds = %396
  %406 = load i8, ptr %401, align 1
  %407 = icmp ult i8 %406, 23
  br i1 %407, label %408, label %410

408:                                              ; preds = %405
  %409 = getelementptr inbounds %struct.usb_device, ptr %369, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %409, ptr noundef nonnull @.str.3, i32 noundef %1, i32 noundef %56) #15
  br label %678

410:                                              ; preds = %405
  %411 = getelementptr inbounds %struct.uac3_as_header_descriptor, ptr %401, i32 0, i32 5
  %412 = load i16, ptr %411, align 1
  %413 = icmp eq i16 %412, 0
  br i1 %413, label %414, label %416

414:                                              ; preds = %410
  %415 = getelementptr inbounds %struct.usb_device, ptr %369, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %415, ptr noundef nonnull @.str.9, i32 noundef %1, i32 noundef %56) #15
  br label %678

416:                                              ; preds = %410
  %417 = load ptr, ptr %6, align 4
  %418 = load i32, ptr %417, align 8
  %419 = shl i32 %418, 8
  %420 = or i32 %419, -2147483520
  %421 = load ptr, ptr %18, align 4
  %422 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %421, i32 0, i32 2
  %423 = load i8, ptr %422, align 2
  %424 = zext i8 %423 to i16
  %425 = call i32 @snd_usb_ctl_msg(ptr noundef %417, i32 noundef %420, i8 noundef zeroext 6, i8 noundef zeroext -95, i16 noundef zeroext %412, i16 noundef zeroext %424, ptr noundef nonnull %5, i16 noundef zeroext 6) #13
  %426 = icmp slt i32 %425, 0
  br i1 %426, label %427, label %429

427:                                              ; preds = %416
  %428 = inttoptr i32 %425 to ptr
  br label %678

429:                                              ; preds = %416
  %430 = icmp eq i32 %425, 6
  br i1 %430, label %433, label %431

431:                                              ; preds = %429
  %432 = getelementptr inbounds %struct.usb_device, ptr %369, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %432, ptr noundef nonnull @.str.10, i32 noundef %1, i32 noundef %56) #15
  br label %678

433:                                              ; preds = %429
  %434 = load i16, ptr %5, align 2
  %435 = zext i16 %434 to i32
  %436 = call noalias align 64 ptr @__kmalloc(i32 noundef %435, i32 noundef 3520) #16
  %437 = icmp eq ptr %436, null
  br i1 %437, label %678, label %438

438:                                              ; preds = %433
  %439 = load ptr, ptr %6, align 4
  %440 = load i32, ptr %439, align 8
  %441 = shl i32 %440, 8
  %442 = or i32 %441, -2147483520
  %443 = load ptr, ptr %18, align 4
  %444 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %443, i32 0, i32 2
  %445 = load i8, ptr %444, align 2
  %446 = zext i8 %445 to i16
  %447 = call i32 @snd_usb_ctl_msg(ptr noundef %439, i32 noundef %442, i8 noundef zeroext 6, i8 noundef zeroext -95, i16 noundef zeroext %412, i16 noundef zeroext %446, ptr noundef nonnull %436, i16 noundef zeroext %434) #13
  %448 = icmp slt i32 %447, 0
  br i1 %448, label %449, label %451

449:                                              ; preds = %438
  call void @kfree(ptr noundef nonnull %436) #13
  %450 = inttoptr i32 %447 to ptr
  br label %678

451:                                              ; preds = %438
  %452 = icmp eq i32 %447, %435
  br i1 %452, label %455, label %453

453:                                              ; preds = %451
  %454 = getelementptr inbounds %struct.usb_device, ptr %369, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %454, ptr noundef nonnull @.str.11, i32 noundef %1, i32 noundef %56) #15
  call void @kfree(ptr noundef nonnull %436) #13
  br label %678

455:                                              ; preds = %451
  %456 = getelementptr inbounds %struct.uac3_cluster_header_descriptor, ptr %436, i32 0, i32 4
  %457 = load i8, ptr %456, align 2
  %458 = zext i8 %457 to i32
  %459 = icmp ugt i8 %457, 15
  br i1 %459, label %535, label %460

460:                                              ; preds = %455
  %461 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %462 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %461, i32 noundef 3520, i32 noundef 16) #14
  %463 = icmp eq ptr %462, null
  br i1 %463, label %535, label %464

464:                                              ; preds = %460
  %465 = load i16, ptr %436, align 64
  %466 = zext i16 %465 to i32
  %467 = ptrtoint ptr %436 to i32
  %468 = icmp ugt i16 %465, 7
  %469 = icmp ne i8 %457, 0
  %470 = select i1 %468, i1 %469, i1 false
  br i1 %470, label %471, label %528

471:                                              ; preds = %464
  %472 = getelementptr i8, ptr %436, i32 7
  br label %473

473:                                              ; preds = %515, %471
  %474 = phi ptr [ %518, %515 ], [ %472, %471 ]
  %475 = phi i32 [ %516, %515 ], [ 0, %471 ]
  %476 = load i16, ptr %474, align 1
  %477 = getelementptr inbounds %struct.uac3_cluster_segment_descriptor, ptr %474, i32 0, i32 1
  %478 = load i8, ptr %477, align 1
  %479 = icmp eq i8 %478, 32
  br i1 %479, label %480, label %515

480:                                              ; preds = %473
  %481 = getelementptr inbounds %struct.uac3_cluster_information_segment_descriptor, ptr %474, i32 0, i32 3
  %482 = load i8, ptr %481, align 1
  switch i8 %482, label %510 [
    i8 1, label %511
    i8 2, label %483
    i8 -128, label %483
    i8 -69, label %483
    i8 3, label %484
    i8 -127, label %484
    i8 -68, label %484
    i8 -126, label %485
    i8 -125, label %486
    i8 -124, label %487
    i8 -121, label %488
    i8 -120, label %489
    i8 -117, label %490
    i8 -116, label %491
    i8 -115, label %492
    i8 -114, label %493
    i8 -113, label %494
    i8 -110, label %495
    i8 -109, label %496
    i8 -108, label %497
    i8 -107, label %498
    i8 -106, label %499
    i8 -105, label %500
    i8 -102, label %501
    i8 -101, label %502
    i8 -98, label %503
    i8 -97, label %504
    i8 -96, label %505
    i8 -91, label %506
    i8 -72, label %507
    i8 -71, label %508
    i8 -70, label %509
  ]

483:                                              ; preds = %480, %480, %480
  br label %511

484:                                              ; preds = %480, %480, %480
  br label %511

485:                                              ; preds = %480
  br label %511

486:                                              ; preds = %480
  br label %511

487:                                              ; preds = %480
  br label %511

488:                                              ; preds = %480
  br label %511

489:                                              ; preds = %480
  br label %511

490:                                              ; preds = %480
  br label %511

491:                                              ; preds = %480
  br label %511

492:                                              ; preds = %480
  br label %511

493:                                              ; preds = %480
  br label %511

494:                                              ; preds = %480
  br label %511

495:                                              ; preds = %480
  br label %511

496:                                              ; preds = %480
  br label %511

497:                                              ; preds = %480
  br label %511

498:                                              ; preds = %480
  br label %511

499:                                              ; preds = %480
  br label %511

500:                                              ; preds = %480
  br label %511

501:                                              ; preds = %480
  br label %511

502:                                              ; preds = %480
  br label %511

503:                                              ; preds = %480
  br label %511

504:                                              ; preds = %480
  br label %511

505:                                              ; preds = %480
  br label %511

506:                                              ; preds = %480
  br label %511

507:                                              ; preds = %480
  br label %511

508:                                              ; preds = %480
  br label %511

509:                                              ; preds = %480
  br label %511

510:                                              ; preds = %480
  br label %511

511:                                              ; preds = %510, %509, %508, %507, %506, %505, %504, %503, %502, %501, %500, %499, %498, %497, %496, %495, %494, %493, %492, %491, %490, %489, %488, %487, %486, %485, %484, %483, %480
  %512 = phi i8 [ 0, %510 ], [ 33, %509 ], [ 32, %508 ], [ 8, %507 ], [ 34, %506 ], [ 27, %505 ], [ 26, %504 ], [ 25, %503 ], [ 31, %502 ], [ 30, %501 ], [ 29, %500 ], [ 28, %499 ], [ 24, %498 ], [ 23, %497 ], [ 22, %496 ], [ 21, %495 ], [ 15, %494 ], [ 14, %493 ], [ 11, %492 ], [ 6, %491 ], [ 5, %490 ], [ 10, %489 ], [ 9, %488 ], [ 13, %487 ], [ 12, %486 ], [ 7, %485 ], [ 4, %484 ], [ 3, %483 ], [ 2, %480 ]
  %513 = add nuw i32 %475, 1
  %514 = getelementptr %struct.snd_pcm_chmap_elem, ptr %462, i32 0, i32 1, i32 %475
  store i8 %512, ptr %514, align 1
  br label %515

515:                                              ; preds = %511, %473
  %516 = phi i32 [ %513, %511 ], [ %475, %473 ]
  %517 = zext i16 %476 to i32
  %518 = getelementptr i8, ptr %474, i32 %517
  %519 = ptrtoint ptr %518 to i32
  %520 = sub i32 %519, %467
  %521 = icmp slt i32 %520, %466
  %522 = icmp ult i32 %516, %458
  %523 = select i1 %521, i1 %522, i1 false
  br i1 %523, label %473, label %524

524:                                              ; preds = %515
  %525 = icmp ugt i32 %516, %458
  br i1 %525, label %526, label %528

526:                                              ; preds = %524
  %527 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.convert_chmap_v3) #15
  br label %528

528:                                              ; preds = %526, %524, %464
  %529 = phi i32 [ %516, %526 ], [ %516, %524 ], [ 0, %464 ]
  store i8 %457, ptr %462, align 8
  %530 = icmp ult i32 %529, %458
  br i1 %530, label %531, label %535

531:                                              ; preds = %528
  %532 = add nuw i32 %529, 1
  %533 = getelementptr i8, ptr %462, i32 %532
  %534 = sub i32 %458, %529
  call void @llvm.memset.p0.i32(ptr align 1 %533, i8 0, i32 %534, i1 false) #13
  br label %535

535:                                              ; preds = %531, %528, %460, %455
  %536 = phi ptr [ null, %455 ], [ null, %460 ], [ %462, %528 ], [ %462, %531 ]
  call void @kfree(ptr noundef nonnull %436) #13
  %537 = load ptr, ptr %18, align 4
  %538 = getelementptr inbounds %struct.uac3_as_header_descriptor, ptr %401, i32 0, i32 3
  %539 = load i8, ptr %538, align 1
  %540 = getelementptr inbounds %struct.usb_host_interface, ptr %537, i32 0, i32 2
  %541 = getelementptr inbounds %struct.usb_host_interface, ptr %537, i32 0, i32 1
  %542 = load ptr, ptr %540, align 4
  %543 = load i32, ptr %541, align 4
  %544 = call ptr @snd_usb_find_csint_desc(ptr noundef %542, i32 noundef %543, ptr noundef null, i8 noundef zeroext 2) #13
  %545 = icmp eq ptr %544, null
  br i1 %545, label %561, label %546

546:                                              ; preds = %549, %535
  %547 = phi ptr [ %552, %549 ], [ %544, %535 ]
  %548 = call zeroext i1 @snd_usb_validate_audio_desc(ptr noundef nonnull %547, i32 noundef 48) #13
  br i1 %548, label %554, label %549

549:                                              ; preds = %554, %546
  %550 = load ptr, ptr %540, align 4
  %551 = load i32, ptr %541, align 4
  %552 = call ptr @snd_usb_find_csint_desc(ptr noundef %550, i32 noundef %551, ptr noundef nonnull %547, i8 noundef zeroext 2) #13
  %553 = icmp eq ptr %552, null
  br i1 %553, label %561, label %546

554:                                              ; preds = %546
  %555 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, ptr %547, i32 0, i32 3
  %556 = load i8, ptr %555, align 1
  %557 = icmp eq i8 %556, %539
  br i1 %557, label %558, label %549

558:                                              ; preds = %554
  %559 = getelementptr inbounds %struct.uac3_input_terminal_descriptor, ptr %547, i32 0, i32 6
  %560 = load i8, ptr %559, align 1
  br label %589

561:                                              ; preds = %549, %535
  %562 = load ptr, ptr %18, align 4
  %563 = load i8, ptr %538, align 1
  %564 = getelementptr inbounds %struct.usb_host_interface, ptr %562, i32 0, i32 2
  %565 = getelementptr inbounds %struct.usb_host_interface, ptr %562, i32 0, i32 1
  %566 = load ptr, ptr %564, align 4
  %567 = load i32, ptr %565, align 4
  %568 = call ptr @snd_usb_find_csint_desc(ptr noundef %566, i32 noundef %567, ptr noundef null, i8 noundef zeroext 3) #13
  %569 = icmp eq ptr %568, null
  br i1 %569, label %585, label %570

570:                                              ; preds = %573, %561
  %571 = phi ptr [ %576, %573 ], [ %568, %561 ]
  %572 = call zeroext i1 @snd_usb_validate_audio_desc(ptr noundef nonnull %571, i32 noundef 48) #13
  br i1 %572, label %578, label %573

573:                                              ; preds = %578, %570
  %574 = load ptr, ptr %564, align 4
  %575 = load i32, ptr %565, align 4
  %576 = call ptr @snd_usb_find_csint_desc(ptr noundef %574, i32 noundef %575, ptr noundef nonnull %571, i8 noundef zeroext 3) #13
  %577 = icmp eq ptr %576, null
  br i1 %577, label %585, label %570

578:                                              ; preds = %570
  %579 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, ptr %571, i32 0, i32 3
  %580 = load i8, ptr %579, align 1
  %581 = icmp eq i8 %580, %563
  br i1 %581, label %582, label %573

582:                                              ; preds = %578
  %583 = getelementptr inbounds %struct.uac3_output_terminal_descriptor, ptr %571, i32 0, i32 7
  %584 = load i8, ptr %583, align 1
  br label %589

585:                                              ; preds = %573, %561
  %586 = getelementptr inbounds %struct.usb_device, ptr %369, i32 0, i32 15
  %587 = load i8, ptr %538, align 1
  %588 = zext i8 %587 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %586, ptr noundef nonnull @.str.4, i32 noundef %1, i32 noundef %56, i32 noundef %588) #15
  call void @kfree(ptr noundef %536) #13
  br label %678

589:                                              ; preds = %582, %558, %392
  %590 = phi ptr [ null, %392 ], [ %401, %558 ], [ %401, %582 ]
  %591 = phi ptr [ %387, %392 ], [ %536, %558 ], [ %536, %582 ]
  %592 = phi i64 [ %383, %392 ], [ 0, %558 ], [ 0, %582 ]
  %593 = phi i32 [ %385, %392 ], [ %458, %558 ], [ %458, %582 ]
  %594 = phi i8 [ 9, %392 ], [ %560, %558 ], [ %584, %582 ]
  %595 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %596 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %595, i32 noundef 3520, i32 noundef 88) #14
  %597 = icmp eq ptr %596, null
  br i1 %597, label %629, label %598

598:                                              ; preds = %589
  %599 = getelementptr inbounds %struct.audioformat, ptr %596, i32 0, i32 6
  store i8 %19, ptr %599, align 8
  %600 = getelementptr inbounds %struct.audioformat, ptr %596, i32 0, i32 7
  store i8 %55, ptr %600, align 1
  %601 = trunc i32 %23 to i8
  %602 = getelementptr inbounds %struct.audioformat, ptr %596, i32 0, i32 9
  store i8 %601, ptr %602, align 1
  %603 = load ptr, ptr %39, align 4
  %604 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %603, i32 0, i32 2
  %605 = load i8, ptr %604, align 2
  %606 = getelementptr inbounds %struct.audioformat, ptr %596, i32 0, i32 11
  store i8 %605, ptr %606, align 1
  %607 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %603, i32 0, i32 3
  %608 = load i8, ptr %607, align 1
  %609 = getelementptr inbounds %struct.audioformat, ptr %596, i32 0, i32 12
  store i8 %608, ptr %609, align 2
  %610 = call zeroext i8 @snd_usb_parse_datainterval(ptr noundef %0, ptr noundef %26) #13
  %611 = getelementptr inbounds %struct.audioformat, ptr %596, i32 0, i32 18
  store i8 %610, ptr %611, align 4
  %612 = getelementptr inbounds %struct.audioformat, ptr %596, i32 0, i32 19
  store i8 48, ptr %612, align 1
  %613 = load ptr, ptr %39, align 4
  %614 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %613, i32 0, i32 4
  %615 = load i16, ptr %614, align 4
  %616 = zext i16 %615 to i32
  %617 = getelementptr inbounds %struct.audioformat, ptr %596, i32 0, i32 20
  store i32 %616, ptr %617, align 8
  %618 = getelementptr inbounds %struct.audioformat, ptr %596, i32 0, i32 2
  store i32 %593, ptr %618, align 8
  %619 = load ptr, ptr %6, align 4
  %620 = getelementptr inbounds %struct.usb_device, ptr %619, i32 0, i32 4
  %621 = load i32, ptr %620, align 4
  %622 = icmp eq i32 %621, 3
  br i1 %622, label %623, label %630

623:                                              ; preds = %598
  %624 = lshr i32 %616, 11
  %625 = and i32 %624, 3
  %626 = add nuw nsw i32 %625, 1
  %627 = and i32 %616, 2047
  %628 = mul nuw nsw i32 %626, %627
  store i32 %628, ptr %617, align 8
  br label %630

629:                                              ; preds = %589
  call void @kfree(ptr noundef %591) #13
  br label %678

630:                                              ; preds = %623, %598
  %631 = getelementptr inbounds %struct.audioformat, ptr %596, i32 0, i32 26
  store i8 %594, ptr %631, align 8
  store volatile ptr %596, ptr %596, align 8
  %632 = getelementptr inbounds %struct.list_head, ptr %596, i32 0, i32 1
  store ptr %596, ptr %632, align 4
  %633 = getelementptr inbounds %struct.audioformat, ptr %596, i32 0, i32 27
  store ptr %591, ptr %633, align 4
  br i1 %372, label %657, label %634

634:                                              ; preds = %630
  %635 = getelementptr inbounds %struct.audioformat, ptr %596, i32 0, i32 10
  store i8 0, ptr %635, align 4
  %636 = getelementptr inbounds %struct.audioformat, ptr %596, i32 0, i32 3
  store i32 1, ptr %636, align 4
  %637 = getelementptr inbounds %struct.audioformat, ptr %596, i32 0, i32 1
  store i64 %592, ptr %637, align 8
  %638 = getelementptr inbounds %struct.audioformat, ptr %596, i32 0, i32 24
  store i32 0, ptr %638, align 8
  %639 = getelementptr inbounds %struct.audioformat, ptr %596, i32 0, i32 22
  store i32 48000, ptr %639, align 8
  %640 = getelementptr inbounds %struct.audioformat, ptr %596, i32 0, i32 23
  store i32 48000, ptr %640, align 4
  %641 = getelementptr inbounds %struct.audioformat, ptr %596, i32 0, i32 21
  store i32 1073741824, ptr %641, align 4
  %642 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %643 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %642, i32 noundef 3520, i32 noundef 12) #14
  %644 = icmp eq ptr %643, null
  br i1 %644, label %645, label %652

645:                                              ; preds = %634
  %646 = load ptr, ptr %632, align 4
  %647 = load ptr, ptr %596, align 8
  %648 = getelementptr inbounds %struct.list_head, ptr %647, i32 0, i32 1
  store ptr %646, ptr %648, align 4
  store volatile ptr %647, ptr %646, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %596, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %632, align 4
  %649 = getelementptr inbounds %struct.audioformat, ptr %596, i32 0, i32 25
  %650 = load ptr, ptr %649, align 4
  call void @kfree(ptr noundef %650) #13
  %651 = load ptr, ptr %633, align 4
  call void @kfree(ptr noundef %651) #13
  call void @kfree(ptr noundef nonnull %596) #13
  br label %678

652:                                              ; preds = %634
  %653 = icmp sgt i8 %51, -1
  %654 = select i1 %653, i32 10, i32 11
  store i32 %654, ptr %643, align 8
  %655 = getelementptr inbounds %struct.snd_usb_power_domain, ptr %643, i32 0, i32 1
  store i32 600, ptr %655, align 4
  %656 = getelementptr inbounds %struct.snd_usb_power_domain, ptr %643, i32 0, i32 2
  store i32 6000, ptr %656, align 8
  br label %676

657:                                              ; preds = %630
  %658 = call fastcc i32 @parse_uac_endpoint_attributes(ptr noundef %0, ptr noundef %26, i32 noundef 48, i32 noundef %1) #13
  %659 = trunc i32 %658 to i8
  %660 = getelementptr inbounds %struct.audioformat, ptr %596, i32 0, i32 10
  store i8 %659, ptr %660, align 4
  %661 = load ptr, ptr %18, align 4
  %662 = getelementptr inbounds %struct.uac3_as_header_descriptor, ptr %590, i32 0, i32 3
  %663 = load i8, ptr %662, align 1
  %664 = call ptr @snd_usb_find_power_domain(ptr noundef %661, i8 noundef zeroext %663) #13
  %665 = call i32 @snd_usb_parse_audio_format_v3(ptr noundef %0, ptr noundef nonnull %596, ptr noundef %590, i32 noundef %53) #13
  %666 = icmp slt i32 %665, 0
  br i1 %666, label %667, label %674

667:                                              ; preds = %657
  call void @kfree(ptr noundef %664) #13
  %668 = load ptr, ptr %632, align 4
  %669 = load ptr, ptr %596, align 8
  %670 = getelementptr inbounds %struct.list_head, ptr %669, i32 0, i32 1
  store ptr %668, ptr %670, align 4
  store volatile ptr %669, ptr %668, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %596, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %632, align 4
  %671 = getelementptr inbounds %struct.audioformat, ptr %596, i32 0, i32 25
  %672 = load ptr, ptr %671, align 4
  call void @kfree(ptr noundef %672) #13
  %673 = load ptr, ptr %633, align 4
  call void @kfree(ptr noundef %673) #13
  call void @kfree(ptr noundef nonnull %596) #13
  br label %678

674:                                              ; preds = %657
  %675 = icmp eq ptr %664, null
  br i1 %675, label %678, label %676

676:                                              ; preds = %674, %652
  %677 = phi ptr [ %643, %652 ], [ %664, %674 ]
  br label %678

678:                                              ; preds = %676, %674, %667, %645, %629, %585, %453, %449, %433, %431, %427, %414, %408, %403, %382, %377
  %679 = phi ptr [ %24, %403 ], [ %24, %408 ], [ %24, %414 ], [ %24, %427 ], [ %24, %433 ], [ %24, %449 ], [ %24, %585 ], [ %24, %629 ], [ %24, %667 ], [ %24, %674 ], [ %677, %676 ], [ %24, %645 ], [ %24, %453 ], [ %24, %431 ], [ %24, %377 ], [ %24, %382 ]
  %680 = phi ptr [ null, %403 ], [ null, %408 ], [ null, %414 ], [ %428, %427 ], [ inttoptr (i32 -12 to ptr), %433 ], [ %450, %449 ], [ null, %585 ], [ inttoptr (i32 -12 to ptr), %629 ], [ null, %667 ], [ %596, %674 ], [ %596, %676 ], [ null, %645 ], [ inttoptr (i32 -5 to ptr), %453 ], [ inttoptr (i32 -5 to ptr), %431 ], [ null, %377 ], [ inttoptr (i32 -12 to ptr), %382 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #13
  br label %681

681:                                              ; preds = %678, %365
  %682 = phi ptr [ %679, %678 ], [ %24, %365 ]
  %683 = phi ptr [ %680, %678 ], [ %265, %365 ]
  %684 = phi i32 [ 48, %678 ], [ %72, %365 ]
  %685 = icmp eq ptr %683, null
  br i1 %685, label %743, label %686

686:                                              ; preds = %681
  %687 = icmp ugt ptr %683, inttoptr (i32 -4096 to ptr)
  br i1 %687, label %688, label %691

688:                                              ; preds = %686, %263
  %689 = phi ptr [ %683, %686 ], [ inttoptr (i32 -12 to ptr), %263 ]
  %690 = ptrtoint ptr %689 to i32
  br label %748

691:                                              ; preds = %686
  %692 = getelementptr inbounds %struct.audioformat, ptr %683, i32 0, i32 3
  %693 = load i32, ptr %692, align 4
  %694 = icmp eq i32 %693, 1
  br i1 %694, label %695, label %696

695:                                              ; preds = %691
  br i1 %3, label %700, label %709

696:                                              ; preds = %691
  store i8 1, ptr %2, align 1
  %697 = load i32, ptr %692, align 4
  %698 = icmp ne i32 %697, 1
  %699 = xor i1 %698, %3
  br i1 %699, label %700, label %709

700:                                              ; preds = %696, %695
  %701 = getelementptr inbounds %struct.list_head, ptr %683, i32 0, i32 1
  %702 = load ptr, ptr %701, align 4
  %703 = load ptr, ptr %683, align 4
  %704 = getelementptr inbounds %struct.list_head, ptr %703, i32 0, i32 1
  store ptr %702, ptr %704, align 4
  store volatile ptr %703, ptr %702, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %683, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %701, align 4
  %705 = getelementptr inbounds %struct.audioformat, ptr %683, i32 0, i32 25
  %706 = load ptr, ptr %705, align 4
  call void @kfree(ptr noundef %706) #13
  %707 = getelementptr inbounds %struct.audioformat, ptr %683, i32 0, i32 27
  %708 = load ptr, ptr %707, align 4
  call void @kfree(ptr noundef %708) #13
  call void @kfree(ptr noundef nonnull %683) #13
  call void @kfree(ptr noundef %682) #13
  br label %743

709:                                              ; preds = %696, %695
  %710 = call i32 @snd_usb_audioformat_set_sync_ep(ptr noundef %0, ptr noundef nonnull %683) #13
  %711 = icmp eq i32 %684, 48
  %712 = select i1 %711, ptr %682, ptr null
  %713 = call fastcc i32 @__snd_usb_add_audio_stream(ptr noundef %0, i32 noundef %53, ptr noundef nonnull %683, ptr noundef %712) #13
  %714 = icmp slt i32 %713, 0
  br i1 %714, label %715, label %716

715:                                              ; preds = %709
  call fastcc void @audioformat_free(ptr noundef nonnull %683)
  call void @kfree(ptr noundef %682) #13
  br label %748

716:                                              ; preds = %709
  %717 = getelementptr inbounds %struct.audioformat, ptr %683, i32 0, i32 11
  %718 = load i8, ptr %717, align 1
  %719 = zext i8 %718 to i32
  %720 = call i32 @snd_usb_add_endpoint(ptr noundef %0, i32 noundef %719, i32 noundef 0) #13
  %721 = icmp slt i32 %720, 0
  br i1 %721, label %748, label %722

722:                                              ; preds = %716
  %723 = getelementptr inbounds %struct.audioformat, ptr %683, i32 0, i32 14
  %724 = load i8, ptr %723, align 8
  %725 = icmp eq i8 %724, 0
  br i1 %725, label %734, label %726

726:                                              ; preds = %722
  %727 = zext i8 %724 to i32
  %728 = getelementptr inbounds %struct.audioformat, ptr %683, i32 0, i32 13
  %729 = load i8, ptr %728, align 1, !range !9
  %730 = xor i8 %729, 1
  %731 = zext i8 %730 to i32
  %732 = call i32 @snd_usb_add_endpoint(ptr noundef %0, i32 noundef %727, i32 noundef %731) #13
  %733 = icmp slt i32 %732, 0
  br i1 %733, label %748, label %734

734:                                              ; preds = %726, %722
  %735 = load ptr, ptr %6, align 4
  %736 = call i32 @usb_set_interface(ptr noundef %735, i32 noundef %1, i32 noundef 0) #13
  %737 = call i32 @snd_usb_init_pitch(ptr noundef %0, ptr noundef nonnull %683) #13
  %738 = getelementptr inbounds %struct.audioformat, ptr %683, i32 0, i32 23
  %739 = load i32, ptr %738, align 4
  %740 = call i32 @snd_usb_init_sample_rate(ptr noundef %0, ptr noundef nonnull %683, i32 noundef %739) #13
  %741 = load ptr, ptr %6, align 4
  %742 = call i32 @usb_set_interface(ptr noundef %741, i32 noundef %1, i32 noundef %56) #13
  br label %743

743:                                              ; preds = %734, %700, %681, %306, %259, %250, %239, %221, %156, %151, %117, %112, %49, %44, %38, %34, %31, %21
  %744 = phi ptr [ %24, %34 ], [ %24, %38 ], [ %682, %681 ], [ null, %700 ], [ %682, %734 ], [ %24, %49 ], [ %24, %44 ], [ %24, %31 ], [ %24, %250 ], [ %24, %306 ], [ %24, %239 ], [ %24, %259 ], [ %24, %117 ], [ %24, %112 ], [ %24, %221 ], [ %24, %156 ], [ %24, %151 ], [ %24, %21 ]
  %745 = phi ptr [ %22, %34 ], [ %22, %38 ], [ null, %681 ], [ null, %700 ], [ %683, %734 ], [ %22, %49 ], [ %22, %44 ], [ %22, %31 ], [ null, %250 ], [ null, %306 ], [ null, %239 ], [ null, %259 ], [ null, %117 ], [ null, %112 ], [ null, %221 ], [ null, %156 ], [ null, %151 ], [ %22, %21 ]
  %746 = add nuw nsw i32 %23, 1
  %747 = icmp eq i32 %746, %14
  br i1 %747, label %748, label %21

748:                                              ; preds = %743, %726, %716, %715, %688, %4
  %749 = phi i32 [ %690, %688 ], [ %713, %715 ], [ 0, %4 ], [ %720, %716 ], [ %732, %726 ], [ 0, %743 ]
  ret i32 %749
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_get_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new_stream(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snd_usb_init_substream(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 %1
  %6 = getelementptr %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 %1, i32 26
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 %1, i32 26, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 %1, i32 27
  store i32 0, ptr %8, align 4
  store ptr %0, ptr %5, align 8
  %9 = getelementptr %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 %1, i32 3
  store i32 %1, ptr %9, align 4
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 %1, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.snd_usb_audio, ptr %10, i32 0, i32 12
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 %1, i32 8
  %17 = trunc i32 %15 to i8
  %18 = lshr i8 %17, 2
  %19 = and i8 %18, 1
  %20 = load i8, ptr %16, align 8
  %21 = and i8 %20, -2
  %22 = or i8 %19, %21
  store i8 %22, ptr %16, align 8
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds %struct.snd_usb_audio, ptr %23, i32 0, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = trunc i32 %25 to i8
  %27 = lshr i8 %26, 2
  %28 = and i8 %27, 2
  %29 = and i8 %22, -3
  %30 = or i8 %28, %29
  store i8 %30, ptr %16, align 8
  %31 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 %1, i32 23
  store i32 %32, ptr %33, align 4
  %34 = getelementptr %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 %1, i32 10
  store i32 0, ptr %34, align 8
  %35 = getelementptr %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 %1, i32 11
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.snd_usb_stream, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void @snd_usb_set_pcm_ops(ptr noundef %37, i32 noundef %1) #13
  %38 = load ptr, ptr %7, align 4
  store ptr %2, ptr %7, align 4
  store ptr %6, ptr %2, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  store volatile ptr %2, ptr %38, align 4
  %40 = getelementptr inbounds %struct.audioformat, ptr %2, i32 0, i32 1
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 %1, i32 24
  %43 = load i64, ptr %42, align 8
  %44 = or i64 %43, %41
  store i64 %44, ptr %42, align 8
  %45 = getelementptr %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 %1, i32 25
  %46 = load i32, ptr %45, align 8
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 8
  %48 = getelementptr inbounds %struct.audioformat, ptr %2, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 %1, i32 9
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.audioformat, ptr %2, i32 0, i32 11
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = getelementptr %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 %1, i32 19
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.audioformat, ptr %2, i32 0, i32 2
  %56 = load i32, ptr %55, align 8
  %57 = getelementptr %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 %1, i32 7
  %58 = load i32, ptr %57, align 4
  %59 = icmp ugt i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %4
  store i32 %56, ptr %57, align 4
  br label %61

61:                                               ; preds = %60, %4
  %62 = icmp eq ptr %3, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %61
  %64 = getelementptr %struct.snd_usb_stream, ptr %0, i32 0, i32 4, i32 %1, i32 6
  store ptr %3, ptr %64, align 8
  %65 = load ptr, ptr %5, align 8
  %66 = load ptr, ptr %65, align 8
  %67 = tail call i32 @snd_usb_power_domain_set(ptr noundef %66, ptr noundef nonnull %3, i8 noundef zeroext 1) #13
  br label %68

68:                                               ; preds = %63, %61
  tail call void @snd_usb_preallocate_buffer(ptr noundef %5) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_usb_audio_pcm_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_pcm, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_usb_stream, ptr %3, i32 0, i32 1
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.snd_usb_stream, ptr %3, i32 0, i32 4
  tail call fastcc void @free_substream(ptr noundef %7) #13
  %8 = getelementptr %struct.snd_usb_stream, ptr %3, i32 0, i32 4, i32 1
  tail call fastcc void @free_substream(ptr noundef %8) #13
  %9 = getelementptr inbounds %struct.snd_usb_stream, ptr %3, i32 0, i32 5
  %10 = getelementptr inbounds %struct.snd_usb_stream, ptr %3, i32 0, i32 5, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  tail call void @kfree(ptr noundef nonnull %3) #13
  br label %14

14:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_proc_pcm_format_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_set_pcm_ops(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_power_domain_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_preallocate_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_add_chmap_ctls(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @usb_chmap_ctl_info(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 2, ptr %7, align 8
  %8 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 36, ptr %12, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_chmap_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.audioformat, ptr %8, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  %15 = load i8, ptr %12, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ 0, %17 ], [ %25, %19 ]
  %21 = getelementptr %struct.snd_pcm_chmap_elem, ptr %12, i32 0, i32 1, i32 %20
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr [128 x i32], ptr %18, i32 0, i32 %20
  store i32 %23, ptr %24, align 4
  %25 = add nuw nsw i32 %20, 1
  %26 = load i8, ptr %12, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %19, label %29

29:                                               ; preds = %19, %14, %10, %2
  %30 = phi i32 [ 0, %10 ], [ 0, %2 ], [ 0, %14 ], [ %25, %19 ]
  %31 = getelementptr inbounds %struct.snd_usb_substream, ptr %6, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi i32 [ %30, %34 ], [ %39, %36 ]
  %38 = getelementptr [128 x i32], ptr %35, i32 0, i32 %37
  store i32 0, ptr %38, align 4
  %39 = add nuw i32 %37, 1
  %40 = load i32, ptr %31, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %36, label %42

42:                                               ; preds = %36, %29
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_chmap_ctl_tlv(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ult i32 %2, 8
  br i1 %9, label %111, label %10

10:                                               ; preds = %4
  %11 = tail call ptr @llvm.thread.pointer() #13
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #17, !srcloc !10
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #13, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !12
  %16 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 0, i32 -1090519041) #13, !srcloc !13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #13, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %111

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.snd_usb_substream, ptr %8, i32 0, i32 26
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %102, label %22

22:                                               ; preds = %18
  %23 = getelementptr i32, ptr %3, i32 2
  %24 = add i32 %2, -8
  br label %25

25:                                               ; preds = %96, %22
  %26 = phi ptr [ %100, %96 ], [ %20, %22 ]
  %27 = phi i32 [ %99, %96 ], [ %24, %22 ]
  %28 = phi ptr [ %98, %96 ], [ %23, %22 ]
  %29 = phi i32 [ %97, %96 ], [ 0, %22 ]
  %30 = getelementptr inbounds %struct.audioformat, ptr %26, i32 0, i32 27
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %96, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %19
  br i1 %36, label %49, label %37

37:                                               ; preds = %45, %33
  %38 = phi ptr [ %47, %45 ], [ %35, %33 ]
  %39 = getelementptr inbounds %struct.audioformat, ptr %38, i32 0, i32 27
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %40, ptr noundef nonnull dereferenceable(16) %31, i32 16) #13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %96, label %45

45:                                               ; preds = %42, %37
  %46 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %19
  br i1 %48, label %49, label %37

49:                                               ; preds = %45, %33
  %50 = load i8, ptr %31, align 1
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 2
  %53 = add nuw nsw i32 %52, 8
  %54 = icmp ult i32 %27, %53
  br i1 %54, label %111, label %55

55:                                               ; preds = %49
  %56 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #17, !srcloc !10
  %57 = and i32 %56, -13
  %58 = or i32 %57, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #13, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !12
  %59 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %28, i32 257, i32 -1090519041) #13, !srcloc !14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #13, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !12
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %111

61:                                               ; preds = %55
  %62 = getelementptr i32, ptr %28, i32 1
  %63 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #17, !srcloc !10
  %64 = and i32 %63, -13
  %65 = or i32 %64, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #13, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !12
  %66 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %62, i32 %52, i32 -1090519041) #13, !srcloc !15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #13, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !12
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %111

68:                                               ; preds = %61
  %69 = getelementptr i32, ptr %28, i32 2
  %70 = load ptr, ptr %30, align 4
  %71 = load i8, ptr %70, align 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %92, label %73

73:                                               ; preds = %85, %68
  %74 = phi ptr [ %88, %85 ], [ %70, %68 ]
  %75 = phi ptr [ %87, %85 ], [ %69, %68 ]
  %76 = phi i32 [ %86, %85 ], [ 0, %68 ]
  %77 = getelementptr %struct.snd_pcm_chmap_elem, ptr %74, i32 0, i32 1, i32 %76
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #17, !srcloc !10
  %81 = and i32 %80, -13
  %82 = or i32 %81, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #13, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !12
  %83 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %75, i32 %79, i32 -1090519041) #13, !srcloc !16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #13, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !12
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %111

85:                                               ; preds = %73
  %86 = add nuw nsw i32 %76, 1
  %87 = getelementptr i32, ptr %75, i32 1
  %88 = load ptr, ptr %30, align 4
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp ult i32 %86, %90
  br i1 %91, label %73, label %92

92:                                               ; preds = %85, %68
  %93 = phi ptr [ %69, %68 ], [ %87, %85 ]
  %94 = add i32 %53, %29
  %95 = sub i32 %27, %53
  br label %96

96:                                               ; preds = %92, %42, %25
  %97 = phi i32 [ %94, %92 ], [ %29, %25 ], [ %29, %42 ]
  %98 = phi ptr [ %93, %92 ], [ %28, %25 ], [ %28, %42 ]
  %99 = phi i32 [ %95, %92 ], [ %27, %25 ], [ %27, %42 ]
  %100 = load ptr, ptr %26, align 4
  %101 = icmp eq ptr %100, %19
  br i1 %101, label %102, label %25

102:                                              ; preds = %96, %18
  %103 = phi i32 [ 0, %18 ], [ %97, %96 ]
  %104 = getelementptr i32, ptr %3, i32 1
  %105 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #17, !srcloc !10
  %106 = and i32 %105, -13
  %107 = or i32 %106, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %107) #13, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !12
  %108 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %104, i32 %103, i32 -1090519041) #13, !srcloc !17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %105) #13, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !12
  %109 = icmp eq i32 %108, 0
  %110 = select i1 %109, i32 0, i32 -14
  br label %111

111:                                              ; preds = %102, %73, %61, %55, %49, %10, %4
  %112 = phi i32 [ -12, %4 ], [ -14, %10 ], [ %110, %102 ], [ -14, %73 ], [ -12, %49 ], [ -14, %61 ], [ -14, %55 ]
  ret i32 %112
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_substream(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 25
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 26
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %20, label %9

9:                                                ; preds = %9, %5
  %10 = phi ptr [ %11, %9 ], [ %7, %5 ]
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  store volatile ptr %11, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  %15 = getelementptr inbounds %struct.audioformat, ptr %10, i32 0, i32 25
  %16 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %16) #13
  %17 = getelementptr inbounds %struct.audioformat, ptr %10, i32 0, i32 27
  %18 = load ptr, ptr %17, align 4
  tail call void @kfree(ptr noundef %18) #13
  tail call void @kfree(ptr noundef %10) #13
  %19 = icmp eq ptr %11, %6
  br i1 %19, label %20, label %9

20:                                               ; preds = %9, %5
  %21 = getelementptr inbounds %struct.snd_usb_substream, ptr %0, i32 0, i32 6
  %22 = load ptr, ptr %21, align 8
  tail call void @kfree(ptr noundef %22) #13
  tail call void @snd_media_stream_delete(ptr noundef %0) #13
  br label %23

23:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @audioformat_free(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  %6 = getelementptr inbounds %struct.audioformat, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.audioformat, ptr %0, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #13
  tail call void @kfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_media_stream_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_apply_interface_quirk(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_audioformat_set_sync_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_add_endpoint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_init_pitch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_init_sample_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_find_csint_desc(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @parse_uac_endpoint_attributes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.usb_host_interface, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_host_endpoint, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_host_endpoint, ptr %6, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @snd_usb_find_desc(ptr noundef %8, i32 noundef %10, ptr noundef null, i8 noundef zeroext 37) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 4
  %15 = load i8, ptr %14, align 1
  %16 = icmp ugt i8 %15, 1
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr %struct.usb_host_endpoint, ptr %18, i32 1, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.usb_host_endpoint, ptr %18, i32 1, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = tail call ptr @snd_usb_find_desc(ptr noundef %20, i32 noundef %22, ptr noundef null, i8 noundef zeroext 37) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %17, %13
  %26 = getelementptr inbounds %struct.usb_host_interface, ptr %1, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.usb_host_interface, ptr %1, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = tail call ptr @snd_usb_find_desc(ptr noundef %27, i32 noundef %29, ptr noundef null, i8 noundef zeroext 37) #13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %66, label %32

32:                                               ; preds = %25, %17, %4
  %33 = phi ptr [ %30, %25 ], [ %23, %17 ], [ %11, %4 ]
  %34 = load i8, ptr %33, align 1
  %35 = icmp ult i8 %34, 7
  br i1 %35, label %66, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.uac_iso_endpoint_descriptor, ptr %33, i32 0, i32 2
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 1
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  switch i32 %2, label %58 [
    i32 0, label %41
    i32 32, label %45
  ]

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.uac_iso_endpoint_descriptor, ptr %33, i32 0, i32 3
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  br label %73

45:                                               ; preds = %40
  %46 = icmp ult i8 %34, 8
  br i1 %46, label %66, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.uac_iso_endpoint_descriptor, ptr %33, i32 0, i32 3
  %49 = load i8, ptr %48, align 1
  %50 = and i8 %49, -128
  %51 = zext i8 %50 to i32
  %52 = getelementptr inbounds %struct.uac2_iso_endpoint_descriptor, ptr %33, i32 0, i32 4
  %53 = load i8, ptr %52, align 1
  %54 = and i8 %53, 3
  %55 = icmp eq i8 %54, 0
  %56 = or i32 %51, 2
  %57 = select i1 %55, i32 %51, i32 %56
  br label %73

58:                                               ; preds = %40
  %59 = icmp ult i8 %34, 10
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.uac3_iso_endpoint_descriptor, ptr %33, i32 0, i32 3
  %62 = load i32, ptr %61, align 1
  %63 = and i32 %62, 3
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i32 0, i32 2
  br label %73

66:                                               ; preds = %58, %45, %36, %32, %25
  %67 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.usb_device, ptr %68, i32 0, i32 15
  %70 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 3
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %69, ptr noundef nonnull @.str.7, i32 noundef %3, i32 noundef %72) #15
  br label %73

73:                                               ; preds = %66, %60, %47, %41
  %74 = phi i32 [ 0, %66 ], [ %44, %41 ], [ %57, %47 ], [ %65, %60 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_audioformat_attributes_quirk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_parse_audio_format(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_usb_validate_audio_desc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @snd_usb_parse_datainterval(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_find_desc(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_ctl_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_find_power_domain(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_parse_audio_format_v3(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readonly }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 4572149}
!11 = !{i64 4572346}
!12 = !{i64 2152057625}
!13 = !{i64 2153370705, i64 2153370985, i64 2153371319, i64 2153371653}
!14 = !{i64 2153382032, i64 2153382312, i64 2153382646, i64 2153382980}
!15 = !{i64 2153390177, i64 2153390457, i64 2153390791, i64 2153391125}
!16 = !{i64 2153398323, i64 2153398603, i64 2153398937, i64 2153399271}
!17 = !{i64 2153406465, i64 2153406745, i64 2153407079, i64 2153407413}
