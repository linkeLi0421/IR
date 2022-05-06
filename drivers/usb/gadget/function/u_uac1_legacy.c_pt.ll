; ModuleID = '/llk/IR/drivers/usb/gadget/function/u_uac1_legacy.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/u_uac1_legacy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gaudio = type { %struct.usb_function, ptr, %struct.gaudio_snd_dev, %struct.gaudio_snd_dev, %struct.gaudio_snd_dev }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.gaudio_snd_dev = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.f_uac1_legacy_opts = type { %struct.usb_function_instance, i32, i32, i32, ptr, ptr, ptr, i8, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }

@.str = private unnamed_addr constant [33 x i8] c"Preparing sound card failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Playback error: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"we need at least one control device\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"unable to open sound control device file: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"No such PCM playback device: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"No such PCM capture device: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"Hardware params: access %x, format %x, channels %d, rate %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @u_audio_playback(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 3, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 37
  %9 = shl i32 %2, 3
  %10 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 21
  %11 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 1
  br label %12

12:                                               ; preds = %27, %3
  %13 = load ptr, ptr %8, align 4
  %14 = load i32, ptr %13, align 8
  switch i32 %14, label %21 [
    i32 4, label %15
    i32 7, label %15
  ]

15:                                               ; preds = %12, %12
  %16 = tail call i32 @snd_pcm_kernel_ioctl(ptr noundef %5, i32 noundef 16704, ptr noundef null) #8
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr inbounds %struct.usb_gadget, ptr %19, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str, i32 noundef %16) #9
  br label %30

21:                                               ; preds = %15, %12
  %22 = load i32, ptr %10, align 8
  %23 = udiv i32 %9, %22
  %24 = load ptr, ptr %4, align 4
  %25 = tail call i32 @__snd_pcm_lib_xfer(ptr noundef %24, ptr noundef %1, i1 noundef zeroext true, i32 noundef %23, i1 noundef zeroext true) #8
  %26 = icmp eq i32 %25, %23
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr %11, align 4
  %29 = getelementptr inbounds %struct.usb_gadget, ptr %28, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.1, i32 noundef %25) #9
  br label %12

30:                                               ; preds = %21, %18
  %31 = phi i32 [ %16, %18 ], [ 0, %21 ]
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_kernel_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @u_audio_get_playback_channels(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 3, i32 5
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @u_audio_get_playback_rate(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 3, i32 6
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gaudio_setup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.snd_interval, align 4
  %3 = alloca %struct.snd_interval, align 4
  %4 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %5, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %5, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @filp_open(ptr noundef %11, i32 noundef 2, i16 noundef zeroext 0) #8
  %13 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 2, i32 1
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.usb_gadget, ptr %17, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef %11) #9
  br label %211

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 2
  store ptr %0, ptr %20, align 4
  %21 = tail call ptr @filp_open(ptr noundef %7, i32 noundef 1, i16 noundef zeroext 0) #8
  %22 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 3, i32 1
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.usb_gadget, ptr %26, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.4, ptr noundef %7) #9
  br label %211

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 3
  %30 = getelementptr inbounds %struct.file, ptr %21, i32 0, i32 15
  %31 = load ptr, ptr %30, align 8
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 3, i32 2
  store ptr %32, ptr %33, align 4
  store ptr %0, ptr %29, align 4
  %34 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 3, i32 3
  store i32 3, ptr %34, align 4
  %35 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 3, i32 4
  store i32 2, ptr %35, align 4
  %36 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 3, i32 5
  store i32 2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 3, i32 6
  store i32 48000, ptr %37, align 4
  %38 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %39 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 604) #10
  %40 = icmp eq ptr %39, null
  br i1 %40, label %196, label %41

41:                                               ; preds = %28
  tail call void @_snd_pcm_hw_params_any(ptr noundef nonnull %39) #8
  %42 = load i32, ptr %34, align 4
  %43 = getelementptr %struct.snd_pcm_hw_params, ptr %39, i32 0, i32 1, i32 0
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  %46 = tail call i32 @llvm.ctpop.i32(i32 %44) #8, !range !8
  %47 = icmp ult i32 %46, 2
  %48 = or i1 %45, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = getelementptr %struct.snd_pcm_hw_params, ptr %39, i32 0, i32 1, i32 0, i32 0, i32 1
  %51 = load i32, ptr %50, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = tail call i32 @llvm.ctpop.i32(i32 %51) #8, !range !8
  %55 = icmp ult i32 %54, 2
  %56 = select i1 %55, i1 %45, i1 false
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %57, %53, %41
  %59 = phi i1 [ true, %57 ], [ false, %53 ], [ false, %41 ]
  %60 = lshr i32 %42, 5
  %61 = getelementptr [8 x i32], ptr %43, i32 0, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %42, 31
  %64 = shl nuw i32 1, %63
  %65 = and i32 %62, %64
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %43, i8 0, i32 32, i1 false) #8
  store i32 %65, ptr %61, align 4
  %66 = load i32, ptr %43, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = getelementptr %struct.snd_pcm_hw_params, ptr %39, i32 0, i32 1, i32 0, i32 0, i32 1
  %70 = load i32, ptr %69, align 8
  %71 = icmp ne i32 %70, 0
  %72 = and i1 %59, %71
  br i1 %72, label %81, label %74

