; ModuleID = '/llk/IR/sound/usb/format.c_pt.bc'
source_filename = "../sound/usb/format.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.uac_format_type_i_continuous_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], [3 x i8] }
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
%struct.audioformat = type { %struct.list_head, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, i8, ptr, i8, i8, i8 }
%struct.uac_format_type_ii_discrete_descriptor = type <{ i8, i8, i8, i8, i16, i16, i8, [0 x [3 x i8]] }>
%struct.uac_format_type_ii_ext_descriptor = type { i8, i8, i8, i8, i16, i16, i8, i8 }
%struct.uac_format_type_i_discrete_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, [0 x [3 x i8]] }
%struct.uac_format_type_i_ext_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.uac3_as_header_descriptor = type <{ i8, i8, i8, i8, i32, i16, i64, i8, i8, i16, i8 }>
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [45 x i8] c"%u:%d : format type %d is not supported yet\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%u:%d : invalid channels %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"%u:%d : format type 0 is detected, processed as PCM\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"%u:%d : sample bitwidth %d in over sample bytes %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"%u:%d : unsupported sample bitwidth %d in %d bytes\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"%u:%d : unsupported format bits %#llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"%u:%d : invalid UAC_FORMAT_TYPE desc\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"%u:%d: All rates were zero\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"%s(): unable to find clock source (clock %d)\0A\00", align 1
@__func__.parse_audio_format_rates_v2v3 = private unnamed_addr constant [30 x i8] c"parse_audio_format_rates_v2v3\00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c"%s(): unable to retrieve number of sample rates (clock %d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [91 x i8] c"%s(): unable to retrieve number of sample rates: set it to a predefined value (clock %d).\0A\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"%s(): unable to retrieve sample rate range (clock %d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"invalid uac2 rates\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"%u:%d : unexpected max rate: %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [67 x i8] c"%u:%d : unknown format tag %#llx is detected.  processed as MPEG.\0A\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"found format II with max.bitrate = %d, frame size=%d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_parse_audio_format(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.uac_format_type_i_continuous_descriptor, ptr %3, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  switch i8 %7, label %53 [
    i8 1, label %8
    i8 3, label %8
    i8 2, label %10
  ]

8:                                                ; preds = %5, %5
  %9 = tail call fastcc i32 @parse_audio_format_i(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3)
  br label %64

10:                                               ; preds = %5
  switch i64 %2, label %12 [
    i64 4098, label %22
    i64 4097, label %11
  ]

11:                                               ; preds = %10
  br label %22

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  %16 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 6
  %17 = load i8, ptr %16, align 8
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.14, i32 noundef %18, i32 noundef %21, i64 noundef %2) #7
  br label %22

22:                                               ; preds = %12, %11, %10
  %23 = phi i64 [ 8388608, %12 ], [ 8388608, %11 ], [ 2, %10 ]
  %24 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 1
  store i64 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 2
  store i32 1, ptr %25, align 8
  %26 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 19
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 32
  br i1 %28, label %41, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.uac_format_type_ii_discrete_descriptor, ptr %3, i32 0, i32 4
  %31 = load i16, ptr %30, align 1
  %32 = zext i16 %31 to i32
  %33 = getelementptr inbounds %struct.uac_format_type_ii_discrete_descriptor, ptr %3, i32 0, i32 5
  %34 = load i16, ptr %33, align 1
  %35 = zext i16 %34 to i32
  %36 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.15, i32 noundef %32, i32 noundef %35) #7
  %39 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 5
  store i32 %35, ptr %39, align 4
  %40 = tail call fastcc i32 @parse_audio_format_rates_v1(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef 8) #8
  br label %64

41:                                               ; preds = %22
  %42 = getelementptr inbounds %struct.uac_format_type_ii_ext_descriptor, ptr %3, i32 0, i32 4
  %43 = load i16, ptr %42, align 1
  %44 = zext i16 %43 to i32
  %45 = getelementptr inbounds %struct.uac_format_type_ii_ext_descriptor, ptr %3, i32 0, i32 5
  %46 = load i16, ptr %45, align 1
  %47 = zext i16 %46 to i32
  %48 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.15, i32 noundef %44, i32 noundef %47) #7
  %51 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 5
  store i32 %47, ptr %51, align 4
  %52 = tail call fastcc i32 @parse_audio_format_rates_v2v3(ptr noundef %0, ptr noundef %1) #8
  br label %64

53:                                               ; preds = %5
  %54 = zext i8 %7 to i32
  %55 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.usb_device, ptr %56, i32 0, i32 15
  %58 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 6
  %59 = load i8, ptr %58, align 8
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str, i32 noundef %60, i32 noundef %63, i32 noundef %54) #7
  br label %83

64:                                               ; preds = %41, %29, %8
  %65 = phi i32 [ %9, %8 ], [ %52, %41 ], [ %40, %29 ]
  %66 = load i8, ptr %6, align 1
  %67 = zext i8 %66 to i32
  %68 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 3
  store i32 %67, ptr %68, align 4
  %69 = icmp slt i32 %65, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 4
  %72 = load i32, ptr %71, align 4
  switch i32 %72, label %83 [
    i32 69087232, label %73
    i32 69087264, label %73
    i32 69087329, label %73
  ]

