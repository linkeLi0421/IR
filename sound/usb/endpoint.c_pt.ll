; ModuleID = '/llk/IR/sound/usb/endpoint.c_pt.bc'
source_filename = "../sound/usb/endpoint.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_usb_endpoint = type { ptr, ptr, i32, %struct.atomic_t, i32, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, [12 x %struct.snd_urb_ctx], [12 x %struct.snd_usb_packet_info], i32, i32, %struct.list_head, i32, i32, i32, %struct.atomic_t, ptr, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i8, %struct.spinlock, %struct.list_head }
%struct.snd_urb_ctx = type { ptr, i32, ptr, ptr, i32, i32, i32, [48 x i32], %struct.list_head }
%struct.snd_usb_packet_info = type { [48 x i32], i32 }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_usb_substream = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i64, i32, %struct.list_head, %struct.spinlock, i32, %struct.anon.62, i8, i8, ptr }
%struct.anon.62 = type { i32, i32, i32 }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.audioformat = type { %struct.list_head, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, i8, ptr, i8, i8, i8 }
%struct.snd_usb_iface_ref = type { i8, i8, i32, %struct.list_head }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [36 x i8] c"Unable to submit urb #%d: %d at %s\0A\00", align 1
@__func__.snd_usb_queue_pending_output_urbs = private unnamed_addr constant [34 x i8] c"snd_usb_queue_pending_output_urbs\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Cannot find EP 0x%x to open\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"sound/usb/endpoint.c\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Incompatible EP setup for 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"cannot submit urb %d, error %d: %s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"%d:%d: usb_set_interface failed (%d)\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.6 = private unnamed_addr constant [41 x i8] c"timeout: still %d active urbs on EP #%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"cannot submit urb (err = %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"next package FIFO overflow EP 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"no device\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"endpoint not enabled\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"endpoint stalled\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"not enough bandwidth\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"device disabled\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"device suspended\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_usb_endpoint_implicit_feedback_sink(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 48
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 26
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 7
  %9 = and i32 %8, 1
  %10 = xor i32 %9, 1
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i32 [ 0, %1 ], [ %10, %5 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_endpoint_next_packet_size(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr %struct.snd_urb_ctx, ptr %1, i32 0, i32 7, i32 %2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = icmp eq i32 %3, 0
  %10 = icmp ult i32 %6, %3
  %11 = select i1 %9, i1 true, i1 %10
  %12 = select i1 %11, i32 %6, i32 -11
  br label %70

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 42
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %16, label %47, label %21

21:                                               ; preds = %13
  br i1 %20, label %25, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 37
  %24 = load i32, ptr %23, align 4
  br label %70

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 60
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #12
  %28 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 35
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 65535
  %31 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 32
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 43
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %32, %34
  %36 = add i32 %35, %30
  %37 = lshr i32 %36, 16
  %38 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 37
  %39 = load i32, ptr %38, align 4
  %40 = tail call i32 @llvm.umin.i32(i32 %37, i32 %39) #12
  %41 = icmp eq i32 %3, 0
  %42 = icmp ult i32 %40, %3
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %25
  store i32 %36, ptr %28, align 4
  br label %45

45:                                               ; preds = %44, %25
  %46 = phi i32 [ %40, %44 ], [ -11, %25 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #12
  br label %70

47:                                               ; preds = %13
  br i1 %20, label %51, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 37
  %50 = load i32, ptr %49, align 4
  br label %70

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 29
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 28
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, %53
  %57 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 30
  %58 = load i32, ptr %57, align 4
  %59 = icmp ult i32 %56, %58
  %60 = getelementptr %struct.snd_usb_endpoint, ptr %0, i32 0, i32 27, i32 1
  %61 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 27
  %62 = select i1 %59, ptr %61, ptr %60
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %3, 0
  %65 = icmp ult i32 %63, %3
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %51
  %68 = select i1 %59, i32 0, i32 %58
  %69 = sub i32 %56, %68
  store i32 %69, ptr %52, align 4
  br label %70

70:                                               ; preds = %67, %51, %48, %45, %22, %8
  %71 = phi i32 [ %12, %8 ], [ %24, %22 ], [ %46, %45 ], [ %50, %48 ], [ %63, %67 ], [ -11, %51 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usb_queue_pending_output_urbs(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 48
  %4 = load i8, ptr %3, align 4, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 26
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 128
  %10 = icmp ne i32 %9, 0
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i1 [ true, %2 ], [ %10, %6 ]
  %13 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 9
  %14 = load volatile i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %110

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 60
  %18 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 18
  %19 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 19
  %20 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 16
  %21 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 17
  %22 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 21
  %23 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 23
  br label %24

24:                                               ; preds = %104, %16
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #12
  br i1 %12, label %29, label %26

26:                                               ; preds = %24
  %27 = load i32, ptr %18, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26, %24
  %30 = load volatile ptr, ptr %19, align 4
  %31 = icmp eq ptr %30, %19
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = getelementptr i8, ptr %30, i32 -220
  %34 = getelementptr %struct.list_head, ptr %30, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %30, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %35, ptr %37, align 4
  store volatile ptr %36, ptr %35, align 4
  store volatile ptr %30, ptr %30, align 4
  store ptr %30, ptr %34, align 4
  br i1 %12, label %39, label %41

38:                                               ; preds = %29, %26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %25) #12
  br label %110

39:                                               ; preds = %32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %25) #12
  %40 = icmp eq ptr %33, null
  br i1 %40, label %110, label %61

41:                                               ; preds = %32
  %42 = load i32, ptr %21, align 4
  %43 = getelementptr %struct.snd_usb_packet_info, ptr %20, i32 %42
  %44 = add i32 %42, 1
  %45 = urem i32 %44, 12
  store i32 %45, ptr %21, align 4
  %46 = load i32, ptr %18, align 4
  %47 = add i32 %46, -1
  store i32 %47, ptr %18, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %25) #12
  %48 = icmp eq ptr %33, null
  br i1 %48, label %110, label %49

49:                                               ; preds = %41
  %50 = getelementptr %struct.snd_usb_packet_info, ptr %20, i32 %42, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %53, %49
  %54 = phi i32 [ %58, %53 ], [ 0, %49 ]
  %55 = getelementptr [48 x i32], ptr %43, i32 0, i32 %54
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr %struct.snd_urb_ctx, ptr %33, i32 0, i32 7, i32 %54
  store i32 %56, ptr %57, align 4
  %58 = add nuw nsw i32 %54, 1
  %59 = load i32, ptr %50, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %53, label %61

61:                                               ; preds = %53, %49, %39
  %62 = tail call fastcc i32 @prepare_outbound_urb(ptr noundef %0, ptr noundef nonnull %33, i1 noundef zeroext %1)
  %63 = load volatile i32, ptr %13, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %110, !prof !9

65:                                               ; preds = %61
  %66 = icmp slt i32 %62, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %65
  %68 = icmp eq i32 %62, -11
  br i1 %68, label %69, label %74

69:                                               ; preds = %67
  %70 = getelementptr %struct.list_head, ptr %30, i32 0, i32 1
  %71 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #12
  %72 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 19, i32 1
  %73 = load ptr, ptr %72, align 4
  store ptr %30, ptr %72, align 4
  store ptr %19, ptr %30, align 4
  store ptr %73, ptr %70, align 4
  store volatile ptr %30, ptr %73, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %71) #12
  br label %110

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 12
  %76 = load volatile ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %110, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.snd_usb_substream, ptr %76, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %110, label %82

82:                                               ; preds = %78
  %83 = tail call i32 @snd_pcm_stop_xrun(ptr noundef nonnull %80) #12
  br label %110

84:                                               ; preds = %65
  %85 = load ptr, ptr %33, align 4
  %86 = tail call i32 @usb_submit_urb(ptr noundef %85, i32 noundef 2592) #12
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %84
  %89 = load ptr, ptr %0, align 4
  %90 = getelementptr inbounds %struct.snd_usb_audio, ptr %89, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.usb_device, ptr %91, i32 0, i32 15
  %93 = getelementptr i8, ptr %30, i32 -204
  %94 = load i32, ptr %93, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str, i32 noundef %94, i32 noundef %86, ptr noundef nonnull @__func__.snd_usb_queue_pending_output_urbs) #13
  %95 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 12
  %96 = load volatile ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %110, label %98

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.snd_usb_substream, ptr %96, i32 0, i32 2
  %100 = load ptr, ptr %99, align 8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %110, label %102

102:                                              ; preds = %98
  %103 = tail call i32 @snd_pcm_stop_xrun(ptr noundef nonnull %100) #12
  br label %110

104:                                              ; preds = %84
  %105 = getelementptr i8, ptr %30, i32 -204
  %106 = load i32, ptr %105, align 4
  tail call void @_set_bit(i32 noundef %106, ptr noundef %22) #12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #12, !srcloc !10
  %107 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #12, !srcloc !11
  %108 = load volatile i32, ptr %13, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %24, label %110

110:                                              ; preds = %104, %102, %98, %88, %82, %78, %74, %69, %61, %41, %39, %38, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @prepare_outbound_urb(ptr noundef %0, ptr nocapture noundef %1, i1 noundef zeroext %2) unnamed_addr #1 {
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 8
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %161 [
    i32 0, label %13
    i32 1, label %123
  ]

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 12
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call i32 %19(ptr noundef nonnull %15, ptr noundef %4, i1 noundef zeroext %2) #12
  br label %161

23:                                               ; preds = %17, %13
  %24 = load ptr, ptr %1, align 4
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.snd_usb_audio, ptr %25, i32 0, i32 12
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  %30 = lshr exact i32 %28, 1
  %31 = getelementptr inbounds %struct.snd_urb_ctx, ptr %1, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %111

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 13
  %36 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 42
  %37 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 37
  %38 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 60
  %39 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 35
  %40 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 32
  %41 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 43
  %42 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 29
  %43 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 28
  %44 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 30
  %45 = getelementptr %struct.snd_usb_endpoint, ptr %0, i32 0, i32 27, i32 1
  %46 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 27
  %47 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 46
  %48 = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 14
  %49 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 45
  br label %50

50:                                               ; preds = %102, %34
  %51 = phi i32 [ 0, %34 ], [ %108, %102 ]
  %52 = phi i32 [ 0, %34 ], [ %107, %102 ]
  %53 = getelementptr %struct.snd_urb_ctx, ptr %1, i32 0, i32 7, i32 %51
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %89

56:                                               ; preds = %50
  %57 = load ptr, ptr %35, align 4
  %58 = icmp eq ptr %57, null
  %59 = load i8, ptr %36, align 4
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  br i1 %58, label %76, label %62

62:                                               ; preds = %56
  br i1 %61, label %65, label %63

63:                                               ; preds = %62
  %64 = load i32, ptr %37, align 4
  br label %89

65:                                               ; preds = %62
  %66 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #12
  %67 = load i32, ptr %39, align 4
  %68 = and i32 %67, 65535
  %69 = load i32, ptr %40, align 4
  %70 = load i32, ptr %41, align 4
  %71 = shl i32 %69, %70
  %72 = add i32 %71, %68
  %73 = lshr i32 %72, 16
  %74 = load i32, ptr %37, align 4
  %75 = tail call i32 @llvm.umin.i32(i32 %73, i32 %74) #12
  store i32 %72, ptr %39, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %66) #12
  br label %89