73:                                               ; preds = %58
  br i1 %59, label %81, label %74

74:                                               ; preds = %73, %68
  %75 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %39, i32 0, i32 6
  %76 = load i32, ptr %75, align 4
  %77 = or i32 %76, 1
  store i32 %77, ptr %75, align 4
  %78 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %39, i32 0, i32 5
  %79 = load i32, ptr %78, align 8
  %80 = or i32 %79, 1
  store i32 %80, ptr %78, align 8
  br label %81

81:                                               ; preds = %74, %73, %68
  %82 = load i32, ptr %35, align 4
  %83 = getelementptr %struct.snd_pcm_hw_params, ptr %39, i32 0, i32 1, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  %86 = tail call i32 @llvm.ctpop.i32(i32 %84) #8, !range !8
  %87 = icmp ult i32 %86, 2
  %88 = or i1 %85, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %81
  %90 = getelementptr %struct.snd_pcm_hw_params, ptr %39, i32 0, i32 1, i32 1, i32 0, i32 1
  %91 = load i32, ptr %90, align 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = tail call i32 @llvm.ctpop.i32(i32 %91) #8, !range !8
  %95 = icmp ult i32 %94, 2
  %96 = select i1 %95, i1 %85, i1 false
  br i1 %96, label %97, label %98

97:                                               ; preds = %93, %89
  br label %98

98:                                               ; preds = %97, %93, %81
  %99 = phi i1 [ true, %97 ], [ false, %93 ], [ false, %81 ]
  %100 = lshr i32 %82, 5
  %101 = getelementptr [8 x i32], ptr %83, i32 0, i32 %100
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %82, 31
  %104 = shl nuw i32 1, %103
  %105 = and i32 %102, %104
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %83, i8 0, i32 32, i1 false) #8
  store i32 %105, ptr %101, align 4
  %106 = load i32, ptr %83, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %98
  %109 = getelementptr %struct.snd_pcm_hw_params, ptr %39, i32 0, i32 1, i32 1, i32 0, i32 1
  %110 = load i32, ptr %109, align 8
  %111 = icmp ne i32 %110, 0
  %112 = and i1 %99, %111
  br i1 %112, label %121, label %114

113:                                              ; preds = %98
  br i1 %99, label %121, label %114

114:                                              ; preds = %113, %108
  %115 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %39, i32 0, i32 6
  %116 = load i32, ptr %115, align 4
  %117 = or i32 %116, 2
  store i32 %117, ptr %115, align 4
  %118 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %39, i32 0, i32 5
  %119 = load i32, ptr %118, align 8
  %120 = or i32 %119, 2
  store i32 %120, ptr %118, align 8
  br label %121