73:                                               ; preds = %70, %70, %70
  %74 = load i8, ptr %6, align 1
  %75 = icmp eq i8 %74, 1
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 21
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 128
  %80 = icmp eq i32 %78, 1024
  %81 = or i1 %79, %80
  %82 = select i1 %81, i32 0, i32 -524
  br label %83

83:                                               ; preds = %76, %73, %70, %64, %53
  %84 = phi i32 [ -524, %53 ], [ %65, %64 ], [ %82, %76 ], [ 0, %70 ], [ 0, %73 ]
  ret i32 %84
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @parse_audio_format_i(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 19
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 48
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.uac_format_type_i_continuous_descriptor, ptr %3, i32 0, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  br label %15

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i32 [ %14, %12 ], [ %11, %8 ]
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 123936771
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 24
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 6
  br i1 %29, label %31, label %30

30:                                               ; preds = %26, %22
  br label %31

31:                                               ; preds = %30, %26, %18
  %32 = phi i32 [ 2, %30 ], [ 3, %26 ], [ 2, %18 ]
  %33 = zext i32 %32 to i64
  %34 = shl nuw nsw i64 1, %33
  %35 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 1
  store i64 %34, ptr %35, align 8
  br label %190

36:                                               ; preds = %15
  switch i8 %6, label %37 [
    i8 48, label %58
    i8 32, label %47
  ]

37:                                               ; preds = %36
  %38 = icmp ugt i64 %2, 63
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 1
  store i64 0, ptr %40, align 8
  br label %215

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, ptr %3, i32 0, i32 6
  %43 = load i8, ptr %42, align 1
  %44 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, ptr %3, i32 0, i32 5
  %45 = load i8, ptr %44, align 1
  %46 = shl nuw i64 1, %2
  br label %66

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.uac_format_type_i_ext_descriptor, ptr %3, i32 0, i32 5
  %49 = load i8, ptr %48, align 1
  %50 = getelementptr inbounds %struct.uac_format_type_i_ext_descriptor, ptr %3, i32 0, i32 4
  %51 = load i8, ptr %50, align 1
  %52 = icmp ult i64 %2, 2147483648
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 30
  store i8 1, ptr %54, align 2
  br label %55

55:                                               ; preds = %53, %47
  %56 = phi i64 [ 2147483648, %53 ], [ 0, %47 ]
  %57 = shl i64 %2, 1
  br label %66

58:                                               ; preds = %36
  %59 = getelementptr inbounds %struct.uac3_as_header_descriptor, ptr %3, i32 0, i32 8
  %60 = load i8, ptr %59, align 1
  %61 = getelementptr inbounds %struct.uac3_as_header_descriptor, ptr %3, i32 0, i32 7
  %62 = load i8, ptr %61, align 1
  %63 = shl i64 %2, 25
  %64 = and i64 %63, 2147483648
  %65 = shl i64 %2, 1
  br label %66

66:                                               ; preds = %58, %55, %41
  %67 = phi i8 [ %43, %41 ], [ %49, %55 ], [ %60, %58 ]
  %68 = phi i8 [ %45, %41 ], [ %51, %55 ], [ %62, %58 ]
  %69 = phi i64 [ 0, %41 ], [ %56, %55 ], [ %64, %58 ]
  %70 = phi i64 [ %46, %41 ], [ %57, %55 ], [ %65, %58 ]
  %71 = zext i8 %68 to i32
  %72 = zext i8 %67 to i32
  %73 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 4
  store i32 %72, ptr %73, align 8
  %74 = icmp eq i64 %69, 0
  %75 = icmp ult i64 %70, 2
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %77, label %87

77:                                               ; preds = %66
  %78 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.usb_device, ptr %79, i32 0, i32 15
  %81 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 6
  %82 = load i8, ptr %81, align 8
  %83 = zext i8 %82 to i32
  %84 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.2, i32 noundef %83, i32 noundef %86) #7
  br label %90

87:                                               ; preds = %66
  %88 = and i64 %70, 2
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %147, label %90

90:                                               ; preds = %87, %77
  %91 = phi i64 [ 2, %77 ], [ %70, %87 ]
  %92 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 4
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 92405782
  br i1 %94, label %101, label %95

95:                                               ; preds = %90
  %96 = icmp eq i32 %93, 92405772
  %97 = icmp eq i8 %67, 24
  %98 = select i1 %96, i1 %97, i1 false
  %99 = icmp eq i8 %68, 2
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %128, label %105

101:                                              ; preds = %90
  %102 = icmp eq i8 %67, 24
  %103 = icmp eq i8 %68, 2
  %104 = select i1 %102, i1 %103, i1 false
  br i1 %104, label %128, label %105

105:                                              ; preds = %101, %95
  %106 = shl nuw nsw i32 %71, 3
  %107 = icmp ult i32 %106, %72
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.usb_device, ptr %110, i32 0, i32 15
  %112 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 6
  %113 = load i8, ptr %112, align 8
  %114 = zext i8 %113 to i32
  %115 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %111, ptr noundef nonnull @.str.3, i32 noundef %114, i32 noundef %117, i32 noundef %72, i32 noundef %71) #7
  br label %118

118:                                              ; preds = %108, %105
  switch i8 %68, label %137 [
    i8 1, label %119
    i8 2, label %121
    i8 3, label %128
    i8 4, label %135
  ]

119:                                              ; preds = %118
  %120 = or i64 %69, 1
  br label %147