76:                                               ; preds = %56
  br i1 %61, label %79, label %77

77:                                               ; preds = %76
  %78 = load i32, ptr %37, align 4
  br label %89

79:                                               ; preds = %76
  %80 = load i32, ptr %42, align 4
  %81 = load i32, ptr %43, align 4
  %82 = add i32 %81, %80
  %83 = load i32, ptr %44, align 4
  %84 = icmp ult i32 %82, %83
  %85 = select i1 %84, ptr %46, ptr %45
  %86 = load i32, ptr %85, align 4
  %87 = select i1 %84, i32 0, i32 %83
  %88 = sub i32 %82, %87
  store i32 %88, ptr %42, align 4
  br label %89

89:                                               ; preds = %79, %77, %65, %63, %50
  %90 = phi i32 [ %64, %63 ], [ %75, %65 ], [ %78, %77 ], [ %86, %79 ], [ %54, %50 ]
  %91 = load i32, ptr %47, align 4
  %92 = mul i32 %91, %90
  %93 = mul i32 %91, %52
  %94 = mul i32 %51, %30
  %95 = add i32 %93, %94
  %96 = getelementptr %struct.urb, ptr %24, i32 0, i32 29, i32 %51
  store i32 %95, ptr %96, align 4
  %97 = add i32 %92, %30
  %98 = getelementptr %struct.urb, ptr %24, i32 0, i32 29, i32 %51, i32 1
  store i32 %97, ptr %98, align 4
  br i1 %29, label %102, label %99

99:                                               ; preds = %89
  %100 = load ptr, ptr %48, align 4
  %101 = getelementptr i8, ptr %100, i32 %95
  store i32 %92, ptr %101, align 1
  br label %102

102:                                              ; preds = %99, %89
  %103 = load ptr, ptr %48, align 4
  %104 = getelementptr i8, ptr %103, i32 %30
  %105 = getelementptr i8, ptr %104, i32 %95
  %106 = load i8, ptr %49, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %105, i8 %106, i32 %92, i1 false) #12
  %107 = add i32 %90, %52
  %108 = add nuw nsw i32 %51, 1
  %109 = load i32, ptr %31, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %50, label %111

111:                                              ; preds = %102, %23
  %112 = phi i32 [ 0, %23 ], [ %107, %102 ]
  %113 = phi i32 [ %32, %23 ], [ %109, %102 ]
  %114 = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 24
  store i32 %113, ptr %114, align 4
  %115 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 46
  %116 = load i32, ptr %115, align 4
  %117 = mul i32 %116, %112
  %118 = load i32, ptr %31, align 4
  %119 = mul i32 %118, %30
  %120 = add i32 %119, %117
  %121 = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 19
  store i32 %120, ptr %121, align 4
  %122 = getelementptr inbounds %struct.snd_urb_ctx, ptr %1, i32 0, i32 6
  store i32 0, ptr %122, align 4
  br label %161

123:                                              ; preds = %3
  %124 = load ptr, ptr %0, align 4
  %125 = getelementptr inbounds %struct.snd_usb_audio, ptr %124, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.usb_device, ptr %126, i32 0, i32 4
  %128 = load i32, ptr %127, align 4
  %129 = icmp ugt i32 %128, 2
  %130 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 29
  %131 = getelementptr inbounds %struct.urb, ptr %4, i32 1, i32 1
  br i1 %129, label %132, label %148

132:                                              ; preds = %123
  store i32 4, ptr %131, align 4
  store i32 0, ptr %130, align 4
  %133 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 31
  %134 = load i32, ptr %133, align 4
  %135 = trunc i32 %134 to i8
  store i8 %135, ptr %6, align 1
  %136 = load i32, ptr %133, align 4
  %137 = lshr i32 %136, 8
  %138 = trunc i32 %137 to i8
  %139 = getelementptr i8, ptr %6, i32 1
  store i8 %138, ptr %139, align 1
  %140 = load i32, ptr %133, align 4
  %141 = lshr i32 %140, 16
  %142 = trunc i32 %141 to i8
  %143 = getelementptr i8, ptr %6, i32 2
  store i8 %142, ptr %143, align 1
  %144 = load i32, ptr %133, align 4
  %145 = lshr i32 %144, 24
  %146 = trunc i32 %145 to i8
  %147 = getelementptr i8, ptr %6, i32 3
  store i8 %146, ptr %147, align 1
  br label %161

148:                                              ; preds = %123
  store i32 3, ptr %131, align 4
  store i32 0, ptr %130, align 4
  %149 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 31
  %150 = load i32, ptr %149, align 4
  %151 = lshr i32 %150, 2
  %152 = trunc i32 %151 to i8
  store i8 %152, ptr %6, align 1
  %153 = load i32, ptr %149, align 4
  %154 = lshr i32 %153, 10
  %155 = trunc i32 %154 to i8
  %156 = getelementptr i8, ptr %6, i32 1
  store i8 %155, ptr %156, align 1
  %157 = load i32, ptr %149, align 4
  %158 = lshr i32 %157, 18
  %159 = trunc i32 %158 to i8
  %160 = getelementptr i8, ptr %6, i32 2
  store i8 %159, ptr %160, align 1
  br label %161