121:                                              ; preds = %114, %113, %108
  %122 = load i32, ptr %36, align 4
  %123 = getelementptr %struct.snd_pcm_hw_params, ptr %39, i32 0, i32 3, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %124 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 2
  %125 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 1
  store i32 4, ptr %124, align 4
  store i32 %122, ptr %125, align 4
  store i32 %122, ptr %3, align 4
  %126 = call i32 @snd_interval_refine(ptr noundef %123, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %39, i32 0, i32 6
  %130 = load i32, ptr %129, align 4
  %131 = or i32 %130, 1024
  store i32 %131, ptr %129, align 4
  %132 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %39, i32 0, i32 5
  %133 = load i32, ptr %132, align 8
  %134 = or i32 %133, 1024
  store i32 %134, ptr %132, align 8
  br label %135

135:                                              ; preds = %128, %121
  %136 = load i32, ptr %37, align 4
  %137 = getelementptr %struct.snd_pcm_hw_params, ptr %39, i32 0, i32 3, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #8
  %138 = getelementptr inbounds %struct.snd_interval, ptr %2, i32 0, i32 2
  %139 = getelementptr inbounds %struct.snd_interval, ptr %2, i32 0, i32 1
  store i32 4, ptr %138, align 4
  store i32 %136, ptr %139, align 4
  store i32 %136, ptr %2, align 4
  %140 = call i32 @snd_interval_refine(ptr noundef %137, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %39, i32 0, i32 6
  %144 = load i32, ptr %143, align 4
  %145 = or i32 %144, 2048
  store i32 %145, ptr %143, align 4
  %146 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %39, i32 0, i32 5
  %147 = load i32, ptr %146, align 8
  %148 = or i32 %147, 2048
  store i32 %148, ptr %146, align 8
  br label %149

149:                                              ; preds = %142, %135
  %150 = call i32 @snd_pcm_kernel_ioctl(ptr noundef %32, i32 noundef 16707, ptr noundef null) #8
  %151 = call i32 @snd_pcm_kernel_ioctl(ptr noundef %32, i32 noundef -1034141423, ptr noundef nonnull %39) #8
  %152 = call i32 @snd_pcm_kernel_ioctl(ptr noundef %32, i32 noundef 16704, ptr noundef null) #8
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load ptr, ptr %29, align 4
  %156 = getelementptr inbounds %struct.gaudio, ptr %155, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.usb_gadget, ptr %157, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str, i32 noundef %152) #9
  call void @kfree(ptr noundef nonnull %39) #8
  br label %196

159:                                              ; preds = %149
  %160 = load i32, ptr %43, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %167, %159
  %163 = phi i32 [ 0, %159 ], [ 32, %167 ]
  %164 = phi i32 [ %160, %159 ], [ %169, %167 ]
  %165 = call i32 @llvm.cttz.i32(i32 %164, i1 true) #8, !range !8
  %166 = or i32 %165, %163
  br label %171

167:                                              ; preds = %159
  %168 = getelementptr %struct.snd_pcm_hw_params, ptr %39, i32 0, i32 1, i32 0, i32 0, i32 1
  %169 = load i32, ptr %168, align 8
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %162

171:                                              ; preds = %167, %162
  %172 = phi i32 [ %166, %162 ], [ 0, %167 ]
  store i32 %172, ptr %34, align 4
  %173 = load i32, ptr %83, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %180, %171
  %176 = phi i32 [ 0, %171 ], [ 32, %180 ]
  %177 = phi i32 [ %173, %171 ], [ %182, %180 ]
  %178 = call i32 @llvm.cttz.i32(i32 %177, i1 true) #8, !range !8
  %179 = or i32 %178, %176
  br label %184

180:                                              ; preds = %171
  %181 = getelementptr %struct.snd_pcm_hw_params, ptr %39, i32 0, i32 1, i32 1, i32 0, i32 1
  %182 = load i32, ptr %181, align 8
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %175

184:                                              ; preds = %180, %175
  %185 = phi i32 [ %179, %175 ], [ 0, %180 ]
  store i32 %185, ptr %35, align 4
  %186 = load i32, ptr %123, align 4
  store i32 %186, ptr %36, align 4
  %187 = load i32, ptr %137, align 8
  store i32 %187, ptr %37, align 4
  call void @kfree(ptr noundef nonnull %39) #8
  %188 = load ptr, ptr %29, align 4
  %189 = getelementptr inbounds %struct.gaudio, ptr %188, i32 0, i32 1
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.usb_gadget, ptr %190, i32 0, i32 11
  %192 = load i32, ptr %34, align 4
  %193 = load i32, ptr %35, align 4
  %194 = load i32, ptr %36, align 4
  %195 = load i32, ptr %37, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %191, ptr noundef nonnull @.str.6, i32 noundef %192, i32 noundef %193, i32 noundef %194, i32 noundef %195) #9
  br label %196

196:                                              ; preds = %184, %154, %28
  %197 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 4
  %198 = call ptr @filp_open(ptr noundef %9, i32 noundef 0, i16 noundef zeroext 0) #8
  %199 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 4, i32 1
  store ptr %198, ptr %199, align 4
  %200 = icmp ugt ptr %198, inttoptr (i32 -4096 to ptr)
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 1
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr inbounds %struct.usb_gadget, ptr %203, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %204, ptr noundef nonnull @.str.5, ptr noundef %9) #9
  %205 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 4, i32 2
  store ptr null, ptr %205, align 4
  store ptr null, ptr %197, align 4
  store ptr null, ptr %199, align 4
  br label %218

206:                                              ; preds = %196
  %207 = getelementptr inbounds %struct.file, ptr %198, i32 0, i32 15
  %208 = load ptr, ptr %207, align 8
  %209 = load ptr, ptr %208, align 4
  %210 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 4, i32 2
  store ptr %209, ptr %210, align 4
  store ptr %0, ptr %197, align 4
  br label %218

211:                                              ; preds = %24, %15
  %212 = phi ptr [ %22, %24 ], [ %13, %15 ]
  %213 = phi ptr [ %21, %24 ], [ %12, %15 ]
  store ptr null, ptr %212, align 4
  %214 = ptrtoint ptr %213 to i32
  %215 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 1
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.usb_gadget, ptr %216, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %217, ptr noundef nonnull @.str.2) #9
  br label %218

218:                                              ; preds = %211, %206, %201
  %219 = phi i32 [ %214, %211 ], [ 0, %206 ], [ 0, %201 ]
  ret i32 %219
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gaudio_cleanup(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @filp_close(ptr noundef nonnull %5, ptr noundef null) #8
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 3, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @filp_close(ptr noundef nonnull %11, ptr noundef null) #8
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.gaudio, ptr %0, i32 0, i32 4, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @filp_close(ptr noundef nonnull %17, ptr noundef null) #8
  br label %21

21:                                               ; preds = %19, %15, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__snd_pcm_lib_xfer(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_snd_pcm_hw_params_any(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filp_close(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
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
!8 = !{i32 0, i32 33}