121:                                              ; preds = %118
  %122 = tail call i32 @snd_usb_is_big_endian_format(ptr noundef %0, ptr noundef %1) #8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = or i64 %69, 8
  br label %147

126:                                              ; preds = %121
  %127 = or i64 %69, 4
  br label %147

128:                                              ; preds = %118, %101, %95
  %129 = tail call i32 @snd_usb_is_big_endian_format(ptr noundef %0, ptr noundef %1) #8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %128
  %132 = or i64 %69, 8589934592
  br label %147

133:                                              ; preds = %128
  %134 = or i64 %69, 4294967296
  br label %147

135:                                              ; preds = %118
  %136 = or i64 %69, 1024
  br label %147

137:                                              ; preds = %118
  %138 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.usb_device, ptr %139, i32 0, i32 15
  %141 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 6
  %142 = load i8, ptr %141, align 8
  %143 = zext i8 %142 to i32
  %144 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %145 = load i8, ptr %144, align 1
  %146 = zext i8 %145 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %140, ptr noundef nonnull @.str.4, i32 noundef %143, i32 noundef %146, i32 noundef %72, i32 noundef %71) #7
  br label %147

147:                                              ; preds = %137, %135, %133, %131, %126, %124, %119, %87
  %148 = phi i64 [ %91, %137 ], [ %91, %135 ], [ %91, %131 ], [ %91, %133 ], [ %91, %124 ], [ %91, %126 ], [ %91, %119 ], [ %70, %87 ]
  %149 = phi i32 [ %71, %137 ], [ 4, %135 ], [ 3, %131 ], [ 3, %133 ], [ 2, %124 ], [ 2, %126 ], [ 1, %119 ], [ %71, %87 ]
  %150 = phi i64 [ %69, %137 ], [ %136, %135 ], [ %132, %131 ], [ %134, %133 ], [ %125, %124 ], [ %127, %126 ], [ %120, %119 ], [ %69, %87 ]
  %151 = and i64 %148, 4
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 4
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, 83509761
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = or i64 %150, 1
  br label %161

159:                                              ; preds = %153
  %160 = or i64 %150, 2
  br label %161

161:                                              ; preds = %159, %157, %147
  %162 = phi i64 [ %158, %157 ], [ %160, %159 ], [ %150, %147 ]
  %163 = shl i64 %148, 11
  %164 = and i64 %163, 16384
  %165 = shl i64 %148, 17
  %166 = and i64 %165, 2097152
  %167 = shl i64 %148, 15
  %168 = and i64 %167, 1048576
  %169 = icmp ult i64 %148, 64
  br i1 %169, label %180, label %170

170:                                              ; preds = %161
  %171 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.usb_device, ptr %172, i32 0, i32 15
  %174 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 6
  %175 = load i8, ptr %174, align 8
  %176 = zext i8 %175 to i32
  %177 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %173, ptr noundef nonnull @.str.5, i32 noundef %176, i32 noundef %179, i64 noundef %148) #7
  br label %180

180:                                              ; preds = %170, %161
  %181 = tail call i64 @snd_usb_interface_dsd_format_quirks(ptr noundef %0, ptr noundef %1, i32 noundef %149) #8
  %182 = or i64 %166, %164
  %183 = or i64 %182, %168
  %184 = or i64 %183, %162
  %185 = or i64 %184, %181
  %186 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 1
  store i64 %185, ptr %186, align 8
  %187 = icmp eq i64 %185, 0
  br i1 %187, label %215, label %188

188:                                              ; preds = %180
  %189 = load i8, ptr %5, align 1
  br label %190

190:                                              ; preds = %188, %31
  %191 = phi i8 [ %189, %188 ], [ %6, %31 ]
  switch i8 %191, label %192 [
    i8 48, label %198
    i8 32, label %198
  ]

192:                                              ; preds = %190
  %193 = getelementptr inbounds %struct.uac_format_type_i_continuous_descriptor, ptr %3, i32 0, i32 4
  %194 = load i8, ptr %193, align 1
  %195 = zext i8 %194 to i32
  %196 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 2
  store i32 %195, ptr %196, align 8
  %197 = tail call fastcc i32 @parse_audio_format_rates_v1(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef 7)
  br label %200

198:                                              ; preds = %190, %190
  %199 = tail call fastcc i32 @parse_audio_format_rates_v2v3(ptr noundef %0, ptr noundef %1)
  br label %200

200:                                              ; preds = %198, %192
  %201 = phi i32 [ %197, %192 ], [ %199, %198 ]
  %202 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 2
  %203 = load i32, ptr %202, align 8
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.usb_device, ptr %207, i32 0, i32 15
  %209 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 6
  %210 = load i8, ptr %209, align 8
  %211 = zext i8 %210 to i32
  %212 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %213 = load i8, ptr %212, align 1
  %214 = zext i8 %213 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %208, ptr noundef nonnull @.str.1, i32 noundef %211, i32 noundef %214, i32 noundef 0) #7
  br label %215