161:                                              ; preds = %148, %132, %111, %21, %3
  %162 = phi i32 [ %22, %21 ], [ 0, %132 ], [ 0, %148 ], [ 0, %3 ], [ 0, %111 ]
  ret i32 %162
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @snd_usb_get_endpoint(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 19
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 -5300
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %6, i32 -5316
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi ptr [ %13, %12 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_add_endpoint(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 19
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %4
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %7, i32 -5300
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %5

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %7, i32 -5316
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %44

16:                                               ; preds = %13, %5
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 5324) #14
  %19 = icmp eq ptr %18, null
  br i1 %19, label %44, label %20

20:                                               ; preds = %16
  store ptr %0, ptr %18, align 8
  %21 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %18, i32 0, i32 60
  store i32 0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %18, i32 0, i32 5
  store i32 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %18, i32 0, i32 4
  store i32 %1, ptr %23, align 8
  %24 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %18, i32 0, i32 19
  store volatile ptr %24, ptr %24, align 4
  %25 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %18, i32 0, i32 19, i32 1
  store ptr %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %18, i32 0, i32 23
  store volatile i32 0, ptr %26, align 8
  %27 = and i32 %1, 128
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load i32, ptr %30, align 8
  %32 = shl i32 %31, 8
  %33 = shl i32 %1, 15
  %34 = and i32 %33, 491520
  %35 = or i32 %32, %34
  %36 = or i32 %34, %32
  %37 = or i32 %36, 128
  %38 = select i1 %28, i32 %35, i32 %37
  %39 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %18, i32 0, i32 26
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %18, i32 0, i32 61
  %41 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 19, i32 1
  %42 = load ptr, ptr %41, align 4
  store ptr %40, ptr %41, align 4
  store ptr %4, ptr %40, align 4
  %43 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %18, i32 0, i32 61, i32 1
  store ptr %42, ptr %43, align 8
  store volatile ptr %40, ptr %42, align 4
  br label %44

44:                                               ; preds = %20, %16, %13
  %45 = phi i32 [ 0, %20 ], [ 0, %13 ], [ -12, %16 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @snd_usb_endpoint_compatible(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %49, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 51
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %13, label %49

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 52
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.snd_pcm_hw_params, ptr %3, i32 0, i32 3, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 53
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr %struct.snd_pcm_hw_params, ptr %3, i32 0, i32 1, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %30, %19
  %26 = phi i32 [ 0, %19 ], [ 32, %30 ]
  %27 = phi i32 [ %23, %19 ], [ %32, %30 ]
  %28 = tail call i32 @llvm.cttz.i32(i32 %27, i1 true) #12, !range !12
  %29 = or i32 %28, %26
  br label %34

30:                                               ; preds = %19
  %31 = getelementptr %struct.snd_pcm_hw_params, ptr %3, i32 0, i32 1, i32 1, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %25

34:                                               ; preds = %30, %25
  %35 = phi i32 [ %29, %25 ], [ 0, %30 ]
  %36 = icmp eq i32 %21, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 56
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr %struct.snd_pcm_hw_params, ptr %3, i32 0, i32 3, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 58
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr %struct.snd_pcm_hw_params, ptr %3, i32 0, i32 3, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %45, %47
  br label %49

49:                                               ; preds = %43, %37, %34, %13, %9, %4
  %50 = phi i1 [ false, %4 ], [ false, %9 ], [ false, %37 ], [ false, %34 ], [ false, %13 ], [ %48, %43 ]
  tail call void @mutex_unlock(ptr noundef %5) #12
  ret i1 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @snd_usb_endpoint_open(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i1 noundef zeroext %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 14
  %6 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 11
  %7 = select i1 %3, ptr %5, ptr %6
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %10) #12
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 19
  br label %12

12:                                               ; preds = %16, %4
  %13 = phi ptr [ %11, %4 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %11
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %14, i32 -5300
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %9
  br i1 %19, label %20, label %12

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %14, i32 -5316
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20, %12
  %24 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.1, i32 noundef %9) #13
  br label %234

27:                                               ; preds = %20
  %28 = getelementptr i8, ptr %14, i32 -5308
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %172

31:                                               ; preds = %27
  br i1 %3, label %32, label %40

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 15
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr i8, ptr %14, i32 -5292
  store i8 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 16
  %37 = load i8, ptr %36, align 2
  %38 = getelementptr i8, ptr %14, i32 -5291
  store i8 %37, ptr %38, align 1
  %39 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 17
  br label %48

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 6
  %42 = load i8, ptr %41, align 8
  %43 = getelementptr i8, ptr %14, i32 -5292
  store i8 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %45 = load i8, ptr %44, align 1
  %46 = getelementptr i8, ptr %14, i32 -5291
  store i8 %45, ptr %46, align 1
  %47 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 8
  br label %48

48:                                               ; preds = %40, %32
  %49 = phi i8 [ %34, %32 ], [ %42, %40 ]
  %50 = phi ptr [ %39, %32 ], [ %47, %40 ]
  %51 = load i8, ptr %50, align 1
  %52 = getelementptr i8, ptr %14, i32 -5290
  store i8 %51, ptr %52, align 2
  %53 = getelementptr i8, ptr %14, i32 -5292
  %54 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 20
  br label %55

55:                                               ; preds = %59, %48
  %56 = phi ptr [ %54, %48 ], [ %57, %59 ]
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %54
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = getelementptr i8, ptr %57, i32 -8
  %61 = load i8, ptr %60, align 4
  %62 = icmp eq i8 %61, %49
  br i1 %62, label %75, label %55

63:                                               ; preds = %55
  %64 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %65 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3520, i32 noundef 16) #14
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = getelementptr i8, ptr %14, i32 -5312
  store ptr null, ptr %68, align 4
  br label %234

69:                                               ; preds = %63
  store i8 %49, ptr %65, align 8
  %70 = getelementptr inbounds %struct.snd_usb_iface_ref, ptr %65, i32 0, i32 3
  %71 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 20, i32 1
  %72 = load ptr, ptr %71, align 4
  store ptr %70, ptr %71, align 4
  store ptr %54, ptr %70, align 8
  %73 = getelementptr inbounds %struct.snd_usb_iface_ref, ptr %65, i32 0, i32 3, i32 1
  store ptr %72, ptr %73, align 4
  store volatile ptr %70, ptr %72, align 4
  %74 = getelementptr i8, ptr %14, i32 -5312
  store ptr %65, ptr %74, align 4
  br label %79

75:                                               ; preds = %59
  %76 = getelementptr i8, ptr %57, i32 -8
  %77 = getelementptr i8, ptr %14, i32 -5312
  store ptr %76, ptr %77, align 4
  %78 = icmp eq ptr %76, null
  br i1 %78, label %234, label %79

79:                                               ; preds = %75, %69
  %80 = getelementptr i8, ptr %14, i32 -40
  store ptr %1, ptr %80, align 4
  %81 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 2
  %82 = load i32, ptr %81, align 8
  %83 = getelementptr i8, ptr %14, i32 -28
  store i32 %82, ptr %83, align 4
  %84 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 3, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr i8, ptr %14, i32 -36
  store i32 %85, ptr %86, align 4
  %87 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 1, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %95, %79
  %91 = phi i32 [ 0, %79 ], [ 32, %95 ]
  %92 = phi i32 [ %88, %79 ], [ %97, %95 ]
  %93 = tail call i32 @llvm.cttz.i32(i32 %92, i1 true) #12, !range !12
  %94 = or i32 %93, %91
  br label %99

95:                                               ; preds = %79
  %96 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 1, i32 1, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %90

99:                                               ; preds = %95, %90
  %100 = phi i32 [ %94, %90 ], [ 0, %95 ]
  %101 = getelementptr i8, ptr %14, i32 -32
  store i32 %100, ptr %101, align 4
  %102 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %100) #12
  %103 = load i32, ptr %83, align 4
  %104 = mul i32 %103, %102
  %105 = lshr i32 %104, 3
  %106 = getelementptr i8, ptr %14, i32 -24
  store i32 %105, ptr %106, align 4
  %107 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 3, i32 5
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr i8, ptr %14, i32 -20
  store i32 %108, ptr %109, align 4
  %110 = mul i32 %108, %105
  %111 = getelementptr i8, ptr %14, i32 -16
  store i32 %110, ptr %111, align 4
  %112 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 3, i32 7
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr i8, ptr %14, i32 -12
  store i32 %113, ptr %114, align 4
  %115 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 26
  %116 = load i8, ptr %115, align 8
  %117 = getelementptr i8, ptr %14, i32 -8
  store i8 %116, ptr %117, align 4
  %118 = getelementptr i8, ptr %14, i32 -5296
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %165

121:                                              ; preds = %99
  %122 = load i8, ptr %53, align 4
  %123 = zext i8 %122 to i32
  %124 = getelementptr i8, ptr %14, i32 -5291
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i32
  %127 = tail call ptr @snd_usb_get_host_interface(ptr noundef %0, i32 noundef %123, i32 noundef %126) #12
  %128 = icmp eq ptr %127, null
  br i1 %128, label %165, label %129

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.usb_host_interface, ptr %127, i32 0, i32 3
  %131 = load ptr, ptr %130, align 4
  %132 = load i8, ptr %52, align 2
  %133 = zext i8 %132 to i32
  %134 = getelementptr %struct.usb_host_endpoint, ptr %131, i32 %133
  %135 = load i8, ptr %134, align 1
  %136 = icmp ugt i8 %135, 8
  br i1 %136, label %137, label %144

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %134, i32 0, i32 6
  %139 = load i8, ptr %138, align 1
  %140 = add i8 %139, -1
  %141 = icmp ult i8 %140, 9
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = zext i8 %139 to i32
  br label %158

144:                                              ; preds = %137, %129
  %145 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.usb_device, ptr %146, i32 0, i32 4
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %158, label %150

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %134, i32 0, i32 5
  %152 = load i8, ptr %151, align 1
  %153 = add i8 %152, -1
  %154 = icmp ult i8 %153, 16
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = zext i8 %152 to i32
  %157 = add nsw i32 %156, -1
  br label %158

158:                                              ; preds = %155, %150, %144, %142
  %159 = phi i32 [ %157, %155 ], [ %143, %142 ], [ 1, %144 ], [ 3, %150 ]
  %160 = getelementptr i8, ptr %14, i32 -60
  store i32 %159, ptr %160, align 4
  %161 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %134, i32 0, i32 4
  %162 = load i16, ptr %161, align 1
  %163 = zext i16 %162 to i32
  %164 = getelementptr i8, ptr %14, i32 -72
  store i32 %163, ptr %164, align 4
  br label %165

165:                                              ; preds = %158, %121, %99
  %166 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 13
  %167 = load i8, ptr %166, align 1, !range !8
  %168 = getelementptr i8, ptr %14, i32 -44
  store i8 %167, ptr %168, align 4
  %169 = getelementptr i8, ptr %14, i32 -42
  store i8 1, ptr %169, align 2
  %170 = getelementptr i8, ptr %14, i32 -5312
  %171 = load ptr, ptr %170, align 4
  br label %221

172:                                              ; preds = %27
  %173 = getelementptr i8, ptr %14, i32 -5312
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %177, !prof !13

176:                                              ; preds = %172
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 795, i32 noundef 9, ptr noundef null) #12
  br label %234

177:                                              ; preds = %172
  %178 = getelementptr i8, ptr %14, i32 -40
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, %1
  br i1 %180, label %181, label %217

181:                                              ; preds = %177
  %182 = getelementptr i8, ptr %14, i32 -36
  %183 = load i32, ptr %182, align 4
  %184 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 3, i32 3
  %185 = load i32, ptr %184, align 4
  %186 = icmp eq i32 %183, %185
  br i1 %186, label %187, label %217

187:                                              ; preds = %181
  %188 = getelementptr i8, ptr %14, i32 -32
  %189 = load i32, ptr %188, align 4
  %190 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 1, i32 1
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %198, %187
  %194 = phi i32 [ 0, %187 ], [ 32, %198 ]
  %195 = phi i32 [ %191, %187 ], [ %200, %198 ]
  %196 = tail call i32 @llvm.cttz.i32(i32 %195, i1 true) #12, !range !12
  %197 = or i32 %196, %194
  br label %202

198:                                              ; preds = %187
  %199 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 1, i32 1, i32 0, i32 1
  %200 = load i32, ptr %199, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %193

202:                                              ; preds = %198, %193
  %203 = phi i32 [ %197, %193 ], [ 0, %198 ]
  %204 = icmp eq i32 %189, %203
  br i1 %204, label %205, label %217

205:                                              ; preds = %202
  %206 = getelementptr i8, ptr %14, i32 -20
  %207 = load i32, ptr %206, align 4
  %208 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 3, i32 5
  %209 = load i32, ptr %208, align 4
  %210 = icmp eq i32 %207, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %205
  %212 = getelementptr i8, ptr %14, i32 -12
  %213 = load i32, ptr %212, align 4
  %214 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 3, i32 7
  %215 = load i32, ptr %214, align 4
  %216 = icmp eq i32 %213, %215
  br i1 %216, label %221, label %217

217:                                              ; preds = %211, %205, %202, %181, %177
  %218 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %219 = load ptr, ptr %218, align 4
  %220 = getelementptr inbounds %struct.usb_device, ptr %219, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %220, ptr noundef nonnull @.str.3, i32 noundef %9) #13
  br label %234

221:                                              ; preds = %211, %165
  %222 = phi ptr [ %174, %211 ], [ %171, %165 ]
  %223 = getelementptr inbounds %struct.snd_usb_iface_ref, ptr %222, i32 0, i32 2
  %224 = load i32, ptr %223, align 4
  %225 = add i32 %224, 1
  store i32 %225, ptr %223, align 4
  %226 = icmp eq i32 %224, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %221
  %228 = getelementptr i8, ptr %14, i32 -5312
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr inbounds %struct.snd_usb_iface_ref, ptr %229, i32 0, i32 1
  store i8 1, ptr %230, align 1
  br label %231

231:                                              ; preds = %227, %221
  %232 = load i32, ptr %28, align 4
  %233 = add i32 %232, 1
  store i32 %233, ptr %28, align 4
  br label %234

234:                                              ; preds = %231, %217, %176, %75, %67, %23
  %235 = phi ptr [ null, %176 ], [ %21, %231 ], [ null, %217 ], [ null, %23 ], [ null, %75 ], [ null, %67 ]
  tail call void @mutex_unlock(ptr noundef %10) #12
  ret ptr %235
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @snd_usb_endpoint_set_sync(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 13
  store ptr %2, ptr %4, align 4
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usb_endpoint_set_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 10
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 11
  store ptr %2, ptr %6, align 4
  %7 = icmp eq ptr %3, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 31
  %10 = load i8, ptr %9, align 1, !range !8
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i8 [ %10, %8 ], [ 0, %4 ]
  %13 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 49
  store i8 %12, ptr %13, align 1
  %14 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 12
  store volatile ptr %3, ptr %14, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usb_endpoint_close(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_usb_iface_ref, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -1
  store i32 %8, ptr %6, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 6
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = tail call i32 @usb_set_interface(ptr noundef %12, i32 noundef %15, i32 noundef 0) #12
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  %21 = load i8, ptr %13, align 4
  %22 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.5, i32 noundef %22, i32 noundef 0, i32 noundef %16) #13
  br label %29

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 2048
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void @msleep(i32 noundef 50) #12
  br label %29

29:                                               ; preds = %28, %23, %18, %2
  %30 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -1
  store i32 %32, ptr %30, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 6
  store i8 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 7
  store i8 0, ptr %36, align 1
  %37 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 51
  store ptr null, ptr %37, align 4
  %38 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 52
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 59
  store i8 0, ptr %39, align 4
  store ptr null, ptr %4, align 4
  br label %40

40:                                               ; preds = %34, %29
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @snd_usb_endpoint_suspend(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 50
  store i8 1, ptr %2, align 2
  %3 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.snd_usb_iface_ref, ptr %4, i32 0, i32 1
  store i8 1, ptr %7, align 1
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usb_endpoint_sync_pending_stop(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %40, label %3

3:                                                ; preds = %1
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 9
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %40

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 23
  %10 = sub i32 -100, %4
  br label %11

11:                                               ; preds = %14, %8
  %12 = load volatile i32, ptr %9, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #12
  %16 = load volatile i32, ptr @jiffies, align 64
  %17 = add i32 %10, %16
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %11, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.snd_usb_audio, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15
  %24 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.6, i32 noundef %12, i32 noundef %25) #13
  br label %26

26:                                               ; preds = %19, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #12, !srcloc !10
  br label %27

27:                                               ; preds = %27, %26
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 2, i32 0, ptr elementtype(i32) %5) #12, !srcloc !15
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %27

31:                                               ; preds = %27
  %32 = extractvalue { i32, i32 } %28, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 14
  store ptr null, ptr %35, align 4
  %36 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 10
  store ptr null, ptr %36, align 4
  %37 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 11
  store ptr null, ptr %37, align 4
  %38 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 49
  store i8 0, ptr %38, align 1
  %39 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 12
  store volatile ptr null, ptr %39, align 4
  br label %40

40:                                               ; preds = %34, %31, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_endpoint_configure(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !13

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1335, i32 noundef 9, ptr noundef null) #12
  br label %120

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 50
  %10 = load i8, ptr %9, align 2, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %120, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.snd_usb_iface_ref, ptr %5, i32 0, i32 1
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 51
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.audioformat, ptr %18, i32 0, i32 19
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 52
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @snd_usb_init_sample_rate(ptr noundef %0, ptr noundef %18, i32 noundef %24) #12
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %120, label %27

27:                                               ; preds = %22, %16
  %28 = tail call fastcc i32 @snd_usb_endpoint_set_params(ptr noundef %0, ptr noundef %1)
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %120, label %119

30:                                               ; preds = %12
  %31 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 6
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  %36 = tail call i32 @usb_set_interface(ptr noundef %32, i32 noundef %35, i32 noundef 0) #12
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load ptr, ptr %31, align 4
  %40 = getelementptr inbounds %struct.usb_device, ptr %39, i32 0, i32 15
  %41 = load i8, ptr %33, align 4
  %42 = zext i8 %41 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.5, i32 noundef %42, i32 noundef 0, i32 noundef %36) #13
  br label %49

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 12
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 2048
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  tail call void @msleep(i32 noundef 50) #12
  br label %49

49:                                               ; preds = %48, %43, %38
  %50 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 51
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.audioformat, ptr %51, i32 0, i32 19
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, 0
  %55 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 12
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 65536
  %58 = icmp ne i32 %57, 0
  %59 = select i1 %58, i1 true, i1 %54
  br i1 %59, label %60, label %79

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 7
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load ptr, ptr %31, align 4
  %65 = load i8, ptr %33, align 4
  %66 = zext i8 %65 to i32
  %67 = tail call i32 @usb_set_interface(ptr noundef %64, i32 noundef %66, i32 noundef %63) #12
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %60
  %70 = load i32, ptr %55, align 4
  %71 = and i32 %70, 2048
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  tail call void @msleep(i32 noundef 50) #12
  br label %79

74:                                               ; preds = %60
  %75 = load ptr, ptr %31, align 4
  %76 = getelementptr inbounds %struct.usb_device, ptr %75, i32 0, i32 15
  %77 = load i8, ptr %33, align 4
  %78 = zext i8 %77 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.5, i32 noundef %78, i32 noundef %63, i32 noundef %67) #13
  br label %120

79:                                               ; preds = %73, %69, %49
  %80 = load ptr, ptr %50, align 4
  %81 = tail call i32 @snd_usb_init_pitch(ptr noundef %0, ptr noundef %80) #12
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %120, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %50, align 4
  %85 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 52
  %86 = load i32, ptr %85, align 4
  %87 = tail call i32 @snd_usb_init_sample_rate(ptr noundef %0, ptr noundef %84, i32 noundef %86) #12
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %120, label %89

89:                                               ; preds = %83
  %90 = tail call fastcc i32 @snd_usb_endpoint_set_params(ptr noundef %0, ptr noundef %1)
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %120, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr %50, align 4
  %94 = tail call i32 @snd_usb_select_mode_quirk(ptr noundef %0, ptr noundef %93) #12
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %120, label %96

96:                                               ; preds = %92
  br i1 %59, label %116, label %97

97:                                               ; preds = %96
  %98 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 7
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = load ptr, ptr %31, align 4
  %102 = load i8, ptr %33, align 4
  %103 = zext i8 %102 to i32
  %104 = tail call i32 @usb_set_interface(ptr noundef %101, i32 noundef %103, i32 noundef %100) #12
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %97
  %107 = load i32, ptr %55, align 4
  %108 = and i32 %107, 2048
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %106
  tail call void @msleep(i32 noundef 50) #12
  br label %116

111:                                              ; preds = %97
  %112 = load ptr, ptr %31, align 4
  %113 = getelementptr inbounds %struct.usb_device, ptr %112, i32 0, i32 15
  %114 = load i8, ptr %33, align 4
  %115 = zext i8 %114 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.5, i32 noundef %115, i32 noundef %100, i32 noundef %104) #13
  br label %120

116:                                              ; preds = %110, %106, %96
  %117 = load ptr, ptr %4, align 4
  %118 = getelementptr inbounds %struct.snd_usb_iface_ref, ptr %117, i32 0, i32 1
  store i8 0, ptr %118, align 1
  br label %119

119:                                              ; preds = %116, %27
  store i8 0, ptr %9, align 2
  br label %120