215:                                              ; preds = %205, %200, %180, %39
  %216 = phi i32 [ -22, %205 ], [ -22, %180 ], [ %201, %200 ], [ -22, %39 ]
  ret i32 %216
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_parse_audio_format_v3(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.uac3_as_header_descriptor, ptr %2, i32 0, i32 6
  %6 = load i64, ptr %5, align 1
  %7 = and i64 %6, 127
  %8 = icmp eq i64 %7, 0
  %9 = select i1 %8, i32 3, i32 1
  %10 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 3
  store i32 %9, ptr %10, align 4
  %11 = tail call fastcc i32 @parse_audio_format_i(ptr noundef %0, ptr noundef %1, i64 noundef %6, ptr noundef %2)
  %12 = tail call i32 @llvm.smin.i32(i32 %11, i32 0)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @parse_audio_format_rates_v1(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr i8, ptr %2, i32 %3
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, ptr %2, align 1
  %9 = zext i8 %8 to i32
  %10 = add i32 %3, 1
  %11 = icmp eq i8 %6, 0
  %12 = mul nuw nsw i32 %7, 3
  %13 = select i1 %11, i32 6, i32 %12
  %14 = add i32 %13, %10
  %15 = icmp sgt i32 %14, %9
  br i1 %15, label %16, label %26

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  %20 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 6
  %21 = load i8, ptr %20, align 8
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.6, i32 noundef %22, i32 noundef %25) #7
  br label %170

26:                                               ; preds = %4
  br i1 %11, label %121, label %27

27:                                               ; preds = %26
  %28 = shl nuw nsw i32 %7, 2
  %29 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %28, i32 noundef 3264) #9
  %30 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 25
  store ptr %29, ptr %30, align 4
  %31 = icmp eq ptr %29, null
  br i1 %31, label %170, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 24
  store i32 0, ptr %33, align 8
  %34 = icmp eq i8 %6, 1
  %35 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 4
  %36 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %37 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 20
  %38 = call i32 @llvm.umax.i32(i32 %7, i32 1)
  br label %39

39:                                               ; preds = %82, %32
  %40 = phi i32 [ %10, %32 ], [ %84, %82 ]
  %41 = phi i32 [ 0, %32 ], [ %83, %82 ]
  %42 = getelementptr i8, ptr %2, i32 %40
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = getelementptr i8, ptr %42, i32 1
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 8
  %49 = or i32 %48, %44
  %50 = getelementptr i8, ptr %42, i32 2
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 16
  %54 = or i32 %49, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %82, label %56

56:                                               ; preds = %39
  %57 = icmp eq i32 %54, 48000
  %58 = select i1 %57, i1 %34, i1 false
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i32, ptr %35, align 4
  switch i32 %60, label %76 [
    i32 227279361, label %61
    i32 227279106, label %61
    i32 227278968, label %61
    i32 214761649, label %61
  ]

61:                                               ; preds = %59, %59, %59, %59
  %62 = load i8, ptr %36, align 1
  %63 = icmp eq i8 %62, 5
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load i32, ptr %37, align 8
  %66 = icmp eq i32 %65, 392
  %67 = select i1 %66, i32 96000, i32 48000
  br label %76

68:                                               ; preds = %56
  %69 = icmp eq i32 %54, 16000
  br i1 %69, label %70, label %76

70:                                               ; preds = %68
  %71 = load i32, ptr %35, align 4
  %72 = add i32 %71, -69091428
  %73 = and i32 %72, -5
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, i32 8000, i32 16000
  br label %76

76:                                               ; preds = %70, %68, %64, %61, %59
  %77 = phi i32 [ %54, %68 ], [ %75, %70 ], [ %67, %64 ], [ 48000, %59 ], [ 48000, %61 ]
  %78 = load ptr, ptr %30, align 4
  %79 = load i32, ptr %33, align 8
  %80 = add i32 %79, 1
  store i32 %80, ptr %33, align 8
  %81 = getelementptr i32, ptr %78, i32 %79
  store i32 %77, ptr %81, align 4
  br label %82

82:                                               ; preds = %76, %39
  %83 = add nuw nsw i32 %41, 1
  %84 = add i32 %40, 3
  %85 = icmp eq i32 %83, %38
  br i1 %85, label %86, label %39

86:                                               ; preds = %82
  %87 = load i32, ptr %33, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.usb_device, ptr %91, i32 0, i32 15
  %93 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 6
  %94 = load i8, ptr %93, align 8
  %95 = zext i8 %94 to i32
  %96 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %92, ptr noundef nonnull @.str.7, i32 noundef %95, i32 noundef %98) #7
  br label %170

99:                                               ; preds = %86
  %100 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 22
  store i32 2147483647, ptr %100, align 8
  %101 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 23
  store i32 0, ptr %101, align 4
  %102 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 21
  store i32 0, ptr %102, align 4
  br label %103

103:                                              ; preds = %118, %99
  %104 = phi i32 [ 0, %99 ], [ %120, %118 ]
  %105 = phi i32 [ 2147483647, %99 ], [ %119, %118 ]
  %106 = phi i32 [ 0, %99 ], [ %115, %118 ]
  %107 = load ptr, ptr %30, align 4
  %108 = getelementptr i32, ptr %107, i32 %106
  %109 = load i32, ptr %108, align 4
  %110 = tail call i32 @llvm.umin.i32(i32 %105, i32 %109) #8
  store i32 %110, ptr %100, align 8
  %111 = tail call i32 @llvm.umax.i32(i32 %104, i32 %109) #8
  store i32 %111, ptr %101, align 4
  %112 = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %109) #8
  %113 = load i32, ptr %102, align 4
  %114 = or i32 %113, %112
  store i32 %114, ptr %102, align 4
  %115 = add nuw i32 %106, 1
  %116 = load i32, ptr %33, align 8
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %118, label %152