120:                                              ; preds = %119, %111, %92, %89, %83, %79, %74, %27, %22, %8, %7
  %121 = phi i32 [ %67, %74 ], [ %81, %79 ], [ %87, %83 ], [ %90, %89 ], [ %94, %92 ], [ 1, %119 ], [ %104, %111 ], [ %25, %22 ], [ %28, %27 ], [ 0, %8 ], [ 0, %7 ]
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %121
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_init_sample_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_usb_endpoint_set_params(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 51
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @release_urbs(ptr noundef %1, i1 noundef zeroext false)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %341, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.audioformat, ptr %4, i32 0, i32 18
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 43
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.audioformat, ptr %4, i32 0, i32 20
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 36
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.audioformat, ptr %4, i32 0, i32 10
  %16 = load i8, ptr %15, align 4
  %17 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 42
  %18 = lshr i8 %16, 7
  %19 = load i8, ptr %17, align 4
  %20 = and i8 %19, -2
  %21 = or i8 %20, %18
  store i8 %21, ptr %17, align 4
  %22 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 2
  %27 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 52
  %28 = load i32, ptr %27, align 4
  %29 = select i1 %26, i32 13, i32 10
  %30 = select i1 %26, i32 1000, i32 8000
  %31 = shl i32 %28, %29
  %32 = lshr i32 %30, %10
  %33 = or i32 %31, 62
  %34 = udiv i32 %33, 125
  %35 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 31
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 30
  store i32 %32, ptr %36, align 4
  %37 = freeze i32 %28
  %38 = freeze i32 %32
  %39 = udiv i32 %37, %38
  %40 = mul i32 %39, %38
  %41 = sub i32 %37, %40
  %42 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 28
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 27
  store i32 %39, ptr %43, align 4
  %44 = add i32 %28, -1
  %45 = add i32 %44, %32
  %46 = udiv i32 %45, %32
  %47 = getelementptr %struct.snd_usb_endpoint, ptr %1, i32 0, i32 27, i32 1
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 32
  store i32 %34, ptr %48, align 4
  %49 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 33
  store i32 -2147483648, ptr %49, align 4
  %50 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 35
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  switch i32 %52, label %341 [
    i32 0, label %53
    i32 1, label %280
  ]

53:                                               ; preds = %7
  %54 = load ptr, ptr %1, align 4
  %55 = load ptr, ptr %3, align 4
  %56 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 55
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.snd_usb_audio, ptr %54, i32 0, i32 12
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 26
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 128
  %66 = icmp eq i32 %65, 0
  br label %67

67:                                               ; preds = %62, %53
  %68 = phi i1 [ false, %53 ], [ %66, %62 ]
  %69 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 53
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 49
  br i1 %71, label %72, label %88

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.audioformat, ptr %55, i32 0, i32 28
  %74 = load i8, ptr %73, align 8, !range !8
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 54
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, %57
  br label %80

80:                                               ; preds = %76, %72
  %81 = phi i32 [ %57, %72 ], [ %79, %76 ]
  %82 = shl i32 %81, 3
  %83 = getelementptr inbounds %struct.audioformat, ptr %55, i32 0, i32 18
  %84 = load i8, ptr %83, align 4
  %85 = zext i8 %84 to i32
  store i32 %85, ptr %11, align 4
  %86 = ashr exact i32 %82, 3
  %87 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 46
  store i32 %86, ptr %87, align 4
  br label %95

88:                                               ; preds = %67
  %89 = shl i32 %57, 3
  %90 = getelementptr inbounds %struct.audioformat, ptr %55, i32 0, i32 18
  %91 = load i8, ptr %90, align 4
  %92 = zext i8 %91 to i32
  store i32 %92, ptr %11, align 4
  %93 = ashr exact i32 %89, 3
  %94 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 46
  store i32 %93, ptr %94, align 4
  switch i32 %70, label %98 [
    i32 1, label %99
    i32 48, label %95
    i32 52, label %95
    i32 50, label %95
    i32 51, label %95
  ]

95:                                               ; preds = %88, %88, %88, %88, %80
  %96 = phi i32 [ %86, %80 ], [ %93, %88 ], [ %93, %88 ], [ %93, %88 ], [ %93, %88 ]
  %97 = phi i32 [ %85, %80 ], [ %92, %88 ], [ %92, %88 ], [ %92, %88 ], [ %92, %88 ]
  br label %99

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %98, %95, %88
  %100 = phi i8 [ 0, %98 ], [ 105, %95 ], [ -128, %88 ]
  %101 = phi i32 [ %93, %98 ], [ %96, %95 ], [ %93, %88 ]
  %102 = phi i32 [ %92, %98 ], [ %97, %95 ], [ %92, %88 ]
  %103 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 45
  store i8 %100, ptr %103, align 4
  %104 = lshr i32 %34, 1
  %105 = add nuw nsw i32 %104, %34
  %106 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 34
  %107 = shl i32 %105, %102
  %108 = add i32 %107, 65535
  %109 = lshr i32 %108, 16
  %110 = mul i32 %109, %101
  %111 = add i32 %110, 4
  %112 = select i1 %68, i32 %111, i32 %110
  %113 = icmp ne i32 %13, 0
  %114 = icmp ult i32 %13, %112
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %116, label %122

116:                                              ; preds = %99
  %117 = add i32 %13, -4
  %118 = select i1 %68, i32 %117, i32 %13
  %119 = udiv i32 %118, %101
  %120 = sub nsw i32 16, %102
  %121 = shl i32 %119, %120
  br label %122

122:                                              ; preds = %116, %99
  %123 = phi i32 [ %121, %116 ], [ %105, %99 ]
  %124 = phi i32 [ %13, %116 ], [ %112, %99 ]
  store i32 %123, ptr %106, align 4
  %125 = icmp slt i8 %16, 0
  %126 = select i1 %125, i32 %13, i32 %124
  %127 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 39
  store i32 %126, ptr %127, align 4
  %128 = getelementptr inbounds %struct.snd_usb_audio, ptr %54, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.usb_device, ptr %129, i32 0, i32 4
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 2
  %133 = lshr i32 8, %102
  %134 = select i1 %132, i32 6, i32 48
  %135 = select i1 %132, i32 1, i32 %133
  %136 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 13
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %148, label %139

139:                                              ; preds = %122
  %140 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 48
  %141 = load i8, ptr %140, align 4, !range !8
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %137, i32 0, i32 44
  %145 = load i32, ptr %144, align 4
  %146 = shl nuw i32 1, %145
  %147 = tail call i32 @llvm.umin.i32(i32 %134, i32 %146) #12
  br label %148

148:                                              ; preds = %143, %139, %122
  %149 = phi i32 [ %134, %139 ], [ %147, %143 ], [ %134, %122 ]
  %150 = lshr i32 %149, %102
  %151 = icmp eq i32 %150, 0
  %152 = select i1 %151, i32 1, i32 %150
  %153 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 26
  %154 = load i32, ptr %153, align 4
  %155 = and i32 %154, 128
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %148
  %158 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 48
  %159 = load i8, ptr %158, align 4, !range !8
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %196, label %161

161:                                              ; preds = %157, %148
  %162 = icmp eq i32 %131, 4
  %163 = icmp ult i32 %102, 5
  %164 = select i1 %162, i1 %163, i1 false
  br i1 %164, label %165, label %179

165:                                              ; preds = %161
  %166 = shl nuw nsw i32 %135, 1
  %167 = icmp eq i32 %102, 4
  br i1 %167, label %179, label %168

168:                                              ; preds = %165
  %169 = shl nuw nsw i32 %135, 2
  %170 = icmp eq i32 %102, 3
  br i1 %170, label %179, label %171

171:                                              ; preds = %168
  %172 = shl nuw nsw i32 %135, 3
  %173 = icmp eq i32 %102, 2
  br i1 %173, label %179, label %174

174:                                              ; preds = %171
  %175 = shl nuw nsw i32 %135, 4
  %176 = icmp eq i32 %102, 1
  %177 = shl nuw nsw i32 %135, 5
  %178 = select i1 %176, i32 %175, i32 %177
  br label %179

179:                                              ; preds = %174, %171, %168, %165, %161
  %180 = phi i32 [ %135, %161 ], [ %166, %165 ], [ %169, %168 ], [ %172, %171 ], [ %178, %174 ]
  %181 = tail call i32 @llvm.umin.i32(i32 %152, i32 %180) #12
  %182 = icmp ugt i32 %181, 1
  br i1 %182, label %183, label %193

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 57
  %185 = load i32, ptr %184, align 4
  br label %186

186:                                              ; preds = %190, %183
  %187 = phi i32 [ %181, %183 ], [ %191, %190 ]
  %188 = mul i32 %187, %124
  %189 = icmp ult i32 %188, %185
  br i1 %189, label %193, label %190

190:                                              ; preds = %186
  %191 = lshr i32 %187, 1
  %192 = icmp ugt i32 %187, 3
  br i1 %192, label %186, label %193

193:                                              ; preds = %190, %186, %179
  %194 = phi i32 [ %181, %179 ], [ %187, %186 ], [ %191, %190 ]
  %195 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 20
  store i32 12, ptr %195, align 4
  br label %229

196:                                              ; preds = %157
  %197 = sub nsw i32 16, %102
  %198 = lshr i32 %34, %197
  %199 = mul i32 %198, %101
  %200 = lshr i32 %199, 3
  %201 = select i1 %138, i32 0, i32 %200
  %202 = sub i32 %199, %201
  %203 = tail call i32 @llvm.umax.i32(i32 %202, i32 1) #12
  %204 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 57
  %205 = load i32, ptr %204, align 4
  %206 = add i32 %203, -1
  %207 = add i32 %206, %205
  %208 = udiv i32 %207, %203
  %209 = add i32 %208, -1
  %210 = add i32 %209, %152
  %211 = udiv i32 %210, %152
  %212 = add i32 %209, %211
  %213 = udiv i32 %212, %211
  %214 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 56
  %215 = load i32, ptr %214, align 4
  %216 = add i32 %211, -1
  %217 = add i32 %216, %215
  %218 = udiv i32 %217, %211
  %219 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 38
  store i32 %218, ptr %219, align 4
  %220 = mul nuw nsw i32 %135, 18
  %221 = udiv i32 %220, %213
  %222 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 58
  %223 = load i32, ptr %222, align 4
  %224 = mul i32 %223, %211
  %225 = tail call i32 @llvm.umin.i32(i32 %221, i32 %224) #12
  %226 = tail call i32 @llvm.umin.i32(i32 %225, i32 12) #12
  %227 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 20
  store i32 %226, ptr %227, align 4
  %228 = icmp eq i32 %226, 0
  br i1 %228, label %331, label %229

229:                                              ; preds = %196, %193
  %230 = phi i32 [ %194, %193 ], [ %213, %196 ]
  %231 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 20
  %232 = mul i32 %230, %124
  %233 = getelementptr inbounds %struct.audioformat, ptr %55, i32 0, i32 3
  %234 = add i32 %230, 1
  br label %235

235:                                              ; preds = %260, %229
  %236 = phi i32 [ 0, %229 ], [ %275, %260 ]
  %237 = getelementptr %struct.snd_usb_endpoint, ptr %1, i32 0, i32 15, i32 %236
  %238 = getelementptr %struct.snd_usb_endpoint, ptr %1, i32 0, i32 15, i32 %236, i32 4
  store i32 %236, ptr %238, align 4
  %239 = getelementptr %struct.snd_usb_endpoint, ptr %1, i32 0, i32 15, i32 %236, i32 3
  store ptr %1, ptr %239, align 4
  %240 = getelementptr %struct.snd_usb_endpoint, ptr %1, i32 0, i32 15, i32 %236, i32 5
  store i32 %230, ptr %240, align 4
  %241 = getelementptr %struct.snd_usb_endpoint, ptr %1, i32 0, i32 15, i32 %236, i32 1
  store i32 %232, ptr %241, align 4
  %242 = load i32, ptr %233, align 4
  %243 = icmp eq i32 %242, 2
  br i1 %243, label %244, label %245

244:                                              ; preds = %235
  store i32 %234, ptr %240, align 4
  br label %245

245:                                              ; preds = %244, %235
  %246 = phi i32 [ %234, %244 ], [ %230, %235 ]
  %247 = tail call ptr @usb_alloc_urb(i32 noundef %246, i32 noundef 3264) #12
  store ptr %247, ptr %237, align 4
  %248 = icmp eq ptr %247, null
  br i1 %248, label %278, label %249

249:                                              ; preds = %245
  %250 = load ptr, ptr %128, align 4
  %251 = load i32, ptr %241, align 4
  %252 = getelementptr inbounds %struct.urb, ptr %247, i32 0, i32 15
  %253 = tail call ptr @usb_alloc_coherent(ptr noundef %250, i32 noundef %251, i32 noundef 3264, ptr noundef %252) #12
  %254 = load ptr, ptr %237, align 4
  %255 = getelementptr inbounds %struct.urb, ptr %254, i32 0, i32 14
  store ptr %253, ptr %255, align 4
  %256 = load ptr, ptr %237, align 4
  %257 = getelementptr inbounds %struct.urb, ptr %256, i32 0, i32 14
  %258 = load ptr, ptr %257, align 4
  %259 = icmp eq ptr %258, null
  br i1 %259, label %278, label %260

260:                                              ; preds = %249
  %261 = load i32, ptr %153, align 4
  %262 = getelementptr inbounds %struct.urb, ptr %256, i32 0, i32 10
  store i32 %261, ptr %262, align 4
  %263 = load ptr, ptr %237, align 4
  %264 = getelementptr inbounds %struct.urb, ptr %263, i32 0, i32 13
  store i32 4, ptr %264, align 4
  %265 = load i32, ptr %11, align 4
  %266 = shl nuw i32 1, %265
  %267 = load ptr, ptr %237, align 4
  %268 = getelementptr inbounds %struct.urb, ptr %267, i32 0, i32 25
  store i32 %266, ptr %268, align 4
  %269 = load ptr, ptr %237, align 4
  %270 = getelementptr inbounds %struct.urb, ptr %269, i32 0, i32 27
  store ptr %237, ptr %270, align 4
  %271 = load ptr, ptr %237, align 4
  %272 = getelementptr inbounds %struct.urb, ptr %271, i32 0, i32 28
  store ptr @snd_complete_urb, ptr %272, align 4
  %273 = getelementptr %struct.snd_usb_endpoint, ptr %1, i32 0, i32 15, i32 %236, i32 8
  store volatile ptr %273, ptr %273, align 4
  %274 = getelementptr %struct.snd_usb_endpoint, ptr %1, i32 0, i32 15, i32 %236, i32 8, i32 1
  store ptr %273, ptr %274, align 4
  %275 = add nuw i32 %236, 1
  %276 = load i32, ptr %231, align 4
  %277 = icmp ult i32 %275, %276
  br i1 %277, label %235, label %331

278:                                              ; preds = %249, %245
  %279 = tail call fastcc i32 @release_urbs(ptr noundef %1, i1 noundef zeroext false) #12
  br label %341

280:                                              ; preds = %7
  %281 = load ptr, ptr %1, align 4
  %282 = getelementptr inbounds %struct.snd_usb_audio, ptr %281, i32 0, i32 1
  %283 = load ptr, ptr %282, align 4
  %284 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 25
  %285 = tail call ptr @usb_alloc_coherent(ptr noundef %283, i32 noundef 16, i32 noundef 3264, ptr noundef %284) #12
  %286 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 24
  store ptr %285, ptr %286, align 4
  %287 = icmp eq ptr %285, null
  br i1 %287, label %341, label %288

288:                                              ; preds = %280
  %289 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 26
  %290 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 44
  br label %291

291:                                              ; preds = %299, %288
  %292 = phi i32 [ 0, %288 ], [ %325, %299 ]
  %293 = getelementptr %struct.snd_usb_endpoint, ptr %1, i32 0, i32 15, i32 %292
  %294 = getelementptr %struct.snd_usb_endpoint, ptr %1, i32 0, i32 15, i32 %292, i32 4
  store i32 %292, ptr %294, align 4
  %295 = getelementptr %struct.snd_usb_endpoint, ptr %1, i32 0, i32 15, i32 %292, i32 3
  store ptr %1, ptr %295, align 4
  %296 = getelementptr %struct.snd_usb_endpoint, ptr %1, i32 0, i32 15, i32 %292, i32 5
  store i32 1, ptr %296, align 4
  %297 = tail call ptr @usb_alloc_urb(i32 noundef 1, i32 noundef 3264) #12
  store ptr %297, ptr %293, align 4
  %298 = icmp eq ptr %297, null
  br i1 %298, label %329, label %299

299:                                              ; preds = %291
  %300 = load ptr, ptr %286, align 4
  %301 = shl i32 %292, 2
  %302 = getelementptr i8, ptr %300, i32 %301
  %303 = getelementptr inbounds %struct.urb, ptr %297, i32 0, i32 14
  store ptr %302, ptr %303, align 4
  %304 = load i32, ptr %284, align 4
  %305 = add i32 %304, %301
  %306 = load ptr, ptr %293, align 4
  %307 = getelementptr inbounds %struct.urb, ptr %306, i32 0, i32 15
  store i32 %305, ptr %307, align 4
  %308 = load ptr, ptr %293, align 4
  %309 = getelementptr inbounds %struct.urb, ptr %308, i32 0, i32 19
  store i32 4, ptr %309, align 4
  %310 = load i32, ptr %289, align 4
  %311 = load ptr, ptr %293, align 4
  %312 = getelementptr inbounds %struct.urb, ptr %311, i32 0, i32 10
  store i32 %310, ptr %312, align 4
  %313 = load ptr, ptr %293, align 4
  %314 = getelementptr inbounds %struct.urb, ptr %313, i32 0, i32 13
  store i32 4, ptr %314, align 4
  %315 = load ptr, ptr %293, align 4
  %316 = getelementptr inbounds %struct.urb, ptr %315, i32 0, i32 24
  store i32 1, ptr %316, align 4
  %317 = load i32, ptr %290, align 4
  %318 = shl nuw i32 1, %317
  %319 = load ptr, ptr %293, align 4
  %320 = getelementptr inbounds %struct.urb, ptr %319, i32 0, i32 25
  store i32 %318, ptr %320, align 4
  %321 = load ptr, ptr %293, align 4
  %322 = getelementptr inbounds %struct.urb, ptr %321, i32 0, i32 27
  store ptr %293, ptr %322, align 4
  %323 = load ptr, ptr %293, align 4
  %324 = getelementptr inbounds %struct.urb, ptr %323, i32 0, i32 28
  store ptr @snd_complete_urb, ptr %324, align 4
  %325 = add nuw nsw i32 %292, 1
  %326 = icmp eq i32 %325, 4
  br i1 %326, label %327, label %291

327:                                              ; preds = %299
  %328 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 20
  store i32 4, ptr %328, align 4
  br label %331

329:                                              ; preds = %291
  %330 = tail call fastcc i32 @release_urbs(ptr noundef %1, i1 noundef zeroext false) #12
  br label %341

331:                                              ; preds = %327, %260, %196
  %332 = load i32, ptr %14, align 4
  %333 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 55
  %334 = load i32, ptr %333, align 4
  %335 = udiv i32 %332, %334
  %336 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 37
  store i32 %335, ptr %336, align 4
  %337 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 39
  %338 = load i32, ptr %337, align 4
  %339 = udiv i32 %338, %334
  %340 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 40
  store i32 %339, ptr %340, align 4
  br label %341

341:                                              ; preds = %331, %329, %280, %278, %7, %2
  %342 = phi i32 [ 0, %331 ], [ %5, %2 ], [ -12, %280 ], [ -12, %329 ], [ -12, %278 ], [ -22, %7 ]
  ret i32 %342
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_init_pitch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_select_mode_quirk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_endpoint_get_clock_rate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %22, label %9

9:                                                ; preds = %19, %4
  %10 = phi ptr [ %20, %19 ], [ %7, %4 ]
  %11 = getelementptr i8, ptr %10, i32 -8
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = getelementptr i8, ptr %10, i32 -36
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %9
  %20 = load ptr, ptr %10, align 4
  %21 = icmp eq ptr %20, %6
  br i1 %21, label %22, label %9

22:                                               ; preds = %19, %15, %4
  %23 = phi i32 [ 0, %4 ], [ %17, %15 ], [ 0, %19 ]
  tail call void @mutex_unlock(ptr noundef %5) #12
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi i32 [ %23, %22 ], [ 0, %2 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_endpoint_start(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 26
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 128
  %5 = icmp eq i32 %4, 0
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.snd_usb_audio, ptr %6, i32 0, i32 9
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %155

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 13
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %12, i32 0, i32 14
  store volatile ptr %0, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #12, !srcloc !10
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #12, !srcloc !18
  %19 = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %155

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 21
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 22
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 35
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 29
  store i32 0, ptr %25, align 4
  tail call void @snd_usb_endpoint_start_quirk(ptr noundef %0) #12
  %26 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #12, !srcloc !10
  br label %27

27:                                               ; preds = %27, %21
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 0, i32 1, ptr elementtype(i32) %26) #12, !srcloc !15
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %27

31:                                               ; preds = %27
  %32 = extractvalue { i32, i32 } %28, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %139

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 48
  %36 = load i8, ptr %35, align 4, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = load i32, ptr %2, align 4
  %40 = and i32 %39, 128
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load ptr, ptr %0, align 4
  %44 = getelementptr inbounds %struct.snd_usb_audio, ptr %43, i32 0, i32 12
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %118, label %48

48:                                               ; preds = %42, %38, %34
  %49 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 20
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %139, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 5
  %54 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 41
  %55 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 39
  %56 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 23
  br label %57

57:                                               ; preds = %113, %52
  %58 = phi i32 [ 0, %52 ], [ %115, %113 ]
  %59 = getelementptr %struct.snd_usb_endpoint, ptr %0, i32 0, i32 15, i32 %58
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %139, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 27
  %64 = load ptr, ptr %63, align 4
  br i1 %5, label %97, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %64, align 4
  %67 = load ptr, ptr %0, align 4
  %68 = getelementptr inbounds %struct.snd_usb_audio, ptr %67, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.urb, ptr %66, i32 0, i32 8
  store ptr %69, ptr %70, align 4
  %71 = load i32, ptr %53, align 4
  switch i32 %71, label %104 [
    i32 0, label %72
    i32 1, label %92
  ]

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.snd_urb_ctx, ptr %64, i32 0, i32 5
  %74 = load i32, ptr %73, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %76, %72
  %77 = phi i32 [ %84, %76 ], [ 0, %72 ]
  %78 = phi i32 [ %83, %76 ], [ 0, %72 ]
  %79 = getelementptr %struct.urb, ptr %66, i32 0, i32 29, i32 %77
  store i32 %78, ptr %79, align 4
  %80 = load i32, ptr %55, align 4
  %81 = getelementptr %struct.urb, ptr %66, i32 0, i32 29, i32 %77, i32 1
  store i32 %80, ptr %81, align 4
  %82 = load i32, ptr %55, align 4
  %83 = add i32 %82, %78
  %84 = add nuw nsw i32 %77, 1
  %85 = load i32, ptr %73, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %76, label %87

87:                                               ; preds = %76, %72
  %88 = phi i32 [ 0, %72 ], [ %83, %76 ]
  %89 = getelementptr inbounds %struct.urb, ptr %66, i32 0, i32 19
  store i32 %88, ptr %89, align 4
  %90 = load i32, ptr %73, align 4
  %91 = getelementptr inbounds %struct.urb, ptr %66, i32 0, i32 24
  store i32 %90, ptr %91, align 4
  br label %104

92:                                               ; preds = %65
  %93 = load i32, ptr %54, align 4
  %94 = tail call i32 @llvm.umin.i32(i32 %93, i32 4) #12
  %95 = getelementptr inbounds %struct.urb, ptr %66, i32 0, i32 29
  %96 = getelementptr inbounds %struct.urb, ptr %66, i32 1, i32 1
  store i32 %94, ptr %96, align 4
  store i32 0, ptr %95, align 4
  br label %104

97:                                               ; preds = %62
  %98 = tail call fastcc i32 @prepare_outbound_urb(ptr noundef %0, ptr noundef %64, i1 noundef zeroext true)
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = icmp ne i32 %98, -11
  %102 = icmp eq i32 %58, 0
  %103 = select i1 %101, i1 true, i1 %102
  br i1 %103, label %139, label %120

104:                                              ; preds = %97, %92, %87, %65
  %105 = tail call i32 @usb_submit_urb(ptr noundef nonnull %60, i32 noundef 2592) #12
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load ptr, ptr %0, align 4
  %109 = getelementptr inbounds %struct.snd_usb_audio, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.usb_device, ptr %110, i32 0, i32 15
  %112 = tail call fastcc ptr @usb_error_string(i32 noundef %105)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.4, i32 noundef %58, i32 noundef %105, ptr noundef nonnull %112) #13
  br label %139

113:                                              ; preds = %104
  tail call void @_set_bit(i32 noundef %58, ptr noundef %22) #12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #12, !srcloc !10
  %114 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #12, !srcloc !11
  %115 = add nuw i32 %58, 1
  %116 = load i32, ptr %49, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %57, label %118

118:                                              ; preds = %113, %42
  %119 = phi i32 [ 0, %42 ], [ %115, %113 ]
  br i1 %5, label %120, label %155

120:                                              ; preds = %118, %100
  %121 = phi i32 [ %119, %118 ], [ %58, %100 ]
  %122 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 20
  %123 = load i32, ptr %122, align 4
  %124 = icmp ult i32 %121, %123
  br i1 %124, label %125, label %155

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 15
  %127 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 60
  %128 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 19
  %129 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 19, i32 1
  br label %130

130:                                              ; preds = %130, %125
  %131 = phi i32 [ %121, %125 ], [ %136, %130 ]
  %132 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %127) #12
  %133 = getelementptr %struct.snd_urb_ctx, ptr %126, i32 %131, i32 8
  %134 = load ptr, ptr %129, align 4
  store ptr %133, ptr %129, align 4
  store ptr %128, ptr %133, align 4
  %135 = getelementptr %struct.snd_urb_ctx, ptr %126, i32 %131, i32 8, i32 1
  store ptr %134, ptr %135, align 4
  store volatile ptr %133, ptr %134, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %127, i32 noundef %132) #12
  %136 = add nuw i32 %131, 1
  %137 = load i32, ptr %122, align 4
  %138 = icmp ult i32 %136, %137
  br i1 %138, label %130, label %155

139:                                              ; preds = %107, %100, %57, %48, %31
  %140 = icmp eq ptr %0, null
  br i1 %140, label %155, label %141

141:                                              ; preds = %139
  %142 = load volatile i32, ptr %17, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %155, label %144

144:                                              ; preds = %141
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #12, !srcloc !10
  %145 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #12, !srcloc !21
  %146 = extractvalue { i32, i32 } %145, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %144
  %149 = load ptr, ptr %11, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %149, i32 0, i32 14
  store volatile ptr null, ptr %152, align 4
  br label %153

153:                                              ; preds = %151, %148
  %154 = tail call fastcc i32 @stop_urbs(ptr noundef nonnull %0, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %155

155:                                              ; preds = %153, %144, %141, %139, %130, %120, %118, %16, %1
  %156 = phi i32 [ -77, %1 ], [ 0, %16 ], [ 0, %118 ], [ -32, %139 ], [ -32, %141 ], [ -32, %144 ], [ -32, %153 ], [ 0, %120 ], [ 0, %130 ]
  ret i32 %156
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_endpoint_start_quirk(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @usb_error_string(i32 noundef %0) unnamed_addr #8 {
  switch i32 %0, label %8 [
    i32 -19, label %9
    i32 -2, label %2
    i32 -32, label %3
    i32 -28, label %4
    i32 -108, label %5
    i32 -113, label %6
    i32 -22, label %7
    i32 -11, label %7
    i32 -27, label %7
    i32 -90, label %7
  ]

2:                                                ; preds = %1
  br label %9

3:                                                ; preds = %1
  br label %9

4:                                                ; preds = %1
  br label %9

5:                                                ; preds = %1
  br label %9

6:                                                ; preds = %1
  br label %9

7:                                                ; preds = %1, %1, %1, %1
  br label %9

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8, %7, %6, %5, %4, %3, %2, %1
  %10 = phi ptr [ @.str.16, %8 ], [ @.str.15, %7 ], [ @.str.14, %6 ], [ @.str.13, %5 ], [ @.str.12, %4 ], [ @.str.11, %3 ], [ @.str.10, %2 ], [ @.str.9, %1 ]
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usb_endpoint_stop(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 3
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #12, !srcloc !10
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #12, !srcloc !21
  %10 = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 13
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %14, i32 0, i32 14
  store volatile ptr null, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %12
  %19 = tail call fastcc i32 @stop_urbs(ptr noundef nonnull %0, i1 noundef zeroext false, i1 noundef zeroext %1)
  br label %20

20:                                               ; preds = %18, %8, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stop_urbs(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #1 {
  br i1 %1, label %8, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 3
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %51

8:                                                ; preds = %4, %3
  %9 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #12, !srcloc !10
  br label %10

10:                                               ; preds = %10, %8
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, i32 2, ptr elementtype(i32) %9) #12, !srcloc !15
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %10

14:                                               ; preds = %10
  %15 = extractvalue { i32, i32 } %11, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %51

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 60
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #12
  %20 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 19
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 19, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 17
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 18
  store i32 0, ptr %23, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #12
  br i1 %2, label %51, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 20
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 21
  %30 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 22
  br label %31

31:                                               ; preds = %47, %28
  %32 = phi i32 [ 0, %28 ], [ %48, %47 ]
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr %29, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %31
  %41 = tail call i32 @_test_and_set_bit(i32 noundef %32, ptr noundef %30) #12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = getelementptr %struct.snd_usb_endpoint, ptr %0, i32 0, i32 15, i32 %32
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @usb_unlink_urb(ptr noundef %45) #12
  br label %47

47:                                               ; preds = %43, %40, %31
  %48 = add nuw i32 %32, 1
  %49 = load i32, ptr %25, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %31, label %51

51:                                               ; preds = %47, %24, %17, %14, %4
  %52 = phi i32 [ -16, %4 ], [ 0, %14 ], [ 0, %17 ], [ 0, %24 ], [ 0, %47 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usb_endpoint_release(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call fastcc i32 @release_urbs(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @release_urbs(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 10
  store ptr null, ptr %3, align 4
  %4 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 11
  store ptr null, ptr %4, align 4
  %5 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 49
  store i8 0, ptr %5, align 1
  %6 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 12
  store volatile ptr null, ptr %6, align 4
  %7 = tail call fastcc i32 @stop_urbs(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext false)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %76

9:                                                ; preds = %2
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 9
  %12 = load volatile i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %42

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 23
  %16 = sub i32 -100, %10
  br label %17

17:                                               ; preds = %20, %14
  %18 = load volatile i32, ptr %15, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #12
  %22 = load volatile i32, ptr @jiffies, align 64
  %23 = add i32 %16, %22
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %17, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.snd_usb_audio, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 15
  %30 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.6, i32 noundef %18, i32 noundef %31) #13
  br label %32

32:                                               ; preds = %25, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #12, !srcloc !10
  br label %33

33:                                               ; preds = %33, %32
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 2, i32 0, ptr elementtype(i32) %11) #12, !srcloc !15
  %35 = extractvalue { i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %33

37:                                               ; preds = %33
  %38 = extractvalue { i32, i32 } %34, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 14
  store ptr null, ptr %41, align 4
  store ptr null, ptr %3, align 4
  store ptr null, ptr %4, align 4
  store i8 0, ptr %5, align 1
  store volatile ptr null, ptr %6, align 4
  br label %42

42:                                               ; preds = %40, %37, %9
  %43 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 20
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %68, label %46

46:                                               ; preds = %63, %42
  %47 = phi i32 [ %65, %63 ], [ 0, %42 ]
  %48 = getelementptr %struct.snd_usb_endpoint, ptr %0, i32 0, i32 15, i32 %47
  %49 = getelementptr %struct.snd_usb_endpoint, ptr %0, i32 0, i32 15, i32 %47, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %46
  %53 = getelementptr %struct.snd_usb_endpoint, ptr %0, i32 0, i32 15, i32 %47, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.snd_usb_audio, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %48, align 4
  %59 = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 14
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 15
  %62 = load i32, ptr %61, align 4
  tail call void @usb_free_coherent(ptr noundef %57, i32 noundef %50, ptr noundef %60, i32 noundef %62) #12
  br label %63

63:                                               ; preds = %52, %46
  %64 = load ptr, ptr %48, align 4
  tail call void @usb_free_urb(ptr noundef %64) #12
  store ptr null, ptr %48, align 4
  %65 = add nuw i32 %47, 1
  %66 = load i32, ptr %43, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %46, label %68

68:                                               ; preds = %63, %42
  %69 = load ptr, ptr %0, align 4
  %70 = getelementptr inbounds %struct.snd_usb_audio, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 24
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %0, i32 0, i32 25
  %75 = load i32, ptr %74, align 4
  tail call void @usb_free_coherent(ptr noundef %71, i32 noundef 16, ptr noundef %73, i32 noundef %75) #12
  store ptr null, ptr %72, align 4
  store i32 0, ptr %43, align 4
  br label %76

76:                                               ; preds = %68, %2
  %77 = phi i32 [ 0, %68 ], [ %7, %2 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_usb_endpoint_free_all(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %10, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -5316
  %8 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #12
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %10, label %5

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 20
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %19, label %14

14:                                               ; preds = %14, %10
  %15 = phi ptr [ %17, %14 ], [ %12, %10 ]
  %16 = getelementptr i8, ptr %15, i32 -8
  %17 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %16) #12
  %18 = icmp eq ptr %17, %11
  br i1 %18, label %19, label %14

19:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_get_host_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_complete_urb(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_urb_ctx, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %8 [
    i32 -2, label %315
    i32 -19, label %315
    i32 -104, label %315
    i32 -108, label %315
  ], !prof !23

8:                                                ; preds = %1
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.snd_usb_audio, ptr %9, i32 0, i32 9
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %315, !prof !9

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 9
  %15 = load volatile i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %315, !prof !9

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 26
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 128
  %21 = icmp eq i32 %20, 0
  %22 = load ptr, ptr %3, align 4
  br i1 %21, label %23, label %64

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 12
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 11
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void %29(ptr noundef nonnull %25, ptr noundef %22) #12
  br label %32

32:                                               ; preds = %31, %27, %23
  %33 = load volatile i32, ptr %14, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %315, !prof !9

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 49
  %37 = load i8, ptr %36, align 1, !range !8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 48
  %41 = load i8, ptr %40, align 4, !range !8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %18, align 4
  %45 = and i32 %44, 128
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43, %35
  %48 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 60
  %49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %48) #12
  %50 = getelementptr inbounds %struct.snd_urb_ctx, ptr %3, i32 0, i32 8
  %51 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 19
  %52 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 19, i32 1
  %53 = load ptr, ptr %52, align 4
  store ptr %50, ptr %52, align 4
  store ptr %51, ptr %50, align 4
  %54 = getelementptr inbounds %struct.snd_urb_ctx, ptr %3, i32 0, i32 8, i32 1
  store ptr %53, ptr %54, align 4
  store volatile ptr %50, ptr %53, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %48, i32 noundef %49) #12
  %55 = getelementptr inbounds %struct.snd_urb_ctx, ptr %3, i32 0, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef %56, ptr noundef %57) #12
  tail call void @snd_usb_queue_pending_output_urbs(ptr noundef %5, i1 noundef zeroext false)
  %58 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #12, !srcloc !10
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 1, ptr elementtype(i32) %58) #12, !srcloc !24
  br label %321

60:                                               ; preds = %43, %39
  %61 = tail call fastcc i32 @prepare_outbound_urb(ptr noundef %5, ptr noundef %3, i1 noundef zeroext false)
  %62 = load volatile i32, ptr %14, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %298, label %315, !prof !9

64:                                               ; preds = %17
  %65 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 47
  %66 = load i32, ptr %65, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %70, !prof !13

68:                                               ; preds = %64
  %69 = add nsw i32 %66, -1
  store i32 %69, ptr %65, align 4
  br label %259

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 14
  %72 = load volatile ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %250, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %72, i32 0, i32 48
  %76 = load i8, ptr %75, align 4, !range !8
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %162, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %72, i32 0, i32 26
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 128
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %162

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %72, i32 0, i32 3
  %85 = load volatile i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %162, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 27
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.snd_urb_ctx, ptr %89, i32 0, i32 5
  %91 = load i32, ptr %90, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %250

93:                                               ; preds = %103, %87
  %94 = phi i32 [ %104, %103 ], [ 0, %87 ]
  %95 = phi i32 [ %105, %103 ], [ 0, %87 ]
  %96 = getelementptr %struct.urb, ptr %22, i32 0, i32 29, i32 %95, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = getelementptr %struct.urb, ptr %22, i32 0, i32 29, i32 %95, i32 2
  %101 = load i32, ptr %100, align 4
  %102 = add i32 %101, %94
  br label %103

103:                                              ; preds = %99, %93
  %104 = phi i32 [ %102, %99 ], [ %94, %93 ]
  %105 = add nuw nsw i32 %95, 1
  %106 = icmp eq i32 %105, %91
  br i1 %106, label %107, label %93

107:                                              ; preds = %103
  %108 = icmp eq i32 %104, 0
  br i1 %108, label %250, label %109

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %72, i32 0, i32 60
  %111 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %110) #12
  %112 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %72, i32 0, i32 18
  %113 = load i32, ptr %112, align 4
  %114 = icmp ugt i32 %113, 11
  br i1 %114, label %115, label %131

115:                                              ; preds = %109
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %110, i32 noundef %111) #12
  %116 = load ptr, ptr %72, align 4
  %117 = getelementptr inbounds %struct.snd_usb_audio, ptr %116, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.usb_device, ptr %118, i32 0, i32 15
  %120 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %72, i32 0, i32 4
  %121 = load i32, ptr %120, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.8, i32 noundef %121) #13
  %122 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %72, i32 0, i32 12
  %123 = load volatile ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %250, label %125

125:                                              ; preds = %115
  %126 = getelementptr inbounds %struct.snd_usb_substream, ptr %123, i32 0, i32 2
  %127 = load ptr, ptr %126, align 8
  %128 = icmp eq ptr %127, null
  br i1 %128, label %250, label %129

129:                                              ; preds = %125
  %130 = tail call i32 @snd_pcm_stop_xrun(ptr noundef nonnull %127) #12
  br label %250

131:                                              ; preds = %109
  %132 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %72, i32 0, i32 16
  %133 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %72, i32 0, i32 17
  %134 = load i32, ptr %133, align 4
  %135 = add i32 %134, %113
  %136 = urem i32 %135, 12
  %137 = getelementptr %struct.snd_usb_packet_info, ptr %132, i32 %136
  %138 = add nuw nsw i32 %113, 1
  store i32 %138, ptr %112, align 4
  %139 = load i32, ptr %90, align 4
  %140 = getelementptr %struct.snd_usb_packet_info, ptr %132, i32 %136, i32 1
  store i32 %139, ptr %140, align 4
  %141 = load i32, ptr %90, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %161

143:                                              ; preds = %131
  %144 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 46
  br label %145

145:                                              ; preds = %155, %143
  %146 = phi i32 [ 0, %143 ], [ %158, %155 ]
  %147 = getelementptr %struct.urb, ptr %22, i32 0, i32 29, i32 %146, i32 3
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = getelementptr %struct.urb, ptr %22, i32 0, i32 29, i32 %146, i32 2
  %152 = load i32, ptr %151, align 4
  %153 = load i32, ptr %144, align 4
  %154 = udiv i32 %152, %153
  br label %155

155:                                              ; preds = %150, %145
  %156 = phi i32 [ %154, %150 ], [ 0, %145 ]
  %157 = getelementptr [48 x i32], ptr %137, i32 0, i32 %146
  store i32 %156, ptr %157, align 4
  %158 = add nuw nsw i32 %146, 1
  %159 = load i32, ptr %90, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %145, label %161

161:                                              ; preds = %155, %131
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %110, i32 noundef %111) #12
  tail call void @snd_usb_queue_pending_output_urbs(ptr noundef nonnull %72, i1 noundef zeroext false) #12
  br label %250