118:                                              ; preds = %103
  %119 = load i32, ptr %100, align 8
  %120 = load i32, ptr %101, align 4
  br label %103

121:                                              ; preds = %26
  %122 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 21
  store i32 1073741824, ptr %122, align 4
  %123 = getelementptr i8, ptr %2, i32 %10
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i32
  %126 = getelementptr i8, ptr %123, i32 1
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i32
  %129 = shl nuw nsw i32 %128, 8
  %130 = or i32 %129, %125
  %131 = getelementptr i8, ptr %123, i32 2
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = shl nuw nsw i32 %133, 16
  %135 = or i32 %130, %134
  %136 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 22
  store i32 %135, ptr %136, align 8
  %137 = add i32 %3, 4
  %138 = getelementptr i8, ptr %2, i32 %137
  %139 = load i8, ptr %138, align 1
  %140 = zext i8 %139 to i32
  %141 = getelementptr i8, ptr %138, i32 1
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i32
  %144 = shl nuw nsw i32 %143, 8
  %145 = or i32 %144, %140
  %146 = getelementptr i8, ptr %138, i32 2
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  %149 = shl nuw nsw i32 %148, 16
  %150 = or i32 %145, %149
  %151 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 23
  store i32 %150, ptr %151, align 4
  br label %152

152:                                              ; preds = %121, %103
  %153 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 4
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, 185467659
  br i1 %155, label %156, label %170

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 24
  %158 = load i32, ptr %157, align 8
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %170, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 25
  %162 = load ptr, ptr %161, align 4
  tail call void @kfree(ptr noundef %162) #8
  %163 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %164 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %163, i32 noundef 3264, i32 noundef 4) #10
  store ptr %164, ptr %161, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %170, label %166

166:                                              ; preds = %160
  store i32 1, ptr %157, align 8
  %167 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 22
  store i32 48000, ptr %167, align 8
  %168 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 23
  store i32 48000, ptr %168, align 4
  %169 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 21
  store i32 128, ptr %169, align 4
  store i32 48000, ptr %164, align 8
  br label %170

170:                                              ; preds = %166, %160, %156, %152, %89, %27, %16
  %171 = phi i32 [ -22, %16 ], [ 0, %156 ], [ 0, %152 ], [ 0, %166 ], [ -12, %160 ], [ -12, %27 ], [ -22, %89 ]
  ret i32 %171
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @parse_audio_format_rates_v2v3(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca [2 x i8], align 2
  %5 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i16 0, ptr %4, align 2, !annotation !8
  %7 = tail call i32 @snd_usb_clock_find_source(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false) #8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.parse_audio_format_rates_v2v3, i32 noundef %7) #7
  br label %192

11:                                               ; preds = %2
  %12 = load i32, ptr %6, align 8
  %13 = shl i32 %12, 8
  %14 = or i32 %13, -2147483520
  %15 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 28
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %16, i32 0, i32 2
  %18 = load i8, ptr %17, align 2
  %19 = zext i8 %18 to i32
  %20 = shl i32 %7, 8
  %21 = or i32 %20, %19
  %22 = trunc i32 %21 to i16
  %23 = call i32 @snd_usb_ctl_msg(ptr noundef %6, i32 noundef %14, i8 noundef zeroext 2, i8 noundef zeroext -95, i16 noundef zeroext 256, i16 noundef zeroext %22, ptr noundef nonnull %4, i16 noundef zeroext 2) #8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %34 [
    i32 239157825, label %28
    i32 239157826, label %28
    i32 239157828, label %28
    i32 239157830, label %28
    i32 239157843, label %28
    i32 239157831, label %28
    i32 239157832, label %28
    i32 239157833, label %28
    i32 239157834, label %28
    i32 435617809, label %28
  ]

28:                                               ; preds = %25, %25, %25, %25, %25, %25, %25, %25, %25, %25
  %29 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 25
  %30 = load ptr, ptr %29, align 4
  call void @kfree(ptr noundef %30) #8
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %32 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3264, i32 noundef 4) #10
  store ptr %32, ptr %29, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %192, label %36

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.parse_audio_format_rates_v2v3, i32 noundef %7) #7
  br label %192

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 24
  store i32 1, ptr %37, align 8
  %38 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 22
  store i32 48000, ptr %38, align 8
  %39 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 23
  store i32 48000, ptr %39, align 4
  %40 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 21
  store i32 128, ptr %40, align 4
  store i32 48000, ptr %32, align 8
  %41 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.parse_audio_format_rates_v2v3, i32 noundef %7) #7
  br label %192

42:                                               ; preds = %11
  %43 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 8
  %47 = load i8, ptr %4, align 2
  %48 = zext i8 %47 to i32
  %49 = or i32 %46, %48
  %50 = mul nuw nsw i32 %49, 12
  %51 = or i32 %50, 2
  %52 = call noalias align 64 ptr @__kmalloc(i32 noundef %51, i32 noundef 3520) #9
  %53 = icmp eq ptr %52, null
  br i1 %53, label %192, label %54