162:                                              ; preds = %83, %78, %74
  %163 = getelementptr inbounds %struct.urb, ptr %22, i32 1, i32 3
  %164 = load i32, ptr %163, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %250

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.urb, ptr %22, i32 1, i32 2
  %168 = load i32, ptr %167, align 4
  %169 = icmp ult i32 %168, 3
  br i1 %169, label %250, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 14
  %172 = load ptr, ptr %171, align 4
  %173 = load i32, ptr %172, align 4
  %174 = icmp eq i32 %168, 3
  %175 = select i1 %174, i32 16777215, i32 268435455
  %176 = and i32 %173, %175
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %250, label %178

178:                                              ; preds = %170
  %179 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 42
  %180 = load i8, ptr %179, align 4
  %181 = and i8 %180, 2
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %195, label %183, !prof !9

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %72, i32 0, i32 31
  %185 = load i32, ptr %184, align 4
  %186 = add i32 %185, -32768
  %187 = icmp ult i32 %176, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = add nuw nsw i32 %176, 61440
  br label %233

190:                                              ; preds = %183
  %191 = add i32 %185, 32768
  %192 = icmp ugt i32 %176, %191
  %193 = add nsw i32 %176, -61440
  %194 = select i1 %192, i32 %193, i32 %176
  br label %233