54:                                               ; preds = %42
  %55 = load i32, ptr %6, align 8
  %56 = shl i32 %55, 8
  %57 = or i32 %56, -2147483520
  %58 = load ptr, ptr %15, align 4
  %59 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %58, i32 0, i32 2
  %60 = load i8, ptr %59, align 2
  %61 = zext i8 %60 to i32
  %62 = or i32 %20, %61
  %63 = trunc i32 %62 to i16
  %64 = trunc i32 %51 to i16
  %65 = call i32 @snd_usb_ctl_msg(ptr noundef %6, i32 noundef %57, i8 noundef zeroext 2, i8 noundef zeroext -95, i16 noundef zeroext 256, i16 noundef zeroext %63, ptr noundef nonnull %52, i16 noundef zeroext %64) #8
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.parse_audio_format_rates_v2v3, i32 noundef %7) #7
  br label %190

69:                                               ; preds = %54
  %70 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 25
  %71 = load ptr, ptr %70, align 4
  call void @kfree(ptr noundef %71) #8
  store ptr null, ptr %70, align 4
  %72 = call fastcc i32 @parse_uac2_sample_rate_range(ptr noundef %0, ptr noundef %1, i32 noundef %49, ptr noundef nonnull %52)
  %73 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 24
  store i32 %72, ptr %73, align 8
  %74 = icmp eq i32 %72, 0
  br i1 %74, label %190, label %75

75:                                               ; preds = %69
  %76 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %72, i32 4) #8
  %77 = extractvalue { i32, i1 } %76, 1
  br i1 %77, label %78, label %79, !prof !9

78:                                               ; preds = %75
  store ptr null, ptr %70, align 4
  br label %190

79:                                               ; preds = %75
  %80 = extractvalue { i32, i1 } %76, 0
  %81 = call noalias align 64 ptr @__kmalloc(i32 noundef %80, i32 noundef 3264) #9
  store ptr %81, ptr %70, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %190, label %83

83:                                               ; preds = %79
  %84 = call fastcc i32 @parse_uac2_sample_rate_range(ptr noundef %0, ptr noundef %1, i32 noundef %49, ptr noundef nonnull %52)
  %85 = load ptr, ptr %5, align 4
  %86 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 12
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 4096
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %162, label %90

90:                                               ; preds = %83
  %91 = load i32, ptr %73, align 8
  %92 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %91, i32 4) #8
  %93 = extractvalue { i32, i1 } %92, 1
  br i1 %93, label %190, label %94, !prof !9

94:                                               ; preds = %90
  %95 = extractvalue { i32, i1 } %92, 0
  %96 = call noalias align 64 ptr @__kmalloc(i32 noundef %95, i32 noundef 3520) #9
  %97 = icmp eq ptr %96, null
  br i1 %97, label %190, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 6
  %100 = load i8, ptr %99, align 8
  %101 = zext i8 %100 to i32
  %102 = call i32 @usb_set_interface(ptr noundef %85, i32 noundef %101, i32 noundef 0) #8
  %103 = load i32, ptr %73, align 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %156, label %105

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  br label %107

107:                                              ; preds = %147, %105
  %108 = phi i32 [ 0, %105 ], [ %149, %147 ]
  %109 = phi i32 [ 0, %105 ], [ %148, %147 ]
  %110 = load ptr, ptr %70, align 4
  %111 = getelementptr i32, ptr %110, i32 %108
  %112 = load i32, ptr %111, align 4
  %113 = call i32 @snd_usb_set_sample_rate_v2v3(ptr noundef %0, ptr noundef %1, i32 noundef %7, i32 noundef %112) #8
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %147, label %115

115:                                              ; preds = %107
  %116 = load i8, ptr %99, align 8
  %117 = load i8, ptr %106, align 1
  %118 = zext i8 %117 to i32
  %119 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store i64 0, ptr %3, align 8
  %120 = icmp ugt i8 %117, 55
  br i1 %120, label %134, label %121

121:                                              ; preds = %115
  %122 = load i32, ptr %119, align 8
  %123 = shl i32 %122, 8
  %124 = or i32 %123, -2147483520
  %125 = zext i8 %116 to i16
  %126 = call i32 @snd_usb_ctl_msg(ptr noundef %119, i32 noundef %124, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 512, i16 noundef zeroext %125, ptr noundef nonnull %3, i16 noundef zeroext 8) #8
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %121
  %129 = load i64, ptr %3, align 8
  %130 = shl i64 %129, 3
  %131 = and i64 %130, 2040
  %132 = zext i8 %117 to i64
  %133 = icmp ult i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128, %121, %115
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  br label %147

135:                                              ; preds = %128
  %136 = add nuw nsw i32 %118, 8
  %137 = zext i32 %136 to i64
  %138 = shl nuw i64 1, %137
  %139 = and i64 %129, %138
  %140 = icmp eq i64 %139, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = load ptr, ptr %70, align 4
  %143 = getelementptr i32, ptr %142, i32 %108
  %144 = load i32, ptr %143, align 4
  %145 = add i32 %109, 1
  %146 = getelementptr i32, ptr %96, i32 %109
  store i32 %144, ptr %146, align 4
  br label %147

147:                                              ; preds = %141, %135, %134, %107
  %148 = phi i32 [ %109, %107 ], [ %145, %141 ], [ %109, %135 ], [ %109, %134 ]
  %149 = add nuw i32 %108, 1
  %150 = load i32, ptr %73, align 8
  %151 = icmp ult i32 %149, %150
  br i1 %151, label %107, label %152

152:                                              ; preds = %147
  %153 = icmp eq i32 %148, 0
  %154 = icmp eq i32 %150, %148
  %155 = select i1 %153, i1 true, i1 %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %152, %98
  call void @kfree(ptr noundef nonnull %96) #8
  br label %162

157:                                              ; preds = %152
  %158 = load ptr, ptr %70, align 4
  call void @kfree(ptr noundef %158) #8
  store ptr %96, ptr %70, align 4
  store i32 %148, ptr %73, align 8
  %159 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 22
  store i32 2147483647, ptr %159, align 8
  %160 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 23
  store i32 0, ptr %160, align 4
  %161 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 21
  store i32 0, ptr %161, align 4
  br label %168

162:                                              ; preds = %156, %83
  %163 = load i32, ptr %73, align 8
  %164 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 22
  store i32 2147483647, ptr %164, align 8
  %165 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 23
  store i32 0, ptr %165, align 4
  %166 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 21
  store i32 0, ptr %166, align 4
  %167 = icmp eq i32 %163, 0
  br i1 %167, label %190, label %168

168:                                              ; preds = %162, %157
  %169 = phi ptr [ %161, %157 ], [ %166, %162 ]
  %170 = phi ptr [ %160, %157 ], [ %165, %162 ]
  %171 = phi ptr [ %159, %157 ], [ %164, %162 ]
  br label %172

172:                                              ; preds = %187, %168
  %173 = phi i32 [ 0, %168 ], [ %189, %187 ]
  %174 = phi i32 [ 2147483647, %168 ], [ %188, %187 ]
  %175 = phi i32 [ 0, %168 ], [ %184, %187 ]
  %176 = load ptr, ptr %70, align 4
  %177 = getelementptr i32, ptr %176, i32 %175
  %178 = load i32, ptr %177, align 4
  %179 = call i32 @llvm.umin.i32(i32 %174, i32 %178) #8
  store i32 %179, ptr %171, align 8
  %180 = call i32 @llvm.umax.i32(i32 %173, i32 %178) #8
  store i32 %180, ptr %170, align 4
  %181 = call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %178) #8
  %182 = load i32, ptr %169, align 4
  %183 = or i32 %182, %181
  store i32 %183, ptr %169, align 4
  %184 = add nuw i32 %175, 1
  %185 = load i32, ptr %73, align 8
  %186 = icmp ult i32 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %172
  %188 = load i32, ptr %171, align 8
  %189 = load i32, ptr %170, align 4
  br label %172

190:                                              ; preds = %172, %162, %94, %90, %79, %78, %69, %67
  %191 = phi i32 [ -22, %67 ], [ 0, %69 ], [ -12, %79 ], [ -12, %78 ], [ -12, %94 ], [ -12, %90 ], [ 0, %162 ], [ 0, %172 ]
  call void @kfree(ptr noundef nonnull %52) #8
  br label %192