195:                                              ; preds = %178
  %196 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %72, i32 0, i32 33
  %197 = load i32, ptr %196, align 4
  %198 = icmp eq i32 %197, -2147483648
  br i1 %198, label %199, label %226, !prof !13

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %72, i32 0, i32 31
  %201 = load i32, ptr %200, align 4
  %202 = lshr i32 %201, 2
  %203 = sub i32 %201, %202
  %204 = icmp ult i32 %176, %203
  br i1 %204, label %211, label %205

205:                                              ; preds = %211, %199
  %206 = phi i32 [ %176, %199 ], [ %214, %211 ]
  %207 = phi i32 [ 0, %199 ], [ %215, %211 ]
  %208 = lshr i32 %201, 1
  %209 = add i32 %208, %201
  %210 = icmp ugt i32 %206, %209
  br i1 %210, label %217, label %223

211:                                              ; preds = %211, %199
  %212 = phi i32 [ %215, %211 ], [ 0, %199 ]
  %213 = phi i32 [ %214, %211 ], [ %176, %199 ]
  %214 = shl i32 %213, 1
  %215 = add i32 %212, 1
  %216 = icmp ult i32 %214, %203
  br i1 %216, label %211, label %205

217:                                              ; preds = %217, %205
  %218 = phi i32 [ %221, %217 ], [ %207, %205 ]
  %219 = phi i32 [ %220, %217 ], [ %206, %205 ]
  %220 = lshr i32 %219, 1
  %221 = add i32 %218, -1
  %222 = icmp ugt i32 %220, %209
  br i1 %222, label %217, label %223

223:                                              ; preds = %217, %205
  %224 = phi i32 [ %206, %205 ], [ %220, %217 ]
  %225 = phi i32 [ %207, %205 ], [ %221, %217 ]
  store i32 %225, ptr %196, align 4
  br label %233

226:                                              ; preds = %195
  %227 = icmp sgt i32 %197, -1
  br i1 %227, label %228, label %230

228:                                              ; preds = %226
  %229 = shl i32 %176, %197
  br label %233

230:                                              ; preds = %226
  %231 = sub nsw i32 0, %197
  %232 = lshr i32 %176, %231
  br label %233

233:                                              ; preds = %230, %228, %223, %190, %188
  %234 = phi i32 [ %189, %188 ], [ %224, %223 ], [ %229, %228 ], [ %232, %230 ], [ %194, %190 ]
  %235 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %72, i32 0, i32 31
  %236 = load i32, ptr %235, align 4
  %237 = lshr i32 %236, 3
  %238 = sub i32 %236, %237
  %239 = icmp ult i32 %234, %238
  br i1 %239, label %248, label %240, !prof !13

240:                                              ; preds = %233
  %241 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %72, i32 0, i32 34
  %242 = load i32, ptr %241, align 4
  %243 = icmp ugt i32 %234, %242
  br i1 %243, label %248, label %244, !prof !13

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %72, i32 0, i32 60
  %246 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %245) #12
  %247 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %72, i32 0, i32 32
  store i32 %234, ptr %247, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %245, i32 noundef %246) #12
  br label %250

248:                                              ; preds = %240, %233
  %249 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %72, i32 0, i32 33
  store i32 -2147483648, ptr %249, align 4
  br label %250

250:                                              ; preds = %248, %244, %170, %166, %162, %161, %129, %125, %115, %107, %87, %70
  %251 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 12
  %252 = load volatile ptr, ptr %251, align 4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %259, label %254

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 11
  %256 = load ptr, ptr %255, align 4
  %257 = icmp eq ptr %256, null
  br i1 %257, label %259, label %258

258:                                              ; preds = %254
  tail call void %256(ptr noundef nonnull %252, ptr noundef %22) #12
  br label %259

259:                                              ; preds = %258, %254, %250, %68
  %260 = load volatile i32, ptr %14, align 4
  %261 = icmp eq i32 %260, 1
  br i1 %261, label %262, label %315, !prof !9

262:                                              ; preds = %259
  %263 = load ptr, ptr %3, align 4
  %264 = load ptr, ptr %5, align 4
  %265 = getelementptr inbounds %struct.snd_usb_audio, ptr %264, i32 0, i32 1
  %266 = load ptr, ptr %265, align 4
  %267 = getelementptr inbounds %struct.urb, ptr %263, i32 0, i32 8
  store ptr %266, ptr %267, align 4
  %268 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 5
  %269 = load i32, ptr %268, align 4
  switch i32 %269, label %298 [
    i32 0, label %270
    i32 1, label %292
  ]

270:                                              ; preds = %262
  %271 = getelementptr inbounds %struct.snd_urb_ctx, ptr %3, i32 0, i32 5
  %272 = load i32, ptr %271, align 4
  %273 = icmp sgt i32 %272, 0
  br i1 %273, label %274, label %287

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 39
  br label %276

276:                                              ; preds = %276, %274
  %277 = phi i32 [ 0, %274 ], [ %284, %276 ]
  %278 = phi i32 [ 0, %274 ], [ %283, %276 ]
  %279 = getelementptr %struct.urb, ptr %263, i32 0, i32 29, i32 %277
  store i32 %278, ptr %279, align 4
  %280 = load i32, ptr %275, align 4
  %281 = getelementptr %struct.urb, ptr %263, i32 0, i32 29, i32 %277, i32 1
  store i32 %280, ptr %281, align 4
  %282 = load i32, ptr %275, align 4
  %283 = add i32 %282, %278
  %284 = add nuw nsw i32 %277, 1
  %285 = load i32, ptr %271, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %276, label %287

287:                                              ; preds = %276, %270
  %288 = phi i32 [ 0, %270 ], [ %283, %276 ]
  %289 = getelementptr inbounds %struct.urb, ptr %263, i32 0, i32 19
  store i32 %288, ptr %289, align 4
  %290 = load i32, ptr %271, align 4
  %291 = getelementptr inbounds %struct.urb, ptr %263, i32 0, i32 24
  store i32 %290, ptr %291, align 4
  br label %298

292:                                              ; preds = %262
  %293 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 41
  %294 = load i32, ptr %293, align 4
  %295 = tail call i32 @llvm.umin.i32(i32 %294, i32 4) #12
  %296 = getelementptr inbounds %struct.urb, ptr %263, i32 0, i32 29
  %297 = getelementptr inbounds %struct.urb, ptr %263, i32 1, i32 1
  store i32 %295, ptr %297, align 4
  store i32 0, ptr %296, align 4
  br label %298

298:                                              ; preds = %292, %287, %262, %60
  %299 = tail call i32 @usb_submit_urb(ptr noundef %0, i32 noundef 2592) #12
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %321, label %301

301:                                              ; preds = %298
  %302 = load ptr, ptr %5, align 4
  %303 = getelementptr inbounds %struct.snd_usb_audio, ptr %302, i32 0, i32 1
  %304 = load ptr, ptr %303, align 4
  %305 = getelementptr inbounds %struct.usb_device, ptr %304, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %305, ptr noundef nonnull @.str.7, i32 noundef %299) #13
  %306 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 12
  %307 = load volatile ptr, ptr %306, align 4
  %308 = icmp eq ptr %307, null
  br i1 %308, label %315, label %309

309:                                              ; preds = %301
  %310 = getelementptr inbounds %struct.snd_usb_substream, ptr %307, i32 0, i32 2
  %311 = load ptr, ptr %310, align 8
  %312 = icmp eq ptr %311, null
  br i1 %312, label %315, label %313

313:                                              ; preds = %309
  %314 = tail call i32 @snd_pcm_stop_xrun(ptr noundef nonnull %311) #12
  br label %315

315:                                              ; preds = %313, %309, %301, %259, %60, %32, %13, %8, %1, %1, %1, %1
  %316 = getelementptr inbounds %struct.snd_urb_ctx, ptr %3, i32 0, i32 4
  %317 = load i32, ptr %316, align 4
  %318 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef %317, ptr noundef %318) #12
  %319 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %319) #12, !srcloc !10
  %320 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %319, ptr %319, i32 1, ptr elementtype(i32) %319) #12, !srcloc !24
  br label %321

321:                                              ; preds = %315, %298, %47
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 776167, i64 2148266138, i64 2148266164, i64 2148266211, i64 2148266233, i64 2148266261, i64 2148266281}
!11 = !{i64 2148277553, i64 2148277579, i64 2148277608, i64 2148277642, i64 2148277673, i64 2148277696}
!12 = !{i32 0, i32 33}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2148390979}
!15 = !{i64 762230, i64 762254, i64 762275, i64 762292, i64 762309}
!16 = !{i64 2148391179}
!17 = !{i64 2148375399}
!18 = !{i64 2148278237, i64 2148278269, i64 2148278298, i64 2148278332, i64 2148278363, i64 2148278386}
!19 = !{i64 2148375602}
!20 = !{i64 2148378232}
!21 = !{i64 2148280594, i64 2148280626, i64 2148280655, i64 2148280689, i64 2148280720, i64 2148280743}
!22 = !{i64 2148378435}
!23 = !{!"branch_weights", i32 2000000000, i32 2002000, i32 2001000, i32 2000000, i32 2000000000}
!24 = !{i64 2148279910, i64 2148279936, i64 2148279965, i64 2148279999, i64 2148280030, i64 2148280053}