192:                                              ; preds = %190, %42, %36, %34, %28, %9
  %193 = phi i32 [ 0, %36 ], [ 0, %9 ], [ %23, %34 ], [ %191, %190 ], [ -12, %42 ], [ -12, %28 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  ret i32 %193
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_is_big_endian_format(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @snd_usb_interface_dsd_format_quirks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_clock_find_source(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_ctl_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @parse_uac2_sample_rate_range(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %173

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 4
  %8 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 6
  %10 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 9
  %11 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %12 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 25
  br label %13

13:                                               ; preds = %169, %6
  %14 = phi i32 [ 0, %6 ], [ %170, %169 ]
  %15 = phi i32 [ 0, %6 ], [ %171, %169 ]
  %16 = mul i32 %15, 12
  %17 = or i32 %16, 2
  %18 = getelementptr i8, ptr %3, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = getelementptr i8, ptr %18, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 8
  %25 = or i32 %24, %20
  %26 = getelementptr i8, ptr %18, i32 2
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 16
  %30 = or i32 %25, %29
  %31 = getelementptr i8, ptr %18, i32 3
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw i32 %33, 24
  %35 = or i32 %30, %34
  %36 = add i32 %16, 6
  %37 = getelementptr i8, ptr %3, i32 %36
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr i8, ptr %37, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 8
  %44 = or i32 %43, %39
  %45 = getelementptr i8, ptr %37, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 16
  %49 = or i32 %44, %48
  %50 = getelementptr i8, ptr %37, i32 3
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl nuw i32 %52, 24
  %54 = or i32 %49, %53
  %55 = add i32 %16, 10
  %56 = getelementptr i8, ptr %3, i32 %55
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = getelementptr i8, ptr %56, i32 1
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 8
  %63 = or i32 %62, %58
  %64 = getelementptr i8, ptr %56, i32 2
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 16
  %68 = or i32 %63, %67
  %69 = getelementptr i8, ptr %56, i32 3
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = shl nuw i32 %71, 24
  %73 = or i32 %68, %72
  %74 = icmp slt i32 %54, 0
  %75 = icmp slt i32 %35, 0
  %76 = select i1 %74, i1 true, i1 %75
  %77 = icmp slt i32 %73, 0
  %78 = select i1 %76, i1 true, i1 %77
  %79 = icmp slt i32 %54, %35
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %169, label %81

81:                                               ; preds = %13
  %82 = icmp eq i32 %73, 1
  br i1 %82, label %165, label %83

83:                                               ; preds = %81
  %84 = icmp ugt i32 %35, %54
  br i1 %84, label %169, label %85

85:                                               ; preds = %83
  %86 = icmp eq i32 %73, 0
  br label %87

87:                                               ; preds = %160, %85
  %88 = phi i32 [ %35, %85 ], [ %162, %160 ]
  %89 = phi i32 [ %14, %85 ], [ %161, %160 ]
  %90 = load i32, ptr %7, align 4
  %91 = icmp eq i32 %90, 424608012
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i8, ptr %11, align 1
  switch i8 %93, label %160 [
    i8 1, label %97
    i8 2, label %94
    i8 3, label %95
  ]

94:                                               ; preds = %92
  switch i32 %88, label %160 [
    i32 96000, label %149
    i32 88200, label %149
  ]

95:                                               ; preds = %92
  %96 = icmp ugt i32 %88, 176399
  br i1 %96, label %149, label %160

97:                                               ; preds = %92
  %98 = icmp ult i32 %88, 48001
  br i1 %98, label %149, label %160

99:                                               ; preds = %87
  %100 = and i32 %90, -65536
  %101 = icmp eq i32 %100, 305463296
  br i1 %101, label %102, label %149

102:                                              ; preds = %99
  %103 = load ptr, ptr %8, align 4
  %104 = load i8, ptr %9, align 8
  %105 = zext i8 %104 to i32
  %106 = tail call ptr @usb_ifnum_to_if(ptr noundef %103, i32 noundef %105) #8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %149, label %108

108:                                              ; preds = %102
  %109 = load ptr, ptr %106, align 8
  %110 = load i8, ptr %10, align 1
  %111 = zext i8 %110 to i32
  %112 = getelementptr %struct.usb_host_interface, ptr %109, i32 %111, i32 2
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr %struct.usb_host_interface, ptr %109, i32 %111, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = tail call ptr @snd_usb_find_csint_desc(ptr noundef %113, i32 noundef %115, ptr noundef null, i8 noundef zeroext 2) #8
  %117 = icmp eq ptr %116, null
  br i1 %117, label %149, label %118

118:                                              ; preds = %108
  %119 = load i8, ptr %116, align 1
  %120 = icmp eq i8 %119, 10
  br i1 %120, label %121, label %149

121:                                              ; preds = %118
  %122 = getelementptr i8, ptr %116, i32 6
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = getelementptr i8, ptr %116, i32 7
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  %128 = shl nuw nsw i32 %127, 8
  %129 = or i32 %128, %124
  %130 = getelementptr i8, ptr %116, i32 8
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = shl nuw nsw i32 %132, 16
  %134 = or i32 %129, %133
  %135 = getelementptr i8, ptr %116, i32 9
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i32
  %138 = shl nuw i32 %137, 24
  %139 = or i32 %134, %138
  switch i32 %139, label %140 [
    i32 384000, label %147
    i32 192000, label %147
    i32 96000, label %147
    i32 48000, label %147
  ]

140:                                              ; preds = %121
  %141 = load ptr, ptr %8, align 4
  %142 = getelementptr inbounds %struct.usb_device, ptr %141, i32 0, i32 15
  %143 = load i8, ptr %9, align 8
  %144 = zext i8 %143 to i32
  %145 = load i8, ptr %11, align 1
  %146 = zext i8 %145 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %142, ptr noundef nonnull @.str.13, i32 noundef %144, i32 noundef %146, i32 noundef %139) #7
  br label %149

147:                                              ; preds = %121, %121, %121, %121
  %148 = icmp ult i32 %139, %88
  br i1 %148, label %160, label %149

149:                                              ; preds = %147, %140, %118, %108, %102, %99, %97, %95, %94, %94
  %150 = load ptr, ptr %12, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %149
  %153 = getelementptr i32, ptr %150, i32 %89
  store i32 %88, ptr %153, align 4
  br label %154

154:                                              ; preds = %152, %149
  %155 = add i32 %89, 1
  %156 = icmp sgt i32 %155, 1023
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load ptr, ptr %8, align 4
  %159 = getelementptr inbounds %struct.usb_device, ptr %158, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.12) #7
  br label %169

160:                                              ; preds = %154, %147, %97, %95, %94, %92
  %161 = phi i32 [ %155, %154 ], [ %89, %147 ], [ %89, %97 ], [ %89, %95 ], [ %89, %94 ], [ %89, %92 ]
  %162 = add i32 %88, %73
  %163 = icmp ugt i32 %162, %54
  %164 = select i1 %86, i1 true, i1 %163
  br i1 %164, label %169, label %87

165:                                              ; preds = %81
  %166 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 22
  store i32 %35, ptr %166, align 8
  %167 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 23
  store i32 %54, ptr %167, align 4
  %168 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 21
  store i32 1073741824, ptr %168, align 4
  br label %173

169:                                              ; preds = %160, %157, %83, %13
  %170 = phi i32 [ %155, %157 ], [ %14, %13 ], [ %14, %83 ], [ %161, %160 ]
  %171 = add nuw nsw i32 %15, 1
  %172 = icmp eq i32 %171, %2
  br i1 %172, label %173, label %13

173:                                              ; preds = %169, %165, %4
  %174 = phi i32 [ 0, %165 ], [ 0, %4 ], [ %170, %169 ]
  ret i32 %174
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_find_csint_desc(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_set_sample_rate_v2v3(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
